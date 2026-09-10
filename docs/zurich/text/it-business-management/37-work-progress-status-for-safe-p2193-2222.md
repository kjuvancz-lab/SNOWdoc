# Zurich Strategic Portfolio Management — Work Progress Status for SAFe / Test Management applications / Test Management 1.0

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2193–2222 of 2289

Sections: Work Progress Status for SAFe (p2193); Test Management applications (p2195); Domain separation and Test Management (p2196); Test Management 1.0 (p2197)

---

<!-- page 2193 -->
Procedure
1. Navigate to All > Performance Analytics > Indicators > Automated Indicators.
2. Search for and open the required indicator.
For example, if you want to customize the SAFe Burnup report, open SAFe: Sum of story points
of all stories in the feature in current sprint from the list of indicators.
3. In the Additional conditions section, modify the conditions according to your preferences.
4. Click Update.
Update UI scripts to use your indicators for Essential SAFe dashboards
Customize UI scripts by overriding methods in empty implementation (Impl) classes.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System UI > UI Scripts.
2. Search for and open the required UI script.
For example, if you want to customize the SAFe Sprint Cumulative Flow Diagram report, open
SAFeAreaChartImpl from the list of UI scripts.
3. Overwrite the base implementation according to your preferences.
4. Click Update.
Customize story states of your Essential SAFe dashboard reports
Configure story states to reflect your customizations on the Essential SAFe dashboards.

Before you begin

Role required: admin or pa_admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > Stories.
2. Open a story to which you would like to add the custom states.
3. Right-click State and select Configure Choices from the drop-down menu.
4. In the New item text field, enter the new custom state name.
5. In the Numeric value field, enter any corresponding number.
6. Click Add.
The new state appears in the Selected list.
7. Click Save.

Work Progress Status for SAFe
The Work Progress Status for SAFe application provides you with indicators such as estimated
completion date and progress status (green, yellow, red) for all your SAFe epics and features.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2193


<!-- page 2194 -->
Important:
Starting with the Xanadu release, the plugins Portfolio SAFe, Essential SAFe, Performance
Analytics Content Pack for Essential SAFe, Work Progress Status for SAFe, Agile - Scaled
Agile Framework - Unified Backlog, and Read only roles for SAFe are being prepared for
future deprecation. These plugins will be hidden and can no longer be activated on new
instances but will continue to be supported. Enterprise Agile Planning in Strategic Planning
provides the latest experience for this functionality.
For more information on the deprecation process and its impact, see the Application/Plugin
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
As a product owner or a team lead, these indicators help you understand if your SAFe team could
complete the work by the planned end dates so that you can adjust your plans accordingly.
As a team member working on SAFe stories, these status indicators help you understand your
contribution to the overall work and your progress so that you can review your work strategy if
necessary.

Note: You must enter a value for the Planned end date field for a SAFe feature or epic for
these work progress status indicators to populate.

Reviewing progress status for SAFe features and epics
Understand if your work would be completed by the planned end dates by reviewing progress
status of your SAFe features and epics.
Navigate to Scaled Agile Framework (SAFe) > Epics or Scaled Agile Framework (SAFe) >
Features and filter the records for your team.
The Status column of the list shows a Green, Yellow, or Red indicator for each record to indicate
the following:
• Green: Your work is on track to be complete by the planned end date.
• Yellow: Your work is off track and your plan of execution must be reviewed.
• Red: Your epic or feature is not progressing well and might be at risk of not being complete by
the planned end date.
The estimated completion date displays a date with the likelihood of the epic's or feature's
completion.
SAFe epic progress status

SAFe feature progress status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2194


<!-- page 2195 -->
The [SAFe] daily data collection job helps generate the burnup report for your epics and features.
Using the data generated for these epic burnup reports, an estimated completion date is
determined. You can see that this date is the intersection of Completed and Scope forecast
series in the respective burnup reports.
Based on this estimated completion date, the progress status for your SAFe epics and features is
determined. Progress status is calculated only under the following conditions:
• Planned end date is populated for the SAFe epic and feature.
• Percentage completion of the epic is a value greater than 0.
The color of the progress status indicator is determined using the following conditions:
• Green: Estimated completion date is on or before the planned end date.
• Yellow: Estimated completion date is beyond the planned end date by a deviation of 1% to 14%.
• Red: Estimated completion date is beyond the planned end date by a deviation of 15% or more.
Related topics
SAFe Feature Dashboard
SAFe Epic Dashboard

Test Management applications
®

The ServiceNow Test Management application streamlines the management of testing
processes to help you deliver software products more efficiently and with fewer errors.
Test Management is available in two versions.
• Test Management 2.0 offers many enhancements, including integration with Agile
Development 2.0 and Scaled Agile Framework (SAFe)
• Test Management 1.0 may have specific capabilities that are useful for your organization.
Use the following comparison to make an informed decision for your organization.

Differences between Test Management 1.0 and Test Management 2.0
Test Management 1.0 covers user acceptance testing. It does not include some key data model
structures like test versions, test runs, or test results. In addition, you cannot structure test plans
in Test Management 1.0.
Test Management 2.0 includes data model structures that match industry standards. It provides
you with an intuitive user interface called the Test Board from which you can structure test plans
and plan the phases of your testing effort.

Feature

Test Management 1.0

Test Management 2.0

Integration with no
Project Portfolio
Management

yes

Integration
with Agile
Development
2.0

yes

no

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2195


<!-- page 2196 -->
Feature

Test Management 1.0

Test Management 2.0

Integration with
Scaled Agile
Framework
(SAFe)

no

yes

Test version

You cannot create and
maintain multiple versions
of a test.

You can create and maintain multiple versions
of a test.

Test relation

You can associate a test to
one test suite only.

You can associate a test to multiple test sets,
test plans, and test cycles.

Time duration

You can create a test plan
describing how a product
or a feature is to be tested.

• You can create a test plan describing how a
product or a feature is to be tested and the
time frame in which the test plan must be run.
• You can further decompose a test plan into
test cycles, test cycles into test execution
sets, and specify a time range for their
execution.

Traceability of
test runs and
test results

You can:

You can:

• run a single test at a time.

• run a single test at a time.

• view the test result.

• view which version of test has been run.
• view the test result.

Note:
• If you are an existing Test Management user on a release prior to London, you are using
Test Management 1.0 activated through the Test Management (com.snc.test_mgmt)
plugin. See the Test Management 1.0 documentation for more information.
• If you are a new user, you can activate the Test Management 2.0
(com.snc.test_management.2.0) plugin as it provides enhanced testing capabilities. See
the Test Management 2.0documentation for more information.

Domain separation and Test Management
Domain separation is supported in Test Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2196


<!-- page 2197 -->
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Test Management 1.0
®

The ServiceNow Test Management 1.0 application provides a tool for manual software testing.
With the Test Management plugin (com.snc.test_mgmt), test managers and testers can perform
the following functions and manage all phases of the testing process.
• Create and maintain the test repository by creating test suites, test cases, and tests.
• Enable test execution by creating test plans, adding test cases, and assigning testers to test
cases.
• Initiate the testing process and monitor the progress.
• Perform tests and record test results.
• Update test case status.
• Report defects and retest, as necessary.
• Evaluate test results and complete the test plan sign-off form.
• View testing reports on the Test Management dashboard.

Activate Test Management
To activate the Test Management (com.snc.test_mgmt) plugin you must have an admin role.

Before you begin

Role required: admin

About this task

Note:

There are two ways to activate the Test Management plugin:
• As an individual application
• As part of the Project Portfolio Suite with Financials plugin.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2197


<!-- page 2198 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Components installed with Test Management
Several types of components are installed with activation of the Test Management plugin,
including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed

Role title [name]

Contains
roles

Description

Test manager

Manages test plans and test suites (metadata). Has all
privileges within test management, including planning,
[tm_test_manager] execution, and administration.

tm_tester

Tester

feature_user

Executes test cases and tests.

[tm_tester]

Tables installed
Table

Description

Test Case

Stores the test cases.

[tm_test_case]
Test Case Instance

Extends the Planned Task table.

[tm_test_case_instance]
Test Suite

Stores the test suites.

[tm_test_suite]
Test Environment

Stores the test environments.

[tm_test_environment]
Test

Stores the tests.

[tm_test]
Test Instance

Stores the tests under a test plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2198


<!-- page 2199 -->
Table

Description

[tm_test_instance]
Test Plan

Stores the test plans. Extends the Planned Task table.

[tm_test_plan]
Test Case Defects
[m2m_tm_test_case_instance_defect]

Stores the test case defects that are recorded for failed
tests.

Business stakeholder role for Test Management 1.0
Use the business stakeholder role to read and retrieve data from any table of the Test
Management 1.0 application to generate reports.
When you activate the Business Stakeholder plugin (com.snc.business_stakeholder)
in your ServiceNow instance, the Read only roles for Test Management 1.0 plugin
(com.snc.tm1_read_roles) is also activated. This plugin provides a business stakeholder role
(sn_tm1_read) with which you can access all the tables of the Test Management 1.0 application.
This role also allows read-only access to the Test Management dashboard. You can assign this
role to any user in your organization who is a business stakeholder.

Plugin availability
If you are a new customer, the Read only roles for Test Management 1.0 plugin
(com.snc.tm1_read_roles) is activated on zBoot. However, the business stakeholder
role (sn_tm1_read) is available only when you activate the Test Management 1.0 plugin
(com.snc.test_mgmt).
If you are an upgrade customer, you must manually activate the Read only roles for Test
Management 1.0 plugin (com.snc.tm1_read_roles).

Test Management 1.0 tables accessible by users with the business stakeholder
role
When both the Read only roles for Test Management 1.0 plugin (com.snc.tm1_read_roles) and
Test Management 1.0 plugin (com.snc.test_mgmt) are active in your ServiceNow instance, the
user with the business stakeholder role (sn_tm1_read) has read access to the following tables.
Test Management 1.0 tables
Table

Description

Test Case

Stores the test cases.

[tm_test_case]
Test Case Instance

Extends the Planned Task table.

[tm_test_case_instance]
Test Suite

Stores the test suites.

[tm_test_suite]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2199


<!-- page 2200 -->
Test Management 1.0 tables (continued)
Table

Description

Test Environment

Stores the test environments.

[tm_test_environment]
Test

Stores the tests.

[tm_test]
Test Instance

Stores the tests under a test plan.

[tm_test_instance]
Test Plan

Stores the test plans. Extends the Planned Task table.

[tm_test_plan]
Test Case Defects
[m2m_tm_test_case_instance_defect]

Stores the test case defects that are recorded for failed
tests.

Test Management key terms
Key terms describe the terminology used in Test Management.
Key terminology
Term

Definition

Test suite

A repository of test cases. Test cases in a test suite can be copied over to a test
plan.

Test case

A collection of related tests. A test case is saved as part of a test suite and can
be added to a test plan. Each test case within a test plan has an assigned tester.

Test

A collection of conditions or steps used to determine whether a feature is
working correctly. A test also includes an expected result, which is used to
determine if the test case passes or fails.

Test plan

The tasks for how a product or a feature is to be tested. A test plan includes one
or more test cases and can also specify a test environment. The test manager
uses the test plan to assign and execute test cases and to track the testing
progress.

Test
The instance where testing should be performed, specified as a URL. A test
environment environment is an optional parameter that the test manager can associate with a
test plan.
Test
execution

The process of performing tests. The test manager assigns testers to test cases
in a test plan; testers perform the tests in the assigned test cases.

Guided test
execution

An automated notification process for performing tests. The test manager
assigns testers to test cases in a test plan and initiates testing from the Test Plan
form. Testers receive notification to begin testing using the Assessments engine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2200


<!-- page 2201 -->
Test Management process flow
The tasks associated with manual software testing can be divided into several steps.
The test manager and the tester are involved in the following activities in a manual testing
process for a product or feature:
• Build the test repository by creating test suites, test cases, and tests.
• Create a test plan to test a specific product or feature
• Adds test cases to the test plan.
• Assign a tester to each test case.
• If required, define a test environment.
• Perform tests for the assigned test cases.
• Record the results and update the status of each test.
• Update the status of test cases.
• Monitor the progress of the test plans, test cases, and tests.
Stakeholders review the test results and any open issues to decide on the sign-off of the test
plan.
Except for completing the test plan sign-off form at the end, there is no required order for
performing these testing tasks. Each task can be independently performed.

Setting up the manual testing process
Set up and monitor the test suites, test cases, and test plans.
With Test Management 1.0, you can perform the following tasks:
• Create and maintain the test repository, including test suites, test cases, and tests.
• Create test plans.
• Define test environments, if desired.
• Add test cases to a test plan.
• Assign a tester to each test case.
• Notify testers to begin testing.
• Monitor the testing process.
• Evaluate test results.
• Complete the test sign-off form.
Test suites
Use test suites to group test cases together so that you can execute your tests efficiently.
Navigate to Test Management > Test Repository > Test Suites to display a list of test suites. Click
a test suite to display the Test Suite form, which lists all test cases included in the suite.
Create a test suite
A test suite is made up of one or more test cases that are grouped for execution purposes.

Before you begin

Role required: tm_test_manager or tm_tester
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2201


<!-- page 2202 -->
Procedure
1. Navigate to All > Test Management > Test Repository > Test Suites.
2. Click New.
3. On the form, fill in the fields.
Test Suite form
Field

Description

Number

System-generated unique identifier of the test suite.

Name

Name of the test suite.

Active

Option to indicate if the test suite is active.
If indicated as active, this test suite is visible to users when they try to add a test
case to this suite from the Test Case form.

Owner

Owner of the test suite.

Description Detailed description of the test suite.
4. Click Submit.

What to do next

You can use the related links and related lists of the new test suite for the following actions:
• Add this test case to a test plan by clicking the Add to Test Plan related link.
• Create a copy of this test suite by clicking the Create duplicate related link. For more
information, see Create a copy of an existing test suite.
• Associate test cases to this test suite by using the Test Cases related list. For more information,
see Add a test case to a test suite.
Create a copy of an existing test suite
Create a test suite with the details of an existing test suite.

Before you begin
• Create a test suite.
• Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Suites.
2. Open the test suite that you want to create a copy of.
3. Click the Create duplicate related link.
4. Enter a name in the Test Suite Name field.
5. Click OK.

What to do next

You can use the related links and related lists of the new test suite for the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2202


<!-- page 2203 -->
• Add this test suite, with all associated test cases, to a test plan by clicking the Add to Test Plan
related link.
• use the Test Cases related list to associate test cases to this test suite.
Add a test case to a test suite
Create and add a new test case to an existing test suite.

Before you begin
• Create a test suite.
• Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Suites.
2. Open the test suite to which you want to add a test case.
3. From the Test Cases related list, click New.
4. On the form, fill in the fields.
Test Case form
Field

Description

Number

System-generated unique identifier of the test case.

Active

Option to indicate if the test case is active.

Test Suite

Test suite which the test case is added to.

Short Description

Detailed description of the test case.

Prerequisites

Any conditions that must be met before the test case is executed.

5. Click Submit.
Test cases
Use test cases to group related tests together so that you can add them to a test suite or a test
plan.
Navigate to Test Management > Test Repository > Test Cases to view a list of test cases. Click a
test case to display the Test Case form, which lists all tests included in the test case.
Create a test case
Create a test case to group one or more related individual tests.

Before you begin

Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Cases.
2. Click New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2203


<!-- page 2204 -->
Test Case form
Field

Number

Description

System-generated unique identifier of the test case.

Active

Option to indicate if the test case is active.

Test Suite

Test suite which the test case is added to.

Short Description

Detailed description of the test case.

Prerequisites

Any conditions that must be met before the test case is executed.

4. Click Submit.

What to do next

You can use the related link and related list of the new test case for the following actions:
• Add this test case to a test plan by clicking the Add to Test Plan related link.
• Add tests to this test case by using the Tests related list. For more information, see Add a test
to a test case.
Add a test to a test case
Create and add a new test to an existing test case.

Before you begin
• Create a test case.
• Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Cases.
2. Open test case which you want to add the test to.
3. From the Tests related list, click New.
4. On the form, fill in the fields.
Test form
Field

Description

Number

System-generated unique identifier of the test

State

State of the test. Select from one of the following:
◦ Draft: Test is not ready to be performed.
◦ Ready: Test is ready to be performed.
◦ Inactive: Test is no longer active.

Order

Order in which the test is performed, relative to other tests in this test
case.

Test

Name of the test.

Expected result

Expected result of the test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2204


<!-- page 2205 -->
Field

Description

Detailed
description

Detailed description of what is being tested.

5. Click Submit.

What to do next

You can create a copy of this test by using the Create Duplicate related link on the test form.
Delete a test case
Delete a test case and all the tests associated to it.

Before you begin

Role required: tm_test_manager

Procedure
1. Navigate to All > Test Management > Test Repository > Test Cases.
2. Open the test case that you want to delete.
3. Click Delete.

4. Optional: Read the warning message in the confirmation pop-up window.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2205


<!-- page 2206 -->
5. Click Delete to confirm the deletion.

Result

The test case is removed from the list and all the associated tests are deleted.
Tests
Use tests to determine if a feature or an application is working correctly.
A test is made up of conditions, variables, or steps that are used to determine whether a feature
is working correctly. A test also includes an expected result, which is used to determine whether
the test passes or fails.
Related tests are grouped together in a test case. From the Tests related list on a Test Case form,
you can view a list of all tests associated with the test case. Navigate to Test Management > Test
Repository > Test Cases and select a test case to view the list of its tests.
Create a test
Create a test to see if your features are working correctly.

Before you begin
• Create a test case.
• Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Cases.
2. Open a test case to which you want to add a test.
3. From the Tests related list, click New.
4. On the form, fill in the fields.
Test form
Field

Number
State

Description

System-generated unique identifier for this test.
Status of the test. Choose from one of the following:
◦ Draft: Test is not ready to be performed.
◦ Ready: Test is ready to be performed.
◦ Inactive: Test is no longer active

Order

Order in which this test is performed, relative to other tests in this test case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2206


<!-- page 2207 -->
Field

Description

Test

Name of the test indicating what the test is for. For example, Approve Quote
and convert to Order.

Expected
result

Expected result of the test.

Detailed
description

Description of what is being tested.

5. Click Submit.

What to do next

You can create a copy of this test by clicking the Create Duplicate related link. For more
information, see Create a copy of an existing test.
Create a copy of an existing test
Create a test with the details of an existing test.

Before you begin
• Create a test.
• Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Cases.
2. Open the test case which has the test that you want to duplicate.
3. From the Tests related list, open the test that you want to duplicate.
4. Click the Create Duplicate related link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2207


<!-- page 2208 -->
A new test is created with details from the old test and the test form is

opened.
5. Optional: Make any necessary changes to details of the new test.
6. Click Update.
Create a test environment
Create a test environment to define the setup to be used when conducting the tests in a test
plan.

Before you begin

Role required: tm_test_manager

About this task

A test plan can specify the software version or the operating system to be used. The Test
Environment form includes the type of environment and can also include a URL.

Procedure
1. Navigate to All > Test Management > Test Execution > Test Environments.
2. Click New.
3. On the form, fill in the fields.
Test Environment form
Field

Number

Description

System-generated unique identifier of the test environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2208


<!-- page 2209 -->
Field

Description

Name

Name of the test environment.

Type

Type of environment. Select one from the following:
◦ Development
◦ Production
◦ QA
◦ User Acceptance Testing (UAT)
◦ Staging
◦ Support

URL

URL of the test environment.

Short description

Brief description of the test environment.

4. Click Submit.
Test plans
Use test plans in Test Management 1.0 to plan how to test your feature or application.
A test plan includes one or more test cases and can also specify a test environment. Test plans
are used to assign test cases to testers and to monitor the progress of the tests.
You can view the list of test plans by navigating to Test Management > Test Execution >
Test Plans. This list shows the current test plans, along with the percentage of the test cases
completed and the status of the test cases. Open a test plan to view more details such as the
test environment that is used for this plan and a list of test cases added to this plan.
Create a test plan
Create a test plan to detail how a product or a feature is to be tested.

Before you begin

Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Click New.
3. On the form, fill in the fields.
Test Plan form
Field

Description

Short
Description

Brief description of the test plan indicating what the test plan is for.

Owner

Owner of the test plan.

Test
Specific environment to be used for testing.
environment
Users can see the details of the assigned test environment by clicking to the
information icon (

) next to the Test environment field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2209


<!-- page 2210 -->
Field

Description

Active

Option to indicate if the test plan is active.
If indicated as active, this test plan is visible to users when they try to add a
test suite to this plan from the Test Suite form.

Instructions

Any specific instructions for this test plan.

Project

The name of the associated project.
This field appears on the Test Plan form if the Test Management PPM
Integration is activated as part of the Project Portfolio Suite plugin
(com.snc.project_portfolio_suite).

Project
Phase

The name of the associated project phase in the Project Workbench.

Planned
start date

Projected start date for the test plan. The planned start date can be the current
date or a future date.

This field appears on the Test Plan form if the Test Management
PPM Integration is activated as part of Project Portfolio Suite plugin
(com.snc.project_portfolio_suite).

This field is automatically set to the current date. To change the planned start
date, click the calendar icon ( ) and select a new date.
You may need to configure the form to add this field. For more information, see
Display test plan execution start and end dates.
Planned
end date

Projected end date for the test plan. The planned end date must be after the
planned start date.
This field is automatically set to the current date. To change the planned end
date, click the calendar icon ( ) and select a new date.
You may need to configure the form to add this field. For more information, see
Display test plan execution start and end dates.

Actual start
date

Actual start date for the test plan. The actual start date can be on or before the
planned start date.
You may need to configure the form to add this field. For more information, see
Display test plan execution start and end dates.

Actual end
date

Actual end date for the test plan. The actual end date can be before the
planned start date but not before the actual start date.
You may need to configure the form to add this field. For more information, see
Display test plan execution start and end dates.

4. Save the test plan by using one of the following choices.
◦ Click Submit to return to the Test Plans list.
◦ Click Save to remain on the Test Plan form.

What to do next

You can use the related links and related lists of the new test suite for the following actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2210


<!-- page 2211 -->
• Add existing test cases to this test plan from a test suite by clicking the Add Test Cases from
Test Suite related link.
• Add new test cases to this test plan from the Test Cases related list. For more information, see
Add a new test case to a test plan.
• Save this test plan as a new test suite by clicking the Save as Test Suite related link. A new test
suite is created with all the test cases of this plan making them available to add to another test
plan.
• Start the test plan and notify the testers about the target end date for testing by using the
Notify Tester related link. For more information, see Initiate guided test execution.
• Cancel the test execution by clicking Cancel test execution related link. This link is available
only if you've used the Notify Tester related link and started the test plan. For more
information, see Cancel guided test execution.
• View all the test cases in a Visual Task Board (VTB) by clicking Show Visual task Board related
link. The VTB shows test cases in lanes organized by their execution states.
• Create a copy of this test plan by clicking Copy Test Plan.
• View the test execution summary and sign off the test plan by clicking the Sign-off Test Plan
related link.
• View the Test Plan Defects related list for the list of all the defects logged from the test cases.
Display test plan execution start and end dates
Add the planned and actual start and end date fields on the Test Plan form to see the execution
date information.

Before you begin

Role required: tm_test_manager or tm_tester

About this task

Configure the Test Plan form layout to display the planned and actual start and end dates for the
test plan.

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open a test plan for which you want to see the execution start and end dates.
3. Open the form layout configuration.
a. Right-click the form header.
b. Select Configure.
c. Select Form Layout.
4. Move the following fields from the Available list to the Selected list.
◦ Planned start date
◦ Planned end date
◦ Actual start date
◦ Actual end date
5. Optional: Rearrange the order of the fields in the Selected list.
6. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2211


<!-- page 2212 -->
Result

The Test Plan form is displayed with the newly added date fields.
Add a new test case to a test plan
Add new test cases to your test plans so that you can assign them to testers and start test
execution.

Before you begin

Role required: tm_test_manager or tm_tester

About this task

You can add test cases that are not already a part of existing test suites. Create a test case
directly from the Test Plan form through the Test Cases related list.

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open the test plan which you want to add the test cases to.
3. In the Test Cases related list, click New.
4. On the form, fill in the fields.
For information on the Test Case form fields, see Create a test case.
5. Click Submit.

Result

The new test case is added to the Test Cases related list.
Assigning testers to test cases
Assign the test cases in a test plan to users with the tester (tm_tester) role and to business users.
Test cases can be assigned to users from the Test Plan form directly, or from the Visual Task
Board (VTB) view of the test cases in the test plan.
Users with the tm_tester role can choose to perform testing from the Test Plan form or the Test
Case form, the VTB, or by using the guided test execution feature. Business users can only
perform testing using the guided test execution.
Assign testers from the Test Plan form
Use the Test Cases related list on the Test Plan form to assign testers.

Before you begin

Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open a test plan.
3. From the Test Cases related list, open a test case to which you want to assign a tester.
4. Select a user in the Assigned to field.
5. Click Update.
Assign testers from the Visual Task Board
Assign the test case to a tester from the Visual Task Board (VTB).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2212


<!-- page 2213 -->
Before you begin

Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open a test plan.
3. Click the Show View Task Board related link.
The VTB displays lanes for test case statuses. A card for each test case appears in the
appropriate lane based on its status. test cases that are not assigned to any user display
Unassigned on their cards.
Unassigned test case card on the Test Plan Visual task Board

4. Click the Unassigned card to open the test case form.
5. Click ASSIGNED TO from the right side panel.
6. Click Add Primary Assignee and select a user.
7. Close the card by clicking the close icon (

).

Guided test execution
Notify testers about the test cases that are assigned to them through guided test execution by
using the Assessments application to notify testers about assigned test cases.
Any user can perform tests using the guided testing feature. The tester (tm_tester) role is not
required. An assessment metric category is created for each tester in a test plan.
The test manager assigns testers to test cases from the Test Plan form and initiates the testing
by assigning an end date for the testing. Testers can navigate to Self-Service > My Tests or
Self-Service > My Assessments to view and work on the test cases assigned to them. For more
information, see Initiate guided test execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2213


<!-- page 2214 -->
Any changes to the test plan, test case, or tests are automatically updated in the assessment. As
the tester progresses through the assessment, the test plan and test case are updated when the
tester submits results.
The test manager can cancel the guided test execution at any time directly from the Test Plan
form. For more information, see Cancel guided test execution.
Initiate guided test execution
Create assessments for the assigned testers of each test case in a test plan by notifying them to
start testing. The test manager can initiate guided test execution from the Test Plan form.

Before you begin
• Create a test plan.
• Add test cases to the test plan.
• Assign testers from the Test Plan form.
• Role required: tm_test_manager or tm_tester

About this task

If you are using guided test execution, you can notify testers to start testing directly from the Test
Plan form. The testers are notified through an email about their assigned assessments. Testers
can find these assessments by navigating to Self-Service > My Tests or Self-Service > My
Assessments.

Procedure
1. Navigate to Test Management > Test Execution > Test Plans.
2. Open the test plan that you want to start executing.
3. From the Test Cases related list, use the Assigned to field to assign the test cases to testers.
4. Click the Notify Tester related link.
5. Enter a date in the Testing end date field and click OK.
This date is used as the due date for the assessment.

Result

Assessments for each tester are created and email is sent to each tester with the assessment
and testing details. After the testers are notified through the email, the Notify Tester related link
on the Test Plan form changes to Cancel test execution.
Cancel guided test execution
Cancel the guided testing process after it has started so that you can restart it when appropriate.

Before you begin
• Create a test plan.
• Add test cases to the test plan.
• Assign testers from the Test Plan form.
• Initiate guided test execution
• Role required: tm_test_manager or tm_tester

About this task

Use the related link on the Test Plan form to cancel a test execution that has already started.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2214


<!-- page 2215 -->
Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open the test plan that you want to stop the testing for.
3. Click the Cancel test execution related link.
4. Click OK.

Result

A message indicates that the test plan execution has been canceled and the metric type that has
been created for the test plan is deleted.
The Cancel test execution related link on the Test Plan page changes to Notify Tester.

Performing tests and updating the test status
Perform tests, record test results, and update the test status after test cases are assigned.
Testers can perform the following actions in the Test Management application:
• Perform the tests in a test case and record the results.
• Update the test status.
• Report a defect if a test fails.
• Report a blocking issue if a test is blocked.
• Retest as necessary.
• Update the test case status.
If a guided test execution feature is used, any user can be assigned to a test case and can
perform the tests within that test case.
Perform tests using the Test Case form
Perform tests from an assigned test case and record results using the Test Case form.

Before you begin

Role required: tm_tester

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Click the assigned test case in the Test Cases related list.
3. Set the Execution Status field on the Test Case form to In progress and click Save.
4. In the Tests related list, open the first test.
The test order is determined by the number in the Order field.
5. Set the Status field for the test to In progress.
6. Right-click the form header and click Save.
7. Perform the steps outlined in the Detailed description field.
8. Record the result in the Actual result field.
9. Compare the actual result to the expected result and update the test status in the Status field
to one of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2215


<!-- page 2216 -->
◦ Passed
◦ Failed
◦ Blocked
10. Click Update.
11. Repeat steps 4-10 for the remaining tests in the test case.
12. After all of the tests are complete, update the test case status.
For more information, see Update the status of a test case.
Perform tests using the Visual Task Board
Perform tests from an assigned test case and record results using a bulletin board-type graphical
interface.

Before you begin

Role required: tm_tester

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Click the Show Visual Task Board related link.
3. Open the assigned test case by clicking the test case number on the card.
4. Set the Execution Status field on the Test Case form to In progress and click Save.
5. In the Tests related list, open the first test.
The number in the Order field determines the test order.
6. Set the Status field for the test to In progress.
7. Right-click the form header and click Save.
8. Perform the steps outlined in the Detailed description field.
9. Record the result in the Actual result field.
10. Compare the actual result to the expected result and update the test status in the Status field
to one of the following values:
◦ Passed
◦ Failed
◦ Blocked
11. Click Update.
12. Repeat steps 5–11 for the remaining tests in the test case.
13. After all tests are complete, update the test case status.
For more information, see Update the status of a test case.
Perform tests using guided test execution
Perform tests from an assigned test case and record results.

Before you begin

Role required: none

About this task

When the guided testing is initiated, the testers assigned to the test cases in the test plan are
notified by email and can begin testing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2216


<!-- page 2217 -->
Procedure
1. Navigate to the assigned test case using one of the following ways.
◦ Self-Service > My Tests
◦ Self-Service > My Assessments
A card with the test plan name and assignment information appear.
2. Click the Start Testing button to display a list of assigned test cases and the tests included in
each case.
3. Perform each of the tests in the test case by following the individual test steps.
4. Record one of the following results for each of the tests performed.
◦ Passed
◦ Failed
◦ Blocked
5. At the bottom of the list, choose an overall result from the following for the test case.
◦ Passed
◦ Failed
◦ Blocked
6. Click Save.

Update the status of a test case
Manually update the status of a test case. The status of the individual tests in a test case does
not affect the overall status of the test case.

Before you begin

Role required: tm_test_manager or tm_tester

Procedure
1. Navigate to All > Test Management > Test Repository > Test Plans.
2. Open the test plan that contains your test case.
3. From the Test Cases related list, click your test case.
4. In the Execution Status field, select a status.
◦ Unexecuted: Test is not executed yet.
◦ In Progress: Testing is in progress for this test case.
◦ Passed: All tests assigned to this test case have a status of Passed.
◦ Failed: One or more of the tests assigned to this test case have a status of Failed.
◦ Blocked: One or more of the tests assigned to this test case have a status of Blocked.
◦ Retest: Test is ready to be run again as a defect resulting from a failed test has been set to
Closed Complete.
5. If you select Blocked as the status, enter a reason for this test being blocked in the Blocked
Reason field.
6. Save the update by using one of the following choices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2217


<!-- page 2218 -->
◦ Click Submit to save and return to the Test Cases list.
◦ Click Save to save and remain on the Test Case form.
The test results are updated in the test plan.

What to do next

If a test case has failed, you can create a defect for this test case from the failed test by clicking
the Report Defect related link. For more information, see Report a defect from a failed test.
You can link an existing defect to the test case by clicking the Assign Defect related link. For
more information, see Assign a defect to a test case.
The reported and assigned defects are listed in the Defects for Test Case related list.

Report a defect from a failed test
Report a defect from an individual test that has failed so that you can further investigate the test
failure.

Before you begin
• Activate Agile Development 2.0
The ability to report a defect is available only if the Agile Development 2.0 plugin is activated.
• Perform tests and update the test status. For more information, see Performing tests and
updating the test status.
• Role required: rm_tester

About this task

Use the Test form to report a defect for a test that has failed. The reported defect is also linked to
the test case which this test is related to.

Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open the test plan which has the failed test.
3. From the Test Cases related list, open the test case which has the failed test.
4. From the Tests related list, open the test that failed.
5. On the Test form, click one of the following links:
◦ The Report Defect link next to the Status field.
◦ The Report defect related link.
6. On the form, fill in the fields.
Report Defect form
Field

Description

Number

System-generated unique identifier for the defect.

Assignment group

Group assigned to fix this defect.

Assigned to

Individual assigned to fix this defect.

Priority

Priority of the defect. Choose one from the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2218


<!-- page 2219 -->
Field

Description

◦ 1- Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low
◦ 5 - Planning
State

The current state of the defect. Select one from the following:
◦ Draft
◦ Scoping
◦ Awaiting Approval
◦ Work in Progress
◦ Testing/QA
◦ Deploy/Launch
◦ Closed/Complete
◦ On hold
◦ Canceled

Short description

Brief explanation of the defect.

Description

Detailed explanation of the defect.

Work notes

Any comments, notes, or other information related to the defect.

7. Click Submit.

Result

A defect is created and added to the following related lists:
• Defects for Test Case related list of the test case associated with the failed test.
• Test Plan Defects related list of the test plan associated with the failed test.
.

Assign a defect to a test case
Assign an existing defect to a test case.

Before you begin
• Activate Agile Development 2.0
The ability to assign a defect is available only if the Agile Development 2.0 plugin is activated.
• Perform tests and update the test status. For more information, see Performing tests and
updating the test status.
• Role required: rm_tester

About this task

When you link a defect to a test case, a reference to the defect is added both to the test case and
the test plan of this test case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2219


<!-- page 2220 -->
Procedure
1. Navigate to All > Test Management > Test Execution > Test Plans.
2. Open a test plan which contains your test case.
3. From the Test Cases related list, open the test case to which you want to assign the defect.
4. Click Assign Defect.
5. Select a defect from the Defect field..
6. Click OK.

Result

The defect that you assigned to the test case is added to the following related lists:
• Defects for Test Case related list of the test case.
• Test Plan Defects related list of the test plan associated with the test case.
You can also configure the Defect form to display the Test Cases related list so that you can see
the test case associated with this defect.

Monitoring the progress of testing
Track the testing progress for test plans, test cases, and individual tests using the Test Plans
module or the Test Management dashboard.

Test Plans module
To understand the progress of all your test plans, navigate to Test Management > Test Execution
> Test Plans and use the following information from the list of test plans:
• Percent complete: Amount of testing that is complete in the test plan.
This value calculated as (number of cases passed + number of cases failed)/total number of
test cases.
• Test cases failed: Number of failed test cases in the test plan
• Test cases passed: Number of passed test cases in the test plan
• Number of test cases: Total number of test cases in the test plan
From here, you can drill down to the details of test cases associated with this test plan and the
tests attached to each of the test cases.
From the Test Cases related list on the Test Plan form, you can view the following information for
each test case:
• Tests passed
• Tests failed
• Test case execution status
When you open a test case from the Test Cases related list, you can view the following
information for each of its tests:
• Expected result
• Actual result
• Test status
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2220


<!-- page 2221 -->
Test Management dashboard
Analyze the progress of all your active test plans by using multiple reports on the Test
Management dashboard. For more information, see Test Management dashboard.
Test Management dashboard
View test plan reports on the Test Management dashboard.
From each report on the Test Management dashboard, you can select an individual test plan or
all active test plans for an overview of all testing.
To access the dashboard, navigate to Test Management > Overview. Then select a test plan that
you want to analyze the progress of, from the Select a Test Plan field in the reports. The data in
the report updates automatically.
Test Management Dashboard

Test Management Dashboard Reports
Report title

Report type

Overall Test Pie
Coverage

Description

Displays the test case distribution by the execution status:
• Passed
• Failed
• Blocked
• In progress
• Unexecuted

Test
Bar
Coverage
By
Component
Tags

This report employs the tagging feature, which you can use to
assign tags to test cases. Then use this report to display the test
case distribution based on the assigned tags. For each tag, the
different colors represent the execution status:
• Passed
• Failed
• Blocked

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2221


<!-- page 2222 -->
Test Management Dashboard Reports (continued)
Report title

Report type

Description

• In progress
• Unexecuted
Defect
Bar
Distribution
By
Component
Tags

This report employs the tagging feature, which you can use to
assign tags to test cases. Then use this report to display test
case defects based on the assigned tags. For each tag, the
different colors represent the defect priority:
• Critical
• High
• Moderate
• Low

Pending
Test
Cases By
Assignee

List

Number of test cases pending for each assigned tester.

Test plan sign-off
Record approval of the test plan by using the functionality to sign off a test plan.
Navigate to the test execution sign-off report by navigating to the Test Plan form and clicking the
Sign-off Test Plan related link. The report provides an overview of the test case results, open test
cases, and any open issues as of the current date by using the following information:
• A count of how many test cases passed, failed, are blocked, or are not tested.
• A list of the open test cases. This list displays cases that are blocked, failed, in progress, and
not executed.
• A list of open defects and open issues ().
• Sign-off details, including sign-off history.
The test manager can review the details and proceed to sign off the test plan.
Multiple sign-offs can be required for one test plan and a test plan can be signed off even if it
has failed test cases. Each sign-off takes a snapshot of the test plan in its current state, saves the
snapshot as a PDF, and attaches the file to the test plan. This snapshot captures all test cases,
including failed and unexecuted test cases as well as open defects.
Complete the test plan sign-off
Review and sign off the test plan so that you can record the approval of the test plan.

Before you begin

Role required: tm_test_manager

Procedure
1. Navigate to Test Management > Test Execution > Test Plans.
2. Open the test plan that you want to sign off.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2222


