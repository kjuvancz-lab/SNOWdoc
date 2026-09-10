# Zurich Strategic Portfolio Management — Resource Management classic

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1398–1479 of 2289

Sections: Resource Management classic (p1398)

---

<!-- page 1398 -->
New Operational Assignment form (continued)
Field

Description

Ready for review

Select an option from the list so that the
resource manager can review the request for
allocation.
• Yes - if the resource assignment request is
finalized and ready for resource manager's
review for allocation.
• No - if the resource assignment details are
still being updated.

Notes

Enter details about the assignment to help
resource manager or project manager with
insights and additional information.

Resource Management classic
®

The ServiceNow Resource Management application enables resource requesters, such as
project managers or change managers, to create resource plans, request resources, and analyze
resource availability and utilization.

Important:
Resource plans in Resource Management will no longer be available for new customers
from future releases. Existing customers are encouraged to work on resource assignments
which offers more flexibility in assigning and managing the work.
• New customers: Use Resource Management Workspace or Project Workspace to request
resources for any work. Resource managers can use Resource Management Workspace
to assign, approve, and manage the resource assignments .
• Existing customers:
◦ If you already have resource management and working with resource plans, you
can continue using it, but we encourage you to migrate and start using resource
assignments.
◦ For more information on migrating from resource plans to resource assignments, see
migrate your resource plans and operational resource plans to resource assignments
and starting using the Resource Management Workspace to continue managing your
work.
Resource Managers are encouraged to use the Resource Management Workspace to
assign, approve, and manage resource assignments. Resource Management Workspace
is a dedicated workspace view for Resource Managers where you get insights about
unassigned tasks, heatmap view of resource bandwidth, custom view to handle priority
resource assignment requests, and so on.
Resource Management will not be enhanced for performance or functionality.
Resource managers use the application to allocate resources to tasks. The Resource
Management application can be used in conjunction with any task on the platform, including
project tasks, incidents, problems, or changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
Watch this four-minute video to learn about the purpose of Resource Management application,
creating resource plans, requesting and allocating resources, and analyzing resource availability
and capacity for maximum resource utilization.
Introduction to Resource Management including the purpose, resource planning, resource
request and allocation, and resource availability and capacity analysis for maximum resource
utilization.
With the Resource Management application:
• Resource requesters can create resource plans that specify group or user resources required
by tasks. They can verify resource availability and change their resource plans prior to
requesting resources.
• Resource managers can view availability, existing allocations, and utilization for the requested
resources and make allocations based on resource availability.
• Resource managers can change resource plan dates, resources, requested hours and
proposed allocations for resource utilization and availability.
The Resource Management application is activated as part of the PPM Standard.

Resource management process
The resource plan is the key to understanding how resource management works.

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged to work on resource assignments which offers more flexibility using
Resource Management Workspace or Project Workspace.
For more information about migrating from resource plans to resource assignments, see
Migration of resource plans, operational resource plans, and cost plans.
A user with the resource_user role can be a resource requester. Project managers are used as
resource requesters in many examples because they typically have the resource_user role.
A resource requester creates a resource plan to request user or group resources for tasks. Any
type of task, such as a change request, a task in the Agile scrum process, or a project task can be
added to a resource plan.
After a resource plan is submitted, a resource manager reviews the plan, confirms the resources,
and finally allocates resources for the plan. If all parties agree, the resources begin work.

Resource plans
Resource plans are the key element in resource management.

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged to work on resource assignments which offers more flexibility Create
resource assignments and operation resource assignments in Resource Management
Workspace using Resource Management Workspace or Project Workspace.
Resource requesters, such as project managers, create resource plans to ask for resources, track
effort, and track costs. Resource managers modify and approve resource plans before the plans
are used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
All resource plans for a task appear on the Resource Plan related list of the Project task form,
where resource requesters can access them.
Resource plan on the Project form

Resource plans progress through several states.
Resource plan states
State

Planning

Description

Planning is the default state when a resource requester creates a resource plan.
Any plan in this state can be edited. Requested Allocations are created when a
resource plan is in Planning state.
When a resource requester asks for a change to a plan that was already
submitted, the plan reverts to the Planning state.

Requested Resource requester submits a resource plan for resource managers review
by selecting Submit. The resource plan then moves into the Requested state.
Resource managers confirm and allocate resources or reject the plan, and finally
close the plan.
The resource requester can request a group, specific users in a group, or a
specific user to work on the selected task. After you submit the plan for review, a
resource manager can confirm, and then allocate some or all the requested users.
If the task requires more than one user or groups, multiple resource plans can be
created for the given task.
Rejected

Confirmed

Resource manager can reject a resource plan by selecting Reject. The resource
plan then moves into the Rejected state. Rejected plans stay in that state until
changes are made and the requester can re-request the resources.
After the plan is requested, the resource manager can block/confirm the
resources for future projects and demands. The resource plan then moves into
the Confirmed state. Only a resource manager can modify the plans in Confirmed
state.
Soft allocations are created when the resource plan moves to the Confirmed state.

Allocated

After the plan is confirmed, the resource manager can review the plans, view
availability, change resource preferences and perform the resource allocation.
The resource plan moves into the Allocated state. A resource manager can only
cancel, complete, or modify it.
Soft allocations are converted to hard allocations when the resource plan moves
to the Allocated state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Resource plan states (continued)
State

Description

Note: You can also set a plan to the Allocated state directly from the
Requested state using Confirm and Allocate option.

Completed After all associated tasks and projects are complete or canceled, an Allocated
resource plan can be completed. This deletes all the resource allocations for the
resource plan post the completion date.
Canceled

A plan can be canceled if the allocations are no longer required. This removes all
past and future allocations. A canceled resource plan can be brought back to the
Planning state if it has no past allocations.
Resource plans in Planning, Requested, Confirmed, or Allocated state can be
canceled.

States in Resource Management

Note: When a resource requester wants to change a plan that was already submitted for
review (in Requested or Confirmed state but not yet allocated), the requester can request a
change. The plan then moves back to the Planning state.
Resource Management supports time zones, which are important in the My Calendar and
Resource Workbench modules.

Modifications in Confirmed or Allocated state
Only a resource manager can modify a resource plan in the Confirmed or Allocated state.
The effects of modification in header area on a resource plan form in Confirmed state are:
• All soft allocations are deleted.
• Requested allocations are re-created with changed values.
• Resource plan moves back to the Requested state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
The effects of modification in header area on a resource plan form in Allocated state are:
• All resource allocations (soft and hard) are deleted.
• Requested allocations are re-created with changed values.
• Resource plan moves back to the Requested state.
The resource manager can also modify or delete the past dated resource allocations for
Allocated resource plans if no actual hours are recorded for those resource allocation records.
When a user submits a time card, upon approval of the time card, actual hours are updated for an
allocation record.

Note: The resource plan does not move back to the Requested state if the changes are
made to allocation records only.

Request type
You can request a resource plan using one of the following options:
• Hourly: The request is in terms of the number of hours the resources are necessary.
• FTE: The request is in terms of an equivalent value that represents full-time work. When the
request type is FTE, planned hours are calculated as: Average Daily FTE * number
of working days in resource plan * the FTE value. The average daily FTE
hours are specified in User and Group records. If there is no value specified at User or Group
record, the average daily FTE hours is taken from the Default Average Daily FTE
property.
The number of working days is calculated based on the users schedule for a user resource
or the default schedule for group resources. The default schedule is taken from the Default
Schedule Name property.
For example, say that the average daily FTE for a group is 40 hours, the resource plan period is
from September 1 to September 10, and the FTE is 0.5.
Assuming 8 working days during the plan period, planned hours = 40 * 8 * 0.5 =160
hours.

Note: Capacity is not derived from FTE, but from schedules. Both FTE and schedules
must be in synchronization with each other.
• Person days: The request is in terms of person days. When the request type is person days,
planned hours are calculated as: Total number of person days * Average
Daily FTE Hours/Hours Per Person Day.
For example, say the Average Daily FTE Hours/Hours Per Person Day for a group is 8 hours,
and the person days is 3. Then, planned hours = 8 * 3 = 24 hours.

Resource plan costs
Resource plan costs can be tracked directly in the resource plan record. Resource plan costs are
divided into planned, allocated, and actual.
If the Rate override option in a resource plan is selected, the hourly rate for calculating the
corresponding resource plan cost is derived from the rate specified in the Resource rate field.
If a rate model is associated to the project or demand, the hourly rate is derived from the rate
model. Whenever the hourly rates in the associated rate model change, you must recalculate the
resource costs of the resource plan to reflect the new rates.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
If rate model is not available, the hourly rate for calculating the corresponding resource plan cost
is derived from labor rate card.
Projects and Demands can have multiple resource plans. The aggregated costs for all resources
plans roll up to the Planned Cost and Allocated Cost fields and the Resource Cost section of
both projects and demands.
Create a resource plan
You can create a resource plan from the Resource Management application for any task such
as demand, project, project task, incident, problem, or change. You can edit and adjust the plan
until you submit it for approval.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility Create resource assignments and operation resource
assignments in Resource Management Workspace using Resource Management
Workspace or Project Workspace.
Role required: resource_user, resource_manager, it_project_manager, demand_manager, admin

Procedure
1. Create a resource plan using one of the following options.
Option

From Resource tab in project workspace

Description

a. Open a project record in project work­
space. See Access the new Project Work­
space.
b. On the Resources tab, click New.

From a project form

a. Navigate to Project > Projects > Project
Workspace.
b. Open a project record.
c. In the Resource Plan related list, click New.
a. Navigate to Demand > Demands > All.
b. Open a demand.

From a demand form

c. In the Resource Plans related list, click
Manage.
d. On the Resource Plans page, click New.

From a project task

a. Navigate to Project > Projects > Project
Workspace.
b. Open a project record.
c. Click the Details tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
Option

Description

d. In the Project Tasks related list, open a
task.
e. In the Resource Plan related list, click New.
a. Open the resource plan record that you
want to copy.
b. In the related links, click Copy Resource
Plan.
From an existing resource plan

Note: When you create a resource
plan from an existing resource plan, all
fields are copied to the new resource
plan. The new plan is created in the Plan­
ning state.

2. On the Resource Plan form, fill the fields.
For a field descriptions of the field names, see Resource Plan form.
3. Click Save on the form header.
The resource plan is saved and placed in the Planning state.
4. Review update the values in the Resource Plan form tabs.
For a field description of the field names, see Resource Plan form tabs.

Note: If the assigned rate model is removed or replaced, or the hourly rates in the rate
model are changed, the cost fields on the associated resource plans are not recalculated
automatically. You must recalculate the resource costs of the resource plan to reflect new
rates from the rate model.
However, if any of the fields affecting the cost are updated on the resource plan, the rate
model is invoked for getting the hourly rates. For example, extending a resource plan by
modifying the end date of the resource plan invokes the rate model as there can be new
rates available.

Result
• The resource plan is saved and placed in the Planning state.
• When the resource plan is created from resource grid, the plan appears as top row in the
resource plan list of the project or demand. The plan has one of the following prefixes:
◦ [G] for a resource plan created for a group.
◦ [R] for a role resource plan created for a role.
◦ [U] for a user resource plan created for a user.
The prefix is based on the type of resource selected in the Resource type field.
• The resource plan which is created last appears at the top in the resource plan list of the
project or demand.

What to do next

Use the Resource Plan related links and lists to work on the resource plans, workbenches, or to
modify the existing request allocations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Use Resource Finder to analyze resource availability
Search and analyze resource availability using the Resource Finder, so that you can create
resource plans for a project or demand.

Before you begin

Role required: it_project_manager, it_demand_manager, or resource_manager

About this task

In the Resource Finder, search for the resources that you need, and create a plan for the
selected resources.
• Steps 1 and 2 take you to the resource finder.
• Step 3 provides guidance on different options to filter and analyze the resources availability.
Choose the options that suit your needs.
• Step 4 shows how to create a new resource plan for the selected resources.

Procedure
1. Open the Resource Plans page for a project or demand.
Option

Steps

a. Navigate to Project > Projects > Project
Workspace.
From a project

b. Open a project record.
c. In the Resource Plan related list, click Man­
age to open the Resources tab.
a. Navigate to Demand > Demands > All.

From a demand

b. Open a demand.
c. In the Resource Plans related list, click
Manage to open the Resource Plans page.

2. Select the project or demand in the resource grid section and click the resource finder icon
(

).

The resource finder section opens at the bottom of the page. A list of up to 50 records are
displayed initially. If you have more than 50 resources, you can load them by clicking Get
More.
3. Use the following options to filter and analyze the capacity of the resources.

Option

Display available or over allocated resources

Perform a simple search

Description

Using the Show/Hide menu (
) to filter
resources by available or over allocated.
Search the resources by group, role, or user
attributes, by selecting the search criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Option

Build your own search criteria

Description

Use the advanced search to add your filter
conditions.
For example, select Search by group, click
Advanced, then click the Advanced search
filter icon (
). Here you can add conditions
to filter this group further.

Note: While adding filters, ensure that
you do not add an AND condition for
different values of the same attribute.
For example, do not filter the user group
with conditions for Skill X AND Skill Y.

View the availability of the resources for an
extended duration

Use the options from the date range selector.
From the Zurich release onwards, you can
select a custom date range.

The value of the property Maximum time

duration in Resource Finder in
months determines the maximum duration
for which the resource details are displayed
in the resource finder.
Analyze the resources list
Use the Configuration menu (
) to analyze
different constraints such as the capacity,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Option

Description

availability, actual hours, and others for
different time periods.
By default, only the Availability hours are
displayed. To view other details, select
Detailed View (

), and select the required

columns from the Configuration menu (

).

Displaying the requested hours for a
user group or role helps you understand
immediately if you need to fulfil any resource
requests and to do so, if you have enough
capacity for that user group or role.
The Requested column would not be
available in the Configuration menu under
the following conditions.
◦ Filtering the resource list further using
simple or advanced filters
◦ Using the resource finder in the availability
view
◦ Using the show available or show over
allocated options from the Show/Hide
menu
Even if the column is already enabled, but
any of the above conditions are later met, the
Requested column is disabled automatically.
All non-project events created for a user from
the calender appear as Operational Work for
the user in Resource Finder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
Option

Update the capacity of a resource

Description

Right-click on the user and select Update
Capacity.

4. Select the resources you want to create resource plans for and click Add New Plan.

Result
• The resource plan is created in the Planning state with zero planned hours.
• The resource plan appears as a row at the top in the resource plan list of the project or
demand. Based on the type of resource selected in finder, the resource plan has one of the
following prefixes:
◦ [G] for a resource plan created for a group.
◦ [R] for a role resource plan created for a role.
◦ [U] for a user resource plan created for a user.

Note: The resource plan that is created last appears at the top in the resource plan list
of a project or demand.

What to do next
• Update the planned hours for the resource plan using the resource grid.
• To view and update more details for the resource plan, click the information icon (
beginning of the resource plan row.

) in the

• You can now request the resource plan.
Create an operational resource plan
Create an operational resource plan and allocate a certain portion of your team capacity for
operational work, such as administration, meeting, or training.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and Create resource assignments and operation resource
assignments in Resource Management Workspace using Resource Management
Workspace or Project Workspace.
Role required: resource_user, resource_manager, it_project_manager, demand_manager, admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
About this task

Create a resource plan for an operational work type such as Meeting, Training, Admin work, or
Phone call.
For more information on operational resource plans, see Operational Resource Plan - All That
You Need to Know .

Procedure
1. Navigate to All > Resource > Resource Plans > Create New Operational Plan.
2. On the Resource form, fill in the fields.
For a description of the field names, see Resource form.
3. Select Save.
Related topics
Map a time card category with operational work types
Request resources
After you create a resource plan, request resources from the resource manager.

Before you begin

Role required: it_project_manager, resource_user

About this task

Note: If the resource type in the resource plan is a group, you can request resources only
if that group has active members.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan that is in the Planning state.
3. Select Request.

Result

The resource plan moves to the Requested state and is ready for review by the resource
manager.
Confirm a resource plan
As a resource manager, you can confirm or block the resources after a resource plan is
requested. The resource plan must be in the Requested state to be confirmed.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and Create resource assignments and operation resource
assignments in Resource Management Workspace using Resource Management
Workspace or Project Workspace.
Resource managers can view and assign the unassigned resource assignments using
Resource Management Workspace.
Role required: resource_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
About this task

You can modify or cancel a resource plan that is in the Confirmed state.
For a resource plan with the resource type as group, you can confirm resources only if the
specified group has active members.

Procedure
1. Navigate to All > Resource > Resource Plans > Requested.
2. Open the resource plan that you want to confirm and select Confirm.

Result

The resource plan moves to the Confirmed state and soft allocations are created.
Confirm and allocate a resource plan
After the resource plan is requested, as a resource manager, you can directly allocate the
resources. To confirm and allocate, the resource plan must be in the Requested state.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and Create resource assignments and operation resource
assignments in Resource Management Workspace using Resource Management
Workspace or Project Workspace.
Resource managers can assign and approve the unassigned resource assignments using
Resource Management Workspace.
Role required: resource_manager

About this task

Modify or cancel a resource plan that is in the Allocated state.
If the resource type in a resource plan is a group, you can request resources only if that group
has active members.

Procedure
1. Navigate to All > Resource > Resource Plans > Requested.
2. Open the resource plan (Requested) that you want to confirm and allocate, and select Confirm
and Allocate.

Result

The resource plan automatically moves to the Allocated state from the Requested state. Soft
allocations are converted to hard allocations when the resource plan moves to the Allocated
state.
Any errors or warnings during allocations are logged in the Resource Plan Logs related list on the
Resource Plan form. The log is generated if a resource is allocated over 24 hours for a given day.
You can review these logs to take correct actions for further resource allocation.
Request a change to a resource plan
Request a change to the resource plan to modify a resource plan after you’ve submitted it for
review.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
Before you begin

Role required: resource_user

About this task

You can change the resource plans that are in the Requested or Confirmed state. To change
the form fields of the plan, you first must request a change to the resource plan. However, you
can adjust the requested allocations directly on the plan without requesting for a change. These
adjustments are rolled-up to the resource plan.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan that is in the Requested or Confirmed and select Request Change.

Result

The resource plan moves back to the Planning state and has the form fields enabled to make the
required changes.
Recalculate costs of a resource plan of a project or demand
Recalculate the resource costs of an individual resource plan for a project or demand whenever
the hourly rates change in the associated rate model.

Before you begin

Ensure the following setup:
• The project or demand must have an active rate model assigned.
• The resource plan must be in either Planned, Requested, Confirmed, or Allocated states.
Role required: resource_manager

About this task

To update the costs of all the resource plans of a project or demand in one go, you can use the
Recalculate Resource Costs option from the project form or demand form.

Procedure
1. To open a resource plan of a project or demand, perform one of the following actions.
◦ Navigate to Project > Projects > All, and open a project.
◦ Navigate to Demand > Demands > All, and open a demand.
2. From the Resource Plans related list, open a resource plan for which you want to recalculate
the costs.
3. On the Resource Plan form, select the Recalculate Resource Cost related link.
4. In the Recalculate Resource Costs dialog box, specify the recalculation period in the Start
date and End date fields.
By default, the Start date field has the current date and the End date field has the end date of
the resource plan.
5. To recalculate the planned cost, select the Include planned costs option.
The Include planned costs option is available for a resource plan in the Confirmed or
Allocated state. The option isn’t selected by default.
6. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
Result
• Recalculates the selected resource costs based on the latest hourly rates derived from the rate
model associated with the project or demand.
• Updates the recalculated resource costs on the respective cost fields on the resource plan
form and the Resource Plans related list of the associated project or demand.
• Reflects the revised values on the respective cost fields of associated project or demand.
Update cost plan related to a resource plan
If a resource plan is associated to a project, project task, or demand and has a related cost plan,
then a requester or a resource manager can update the related cost plan after updating the
resource plan.

Before you begin

Role required: resource_user or resource_manager or it_project_manager or
it_demand_manager

About this task

If a resource plan does not have a related cost plan, the Update Cost Plan related link is not
displayed for the resource plan.

Procedure
1. Save the updates to the resource plan.
2. Click the Update Cost Plan related link.
The cost plan associated to a resource plan is automatically updated as soon as the Planned
cost in the resource plan is updated. The planned cost on resource plan gets updated when
there is a change in:
◦ Planned hours
◦ User
◦ State
◦ Start and end dates

Result

The cost plan associated to the resource plan is updated as follows:
• If the resource plan is in Planning or Requested state, planned hours is updated in the cost
plan.
• If the resource plan is in Confirmed/Allocated state and the Confirmed/Allocated hours are
less than planned hours, then the higher of the planned cost and Confirmed/Allocated cost is
updated in the cost plan.
• If the resource plan is in Confirmed/Allocated state and the Confirmed/Allocated hours are
equal to or more than planned hours, then the Confirmed/Allocated cost is updated in the cost
plan.
Cost from resource plan will be interfaced to the unit_cost field on the Cost Plan [cost_plan]
table.
Complete a resource plan
After all associated tasks and projects are complete or canceled, a resource manager can move
the resource plan to the Complete state, which closes it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Before you begin

The resource plan to be completed must be in the Allocated state.
Role required: resource_manager

About this task

Project and demand managers can complete resource plans from a project, project task,
planning console, or demand.

Procedure
1. Navigate to All > Resource > Resource Plans > Allocated.
2. Open the resource plan that you want to complete.
3. Verify all the information on the form.

Note: The Actual Hours and Actual Cost fields show the time spent on plan tasks and
the resource costs. These fields are derived from time card information and can’t be
edited on the resource plan.
4. Optional: Add notes.
5. Select Complete.
6. In the Confirm dialog box, select the completion date of the resource plan and select Yes.
By default, the system date or resource plan end date, whichever is earlier, is populated in
Completion Date.

Note: The Completion Date can’t be earlier than the resource plan start date.
Result
• The resource plan moves to the Completed state.
• If the completion date is earlier than the resource plan end date, the end date of the resource
plan is updated with the completion date. If the completion date was entered later than the
resource plan end date, the resource plan end date is retained.
• All the requested and resource allocations for the resource plan post the completion date are
deleted. If there are any actual hours logged against an allocation, that allocation record isn’t
deleted. But the allocated hours become zero and the actual hours are retained. The available
and allocated hours for the resources are also updated in the aggregate tables.

Example:

Example 1: A resource plan of Allocation type Monthly from 1 November to 31 January is
completed on 15 December. On completion,
• the resource allocation entry for January is deleted from the [Resource_Allocation] table.
• the resource allocation end date for December is updated to the completion date of the
resource plan.
• the entries in the [Resource_Allocation_Daily] table for the December month post the
completion date are deleted.
Example 2: If the same resource plan has Allocation type as Planned Duration, no allocations are
deleted, and the end date of the allocation is updated to the completion date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
Complete a resource plan from a project, planning console, or demand record
If a project or a project task is marked Closed, the project manager can complete the associated
Allocated resource plans. Similarly, the demand manager can complete the resource plans for a
Closed or Deferred demand.

Before you begin

The resource plan to be completed must be in the Allocated state.
Role required: it_project_manager or it_demand_manager

About this task

When a project or a project task moves to Closed Complete, Closed Incomplete or Closed
Skipped state, the system prompts a message on the project and project task forms, and in the
planning console for completing the Allocated resource plans if the following conditions is met.
• Corresponding resource plan is in the Allocated state.
• Resource plan start date is less than or equal to the project or task actual end date.
A similar message for completing the resource plans appears on the Demand form when a
demand moves to Closed or Deferred state.

Procedure
1. Open a project, task, or demand record in the Closed state.
Option

Description

a. Navigate to Project > Projects > Project
Workspace.
Open a Closed project record

b. Open the project record in the Closed
state.
c. Select the Details tab to display the project
form.
a. Navigate to Project > Projects > Project
Workspace.

Open a Closed project task record

b. Open the required project record.
c. In the Project Tasks related list, open the
project task record in the Closed state.
a. Navigate to Project > Projects > Project
Workspace.

Open a Closed project in Planning Console

b. Open the project record in the Closed
state.
c. Select the Planning tab to display the
project in planning console.
a. Navigate to Demand > Demands > All.

Open a Closed or Deferred demand record

b. Open the demand record in the Closed or
Deferred state.

The message for completing the associated resource plans appears at the top of the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
Message for completing a resource plan

Note: In the Planning Console, irrespective of the Closed state of the project tasks, the
message appears only when the project is in Closed state.
2. To open the list of resource plans to be completed, select the link in the message.

Note: In Planning Console, alternatively right-click the project and select Complete
Resource Plans.

◦ The list contains only those resource plans for the record that should be completed.
◦ If the list is opened from the message link on a Project form, the resource plans for the
project and project task are listed.
◦ If the list is opened from the message link on a Project task form, only the resource plans for
the project task are listed.
3. In the list, select the resource plan to be completed, and select Complete.
4. In the Confirm dialog box, select the completion date of the resource plan and select Yes.
By default, the system date or resource plan end date, whichever is earlier, is populated in
Completion Date.

Note: The Completion Date cannot be earlier than the resource plan start date.
Result
• The selected resource plan moves to the Completed state.
• If the completion date is earlier than the resource plan end date, the end date of the resource
plan is updated with the completion date. If the completion date was entered later than the
resource plan end date, the resource plan end date is retained.
• All the requested and resource allocations for the resource plan that are past the completion
date are deleted. If there are any actual hours logged against an allocation, that allocation
record is not deleted. But the allocated hours become zero and the actual hours are retained.
The available and allocated hours for the resources are also updated in the aggregate tables.
Cancel a resource plan
If a resource plan is no longer needed, you can cancel it which also cancels its past and future
allocations.

Before you begin

The resource plan to be canceled must be in the Planning, Requested, Confirmed, or Allocated
state.
Role required: resource_user, resource_manager

About this task

Project and demand managers can also cancel resource plans from a project, project task,
planning console, or demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


<!-- page 1416 -->
Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open the resource plan record that you want to cancel.
3. On the form header, select Cancel.

Result
• The resource plan moves into the Cancelled state.
• All past and future allocations for the resource plan are also canceled. If there are any actual
hours logged against an allocation, that allocation isn’t deleted. But the allocated hours
become zero and the actual hours are retained.

What to do next

If you want to make changes and use the plan again, edit a canceled plan. To move the resource
plan back to Planning state, select Re-plan.

Note: The state of a resource plan can be changed back from Cancelled to Planning, only
if it has no past allocations.
Cancel a resource plan from a project, planning console, or demand record
If a project or a project task is marked Closed, the project manager can cancel the associated
future resource plans. Similarly, the demand manager can cancel the future resource plans for a
Closed or Deferred demand.

Before you begin

The resource plan to be canceled must be in Confirmed, Planning, or Requested state. An
Allocated resource plan can be canceled if the resource plan start date is later than the project,
task, or demand end date.
Role required: it_project_manager or it_demand_manager

About this task

When a project or a project task moves to Closed Complete, Closed Incomplete or Closed
Skipped state, the system prompts a message on the project and project task forms, and in the
planning console for canceling the resource plans if one of the following conditions is met.
• Corresponding resource plan is in Confirmed, Planning, or Requested state.
• Resource plan is in Allocated state with start date later than the project or task end date.
A similar message for canceling the resource plans appears on the demand form when a
demand moves to Closed or Deferred state.

Procedure
1. Open a project, task, or demand record in the Closed state.
Option

Description

a. Navigate to All > Project > Projects >
Project Workspace.
Open a Closed project record

b. Open the project record in the Closed
state.
c. Click the Details tab to display the project
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
Option

Description

a. Navigate to All > Project > Projects >
Project Workspace.
Open a Closed project task record

b. Open the required project record.
c. In the Project Tasks related list, open the
project task record in the Closed state.
a. Navigate to All > Project > Projects >
Project Workspace.

Open a Closed project in Planning Console

b. Open the project record in the Closed
state.
c. Click the Planning tab to display the project
in planning console.
a. Navigate to All > Demand > Demands > All.

Open a Closed or Deferred demand record

b. Open the demand record in the Closed or
Deferred state.

The message for canceling the associated resource plans appears at the top of the record.
Message for canceling a resource plan

Note: In the Planning Console, irrespective of the Closed state of the project tasks, the
message appears only when the project is in Closed state.
2. To open the list of resource plans to be canceled, click the link in the message.

Note: In the Planning Console, alternatively right-click the project and select Cancel
Resource Plans .

◦ The list contains only those resource plans for the record that can be canceled.
◦ If the list is opened from the message link on a Project form, the resource plans for the
project and project task are listed.
◦ If the list is opened from the message link on a Project task form, only the resource plans for
the project task are listed.
3. In the list, select the resource plan to be canceled, and click Cancel.

Result
• The selected resource plan moves to the Canceled state.
• All past and future allocations for the resource plan are canceled. If there are any actual hours
logged against an allocation, that allocation is deleted. In this case, Allocated hours become
zero and the actual hours are retained as is.
Delete a resource plan
Deleting a plan also deletes all associated resource allocations.

Before you begin

Role required: resource_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan and select Delete on the form header.
A confirmation message appears.
Delete confirmation message

3. Select OK.
The resource plan and all the associated allocations are removed.
Extend a resource plan
You can extend the date of an allocated resource plan and allocate resources for the extended
period.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and start using Resource Management Workspace.
Resource requester can extend an assigned or unassigned resource assignment using
Resource Management Workspace.
Role required: resource_manager

About this task

Assume that work on a project has started, but there is a need to extend the date of an allocated
resource plan because the project has been extended. In this scenario, you can extend the date
of the allocated resource plan. The new date by which the resource plan is extended does not
have any impact on the existing allocated hours. While extending the resource plan, you can
specify the new end date and the request type. Based on the request type selected, the required
allocated hours are auto-filled.
For example, assume that you allocated 100 hours for 2 months, 50 hours for each month. Now,
you want to extend the resource plan by one month. For the extended month, allocation records
are created based on the request type selected.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan and select Extend Resource Plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
3. Select OK.
4. In the Extend resource plan dialog box, fill in the fields.
For a description of the field names, see Extend resource plan form.

Result
• The end date of the resource plan is updated.
• The Extension field displays the state as Allocated.
• For the extended period, allocation records are created based on the request type selected.
• Number of requested FTE or hours or person days is divided equally for each allocation period
and is pre-filled in each allocation record.
• Extending the resource plan invokes the rate model for getting the hourly rates.
Request extension of an allocated resource plan
As a project manager, you can request the extension of an allocated resource plan.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and start using Resource Management Workspace.
Resource requester can extend a resource assignment using Resource Management
Workspace.
Role required: it_project_manager, resource_user

About this task

Assume that a project, which has resources allocated, gets delayed by one month. As a project
manager, you can request for the extension of the resource plan if you need resources for the
period. This option is available only when the resource plan is in the Allocated state.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan and select Request Extension.
3. On the Request Extension from, fill the fields.
For a description of the field values, see Request Extension form.

Result

The end date of the resource plan is updated and the Extension field is set to Requested.

What to do next

Allocate resources for the extended period.
Allocate resources for the extended period
As a resource manager, you can allocate resources for the extended period.

Before you begin

Role required: resource_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
About this task

After a project manager submits a request to extend the allocated resource plan, the resource
manager receives a message at the top of the resource plan. The resource manager then reviews
and allocates resources for the extended period.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open the resource plan.
3. Confirm the extension in one of the following ways.
◦ From the Resource Allocation related list, review and update the value for the Requested
Hours, FTE, or Person Days fields.
◦ Select Allocated in the Extension field.

Result

Resources are allocated for the extended period.
Any errors or warnings during allocations are logged in the Resource Plan Logs related list on the
Resource Plan form. The log is generated if a resource is allocated over 24 hours for a given day.
You can review these logs to take correct actions for further resource allocation.
Reduce the duration of a resource plan
Reduce the duration of an allocated or confirmed resource plan and deallocate resources in one
action without having to do it individually for each resource.

Before you begin

Important: Resource plans in Resource Management will no longer be available for new
customers from future releases.
You're encouraged migrate your existing resource plans to work on resource assignments
which offers more flexibility and start using Resource Management Workspace.
Resource requester can move an assigned or unassigned resource assignment using
Resource Management Workspace.
Role required: resource_manager

About this task

You can reduce an allocated or confirmed resource plan only if the resource plan's end date is
later than the current date.
You can reduce the duration of an operational resource plan only if its state is allocated.

Procedure
1. Navigate to All > Resource > Resource Plans > All.
2. Open a resource plan and select Reduce.
Reducing the resource plan end date releases all resources by deleting resource allocations
after the new end date.
If no actuals are posted for the future in the resource plan, then all the allocated or confirmed
hours of the resources will be released when you reduce the resource plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
If actuals are posted for the future, then the resource plan end date is updated to the future
date on which actuals are present, and all allocated or confirmed hours of all the resources
from the date on which actuals are present to the original end date are released.
3. Enter the new end date of the resource plan in the End date field.
4. Select Yes in the confirmation message.

Result
• The end date of the resource plan is updated to the new reduced end date.
• The state of the resource plan remains the same.
• If no actuals are posted for the future in the resource plan, all allocated or confirmed hours of
the resources are released.
• If actuals are posted for the future, then the resource plan end date is updated to the future
date on which actuals are present, and all the allocated or confirmed hours of all the resources
from the date on which actuals are present to the original end date are released.

Example: Resource allocation concerning actuals
Say a resource plan was created for 1 FTE from January 1, 2021, to December 31, 2021, and on
March 1, 2021, the resource plan end date was updated to March 1, 2021. Then, all the allocated
or confirmed hours of the resources on this plan between March 1, 2021, to December 31, 2021,
would be released. If actuals are posted for the future, for example, May 25, 2021, then the
resource plan end date will be updated to May 25, 2021, and all confirmed or allocated hours
between March 1, 2021 to December 31, 2021 will be released.
Time zones in resource plans
Time zones are important in resource management when the users and groups doing the
resource tasks are located in different locations.
Users maintain their time in the My Calendar module and resource managers use the resource
workbench or resource plan to assign tasks to various users.
All users are assigned a schedule. If a user schedule changes, all time calculations change
automatically. The schedules can be floating or time zone-specific.
• A floating schedule is the same in any time zone. For example, if a resource manager in
Amsterdam sets a floating schedule for 08:00–17:00, a user in San Jose sees the schedule as
08:00–17:00.
• When a schedule is defined in a specific time zone, users in different time zones see the
schedule with their own time zone applied. For example, if the resource manager sets a time
zone-specific schedule for 08:00–17:00 in Amsterdam, the San Jose user sees the schedule
as 23:00 of the previous day to 07:00 on the current day because the San Jose time zone is
nine hours behind the Amsterdam time zone.
Associate a time card with a resource plan
If one resource is allocated to identically named tasks in two resource plans, use the following
procedure to specify the resource plan the time card should be allocated to.

Before you begin

Role required: resource_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
About this task
• A resource plan can be associated with a time card only if the resource plan contains hard
allocations for the user.
• If a resource plan isn’t associated manually to a time card, then a resource plan is autoassociated. The auto-association is done based on the selected Task in the time card.

Procedure
1. Navigate to the All > Time Cards > All.
2. Select a time card.
3. Configure the form to add the Resource plan field.
4. In the Resource plan field, select the plan to which the time card should be allocated.
Only resource plans that contain the selected task are listed.
Time Card with Resource Plan

5. Select Update.

Migration of resource plans, operational resource plans, and cost plans
Effortlessly migrate resource plans to resource assignments and the associated cost plans to
attribute-based labor costs of your projects or demands and easily work on resource allocations
using Project Workspace.

Tip: Resource Managers are encouraged to view the Resource Management Workspace
boot camp

to learn about Resource Management Migration to the Next Experience.

Resource plans to resource assignments
Migrate all the resource plans of a project or demand to attribute-based resource assignments
depending on the planning attributes to easily manage your projects on Next experience using
Project Workspace and Capacity Planning.
Group, Skill, and Role are the primary attributes enabled for Resource Management depending
on which the resource plans are migrated to resource assignments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
Important: Resource plans in Planning, Requested, Confirmed, Allocated, Rejected, and
Completed states are only migrated to Resource assignments. Resource plans in Canceled
and In-progress states are not migrated.
Let us see how the status of the resource plans are mapped to the status of resource
assignments.
Status mapping between resource plans and resource assignments
Resource plan status

Resource assignments status

Planned or Requested

Unassigned

Allocated

Approved

Confirmed

Approved

Completed

Approved

Cancelled or In-progress

Resource plan is not migrated

Rejected

Unapproved

When a resource plan is migrated, a corresponding resource assignment is created based on
the primary attributes from the resource plan. Resource assignments do not support custom
selection of allocation type and allocation spread.
With the migration of resource plans:
• Resource plans in Planning or Requested states, resource assignments are created based on
the planned dates and planned duration with their default state as Unassigned.
• Allocation type is set to planned duration.
• Allocation spread is always Even.
• Existing resource allocations are deleted and created again to accommodate resource
allocations with the resource name and planned duration.
• The allocated costs and allocated hours are copied to planned costs and planned hours.
• Actual hours for the resource plans in Confirmed and Allocated states are retained with the
resource plans.

Note: Only one resource assignment is created for every unique combination of primary
attributes, Group, Skill, and Role, and one for every user if the resource plans are created
with selected member preferences. After migration, if you create a resource assignments
with any of the existing combinations, the available resource assignments are updated with
the new requests.

Example: Migration of Resource plans to Resource assignments
Resource plans in different states.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Resource plans migrated as resource assignments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
Operational resource plans to operational resource assignments
Operational resource plans also follow the same logic to migrate operational resource plans to
operational resource assignments.

Important: Operational resource plans in Allocated and Completed states are only
migrated as Operational resource assignments.
After migration, the Request type of operational resource plans is changed to Hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


<!-- page 1426 -->
Example: Migration of Operational resource plans to Operational resource
assignments
Operational resource plan in Allocated state created for Demo GroupA.

After migration, we will have the following Operational resource assignments for every member
of the group.

Note: The parent-child mapping is retained and you may see an additional resource
assignment with empty resource.

Migration of cost plans to attribute-based cost plans
When resource plans of a project or demand are migrated to resource assignments, the
corresponding financial cost plans based on the resource plans will be migrated to new attributebased labor costs. Migrate resource plans related link trigger migrates the cost plans along with
resource plans migration.
Every resource plan has an associated a cost plan with Labor capex as the cost type. While
migrating, the planning attributes of the resource plans are analyzed to create attributebased cost plans for the unique combination of the three planning attributes enabled for
financials (Employee type, Expense Type, and Role). After migration, there will be no one-to-one
association between resource assignments and attribute-based cost plans.

Note: If a resource plan is not associated with either Employee Type or Role, the migrated
cost plans costs are consolidated into a single cost plan.
The planned costs are moved to the new attribute-based cost plans while the actual costs
remain on the existing cost plan records. The rate model values associated with project or a
demand are considered to generate attribute-based labor costs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
Example: Migration of cost plans to attribute-based cost plans
Cost plans associated to a resource plan.

Attribute-based cost plan Resource_Internal_Capex is created after migration.

Migrate resource plans and cost plans for projects and demands
Migrate resource plans and cost plans of your projects or demands to resource assignments
and attribute-bases cost plans and work on the resource allocations and project financials using
Project Workspace.

Before you begin
• Learn more about Migration of resource plans, operational resource plans, and cost plans.
• Ensure the project or demand have resource plans and cost plans.
• Role required: resource_user

Procedure
1. Use one of the following options to open a project or a demand.
◦ To open a project, navigate to All > Project > Projects > All and open a project.
◦ Too open a demand, navigate to All > Demand > Demands > All and open a demand.
2. Select the Migrate resource plans related link.

Note: This selection triggers the migration of resource plans and cost plans
simultaneously.
3. In the Migrate Resource Plans confirmation window, select OK.

Tip: You can Activate a scheduled job to migrate resource plans and cost plans.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
Result

Resource plans are migrated to resource assignments, cost plans are migrated to attribute-based
cost plans. Refresh the project page to view the resource assignments in Resource assignments
related list.

What to do next

Create resource assignments to manage resource efforts.
Enable attribute-based resource assignments
Enable the property to work on attribute-based resource assignments to request efforts for your
planning items.

Before you begin
• If a project, demand, or a task has at least one attribute-based resource plan, Resource plans
related list is hidden.
• If a project, demand, or a task has at least one resource plan without any attribute-based
resource assignments, Resource plans related list is visible.
• If a project, demand, or a task has no resource plans and the
sn_pw.enable_resource_planning property is enabled, Resource assignments
related list is available, else, Resource plans related list will be available.
• If a project, demand, or a task has at least one attribute-based resource assignment, New and
Manage options are hidden for Resource plans.
• If a project, demand, or a task has at least one resource plan without any attribute-based
resource assignments, New and Manage options are available for Resource plans.
• If a project, demand, or a task has no resource plans and the
sn_pw.enable_resource_planning property is enabled, New and Manage options
are hidden for Resource plans, else, they will be available.
Role required: admin

Procedure
1. Navigate to All > System Properties > All.
2. Filter the name field to locate and open sn_pw.enable_resource_planning.
3. Change the scope of the instance to Project Workspace.
4. Clear the Value field and enter true.
5. Select Update.
Create resource assignments
Create resource assignments to request a portion of team or resource capacity for project or
demand.

Before you begin
• Migrate resource plans and cost plans for projects and demands
• Set the resource planning property to true to create work with only resource assignments. For
more information, see Enable attribute-based resource assignments.
• Role required: resource_user, resource_manager, it_project_manager, demand_manager,
admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
Procedure
1. Use one of the following options to open a project or a demand.
◦ To open a project, navigate to All > Project > Projects > All and open a project.
◦ To open a demand, navigate to All > Demand > Demands > All and open a demand.
2. On the Resource assignments related list, select New.
3. On the Resource assignment form, fill the fields.
For a description of the field names, see Resource assignment form.
4. Select Submit.

Tip: You can edit the child resource assignments from the list view.
Migrate operational resource plans
Migrate the required Operational resource plans to attribute-based Operational resource
assignments.

Before you begin

Role required: resource_manager, it_project_manager, demand_manager, admin

Procedure
1. Navigate to All > Resource > Resource Plans > All Operational Plans.
2. Select the list of operational resource plans to migrate.
3. Select Migrate resource plans from the Actions on selected rows... list.
Operational resource plans are migrated to Operational resource assignments. You can view
the list of Operational resource assignments at All > Resource > Resource Assignment >
Operational Resource Assignments.

Tip: You can Activate a scheduled job to migrate resource plans and cost plans.
Create operational resource assignments
Create operational resource assignments to allocate a portion of team or resource capacity for
operational work such as administration work, meetings, trainings, and so on.

Before you begin

Role required: resource_user, resource_manager, it_project_manager, demand_manager, admin

Procedure
1. Navigate to All > Resource Assignment > Create Operational Resource Assignments.
2. On the Resource Assignment form, fill in the fields.
For a description of the field names, see Resource assignment form.
3. Select Submit.

Result

Operational resource assignment is created. You can navigate to All > Resource Assignment >
Operational Resource Assignments view the list of operational resource assignments.
Activate a scheduled job to migrate resource plans and cost plans
Activate the Migrate Resource Plans scheduled job to migrate resource plans, operational
resource plans, and cost plans of your projects and demands to resource assignments and
attribute-based cost plans.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Migrate Resource Plans scheduled job.
3. Select Active option to activate and schedule the job.
4. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
5. Select Execute Now to execute the scheduled job or select Update to save your changes.
Alternatively, you can migrate resource plans and migrate operational resource plans for
required projects and demands.

Create requested allocations for a resource plan
Requested Allocations are automatically created when a resource plan is submitted and is
in Planning state. If required, the resource requester can create new requested allocations
for a resource plan in Planning or Rejected state. Resource managers can create requested
allocations for the plans in Requested state.

Before you begin

Role required: resource_user

About this task

A requested allocation doesn’t have an allocation for a named resource. It only details the start
date, end date, and the planned hours.
To specify the breakup of resource requirements for monthly or weekly Allocations types, you
can modify the requested allocations. For example, if you've requested 100 hours of a resource
from January to February, but you want 20 hours in January and 80 hours in February. You can
specify these details on the Requested Allocations form.

Procedure
1. Navigate to All > Resource > Resource Plans > Planning or Rejected.
2. Open a resource plan.
3. In the Requested Allocations related list, select New.
4. On the Requested Allocation form, fill in the fields.
For a description of the field values, see Requested Allocation form.
5. To save the record and return to the resource plan, select Submit.

Example:

If a resource is requested from September 1 to Nov 30 for 360 hours, requested allocation
records are created as follows:
Case 1: Plan duration allocation type
For a plan duration allocation type, the following requested allocation records would
be created:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Planned
hours

Start date

End date

Sep 01 (Resource plan start
date)

Nov 30 (Resource plan end
date)

360

Case 2: Monthly allocation type
For a monthly allocation type, hours are proportionally distributed based on working
days as follows:
• Total working days for the planned duration = 65 days
• Hours to allocate per working day = 360/65 = 5 hours
The following requested allocation records would be created:

Start date

End date

No. of working days

Planned hours

Sep 01

Sep 30

22

22 * 5 = 110

Oct 01

Oct 31

21

21 * 5 = 105

Nov 01

Nov 30

22

22 * 5 = 110

For a weekly allocation, requested allocation records created similar to monthly. Three allocation
records, one for each month are created.

Resource allocation
After resource requesters create a resource plan, resource managers can confirm the resources
to move the plan to the Confirmed state. Resource managers can then allocate resources to the
plan and move it to the Allocated state.
Based on calendar and schedule information, resource managers view resource availability and
select the resources under their management that can be confirmed and allocated to specific
tasks.

Soft and hard allocations
When a resource plan moves to the Confirmed state, resource allocations corresponding to
requested allocations are created automatically. The Booking type for these allocations is Soft.
Soft allocations are like temporary allocations for the requested users and do not create any
calendar events.
When the plan is moved to the Allocated state, the Booking type changes from Soft to Hard.
For a hard booking, the resource is assigned to the plan and is not available for other plans
during the allocated times. The booked time also appears on the user calendar. If the requested
resource cannot be allocated for the entire allocation duration, the allocation record booking
type remains as soft.
Any errors or warnings during allocations are logged in the Resource Plan Logs related list on
the Resource Plan form. You can review these logs to take correct actions for further resource
allocation.

Note: The resource property

com.snc.resource_management.allocation_interval_minutes enables
the creation of soft and hard allocations with a decimal value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
Calculation of hours for soft allocations
Case 1: Proportional distribution
For example, the requested allocation for a group with two resources when the
Members preference value is set to All members or Specific members is as
follows:

Start date

End date

Planned hours

October 03

October 07

40

The planned hours on the Resource Plan form are proportionally distributed among
all the requested allocations based on number of working days for each requested
allocation record.

Resource

Resource time-off

Available capacity
(hours)

Soft Allocation hours

Resource 1

2 days

3 * 8 = 24

24 * 0.625 = 15

5 * 8 = 40

40 * 0.625 = 25

Resource 2
The following calculations are used:

• Total available capacity = Available capacity User 1 +
Available capacity User 2 = 24 + 40 = 64 hours
• Hours to allocate per hour of available capacity =
Planned hours/total available capacity = 40/64 = 0.625
hours

Note: Multiple soft allocations could be created for one requested allocation
for group resource plans.
Case 2: Most available resource requested first
For example, the requested allocation for a group with three resources when the
Members preference value is set to Any member is as follows:

Start date

End date

Planned hours

October03

October 07

40

The system finds the most available resources in the specified time frame and
creates soft allocations for these resources.

Resource

Available hours

Soft Allocation hours

Resource 1

24

10

Resource 2

30

30

Resource 3

20

Resource 2 is the most available resource. The system creates soft allocations for
resource 2 first until it consumes all available hours from resource 2. The system
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
then moves to the next most available resource, and so on. Once available hours for
all resources are consumed, and the planned hours are still left over after allocating
across all members (from most available to least available), the remaining hours are
equally distributed among all resources.

Calculation of hours for hard allocations
Case 1: Even spread
Selecting Even as hard allocation spread type creates resource events for the
resource by splitting the hours evenly across all working days.
The Smart Even Load allocation spread takes the availability of resources into
account while allocating and only applies hours evenly where possible. If a
resource is over-allocated for a day, it bypasses that day and resumes allocations to
succeeding days until the resource plan is fulfilled.
For example, for a resource requested for 20 hours in a week, the even spread hard
allocation is as follows:

Day of the week

Monday

Tuesday

Wednesday Thursday

Friday

Available hours

6

6

6

6

Time-off

Allocated hours

5

5

5

5

0

Case 2: Front load
Selecting Front load as the hard allocation spread type fills up all available resource
slots from the start date of the allocation. Once the resource is fully allocated
between start and end dates, the remaining hours are filled from the start date up to
24 hours.
For example, for a resource requested for 20 hours in a week, the front load spread
hard allocation is as follows:

Day of the week

Monday

Tuesday

Wednesday Thursday

Friday

Available hours

6

6

6

6

Time-off

Allocated hours

6

6

6

2

0

Event creation during hard allocation
You can control the minimum unit for an event by modifying the Calendar Event Duration
(minutes) (com.snc.resource_management.allocation_interval_minutes
property). The default is 60 minutes.
Resource allocations use this property to create allocations with a decimal value. Use the
following table to ensure you set the property value correctly.

Scheduled hours of the user

Calendar Event Duration value

0.5

30

0.25/0.5/0.75

15

0.2/0.4/0.6/0.8

12

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
Scheduled hours of the user

Calendar Event Duration value

0.1, 0.2, and so on

6

Example: 4 hours for 1 week, with an allocation interval of 60 minutes
Creates a 60-minute block from Monday through Thursday.

Monday

Tuesday

Wednesday

Thursday

60 mins

60 mins

60 mins

60 mins

Friday

Example: 4 hours for 1 week, with an allocation interval of 30 minutes
If the value of this property is set to 30 minutes, and 1 hour needs to be allocated
to the user, the allocation is divided into the two 30-minute blocks when the user is
available. This setting creates a 60-minute block from Monday through Wednesday
and 30-minutes blocks for Thursday and Friday.

Monday

Tuesday

Wednesday

Thursday

Friday

30 mins+30
mins

30 mins+30
mins

30 mins+30
mins

30 mins

30 mins

Note: If the scheduled hours are not divisible by the Calendar Event Duration property,
then there will be a loss of few hours for each day. For example, the per day scheduled
hours per day are 8.5 and the property value is set to 60. Then, the maximum allocated
hours for each day will be 8, resulting in a loss of 0.5 hours per day.

Time-off handling
Resource events from a resource plan are not created for the days where the resource
has marked time-off or engaged in other events (such as training and meetings). An
administrator can manage the resource capacity and allocation with the property,
com.snc.resource_management.exclude_events_from_schedule, to specify:
• Which events must be excluded for capacity calculations. For example, if a resource has timeoff between Monday and Wednesday, the weekly capacity for the resource is calculated as 16
hours (as opposed to 40 hours).
• When the system must not create allocations. For example, if a resource is in training on Friday,
the resource is not allocated for a task on Friday.

Over-allocation
Over-allocated resources are allowed. Over-allocating resources creates overlapping events
in the user calendar within the user's scheduled hours. However, a maximum of 24 total hours
can be allocated in any given day. Overlapping events appear overlapped in the calendar in the
weekly view. In the monthly view, overlapping events appear above or below another event.
For example, a user has a schedule that specifies the daily work day from 08:00 to 17:00. Event
1 is in the user's calendar from 08:00 to 14:00. If an additional five hours are added for the
same day for Event 2, an event is created for the three hours of free time (14:00 to 17:00). An
overlapping event is also created for the remaining two hours, starting at the beginning of the
day (08:00 to 10:00).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
Overlapping event from the monthly view

Overlapping event from the weekly view

Create a resource role
Define project-specific roles for team members based on their skills and competencies.

Before you begin

Role required: resource_manager

Procedure
1. Navigate to All > Resource > Resources > Resource Roles.
2. Select New.
3. On the Resource Role form, fill the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
For a description of the field names, see Resource Role form.
4. Select Submit.
User resources and group resources
When allocating resources, a resource manager might need to work with an administrator to add
users to a group with pps_resource role.

Resource Manager view
The Resource Manager view in Resource > Resources > Users lists only the users who have
the pps_resource role. In addition to some of the fields displayed in the User Administration >
Users
form, the Resource Manager View > Users form also displays the following fields, which
are editable only by a user with resource_manager role:
• Location
• Schedule
• Timesheet Policy
• Average Daily FTE Hours/Hours Per Person Day

Note: Use the Update Resource Capacity related link to specify a date range. User
capacity is populated in all aggregate tables based on the schedule of the user.
The Resource Manager view in Resource > Resources > Groups lists only the groups with
the pps_resource role. When a resource manager creates a new group from this view, the
pps_resource role is added by default to the group record. Although resource managers have
write access to several fields, the only fields that they should edit are Average Daily FTE Hours/
Hours Per Person Day and Hourly rate.
Update the resource capacity
From the Resource Manager view, update the capacity of a user for a specific duration. Based
on the schedule of the user and the specified duration, the capacity of the user is accordingly
populated in all resource aggregate tables.

Before you begin

Role required: resource_manager

About this task

Use the Update resource capacity related link in the following scenarios:
• If a user is newly added and you want to update the capacity for the user.
• If the schedule of an existing user is changed and you want to update the capacity of the user.
The scheduled job that is used for this action is Update resource capacity.
Capacity is generated for only the date range between employment start date and employment
end date specified in the employee profile in the HR application. This information is available
when the Employee Profile plugin is installed. If the start and end date are unavailable for an
employee, manually specify these dates.
Also, if an employee is available after the year has begun, then the capacity is generated from
the current year's beginning, to ensure that missing capacity is accounted for. For example, if the
employee's capacity is available from March 1, 2022 to June 1, 2022, then the updated capacity is
generated from January 1, 2022 to June 1, 2022.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
Capacity and availability for terminated resources is automatically updated to 0 when you run
the Resource Termination Handler job when the termination date is after the date on which the
job is run. If resources are booked for a time period beyond the user's termination dates, those
bookings are also updated to 0 in the resource plan.

Procedure
1. Navigate to All > Resource Management > Resources > Users.
2. Select a User ID.
3. Select the Update Resource Capacity related link.
4. In the window, provide a start date and end date.

Note: You can’t select a start date that is before the employment start date or an end
date that is after the employment end date when the Employee Profile plugin is installed.
5. Select OK.
Update the resource aggregates
From the Resource Manager view, you can update the resource aggregates for a specific time
frame.

Before you begin

Role required: admin

About this task

You can use the Update Resource Aggregates related link in the following scenarios:
• If you notice a discrepancy in aggregates and want to generate correct data.
• If you want to synchronize aggregates with the Resource Allocation Daily
[resource_allocation_daily] entries for a specific time frame.

Procedure
1. Navigate to All > Resource Management > Resources > Users.
2. Select a User ID.
3. Select the Update Resource Aggregates related link.
4. In the window, provide a start date and end date.
5. Select OK.
Create allocations
Resource managers can create allocations using the Resource Allocations related list.

Before you begin

Role required: resource_manager

Procedure
1. Navigate to All > Resource > Resource Plans > Requested.
2. Open a resource plan.
3. In the Resource Allocations related list, select New.
4. On the Resource Allocation form, fill the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
For a description of the field values, see Resource Allocation form.
5. Select Submit to save the record and return to the resource plan.

What to do next

In the resource plan form, select Confirm or Confirm and Allocate to move the resource to the
Confirmed or Allocated state.
Reject a resource plan from the Resource Plan form
Resource managers can reject plans from the Resource Plan form or from the Resource
Workbench.

Before you begin

Role required: resource_manager

Procedure
1. Navigate to All > Resource > Resource Plans > Requested.
2. Open the plan to reject.
3. Optional: Add a description of the reason for the rejections in the Notes field.
4. Select Reject.

Resource schedules
Understand the default schedules used in Resource Management and learn how to create your
own custom schedules.
Resource management uses a default schedule named Resource Management Schedule. The
Resource Management Schedule has the following characteristics:
• Weekly on Weekdays
• Monday through Friday 08:00-12:00
• Monday through Friday 13:00-17:00
While planning a resource request for a resource plan, the user's schedule is considered to
calculate planned and requested hours, if all users in that resource plan have the same schedule
and that schedule is different from the resource management schedule.

Default schedule
The schedule assigned to each user can be understood using the following information on the
user profile.
• Value provided in the Schedule field.
• Schedules provided in the Schedules related list, with the Context field set to Resource
Management.
This related list can be seen in the Resource Manager view of the user profile.
If there are no entries in the Schedules related list, the value provided for the
Schedule field is used to determine the resource schedule. If the Schedule field
is empty too, then the schedule specified in the Default Schedule Name
(com.snc.resource_management.default_schedule) property is applied as the
resource schedule. To understand how to modify this property value, see Specify the default
resource management schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
Custom schedules for resources
Check the default schedule associated to a resource and apply custom schedules to those
resources who require it.
If custom schedules are necessary, work with your administrator to create them. An administrator
can create a schedule as per your requirements and assign it to the user. This custom schedule
can also be assigned to other users as appropriate.
The value specified for the Schedule field on a user profile overrides the schedule specified in
the Default Schedule Name property.

Note: The Time zone field of a schedule is recommended to be set to Floating.
If necessary, the administrator can create a hierarchy of schedules. This is useful if you want
users to have a primary schedule such as Monday-Friday 8:00-17:00 and a secondary schedule
such as Saturday-Sunday 12:00-16:00. See Custom schedule hierarchy.

Custom schedule hierarchy
To create a schedule hierarchy for any user, use the Schedules related list. Create a schedule
and within the new schedule, define the type, dates, and repeat schedule using the Schedule
Entries related list.
For example, Alene's usual schedule is 8-5 weekdays, which is specified in the Schedule field of
their user profile. On top of the usual work, Alene also has to attend a site check every Saturday.
The schedule for this appointment can be created from the Schedules related list.
Custom schedule hierarchy example

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
Schedule entry within a custom schedule

Specify the default resource management schedule
Choose the default schedule to be applied to your resources.

Before you begin

Role required: it_pps_admin

About this task

The base system uses Resource Management Schedule. You can change the default schedule at
any time by using the Default Schedule Name property.

Procedure
1. Navigate to All > System Scheduler > Schedules > Schedules.
2. Review the schedules and copy the Name of the schedule that you want to use.
3. Navigate to Project Administration > Settings > Properties - Resource.
4. In the Default Schedule Name property field, paste the name of the schedule that you
identified in step 2.

Resource events
A resource event is a block of time that a resource spends on a task.
Each time a resource manager makes an allocation, the system creates one or more resource
events for that resource. The resource events appear on the user's personal calendar.
When a booking changes from soft to hard, resource events are created for the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


<!-- page 1441 -->
Resource events and schedules
Schedules classify time as work time and non-work time and can be associated with resources
and with projects.
The My Calendar module shows the user's work schedule and non-work time.
When a resource manager makes an allocation, the following takes place automatically:
• The schedule associated with the specified resource is analyzed.
• The allocation type changes to Hard and calendar events are created for individual resources
within the users' schedule. The hours are spread depending upon the hard allocation spread
type.
Use the Calendar Event Duration property to control the default minimum unit for an event. See
Resource Management properties for examples.

Note: Over-allocation is allowed, starting with the Geneva release. However, no more than
24 hours can be allocated to a user during a given day. See Resource allocation for more
information.
Resource event modifications
Resource events that aren’t part of a resource plan can be modified.
You can only modify events you created for yourself in the "My Calendar" module. If a resource
manager added an event to your calendar, then only the resource manager can modify the event.
Resource managers can modify an event that is part of a resource plan by deleting the event and
creating a one. For example, a resource manager allocates a resource to a task on a resource
plan and then wants to change the task work type to Phone Call. The resource manager must
delete the event and then create another event with the work type set to Phone Call.
Modify a resource event that is part of a resource plan
You can modify a resource event that is part of a resource plan.

Before you begin

Role required: resource_manager

Procedure
1. Navigate to Resource > Resource Plans > All.
2. Select a plan Number.
3. In the Resource Allocations related list, select an allocation Number.
4. On the Resource Event form, update the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
For a description of the field names, see Resource Event form.
A resource event

Modify a self-created resource event
You can modify a resource event that you created.

Before you begin

Role required: none

Procedure
1. Navigate to All > Resource > Calendar > My Calendar.
2. Double-click an event that has not been assigned to a resource plan.
3. Modify the event, as necessary.
4. Select Update.
Change the resource event color
Each event type is represented with a color. PPS admin can change the colors at any time.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Resource Event Colors.
2. Click an Event Type.
3. Specify a different Color.
4. Click Update.

Resource Management reports
Resource Management reports provide the resource requester and resource managers with
resource allocations, availability, and utilization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
Important: Resource Management reports is deprecated starting Zurich release. It will
be hidden and no longer available for installation but will continue to be supported. For
details, see the Deprecation Process [KB0867184]
article in the Now Support Knowledge
Base.
Alternatively, resource managers are encouraged to use the interactive Overview
Dashboard in the Resource Management Workspace. For more information about
dashboards, see Overview dashboard in Resource Management Workspace.
You can generate reports for the following types of information:
Availability
Total time that the resources are available after both Soft and
hard allocations. Availability is capacity minus allocation.

Forecasted Utilization
Percentage of forecasted resource time utilization. It is calculated as
sum of allocated and confirmed hours, divided by the total capacity.

Committed Utilization
Percentage of committed resource time utilization. It is
calculated as allocated hours divided by the total capacity.

Allocation
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
Resource capacity, allocations, availability, and utilization.

Allocation details
A tabular breakdown of all allocation requests (soft bookings), committed
allocations (hard bookings), availability, capacity, and actual hours.
If the actual hours for a resource is greater than the allocated hours, the actual
hour's cell is highlighted and a message is displayed on mouse hover.

View availability, utilization, and allocation reports
You can view resource reports that focus on resource availability, utilization, and allocations.

Before you begin

Role required: admin, resource_user, or resource_manager

Important: Resource Management reports is deprecated starting Zurich release. It will
be hidden and no longer available for installation but will continue to be supported. For
details, see the Deprecation Process [KB0867184]
article in the Now Support Knowledge
Base.
Alternatively, resource managers are encouraged to use the interactive Overview
Dashboard in the Resource Management Workspace. For more information about
dashboards, see Overview dashboard in Resource Management Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
Procedure
1. Navigate to All > Resource > Resource Reports > Resource Reports.
2. On the Resource Reports form, Fill the fields.
For a description of the field names, see Resource Reports form.
3. Select Run to view the report.
Edit a resource management report
Resource management reports show resource allocation details in different formats for different
time periods. Configure and use these reports according to your business requirements.

Before you begin

Role required: resource_user or admin

Important: Resource Management reports is deprecated starting Zurich release. It will
be hidden and no longer available for installation but will continue to be supported. For
details, see the Deprecation Process [KB0867184]
article in the Now Support Knowledge
Base.
Alternatively, resource managers are encouraged to use the interactive Overview
Dashboard in the Resource Management Workspace. For more information about
dashboards, see Overview dashboard in Resource Management Workspace.

About this task

You can update the report settings like the aggregation type, request type, and calendar type
for new reports. For example, you can edit the Resource - Group Allocation Details Monthly (Hrs)
report to view the allocation details in terms of FTE instead of hours. You can also choose to view
the charts associated with the reports by group bars or stack bars.

Procedure
1. Navigate to All > Resource > Resource Reports > Reports-New.
The following reports are displayed.
Report

Description

Resource — Group Allocation Details —
Monthly (Hrs)

Stack bar chart shows the breakdown of allo­
cated time and available time of a group.
Pivot report shows capacity, availability, and
allocated hours of all group members in a
monthly time frame.

Resource — Group Member Allocation De­
tails — Monthly (Hrs)

The default filter is between today and the
next two quarters.
Select a group and run the report.
Pivot report shows capacity, availability, and
allocated hours of all group members in a
weekly time frame.

Resource — Group Member Allocation De­
tails — Weekly (Hrs)

The default filter is between today and the
next two quarters.
Select a group and run the report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
Report

Description

Resource — Project Member Allocation De­
tails — Monthly (Hrs)

Pivot report shows the list of users allocated
to a project on a monthly scale. The report
shows allocated and actual hours of every
user.
Select a project and run the report.
Pivot report shows the following information
for every member of the group:

Resource — Task wise — Group Member Al­
location Details — Monthly (Hrs)

◦ All tasks (projects and other tasks) to which
the member is allocated.
◦ Allocated time and actual time spent by the
member on the allocated tasks, on monthly
basis, for the next two quarters.
Pivot report shows the following information
for every member of the group:

Resource — Task wise — Group Member Al­
location Details — Weekly (Hrs)

◦ All tasks (projects and other tasks) to which
the member is allocated.
◦ Allocated time and actual time spent by the
member on the allocated tasks, on weekly
basis, for the next two quarters.

a. Select the Edit icon (

) or select on the report name.

b. Configure the report by updating the field values in the Configuration tab.
c. Select Run to run the report, or select Save to run it later.
2. Optional: Select Create a report to create a new report.

My Calendar
Any user with the resource_user role can open My Calendar to view, add, and modify their
planned work, actual work, operational work, administrative tasks, and personal activities.
After a user adds an event to the calendar, the time blocks for that event appear as red,
indicating busy, on the resource console and the resource availability dashboard.
Resource managers view users' calendars to determine who has open time to complete tasks,
and can add tasks to any resource's personal calendar. For every event that is created on a
user's calendar, a record is created in the User Calendar Event [user_calendar_event] table.
Resource events are chunks of busy time for the user. Users and resource managers can
sometimes modify these records. See Resource event modifications.
The calendar uses time zones. Time is displayed to users in their local time zone according to
user preferences. See Time zones in resource plans.
Each resource event is represented with a specific color. PPS admin can change these colors.
See Change the resource event color

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
Note: Although a user can add tasks, such as incidents, to their calendar, the user isn’t
added to the task's Assigned to field.
Add events to your calendar
Add tasks, events, and appointments to your calendar.

Before you begin

Role required: pps_resource or resource_manager

About this task

To create an event that repeats daily, weekly, or monthly, see Create repeatable events.

Procedure
1. Navigate to All > Self-Service > My Calendar.
The calendar appears in the week view by default, highlighting today's schedule. The user's
off-duty schedule in gray.
2. Change the view as necessary.
◦ Select Day, Week, or Month.
◦ Use the forward or back arrows to navigate between days, weeks, and months.
◦ Select a date using the calendar icon

.

◦ Select Today to reset your calendar view to show today's calendar.
3. Open the Add Event form by double-clicking an empty cell on the calendar.
4. On the New event form, fill the fields.
For a description of the field names, see New event form.
5. Select Submit.

Result
• When you add a calender event, the resource aggregate daily, weekly, and
monthly tables are updated. The resource aggregate daily table isn’t enabled
by default. To generate daily aggregates and store them in this table, create the
com.snc.resource_management.generate_daily_aggregates property and
set its value to true.
• All the non-project events created for you from the calender appear as Operational Work for
you in Resource Finder.
Create repeatable events
Events can be set to repeat on a regular schedule, such as every day, week, or month.

Before you begin

Role required: resource_manager

About this task

You can create events even if the timeslot is booked by some other event.

Procedure
1. Navigate to All > Self-Service > My Calendar.
2. Double-click an empty cell on the calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
3. On the New event form, fill the fields.
For a description of the field names, see New event form.

Note: Dates in the When and To field should the same.
4. Click Submit.
View a user calendar
View the calendar of a user to check availability.

Before you begin

Role required: resource_manager

About this task

You can view a calendar for a specific user, and not for all users in a group.

Procedure
1. Navigate to All > Resource > Resources > Users.
2. Do one of the following options.
Option

Description

From the User list

Right-click a user name in the Users list and
select View Calendar.

From the User form

Select a User record to open the User form,
and then select the View Calendar related
link.

Add events to a user calendar
Resource managers can add events to user calendars.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
Before you begin

Role required: resource_manager

Procedure
1. Navigate to All > Resource > Resources > Users.
2. Do one of the following.
Option

Description

From the User list

Right-click a user name in the Users list and
select View Calendar.

From the User form

Select a User record to open the User form,
and then select the View Calendar related
link.

The calendar for that user opens in a new window or tab.
3. Open the Add Event form by selecting an empty white cell on the calendar.
4. On the form, fill the fields.
For description of the field names, see Add events to your calendar.

Result
• When you add a calender event, the resource aggregate daily, weekly, and
monthly tables are updated. The resource aggregate daily table isn’t enabled
by default. To generate daily aggregates and store them in this table, create the
com.snc.resource_management.generate_daily_aggregates property and
set the value to true.
• All the non-project events created for a user from the calender appear as Operational Work for
the user in Resource Finder.
Delete events
You can delete events you created at any time.

Before you begin

Role required: resource_user

About this task

You can’t delete any events added to your calendar by a resource manager.

Procedure
1. Navigate to All > Self-Service > My Calendar.
2. Find the event to delete.
Use the icons above the calendar to locate the appropriate day, week, or month.
3. Double-click the event.
4. Select Delete.
5. Select OK.

Result

When you delete a calender event, the resource aggregate daily, weekly, and monthly
tables are updated accordingly. The resource aggregate daily table isn’t enabled
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


<!-- page 1450 -->
by default. To generate daily aggregates and store them in this table, create the
com.snc.resource_management.generate_daily_aggregates property and set
the value to true.

Use Resource Diagnostics to detect corrupt resource data
The Resource Diagnostics feature uses the Application Diagnostics Tool to detect corrupt data
for a resource, such as duplicate aggregates for users, or dailies without a top task.

Before you begin

Role required: pps_admin

Procedure
1. Navigate to All > Resource > Resource Diagnostics.
2. On the Application Diagnostics Tool page, select Resource Management.
3. Select one or multiple diagnostic scans.
4. Select Run Diagnostics.
5. View results of the scan.
It lists the duplicate aggregate for users or project-related resource allocation dailies without a
top task, if any.

What to do next

Add your own diagnostic scans and fix scripts.
Add diagnostic features for resource
Create diagnostic features to evaluate an application feature and organize various diagnostic
scans for an application. The diagnostic features appear in the target application and list all the
diagnostic scans associated with the diagnostic feature for that application.

Before you begin

Role required: adt_admin

About this task

A diagnostic feature can consist of a single or multiple diagnostic scans. These diagnostic scans
execute the scripts, that they’re mapped with, to detect data corruption or invalid data. You can
then create diagnostic scans with scripts and execute these scans to check resources for any
corrupt or invalid data. If a fix script is associated with a scan, you can use it for fixing the corrupt
or invalid data.
You can also define fields for users to create a specific filter condition. The diagnostic scripts use
the results of these filter conditions as inputs for detecting any corrupt or invalid data.
You can check for the existing features under the Features module. If you don't find one
matching your needs, create a diagnostic feature and associate it with an application.

Procedure
1. Navigate to All > Application Diagnostics Tool > Features.
2. Select New.
3. On the Diagnostics Feature form, fill the fields.
For a description of the field names, see Diagnostics Feature form.
4. Define user input values for specifying filter conditions in the Diagnostics Inputs section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
The fields in this section are displayed in the application as condition builder. For a description
of the field names, see Diagnostics Inputs form.
5. Select Submit.

What to do next

Create diagnostic scripts and add fix scripts to use with the diagnostic feature. For more
information, see Add diagnostics and fix scripts for resource.
Add diagnostics and fix scripts for resource
Add existing or new diagnostic scripts to scan the data in your application for any corruption. You
can also attach fix scripts to rectify the corrupt or invalid data identified by the diagnostic script.

Before you begin

Role required: adt_admin

About this task

You can create multiple diagnostic scripts to check various aspects of data. The results of the
filter conditions, that you specify in a diagnostic feature, is used as an input for the diagnostic
script while executing. You can also use the result of one script in subsequent scripts.

Procedure
1. Navigate to All > Application Diagnostics Tool > Scripts.
2. Select New.
3. On the Diagnostics Scripts form, fill the fields.
For a description of the field names, see Diagnostics Scripts form.
4. Optional: If you want to include a script for fixing the corrupt or invalid data identified by the
diagnostic script, select the Has Fix script check box.
5. Use Fix script Access Roles to move required roles to the Selected list.
The users with the selected roles can access the diagnostic script.
6. In the Fix script section, add the actual code for the fix script.
7. Select Submit.
Create diagnostic scan and map scripts for resource
Create a diagnostics scan and map diagnostic feature with diagnostic and fix scripts. You
can create a diagnostic scan to execute diagnostic scripts to check the health of data in your
application. Use the fix scripts to rectify any corrupt or invalid data that the diagnostic scan
identifies.

Before you begin
• Role required: adt_admin
• Create diagnostic features. For more information, see Add diagnostics features for resource.
• Create diagnostic and fix scripts. For more information, see Add diagnostics and fix scripts.

About this task

After creating diagnostic features, diagnostic scripts, and fix scripts, map the diagnostic features
and scripts to create a diagnostic scan. You can map multiple scripts with each diagnostic scan
and define the order of their execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Procedure
1. Navigate to All > Application Diagnostics Tool > Diagnostics.
2. Select New.
3. On the Diagnostics form, fill the fields.
For a description of the field names, see Diagnostics form.
4. Search for and select diagnostic scripts to map with the diagnostic scan in the Diagnostics
and Script Mappings section.
5. Select Submit.

Resource Management reference
Reference information to provide additional details about Resource Management such as the
fields, user roles, tables, and guidelines.
Resource Management properties
The Resource Management application provides several properties to control allocations,
schedules, and other settings.
You need the PPS admin role to access the Resource properties.
To manage resource properties, navigate to Project Administration > Settings > Properties –
Resource.
Resource management properties
Property

Description

Default value

Maximum number
Determines the maximum number of daily resource
2600
of daily resource
allocation records that should be considered
allocation records
in synchronous mode during confirmation and
that should be
allocation. The property improves the system
considered in
performance when the number of daily allocation
synchronous mode
records is more than the value set in the property.
for confirmation
The default value is 2600 which implies that the
and allocation.
number of daily records considered for confirmation )
(com.snc.resource_management.plan.auto_async_threshold
or allocation in synchronous mode is 2600. The value
is equivalent to confirming or allocating 10 users on a
group resource plan for 1-year duration (260 working
days) or 5 users for 2-year duration, and so on. If
the group resource plan contains 11 users for 1-year
duration, the number of daily records are 2860. Thus
the confirmation and allocation of the resource plan
in this case is in asynchronous mode.
If you always want to confirm and allocate the
resource plan in synchronous mode, set the value
of the property to a higher number based on your
requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
Resource management properties (continued)
Property

Description

Default value

Note: If the property

com.snc.resource_management.run_state_changes_async
is set to true, the confirmation and allocation
of resource plans is always considered in
asynchronous mode.
Show Week/Month
Shows the toggle button for switching between week
toggle on resource
and month in the resource grid.
grid interface
(com.snc.resource_management.show_week_month_toggle)

Yes

Maximum time
The maximum duration for which the resource details 24
duration in
should be shown in the resource finder.
Resource Finder in
months(com.snc.resource_management.max_dur_resource_finder)
Use budget reference
Yes
• When the property is set to Yes, the budget
rates to calculate the
reference rates [itfm_fx_rate] are used to calculate
Resource requested/
the resource requested or allocated cost.
allocated cost to
• When the property is set to No, exchange rates
derive hourly rate
[fx_rate] are used to calculate the resource
from Labor rate cards
requested or allocated cost. For upgraded
(com.snc.resource_management.use_budget_reference_rates
)
customers, the property is by default set to No.
Maximum number
Restricts the maximum number of days for which a
of days for which
resource plan should be created.
a resource plan
can be created
(com.snc.resource_management.plan.max_duration)

3660

Default
The schedule on the instance that the Resource
Schedule Name
Management application uses by default.
(com.snc.resource_management.default_schedule)

Resource
Management
Schedule

If
The value that determines when the availability of the 50
resource_management resource is shown as green on the resource report.
reporting for a
Green signifies that the resource is not being fully
resource/group
utilized and is probably available to have the work
has value of
allocated.
percentage_allocation
less than this
value the color is
shown as green.
(com.snc.resource_management.percentage_allocation_normal)
If
The value that determines when the availability of the 90
resource_management resource is shown as orange on the resource report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
Resource management properties (continued)
Property

Description

Default value

reporting for a
Orange signifies the resource does not have much
resource/group
availability.
has value of
percentage_allocation
less than this value
and greater than the
com.snc.resource_management.percentage_allocation_normal,
then color is
shown as orange.
(com.snc.resource_management.percentage_allocation_warning)
Average Daily
The average daily full-time equivalent in hours or
FTE Hours/Hours
number of hours per person day. This value is used
Per Person Day
as the equivalent of a full-time day if no value is
(com.snc.resource_management.average_daily_fte
specified in the Average Daily FTE Hours/Hours
)
Per Person Day field on the user or group resource
record.

8 (hours)

Note: Capacity is not derived from FTE, but
from schedules. Both FTE and schedules must
be in synchronization with each other.
Calendar Event
The default duration for a calendar event.
60 (minutes)
Duration (Minutes)
Resource allocations use this property to create
(com.snc.resource_management.allocation_interval_minutes
)
allocations with a decimal value.
For example, a user is available for three blocks of
time: two 30-minute blocks and one 60-minute block.
• If the value of this property is set to 30 minutes,
and 1 hour needs to be allocated to the user, the
allocation is divided into the two 30-minute blocks
when the user is available.
• If the value of this property is set to 60 minutes, the
allocation is given to the 60-minute block.

Note: When you are changing the default
value, enter a value which results a finite value
when divided by 60. For example, 6, 12, 15, 30
and so on.
First Day of
Determines which day of the week is the first day. The 1 (Monday)
Week (Monday
resource workbench uses this value to calculate the
= 1, Sunday = 7)
week number.
(com.snc.resource_management.first_day_of_week)
For example, a resource is requested from October 14
(Wednesday) to October 21 (Wednesday).
If the value of this property is set to 2 (Tuesday), the
allocation is made and presented in the workbench
in two blocks:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
Resource management properties (continued)
Property

Description

Default value

• From Wednesday October 14 to Saturday October
15.
• Tuesday October 20.
Perform Resource
Uses asynchronous mode when confirming,
Confirmation/
allocating, or canceling resource plans to improve
Allocation/
application performance.
Cancellation in
asynchronous mode Because resource confirmation and allocation
create calendar events for each resource in a group, )
(com.snc.resource_management.run_state_changes_async
and also consider each resources schedule, the
confirmation, and allocation process can take an
excessively long time to complete.

No

In asynchronous mode, the application uses an
event manager to handle errors that might occur
when processing the state of the resource plan. If the
property is enabled:
• The state of the resource plan changes to
Confirmation in Progress / Allocation in Progress /
Cancellation in Progress.
• If the confirmation, allocation, or cancellation does
not work, the Confirm, Allocate, or Cancel UI
actions appear so you can reprocess the action.
If an allocation is only partially completed, you
can click the Allocate UI action again to remove
all previously created events for the plan and
reprocesses the action.
Enable this property if you encounter errors or longer
processing times when handling confirmations,
allocations, or cancellations. This might occur if
there are more than 25 members in a group or if the
duration of the resource plan exceeds 6 months.
Comma-separated
Specifies which events must be excluded for capacity time_off
list of resource event calculations of the resources and when the system
types which will
must not create events.
be excluded from
The events to be entered must be from the Category
user's schedule to
field in the time card table.
calculate available
capacity and to avoid
making resource
allocations on the
days having these
events (time_off,
meeting, and so on)
(com.snc.resource_management.exclude_events_from_schedule)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
Resource management properties (continued)
Property

Description

Default value

Show soft allocations Shows the following options:
Resource
in calendar for
Managers
• Resource Managers: When selected, soft
(com.snc.resource_management.calendar_show_soft_allocations)
allocations can be seen in the calendar by the
resource managers only.
• Everyone: When selected, soft allocations can be
seen in the calendar by all users who have the PPS
Resource role.
Number of records
The number of records that are fetched in resource
30
fetched at a time
grid in one server call.
in Resource
For example, if there are 100 projects in an allocation
Grid(com.snc.resource_management.number_of_records_to_fetch_at_a_time
)
board, only 30 are fetched in the first call. When the
user scrolls down, a call is made to fetch the next 30
projects. Similarly, when the user expands a project
containing, say 100 resource plans, only 30 resource
plans are fetched in the first call. Upon scrolling, the
next 30 plans are fetched, and so on.

Do not allow resource Restricts the entry of resource plan dates that
No
plan dates to be
go beyond the project or demand dates to avoid
outside the Project/
discrepancies between project or demand dates and
Demand dates
resource plan dates.
(com.snc.resource_management.do_not_allow_resource_plan_dates_outside_project
If this property is enabled, the resource plan start
and end dates must be within the project or demand
dates when you create, extend, shift, move, or
change the state of a resource plan from requested to
confirm or allocate.
Limit the number
Sets the maximum number of users that must be
50
of users retrieved
displayed for a group or role while searching for users
for a group or
in Resource Finder
role in Resource
Finder search
(com.snc.resource_management.number_of_users_to_fetch_in_finder_at_once)
Allocates more than 24 hours of efforts for a resource No
Allocate more than
per a day.
24 hours of effort
a day per resource
(com.snc.resource_management.allocate_more_than_24hours_per_day)
Excludes the resource assignments with defined
This field is left
Exclude resource
statuses from calculating resource availability and
empty.
assignments in
aggregates.
specific states from
You can enter comma separated values such as
capacity calculation
(com.snc.resource_management.exclude_status_from_availability
Pending, Unapproved, and so on.
)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
Resource Plan form
Field descriptions for the resource plan form fields.
Resource Plan form
Field

Description

Number

Automatically generated identification number for the plan.

Resource
type

Category of resource. To select a group, select Group. To select an individual user,
select User. To select a resource by role, select Role.

Group

Specific group resource to associate with the plan.
If you select Role in the Resource type field, then the Group list contains groups
only for the selected role.

User

Specific user resource to associate with the plan.
This field appears if you select User in the Resource type field.

Role

Specific resource role that you want to associate with the plan.
This field appears if you select Role in the Resource type field.

Members Specific members, any member, or all members from the selected group or role.
preference The default is All members.
This field appears only when the Group or Role option is selected in the Resource
type field.
• To request all members of a group or role, select All members. The requested
time gets split among all members of the selected group or role proportionally
depending on their capacity. Before making the hard allocation, if all members
are not required, the resource manager can select only the desired members of
the group or role.
• To request specific members of a group or role, select Specific members, and
then select members from the Members list. The requested time gets split
among the selected members of the selected group or role proportionally
depending on their capacity.
• To select any member of a group or role, select Any member. Resources that
are most available during the plan duration are requested first. Soft allocation is
created only for these resources on confirmation.
For more information about the effect of members preference on the calculation of
hours for soft and hard allocations, see Resource allocation.

Note: This field is not available by default on the form when opened from
the resource grid. If required, you can configure these fields. If the resource
plan is created from the list view, the fields are already available.
Skills

Specific skills the requested resources should possess to allocate them to the
resource plan.
This field appears if you select Group or Role in the Resource type field, and All
members or Any member in the Members preference field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
Resource Plan form (continued)
Field

Description

For more information, see Skills Management

.

Request
type

Type of request. To specify a request in hours, select Hours. To specify a request
in full-time equivalents, select FTE.

FTE

Number of units for the full-time equivalent selection.
This field appears if you select FTE in the Request type field.
For more information, see Resource plans.

Planned
hours

Estimated number of work hours required to complete all resource plan work.

Note: If all users in a resource plan have the same schedule and that
schedule is different from the resource management schedule, then the
user's schedule is considered to calculate planned hours,

Name

Descriptive name for the plan. If you do not enter a name, the name becomes the
Number + Short description. If the short description for the task is empty, the plan
number is used.

Task

Task to which the plan applies. If the resource plan was created from a project
task, the task number appears here.

Start Date

Start date for the resource plan. By default, this field shows the Planned start date
of the associated project record or task record. Edit the default date, if necessary.

Note: The start date of the resource plan cannot be before the project or

demand start date if the Do not allow resource plan dates to be outside the
Project/Demand dates property is enabled.
End Date

End date for the resource plan. By default, the date is derived from the Planned
end date of the associated project record or task record. Edit the default date, if
necessary.

Note: The end date of the resource plan cannot be after the project or

demand start date if the Do not allow resource plan dates to be outside the
Project/Demand dates property is enabled.
Allocation
spread

Type of hard allocation. The value in this field determines the manner in which the
allocated hours are spread while creating hard allocations. Select either option:
• Even: Create resource events for the resource by splitting the hours evenly
across all working days for the allocation duration.
• Front load: Create resource events for the resource by filling up all available
slots of the resource from the start date of the allocation.
For example, if a resource is requested for 30 hours in Week 10:
• Selecting Even equally divides 30 hours to all weekdays, that is, 6 hours per day
for a five-day work week.
• Selecting Front load first consumes all available hours on Monday, then move
on to Tuesday, and so on, until all 30 hours are allocated. If the resource is not

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
Resource Plan form (continued)
Field

Description

available for 30 hours in Week 10, Front load over-allocates by filling up the
remaining hours from start date up to 24 hours per day.

Note: This field is not available by default on the form when opened from
the resource grid. If required, you can configure these fields. If the resource
plan is created from the list view, the fields are already available.
State

State of the resource plan. The plan starts in the Planning state.

Note: This field is not available by default on the form when opened from
the resource grid. If required, you can configure these fields. If the resource
plan is created from the list view, the fields are already available.
Rate
override

Option for overriding the hourly rate derived from the rate model or the labor rate
card.
When the option is selected,
• The planned, confirmed, and allocated costs of the resource plan is derived
from the rate specified in the Resource Rate field.
• When the user submits the time card for the resource plan, the rate specified in
the Resource Rate field is used to calculate the actual cost of the resource plan.
The option is enabled only if the resource plan is in the Planned state.
By default, the option is not selected.

Resource
rate

Hourly rate of resource that overrides the hourly rate returned from the rate model
to calculate the planned and actual costs of the resource plan.
This field appears when the Rate override option is selected. If you clear the Rate
override check box, the resource rate value is also cleared and removed from
all calculations. On selecting the Rate override check box again, the previous
resource rate is not retrieved.

Note: The Members Preference, Allocation spread, and State fields are not available
by default on the form when opened from the resource grid. If required, you can configure
these fields. If the resource plan is created from the list view, the fields are already
available.
Resource Plan form tabs
Use the resource plan form tabs to create a resource plan.
Resource details tab fields
Field

Description

Resource type

Type of resource selected during the creation
of resource plan.

Group

Group associated with the resource plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
Resource details tab fields (continued)
Field

Description

Role

Role associated with a role resource plan.

User

User associated with a user resource plan.

Skills

Skills that the requested resources possess to
allocate them to the resource plan.

Note: This field is only available for
resource plans with all or any members
preference.
Members preference

Specific members, any member, or all
members from the selected group or role.

Members list

Resources selected as specific members for
specific members preference resource plan.

Confirmed/Allocated users

Resources that are confirmed/allocated by
the resource manager for resource plans.
By default, this field is displayed for specific
members preference type of resource plans.

Request Details tab fields
Field

Description

Request type

Type of request selected during the creation of
resource plan.
• If you select FTE in the Request Type field,
the FTE field is displayed.
• If you select Person Days in the Request
Type field, the Person days field is
displayed.

Planned hours

Estimated number of work hours required to
complete all resource plan work.

Confirmed/Allocated hours

Confirmed or allocated hours rolled up from
resource allocations.

Actual hours

Actual hours rolled up from time card entries.

FTE

Number of units for the full-time equivalent
selection.

Demand currency

Type of currency associated with the demand
task when the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin is
activated and Demand Currency view is
enabled. For more information, see the
Multicurrency in Demand Management topic.

Project currency

Type of currency associated with the project
or project task when the PPM Standard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
Request Details tab fields (continued)
Field

Description

Multicurrency (com.snc.ppm_multicurrency)
plugin is activated and Project Currency view
is enabled. For more information, see the
Multicurrency in Project Management topic.
Planned cost

Amount in Planned hours multiplied by the
hourly rate of the specified user or group
resource. This amount is a first-draft estimate
of the resource plan cost.
The hourly rate is derived from one of the
following sources:
• If the Rate override option is selected, the
hourly rate specified in the Resource rate
field is used.
• If a rate model is populated on the project
or demand to which the resource plan is
associated, the hourly rate is derived from
the rate model.
• If the resource plan is assigned to a specific
user and the time sheet policy of the user
is set for multiple rate types, the planned
cost is determined using the labor rate card
with the default rate type. If the default rate
type is inactive, the system rate is used to
determine the planned cost.
• If the resource plan is assigned to a specific
user and the time sheet policy of the user is
not set for multiple rate types, the planned
cost is determined using the labor rate card
with no rate type. Otherwise, the system rate
is used.
• If the hourly rate is in non-functional
currency, budget reference rates are used.

Note: Setting up rates for resources
would provide more accurate forecast
and plan costs for resource plans.
Planned cost is rolled up from Requested
Allocations for plans in the Planning or
Requested state and from Resource
allocations for plans in the Confirmed or
Allocated state. While requesting resources
from a group, if a resource role is specified, the
planned cost is calculated from the hourly rate
of the specified role.
Planned cost in demand currency

Planned cost of a resource plan associated
to a demand or demand task in the
demand currency when the PPM Standard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
Request Details tab fields (continued)
Field

Description

Multicurrency (com.snc.ppm_multicurrency)
plugin is activated and the Demand Currency
view is enabled. The Planned cost in demand
currency value is derived by multiplying
planned hours with the hourly rate of the
specified user or group resource, and then
converting the result to the demand currency
based on the budget reference rates.
Planned cost in project currency

Planned cost of a resource plan associated to
a project or project task in the project currency
when the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin is
activated and the Project Currency view is
enabled. The Planned cost in project currency
value is derived by multiplying planned hours
with the hourly rate of the specified user or
group resource, and then converting the result
to the project currency based on the budget
reference rates.

Confirmed/Allocated cost

Amount of confirmed or allocated hours
multiplied by the hourly rate of the confirmed
or allocated resources. Provides a more
accurate estimation of the cost of the plan that
is confirmed or allocated.
• If the Rate override option is selected, the
hourly rate specified in the Resource rate
field is used.
• If a rate model is populated on the project
or demand to which the resource plan is
associated, the hourly rate is derived from
the rate model.
• If rate model is not available, labor rate card
determines the hourly rate.
• If no labor card is found for the user, the
hourly rate is taken from the following time
card property: Default hourly rate used
when processing time cards if we can't
get a rate from labor rate cards (in system
currency).

Confirmed/Allocated cost in demand currency Confirmed or allocated cost of a resource plan
associated to a demand or demand task in
the demand currency when the PPM Standard
Multicurrency (com.snc.ppm_multicurrency)
plugin is activated and the Demand Currency
view is enabled. The Confirmed/Allocated
cost in demand currency value is derived
by multiplying the confirmed or allocated
hours with the hourly rate of the confirmed or
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
Request Details tab fields (continued)
Field

Description

allocated resources, and then converting the
result to the demand currency based on the
budget reference rates.
Confirmed/Allocated cost in project currency

Confirmed or allocated cost of a resource
plan associated to a project or project task in
the project currency when the PPM Standard
Multicurrency (com.snc.ppm_multicurrency)
plugin is activated and the Project Currency
view is enabled. The Confirmed/Allocated
cost in project currency value is derived
by multiplying the confirmed or allocated
hours with the hourly rate of the confirmed or
allocated resources, and then converting the
result to the project currency based on the
budget reference rates.

Actual cost

Based on the same time cards used for the
Actual hours, the actual cost is calculated
using the hourly rate of each user and the
hours worked. Used to inform resource
requesters and resource managers of actual
costs based on the actual hours that user
resources added on their approved time
cards.
The hourly rate is derived as:
• If the Rate override option is selected, the
hourly rate specified in the Resource rate
field is used.
• If a rate model is populated on the project
or demand to which the resource plan is
associated, the hourly rate is derived from
the rate model.
• If the time sheet policy of a user is set
for multiple rate types, the actual cost is
determined using the labor rate card with
the default rate type.
• If the default rate type is inactive, the system
rate is used to determine the actual cost.
• If the time sheet policy of a user is set
for multiple rate types, the actual cost is
determined using the labor rate card with
no rate type. Otherwise, the system rate is
used.

Actual cost in demand currency

Actual cost of a resource plan associated
to demand or demand task in the demand
currency when the PPM Standard
Multicurrency (com.snc.ppm_multicurrency)
plugin is activated and the Demand Currency
view is enabled. The Actual cost in demand

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
Request Details tab fields (continued)
Field

Description

currency value is derived by multiplying the
hourly rate of each user with the hours worked,
and then converting the result to the demand
currency based on the exchange rates.
Actual cost in project currency

Actual cost of a resource plan associated to a
project or project task in the project currency
when the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin is
activated and the Project Currency view is
enabled. The Actual cost in project currency
value is derived by multiplying the hourly rate
of each user with the hours worked, and then
converting the result to the project currency
based on the exchange rates.

Allocation Config tab fields
Field

Description

Allocation type

Type of resource distribution across the
project that determines the type of allocation
records. The value in this field determines
how the planned hours are distributed across
resource plan duration among requested
resources:
• Weekly: Create week-long allocations up to
the end of the planned end date.
• Monthly: Create month-long allocations up
to the end of the planned end date. (Default
value.)
• Plan Duration: Create one allocation for
each user for the entire duration of the
resource plan.
For example, if a resource is requested from
January 1 to March 31, the following records
would be created for each type:
• Monthly: 3 allocation records, one for each
month.
• Weekly: 14 allocation records, one for each
week with Monday being the first day of the
week.
• Plan duration: Only 1 record for the entire
duration of the resource plan.

Allocation spread

Type of hard allocation selected during the
creation of the resource plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
Notes tab field
Field

Description

Notes

Other correspondence and notes about the
resource plan.

Resource assignment form
Description for the resource assignment form fields.
Resource assignment form
Field

Description

Resource

Specific user resource to associate with the
plan.

Note: If you select a specific resource,
the Group, Role, and Skill planning
attributes associated to the resource are
auto populated.
Group

Group of resources to associate with the plan.

Role

Role of the resources to associate with the
plan.

Skill

Skill of the resources to associate with the
plan.

Effort type

Type of the effort to associate with the plan.
Select Hours to request defined set of hours
or select % Capacity to request certain
percentage of the resource capacity.

Effort

Amount of effort type required.

Operational work type

Type of operational work: KTLO, Admin,
Meeting, Training, Out of office, External labor,
Time off, Appointment, and Phone call.

Rate model

Rate model assigned to the operational
resource plan. The rate model is used to
derive hourly rates for the resource plan.
If you change or remove the rate model
assigned to an operational resource plan, the
cost fields on the plan are re-calculated.

Start date

Date when the operational resource plan
starts.

End date

Date when the operational resource plan ends.

Resource status

Status of the resource assignment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
Resource Plan related links and lists
Use the resource plan related links and list to clone the resource plan details, view resource
workbench, update cost plans, recalculate resource costs, or work on the modifying the request
allocations.
Related Links
Field

Description

Copy
Resource Plan

Copies the opened resource plan into a new resource plan.

Update Cost
Plan

If you are using Project Portfolio Management, resource plans automatically
create cost plans for a project or demand.
Whenever you update the resource plan, click Update Cost Plan to keep the
cost plan up-to-date.

Note: The cost plan associated to a resource plan is also automatically
updated when the resource plan is updated.
Recalculate
Resource Cost Recalculates the resource costs of the resource plan whenever the hourly
rates change in the rate model to keep the costs up-to-date.

Related Lists
Requested Allocations

List of requested allocations for the resource
plan.
The number of requested allocation records
created depends on the value of the
Allocation type field. For example, if a
resource is requested from January 1 to March
31, the following requested allocation records
are created for each type:
• Monthly: 3 allocation records, one for each
month.
• Weekly: 14 allocation records, one for each
week with Monday being the first day of the
week.
• Plan duration: Only 1 record for the entire
planned duration.

Resource Allocations

List of resources allocated to the plan.

Resource Plan Logs

Lists any error or warnings that might occur
during resource allocation.

Resource form
Use the resource form to create an operational resource plans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
Resource form
Field

Description

Number

Automatically generated identification number for the operational resource plan.

Resource
type

Resource category. To select a group, select the Group option. To select an
individual user, select the User option. To select a resource by role, select Role.

Group

Group for which the operational resource plan is created.
If you select Role in the Resource type field, then the choice list displays the
groups for the selected role.

User

User for whom the operational resource plan is created. This option appears if
you select User in the Resource type field.

Role

Specific resource role that you want to associate with the plan. This option
appears if you select Group or Role in the Resource type field.
If you select Group in the Resource type field, then the choice list displays the
roles for the selected group.

Members
preference

Specific members or all members from the selected group or role. The default
is set to All members. This field appears only when the Group or Role option is
selected in the Resource type field.
• If the All members option is selected, the resource plan includes all members
of the selected group or role. Time is proportionally divided among the selected
group or role members, depending upon their capacity. Before making the hard
allocation, if all members are not required, as a resource manager, you can
select only specific members from the group or role.
• If the Specific member option is selected, a request is made for the specified
members. The requested hours are proportionately split among specified users
of the group or role, based on their available capacity.

Skills

Specific skill(s) that you want to associate with the plan. This field appears only
when the All members option is selected in the Members preference field.
For more information on skills management, see Skills Management

.

Request
type

Type of request: Hourly or % Capacity. To estimate the work in hours, select
the Hourly option. To estimate the work in percentage of capacity, select the
%Capacity option.

Planned
hours

Estimated number of hours required to complete the operational work.

Confirmed/ Hours of a resource confirmed or allocated for operational work.
Allocated
hours
Actual
hours

Hours spent on a planned operational task.

Note: When you submit a time card, upon approval of the time card, actual
hours are updated for an allocation record of an operational resource plan.

Name

Descriptive name for the operational resource plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
Resource form (continued)
Field

Description

Operational Type of operational work: KTLO, Admin, Meeting, Training, Out of office, External
work type
labor, Time off, Appointment, and Phone call. The default is KTLO.
Rate model Rate model assigned to the operational resource plan. The rate model is used to
derive hourly rates for the resource plan.
If you change or remove the rate model assigned to an operational resource plan,
the cost fields on the plan are re-calculated.
Start date

Date when the operational resource plan starts.

End date

Date when the operational resource plan ends.

Allocation
type

Resource distribution type that determines the type of allocation records. The
value in this field determines how the planned hours are distributed across the
resource plan duration, among requested resources. Select any of the following
options:
• Weekly: Creates week-long allocations up to the end of the planned end date.
• Monthly: Creates month-long allocations up to the end of the planned end
date. Monthly is the default value.
• Plan Duration: Creates one allocation for each user for the entire duration of
the resource plan.
For example, if a resource is requested from Jan. 1st to Mar. 31st, the following
records are created for each type:
• Monthly: 3 allocation records, one for each month.
• Weekly: 14 allocation records, one for each week with Monday being first day
of the week.
• Plan Duration: Only 1 record for the entire duration of the resource plan.

Allocation
spread

Type of allocation spread. The value in this field determines the manner in which
the allocated hours are spread while creating hard allocations:
• Even: Creates resource events for the resource by splitting the hours evenly
across all the working days for the allocation duration.
• Front Load: Creates resource events for the resource by filling up all the
available slots of the resource from the start date of the allocation.
For example, if a resource is requested for 30 hours in week 10, then:
• Selecting Even equally divides 30 hours between all weekdays, which is 6
hours per day for a five-day work week.
• Selecting Front Loadconsumes all the available hours on Monday, moves on
to Tuesday, and so on, until all the 30 hours are allocated. If the resource is not
available for 30 hours in week 10, it over-allocates by filling up the remaining
hours from the start date up to 24 hours per day.

State

A plan starts in the Planning state. The plan moves to the Requested state after
its submission.

Planned
cost

Amount, in Planned Hours, multiplied by the hourly rate of the specified user
or group resource. Planned cost is a first draft estimate of the resource plan cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
Resource form (continued)
Field

Description

Planned cost is rolled up from Requested Allocations for plans in the Planning or
Requested states and from resource allocations for plans in the Allocated state.
The hourly rate is derived from one of the following sources:
• Rate model, if it is populated on the operational resource plan.
• Labor rate card, if rate model is not available.
• System property com.snc.time_card.default_rate if all the other
conditions fail.

Note: When requesting resources from a group, if a resource role is
specified, the planned cost is calculated from the hourly rate of the
specified role.
Confirmed/ Amount of confirmed or allocated hours multiplied by the hourly rate of the
Allocated
confirmed or allocated resources. Provides a more accurate estimation of the cost
cost
of the plan that is confirmed or allocated.
The hourly rate is derived from one of the following sources:
• Rate model, if it is populated on the operational resource plan.
• Labor rate card, if rate model is not available.
• System property com.snc.time_card.default_rate if all the other
conditions fail.
Actual cost

Amount of actual hours multiplied by the hourly rate of the specified resource.

Note: When you submit a time card, upon approval of the time card, actual
cost is updated for an allocation record of an operational resource plan.
Notes

Additional correspondence and information.

Related Links
Field

Description

Copy Resource Plan

Copies the opened resource plan to create a
new resource plan.

Related Lists
Field

Description

Requested Allocations

List of requested allocations for the resource
plan.
The number of requested allocation records
created depends on the value in the
Allocations type field. For example, if a
resource is requested from Jan first to Mar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


<!-- page 1470 -->
Related Lists (continued)
Field

Description

31st, the following requested allocation
records are created for each type:
• Monthly: 3 allocation records, one for each
month.
• Weekly: 14 allocation records, one for each
week with Monday being the first day of the
week.
• Plan Duration: Only 1 record for the entire
planned duration of the resource plan.
Resource Allocations

List of resources allocated to the plan.

Extend resource plan form
Use the Extend resource plan fields to extent a resource plan for a project.
Extend resource plan fields
Field

Description

New end date

Date until which you want to extend the
resource plan.

Request type

Type of request. Options include: FTE, Person
Days, or Hours.

FTE or Person Days or Hours

Number of units to request resources.
The field appears when you select one of the
options in the Request type field. Based on
the selected request type, specify the unit.
For more information, see Request type.

Request Extension form
Use the Request Extension form to request extension of an allocated resource plan.
Request Extension form
Field

Description

Extend until

Date until which you want to extend the resource plan and request for
resources.

Request type

Type of request. Options include: FTE, Person Days, or Hours.

FTE or Person
days or Hours

Number of units to request resources.
The field appears when you select one of the options in the Request type
field. Based on the selected request type, specify the unit.
For more information, see Request type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
Request Extension form (continued)
Field

Description

Notes

Other correspondence and information about the resource plan that the
project manager wants to communicate with the resource manager.

Requested Allocation form
Use Requested Allocation form to create a request for resource plans in Planning or Rejected
state.
Requested Allocation form
Field

Description

Start date Start date for the requested allocation record.
End date

End date for the requested allocation record.

FTE

Number of units for the full-time equivalent selection for the requested allocation
record.
If a resource is requested as FTE, then the planned hours for each requested
allocation record are calculated first. A total of all hours is then rolled up as planned
hours on the resource plan. See Resource plans for an explanation of FTEs.

Note: Capacity isn’t derived from FTE, but from schedules. Both FTE and
schedules must be in synchronization with each other.
Resource Resource plan number to which the requested allocation record is attached. This
plan
field automatically populates if the requested allocation record is accessed from a
resource plan.
Planned
hours

Number of hours to allocate to the requested allocation record.

Planned
cost

Estimated cost of resource.

By default, the Resource Plan form on the resource plan form are proportionally
distributed among all the requested allocations based on the number of working
days for each requested allocation record. However, it’s possible to override the
planned hours or the FTE.

Planned cost = Planned hours * hourly rate
The hourly rate is derived from one of the following sources:
• Resource rate from the resource plan, if the Rate override option is selected.
• Rate model, if it’s populated on the project or demand to which the resource plan
is associated.
• Labor rate card for user resource plans.
• Role rate when resource is requested by resource role, if the role has a rate.
• Group hourly rate if role doesn’t have a rate or if the role is null.
• System property com.snc.time_card.default_rate if all the other
conditions fail.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
Requested Allocation form (continued)
Field

Description

Planned costs roll up to the Planned cost field on the resource plan.
Planned
cost in
project
currency

Planned cost of a project task in project currency when the PPM Standard
Multicurrency (com.snc.ppm_multicurrency) plugin is activated and the Project
Currency view is enabled.

Planned
cost in
demand
currency

Planned cost of a demand task in demand currency when the PPM Standard
Multicurrency (com.snc.ppm_multicurrency) plugin is activated and Demand
Currency view is enabled.

Resource Role form
Use the Resource Role form to create roles for project team members.
Resource Role form
Field

Description

Name

Name of the resource role.

Note: The resource role name must be unique. Do not create duplicate
roles.
Hourly rate

Hourly rate for the resource role used for calculating the task cost based on time
worked.

Description Detailed description of the resource role.
Resource Allocation form
Use the Resource Allocation form to resource allocations.
Resource Allocation form
Field

Start date

End date
Resource

Confirmed/
Allocated
hours
FTE

Description

Start date for the resource allocation. The start and end dates must fall within
the dates of the resource plan.
End date for the resource allocation.
Resource to be allocated. The lookup results are filtered by the group, role, or
user selected on the resource plan.
Number of hours that the system confirms or allocates to the resource when
the resource plan is confirmed or allocated. Confirmed and allocated hours
roll up to the Confirmed/Allocated hours field on the resource plan.
Number of units for the full-time equivalent selection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
Resource Allocation form (continued)
Field

Description

This option appears if you selected FTE for the Request type field on the
resource plan.
Person Days

Number of units for the person days selection.
This option appears if you selected Person Days for the Request type field on
the resource plan.

Planned cost

Planned cost of the resource.
Planned Cost = Planned hours * hourly rateThe hourly rate
is derived from one of the following sources:
• Resource rate from the resource plan, if the Rate override option is
selected.
• Rate model, if it is populated on the project or demand to which the
resource plan is associated.
• Labor rate card, if rate model is not available.
• System property com.snc.time_card.default_rate if all the other
conditions fail.
Planned costs roll up to the Planned cost field on the resource plan.
The field is not visible on the form by default. Configure the form to add this
field if it is not visible.

Confirmed/
Allocated cost

Cost of the resource.
Confirmed/Allocated Cost = Confirmed/Allocated hours
* hourly rate
The hourly rate is derived from one of the following sources:
• Resource rate from the resource plan, if the Rate override option is
selected.
• Rate model, if it is populated on the project or demand to which the
resource plan is associated.
• Labor rate card, if rate model is not available.
• System property com.snc.time_card.default_rate if all the other
conditions fail.
Confirmed and allocated costs roll up to the Confirmed/Allocated cost field
on the resource plan.
The field is not visible on the form by default. Configure the form to add this
field if it is not visible.

Confirmed/
Allocated cost

Confirmed/Allocated cost of a demand task in demand currency when the
PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin is activated
and Demand Currency view is enabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
Resource Allocation form (continued)
Field

Description

in demand
currency
Confirmed/
Allocated
cost in project
currency

Confirmed/Allocated cost of a project task in project currency when the PPM
Standard Multicurrency (com.snc.ppm_multicurrency) plugin is activated and
Project Currency view is enabled.

Create New form
Use the Create New form to create allocation boards.
Create new form
Field

Description

Name

Unique name for the allocation board.

Type

Level from which you want to filter resources.
• Demands/Projects: When selected,
resources are filtered from demands and
projects.
• Group: When selected, resources are
filtered from a group.
• Group manager: When selected, all
resources with pps_resource role are
filtered.
• Portfolio: When selected, resources are
filtered from a portfolio.
• Program: When selected, resources are
filtered from a program.
• Resource Plan: When selected, resources
are filtered through the filter criteria and
are not bound to any particular group, role,
manager, portfolio, or program.
• Role: When selected, resources are filtered
from a role.
• User manager: When selected, all resources
with pps_resource role are filtered.
Depending on the value in Type field, a field
appears to select the name of the record.
For example, if Type is Group, a field Group
appears where you can select the name of the
group.

Resource Event form
Use the Resource Event form to update resource even which is part of resource plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
Resource Event form
Field

Description

Name

The name of the event.

Type

The type of event:
• Time off
• Appointment
• Meeting
• Phone call
• Task

When/To

The start and end date of event.

All day

If the event is an all-day event as specified by the schedule.

Repeats

If the event repeats Daily, Weekly, Monthly, or Does not repeat.

Task

The task associated with this event.

User

The user associated with the event.

Resource Reports form
Use the Resource Reports form to generate the resource reports.
Resource Reports form
Field

Description

Report Type

The type of report that you want to view. You
can select from the following options:
• Availability - view the availability of an entity
for selected time period.
• Forecasted Utilization - view the forecast
utilization of an entity for selected time
period.
• Committed Utilization - view the confirmed
utilization of an entity for selected time
period.
• Allocation - view allocations for selected
time period.
• Allocation Details - view the allocation
details of the entity for selected time period.

Entity Type

The entity that you want to view the report for.
You can select from the following options:
• User
• Group
• Demand
• Project

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
Resource Reports form (continued)
Field

Description

• Program
• Portfolio
• Other Task

Note: If you select Allocation in the

Report Type field, only User and Group
are available.
User

The user that you want to view the report for.
This field is displayed only if you select User in
the Entity Type field.

Group

The group that you want to view the report for.
This field is displayed only if you select Group
in the Entity Type field.

Group by

The option to filter the report for the selected
group by Roles or Members. This field is
displayed only if you select Availability
or Forecasted Utilization or Committed
Utilization in the Report Type field, and Group
in the Entity Type field.

Members

The group member from the selected group
that you want to view the report for. This field
is displayed only if you select Group in the
Entity Type field and Members in the Group
by field.

Role

The resource role from the selected group
that you want to view the report for. This field
is displayed only if you select Group in the
Entity Type field and Roles in the Group by
field.

Demand

The demand that you want to view the report
for. This field is displayed only if you select
Demand in the Entity Type field.

Project

The project that you want to view the report for.
This field is displayed only if you select Project
in the Entity Type field.

Program

The program that you want to view the report
for. This field is displayed only if you select
Program in the Entity Type field.

Portfolio

The portfolio that you want to view the report
for. This field is displayed only if you select
Portfolio in the Entity Type field.

Other Task

The task (other than a demand, project,
program, or portfolio) that you want to view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
Resource Reports form (continued)
Field

Description

the report for. This field is displayed only if you
select Other Task in the Entity Type field.
Resource Plan

The resource plan that you want to view the
report for. This field is not displayed if you
select User or Group in the Entity Type field.

Start Date and End Date

The start and end dates time frame to view the
report.

Zoom level

The zoom level that you want to view the report
for. You can select from the following options:
• Weekly: Displays data for each week during
the selected time period.
• Monthly: Displays data for each month
during the selected time period.

Report Unit

The unit in which capacity, availability, or
allocation of a resource is displayed.
• Hours: Displays the capacity, availability, or
allocation of a resource in hours.
• FTE: Displays the capacity, availability, or
allocation of a resource in FTE.
• Person days: Displays the capacity,
availability, or allocation of a resource in
person days.
This field is displayed only when the Report
Type field value is Availability, Allocations, or
Allocation Details.

New event form
use the New event form to add tasks, events, and appointments to your calendar.
New event form
Field

Description

Name

Enter a descriptive name for the event.

Type

Select a type from list.
• Time off: Personal time off.
• Appointment: A type of administrative task.
• Meeting: A work-related meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
New event form (continued)
Field

Description

• Phone call: A work-related phone call.
• Task work: A task in the ServiceNow
system, such as an incident or a change that
you are assigned to.
Task

Click the reference lookup icon and select the
task that needs to be done.
This field appears only if you selected Task as
the type of activity.

Note: This action does not add you to
the Assigned to field on the task form.
When

Choose the start and end date and time, or
select the All day option.
Do not use this field to set repeatable events.

Repeats

Select the frequency that the activity repeats,
such as Daily, Weekly, Monthly, or select
Does not repeatif this event is a non-repeating
event.
For example, if you have a task that you want
to work on Monday and Friday, set a weekly
repeatable event for Monday and Friday. See
Create repeatable events.

Repeat every

Enter a number that represents the frequency.
This field appears only if you selected Daily,
Monthly, or Yearly in the Repeats field.

Repeat on

Select the days of the week to repeat the
activity.
This field appears only if you selected Weekly
in the Repeats field.

Repeat until

Select an end date.
This field appears only if you select Daily,
Monthly, or Yearly in the Repeats field.

Diagnostics Feature form
Use the diagnostics Feature form to create a new diagnostic feature for a resource.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
Diagnostics Feature form
Field

Description

Name

Name of the diagnostic feature. This name
appears in the application to which this
diagnostic feature belongs.

Active

Option for activating the diagnostic feature.

Application

Search for and select the application with
which you want to associate this diagnostic
feature.

Roles

Move desired roles to the Selected list. The
users with the selected roles can access the
diagnostic feature.

Description

Details of the diagnostic feature. The
description is displayed in the application
to which the diagnostic feature belongs. It
enables the user to understand the diagnostic
scans executed in the feature.

Diagnostics Inputs form
Use the Diagnostics Inputs form fields to specify a filter condition for a user.
Diagnostics Input fields
Field

Description

Label

Name of the label for the input fields.

Field Type

Select Reference field type.

Table

Name of the table on which the query
specified in the condition should run.

Key

An identifier for the user input condition. If a
user specifies multiple conditions, this key
acts as a unique identifier for each condition.
You can use this key as the input for the
scanContext section of the diagnostic
script.

Diagnostics Scripts form
Use the Diagnostic Scripts form to scan the data in your application for any corruption.
Diagnostics Scripts form fields
Field

Description

Name

Name of the diagnostic script. Use a name that
clearly explains the objective of the script. The
script name also enables you to identify the
correct script while mapping the script to a
feature when creating a diagnostic scan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


