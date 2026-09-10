# Zurich Strategic Portfolio Management — Goal Framework and Goal Framework for SPM

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 837–883 of 2289

Sections: Goal Framework and Goal Framework for SPM (p837); Explore (p839); Configure (p843); Manage goals (p852); Reference (p865)

---

<!-- page 837 -->
5. Select Generate acceptance criteria.

6. Review the generated acceptance criteria.
7. You can choose to further refine the generated content using the Now Assist context menu
(

) or generate a new criteria.

8. Select Update to save the acceptance criteria in the Story form.

Now Assist for Collaborative Work Management (CWM) reference
Reference topics provide details on the roles installed with Now Assist for CWM.

Roles installed with Now Assist for Collaborative Work Management (CWM)
The CWM AI user role (sn_cwm_ai.cwm_ai_user) enables users to use the generative AI skills
that are available with the Now Assist for CWM application.

Contains Roles
Roles contained within the sn_cwm_ai.cwm_ai_user role: sn_cwm.cwm_user

Groups
Groups this role is assigned to by default: None.

Special considerations
None.

Goal Framework and Goal Framework for SPM
Create goals, set targets for them, and evaluate the progress of the goals and targets to
®
accomplish your organizational plans and drive business outcomes using ServiceNow Goal
Framework.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


<!-- page 838 -->
®

The ServiceNow Goal Framework for Strategic Portfolio Management (SPM) application
(formerly known as Advanced Goal Framework) enables you to automate the actual value of
your targets. The Goal Framework for SPM application is an extension to the Goal Framework
application. When you install the Goal Framework for SPM application, you get all the features of
Goal Framework as well as the target automation feature.
Using Goal Framework, you can define strategic priorities and associated goals for your
organization as part of strategic plans. After goals are created, you can then associate work,
planning items, and strategic items such as demand, project, epic, program, and initiative.
®

The ServiceNow Strategic Planning users can define personalized portfolio plans using lenses
for your organization and use them to align your goals according to your organization's portfolio
plans. For information on how a portfolio plan is defined using a lens, see Lens and portfolio
plans. You can also create strategic plans, capturing the vision, mission, and values for your
organization.
Key benefits of Goal Framework:
• Helps ensure that the entire organization focuses efforts on the same strategic priorities.
• Makes goals that align and focus effort visible.
• Enables the association of work or planning items with goals so that the work being done to
accomplish goals and meet targets is easily visible.
• Provides real-time checkpoints for goals over weekly, monthly, and quarterly durations.
• Provides an end-to-end view of goal performance to users with the
sn_gf.epmo_strategy_planner role.
Key benefits of Goal Framework for SPM:
• Enables you to automate the actual value of your targets by collecting the actuals from different
target sources such as benefit plans, cost plans, assessments/surveys, and PA Indicators.
• Enables you to configure any table or combination of tables that are present on the
®
ServiceNow AI Platform as a target source.

Get started

Explore

Compare

Configure

Learn about Goal
Framework and
Goal Framework
for SPM features

Compare capabilities
of Goal Framework with
Goal Framework for SPM

Learn how to configure
Goal Framework and
Goal Framework for SPM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
Use

Reference

Learn how to define
goals to accomplish your
organizational plans and
drive business outcomes

Get details about
components like
fields, tables, roles,
and properties.

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community.
• Search the Known Error Portal for known error articles. For more information, see Search the
Known Error Portal for known error articles .
• Contact Customer Service and Support. For more information, see Contact Customer Service
and Support.

Exploring Goal Framework and Goal Framework for SPM
The Goal Framework application helps you create goals, set targets for them, and evaluate the
progress of the goals and targets to accomplish your organizational plans and drive business
outcomes.
The Goal Framework for Strategic Portfolio Management (SPM) application enables you to
automate the actual value of your targets by collecting the actuals from different target sources
such as benefit plans, cost plans, assessments/surveys, and PA Indicators.
Goal Framework key components:
• Strategic priorities: Actions of a strategic plan that help to orient your
organizational strategic plan toward your goal.
• Goals: Objectives that you want to reach based on your strategic plans.
• Targets: Targets for goals to track and measure the progress of the goals.
Goal Framework for SPM key component:
Target source is the key component of Goal Framework for SPM. Target source is a
configuration for a target that is used to auto-update the actual value of the target,
so that the progress of the target and its goal is auto-updated.

Strategic priorities
Strategic priorities are the objectives of your organizational plans. Strategic priorities help
you to achieve your goals over a designated time period. The strategic priorities are also
known as focus areas or long-term strategies. Defining strategic priorities helps to orient your
organizational strategic plans toward your goals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
Goals
Goals refer to objectives that an organization sets for itself to accomplish their organizational
plans. Goals are typically qualitative in nature. Goals should be ambitious and are expected to
motivate and challenge your teams. Some examples of goals are as follows:
• Using renewable energy by the end of the year 2022.
• Increase diversity in the workplace by 50 percent.
A goal can also have sub-goals. You can also associate work and planning items to a goal so that
you can track who is responsible for fulfilling the goal.
If you use Goal Framework with other products, you can also do the following:
®

• If you're a ServiceNow Project Portfolio Management user, you can associate demands,
projects, and programs with a goal to capture the work being done to meet your goal.
®

• If you're a ServiceNow Agile Development 2.0 user, you can associate scrum epics with a goal
to capture the work being done to meet your goal.
®

• If you're a ServiceNow Scaled Agile Framework (SAFe) user, you can associate SAFe epics
and SAFe features with a goal to capture the work being done to meet your goal.
• If you're a Strategic Planning user, you can associate planning items - Demand, Project, and
Epic, and strategic items - Program and Initiative - with a goal to capture the work being done to
meet your goal.

Targets
Targets help you to measure your goal. For example, to meet the goal of increasing diversity in
the workplace by 50 percent, the target can be to hire a 30 percent-diverse workforce by the first
quarter of 2022.
Targets can be set as a quantitative or qualitative by defining the unit of measure for the target.
Quantitative targets are numbers-based, countable, and measurable. Qualitative targets are
interpretation-based, descriptive, typically yes or no type.
You can also breakdown a target into smaller periods (example, Quarterly) which helps you set a
target for each quarter and focus on the specific breakdown targets. The target breakdowns are
automatically created based on the breakdown interval set for the target. For details on how the
target breakdowns feature works, see Target breakdowns.
Qualitative targets
Qualitative targets are typically non-measurable but can be tracked whether the
target has been achieved. The available unit of measure for qualitative targets is
Yes/No. You can also define a custom unit of measure (for the available choice set)
for qualitative targets as per your need and set qualitative targets for your goals.
For example, to achieve a target of conducting hackathon in Q2-2023, the target
can be set as conduct hackathon in Q2-2023 with the unit of measure Yes/No. Base
and target value of the target can be No and Yes respectively. After the target is
successful with the hackathon event, the target value can be updated to Yes.

Target sources
Target source is a configuration for a target that is used to auto-update the actual value of the
target, so that the progress of the target and its goal is auto-updated. Any table or a combination
of tables (for example, benefit plans, cost plans, surveys, incidents, and PA indicators) present
®
on the ServiceNow AI Platform can be configured as a target source.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
The following target source types are supported for automating the actual value of a target.
• PA Indicator: Updates the Actual value field on the target form by fetching the required data
from the PA Indicator.
• Assessment/Survey: Updates the Actual value field on the target form by fetching the required
data from the Assessment metric type and Assessment metric category records.
• Custom script: The Custom script fetches the required data from any ServiceNow AI Platform
table that is configured. With the Custom script option, any table or a combination of tables
present on the ServiceNow AI Platform can be configured as a target source.
Predefined target automation script for benefit plans: The predefined, default script is a target
source that updates the Actual value field on the target form by fetching the value from the
Actual benefit field or Non-monetary actual benefit field from the monetary or non-monetary
benefit plans of relevant work items.
Context variable
The context variable is an additional configuration for the target source. The context
variable provides information that can be used on the target form to fetch the
required data and update the Actual value field on the Target form. The context
variable is required for target source types Assessment/Survey and PA Indicator. If
the Goal Framework for SPM scope is selected while creating a target source, the
context variable is automatically created for the target source (of type Assessment/
Survey and PA Indicator). For more information on context variables, see Context
variable in target source.

Benefits and workflow
Use the Goal Framework or Goal Framework for SPM application to do the following activities:
• Create a strategic plan for your organization (If Strategic Planning is installed). For more
information, see Create a strategic plan.
• Create a strategic priority to orient your organization strategic plan toward your goal. For more
information, see Create a strategic priority for a strategic plan.
• Create a goal. For more information, see Create a goal.
• (For Goal Framework users) Set targets for a goal to track and measure the progress of the
goal. For more information, see Set targets for a goal.
• (For Goal Framework for SPM users) Set targets and automate the actual value of the
targets. For more information, see Configuring target source for target automation using Goal
Framework for SPM.
• Create a goal relationship with a work, planning, strategic, or any other item to identify and
associate your current or future work and achieve your goals. For more information, see
Associate a work or planning item with goals or targets.
• Associate the primary goal for a work and planning item. For more information, see Associate
the primary goal for work and planning items.

Comparing Goal Framework with Goal Framework for SPM
• Goal Framework: Create goals, set targets for them, and evaluate the progress of the goals and
targets to accomplish the organizational plans and drive business outcomes.
• Goal Framework for SPM: Automate the actual value of your targets by collecting the actuals
from different target sources such as benefit plans, cost plans, assessments/surveys, and PA
Indicators.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
Comparison of Goal Framework and Goal Framework for SPM features
Feature

Goal Framework

Goal Framework for SPM

Create strategic plans
Create strategic priorities
Create goals
Set targets
Set target breakdowns
Associate work with goals
Automate actual value of
targets
Monitor goals and strategies
in ServiceNow AI Control
Tower

Note: The Goal Framework for SPM application is an extension to the Goal Framework
application. When you install the Goal Framework for SPM application, you get all the
features of Goal Framework as well as the target automation feature.

Better together with other ServiceNow applications
The integration of Goal Framework or Goal Framework for SPM with other ServiceNow
applications helps portfolio, product, and program managers to optimize planning and track
goals for their products.

Goal Framework with AI Control Tower workspace
®

The ServiceNow AI Control Tower workspace enables you to track and monitor all your strategic
priorities, goals, and targets categorized as Artificial Intelligence in Goal Framework.
Populate the Type field for strategic priorities and the Category field for goals with the Artificial
Intelligence option to monitor their progress in the AI Control Tower workspace. For more
information, see Create a strategic priority and Create a goal.
When AI Control Tower is installed, the AI strategy tab appears in the AI Control Tower
workspace, featuring different widgets for AI strategies, goals, and targets details. For more
information, see AI strategy tab in AI Control Tower .

Goal Framework with Operational Sustainability Workspace
With the integration of ServiceNow Operational Sustainability Workspace with Goal Framework,
you can create environmental, social, and governance (ESG) goals to track your progress toward
your chosen material topics. You can also create an environmental, social, and social (ESG)
target to help track the progress toward your ESG goal. For more information, see Create an ESG
goal
and Create an ESG target .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
Goal Framework for SPM with Strategic Planning
Use the ServiceNow Strategic Planning Workspace to visualize the progress of your targets
graphically and update the target actuals with ease.
You can create a goal or target relationship with a planning item or any other item to identify and
associate your current or future work and achieve your goals and targets. You can also associate
a primary goal or target for the planning items where the items contribute to achieving the goal or
target. For more information, see Managing goals in Strategic Planning Workspace.

Note: When you install Strategic Planning, you get all the features of the Goal Framework
and Goal Framework for SPM applications.

Configuring Goal Framework and Goal Framework for SPM
As an administrator, use this section to set up the Goal Framework and Goal Framework for SPM
applications.

Install Goal Framework and Goal Framework for SPM
You can install the Goal Framework (sn_gf) and Goal Framework for SPM (sn_gfa) applications if
you have the admin role.

Before you begin

Ensure that the applications and all associated store applications have valid ServiceNow
entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
When you install the Goal Framework for SPM application, you get all the features of Goal
Framework as well as the target automation feature.
Role required: admin

Important: You can install the Goal Framework for SPM application only when you own
the Strategic Portfolio Management (SPM) Pro license.

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Find the Goal Framework or Goal Framework for SPM application using the filter criteria and
search bar.
You can search for the application by its name or ID (sn_gf or sn_gfa). If you can’t find an
application, you may have to request it from ServiceNow store. Visit the ServiceNow Store
website to view all the available apps and for information about submitting requests to the
store. For cumulative release note information for all released apps, see the ServiceNow Store
version history release notes .
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
If your application requires other applications, install them first if they aren’t already installed.
Installing your application also automatically installs the dependent applications or plugins if
they aren’t installed already.
5. Click Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
Result

The following components are installed with installation of the Goal Framework or Goal
Framework for SPM application:
• Roles
• Tables
• Scheduled jobs
• Target automation script for benefit plans (installed with Goal Framework for SPM)
As part of Goal Framework for SPM installation, components of both Goal Framework and Goal
Framework for SPM are installed. See Components installed with Goal Framework and Goal
Framework for SPM for more information.

Migrate existing goals data to Goal Framework tables
With the admin role, you can migrate the existing goals data to the Goal Framework tables by
running the scheduled job.

Before you begin

Role required: admin

About this task

Note: Migrating data to the Goal Framework tables is a one-time job, and not meant to be
on a schedule.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Migrate Goal, Strategy, and Work item data to the Goal Framework
and related Planning item tables scheduled job.
3. On the Scheduled Script Execution form:
a. Ensure that the frequency is selected as On Demand in the Run field.
b. Set the value to true for the required parameters in the Run this script field.
For parameters information, see Migrate Goal, Strategy, and Work item data to the Goal
Framework and related Planning item tables.
4. Click Execute Now.

Configure goal preferences
Configure goal preferences to manage goals such as the calendar type used for goal setting,
weighted average calculation for goal progress, and deletion of goals and targets.

Before you begin

Role required: sn_gf.goal_admin

Procedure
1. Navigate to All > Enterprise Goal Management > Preferences.
2. On the Goal Preferences form, configure the properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
For properties information, see Goal Preferences form.
3. Click Save.

Configure a table for an assigned entity
Configure a table for an assigned entity type so that the goal user can associate goals with the
required assigned entity.

Before you begin
• By default, with the installation of Goal Framework, the assigned entities, Business Unit
[business_unit], Department [cmn_department], and Company [core_company] are installed.
• With the activation of PPM Standard (Project Portfolio Management), the Portfolio
[pm_portfolio] assigned entity is installed.
• With the installation of Strategic Planning, the assigned entities, Product Model [cmdb_model],
Value Stream [cmn_value_stream], Initiative [sn_align_core_initiative], and Strategic Program
[sn_align_core_program] are installed.
Role required: sn_gf.goal_admin

About this task
Procedure
1. Navigate to All > Enterprise Goal Management > Assigned Entities.
2. Click New.
3. On the form, fill in the fields.
For a description of the field values, see Goal Assigned Entity Configuration form.
4. Click Submit.

Import goals and targets data from a spreadsheet
With the admin role, you can import your existing goals and targets data from a spreadsheet to
the Goal Framework tables.

Before you begin
• On a successful job run, the goals data from your spreadsheet is imported to the Goal
[sn_gf_goal] table.
• On a successful job run, the targets data from your spreadsheet is imported to the Target
[sn_gf_goal_target] table.

Note: Because the targets are associated to a goal, you should import the goals first and
then the targets.

Important: Goals and targets data in the spreadsheet must be in the supported
format. For details on the supported data format to import goals and targets data from a
spreadsheet, see Import goals and targets data [KB1191233] .
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Procedure
1. Navigate to All > System Import Sets > Load Data.
2. From the Import set table drop-down list, select Goal Import Set [imp_sn_gf_goal] or Target
Import Set [imp_sn_gf_goal_target].
3. From the Source of the import option, select File.
4. In the File option, click Choose and select your spreadsheet to import the data.

Important:
◦ Goals and targets data in the spreadsheet must be in a specific format. For details on
the supported data format, see Import goals and targets data [KB1191233] .
◦ Don't modify the names in the header row of the spreadsheet because the data is
imported to the respective fields in the goal and target tables based on the header title
of each column.
5. Click Submit.
6. On the Progress page, click Run Transform.
7. On the Specify Import set and Transform map page, click Transform.
8. Click Transform history and verify that the State column is set to Complete in the Import Set
Runs related list.
Depending on the option that you selected from the Import set table drop-down list, your goals
or targets data is imported to the Goal [sn_gf_goal] or Target [sn_gf_goal_target] tables.
If the job is failed, click Transform history and refer to the details.

Note: The Import operation can be used for inserting new data or updating the existing
data in the tables. By default, the Name and Owner values are the primary keys used
for updating the existing records. You can also add additional fields as primary key for
inserting new data or updating the existing data. For details on how to add additional
fields as primary key, see Import goals and targets data [KB1191233] .

Update a scheduled job to automate the Actual value of the targets
Use the Goal Framework for SPM application to modify the run time for the scheduled job
according to your preference to auto-update the actual value of the targets for which a target
source has been configured.

Before you begin

Role required: admin

About this task

By default, the scheduled job runs daily at 00:00:00 AM (System Time Zone).

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Update Actual value of the targets using Goal Framework for SPM
scheduled job.
3. Ensure that the Active check box is selected to run the job at a scheduled time.
4. Edit the details of the Run and Time fields according to your preference.
5. Click Update.
To learn more about scheduled jobs, see Scheduled jobs

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
Configuring target source for target automation using Goal Framework for
SPM
Configure target sources for target automation so that the goal user can define a target source
when setting a target for the goal. Defining a target source for a target updates the actual value of
the target automatically.
Use the following steps as guidelines for setting targets and automating the actual value of the
targets using Goal Framework for SPM. Some of these steps require the sn_gf.goal_user role and
some require the sn_gf.goal_admin role.
1. Create a target source for a target to configure it as a source to update the actual value of the
target. For more information, see Create a target source.
The context variable is required for target source types Assessment/Survey and PA Indicator.
The mandatory context variables are automatically created while creating a target source with
the type selected as Assessment/Surveys or PA Indicator. For more information on when the
mandatory context variables are created, see Context variable in target source.
2. If required, create context variables for the target source so that the required data is fetched
from the context variables to update the actual value of the target. For more information, see
Create context variables for a target source.
Context variable in target source
The context variable is an additional configuration for the target source that can be used on the
Target form to fetch the required data and auto-update the Actual value field on the Target form.
A context variable is required for target source types Assessment/Survey and PA Indicator.
The context variable is automatically created (with the Mandatory field set to true on the context
variable form) for the target source (of type Assessment/Survey and PA Indicator) when the Goal
Framework for SPM scope is selected before creating a target source. The context variables
created automatically are also known as mandatory context variables.
The mandatory context variables are created when you've selected the Goal Framework for SPM
scope and you've met one of the following conditions:
• (For target source type, Assessment/Survey) On the Target Source form, the Type field is set to
Assessment/Survey and the Assessment Metric Types field is populated with a metric type
of Evaluation method = Assessment.

• (For target source type, PA Indicator) On the Target Source form, the Type field is set to PA
Indicator and the value populated in the Breakdown field isn't of Choice list type.
To create a context variable for the target source type, PA Indicator, where the Breakdown field
is of Choice list type, see Create a context variable for the target source type PA Indicator.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
Note: Mandatory context variables can't be deleted.
You can also create context variables manually for a target source and use them to configure for
fetching the required data and auto-updating the Actual value field on the Target form. For more
information on how to create a context variable manually, see Create context variable for a target
source.
Create a target source for automating the Actual value of the targets
Create a target source so that the goal user can configure it for the targets to automate the Actual
value of the targets.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The context variable is required for target source types Assessment/Survey and PA Indicator.
The mandatory context variables are automatically created while creating a target source with
the type selected as Assessment/Surveys or PA Indicator. For more information on when the
mandatory context variables are created, see Context variable in target source.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Click New.
3. On the form, fill in the fields.
For a description of the field values, see Target Source form.
4. Click Submit.
Create context variable for a target source
Create a context variable manually if you want to configure more context variables for a target
source.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The Context variable provides information that can be used to fetch the required data and autoupdate the Actual value on the target form. After a context variable is created for the target
source, the goal user can configure the Actual Value Source Configuration section on the Target
form so that the Actual value gets auto-updated.
Creating a context variable is similar to creating a column on a table.
To create a context variable for the target source type PA Indicator and the breakdown is of
Choice list type, see Create a context variable for the target source type PA Indicator.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Open the required target source that you want to create a context variable for.
3. In the Context Variables related list, click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
4. On the form, fill in the fields.
For a description of the field values, see Context Variable form.
5. Click Submit.
Create a context variable for the target source type PA Indicator
Create a context variable manually for the target source type PA Indicator if the breakdown is of
Choice list type.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The context variable provides information that can be used to fetch the required data and autoupdate the Actual value on the Target form. After a context variable is created for the target
source, the goal user can configure the Actual Value Source Configuration section on the Target
form for the Actual value to get auto-updated.
Creating a context variable is similar to creating a column on a table.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Open the required target source that you want to create a context variable for.
3. In the Context Variables related list, click New.
4. On the form, fill in the Type field as Choice and the other fields as needed.
For a description of the field values, see Context Variable form.
5. Click Submit.
A context variable of choice type is created.
6. In the Choices related list of the context variable you created, click New.

Note: If you don’t see the Choices related list on the Context Variable form, add it by
navigating to Configure > Related Lists on the form.
7. On the form, fill in the fields.
Choice form
Field

Description

Table

Name of the context variable for which the choice is created.

Element Column name in the context variable form for which the choice is created.
Label

Name of the choice.

Value

Sys_id of the choice value for which the context variable is created.
You can copy the sys_id from the Choices related list of the Dictionary Entry
[sys_dictionary] table.

8. Click Submit.
9. Optional: Repeat the steps 6 through 8 to create more choices for the context variable.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
What to do next

The goal user can configure these choices as context variables on the Target form for which the
target source is configured.

Migrate target breakdowns
After upgrading to Goal Framework for SPM v2.3.0 or later, run the Migrate BreakdownInterval
To Checkinfrequency scheduled job to migrate the existing values from the Review frequency
field to the Check-in frequency field in the target records.

About this task

After running the job, the value in the Check-in frequency field for a target is populated based
on the existing value in the Review frequency field of the target. If the existing value in the
Review frequency field was set to any option other than None, then target breakdowns will be
created for such targets based on the value in the existing check-in frequency of the target. For
more information on how these values are migrated for targets with different values, see Target
breakdowns migration.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and select the Migrate BreakdownInterval To Checkinfrequency scheduled job.
3. On the Scheduled Script Execution form, ensure that the frequency is selected as On Demand
in the Run field.
4. Select Execute Now.
Target breakdowns migration
As an administrator, when you run the Migrate BreakdownInterval To Checkinfrequency
scheduled job, the existing values in the Review frequency and Breakdown interval fields are
migrated to the Check-in frequency field in the target records.
The value in the Actual to date field for the target and values in the Planned target value and
Actual fields for the target breakdowns are populated based on the current actual value of the
target and values in the existing target breakdowns.

Target breakdowns migration for targets with breakdown interval set to None
After running the job, the value in the Check-in frequency field for a target is populated based on
the existing value in the Review frequency field of the target. If the existing value in the Review
frequency field was set to any option other than None, then target breakdowns will be created
for such targets based on the existing review frequency of the target. Even though Breakdown
interval was set to None for a target, target breakdowns will be created for the target based on
the existing review frequency of the target.
The following table describes how the check-in frequency value is populated for targets with
different values in the Review frequency and Breakdown interval fields.
Target breakdowns migration with breakdown interval set to None
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Yearly

None

Yearly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
Target breakdowns migration with breakdown interval set to None (continued)
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Quarterly

None

Quarterly

Monthly

None

Monthly

Fortnightly

None

Fortnightly
The Fortnightly option is
retained and no target
breakdowns will be created
because the Fortnightly option
is no longer supported.
After the owner or a
contributor of the target
updates the check-in
frequency for the target, the
target breakdowns will be
created accordingly.

Weekly

None

Weekly

Daily

None

Daily

None

None

None
In this case, no target
breakdowns will be created.

For example, consider a scenario where details of a target are as follows before upgrade:
• The base value and target value of the target is 0 and 100, respectively
• The review frequency is set to Monthly and Breakdown interval was set to None
• The start date and end date of the target are 2024-01-01 and 2024-12-31, respectively
• The current actual value of the target is 60 and the current month is August
In this case, after running the scheduled job 12 monthly target breakdowns are created for the
target and the current actual value as 60 is populated in the August monthly breakdown. Also,
the planned target value is populated for each breakdown.

Target breakdowns migration for targets with breakdown interval set to
Quarterly or Yearly
After running the job, the value in the Check-in frequency field for a target is populated based
on the existing value in the Review frequency field of the target. Then, target breakdowns are
created for the targets based on the existing review frequency of the target.
The following table describes how the check-in frequency value is populated for targets with
different values in the Review frequency and Breakdown interval fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
Target breakdowns migration with breakdown interval set to Quarterly or Yearly
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Quarterly

Quarterly

Quarterly

Quarterly

Yearly

Quarterly

Note: For targets with breakdowns interval set to Yearly, irrespective of the target is of type
cumulative or non-cumulative, after running the scheduled job quarterly target breakdowns
will be created and the Target value distribution is set to Spread linearly across the time
period (cumulative) for the target.
For example, consider a scenario where details of a target are as follows before upgrade:
• The base value and target value of the target is 0 and 80, respectively
• The review frequency is set to Quarterly and Breakdown interval was set to Yearly
• The start date and end date of the target are 2023-01-01 and 2024-12-31, respectively
• The target is of type non-cumulative
• The actual value achieved in each quarter is 10 starting from Q1-2023 till Q2-2024
• The current total actual value of the target is 60 and the current quarter is Q2-2024
In this case, after running the scheduled job 8 quarterly breakdowns are created and the Target
value distribution is set to Spread linearly across the time period (cumulative) for the target. The
current actual value for Q1-2023, Q2-2023, Q3-2023, Q4-2023, Q1-2024, and Q2-2024 quarterly
target breakdowns are populated as 10, 20, 30, 40, 50, and 60, respectively. Also, the planned
target value is populated for each breakdown.

Defining a custom unit of measure
Defining a custom unit of measure helps the goal users to set the unit of measure for targets as
per their choice. Unit of measures are two types, quantitative and qualitative.
By default, the available unit of measures for quantitative targets are #, $, %, Days. By default,
the available unit of measure for qualitative targets is Yes/No.
As an administrator, you must create custom unit of measures so that the goal user can use them
for setting a unit of measure for their targets:
• For quantitative targets, you can define a custom unit of measures from the Unit [sn_gf_unit]
table.
• For qualitative targets, you must first create a choice set and then create a choice list for the
choice set.

Managing goals using Goal Framework or Goal Framework for
SPM
Understand the process required to define goals using Goal Framework.
Managing goals using Goal Framework or Goal Framework for SPM
Use the following steps as guidelines for defining your goals. Some of these steps require
the sn_gf.strategy_planner role and some require the sn_gf.goal_user role. If you're an Goal
Framework for SPM user, you need the sn_gf.goal_admin role to configure the target automation
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
feature. All steps are the same for defining goals using either Goal Framework or Goal Framework
for SPM.
1. Create a strategic plan to define the purpose - vision, mission, and values - of your
organization. For more information, see Create a strategic plan.
You can create strategic plans only when Strategic Planning is installed. Creating a strategic
plan isn't required to define goals.
2. Create a strategic priority to orient your organization's strategic plan to your goal. For more
information, see Create a strategic priority.
3. Create a goal. For more information, see Create a goal.
4. Create targets for goals to track and measure the progress of the goals. For more information,
see Set targets for a goal using Goal Framework.
5. (For Goal Framework for SPM users only) Set targets for goals and configure the target sources
for the targets to auto-update the actual value of the targets. After the progress of a target is
updated, the target's progress is rolled up to its goal. For more information, see Configuring
target source for target automation using Goal Framework for SPM .
6. Create a goal or target relationship with a work or strategic item. For more information, see
Associate work or strategy with goals or targets.
7. Set a goal or target as primary for the work and planning items where the items contribute to
achieving the goal. For more information, see Associating the primary goal or target for work
and planning items.

Create a strategic plan
As a strategy planner, you can create and manage strategic plans for your organization. Create
a strategic plan to define the purpose of your organization, its strategic priorities, and the
associated goals.

Before you begin

Install Strategic Planning on your ServiceNow instance.
Role required: sn_gf.strategy_planner

Procedure
1. Navigate to All > Strategy > Strategic Plans.
2. Click New.
3. On the form, fill in the fields.
For field information, see Strategic Plan form.
4. Click Submit.

What to do next

From the Values related list, capture values for your organization such as Integrity, Commitment
to customers, and Trust.

Create a strategic priority for a strategic plan
As a strategy planner, you can create and manage the strategic priorities for the strategic plans
for your organization. Create a strategic priority to orient your organization strategic plan toward
your goal.

Before you begin

Role required: sn_gf.strategy_planner
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
About this task

The strategic priorities are also known as focus areas or long-term strategies.

Procedure
1. Create a strategic priority for a strategic plan using one of the following options.
Option

Steps

a. Navigate to Strategy > Strategic Plans.
From the Strategic Priorities related list

b. Open the required strategic plan that you
want to create a strategic priority for.
c. In the Strategic Priorities related list, click
New.

From the Strategic Priorities module

a. Navigate to Strategy > Strategic Priorities.
b. Click New.

2. On the form, fill in the fields.
For field information, see Strategic Priority form.
3. Click Submit.

What to do next

Define goals and set targets for them to accomplish the strategic priorities.

Create a goal
Create goals and set targets to measure overall goal progress and evaluate them to align with the
organizational strategic priorities.

Before you begin

Role required: sn_gf.goal_user or sn_gf.goal_admin

About this task

Goals are typically qualitative in nature. Goals should be ambitious and are expected to motivate
and challenge the teams.

Procedure
1. Navigate to All > Enterprise Goal Management > Goals.
2. Click New.
3. On the form, fill in the fields.
For field information, see Goal form.
4. Click Submit.

What to do next

Set targets for the goals.

Create targets for a goal using Goal Framework or Goal Framework for SPM
Create SMART targets for goals to track and measure the progress of the goals.

Before you begin

Role required: sn_gf.goal_user or sn_gf.goal_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
About this task

A SMART target can be defined as S = Specific, M = Measurable, A = Attainable, R = Relevant,
and T = Time-bound.
• Only the owner or contributors of the goal can create targets for the goal.
• You can also restrict the access for a target record to the specific users by enabling the
Confidential field on the target form if the ESG Management application is installed.

Procedure
1. Create a target for a goal using one of the following options.
Option

Steps

a. Navigate to Enterprise Goal Management
> Goals.
From the Targets related list

b. Open the required goal that you want to set
a target for.
c. In the Quantitative Targets or Qualitative
Targets related list, click New.

From the Targets module

a. Navigate to Enterprise Goal Management
> Targets.
b. Click New.

2. On the form, fill in the fields.
For field information, see Target form.
3. Click Submit.

Result

The target progress records are automatically created when you save the target post populating
the Actuals to date field. The target progress records specify the progress of each target for the
goal.

Note: When you delete a goal, its associated targets (if any) and their progress records
are also deleted even though the Allow the deletion of targets property is set to No.

What to do next

Update the progress of the targets.
Update the progress of a manual target
Update the progress of a target when its status is changed.

Before you begin

Role required: sn_gf.goal_user or sn_gf.goal_admin

About this task

Note: Only the owner or contributors of the goal can update targets of the goal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
Procedure
1. Open the target record of the goal using one of the following options.
Option

Steps

a. Navigate to Enterprise Goal Management
> Goals.
From the Targets related list

b. Open the required goal whose progress of
the target you want to update.
c. In the Quantitative Targets or Qualitative
Targets related list, click New.

From the Targets module

a. Navigate to Enterprise Goal Management
> Targets.
b. Open the required target record.

2. On the Target form, update the Actuals to date field and add a business justification in the
Remark field.
For field information, see Target form.
3. Click Update.

Result

Once the Actuals to date field is updated, the progress value for the target is auto-updated. For
information on how the progress value is calculated, see progress value calculation.
Related topics
Update the progress of a target using Goal Framework for SPM
Update the actual value of a target breakdown
Update the progress of a target using Goal Framework for SPM
Update the progress of a target using the Update Actual value related link on the Target form.

Before you begin

Role required: sn_gf.goal_user or sn_gf.goal_admin

About this task

Note: Only the owner or contributors of the goal can update targets for the goal.
Procedure
1. Open the target record of the goal using one of the following options.
Option

Steps

a. Navigate to Enterprise Goal Management
> Goals.
From the Targets related list

b. Open the required goal with the target
progress that you want to update.
c. From the Quantitative Targets or Qualitative
Targets related list, open the required tar­
get record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Option

Steps

From the Targets module

a. Navigate to Enterprise Goal Management
> Targets.
b. Open the required target record.

2. On the Target form, click the Update Actual value related link.
For a description of the field values, see Target form.

Result

After the Actuals to date field is updated, the progress value for the target and its goal are autoupdated. For information on how the progress value is calculated, see progress value calculation.
For information on how the progress value is calculated for a target that has target breakdowns,
see Target breakdowns.
Related topics
Update the progress of a manual target
Update the actual value of a target breakdown

Target breakdowns
Breaking down a target into smaller periods (for example, Monthly) helps you set a target
value for each month and focus on that specific monthly target. The target breakdowns are
automatically created based on the Check-in frequency and Target value distribution set for the
target.
The check-in frequency for a target can be set to Daily, Weekly, Monthly, Quarterly, or Yearly.
Based on the Check-in frequency of the target, the corresponding target breakdowns are
created. For example, if the Check-in frequency is set to Monthly for a target spanning for a year,
12 monthly target breakdowns are created. Planned target values are automatically set for each
target breakdown based on the Target value distribution setting of the target.

Note: The target breakdowns feature isn’t supported for qualitative targets.
The following examples help you understand how the target progress is calculated for targets
with different target distribution type.
Example 1: Acquire 1200 new customers in the calender year 2025 (Track noncumulatively)
In this example, you want to achieve a target of acquiring 1200 new customers in
the calender year 2025 and track the progress monthly (non-cumulatively), then you
can set the target as the following:
• Set the start date and end dates to 2025-01-01 and 2025-12-31, respectively
• Set the start value and final target values to 0 and 1200, respectively
• Set the Check-in frequency for the target to Monthly
• Set the Target value distribution to Split equally across the time period (noncumulative)
This Target value distribution means that the final target value is divided into 12
equal values (planned target value for each target breakdown) which aggregates
to the final target value. You can edit the planned target value later from the
respective target breakdown record as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
In this case, the application creates 12 target breakdowns (January, February,
………, and December) for calender year 2025 and sets the Planned target value for
each target breakdown to 100 (Final target value divided by the number of target
breakdowns).
Because the application sums up the actual value entered in each monthly target
breakdown, you must enter the actual value that is achieved in the particular month
for the target breakdown. For example, you acquired 100 customers in January,
then enter 100 as the actual value in the January target breakdown. And, you
acquired another 100 customers in February, then enter 100 as the actual value in
the February target breakdown. Similarly, if you acquired another 100 in March and
100 in April, then enter 100 as the actual value in both the March and April target
breakdowns.
The application sums up the actual values entered in each monthly target
breakdown and rolls up the sum value to the actual value of the main target. Then,
the progress of the target and its goal are auto-updated.
Example 2: Acquire 1200 new customers in the calender year 2025 (Track cumulatively)
In this example, you want to achieve a target of acquiring 1200 new customers in the
calender year 2025 and track the progress monthly (cumulatively), then you can set
the target as the following:
• Set the start date and end dates to 2025-01-01 and 2025-12-31, respectively
• Set the start value and final target values to 0 and 100, respectively
• Set the Check-in frequency for the target to Monthly
• Set the Target value distribution to Spread linearly across the time period
(cumulative)
This Target value distribution means that the final target value is divided linearly
into 12 planned target values (such a way that the value for the last monthly
breakdown is equal to the final target value). You can edit the planned target value
later from the respective target breakdown record as needed.
In this case, the application creates 12 target breakdowns (January, February,………,
and December) for calender year 2025 and sets the Planned target value for the
January, February,………, and December breakdowns to 100, 200,…….., and 1200
respectively.
Because the application considers only the actual value entered in the latest
monthly target breakdown, you must enter the cumulative actual value in the latest
monthly target breakdown. For example, you acquired 100 customers in January,
then enter 100 as the actual value in the January target breakdown. And, you
acquired another 100 customers in February, then enter 200 as the actual value
in the February target breakdown. Similarly, if you acquired another 100 in March
and 100 in April, then enter 300 and 400 as the actual value in the March and April
target breakdowns, respectively.
The application considers the actual value entered in the latest monthly target
breakdown and rolls up to the actual value of the main target. Then, the progress of
the target and its goal are auto-updated.

Benefits of target breakdowns
The target breakdowns feature helps you when you want to set a target for a period but want to
track the progress of the target in smaller periods such as daily, weekly, monthly, quarterly, and
yearly. For example, you have set a target for a year with start value and final target values of 0
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
and 1200, respectively. Also, you want to set monthly targets of 100 for each quarter. In this case,
you can break down the target into monthly targets and set a target value for each month so that
you can focus on the specific monthly target and update your actuals against those monthly
targets.
The target breakdowns feature has the following benefits:
• Break down the long-term targets into short-term intervals such as Daily, Weekly, Monthly,
Quarterly, and Yearly for a better tracking or reporting of your progress
• Set or modify a planned target value for each target breakdown as needed
• Update the actual value for each target breakdown and track the progress of the main target
• Focus on the specific short-term target (target breakdown) rather than the whole target
• Track the progress of your short-term and long-term targets cumulatively or non-cumulatively

How the actual value is calculated when the check-in frequency set to None
When the check-in frequency is set to None for a target, the actual value must be entered in
the Actuals to date field in the main target record. The actual value entered must be cumulative
irrespective of the time period of the target. Target breakdowns aren’t created when the check-in
frequency is set to None.

Target breakdowns in target automation
If you’ve enabled the target automation feature for a target and set the check-in frequency and
Target value distribution, the target automation feature automatically updates the actual value
in the respective target breakdown based on the check-in due date. After the actual value of
a target breakdown is updated, the value is rolled up to rolls up to the actual value of the main
target. Then, the progress of the target and its goal are auto-updated.
Update the actual value of a target breakdown
Update the actual value of a target breakdown when its status is changed. Updating the actual
value of a target breakdown automatically updates the actual value of its target. After the Actual
field of the target is updated, the progress value for the target and its goal is auto-updated.

Before you begin

Role required: sn_gf.goal_user

About this task

Note: Only the owner or contributors of the goal can update the target breakdowns.
Procedure
1. Open the target record of the goal using one of the following options.
Option

Steps

a. Navigate to Enterprise Goal Management
> Goals.
From the Targets related list

b. Open the required goal whose progress of
the target you want to update.
c. From the Quantitative Targets related list,
open the required target record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
Option

Steps

From the Targets module

a. Navigate to Enterprise Goal Management
> Targets.
b. Open the required target record.

2. On the Target form, update the Actual field and add a business justification in the Remark
field.
For field information, see Target Breakdown form.
3. Select Update.

Result

After the Actual field is updated, the progress value for the target and its goal is auto-updated.
For information on how the progress value is calculated, see Progress value calculation. For
information on how the actual value of the target breakdown is rolled up to its target, see Target
breakdowns.
Related topics
Update the progress of a manual target
Update the progress of a target using Goal Framework for SPM

Associate a work or planning item with goals or targets
Create a goal or target relationship with a work, planning, strategic, or any other item to identify
and associate your current or future work and achieve your goals and targets.

Before you begin

Role required: sn_gf.goal_user

About this task

You can associate a goal or target with only one of the work items (Project, Demand, Program,
Scrum Feature, Scrum/SAFe Epic), or SAFe Feature, planning items (Project, Demand, or Epic),
or strategic items (Program or Initiative) at a time. To associate more than one item with a goal or
target, create one goal or target relationship record for each item.
• You can associate a goal or target with the Project, Demand, and Program work items only
when PPM Standard (Project Portfolio Management) is installed.
• You can associate a goal or target with the Scrum Feature and Scrum Epic work items only
when Agile Development 2.0 is installed.
• You can associate a goal with the SAFe Epic and SAFe Feature work items only when Scaled
Agile Framework (SAFe) is installed.
• You can associate a goal or target with the planning items (Project, Demand, and Epic) and
strategic items (Program and Initiative) only when Strategic Planning is installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
Note:
• Depending on the plugin that is installed - PPM or Strategic Planning - the respective
related list appears on the Goal and Target form. If PPM is installed, the Project, Demand,
and Program work item related lists appear on the Goal and Target form. If only Strategic
Planning is installed or both PPM and Strategic Planning are installed, the Planning items
and Other items related lists appear on the Goal and Target form respectively.
• When a goal or target relationship is created with a work item (Project, Demand, Program,
Scrum Feature, Scrum/SAFe Epic, or SAFe Feature), the record appears on the respective
related list on the Goal or Target form. When a goal or target relationship is created with
a planning item (Project, Demand, or Epic), the record appears in the Planning items
related list on the Goal or Target form. When a goal or target relationship is created with
a strategic item (Program or Initiative) or any other item, the record appears in the Other
items related list on the Goal or Target form respectively.

Procedure
1. Navigate to All > Enterprise Goal Management > Goals.
2. Open the required goal or target.
3. Create a goal or target relationship with a work or planning item using the following options.
Option

Steps

a. (For PPM users) Click the Projects related
list.
b. (For Strategic Planning users) Click the Plan­
ning items related list.
c. Click Add.

To create a relationship with a project

d. (For PPM users) On the Goal/Target Rela­
tionship form, enter the required project in
the Project field.
e. (For Strategic Planning users) On the Goal/
Target Relationship form:
i. From the Planning item type drop-down
list, select Project [sn_align_core_­
project].
ii. In the Planning item field, enter the re­
quired project.
a. (For PPM users) Click the Demands related
list.
b. (For Strategic Planning users) Click the Plan­
ning items related list.

To create a relationship with a demand

c. Click Add.
d. (For PPM users) On the Goal/Target Rela­
tionship form, enter the required demand in
the Demand field.
e. (For Strategic Planning users) On the Goal/
Target Relationship form:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
Option

Steps

i. From the Planning item type drop-down
list, select Demand [sn_align_core_de­
mand].
ii. In the Planning item field, enter the re­
quired demand.
a. (For PPM users) Click the Programs related
list.

To create a relationship with a program

b. (For Strategic Planning users) Click the Plan­
ning items related list.
c. Click Add.
d. (For PPM users) On the Goal/Target Rela­
tionship form, enter the required program in
the Program field.
For Agile Development 2.0 users only.
a. Click the Features related list.

To create a relationship with a scrum fea­
ture

b. Click Add.
c. On the Goal/Target Relationship form, en­
ter the required scrum feature in the Fea­
ture field.
a. (For Agile Development 2.0 or SAFe users)
Click the Epics related list.
b. Click Add.
c. (For Strategic Planning users) Click the Plan­
ning items related list.

To create a relationship with a scrum or
SAFe epic

d. (For Agile Development 2.0 and SAFe
users) On the Goal/Target Relationship
form, enter the required scrum or SAFe epic
in the Epic field.
e. (For Strategic Planning users) On the Goal/
Target Relationship form:
i. From the Planning item type drop-down
list, select Epic [sn_align_core_scrum_­
epic].
ii. In the Planning item field, enter the re­
quired epic.
a. (For Agile Development 2.0 or SAFe users)
Click the Features related list.

To create a relationship with a SAFe Feature b. Click Add.
c. (For Strategic Planning users) Click the Plan­
ning items related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
Option

Steps

d. (For Agile Development 2.0 and SAFe
users) On the Goal/Target Relationship
form, enter the required scrum or SAFe fea­
ture in the Feature field.
a. Click the Other items related list.
b. Click Add.
To create a relationship with any item other
than work, planning, or strategic item

c. On the Goal/Target Relationship form:
i. From the Table drop-down list, select a ta­
ble.
ii. In the Document ID field, enter the docu­
ment ID of the column for the selected ref­
erence table.

4. Click Submit.

Associating the primary goal or target for work and planning items
You can associate a goal or target as the primary for the work and planning items where the items
contribute to achieving the goal or target. You need different roles to set a goal or target as the
primary for work and planning items.
You can associate a goal or target as primary to work and planning items by populating the
Primary goal and Primary target fields on the Project, Demand, Program, Feature, Epic, and
Planning item forms.
You can also associate non-primary goals or targets to work and planning items from the Goal/
Target Relationships related list on the Project, Demand, Program, Feature, Epic, and Planning
item forms.
Once you associate work and planning items to goals or targets, you can check these
relationships directly in the goal's or target's related list or in the respective work or planning
item’s related list.
The following table describes how the primary goal or target can be set for each work and
planning item.

Work /
Planning item

Plugin
required

Project

PPM
Standard

Role required

project_manager

Steps to associate the primary goal

1. Open the required project.
2. On the form, enter the goal or target
that you want to associate to the
project in the Primary goal and
Primary target fields respectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
Work /
Planning item

Plugin
required

Demand

PPM
Standard

demand_manager

PPM
Standard

program_manager

Program

Feature

SAFe Feature

Scrum Epic

SAFe Epic

Planning
item (Project,
Demand, and
Scrum/SAFe
Epic)

Role required

1. Open the required demand.
2. On the form, enter the goal or target
that you want to associate to the
demand in the Primary goal and
Primary target fields respectively.

1. Open the required program.
2. On the form, enter the goal that you
want to associate to the program
in the Primary goal and Primary
target fields respectively.

Agile
rm_feature_admin
Development
2.0

Scaled Agile
Framework

Steps to associate the primary goal

safe_art_user or
safe_admin

Agile
scrum_story_creator
Development
2.0

Scaled Agile
Framework

safe_art_user

Strategic
Planning

sn_align_core.apw_user

1. Open the required feature.
2. On the form, enter the goal or target
that you want to associate to the
feature in the Primary goal and
Primary target fields respectively.

1. Open the required feature.
2. On the form, enter the goal or target
that you want to associate to the
feature in the Primary goal and
Primary target fields respectively.

1. Open the required epic.
2. On the form, enter the goal or
target that you want to associate to
the epic in the Primary goal and
Primary target fields respectively.

1. Open the required epic.
2. On the form, enter the goal or
target that you want to associate to
the epic in the Primary goal and
Primary target fields respectively.

1. Open the required planning item.
2. On the form, enter the goal or
target that you want to associate to
the planning item in the Primary
goal and Primary target fields
respectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Goal Framework and Goal Framework for SPM reference
Reference information to provide additional details about Goal Framework and Goal Framework
for SPM such as the fields, user roles, and tables.

Components installed with Goal Framework and Goal Framework for SPM
Several types of components are installed with the installation of the Goal Framework and
Goal Framework for Strategic Portfolio Management (SPM) applications, including user roles,
scheduled jobs, tables, and scripts.

Roles installed
Role

Description

Contains roles

sn_gf.goal_user_read

Can view the goals. This role can be
given to users such as the project
user and demand user.

None

sn_gf.goal_user

• Can create, view, edit, and delete
goals, sub-goals, and associated
targets.

sn_gf.goal_user_read

Note:
◦ A goal or sub-goal can
be deleted only by the
owner and contributors of
the goal or its immediate
parent goal when the
sn_gf.allow_goal_deletion
system property is set to
Yes.
◦ An associated target
can be deleted only
by the owner and
contributors of the target
or its goal when the
sn_gf.allow_goal_deletion
system property is set to
Yes.
◦ A goal can be edited
only by the owner and
contributors of the goal or
its immediate parent goal.
◦ A target can be edited
only by the owner and
contributors of the target
or its goal.
• Can remove the existing
goal relationships between
work item and goal, from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
Role

Description

Contains roles

the Goal Relationship
[sn_gf_goal_m2m_relationship]
table.
sn_gf.goal_admin

• Create goals and targets.

• sn_gf.goal_user_read

• Edit goals and targets created by
other users.

• sn_gf.goal_user

• Can update the goal preferences.
• Can create target sources and
context variables as part of
enabling the target automation
feature.

Note: Creating target
sources and context
variables is available when
Goal Framework for SPM is
installed.
sn_gf.strategy_planner_read

Can view all strategic plans and
strategic values.

None

sn_gf.strategy_planner

Can create, view, edit, and delete
strategic plans and strategic values.

sn_gf.strategy_planner_read

Note:
• A strategic plan can be
edited only by the owner
and sponsor of the strategic
plan.
• A strategic value can be
edited only by the sponsor
of the strategic plan.
sn_gf.epmo_strategy_planner Can create, view, edit, and delete
any goal.

• sn_gf.goal_user_read
• sn_gf.goal_user
• sn_gf.goal_admin
• sn_gf.strategy_planner

Scheduled jobs installed
Goal Framework scheduled jobs
Scheduled job

Description

Migrate Goal,
Strategy, and Work
item data to the

Migrates the existing goals data to the Goal Framework tables. For
information on what data is migrated and how the data can be migrated,
see goal data migration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
Goal Framework scheduled jobs (continued)
Scheduled job

Description

Goal Framework and
related Planning item
tables
Migrate goal
relationships for
assigned entities

(For Strategic Planning users) Populates the fields, Assigned entity
type and Assigned entity on the Goal form based on the data in the
Goal Relationship [sn_gf_goal_m2m_relationship] table if you have
created m2m relationship with lens entities other than Company,
Business Unit, Department, and Portfolio.

Goal Framework for SPM scheduled jobs
Scheduled job

Description

Update Actual value of the targets using Goal
Framework for SPM

Updates the actual value of the targets by
collecting the data from the respective target
sources, so that the progress of the targets
is updated and then the targets' progress is
rolled up to the goals.

Tables installed
Goal Framework tables
Display name [Table name]

Description

Goal

Stores the goal details.

[sn_gf_goal]
Goal Core
[sn_gf_core_goal]

Stores the core (basic) details for the goal. The Goal
[sn_gf_goal] table extends the Goal Core [sn_gf_core_goal]
table.

Target

Stores the target details for the goal.

[sn_gf_goal_target]
Units
[sn_gf_units]
Target Progress

Stores the available units for measuring the progress of
targets.
Stores the target progress details for the goal.

[sn_gf_goal_target_progress]
Goal Relationship

Defines the relationship between a goal and items (Project,
Demand, Program, Scrum Epic, Scrum Feature, and Planning
[sn_gf_goal_m2m_relationship] item).
Strategic Plan
[sn_gf_strategic_plan]

Stores the strategic plans defined for each planning
organization hierarchy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Goal Framework tables (continued)
Display name [Table name]

Description

Note: This table is visible only when Alignment Planner
Workspace (APW) is installed.
Strategic Priority

Stores the strategic priorities defined for the organization.

[sn_gf_strategy]
Strategy Value

Stores the strategic values for strategic plans.

[sn_gf_strategy_value]

Note: This table is visible only when APW is installed.

Goal Framework for SPM tables
Display name [Table name]

Description

Context Variable

Stores the context variable details for the
target source.

[sn_gfa_context_variable]
Target Breakdown

Stores the target breakdown details for
the target that were created based on the
breakdown intervals specified for the target.

[sn_gfa_target_breakdown]
Target Source

Stores the target source configuration details
for automating the actual value of the targets.

[sn_gfa_target_source]

Custom scripts installed
Goal Framework for SPM custom scripts
Name

Description

Benefit
Plans

Predefined script that updates the Actual value field on the target form by fetching
the required value from the Actual benefit field or Non-monetary actual benefit
field from the monetary or non-monetary benefit plan records. For the script
template, see Target automation script for benefit plans.

A target
source
with
predefined
script.

Note: You can use the Benefit Plans custom script only when PPM
Standard (Project Portfolio Management) is installed.

System properties installed
Goal Framework system properties
Name

Description

glide.ui.sn_gf_goal_target_activity.field Option to enable activity stream for fields of the
targets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
Goal Framework system properties (continued)
Name

Description

sn_gf.allow_goal_deletion

Option to enable deletion of goals. The default value is
true.

sn_gf.allow_target_deletion

Option to enable deletion of targets. The default value
is true.

sn_gf.goal_calendar_type

Option to set calender type for setting goals. The
available calendar types are Gregorian Calendar and
Fiscal Period. The default value is Gregorian Calendar.

sn_gf.weighted_average_enabled

Option to enable the weighted average logic to
calculate the progress of goals from their subgoals and
targets.

Goal Framework for SPM system properties
Name

Description

sn_gfa_disable_target_breakdown

Option to enable the target breakdowns feature at the
instance level. The default value is false.

sn_gfa.target_breakdown_decimals

Option to define the number of decimals to show for
target values while generating the target breakdowns.
The default value is 2.

sn_gfa.weeklyCheckInDayToMapMonth Option to define end day of the week for weekly target
breakdowns mapping to month. The default value is
Friday.

Context Variable form
Use the Context Variable form to create a context variable for a target source for calculating the
actual value of the target based on the configured input values.
Context Variable form
Field

Description

Type

Context variable type.
For information about the different field types, see Field types

.

Application

Name of the application scope.

Label

Name of the label that the context variable type is created for.

Column name

ID of the context variable for which the context variable type is created.

Choice List
Specification

Option to display the context variables on the Target form in the Actual
Value Source Configuration section.

Default value

Default value to consider for updating the actual value of the target.

Goal Assigned Entity Configuration form
Use the Goal Assigned Entity Configuration form to configure a table for an assigned entity type
so that the goal user can associate goals with the required assigned entity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Goal Assigned Entity Configuration form
Field

Description

Assigned entity table

Entity table that a goal is assigned to.

Application

Name of the application scope.

Assigned entity field

Reference field on the goal form.

Goal form
Use the Goal form to create goals for your organizational strategic priorities.

Note: For Operational Sustainability Workspace and Strategic Planning users, to view the
other fields (that aren’t added to the default or your custom form view) on the form in the
workspace, configure the default/custom form layout. For information on how to configure
the form layout, see Configuring the form layout .
Goal form
Field

Description

Name

Name of the goal.

State

State of the goal. The state can be Draft, In progress, Approved, Complete,
Pending, Achieved, or Not Achieved.

Parent goal

Name of the parent goal that this goal contributes to.

Strategic
priority

Name of the strategic priority that this goal is created for.

Start date

Start date for the goal. By default, the start date of the current quarter is
populated. For a subgoal, start date of its parent goal is populated.

End date

End date for the goal. By default, the end date of the current quarter is
populated. For a subgoal, the end date of its parent goal is populated.

Owner

Owner of the goal. By default, the name of the user creating the goal is
populated.

Category

Category of the goal. The available options are:
• Total Applications
• Total Cost
• Opex
• Capex
• Cloud Applications
• Homegrown Applications
• Support Cost
• Labor Cost
• Standards Compliance
• Strategic
• Operational

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
Goal form (continued)
Field

Description

• Tactical
• Artificial Intelligence
Status

Status of the goal. Status can be Red, Yellow, Green, or None.

Contributors

Users who contribute to the achievement of the goal.

Team

Assignment group responsible for different activities in achieving the goal.

Impact on
parent goal

A numerical value that represents the importance of this goal relative to sibling
goals or other goals under its parent goal. By default, the value is (1) Neutral.
The available options are:
• (0) No impact
• (1) Neutral
• (2) Moderate
• (3) High
• (4) Very high
• (5) Maximum

Note: This field is available only when the

sn_gf.weighted_average_enabled system property is set to Yes.
Progress

Percentage complete for the goal. The progress value is calculated
automatically if the goal has sub-goals or/and targets.
For more information on how the progress value is calculated, see Progress
value calculation.

Assigned
entity type

Entity type to which the goal is assigned. For example, Business Unit,
Department, Company, or Portfolio.

Assigned
entity

Entity to which the goal is assigned.

Comments

Detailed comments for the goal to facilitate collaboration.

Classification Goal classification type. The available options are Environmental, Social, and
Governance. This field is applicable only for the Operational Sustainability
Workspace users.

Goal/Target Relationship form
Use the Goal/Target Relationship form to create a relationship between a goal and planning item,
strategic item, or any other item.

Note: If Goal Framework for SPM is not installed, the form name appear as Goal
Relationship.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Goal/Target Relationship form - Fields for planning and strategic item
Field

Description

Planning item type

Type of planning item.

Planning item

Planning item with which a goal relationship is created with the goal.

Goal/Target Relationship form - Fields for planning and strategic item - Fields for an item
(that is of entity type, Product Model)
Field

Description

Table

Name of the reference table.

Document
ID

Document ID of the column from the selected reference table.
The suggested values in this field depend on the reference table selected in the
Table field.

Goal Preferences form
Use the Goal Preferences form to manage goals such as the calendar type used for goal setting,
weighted average calculation for goal progress, and deletion of goals and targets.
Goal Preferences form
Property

Description

Enable the weighted
average logic to calculate
the progress of goals
from their sub-goals and
targets.

When enabled, the fields, Impact on parent goal andImpact
on goal appear in the Goal [sn_gf_goal] and Target
[sn_gf_goal_target] tables respectively. The progress value of the
parent goal is calculated by applying the Weighted Average logic.
The default value is Yes.
The progress value of a parent goal is calculated based on the
progress value and the value defined in the Impact on parent goal
andImpact on goal fields for sub-goals and targets respectively.
For more information on how the progress value is calculated, see
progress value calculation.

Allow deletion of goals.

Can delete the goals.
The default value is Yes.

Allow deletion of targets.

Can delete the targets.
The default value is Yes.

Note: When you delete a goal, its associated targets (if

any) are also deleted even though the Allow the deletion of
targets property is set to No.
Calendar type used for
setting goals.

Calendar type that is used for setting goals. The available
calendar types are Gregorian calendar and Fiscal period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Goal Preferences form (continued)
Property

Description

The default value is Gregorian calendar.
Disable target breakdowns Can disable the target breakdowns feature. When the feature is
at the instance level.
enabled, target breakdowns are automatically created based on
the breakdown interval set for the target.
The default value is false.

Progress value calculation
The progress or percentage complete value of goals is auto-calculated using different formulas.
The formula depends on whether the goal has only targets, a combination of sub-goals and
targets, and if it has weighted average calculation enabled.

Scenario

• The goal has targets.
• The goal doesn’t have sub-goals.

Formula used to calculate the progress value of the goal

Progress value of the goal = Sum of
progress values of its associated
targets / number of targets

• The Impact on goal field is
defined for targets.

• The goal has sub-goals and
targets.
• The Impact on parent goal
and Impact on goal fields are
defined for sub-goals and targets
respectively.

• The goal has two targets (target 1
and target 2).
• The goal doesn’t have sub-goals.
• The Impact on goal field is
defined for targets and the
sn_gf.weighted_average_enabled
system property is set to Yes.

• The goal has two targets (target 1
and target 2).
• The goal has two sub-goals (subgoal 1 and sub-goal 2).
• The Impact on parent goal
and Impact on goal fields are
defined for sub-goals and

Progress value of the goal = Sum of
progress values of its sub-goals and
associated targets / number of subgoals and targets

Progress value of the goal =
[(Progress of target 1 * Weight scale
of target 1) + (Progress of target 2
* Weight scale of target 2)] / (Weight
scale of target 1 + Weight scale of
target 2)

Progress value of the goal =
[(Progress of sub-goal 1 * Weight
scale of sub-goal 1) + (Progress of
sub-goal 2 * Weight scale of subgoal 2) + (Progress of target 1 *
Weight scale of target 1) + (Progress
of target 2 * Weight scale of target
2)] / (Weight scale of sub-goal 1 +
Weight scale of sub-goal 2 + Weight

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
Scenario

Formula used to calculate the progress value of the goal

targets respectively and the
scale of target 1 + Weight scale of
sn_gf.weighted_average_enabled target 2)
system property is set to Yes.

Consider a scenario where a goal (G1) has two targets (T1 and T2) and the Impact on goal field
for T1 and T2 is set to 2 and 3 respectively. The current Progress values of T1 and T2 are 40% and
20% respectively. In this case, the progress value for G1 is calculated as follows:
• Contribution of T1 towards G1 progress = 2/(2+3)*40 = 16%
• Contribution of T2 towards G1 progress = 3/(2+3)*20 = 12%
• Therefore, Progress of G1 = 16% +12% = 28%

Scheduled Script Execution form
Scheduled Jobs are automated pieces of work that can be performed at a specific time or on a
recurring schedule.

Migrate Goal, Strategy, and Work item data to the Goal Framework and related
Planning item tables
Use the Migrate Goal, Strategy, and Work item data to the Goal Framework and related
Planning item tables job to migrate the existing goals data to the Goal Framework tables.
Scheduled Script Execution form
Parameter

migrateGoalData

Description

• Migrates all existing goal records from the Goal [goal]
table to the Goal [sn_gf_goal] table. The sys_id remains
the same. The corresponding target records will be
created in the Target [sn_gf_goal_target] table.
• Creates the existing relationship between the goal and
work items (Project, Demand, Program) in the Goal
Relationship [sn_gf_goal_m2m_relationship] table
with the first goal (from the order in the glide list) as the
primary goal.

migrateStrategyData

Migrates all existing strategy records from the Enterprise
Strategy [enterprise_strategy], Business Unit Strategy
[business_unit_strategy], and Strategic Objective
[strategic_objective] tables to the Strategic Priority
[sn_gf_strategy] table. The sys_id remains the same.

migratingGoalStrategyM2Mdata

In Goal Framework, a goal can be mapped to only one
strategy. If an existing goal has two strategies mapped to it, a
clone of the goal will be created (one as a generic goal and
another as a sub-goal) with the same strategy populated for
both. And, for the sub-goal, the first goal will be set as the
parent goal.
For example, consider a scenario where an existing goal
(G1) is mapped to five strategies (S1, S2, S3, S4, and S5).
Then, four clones of G1 will be created as sub-goals (G2, G3,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
Scheduled Script Execution form (continued)
Parameter

Description

G4, and G5) and the parent goal is populated as G1. For the
parent goal (G1) and the sub-goals (G2, G3, G4, and G5), the
Strategy field is populated respectively (S1, S2, S3, S4, and
S5).

Note: The name of the cloned sub-goal will be
prefixed with Cloned SubGoal:, followed by the
parent goal name.
migrateStrategyWorkItemRelData

• Migrates the existing relationship of strategy and work
items (Project, Demand, Program) to the Goal Relationship
[sn_gf_goal_m2m_relationship] table.
• If a goal doesn't have an association between the
strategy (as current strategy) and the work item in the
Goal Relationship [sn_gf_goal_m2m_relationship] table,
a dummy goal will be created with a strategy value of
current strategy. And, a goal relationship is created
with the dummy goal and the work item in the Goal
Relationship [sn_gf_goal_m2m_relationship] table.

Note: The name of the dummy goal will be prefixed
with Goal:, followed by the strategy name.

Migrate goal relationships for assigned entities
Use the Migrate goal relationships for assigned entities job to populate the fields, Assigned
entity type and Assigned entity on the Goal form based on the existing values in the legacy
fields, Business Unit, Department, Company, Portfolio, and any customized entity field.
Scheduled Script Execution form
Parameter

Description

Migrate goal
relationships
for assigned
entities

(For Strategic Planning users) Populates the fields, Assigned entity type and
Assigned entity on the Goal form based on the data in the Goal Relationship
[sn_gf_goal_m2m_relationship] table if you've created an m2m relationship with
lens entities other than Company, Business Unit, Department, and Portfolio.
If users had already created m2m relationship, they may use this script to move
those relationships from the m2m table to the goals table to access and manage
those goals in the respective portfolio plans.
If the goal has only one relationship with an assign entity table type, the Assign
entity type and Assign entity fields are populated on the Goal [sn_gf_goal]
table based on the Goal Relationship [sn_gf_goal_m2m_relationship] table.
If the goal has multiple relationships with an assign entity table type, number of
relationships (n) cloned sub-goals will be created and the Assign entity type
and Assign entity fields are populated on the Goal [sn_gf_goal] table based on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
Scheduled Script Execution form (continued)
Parameter

Description

the data in the Goal Relationship [sn_gf_goal_m2m_relationship] table for each
cloned sub-goal.

Strategic Plan form
Use the Strategic Plan form to define the purpose of your organization, its strategic priorities, and
the associated goals.
Strategic Plan form
Field

Description

Name

Name of the strategic plan.

Sponsor

Sponsor for the strategic plan.

Start date

Start date for the strategic plan.

End date

End date for the strategic plan.

Description A detailed description of the strategic plan.
Vision

A brief description about where your organization’s business will be at some point
in the future, based on its strategies and associated goals.

Mission

A brief description about what your organization’s objectives are and its approach
to reach those objectives.

Strategic Priority form
Use the Strategic Priority form to orient your organization strategic plan toward your goal.
Strategic Priority form
Field

Description

Name

Name of the strategic priority.

Parent

Name of the parent strategic priority that this strategic priority contributes to.

Owner

Owner of the strategic priority. By default, the name of the user creating the
strategy is populated.

Start date

Start date for the strategic priority.

End date

End date for the strategic priority.

Type

Strategic priority type. The available options are:
• Key Initiative
• Shared Vision
• Strategic Target
• Operating Principle
• Relationship Strategy
• Environmental

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
Strategic Priority form (continued)
Field

Description

• Social
• Governance
• Artificial Intelligence
Strategic
Plan

Name of the strategic plan for which this strategic priority is created.

Description A detailed description of the strategic priority.
You can refine strategic priority description using the Refine records skill, if the
Now Assist for SPM application is installed.

Target automation script for benefit plans
Use the predefined Benefit Plans script as a target source to automate the actual value of your
targets from the benefit plans of relevant work items.
Use the following predefined benefit plans script to configure the target source for your targets.
The script fetches the required data for monetary or non-monetary benefit plans and updates
the actual value for the target. You can use this script as is or you can also modify it according to
your requirement. You can also create context variables and configure them for this target source
(Benefit Plans).
result = '';
var benefitPlans = new
GlideRecord(sn_gfa.GFAdvancedConstants.BENEFIT_PLAN_TABLE);
benefitPlans.addQuery('sys_id', 'IN', benefit_plan);
benefitPlans.query();
var nonMonetaryBenefitSum = 0;
var monetaryBenefitSum = 0;
var hasMonetary = false;
var hasNonMonetary = false;
while (benefitPlans.next() && !(hasMonetary && hasNonMonetary))
{
if (!gs.nil(benefitPlans.getValue('currency'))) {
monetaryBenefitSum +=
parseInt(benefitPlans.getValue('actual_benefit'));
hasMonetary = true;
} else {
nonMonetaryBenefitSum +=
parseInt(benefitPlans.getValue('nm_actual_benefit'));
hasNonMonetary = true;
}
}
if (hasMonetary && hasNonMonetary)
gs.addErrorMessage(gs.getMessage('The Benefit Plan list can
contain either monetary or non-monetary benefit plans.'));
else

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
result = hasMonetary ? monetaryBenefitSum :
nonMonetaryBenefitSum;

Target Breakdown form
Use the Target Breakdown form to track and measure the progress of the target and its goal.
The form is available when the Goal Framework for SPM application is installed.
Target Breakdown form
Field

Description

Breakdown
period

Period of the target breakdown.

Parent
breakdown

Year of the target breakdown.

Target

Parent target of the target breakdown.

Status

Status of the target breakdown. The status can be Red, Yellow, or Green.

Breakdown

Breakdown interval specified in the parent target.

Planned target

Target value for the target breakdown.

Actual

Actual value for the target breakdown.

Remark

Remark entered by the user for business justification when updating the
actuals.

Target form
Use the Target form to track and measure the progress of the goals.
Some of the fields on the form is available when the Goal Framework for SPM application is
installed.

Note: For Operational Sustainability Workspace and Strategic Planning users, to view the
other fields that aren't added to the default view or your custom form view on the form in the
workspace, configure the default or custom form layout. For information on how to configure
the form layout, see Configuring the form layout .
Target form
Field

Description

Name

Name of the target.

Goal

Name of the associated goal. This field is auto-populated when creating a target
from the Targets related list on the Goal form.

Description

Brief description of the target.
You can refine target description using the Refine records skill, if the Now Assist
for SPM application is installed.

State

State of the target. The state can be Draft, In progress, Approved, or Complete.

Status

Status of the target. The status can be Red, Yellow, or Green.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
Target form (continued)
Field

Description

Progress

Percentage of target execution that is complete. The value is calculated
automatically.
If the Type field is set to Maximize, the progress value is calculated using the
following formula.
Progress = (Actual value - Base value) / (Target
value - Base value) x 100
If the Type field is set to Minimize, the progress value is calculated using the
following formula.
Progress = (Base value - Actual value) / (Base value
- Target value) x 100
For more information on how the progress value is calculated when weight scale
is defined, see progress value calculation.

Impact on
goal

A numerical value that represents the importance of the target relative to
the other targets of the goal. If there are any sub-goals present, they are also
considered for relative weights and consequent progress calculation. By default,
the value is (1) Neutral.
The available options are:
• (0) No impact
• (1) Neutral
• (2) Moderate
• (3) High
• (4) Very high
• (5) Maximum

Note: This field is available only when the

sn_gf.weighted_average_enabled system property is set to Yes.
Owner

Owner of the target. By default, the name of the user creating the target is
populated.

Contributors Users who contribute to the achievement of the target. By default, the
contributors of the associated goal are populated.
Duration section of the Target form
Field

Description

Start date

Start date for the target. By default, the start
date of its associated goal is populated.

End date

End date for the target. By default, the end
date of its associated goal is populated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
Metrics section of the Target form
Field

Description

Unit of measure

Measure type for the specified value. Usage
of the measure such as cost, time, and rate.
The available measure types are stored in
the Units [sn_gf_units] table. Unit of measure
defines the type of the target as qualitative or
quantitative. The available unit of measures for
quantitative target are #, $, %, and Days. The
available unit of measure for qualitative target
is Yes/No.

Type

Target type that signifies the direction of
achievement.
• Maximize: The direction of the progress is
toward the target value from the base value
where the base value must be less than the
target value.
• Minimize: The direction of the progress is
toward the target value from the base value
where the target value must be less than the
base value.
• Milestone: Fixed type. Only the qualitative
target values are allowed (that are set in
the Unit of measure field for the target)
to capture the achievement of the target.
The Milestone option is applicable only for
qualitative targets.
The Type field becomes read-only with the
value populated as Milestone for qualitative
targets (when the Unit of measure field is set
to a qualitative target value).

Start value

Start value of the target. The start value can
also be considered as the present or current
value.
This field becomes read-only when a value
is entered in the Actual value field. Clear the
Actual value field to update a value in the
Base value field.
This field is available when the Type field is set
to Maximize or Minimize.

Final target value

Final target value of the target. The target
value should be aspirational and should
challenge the teams.
This field is available when the Type field is set
to Maximize or Minimize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
Metrics section of the Target form (continued)
Field

Description

Baseline reference

Past achievement of the target to provide
reference for future performance. This value is
only for reference purpose and not considered
for target progress calculation.

Actuals to date

Actual value of the target at a given time.
This field is available when the Type field is set
to Maximize or Minimize.

Check-in frequency

Option to specify breakdown intervals for
the target and how frequently the owner or
contributor should update the actual value
of the target. Breaking down the target into
smaller periods helps you set a target for
smaller periods and focus on the specific
breakdown targets. The available options
are Daily, Weekly, Monthly, Quarterly, and
Yearly. Target breakdowns are automatically
created when you set this field to any of the
available options other than None. For more
details on target breakdowns, see Target
breakdowns in Strategic Planning.

Note: The target breakdowns feature
isn’t supported for qualitative targets.
Target value distribution

Option to specify the target to be calculated
cumulatively or non-cumulatively. The
available options are Split equally across the
time period (non-cumulative) and Spread
linearly across the time period (cumulative).
This field is available only when the Check-in
frequency field is set to any of the available
options other than None.

Remark

Remark entered by the user for business
justification when updating the actuals.

Check-in due date

Due date that the owner or contributor of the
target must update the actual value of the
target to.

Confidential

Option to restrict the access for this target
record to the specific users populated in the
Allowed groups and Allowed users fields.
This field is available when the ESG
Management application is installed and the

sn_grc.enable_record_confidentiality
property is enabled. This field is applicable
only when the Classification field in the
goal form of the target is populated as
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


<!-- page 882 -->
Metrics section of the Target form (continued)
Field

Description

Environmental, Social, or Governance.
The required role to configure this field is
sn_esg.reader.

Note: Irrespective of the target record
set to confidential or not, the target
progress value rolls up to its goal for
calculating the progress value of the
goal.
Allowed groups

User groups who can access the target record.
This field is applicable only for the Operational
Sustainability Workspace users.
Even though a user group is populated
in this field, the users can access the
confidential record only if the user group has
the sn_esg.reader role.
This field is available when the Confidential
field is set to true.

Allowed users

Users who can access the target record. This
field is applicable only for the Operational
Sustainability Workspace users.
Even though a user name is populated in this
field, the user can access the confidential
record only if the user has the sn_esg.reader
role.
This field is available when the Confidential
field is set to true.

Comments

Detailed comments for the target to facilitate
collaboration.

Target Automation section of the Target form
Field

Description

Automate actual value

Option to enable the target automation feature
for the target.

Actual value source

Target source table that the data is fetched
from to auto-update the actual value of the
target on the target's review due date.
This field is available when the Automate
actual value field is set to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


<!-- page 883 -->
Variables section of the Target form
This section appears based on the context variables available in the target source that is
selected in the Actual value source field.
When you select Actual value source as Benefit Plans (predefined target automation script for
benefit plans), the Benefit Plan field appears in this section, from which you can select the
required benefit plans for automating the actual value of the target.

Note: You can use the Benefit Plans custom script only when PPM Standard (Project
Portfolio Management) is installed. If you can't find the benefit plan that you want to select,
you can find and select the same from Heisenberg UI by navigate to Enterprise Goal
Management > Targets and opening the Target form.

Target Source form
Use the Target Source form to create and configure a source for your targets so that the actual
value of the target is auto-updated.
Target Source form
Field

Description

Name

Name of the target source.

Active

Option to activate this target source for use.

Type

Type of target source. Available options:
• Assessment/Survey
• PA Indicator
• Custom script

Advanced

Enables the Custom script option for the target source type Assessment/
Survey with the pre-defined script.
This field is available when the Type field is set to Assessment/Survey.

Assessment
metric type

Assessment metric type for the target source.

Tip: A context variable is automatically created for the target source
if the field is populated with a metric type of Evaluation method =
Assessment.
This field is available when the Type field is set to Assessment/Survey.

Assessment
metric
category

Assessment metric category for the assessment metric type.

Description

Brief description of the target source.

PA Indicator

PA Indicator for the target source.

This field is available when the Type field is set to Assessment/Survey.

This field is available when the Type field is set to PA Indicator.
Breakdown

Breakdown for the PA Indicator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


