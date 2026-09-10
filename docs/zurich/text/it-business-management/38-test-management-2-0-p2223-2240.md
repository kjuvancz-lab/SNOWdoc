# Zurich Strategic Portfolio Management — Test Management 2.0

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2223–2240 of 2289

Sections: Test Management 2.0 (p2223)

---

<!-- page 2223 -->
3. Click the Sign-off Test Plan related link.
4. In the Sign Off section, enter any additional information in the Comments field.
5. Optional: Review the user in the Sign-off By field.
6. Optional: Review the date in the Sign-off Date field.
7. Click Submit.

Test Management 2.0
®

The ServiceNow Test Management 2.0 application streamlines the management of testing
processes to help you deliver software products more efficiently and with fewer errors. You can
create multiple versions of a test and integrate with Agile Development 2.0.
To learn about the different versions of Test Management and to choose the version that helps
you meet your testing requirements, see Test Management applications.

Explore

Set up

• Test Management 2.0
overview

• Activate Test Management
2.0

• Testing using Test
Management 2.0

• Quick start tests for Test
Management 2.0

Use
Test Board in Test
Management 2.0

• Sprint testing

Develop

Troubleshoot and get help

• Developer training

• Ask or answer questions in
the Business Management
community

• Developer documentation
• Installed with Test
Management 2.0

• Search the Known Error
Portal for known error
articles
• Contact Customer Service
and Support

Test Management 2.0 overview
Test Management 2.0 helps you deliver software products more efficiently and with fewer defects
by managing and streamlining testing processes for both testers and managers. You can create
multiple versions of a test and integrate with Agile Development 2.0.
To learn about the different versions of Test Management and to choose the version that helps
you meet your testing requirements, see Test Management applications.

User

Description

Tester

Can run tests and report defects on a software product by:
• Creating tests and test sets.
• Performing tests and recording test results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2223


<!-- page 2224 -->
User

Description

• Updating status of tests.
• Reporting defects and retesting, if needed.
Test
Can set up and monitor the manual testing process of a software product by:
Manager
• Creating and maintaining tests and test sets.
• Evaluating the tests, test steps, and test sets created by testers.
• Facilitating test execution by creating test plans, fragmenting a test plan into test
cycles, and test cycles into test execution suites.
• Initiating a testing process by assigning tests to testers and then monitoring
overall progress.
• Assessing test results and closing a test plan.

Key terminology
The following section describes the key terms used in Test Management 2.0.

Term Description

Test

A collection of conditions or steps used to determine whether a feature is working
correctly. A test can also include an expected result, which is used to determine if the
test case passes or fails.
You can use the Tests module to create and maintain different versions of a test.

Test
set

A collection of related tests. A test can be a part of one or more test sets.

Test
plan

Plan describing how a product or a feature is to be tested and the time frame in which it
must be executed. A test plan can be further broken into test cycles, and test cycles into
test execution suites.

You can use the Test Sets module to create a test set and group related tests into that
test set.

You can use the Test Plans module to create test plans.
Test A collection of related tests. A test case is saved as part of a test suite and can be added
case to a test plan. Each test case within a test plan has an assigned tester.
Runs Detailed report of tests results, such as start time and end time of test execution,
environment details, result of test execution.
You can use the Run module to view the test results.

Activate Test Management 2.0
Activate the Test Management 2.0 plugin (com.snc.test_management.2.0) if you've the admin
role.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2224


<!-- page 2225 -->
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
Installed with Test Management 2.0
Several types of components are installed with activation of the Test Management 2.0 plugin
(com.snc.sdlc.test_management), including tables, and user roles.

Roles installed
Role

Description

Tester

Can create tests, and group None
similar tests to a test set.

[sn_test_management.tester]

Contains roles

Test Manager

Can create tests, group
similar tests into test sets,
sn_test_management.test_manager manage test plans, and
view the run results.

sn_test_management.tester

Tables installed
Table

Description

Task Test

Associates tests to multiple scrum tasks.

[sn_test_management_m2m_task_test]
Test Set Test

Associates tests to multiple test sets.

[sn_test_management_m2m_test_set_test]
Planned Test Task

Extends the Planned Task table.

[sn_test_management_planned_task]
Steps

Stores details of test steps.

[sn_test_management_step]
Step Result

Stores details of step results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2225


<!-- page 2226 -->
Table

Description

[sn_test_management_step_result]
Test

Stores details of tests.

[sn_test_management_test]
Test Execution Assignment

Stores the linking of tests to testers.

[sn_test_management_test_assignment]
Test Cycle

Stores details of test cycles.

[sn_test_management_test_cycle]
Test Environment

Stores details of test environments.

[sn_test_management_test_environment]
Test Execution Suite

Stores details of test execution suites.

[sn_test_management_test_execution_suite]
Test Plan

Stores details of test plans.

[sn_test_management_test_plan]
Test Result

Stores details of test results.

[sn_test_management_test_result]
Test Run

Stores details of test runs.

[sn_test_management_test_run]
Test Set

Stores details of test sets.

[sn_test_management_test_set]
Test Version

Stores details of test versions.

[sn_test_management_test_version]

Business stakeholder role for Test Management 2.0
Use the business stakeholder role to read and retrieve data from any table of the Test
Management 2.0 applications to generate reports.
When you activate the Business Stakeholder plugin (com.snc.business_stakeholder)
in your ServiceNow instance, the Read only roles for Test Management 2.0 plugin
(com.snc.tm2_read_roles) is also activated. This plugin provides a business stakeholder role
(sn_tm2_read) with which you can access all the tables of Test Management 2.0 application. This
role also allows read-only access to the Test Management dashboard. You can assign this role to
any user in your organization who is a business stakeholder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2226


<!-- page 2227 -->
Plugin availability
If you are a new customer, the Read only roles for Test Management 2.0 plugin
(com.snc.tm2_read_roles) is activated on zBoot. However, the business stakeholder
role (sn_tm2_read) is available only when you activate the Test Management 2.0 plugin
(com.snc.test_management.2.0).
If you are an upgrade customer, you must manually activate the Read only roles for Test
Management 2.0 plugin (com.snc.tm2_read_roles).

Test Management 2.0 tables accessible by users with the business stakeholder
role
When the read-only roles for Test Management 2.0 plugin (com.snc.tm2_read_roles) and Test
Management 2.0 plugin (com.snc.test_management.2.0) are active in your ServiceNow instance,
the user with the business stakeholder role (sn_tm2_read) has read access to the following
tables.
Test Management 2.0 tables
Table

Description

Task Test

Associates tests to multiple scrum tasks.

[sn_test_management_m2m_task_test]
Test Set Test

Associates tests to multiple test sets.

[sn_test_management_m2m_test_set_test]
Planned Test Task

Extends the Planned Task table.

[sn_test_management_planned_task]
Steps

Stores details of test steps.

[sn_test_management_step]
Step Result

Stores details of step results.

[sn_test_management_step_result]
Test

Stores details of tests.

[sn_test_management_test]
Test Execution Assignment

Stores the linking of tests to testers.

[sn_test_management_test_assignment]
Test Cycle

Stores details of test cycles.

[sn_test_management_test_cycle]
Test Environment

Stores details of test environments.

[sn_test_management_test_environment]
Test Execution Suite

Stores details of test execution suites.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2227


<!-- page 2228 -->
Test Management 2.0 tables (continued)
Table

Description

[sn_test_management_test_execution_suite]
Test Plan

Stores details of test plans.

[sn_test_management_test_plan]
Test Result

Stores details of test results.

[sn_test_management_test_result]
Test Run

Stores details of test runs.

[sn_test_management_test_run]
Test Set

Stores details of test sets.

[sn_test_management_test_set]
Test Version

Stores details of test versions.

[sn_test_management_test_version]

Quick start tests for Test Management 2.0
Validate that Test Management 2.0 still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.
Test Management 2.0 quick start tests require activating the Test Management 2.0
plugin (com.snc.test_management.2.0). and the Test Management 2.0 - ATF Tests plugin
(com.snc.test_management.2.0.atf).
Test Management 2.0: Test version test suite
Test

Description

Release version

Create test version should
create test

Validate test creation and
version.

Madrid

Should be able to mark test
version as ready when it
contains verification steps

Validate test state when test
has verification steps.

Madrid

Should not able to mark test
version as ready when it does
not contain verification step

Validate test state when test
does not have verification
steps.

Madrid

Marking a test version as
ready should retire other test
version in ready state

Validate test state when
marking test ready.

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2228


<!-- page 2229 -->
Test Management 2.0: Test results rollup test suite
Test

Description

Release
version

When test run closed, should update
execution suite progress

Validate execution state progress.

Madrid

Should not be able to assign a test not in
ready state

Validate test assignment.

Madrid

Test progress should roll up for test plan and
test cycle

Validate test progress for test plan
and test cycle.

Madrid

Related topics
Quick start tests

Testing using Test Management 2.0
You can use Test Management 2.0 for general testing such as testing a phase in a release,
testing a set of features or products before their market launch, or performing release readiness
testing on integration and accessibility (for new software).
General testing comprises the following steps:
1. Creating tests. See Create a test in Test Management 2.0
2. Creating test sets, and grouping similar tests into a test set. See Create a test set in Test
Management 2.0.
3. Using the Test Board feature to create a test plan. See Create a test plan using Test Board in
Test Management 2.0.
4. Structuring the test plan in the Planning tab of the Test Board.
◦ Breaking down the test plan into test cycles to plan and schedule the phases of the testing
effort. See Add and modify test cycles and test execution suites in Test Management 2.0.
◦ Breaking down the test cycles into test execution sets to schedule tests, and assign users to
run those tests. See Create a test execution suite in Test Management 2.0.
5. Running tests and viewing the test run results. See Run your test assignments in Test
Management 2.0.
Create a test in Test Management 2.0
Create a test specifying conditions or steps to determine whether a feature is working correctly.

Before you begin

Role required: sn_test_management.tester or sn_test_management.test_manager

Procedure
1. Create a test using either of the following options.
Option

From Test Management 2.0

Description

a. Navigate to Test Management 2.0 > Tests.
b. To create a test, click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2229


<!-- page 2230 -->
Option

Description

a. Navigate to Agile Development 2.0 > Agile
Board.
b. Click the Sprint Tracking Tab.
From Agile Development 2.0

c. Select the List view.
d. From the Show list at the top right corner,
select Tests.
e. Click Add Test.

2. In the Test version form, fill in the test name and add steps for your test.
3. Select Submit.
4. From the list of Tests, open the test that you just created.
5. From the Test versions related list, open the test version that you just created.
Test Version Form
Fields

Description

Test

Unique name of the test.

Owner

Owner who created the test.

Version

Automatically generated versio

State

Current state of the test.
◦ Draft: State of the test when

◦ Ready: State of the test when
test has multiple versions, on
state at any one time

◦ Retired: State of the test whe
Short description

Brief description about the test

Add Step

Button used to add step to a te

Change step order (

)

Icon used to change the order
and drag a step to the required

This icon is displayed next to a
Needs Verification

Check box used to mark a test

This icon is displayed after a te

If this checkbox is not selected
this step passed, failed, or is b
Delete a test step (
Run

)

Icon used to delete a test step.

Button used to run steps, which
test is in the Ready state.

See Run your test assignments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2230


<!-- page 2231 -->
Fields

Description

Update

Button used to update the deta

Ready

Button used to change the stat
Ready.

Create New Version

Button used to create another

Delete

Button used to delete the test v

6. Click Submit.
Test version form example

What to do next

To add a test to a test set:
1. Select the test from the Test list.
2. Click Add to Test Set.
Create a test set in Test Management 2.0
Group related tests into a test set. Test sets help you find tests by category or tag.

Before you begin

Role required: sn_test_management.tester or sn_test_management.test_manager

Procedure
1. Navigate to All > Test Management 2.0 > Test Sets.
2. Click New.
3. Enter a name for the test set and click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2231


<!-- page 2232 -->
What to do next

You must add tests to the test set.
1. Navigate to Test Management 2.0 > Tests.
2. Select the required tests.
3. Click Add to Test Set.
4. In the Select Test Set window, search for the required test set and click Add.
Test Board in Test Management 2.0
Test Board gives you a comprehensive view of your test plans and enables you to manage test
plans more efficiently.
In Test Board, you can:
• Aggregate all your test plans and view them as cards at a single location. Each card displays
key details of your test plan such as the start and end date, percentage of tests that have
passed, percentage of tests that have failed, percentage of tests that have been blocked, and
number of days left for completion.
• Search for specific test plans by defining filter conditions such as name, duration, or owner.
• Track, manage, and complete your test plans from a single interface, which saves you time and
effort.
1. Define how a product or feature must be tested by creating a test plan.
2. Structure your test plan in the Planning tab. Break down your test plan into test cycles to
plan and schedule the phases of testing effort. Further break down your test cycles into test
execution sets, schedule the tests, and assign users to run those tests.
3. Monitor the progress and completion of your test plans.
Aggregated view of test plans in Test Board

Planning tasks
You can structure a test plan in the Test Board Planning tab, which provides the following
capabilities:
Test plan work item hierarchy
The Test plan work item hierarchy presents a wide variety of test plan information in
expandable rows. It provides a quick overview of the test plan, with test cycles and
test execution suites nested within the test plan.
In addition, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2232


<!-- page 2233 -->
• Modify the attributes (such as start and end time) of the test plan, test cycles,
and test execution suites rather than opening each form and modifying the field
values one by one.
• Add or delete test cycles and test execution suites, adjust their start and end
dates, and then assess the overall progress of the test plan.
• Configure the columns displayed in the Test plan work item hierarchy.
Gantt chart
The Gantt chart provides a visual representation of the timeline of the test plan
and its child tasks using a blue task bar. The length of the task bar pertaining to the
test plan increases and decreases depending on the adjustments you make to the
duration of its child tasks. You can also manually increase or decrease the duration
by dragging the edge of the task bar to the required location.
Test plan work item hierarchy and Gantt chart on the Planning tab

Create a test plan using Test Board in Test Management 2.0
Define how to test a product or feature by creating a test plan.

Before you begin

Role required: sn_test_management.test_manager

Procedure
1. Navigate to All > Test Management 2.0 > Test Board.
2. Click Create Test Plan.
3. In the form, fill in the fields:
Test Plan form
Field

Value

Name

Unique name for the test plan.

Planned start date

Planned date and time for starting the test plan execution.

4. Click OK.
The Details tab opens.
5. Provide, review, and edit the test plan details.
Field

Value

Planned
end date

Planned date and time for ending the test plan execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2233


<!-- page 2234 -->
Field

Value

Duration

Estimated duration of test plan. This is the difference between the planned start
date and the planned end date.

Number

Automatically generated unique ID number for the test plan.

Owner

Owner who created the test plan.

State

Current state of the test plan.
◦ Pending: Test plan is not yet ready to be performed.
◦ Open: Test plan is ready to be performed.
◦ Work in progress: Test plan is currently being performed.
◦ Closed complete: Test plan has been closed after completion.
◦ Closed incomplete: Test plan has been closed without completion.
◦ Closed skipped: Test has been closed without being performed.

Description

Description of the test plan.

Note: The Progress section displays the overall status of the test plan indicating the
percentage of tests in the test plan that have passed, failed, or been blocked.
Add and modify test cycles and test execution suites in Test Management 2.0
Add and modify test cycles and test execution suites from a single user interface without having
to switch between multiple user interfaces and forms.

Before you begin

Role required: sn_test_management.test_manager

Procedure
1. Navigate to All > Test Management 2.0 > Test Board.
2. Select the test plan.
3. Select the Planning tab.
4. Add or modify test plans and test execution suites in the Test plan work item hierarchy.
Option

Description

a. Select a test plan.
To add a test cycle

b. Right-click and select Add Test Cycle, or
click the add icon (

To edit a test cycle in a form

).

a. Select the test cycle.
b. Right-click and select Edit.

To delete a test cycle with its test execution a. Select the test cycle.
suites
b. Right-click and select Delete.
a. Select a test cycle.
To add a test execution suite

b. Right-click and select Add Execution Suite,
or click the add icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2234


<!-- page 2235 -->
Option

To edit a test execution suite in a form

To add tests to a test execution suite

To add test sets to a test execution suite

To hide or display columns

Description

a. Select the test execution suite.
b. Right-click and select Edit.
a. Select the test execution suite.
b. Right-click and select Add tests.
a. Select the test execution suite.
b. Right-click and select Add test sets.
a. Click the gear icon (

).

b. Select or deselect the required check box.
The column preferences are saved.

5. View the summary or adjust the duration of a task in the Gantt chart.
Option

Description

Point to a task.

To view the summary of a task

To change the planned start or end dates of
a task

Click the task, and drag the left or right edge
of the task bar to the required date.

To move a task to a new date

Click the task, and drag the whole task bar to
a new date.

To zoom the calendar in or out

On the top of the calendar, click one of the
time periods such as the month, or day. Then,
select a Zoom Level from the calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2235


<!-- page 2236 -->
Option

Description

When the zoom level in calender is selected
as Auto Fit, the Gantt view fits in one page so
that you can view the entire timeline for the
test plan without using the scrollbar.
Define a custom column in the Planning tab of Test Board in Test Management 2.0
Define a custom column to display information important to you in the Test plan work item
hierarchy section of the Planning tab. For example, define a column to view the percentage of
test plan that has been completed.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Test Management 2.0 > Settings > Planning Console.
2. Click the gear icon (

) at the top right corner of the page.

3. In the System Settings window:
a. Select the Developer section.
b. In the Application list, select Test Management and then close the window.
4. In the Planning Console Display Columns related list, click New.
5. In the Planning Console Display Column form, provide a label and other details for the column.
6. Click Submit.

What to do next

After you create a column, associate the column to the required table.
Create a test execution suite in Test Management 2.0
Create a short test plan when the testing effort is minimal and you do not want to go through the
overhead of creating a test plan and a test cycle for a test execution suite.

Before you begin

Role required: sn_test_management.test_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2236


<!-- page 2237 -->
Procedure
1. Navigate to All > Test Management 2.0 > Test Execution Suites.
2. In the form, fill in the fields:
Test Execution Suite form
Field

Description

Name

Unique name for the test execution suite.

Planned
start date

Planned date and time for starting the test execution suite.

Planned
end date

Planned date and time for ending the test execution suite.

Planned
duration

Estimated duration for the test execution suite. This duration is the difference
between the planned start date and the planned end date.

Number

Automatically generated number for the test execution suite.

State

Current state of the test execution suite.

Assignment Group working on test execution suite.
group
Progress section of the Test Execution form
Field

Description

Percent complete

Percentage of test execution suites that
have been completed. Value is calculated
automatically.

Percent passed

Percentage of test execution suites that have
passed. Value is calculated automatically.

Percent failed

Percentage of test execution suites that have
failed. Value is calculated automatically.

Percent blocked

Percentage of test execution suites that were
blocked. Value is calculated automatically.

3. Click Submit.

What to do next
• To add tests to the test execution suite, click Add tests. From the Tests list, select the required
tests, and click Add to Execution Suite.
• To add test sets to the test execution suite, click Add test sets. From the Test Sets list, select
the required test sets, and click Add to Execution Suite.
• In the Test execution assignments related list, select the test and assign it to a user.
Run your test assignments in Test Management 2.0
Run your test assignments and capture the results.

Before you begin

Role required: sn_test_management.tester
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2237


<!-- page 2238 -->
Procedure
1. Navigate to All > Test Management 2.0 > Tests Assigned to me.
2. Select the required tests and click Run.

Note: Only the tests that are in the Ready state can be run.
3. In the pop-up, select the execution environment on which the tests must be run.
4. In the Test Execution pop-up, mark a step as passed, failed, or blocked using the following
icons.
Icon

Description

Passed.
Failed. In this state options to add comments
and attachments are available.
Blocked. In this state options to add com­
ments and attachments are available.
To pause and work on the test at a later point in time, click Pause.
5. Click Done.

Result

Test results are saved to the Test Result form. The overall status of the test is defined by statuses
of the test steps:
• If all the test steps are passed, the status of the test is Passed.
• If at least one step of the test is not run, the status of the test is Not finished.
• If at least one step of the test fails, the overall status of the test is Failed.This rule takes
precedence over the previous rule.
• If at least one step of the test is blocked, the overall status of the test is Blocked. This rule
takes precedence over the previous two rules.

What to do next

View all the test results in the Test Management 2.0 > Test Runs.

Sprint testing
You can use Test Management 2.0 with Agile Development 2.0 to test the work of a scrum team
sprint-by-sprint.
Sprint testing comprises the following steps:
1. Creating tests for the stories in sprints.
2. Running tests, verifying the test results, and closing stories.

Test Management 2.0 integration with Agile Development 2.0
With the integration of Test Management 2.0 and Agile Development 2.0, you can perform sprint
testing from Agile Development 2.0 > Agile Board > Sprint Tracking.
• Find what tests are to be run for the sprint.
• Create tests for the stories in sprints.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2238


<!-- page 2239 -->
• Maintain multiple versions of a test.
• Run a single version of a test at one time.
• View which version of test has been run.
• Review the history of test results.
• Close stories.
Create a test for a story
Create a test, add steps to the test, and create and maintain different versions of the test. A test
is a collection of conditions or steps used to determine whether a story is working correctly. A
test can also include an expected result, which determines whether the test passes or fails.

Before you begin
• Role required: scrum_user or scrum_admin
• You can create a test from the List view only when Agile Development 2.0 is installed along with
Test Management 2.0.
• You must be a member of an agile group.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. Click the Sprint Tracking tab, and select the List view.
3. From the Show list at the top right corner, select Tests.
4. Click Add Test.
5. In the form, fill in the fields:
Test Version form
Field

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
◦ Ready: State of the test when it is not editable. When the test has multiple
versions, only one test will be in the Ready state at any one time
◦ Retired: State of the test when it is no longer used.

Short
description

Brief description about the test.

Add Step

Button used to add step to a test.

Run

Button used to run steps, which is displayed only when the test is in the Ready
state. See Run your tests from the List view.

Update

Button used to update the details of a test version.

Ready

Button used to change the state of the test version to ready.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2239


<!-- page 2240 -->
Field

Description

Create New
Version

Button used to create another version of the test.

Delete

Button used to delete the test version.

Change
step order

Icon used to change the order of a test step. Select the icon and drag the step
to the required location.

(

)

Needs
Verification

Check box used to mark a test step for verification.

Delete a test Icon used to delete a test step.
step (

)

Test Version form example

What to do next

View information in the following related lists:

Related list

Description

Other versions

Displays all the versions of a test.

Test Results

Displays the run results of each test version.

Test Sets

Displays related tests in a test set.

Run your tests from the List view
View the test scenario, execute all the steps of the test, and review the test result.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2240


