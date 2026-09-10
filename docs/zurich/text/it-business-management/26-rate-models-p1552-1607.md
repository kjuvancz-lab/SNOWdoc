# Zurich Strategic Portfolio Management — Rate Models / Time Card management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1552–1607 of 2289

Sections: Rate Models (p1552); Time Card management (p1559)

---

<!-- page 1552 -->
Rate Models
Use a rate model to derive date-effective, criteria-driven hourly rates for calculating planned and
actual resource costs for a project or demand.
Unlike labor rates, which are based on the user attribute only, a rate model can derive hourly
rates based on up to ten attributes. These attributes can be selected from predefined entities
such as projects, demands, users, and roles.

Rate lines
A rate model is a collection of multiple rate lines. A rate line is a unique combination of different
criteria values that defines the hourly rate for a resource, group, or role for a specific date range.
For the same set of criteria, you can create multiple rate lines with different rates for different date
ranges provided that the dates don't overlap.

Rate model processing
To derive hourly rates from a rate model for the resource plans and time cards of a project or
demand, associate the rate model with the project or demand.​

Note: A project or demand without a rate model uses the labor rate cards associated with
rate type to find a rate for the time cards.
The rate model associated with a project or demand evaluates the rate lines to find and return
the hourly rate that matches the requested criteria. The rates are derived from the rate model
during resource planning or allocation, and during time card processing.
The rate is returned in the functional currency specified in the matching rate line.
Rate model processing flow diagram

The following video describes how to set up a rate model and the evaluation method to find and
return the hourly rate for a request. Video explaining how to work with rate models
When a rate is requested, the rate model uses the following process.
1. Finds the rate lines in the requested date range and discards the remaining rate lines.
2. Evaluates the identified rate lines to find values matching the requested value in the first
criteria column and discards the remaining rate lines.
If the requested value is empty, it checks for rate lines containing NULL.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1552


<!-- page 1553 -->
If no exact match is found, it checks for the rate line having the value All other (*).
The evaluation is repeated for the other criteria columns in order of priority until all criteria
columns are processed.
3. Returns the rate if one or more rate lines match the request.
◦ If a single rate line is found, the corresponding rate is returned.
◦ If multiple rate lines are found, the system determines the number of hours in the request
that applies to each rate.
◦ For example, say the rate requested is for resource allocation from July 1 to July 30. The rate
model has one rate from July 1 to July 15 and a different rate from July 16 to July 30 for the
same set of criteria. The rate model applies the first rate to the requested hours for July 1–15
and the second rate to the requested hours for July 16–30.
If no rate lines match the request, then the request uses the default rate card.

Create or modify a rate model
Create or modify a rate model that can be linked to a project or demand to determine planned
costs and actuals for their resource. The rate model provides date-effective, criteria-driven hourly
rates for these investments.

Before you begin

Before you create a rate model:
• Choose the attributes to define the criteria in a rate model to derive hourly rates.
• Define the budget reference rates for the non-functional currency for the required time
periods.
Role required: pps_admin or it_rate_model_admin

Procedure
1. Create a rate model.
Option

Steps

From Project Administration

a. Navigate to Project Administration > Rate
Model > All.
b. Click New.

From Time Sheets

a. Navigate to Time Sheets > Rate Model >
All.
b. Click New.

2. On the form, fill in the fields.
Rate Model form
Field

Description

Name

Unique name for the rate model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1553


<!-- page 1554 -->
Field

Description

Active

Option for indicating the status of the rate
model.
Only active rate models can be assigned to a
project or demand.

Default

Option for setting the rate model as the
default.
You can set only one rate model as default.
A default rate model is automatically
associated to new projects and demands.

Rate model context

Context set for the rate model.
Read-only system field.

Currency

Default currency for the rate lines in the rate
model.

Rate type

Option for enabling the rate type attribute on
rate lines in the rate model.
When selected, Rate type is added as one
of the attributes along with other defined
attributes. For more information, see Rate
type in labor rate card.

Description

Short description for the rate model.

3. Click Submit.

What to do next

Add attributes from a set of predefined entities to define the criteria for rate model to derive
resource cost.

Define criteria of a rate model
Set the criteria of a rate model by adding attributes from a set of predefined entities to derive
resource hourly rates based on the criteria.

Before you begin

Role required: pps_admin or it_rate_model_admin

About this task

A rate model consists of one or more rate lines. Each line contains a unique combination of
criteria values and the hourly rate of a resource. You define the criteria by adding up to 10
attributes from the following entities:
• Project
• Project task
• Demand
• User
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1554


<!-- page 1555 -->
• Group
• Role
• Resource plan
You can select attributes of type String, Reference, Number, Boolean, and Choice.

Procedure
1. Open a rate model by performing one of the following actions:
◦ Navigate to Project Administration > Rate Model > All.
◦ Navigate to Time Sheets > Rate Model > All.
2. In the Rate Model Attributes related list, click New.
3. On the form, fill in the fields.
Rate Model Attributes form
Field

Description

Entity

Entity from which the attribute is used to
define the criteria.

Attribute

List of attributes from the selected entity to
define the criteria.

Priority

Unique number that determines the order in
which attributes in a rate model are evaluated
to derive the hourly rate.
An attribute with the lowest priority is
evaluated first.

Note: Two attributes cannot have the
same priority.
Name

User-friendly name for identifying the
attribute.
The default name populated is based on the
selected entity and attribute. For example,
if you select Resource in the Entity field
and Location in the Attribute field, then the
default name is Resource/Location.

4. Click Submit.

What to do next

Create rate lines to define the hourly rates for resources.

Create a rate line
In a rate model, create a rate line to define an hourly rate based on a set of criteria for a given
date range.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1555


<!-- page 1556 -->
Before you begin

Role required: pps_admin or it_rate_model_admin

About this task

Before creating or updating a rate line, note the following points:
• Rate lines with the same set of criteria values cannot have overlapping dates.
• A criteria field can be empty.
• All criteria fields on the form have a value All other (*) that, if selected, is considered by
the rate model if no exact match exists for that criteria.
• To use a non-functional (non-default) currency in a rate line, ensure that the corresponding
budget reference rate is available.

Procedure
1. Open a rate model by performing one of the following actions:
◦ Navigate to Project Administration > Rate Model > All.
◦ Navigate to Time Sheets > Rate Model > All.
2. On the Rate Model form, click the View Rate Lines related link.
3. On the Rate Lines form, click New.
4. On the form, fill in the fields.
Rate Lines form
Field

Description

Rate Model

Rate model the rate line belongs to.

Start date

Start date of the time period in which the rate
is applicable.

End date

End date of the time period in which the rate
is applicable.

Criteria fields

Fields corresponding to the rate model
attributes added to define the criteria. The
number of fields may vary.
For example, if you have added Group and
Location as rate model attributes, they are
available as fields on the form where you can
specify their values.

Rate

Applicable rate and currency of the rate line.
By default, the currency of the rate model to
which the rate line belongs is selected as
the currency. You can select a rate currency,
which can be different from the rate model
currency. Rate lines with the same set of
criteria values and currency must not have
overlapping dates.
A project or demand manager can track
the resource cost for projects or demands
in the corresponding project or demand

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1556


<!-- page 1557 -->
Field

Description

currency by installing the PPM Standard
Multicurrency (com.snc.ppm_multicurrency)
plugin and enabling the Project Currency
view or Demand Currency view for resource
plans. For more information, see the Create a
resource plan topic.
Rate Type

Labor rate type applicable for the rate line.
The field appears if the Rate type check box
on the Rate Model form is selected.

Rate in functional currency

Rate in the default currency configured in the
Financial Management application. This field
is not editable.

5. Click Submit.

Result

Rate lines that represent resource hourly rates based on defined attributes are created.

Export rate lines to a file
Export rate lines to a Microsoft Excel or CSV file to quickly update or add new rate lines and
import them back into the rate model.

Before you begin

Before exporting rate lines, define the criteria of the rate model by adding attributes to it. The
downloaded export file includes columns corresponding to the selected attributes and the
following default columns:
Role required: pps_admin or it_rate_model_admin.

About this task

Besides creating rate lines one at a time, you can add multiple rate lines into a rate model using
the export and import rate lines functions.
• Rate Model
• Number
• Start Date
• End Date
• Currency
• Rate
• Rate Type

Note: The Rate Type column is available only if the Rate type check box is selected for
the rate model.
The number of criteria columns depends on the number of attributes added in the rate model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1557


<!-- page 1558 -->
Procedure
1. Open a rate model by performing one of the following actions:
◦ Navigate to Project Administration > Rate Model > All.
◦ Navigate to Time Sheets > Rate Model > All.
2. On the Rate Model form, click the View Rate Lines related link.
3. Click the more actions icon (
) and then select the Export to CSV option.
A dialog box might prompt you to save or open the export file. By default, the file has the same
name as the rate model. However, you can specify a different file name. Save the file either as a
CSV file or Microsoft Excel (.XLSX) file.

Note: Depending on your browser setting, the browser might automatically save the file
to your Download folder.
4. Open the downloaded file using your preferred application.
Enter new rate lines or update the existing ones and save the file either as a CSV file or
Microsoft Excel (.XLSX) file.

Result

All rate lines in the rate model are exported to the file. If there is no rate line in the rate model, the
file is an empty template containing only the column names in the first row.

What to do next

Import rate lines from the file into a rate model.

Import rate lines into a rate model
Use the import rate lines function to quickly add multiple rate lines from an export file into a rate
model.

Before you begin
Set the glide.import_set_row.dynamically_add_fields system property to true.
Role required: pps_admin or it_rate_model_admin

About this task

After adding or updating rate lines in a file created using the export function, you can import the
rate lines from the file into the rate model.

Note: Rate lines fail to import in the following circumstances:
• Overlapping effective dates for the same set of criteria values.
• Criteria values with no matching data in the system. For example, a rate line might have
Business Analyst as the Role criteria but that role does not exist in the system.
• Rates in non-functional (non-default) currency but no corresponding budget reference
rates for the required period exist in the system.

Procedure
1. Import rate lines from an import file into the rate model in one of the following ways:
◦ Navigate to Project Administration > Rate Model > Import Rate Line.
◦ Navigate to Time Sheets > Rate Model > Import Rate Line.
◦ Navigate to Time Sheets > Rate Model > All, open a rate model record, and click the Import
Rate Line related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1558


<!-- page 1559 -->
2. Click Choose File to select the import file.
3. Optional: If you are importing from an Excel file containing multiple sheets, enter the sheet
number that contains the data to import in the Sheet number field.

Note: If you are importing from a CSV file, then the data from the last saved CSV file is
considered for import irrespective of the specified sheet number.
4. Optional: If the import file has a header row, enter the row number that has the header
information in the Header row field.
5. Click Submit.
6. Click Run Transform to import the data.
For more information, see Run an import

.

Result
• New rate lines are appended to the rate lines list in the rate model.
• Existing rate lines in the rate model are updated with the latest values.

Time Card Management
The Time Card Management feature enables time card users such as task assignees to report
and track their time for the assigned tasks.
https://player.vimeo.com/video/1107432259?
h=08347ba78f&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Watch this three-minute video to learn about setup of the time tracking feature, entering time and
approvals.
Time Card Management works with the Task table to record time worked on various task types,
such as projects, incidents, problems, and change requests.
With the Time Card Management feature:
• The time card users can record the time worked on a task using time cards and time sheets.
They can submit their time cards and time sheets for approval.
• Time cards and time sheets are routed for approval based on the Non-project time approver
and Project time approver fields in the user time sheet policy. User managers with time card
approver role can also log time and submit the time sheet of their resources
• The time card approvers can perform the following tasks:
◦ Review and approve or reject the time cards in a submitted time sheet.
◦ Recall the approved time sheets or time cards to return them to the users for corrections.
◦ Use dashboards to view reports of time card and time sheet exceptions, and categorize time
reported by the users.
◦ Delegate another time card approver to process time sheets from your resources when you
might not have time or will be unavailable. Note the following points for delegation:
▪ You cannot delegate approval only for an individual resource.
▪ The delegated time card approver cannot further delegate your time sheet approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1559


<!-- page 1560 -->
The project_manager and the resource_manager roles contain the timecard_approver role
in the base system. However, the timecard_approver role can also be used independently
without these roles.
• The time card admin can create and manage time sheet policies, and can also approve or
reject by exception and process the time sheets. Time card admin can also create or edit time
cards of any users if the time cards are in Pending or Rejected state.

Note: The Time Card Management plugin is required to use time cards. Some
of the procedures require the project management feature, which activates
time cards automatically. For more information, see Project Management
(com.snc.financial_planning_pmo).

Domain separation in Time Card Management
Domain separation provides complete data isolation for domain-specific users. Time card
Management is domain separation compliant at the Data only level.

Activate Time Card Management
Administrators can activate the Time Card Management plugin (com.snc.time_card). The plugin
also activates the Performance Analytics - Content Pack - Project Portfolio Suite Dashboards
plugin (com.snc.pa.time_card). However, you need a Performance Analytics license to use the
dashboards.

Before you begin

Role required: admin

About this task

Note: The Time Card Management plugin also gets activated as part of PPM Standard
plugin (com.snc.financial_planning_pmo).

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

Time sheet policies
Time sheet policies contain the policies to which a time sheet, or a time card must adhere.
By default, the Default time sheet policy is available with the system. As a Time card admin, you
can create multiple time sheet policies based on different requirements and workflows in your

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1560


<!-- page 1561 -->
organization. For example, specify a time sheet policy for each department or team and assign
appropriate users to them.
Time sheet policies also provide an ability to specify appropriate approval workflow for project
and non-project tasks.
A time sheet policy can be set as a default policy. The default policy is a global time sheet policy
which applies to all the users who are not assigned to any other time sheet policy. Only one time
sheet policy can be set as a default policy.
Navigate to Time Sheets > Administration > Time Sheet Policies to view the list of timesheet
policies.
Create a time sheet policy
As a time card administrator, you can create a time sheet policy to define the requirements for
time card users to record their time worked. The time card approvers must review and process
time sheets under the applicable time sheet policy.

Before you begin

Role required: timecard_admin

Procedure
1. Navigate to All > Time Sheets > Administration > Time Sheet Policies.
2. Click New.
3. On the form, fill in the fields.
Time Sheet Policy form
Field

Name
Allow blank
time cards

Description

Unique name of the policy.
Option to enable submission of blank time cards for approval.
By default, this option is not selected.

Auto create
time card on
planned task
update

Option to create a time card automatically when you update a planned task,
if the following conditions are true:
◦ You are a time card user
◦ You are assigned to the task through Assigned to or Additional assignee
list field
◦ The task is not in a pending state.
By default, this option is not selected.

Auto fill time
card with time
worked entries

Option to fill in time cards automatically when you enter time in the Time
worked field on the Task form.
If a time card does not exist for the task, one is created when the time
worked is updated if the following conditions are true:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1561


<!-- page 1562 -->
Field

Description

◦ You are a time card user.
◦ You are assigned to the task through the Assigned to or Additional
assignee list field.
By default, this option is not selected.
Auto create
time cards
every week

Option to generate time cards automatically every week through a
scheduled job for all users assigned to the time sheet policy. The time
cards are generated based on the planned task assignments and hardallocated resource plans of the users.
By default, this option is selected.

Update actual
hours and cost
in resource
plan/reports

Option to update actual hours and actual cost of the associated resource
plan based on the hours entered in the approved time card.
When selected, you can associate a resource plan related to the selected
task with the time card in the following ways:
◦ If the task has multiple resource plans, you can select the appropriate
plan.
◦ If the task has one resource plan, that plan is selected by default.
The hours from the time card entry and the hourly resource rate are used to
update the Actual hours and Actual cost values of the associated resource
plan.

Note: If the task has no resource plan, the associated records
update the corresponding project.
By default, this option is not selected.
Allow recall

Option to enable the recall action on a time sheet or time card after it is
approved and processed.
By default, this option is selected.

Recall period
allowed (days)

Number of days within which you can recall a time sheet or time card.
This field appears when the Allow recall option is selected.
The default value is 30.

Week starts on

Start day of the week for the time sheet.
The default value is Sunday.

Note: For more information on filtering Time Sheets using this field,
see KB0852458
Maximum
hours per day

article in Now Support Knowledge Base.

Maximum number of hours that can be entered each day in a time sheet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1562


<!-- page 1563 -->
Field

Description

The default value is 24.
Setting this field to -1 enables the resource to enter:
◦ A value from 0 through 24 for the hours worked each day
◦ A negative value, to correct the previously entered timecards.
Maximum
hours per week Maximum number of hours allowed in a week in a time sheet.
The value for total hours for a week in a time sheet is the sum of hours
entered per day of that week. If set to -1, the total hours per week allowed is
up to 168 (24 x 7) hours.
The default value is 40.
Non-project
time approver

Type of approval required when you submit a time card that has a nonproject task assigned.
◦ Auto: Time card is auto-approved when submitted.
◦ User Manager: Time card is routed to the user manager for approval
when submitted.
The user manager has the time card approver role and is also selected as
the manager of the time card user on the User form.
◦ None: A user with the timecard_admin role can approve time cards when
submitted.

Project time
approver

Type of approval required when you submit a time card that has the project
task.
◦ Auto: Time card is auto-approved when submitted.
◦ Project Manager: Time cards for a project task are routed to the
respective project manager for approval when submitted. The project
manager is picked from the task against which you are submitting time.
◦ User Manager: Time cards are routed to the user manager for approval
when submitted.
◦ Both: Time cards are routed to both the user manager and project
manager for approval when submitted.
A time card remains in the Submitted state when only one of the
approvers approves the time card.
◦ None: A user with the time_card admin role can approve time cards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1563


<!-- page 1564 -->
Field

Description

Note:
◦ The project manager and the user manager can view only those
time cards that are routed to them for approval.
◦ If the user manager or the project manager changes while the time
card is still not approved, the system automatically updates the
approver of the time card.
◦ If the name of the project manager or the user manager is not
populated on the respective form, a user with the time_card admin
role can approve time cards.
Allow multiple
rate types

Option to provide a rate type in a time card to be used during expense line
generation.
When this option is selected, the Rate type field displays on the Time Card
form to enable the selection of a rate type.
For more information, see Rate type in labor rate card.

Default rate
type

Rate type used by default for the time card.
If you select none, the Standard rate type option is used.
This field appears when the Allow multiple rate types check box is
selected.

Default Policy

Option to set the time sheet policy as the default. The default policy is a
global time sheet policy that applies to all users who are not assigned to
any other time sheet policy.
Only one time sheet policy can be set as the default.
A time sheet policy set as the default policy cannot be deleted. You must
first set another policy as the default policy.

4. Click Submit.

What to do next
• Set the time sheet policy as the default policy, if required.
• Assign the time sheet policy to users.
Set a time sheet policy as default policy
As a time card administrator, you can set a time sheet policy as the default policy. The default
policy is a global time sheet policy which applies to all the users who are not assigned to any
other time sheet policy.

Before you begin

Role required: timecard_admin

About this task

Only one time sheet policy can be set as a default policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1564


<!-- page 1565 -->
Procedure
1. Navigate to All > Time Sheets > Administration > Time Sheet Policies.
2. Open the time sheet policy record.
3. Click the Set as default related link.

Note: The related link appears only for a time sheet policy which is not already set as
the default policy.

Result

The Default Policy option on the record form is selected to indicate that the current time sheet
policy is set as the default policy. The Default Policy option on the earlier default time sheet
policy is cleared.
You cannot delete a default time sheet policy. You must first mark another policy as the default
policy to delete the current default policy.
Assign a time sheet policy to a user
As a time card administrator, you can assign a time sheet policy to a user.

Before you begin

Role required: timecard_admin

About this task

You can assign only one time sheet policy to a user.

Procedure
1. Navigate to All > Time Sheets > Administration > Time Sheet Policies.
2. Open the time sheet policy record.
3. In the Users related list, click Edit.
4. On the Edit Members form, move the users to the User List.
5. Click Save.

Result

The selected users appear on the Users related list. The time sheet policy is assigned to the
selected users.

Create a project time category
A time card admin or a project manager can create subcategories to define specific activities
in the projects. The time card users can use these project subcategories to report time for a
specific activity in a project.

Before you begin

Role required: timecard_admin, it_project_manager

Procedure
1. Navigate to All > Time Sheets > Administration > Project Time Categories.
2. Click New.
3. Fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1565


<!-- page 1566 -->
Project time category form fields
Field

Description

Name

Unique name for the project time category.

Description

A description of the type of project activity.

4. Click Submit.

Create a rate type
You can create rate types using the Rate Types feature.

Before you begin

Role required: timecard_admin

About this task

The rate type functionality is used to categorize different types of work. For example, Standard
versus Overtime. It can also instruct down-stream, third-party product about the nature of the
work performed.
For example:
• A user works extra time during the day and must differentiate standard time from overtime.
• A technician may be paid at a higher rate based on different types of work involved in the
execution of a task.
• An appliance repair task may be billed at one rate for the first hour and a different rate for the
remaining hours.
• A service call may last four hours during which specialized equipment is used for one hour.
The company must capture the use of the specialized equipment for purposes ranging from
additional billing to legal compliance or warranty tracking.

Procedure
1. Navigate to All > Time Sheets > Administration > Rate Types.
2. Click New and fill the form.
Field

Description

Name

Provide a suitable name for the rate type.

Description

(Optional) Summarize the purpose of the rate
type.

Active

Deselect the check box to mark the rate type
as inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1566


<!-- page 1567 -->
Field

Description

Note: Inactivating a rate type does not
remove it from records where it exists.
When time card processing encounters
an inactive rate type on the time card,
no matching labor rate card is found.
In this case, the system rate is used for
generating the expense line.

3. Click Submit.

Result
• The rate type is displayed in the Rate Types list.
• The rate type if active is also displayed in the Rate Type field in the Labor Rate Cards form,
Time Worked form, Time Card form, and Time Sheet Portal.

Time Sheet Portal
Time Sheet Portal categorizes and displays all your assigned tasks in a single view for a given
week. The portal enables you to record time spent on tasks on a day-to-day basis and submit the
time sheet in a single action.
Time Sheet Portal works with the Task table to record the time that you spend on various task
types, such as projects, incidents, problems, and change requests. It provides a complete
breakdown of the time you enter for the task, task categories, and days in a week. It enables you
to:
• Generate time cards for assigned projects or project tasks.
• Copy time cards from a previous time sheet.
• Search and create a time card for a task that is not displayed in the assigned tasks list.
• Edit, delete, or add notes to a time card.
• Submit, approve, reject, and recall a time sheet.
• View notifications for the submitted, rejected, and recalled time sheets or time cards.
Time Sheet Portal comprises of the following sections:

Header

The Time Sheet Portal header:
• Displays a date range of the time sheet for the selected week and provides options to navigate
to the time sheet of previous or next week.
• Provides a calendar along with the date range. Clicking a date in the calendar displays the time
sheet for the week of the selected date.
• Provides a link to navigate to the time sheet for the current week when a different time sheet is
being viewed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1567


<!-- page 1568 -->
• Provides an option under My Time Sheet that enables you to open and edit the time sheets of
your resources. The option is available only for a user manager.
• Provides an option to view the time sheet in the Form view using time sheet form view icon
(

).

• Displays the notifications for the submitted, rejected, and recalled time sheets under the show
notifications icon ( ). Each entry displays the number of time cards and their state. Click on a
notification item to open the time sheet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
Tasks

The Tasks tab displays your assigned tasks as cards. Each card provides information about a
task, such as short description, state, last updated date and time, and priority. Tasks are derived
from the following filter conditions:
• All your assigned incidents, problems, or change requests that are active.
• All your assigned incidents, problems, or change requests that are closed in the selected
week.
• All tasks for which you are hard-allocated during the selected week.
• All your assigned projects or project tasks that are active during the selected week. Project or
project tasks are derived from the following conditions:
◦ A project or project task that has started and its actual start date is before the end of the
selected week.
◦ A project or project task has closed and its actual end date is after the week has begun.
◦ When there are no actual dates for a project, planned dates of the project must occur within
the selected week.
• All active stories assigned to you.
• All active scrum tasks assigned to you or closed in the selected week.
• All active test plans assigned to you.
• All active defect and enhancements assigned to you or closed in the selected week.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
Note: If the Customer Service Management plugin (com.sn_customerservice) is activated,
your assigned tasks that are active and closed in the selected week are also derived from
the following tables:
• Case [sn_customerservice_case]
• Work Order [wm_order]
• Work Order Task [wm_task]
On the Tasks tab, you can perform the following operations:
• Type a keyword in the search field to view only cards with details that match the keyword.
• Sort cards in ascending or descending order based on priority, irrespective of the task type.
• View cards based on a category, such as projects, project tasks, incident, problem, change,
defect, enhancement, test plans, and scrum tasks.
• Create time cards for assigned tasks. See Create time cards and log time through Time Sheet
Portal.

Note: Time sheet policies apply when you create or edit a time card.
Group Tasks

The Group Tasks tab displays the tasks assigned to your Assignment group. The group tasks
are displayed as cards in the tab. A card provides information about the task, such as short
description, state, last updated date and time, and priority.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
Other

The Other tab displays cards used to log time for operational work, such as administration,
meeting, and KTLO.

Note: The list of categories in the time card controls the list of cards displayed on the
Other tab. If an administrator marks any of the categories as inactive in the time cards,
those categories are not displayed on the Other tab.

Time Sheet

Starting Zurich release, time cards and time sheet portal supports resource assignments. Users
can select a specific resource assignment while creating time cards and submitting a time card
via time sheet portal. Your system administrator can enable the resource assignment column
in time sheet portal. For more information on how to add resource assignment column to time
sheet, see the Knowledge Base for KB1649389 .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
The Time Sheet section:
• Displays the date range of the time sheet for the selected week.
• Indicates the state of the time sheet being viewed.
• Displays the total number of tasks and hours that you have entered for each day in a week.
When you click a day in the time sheet, the column for that day is highlighted in both the Time
Sheet and Logged Time Cards sections. The first day displayed in the Time Sheet section is
based on the value specified in the Week starts on field in the users Time Sheet Policy. For
example, if the Week starts on field is set to Friday, the Time Sheet section starts with Friday.
• Indicates the total number of hours that you entered in the time sheet. Time Sheet breakdown
also displays a breakdown of user-entered hours in different work categories, such as project
tasks, admin, meeting, follow on tasks, or change requests.
• Provides options that enable you to submit a time sheet and copy time cards from a previous
time sheet. For an approver, options to approve or reject a submitted time sheet and recall a
processed time sheet are available.

Logged Time Cards

Each row in the Logged Time Cards section represents a time card entry for a given week. It has
details such as icon for state of the time card, short description of the task, project time category,
rate type, resource plan, and logged time. Each row of the time card contains options that enable
you to edit, delete, or add notes to a time card. For more information, see Create time cards and
log time through Time Sheet Portal.

Note:
• The Rate type column is visible only when the Allow multiple rate types option in the
time sheet policy of the user is selected.
• The Resource plan column is visible only when the Update actual hours and cost in
resource plan/reports option in the time sheet policy of the user is selected.
The icon beside the short description of a row indicates a time card state. The merge icon ( ) in
a time card row indicates that a duplicate time card for the same task exists in the time sheet and
provides option to merge them into a single time card.
When there are no time cards, the Logged Time Cards section displays the Generate Time
Cards and Copy from previous time sheet buttons to create time cards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


<!-- page 1573 -->
Note: Time Sheet Portal is not designed for use on mobile devices, and may not appear
as shown in this document.
Add columns to the logged time card list
Add columns in the logged time card list on the Time Sheet Portal to show additional information
that you might require to log your time cards.

Before you begin

Role required: admin or sp_admin

About this task
Procedure
1. Navigate to All > Service Portal > Widget Instances.
2. Search the Widget column for Time Card Portal Main Container and open the record.
3. On the Instance form, update the code by providing values for the following column
configurations in the Additional options, JSON format field.
Instance form
Column configuration

Description

name

Name of the column in a table.

label

Column name to display in the logged time
card list on the Time Sheet Portal.
The configuration is mandatory if you are
adding a column of a table other than the
Time Card [time_card] table.

width_in_percent

Column width in percentage in the logged
time card list.

Note: To add more than one column, separate each column configuration with a
comma. The columns are added in the same order as you add them in the code.
4. Click Update.

Example:

The following sample code adds the category column of the Time Card [time_card] table with the
column name Category and width of 10% in the logged time card list on the Time Sheet Portal.
{
"tm_grid_options": {
"displayValue": "Time card grid options",
"value": {
"header_fields": [
{name:"category",label:'Category', width_in_percent: 10}
]
}
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
Create time cards and log time through Time Sheet Portal
After you create time cards in Time Sheet Portal, log time in the time cards.

Before you begin
• Time sheet portal supports resource assignments created using Project Workspace. Once
the time cards are approved, Project Managers can view the planned vs actual hours for an
assignment in Project Workspace and Resource Management Workspace heatmap view.
• Role required: timecard_user

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Create time cards in the Logged Time Cards section using any of the following options.
Option

Steps

a. Click

choice list next to Submit.

b. Select Generate Time Cards. The option also appears in
the Logged Time Cards section when a user has no time
cards for the selected week.
Generate time cards for as­
signed projects or project
tasks

Note:
▪ If a time card exists for a project task during the se­
lected week, a duplicate time card is not created.
▪ Time cards are generated only for those project
tasks that are in progress or planned for the select­
ed week.
▪ The Allow time card reporting on field on the
project form determines the level at which the time
cards are created for project tasks.
a. Click

choice list next to Submit.

b. Select Copy from previous Time Sheet. The option also ap­
pears in the Logged Time Cards section when a user has
no time cards for the selected week.

Note:
Copy time cards from a pre­
vious time sheet

▪ Time cards for all the project tasks that are in
progress or planned in the current week are copied
from the selected time sheet. If a time card for a
project task exists, a duplicate time card is not creat­
ed while copying.
▪ Time cards for all the non-task categories, such as
meetings and trainings, are copied from the select­
ed time sheet. If a time card for a non-task category
exists, a duplicate time card is created while copy­
ing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
Option

Steps

a. On the Tasks, Group Tasks, or Other tab, point to a task
(card) that you want to create a time card for.

Create a time card from the
Tasks, Group Tasks, or Oth­ b. Click Add to Time Sheet.
er tab
Note: Add to Time Sheet creates a time card with the
default rate type of the user, if it exists.
Create multiple time cards
from the Tasks tab

Create a time card for unas­
signed task

a. On the Tasks tab, select multiple tasks that you want to cre­
ate time cards for.
b. Click Add selected to Time Sheet.
a. In the Logged Time Cards section, click Add unassigned
tasks to Time Sheet.
b. Enter the task number or short description of the task you
worked on during the selected week.

Based on the Allow time card reporting on field settings in the Preferences tab of a project,
the Add to Time Sheet and Add selected to Time Sheet options are displayed in Time Sheet
Portal.
If a duplicate time card exists for a time card, you can merge both time cards to become a
single one, except for time cards in the processed, approved, or recalled state. A duplicate
time card is identified by comparing the values in the Short description, State, Task,
Category, Rate Type, Resource Plan, or Project Time Category fields in the time card.
3. In the Logged Time Cards section, log time in a time card.
Option

Steps

Through inline editing

a. Select a row and press Enter. You can also
double-click a row.
b. Edit the values as required.
a. Point to a row and click the more actions
icon
.

Through time card form

b. To open the Time Card form, click Open
Form View.
c. Enter hours on the time card form.
d. Click Save.

Add notes to time cards

a. Point to a row and click the more actions
icon.
b. To add a note, click Add Note.

Submit time sheet through Time Sheet Portal
Once you update the time sheet with time worked for a given week, submit it for approval.

Before you begin

Role required: timecard_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
About this task

When you submit a time sheet, time cards are verified against the assigned time sheet policy.
If there is no time sheet policy assigned, time cards are verified against the default time sheet
policy. Business rules prevent you from submitting a time sheet in case any violation is found.

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Click Submit.
The time sheet moves to the Submitted state.
Approve or reject a time sheet through Time Sheet Portal
Review, approve, or reject a time sheet submitted by a time card user that you manage.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

A user manager can review, approve, or reject the time sheets or time cards submitted by the
time card users. The user manager has either of the required roles and is the one listed as the
manager of the time card users.
During out-of-office time, the user manager can delegate another user with the required roles as
the time sheet approver. For the specified time period, the delegated user also receives all the
time sheets submitted by the time card users to process.

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Click the My Time Sheet list and select a time card user under My Resources.
The My Time Sheet list is available only for a user manager.
3. Select the appropriate time sheet period by navigating through the calendar.
4. Click Approve or Reject.
Action

Result

Approve

◦ Time sheets that have time cards with mul­
tiple approvers as defined by the time
sheet policy, remain in the Submitted state.
When all the approvers approve the respec­
tive time cards, then the time sheet moves
to the Approved state.
◦ Time sheets that have time cards with a sin­
gle approver move from the Submitted to
the Approved state.
◦ A Time Card Daily record is created for
each time card to record the time logged.

Reject

◦ Time cards in the Submitted state are re­
jected automatically. Time cards in the Ap­
proved and Processed state remain unaf­
fected.
◦ A notification about the rejected time sheet
is sent to the associated time card user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
Action

Result

The user can view the notification from the
show notifications icon (

).

The user can then modify the rejected time
sheet and submit it again for approval.
Log time and submit time sheets of your resources
As a user manager, you can log time and submit the time sheet of your resources.

Before you begin

A user manager must have time card approver role to create and edit time cards, and submit the
time sheet of other time card users. The user manager has either of the required roles and is the
one listed as the manager of the time card users.
Role required: timecard_approver

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Click My Time Sheet choice list and select the user for whom you want to approve or reject
time sheet for under My Resources.
The My Resources section lists the time card users reporting to you.

Note: The choice list with My Time Sheet is available only for a user manager.
3. Create time cards and log time through Time Sheet Portal as required.
4. Click Submit.

Result
• The time sheet of the selected user moves to the Submitted state. The time sheet policy
assigned to the time card user is used for validation when you submit the time sheet.
• All the time cards associated with the time sheet are also submitted automatically and move to
the Submitted state.
• The Approve and Reject buttons appear in the Time Sheet section. The two buttons appear
only for a user manager.

What to do next

Once you have submitted the time sheet for your resource, you can click Approve or Reject to
approve or reject it. Only the time cards that are routed to the user manager, are approved or
rejected. The routing for approval happens based on the Non-project time approver and Project
time approver fields in the time sheet policy of the time card user.

Time Sheets
A time sheet groups all the time cards for a user for the given week.
With time sheets:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
• Time card users can submit all the time for their work week in a single step by using a time
sheet.
• Time card approvers can approve all the time cards in a time sheet for a user in a single step
by approving the time sheet. They do not need to approve multiple time cards for a given user
individually.
• Track the activities of a time sheet, such as who submitted or approved a time sheet, in the
Activities section on the Time Sheet form. This time sheet activity audit is useful for tracking
when you delegate responsibility for your time card processing to another user. To track
the activities, enable the State field of the Time Card [time_card] table for auditing the time
card activities, if it is not already enabled. For more information, see Include a table field in
auditing .
A time sheet can have any of the following states:
Pending
A time sheet has been created, but the user is still making changes before
submitting it.
Submitted
A time sheet has been submitted for approval. The approver can approve or reject it.
Approved
A time sheet has been approved. If the time sheet isn't automatically updated to
Processed, this means there was no task associated with the time sheet.
Processed
A time sheet has been processed by the system. After a time sheet is approved,
the after business rule Create expense from approved time card is triggered. This
business rule creates an expense line for the associated task, and then updates the
state to Processed.
Rejected
A time sheet has been sent back to the submitter for changes.
Recalled
A time sheet has been recalled by the submitter for modification.
Create a time sheet
As a time card user, you can create a time sheet to group all your time cards for the given week
and submit them in a single step.

Before you begin

Role required: timecard_user

About this task

A user can create only one time sheet per week.
Note: When a user creates a time card for a week, a time sheet is also automatically
created for that week.

Procedure
1. Create the time sheet with one of these options.
Option

Steps

From the time sheet menu

Navigate to Time Sheets > My Time Sheets >
Current (This Week).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
Option

Steps

The time sheet form for the current week
opens.

From the time sheet list

a. Navigate to Time Sheets > My Time Sheets
> All > New.
b. Click New.

2. On the form, fill in the fields.
Time Sheet form
Field

Description

Week
starts on

Starting date of the week for which the time sheet is created.

Note: The time sheet policy Week starts on controls the start day of the
week.

Total
Hours

Number of hours the user has worked in that week. This field is automatically
populated from the hours recorded for the associated time cards.

User

Name of the user for which time sheet is created.

State

Current state of the time sheet. All new time sheets begin as Pending.
Default states: Pending, Submitted, Approved, Processed, and Rejected,
Recalled.

Comments Comments related to the time sheet.
Notes

Any additional information.

3. Click Submit.

What to do next

Add time cards to the time sheet. You can use the related links and related list to add time cards.
You can also add time cards using the Time Sheet Portal.
Time sheet form related links
Field

Description

Generate Time Cards Link to generate time cards for the assigned project tasks.
Copy from previous
time sheet

Link to open the Copy Time Sheet window for you to copy the time
cards from previous time sheets.

Time Sheet Portal

Link to open the Time Sheet Portal to view and manage the time sheet.

Time sheet form related lists
Field

Description

Time Cards

List of the time cards that are part of the time
sheet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
Time sheet form related lists (continued)
Field

Description

To create a time card, click New.
Submit a time sheet
Once the time sheet is updated with time worked, you can submit the time sheet for the week to
submit all the time cards for the week together.

Before you begin

Role required: timecard_user

About this task

When a user submits a time sheet, the time sheet policy assigned to the user is used for
validation. If there is no time sheet policy assigned to the user, the default time sheet policy is
used. Business rules prevent a user from submitting a time sheet in case any violation is found.

Note: You can also perform this task from the Time Sheet Portal.
Procedure
1. Navigate to the time sheet using one of the following options:
◦ To submit a time sheet in the Pending state, navigate toTime Sheets > My Time Sheets >
Pending.
◦ To submit the time sheet for the current week, navigate to Time Sheets > My Time Sheets >
Current Time Sheet.
◦ To submit a time sheet in the Rejected state, Time Sheets > My Time Sheets > Rejected. You
can make required changes as suggested in the rejection comments to resubmit a rejected
time sheet.
2. To submit in the Time Sheets list, open the time sheet.
3. Add comments, if required.
4. Click Submit Time Sheet.

Result
• The time sheet moves to the Submitted state.
• All the time cards associated with the time sheet are also submitted automatically and move to
the Submitted state.
Approve or reject a time sheet
View, approve, or reject time sheet or time cards for your user, for the given week, in a single step.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

A user manager is the one who has either of the required roles and is selected in the Manager
field on User form of the time card user.
During out-of-office time, the user manager can Delegate time sheet approvals to another user
with the required roles as the time sheet approver. For the specified time period, the delegated
user also receives all the time sheets submitted by the time card users to process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


<!-- page 1581 -->
Procedure
1. Navigate to All > Time Sheets > Time Sheets > Pending Approval.
2. In the Time Sheets list, open the time sheet to approve or reject.
3. If required, add comments.
4. Click Approve or Reject.

Result
• The time sheet moves to the Approved or Rejected state.

Note: If a time sheet is rejected, it gets listed in the notifications for the rejected time
sheets under the show notifications icon (

) on Time Sheet Portal.

• All the time cards associated with the time sheet are also approved or rejected automatically.
• If any time cards in the time sheet are pending approval by one of the approvers as defined by
the time sheet policy, the time sheet remains in the Submitted state.

Note:
• You can also approve or reject the time cards within a time sheet selectively by selecting
one or more time cards and approving or rejecting them.
• If a time sheet is rejected, all the associated time cards in the Submitted state are also
rejected automatically. The time cards in the Approved and Processed state for the time
sheet remain unaffected.
• If all the time cards in a time sheet are approved, the time sheet automatically moves to
the Approved state.
• If a time card in a time sheet is in the Rejected state, then irrespective of the state of other
time cards in the time sheet, the time sheet also moves to the Rejected state.
Recall a processed time sheet
You can recall an incorrect time sheet in the Approved or Processed state to return it to the
submitter. The submitter can then make the necessary changes and resubmit the time sheet.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

The recall option is available only if the Allow recall option is selected on the associated time
sheet policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1581


<!-- page 1582 -->
Procedure
1. Navigate to the approved or processed time sheet you want to recall using one of the following
options.
Option

Description

a. Navigate to Time Sheets > Time Sheet Por­
tal.

From the Time Sheet Portal

b. Click the My Time Sheet list and select a
user under My Resources.
c. Navigate through the Calendar widget to se­
lect the time sheet.
The time sheet must be within the recall pe­
riod specified in the time sheet policy.
a. Navigate to Time Sheets > Time Sheets >
All.

From the Time Sheet form
b. Open the time sheet.
The time sheet must be within the recall pe­
riod.
2. Click Recall.

Result
• Changes the state of the time sheet and associated time cards to Recalled.
• Reverts the actual effort and resource hours in a project or demand created when time cards
that have task types were approved.
• Creates negative expense lines to zero out the corresponding expense lines created when the
time sheet was approved.
• Returns the time sheet to its submitter for modifications.
Delegate time sheet approvals to another user
You can delegate the responsibilities to process the time sheets of your resources to another
user when you might not have time or will be unavailable.

Before you begin

Role required: timecard_admin or timecard_approver

About this task

The delegate must have the timecard_approver role.

Procedure
1. Navigate to All > Time Sheets > Delegate.
2. In the Delegates list, click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1582


<!-- page 1583 -->
3. On the form, fill in the fields.
Delegate form
Field

Description

User

User from whom the approvals and tasks are
delegated to another user.

Delegate

User to whom the approvals and tasks are
delegated.

Starts

Start date of the delegation period.

Ends

End date of the delegation period.

Approvals

Option that enables time card approval
delegation.

Note: The other options on the form (Assignments, CC notifications, and Meeting
invitations) are not applicable for time sheet approval delegation.
4. Click Submit.

Result

The approval delegation has the following effects during the specified period:
• Both you and the delegate receive notifications regarding approval activity.
• On the Time Sheet Portal, the delegate can see your resources under Delegates in the My
Time Sheet list.
• Delegates can perform all the functions that you can do for your resources in the Time Sheet
Portal: Create and submit their time sheets, approve or reject the submitted time sheets, and
recall the processed time sheets.

Time cards
Time cards are used to record the time worked on a task by a task assignee.
The time card management feature works with the Task table to record time worked on Projects,
Incidents, Problems, and Change Requests.
Task assignees can record time worked in the Time worked field on a task record or enter hours
directly into their time card. Some tables support automatic time card creation based on start
and end date fields.
Track the activities of a time card, such as who submitted or approved a time card, in the
Activities section on the Time Card form. This time card activity audit is useful for tracking when
you delegate responsibility for your time sheet processing to another user. To track the activities,
enable the State field of the Time Card [time_card] table for auditing the time card activities, if it
isn't already enabled. For more information, see Include a table field in auditing .
You can associate time cards for the project tasks and other task categories, such as meeting
and training, with relevant resource plans.
When you approve a time card, the time logged in the time card is saved day-wise in the Time
Card Daily [time_card_daily] table. Using daily time logged data, you can generate time card
reports by days for any period irrespective of the time sheet period to which the time cards
belong. For example, you can create a monthly time card report that includes time cards from the
first day to the last day of the month.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1583


<!-- page 1584 -->
Time cards also have an optional approval mechanism for project managers to approve the time
cards. Administrators and time card approvers can see all the time cards for the week. All users
who are in a role that is responsible for working on tasks also can access their personal time
cards. A time card can have any of the following states:
Time Card states
State

Description

Pending

A Time card that isn’t submitted for approval.

Submitted

A time card submitted for approvals.

Approved

An approved time card.

Processed

An approved time card with an expense line for the associated
task.

Rejected

A rejected time card.

Recalled

An approved time card recalled for any required adjustments.

Create a time card
You can create time cards to log time against the work you have done.

Before you begin

Role required: timecard_user

About this task

Starting Zurich release, users can select a resource assignment to associate it with time cards to
calculate the actual efforts and tag them to the respective projects.
The Allow time card reporting on field on the project form determines the level at which the time
cards for the project tasks can be created.

Note: Time Cards created from Project form do not populate Resource plans automatically
to avoid random allocations. For more information, see KB0814884
Support Knowledge Base.

article in the Now

Time cards can be created automatically or manually.
• Automatic: Use the following options to automatically generate the time cards:
◦ By updating task:
Auto create time card on task update
Configure time cards to be created when a user updates a task record. The
Auto create time card on task update setting in the assigned time sheet policy
controls this behavior and is set to false by default.
Auto fill time card with time worked entries
Configure time cards to be created when a user records Time worked. A time
card is created if a time card does not exist for the task. The time sheet policy
Auto fill time card with time worked entries controls this behavior and is set to
false by default.
In Project Task, Incident, Problem, and Change records, the Time worked field
does not appear by default and must be configured on the form.
◦ By scheduled job: Configure time cards for the project tasks to be generated automatically
for users through a scheduled job. Only the admin can configure a scheduled job.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1584


<!-- page 1585 -->
Note: Time cards cannot be created automatically when you use the mobile interface.
Use the desktop interface if you want to use the automatic time card feature.
• Manual: Create a time card for each task and enter the time manually.

Procedure
1. Create the time card using one of the following options.
Option

From the Time Sheet Portal

From a Time sheet related list

Steps

a. Navigate to Time Sheets > Time Sheet Por­
tal.
b. Open the week on the Calendar for which
you want to create the time card.
a. Open the time sheet that you want to cre­
ate the time card for.
b. In the Time Cards related list, click New.
a. Open the time sheet for which you want to
create the time card.
b. Click any of the following related links:
▪ Generate Time Cards: This option gen­
erates the time cards for all project tasks
assigned to the user for the time sheet
week. With this option, time cards are gen­
erated only for the project tasks that are
in progress or planned in that week.

From a Time sheet related link

▪ Copy from previous time sheet: This op­
tion copies all the time cards (for project
and non-project tasks) from a selected
time sheet.

Note:
When using the related links for creat­
ing time cards:
▪ If a time card exists for a project
task for the time card week, a dupli­
cate time card is not created.
▪ Time cards are generated only
for those project tasks that are in
progress or planned in that week.
2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1585


<!-- page 1586 -->
Time card form
Field

Description

Week
starts on

Starting date of the week of the time sheet.

Note: The time sheet policy Week starts on controls the start day of the
week. A message is displayed when you try to associate a resource plan
with a time card when the week on which the time card starts is outside
the resource plan dates.

State

Current state of the time card. All new time cards begin in the Pending state.
Different states of a time card are Pending, Submitted, Approved, Processed,
Rejected, and Recalled.

Category

Type of task for which the time card is created.

Task

Task that is associated to the time card.

Project
time
category

Type of activity in the project that time is reported for.

User

Name of the user that the time card is created for.

This field appears when you select Project/Project Task or Task work in the
Category field.

Resource
Select a resource assignment assigned to the user. When the time card is
assignment approved, the actual hours are used to view the planned vs actual hours in the
heatmap view in Project Workspace and Resource Management Workspace.
A resource assignment is associated with the time card in the following ways:
◦ If the user has multiple resource assignments, you can select the appropriate
assignment.
◦ If the user has only one resource assignment, that plan is selected by default.

3. Click Submit.

Result
• The time card is created for the selected time card period.
• If the time sheet for the week does not exist, a time sheet is created for the time card week.

What to do next

After the time card is created, the hours for that task can be incremented automatically from the
Time worked field in the task record. The time sheet policy Auto fill time card with time worked
entries controls the way the time is updated in time cards. The policy is set to false by default. If
automatic updates for time worked are not configured, the user must manually update the time
card.
Related topics
Map a time card category with operational work types

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1586


<!-- page 1587 -->
Copy time cards from a previous time sheet
Another option for creating time cards is to copy them from an existing timesheet, which copies
all the time cards (for project as well as non-project tasks) from a selected time sheet.

Before you begin

Role required: timecard_user

About this task

You can also perform this task from the Time Sheet Portal.

Procedure
1. Open the time sheet record that you want to create the time cards for.
2. Click the Copy from previous time sheet related link.
3. In the Select Time Sheet field, select a previous time sheet that you want to copy the time
cards from.
4. Optional: You can copy the time logged for the tasks in the previous time sheet, select the
Copy time logged check box.
5. Click OK.

Result
Time cards for project tasks
Time cards for all the project tasks that are in progress or planned in the current
week are copied from the selected time sheet. If a time card for a project task exists,
a duplicate time card is not created during copying.
Time cards for non-task category
Time cards for all non-task category such as meetings and trainings are copied from
the selected time sheet. If a time card for a non-task category exists, a duplicate
time card is created during copying.

Note:
• If the previous time sheet has rate types and the time sheet policy of the user allows rate
types, then rate types are also copied into the current time sheet.
• If the previous time sheet has rate types, but the time sheet policy of the user no longer
allows rate types, then rate types are not copied to the current time sheet.
• If the previous time sheet has a rate type that is inactive, that rate type is not copied. If
necessary, the user can enter a different rate type before saving the individual time cards.
Auto-generate time cards
As an admin, you can configure a scheduled job to generate time cards automatically for project
tasks assigned to time card users.

Before you begin

Role required: admin

About this task

In addition to the manual option Generate Time Cards, a scheduled job can be run to
automatically generate the time cards for project tasks. A job can be scheduled to run every
week, for example, on every Sunday to generate time sheets for all users for the next week.
You can configure when to run the scheduled job based on the business process of the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1587


<!-- page 1588 -->
organization. By default, the scheduled job is turned off. For more information, see Schedule a
script execution
.

Note: The scheduled job auto-generates time cards only for those users who have the

Auto create time cards every week option set to true in their assigned time sheet policy.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. In the Scheduled Jobs list, select Auto Generate Time Cards.
3. Configure the following parameters in the script as per the business requirements:
◦ run for (CURRENT_WEEK, NEXT_WEEK, LAST_WEEK)
◦ Group Name (includeGroups, excludeGroups)

Note:
◦ If a time card exists for a project task for the time card week, a duplicate time card is not
created.
◦ Time cards are generated only for those project tasks that are in progress or planned in
that week.
◦ The Allow time card reporting on field on the project form determines the level that the
time cards for the project tasks are created at.

Example:

The following example script is executed when a scheduled job is run to generate time cards for
the Current week for the Database and Hardware groups:
// Clone this schedule job to run separately for different
groups at different times
// One of the following values
// TimeCardConstants.CURRENT_WEEK
// TimeCardConstants.NEXT_WEEK
// TimeCardConstants.LAST_WEEK
var runFor = TimeCardConstants.CURRENT_WEEK;
// Comma separated group sys ids or group names.
TimeSheet/TimeCards will be auto generated for time card users
in the given groups.
var includeGroups = [Database,Hardware];
var excludeGroups = [];
var generator = new TimeCardGenerator();
generator.generateFromConfig(runFor, includeGroups,
excludeGroups);
Submit a time card
As a time card user, once a time card for the week is updated with the time worked, you can
submit the time card individually.

Before you begin
• A time card in the Pending or Rejected state can be submitted.
• Role required: timecard_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1588


<!-- page 1589 -->
About this task

When a user submits a time card, the time sheet policy assigned to the user is used for
validation. If there’s no time sheet policy assigned to the user, the default time sheet policy is
used. Business rules help prevent a user from submitting a time card in case any violation is
found.

Procedure
1. Navigate to All > Time Sheets > My Time Sheets > All.
2. Select the time sheet that you want to submit the time card for.
3. In the Time Card related list, open the time card to submit.
4. Select Submit Time Card.

Note: Submit multiple time cards by selecting Submit Time Card from the actions on
selected rows menu.

Result
• The time card moves to the Submitted state.
• The time card is submitted to an approver based on the Project time approver and Nonproject time approver field values in the assigned time sheet policy.

Note: If the project or user manager is changed after submitting the time card, the time
card is automatically redirected to the new project or user manager for approval.
Approve or reject a time card
As a time card approver, you can view and approve or reject a submitted time card.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

You can view only those time cards that are submitted to you for approval or you have been
delegated as the time card approver by one of the other user managers. The time sheet policy
assigned to the user governs the approval process.

Procedure
1. Navigate to All > Time Sheets > Time Cards > Pending Approval.
2. Select the time card to approve or reject.
3. Click Approve or Reject.

Result
• The time card moves to the Approved or Rejected state.
• Expense line is created for an approved time card.
• For an approved time card, a Time Card Daily record is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1589


<!-- page 1590 -->
Note:
• A user manager can also approve the time cards within a time sheet by selecting one
or more time cards and approving them. When all the time cards in a time sheet are
approved, the time sheet automatically moves to the Approved state.
A user manager is one who is selected in the Manager field on User form of the time card
user.
• If a time card is in the Rejected state, the associated time sheet also moves to the
Rejected state irrespective of the state of other time cards in the time sheet.

Note: If a time sheet is rejected, it gets listed in the notifications for the rejected
time sheets under notifications icon

on Time Sheet Portal.

• If Project time approver is set to Both in the assigned time sheet policy, the time card is
in the Submitted state only if both approvers approve it. If one of the approver rejects, the
time card state is set to Rejected and the Approved by field is cleared, requiring approval
of both approvers on resubmission.
Recall a processed time card
You can recall an incorrect time card in the Approved or Processed state to return it to the
submitter. The submitter can then make the necessary changes and resubmit the time card.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

The recall option is available only if the Allow recall option is selected on the associated time
sheet policy.

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Click the My Time Sheet list and select a user under My Resources.
3. Navigate through the Calendar widget to select the time sheet.
The time sheet must be within the recall period specified in the time sheet policy.
4. To recall a time card, click the more actions icon (
) and select Recall.
If the cost type for a cost plan is updated before recalling a time card, the expense line of the
recalled time card will have the new expense type. For example:
a. A Time card is processed with Cost Plan=Labor Opex, an expense line is generated for $500
with Expense type=Labor Opex.
b. If the cost type of cost plan is updated to Cost type=Labor Capex.
c. If a time card is recalled, the recalled expense linewill have Expense type=Labor Capex.

Result
• Changes the state of the time card to Recalled. The state of the associated time sheet also
changes to Recalled until all time cards in the time sheet are approved or processed again.
• Reverts the actual effort and resource hours in a project or demand created when the time
card for a task type was approved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1590


<!-- page 1591 -->
• Creates negative expense lines to zero out the corresponding expense lines created when the
time card was approved.
• Returns the associated time sheet to its submitter for modifications.
Map a time card category with operational work types
Map custom time card categories with operational work types so you can select only the
operational resource plans that are associated with the user for a specific time card period and
category while posting time.

Before you begin

Role required: pps_admin

About this task

By default, all base system time card categories are mapped with the base system operational
work types. If mapping is not done for custom categories, the Resource Plan field displays all the
operational resource plans associated with the user for that time period when you create a time
card.
During time card creation, after you select a time card category and task or during time sheet
submission for other category time cards, operational resource plans are populated for that
category and task as described in the following table.
Operational resource plans for tasks and categories
Category

• Admin
• External labor
• Meeting
• Phone call

Task

Task, project, demand, project
Displays the resource plans
task, or demand task, or no
associated with the task,
value is selected in the Task
project, demand, project task,
field.
or demand task when a task is
selected.

• Training

If no resource plans are
associated with the selected
task, or no task is selected,
then the mapped operational
resource plan for that
operational work type for that
category is displayed.

• Out of office
• Appointment
• Time off
• KTLO
Custom

Resource Plan

Any of the task/project/
demand/ project task/
demand task

Displays the resource plans
associated with the task,
project, demand, project task,
or demand task when a task is
selected.
If no resource plans are
associated with the selected
task, or no task is selected,
then the mapped operational
resource plan for that custom
operational work type for that
category is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1591


<!-- page 1592 -->
Operational resource plans for tasks and categories (continued)
Category

Task

Resource Plan

If mapping is not done, then
all the operational resource
plans are displayed.
Other category (custom and
N/A
OOTB) from Time Sheet Portal

Displays the mapped
operational resource plans.
If mapping is not done, then
all the operational resource
plans are displayed.

Procedure
1. Navigate to All > Project Administration > Time Card Category Mapping.
2. Click New.
3. From the Time card category menu, select the required time card category.
4. From the Operational work type menu, select the operational work type you want to map to
the time card category you selected in the previous step.
5. Click Submit.

Record time worked
The time card retrieves time accrued on a project or spent working on any record in the Task
table from the Time worked field.
This field does not appear by default on the Project Task, Incident, Problem, and Change forms
and must be added by personalizing the form. Time recorded in this field is used to populate an
existing time card or to create a new time card if one does not exist. A time sheet policy controls
this behavior.

Note:
When time worked is updated, a time card is created only if:
• the user is a time card user, AND
• the user is assigned to the task through Assigned to or Additional assignee list field.
The Time worked field has a counter that acts like a stopwatch for the duration of the time spent
in the record. A button in the field can stop and start the counter. By default, the Time worked
counter is enabled and begins recording the elapsed time when the record is opened. Stop the
counter with the stop button and restart it with the play button.
If you are creating time cards from time worked entries, you can ask your admin to add the Time
Worked related list to display the time worked records on the time card form. You will also notice
an informational message on the time card to let you know that changes to time worked records
overrides values in the time card. This is displayed using a Create a formatter and add it to a
form , which can be added or removed by configuring the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
Manage costs
When the cost management feature is enabled, time cards can be used to manage the cost of
labor in the Cost Management application.
When a time card for a project task is approved, an expense line is generated for the
corresponding labor cost associated with the project. If the project has a Rate Models
associated, then the hourly rate for calculating labor cost for the expense lines is derived
from the rate model. If no rate model is associated to the project, the rate listed in
the Labor Rate Card is considered. If no Labor Rate Cards is applicable, the property
com.snc.time_card.default_rate defines the default hourly rate.

Roles
The timecard_admin role enables users to approve, modify, and delete the time cards of other
users.
Related topics
Activate Cost Management

Analytics Project manager
The Analytics Project manager provides the project managers with quick reports of time card
exceptions, and category wise time reported for their projects. The dashboard displays time card
reports only for the projects managed by a project manager.

Important: Starting with Xanadu release, Project Manager Dashboard is renamed to
Analytics Project manager for new customers.

The dashboard can be activated using the Performance Analytics - Content Pack - Project
Portfolio Suite Dashboards plugin (com.snc.pps_dashboards). You require Performance Analytics
license to use this dashboard.
The reports in the dashboard are filtered based on Project, and Date selected.
The Analytics Project manager consists of these components:

Project time card exception count
It displays the total count of entries in Project time card exceptions report.
Project time card exception count

Project time card exceptions report
The Project time card exceptions report lists the users who did not submit their time cards, and
the time cards which are not yet approved for the selected project and time range. The exception
report is generated for the users who are assigned to a task in progress, or hard allocated to the
project/task in that time range. The report displays the following data:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1593


<!-- page 1594 -->
• User: The time card user assigned to the selected project, or hard allocated to the resource
plan associated with the project. If there are more than one time cards for a user in a given
date range which are not submitted or require approval, then multiple entries are listed for the
user.
• Week starts on: Starting date of the time card week in the selected time range.
• State: State of the time card. Time card entries with state as Not Submitted are also listed if a
time card is not created for the week.
The report is generated from the project_timecard_exception table. It requires the schedule job
Project Time Card Exceptions to be running to get the up-to-date information.
Project time card exceptions report

Total approved hours for project(s)
It displays the total approved hours in all project categories displayed in Time by Project Time
Category report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
Total approved hours for projects

Time by Project Time Category report
The bar chart report displays the time approved against each project category for the users
allocated to the selected project.
Time by Project Time Category report

Use the Analytics Project manager
The Analytics Project manager shows the time card reports for the selected projects.

About this task

Important: Starting with Xanadu release, Project Manager Dashboard is renamed to
Analytics Project manager for new customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
Before you begin

Role required: it_project_manager, timecard_admin

Procedure
1. Navigate to All > Time Sheets > Analytics Project manager.
2. Select a project and date range from the Project and Date choice lists.
3. Review the displayed reports and take necessary actions, if required.
4. Click the more actions icon (

) to duplicate, share or export the selected report, if required.

Analytics User manager
The Analytics user manager provides the user managers with reports of time sheet exceptions,
and category wise time reported by the users.

Important: Starting with Xanadu release, User Manager Dashboard is renamed to
Analytics User manager for new customers.

The dashboard can be activated using the Performance Analytics - Content Pack - Project
Portfolio Suite Dashboards plugin (com.snc.pps_dashboards). You require Performance Analytics
license to use this dashboard.
The dashboard displays time sheet reports only for those time card users who have the Manager
field on User form
set to the current user.
The reports in the dashboard are filtered based on Date range, and User selected.
The Analytics user manager consists of these components:

Time sheet exception count
It displays the total count of entries in Time sheet exceptions report.
Time sheet exception count

Time sheet exceptions report
The Time sheet exceptions report lists the users who did not submit/create their time sheets,
and the time sheets which are not yet approved for the selected user, and time range. The report
displays the following data:
• User: The time card user whose manager in User profile is the current user. If there are more
than one time sheets for a user in a given date range which are not submitted or require
approval, then multiple entries are listed for the user.
• Week starts on: Starting date of the time sheet week in the selected time range.
• State: State of the time card. Time sheet entries with state as Not Submitted are also listed if a
time sheet is not created for the week.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
The report is generated from the time_sheet_exception table. It requires the schedule job Time
Sheet Exceptions to be running to get the up-to date information.
Time sheet exceptions report

Total approved hours
It displays the total approved hours in all categories displayed in Time by category report.
Total approved hours

Time by category report
The bar chart report displays the time approved against each category for the selected users
whose manager in User profile is the current user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
Time by category report

Use the Analytics User manager
The Analytics User manager shows the time sheet reports for the users.

Before you begin

Role required: resource_manager, timecard_admin

About this task

Important: Starting with Xanadu release, User Manager Dashboard is renamed to
Analytics User manager for new customers.

The dashboard displays time sheet reports only for those time card users who have the Manager
field on User form
set to you.

Procedure
1. Navigate to All > Time Sheets > Analytics User manager.
2. Select a date range and user from the Date and User choice lists.
3. Review the displayed reports and take necessary actions, if required.

Performance Analytics dashboard for Time Card Management
This Platform Analytics Solution contains preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.
The Time Card Management and Time Sheet dashboards are included in the Project Portfolio
Suite with Financials Dashboards. For more information, see Project Portfolio Management
Platform Analytics Solutions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
Domain separation and Time Card
Domain separation is supported in Time Card. Domain separation enables you to separate data,
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
For more information about using domain separation with Time
Card, see https://community.servicenow.com/community?
id=community_article&sys_id=616d706edbb318d066f1d9d9689619c1

.

.

Related topics
Domain separation for service providers

Mobile Time Sheets
®

The ServiceNow Mobile Timesheets app enables time sheet users and managers to access
their time sheets from a mobile device. Mobile Time Sheets is available on the Now Mobile app
and is supported on iOS and Android devices.
Time sheet users can use Mobile Time Sheets to create, view, edit, enter notes, and submit
their time cards from a mobile device. Time sheet project managers or user managers can view,
approve, reject, or recall a time sheet or time card from a mobile device.
To access time sheets from your mobile device, you must first download the Now Mobile
application on an iOS platform from the Apple App Store or on an Android platform from the
Google Play Store.

Features
The Mobile Time Sheets app provides the following capabilities to time sheet users:
• Create a time sheet
• Create a time card
• Log hours on the time card
• Update hours for the week for a specific time card
• Add notes to your time cards
• Submit a time sheet
• Submit a time card
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


<!-- page 1600 -->
The Mobile Time Sheets app provides the following capabilities to resource or project managers:
• Approve or reject a time sheet
• Approve or reject a time card
• Recall a time sheet or time card

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
Install Mobile Time Sheets
Install the Mobile Time Sheets application from the ServiceNow Store website.

Before you begin

Role required: admin

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find an application, you may
have to request it from the ServiceNow store.
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
If your application requires other applications, you need to install them first if they are not
already installed.
Installing your application also automatically installs dependent applications or plugins if they
are not installed already.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


<!-- page 1602 -->
5. If demo data is available and you want to install it, click Load demo data.
Some applications include demo data, which are sample records that describe application
features for common use cases. Load demo data when you first install the application on a
development or test instance.
6. Click Install.
Enabling the mobile experience for Mobile Time Sheets
Enable the mobile experience for Mobile Time Sheets so users can fill out time sheets and user
managers can approve or reject them from their mobile device.

Before you begin

Role required: admin

Procedure
1. Install the Mobile Time Sheets application

on your instance.

2. Download the Now mobile application on an iOS platform from the Apple App Store or on an
Android platform from the Google Play Store.
For more information on using this mobile app, see the Now Mobile app

topic.

3. Add the instance that has Mobile Time Sheets installed to the Now Mobile application and log
in to access the application data on your mobile device.

What to do next
Log in to an instance with a mobile app

.

Use Mobile Time Sheets in Now Mobile
You can configure your platform system to use Mobile Time Sheets in the Now Mobile
application. By default, Mobile Time Sheets can be viewed in the Now Mobile application.

Before you begin

Role required: admin
The Mobile Time Sheets app must be installed in your system.

Procedure
1. Navigate to All > System Mobile > Navigation Bar.
2. Click Now Mobile Nav.
3. From the Navigation Tabs related list, delete the time sheet record.
4. Navigate to System Mobile > Navigation Bar.
5. Click Now Agent.
6. Create a new record for the time sheet in the Navigation Tabs related list.
7. Download and enable the Now Mobile app.
For more information, see the Now Mobile app

topic.

Create a time sheet from your mobile device
Create a time sheet to group all your time cards for the given week and submit them in a single
step from the Now Mobile application.

Before you begin

Role required: timecard_ user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
Procedure
1. Log in to your instance using the Now Mobile application.
2. Tap the plus icon located on the top-right corner.
3. In the Select a day to create a time sheet field, select the starting date of the week for which
the time sheet is being created.
4. Tap the forward icon.

What to do next

Add time cards to the time sheet.
Search for a time sheet from time sheet lists
Search for a specific time sheet from the time sheet lists by applying filters.

Before you begin

Role required: timecard_user

About this task

You can apply filters on the time sheet lists to search for a specific time sheet in the All,
Rejected, and Recalled groups, or while copying time cards from a previous time sheet. You can
apply one or more filters while searching for a time sheet.

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open the Rejected, Recalled, or All list.
3. Tap the Filters icon located on the top-right corner to specify your filter criteria.
4. From the State menu, select the state of the time sheet, and tap the Back icon.
5. Select the user assigned to the time sheet in the Name field.
6. Select the week on which the time sheet starts.
7. Tap Apply.
Add a time card and log time through the Mobile Time Sheets application
Create time cards to log time from your mobile application for the work you have done.

Before you begin

Role required: timecard_user

About this task

The Allow time card reporting on field on the project form determines the level at which time
cards for the project tasks can be created. For example, at the project level, if a user is assigned
to multiple tasks in a project, then the time spent on all the tasks is recorded under one time
card only; and at the project task level, separate time cards are created corresponding to each
planned task.

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open a time sheet from the Time Sheets tab.
3. Tap the action icon.
4. Add task-related or non-task related time cards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
Time card type

Option

All time cards for project and non-project
tasks from a selected time sheet

Tap Copy from previous time sheet

Time cards for all project tasks assigned to
the user for the time sheet week that are in
progress or planned in that week

Tap Generate time cards

◦ Tap Add assigned task
Time card for assigned task

◦ Select or search the task that you want to
add.
◦ Tap Add.
◦ Add unassigned task

Time card for unassigned task

◦ Select or search the task that you want to
add.
◦ Tap Add.

Time card for operational work, such as ad­
ministration, meeting, and KTLO

Add from category

5. Log time in a time card:
◦ Tap a task on the time sheet and enter the hours worked for applicable days.
6. Tap Save.
Update time card hours for a task
Update hours in a time card for a particular day.

Before you begin

Role required: timecard_user

About this task

You can update the hour field for a specified day for a particular time card. The existing value is
overwritten with the new value in the time card.

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open a time sheet from My active time sheets.
3. Select the day for which you want to update hours.
4. Tap the task for which you want to update hours.
5. Update the hours in the text box.
6. Save the changes using your device's keyboard.
Manage your time cards
View, edit, or delete your time cards from your mobile device.

Before you begin

Role required: timecard_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
About this task

Manage your time cards by performing actions such as submitting the time card, viewing the
notes, adding notes, editing resource plan, or deleting the time card using your mobile device.

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open a time sheet from the Time Sheets tab.
3. In the All Week tab, tap the action menu for a task.
4. Manage your time cards.
Action

Steps

Tap Submit time card.
Submit time card

View your time card

Note: This option is available only
when hours are posted for a day against
the task.
Tap View time card to view the time card de­
tails such as task, hours, resource plan, and
notes.
To view notes associated with the time card:

View notes associated with your time cards ◦ Tap Time card notes.
◦ Tap back icon to go back to the time sheet.
To add notes to the time card:
◦ Tap Time card notes.
Add notes to your time cards

◦ Tap Add new note to add a new note.
◦ Enter the information in the text box and
click Submit.
To delete a time card:

Delete a time card

◦ Tap Delete time card.
◦ Tap Delete on the confirmation message.

Submit a time card from your mobile device
Once a time card for the week is updated with the time worked, you can submit the time card
from your mobile application.

Before you begin

Role required: timecard_user

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open a time sheet.
Cards that have not yet been submitted are in the Pending state. You can also submit cards
that are in the Rejected state once you have fixed the issues that caused the rejection.
3. Tap the actions menu for a time card on the time sheet and select Submit time card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
Result
• The time card moves to the Submitted state.
• The time card is submitted to an approver based on the values set in the Project time
approver and Non-project time approver fields in the time sheet policy assigned to the user.

Note: If the project or user manager is changed after submitting the time card, the time
card is automatically redirected to the new project or user manager for approval.
Submit a time sheet from your mobile device
Once you have updated the time sheet with the time you worked, you can submit the time sheet
for the week to submit all the time cards for the week together from your mobile application.

Before you begin

Role required: timecard_user

Procedure
1. Log in to your instance using the Now Mobile application.
2. Open the time sheet you want to submit.
3. Submit the time sheet using one of the following options.
◦ Tap the action icon and tap Submit Time sheet.
◦ Tap Submit time sheet at the bottom of the screen.
The time sheet is validated against the time sheet policy assigned to you or, if no time sheet
policy is assigned, against the default time sheet policy.
◦ If the time sheet meets the time sheet policy requirements, the time sheet is submitted. All
the time cards associated with the time sheet are also submitted automatically and move to
the Submitted state.
◦ If the time sheet does not meet the time sheet policy requirements, a validation error is
displayed. Resolve the issue indicated by the error message and resubmit the time sheet.
Approve or reject a time sheet or time card from your mobile device
As a user manager, you can approve or reject from your mobile device all time cards for a user in
a given week in a single step by approving or rejecting a time sheet.

Before you begin

Role required: timecard_approver or timecard_admin

About this task

A user manager is the one who has either of the required roles. The manager who can accept or
reject the time sheet is selected in the Manager field on the User form of the time card user.
A manager can delegate another user with the required roles as the time sheet approver. For the
specified time period, the delegated user also receives all the time sheets submitted by time
card users to process.

Procedure
1. Log in to your instance using the Now Mobile application.
2. In the Time Sheets list, open the time sheet you want to approve or reject.
3. Approve or reject the time sheet or time card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


<!-- page 1607 -->
◦ To approve time sheet of your team, from the Team approval requests section, tap the
approve (

) icon.

◦ To reject time sheet of your team, from the Team approval requests section, tap the reject
(

) icon.

◦ To approve the time sheet, tap the action icon, and select Approve time sheet or tap the
Approve time sheet button at the bottom of the screen.
◦ To reject the entire time sheet, tap the action icon, and select Reject time sheet or tap the
Reject time sheet button at the bottom of the screen.
◦ To approve a specific time card, tap the action menu and tap Approve time card.
◦ To reject a specific time card, tap the action menu and tap Reject time card.

Result
• The time sheet moves to the Approved or Rejected state.
• All time cards associated with the time sheet are also approved or rejected automatically.
• Time cards that are of non-task type are in moved to the processed state.
• If any time cards in the time sheet are pending approval by one of the approvers, the sheet
remains in the Submitted state.
• If a time card in a time sheet is in the Rejected state, the time sheet also moves to the Rejected
state regardless of the state of any other time cards in the time sheet.
Track your time sheets
View and track the time sheets grouped according to the date of submission such as the current
week, last week, or older.

Before you begin

Role required: timecard_approver or timecard_admin

Procedure
1. Log in to your instance in the Now Mobile application.
2. From the time sheets list, navigate to the All section and tap the forward icon.
3. View the time sheets in different states such as submitted, pending, approved, or recalled
during the current or previous weeks.
◦ To view the time sheets for the current week, tap This week tab.
◦ To view the time sheets for the last week, tap Last week tab.
◦ To view the time sheets for previous weeks, tap Older tab.
Recall a processed time sheet or time card from your mobile device
As a user manager, you can recall an incorrect time sheet or time card that is in the Approved
or Processed state to return it to the submitter. The submitter can then make the necessary
changes and resubmit the time sheet or time card.

Before you begin

Role required: timecard_approver or timecard_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


