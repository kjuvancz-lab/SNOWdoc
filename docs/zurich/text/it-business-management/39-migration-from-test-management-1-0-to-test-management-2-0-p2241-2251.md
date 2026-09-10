# Zurich Strategic Portfolio Management — Migration from Test Management 1.0 to Test Management 2.0 / Business Planning Portal

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2241–2251 of 2289

Sections: Migration from Test Management 1.0 to Test Management 2.0 (p2241); Business Planning Portal (p2250)

---

<!-- page 2241 -->
Before you begin

Role required: scrum_user

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. Click the Sprint Tracking tab and select the List view.
3. Click a test.
4. Verify a story by clicking Run on the story.
This step runs all tests of the story at once.
5. In the pop-up, select the environment on which the test is to be run.
a. Click Lookup using list icon.
b. Click Run.
6. In the Test Execution pop-up, mark a step as passed, failed, or blocked using the following
icons.
Icon

Description

Passed.
Failed. In this state, options to add comments
and attachments are available. Option to
delete attachments is also available.
Blocked. In this state, options to add com­
ments and attachments are available. Option
to delete attachments is also available.
◦ To select an icon, you can also use the Tab key. Press Tab and then press Enter.
◦ To pause and work on the test at a later point in time, click Pause.
7. Click Done.

Result

Test result is saved to the Test Result form, and the latest test result of each test is displayed in
the List view.
The overall status of the test is defined by statuses of the test steps:
• If all the test steps are passed, the status of the test is Passed.
• If at least one step of the test is not run, the status of the test is Not finished.
• If at least one step of the test fails, the overall status of the test is Failed. This rule takes
precedence over the previous rule.
• If at least one step of the test is blocked, the overall status of the test is Blocked. This rule
takes precedence over the previous two rules.

Migration from Test Management 1.0 to Test Management 2.0
Migrate your test data from Test Management 1.0 to Test Management 2.0, and start using Test
Management 2.0 for its enhanced testing capabilities and features.
Apply the following migration steps on a non-production instance, verify if the migration is
completed as intended, and then perform the migration steps on a production instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2241


<!-- page 2242 -->
Activate plugins
Activate the Test Management 2.0 (com.snc.test_management.2.0) and Test Management 2.0 —
Data Migration (com.snc.test_migration_v1_v2) plugins.

Migrate data
The migration process allows you to move test suites, test cases, and tests.

Note:
• Test plans cannot be migrated due to significant change of data model.
• Test suites, test cases, and tests that are migrated to Test Management 2.0 will not be
removed from Test Management 1.0.
Test cases that are migrated to Test Management 2.0 are converted to test versions in the
following manner:

Test Management 1.0: Test case

Test Management 2.0: Test version

Short Description

Short Description

Domain

Domain

Test Suite

Creates a relationship between test and test set

Prerequisites

Link to the old test case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2242


<!-- page 2243 -->
Tests that are migrated to Test Management 2.0 are converted to test steps in the following
manner:

Test Management 1.0: Test

Test Management 2.0: Test step

Order

Order

Domain

Domain

Detailed description

Link to the old test

Test

Step

Test data

Link to the old test

Expected result

Verification step

Test suites that are migrated to Test Management 2.0 are converted to test sets in the following
manner:

Test set in Test Management 1.0

Test set in Management 2.0

Name

Name

Owner

Owner

Domain

Domain

Add custom fields to migration
You have added custom fields to the tables of Test Management 1.0, and want to move
the fields to the corresponding custom columns in Test Management 2.0. In such a case,
include the custom fields into migration by overriding the mapping information in the script
include TestMigrationTableMapping. The default mapping is provided in the script include
TestMigrationTableMappingBase.

Convert test suites
Convert test suites with underlying test cases to test sets and tests.

Convert test suites
Convert test suites in Test Management 1.0 to test sets in Test Management 2.0. Start using Test
Management 2.0 for its enhanced testing capabilities and features.

Before you begin
• Role required: admin
• Install the Test Management 2.0 — Data Migration plugin (com.snc.test_migration_v1_v2).

Procedure
1. Navigate to All > Test Migration > Migrate Test Suites.
A list of test suites available in Test Management 1.0 are displayed.
2. Select the required test suites and convert to them to test sets.

Appendix — Test Management 2.0
Test Management 2.0 offers a few enhancements over Test Management 1.0.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2243


<!-- page 2244 -->
These enhancements can be divided into the following categories:
• Functionality enhancements
• Data model enhancements
• Usability enhancements
Functionality enhancements in Test Management 2.0
Test Management 2.0 offers a few functionality enhancements over Test Management 1.0.

Integration with Agile Development 2.0
Integration of Test Management 2.0 with Agile Development 2.0 provides embedded testing
capabilities for scrum teams. Test Management 2.0 enables you to create tests for stories
of the sprint, and also track the execution and completion of those tests. As a scrum master
or product owner, you gain an insight of the stories that are tested and are to be closed.

Data model enhancements in Test Management 2.0
Test Management 2.0 offers a few data model enhancements over Test Management 1.0.

Enhanced traceability
Each test in Test Management 2.0 can have multiple versions. When a test version
is in the state Ready, it can be run but cannot be edited. Every test result is
associated with a specific run and a specific version of the test. Due to this logic,
you can always be sure of the content of the test when a specific test result was

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2244


<!-- page 2245 -->
received.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2245


<!-- page 2246 -->
More flexible approach to organize tests
Unlike Test Management 1.0, where test cases can be placed in only one test suite, in Test
Management 2.0 tests can be placed in multiple test sets. Test sets are free-form collections
of tests. Tests can be grouped into test sets using any logic: by product, by component, or by
release.

Test plan defines the time frame
A test plan in Test Management 2.0 captures the time frame during which the tests are
to be run. In addition, a test plan can be broken down into smaller planning windows,
test cycles, for more precise planning, such as user acceptance testing, and integration
testing. Further test cycles can be broken down into test execution suites, which are
similar to sprints in testing. A test execution suite defines when a test must be run and by

whom.
Usability enhancements in Test Management 2.0
Test Management 2.0 offers a few usability enhancements over Test Management 1.0.
Create and track the execution of tests for stories of the sprint in the Sprint Tracking tab in Agile
Board. In addition, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2246


<!-- page 2247 -->
• View the test result of each test.
• Run all the tests for a story at one time.

Easier way to create tests
Test Management 2.0 provides a new user experience for creating tests.
• Test steps can be created without leaving the context of test form.
• Entire test scenario can be created at one time. Type in the step description, and press Enter to
proceed to the next step.
• You need not create an extra record to capture expected results. Expected results can be
captured as another test step that is marked as a verification step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2247


<!-- page 2248 -->
Enhanced user experience for running tests

Test Management 2.0 provides a new user interface for running tests. The interface opens in a
small browser window, which can be placed side by side with the system that is being tested.
You can go through multiple tests at one time, without having to relaunch the window. Whenever
a step is marked as failed or blocked, you can add a comment and attachment to record your
observation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2248


<!-- page 2249 -->
Visual approach of structuring test plans
Test Management 2.0 provides a designated user interface, Test Board, for creating and
structuring test plans. As a test manager, you can create a test plan, test cycles, and test
execution suites and define the time frame for their execution. The names of the test cycles and
execution suites can be edited inline, without leaving the page. Test execution suites can then be
filled with tests, and those tests can be assigned to testers.
The test plan work hierarchy item in the Test Board provides a visual representation
of the timeline of the test plan and its child tasks using a blue task bar. The length
of the task bar pertaining to the test plan increases and decreases depending on
the adjustments you make to the duration of its child tasks. You can also manually
increase or decrease the duration by dragging the edge of the task bar to the required

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2249


<!-- page 2250 -->
location.

Business Planning Portal
A business plan includes a business goal and a plan to achieve that goal. Business planning
involves various entities of a business such as goals, business units, business capabilities,
capability map, enterprise strategies, and business unit strategies. As a business planner you
can manage these entities from the business planning portal.
To access the business planning portal, the Business Planner (com.snc.apm.business_planner)
plugin must be activated. This plugin is installed only when any one of the other Strategic
Portfolio Management (SPM) plugins is already installed.
Access the business planning entities, goals, business units, enterprise strategy, business unit
strategy, capabilities, and capability in the Business Planner module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2250


<!-- page 2251 -->
Business planning portal for the business planner
As a business planner, you can do various tasks from the business planning portal such as view,
create, and update the business entities to achieve business goals. In addition, the Business
Planner can . Use capability map for planning - Legacy .

Note: The role of a business planner involves only planning and managing the entities to
achieve the business goal. It doesn't deal with the business applications or technologies
that support the business.
Business planning portal

The business planning portal helps the business planner to view and create goals, business unit,
capabilities, and strategies.
Number of capabilities
Displays the number of capabilities that have been created. Click to view the list
of capabilities defined for the business enterprise. Create business capability and
relate the capability with an application - Legacy
if the existing capabilities don't
conform to your business plan.
If you have installed Enterprise Architecture (formerly APM), then the Map link is
available. Click Map to launch the capability map.
Strategies
Displays the number of objectives that have been created. Click to view the list of
strategic objectives that align with your business plans. Click to create a business
unit strategy or an enterprise strategy to fulfill a new business plan. You can also
assign strategies to a goal.
• Enterprise strategy is at a higher level and business unit strategies can be
assigned at its child level.
• Business unit strategy is at a lower level and an enterprise strategy or a business
unit strategy can be assigned as a parent strategy.
Business Units

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2251


