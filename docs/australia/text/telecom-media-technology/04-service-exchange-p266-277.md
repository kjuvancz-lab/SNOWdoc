# Australia Telecommunications, Media, and Technology — Service Exchange / Service Test Management

Source: servicenow-australia-telecom-media-technology-enus.pdf | Release: australia | Pages: 266–277 of 309

Sections: Service Exchange (p266); Service Test Management (p268); Setting up a test group (p269); Setting up test definitions (p271)

---

<!-- page 266 -->
If you create a manual fallout record or an automated one is generated for order tasks, you can
review and track all fallout records for a specific order. Use the Fallouts (n) tab (where n is the
number of fallouts) that appears when you view the related customer or service order in the
Customer Order form.
To learn more about order fallout, see Managing order fallout

.

Procedure
1. Navigate to All > Customer Order Management > Workspace > Configurable Workspace
Home.
2. From the Configurable Workspace Lists tab

, select Order Tasks.

a. Do one the following options:
▪ To view all open order tasks, select All.
▪ To view only the tasks that are assigned to you, select My Tasks.
b. Select the order task that you want to work on.

Note: You can also directly access the task records for an order from the Orchestration
Plan UI. To learn more, see Review an order orchestration plan

.

3. For each order task, set the status and update the work notes, as required.
4. On the form, review the order task details and update as needed.
For information about the field descriptions, see Order Tasks form

.

5. When you finish reviewing and updating the order task, or encounter issues preventing its
closure, do one of the actions in the following table.
Action

Description

Save the updated order task

Select Save.

Delete the order task

Select the options icon
next to the Save
button, and then select Delete.

Create a fallout record

Select the options icon
next to the Save
button, and then select Create Fallout. To
learn more, see Create a manual fallout
.

Result

After your agents complete all fulfillment tasks for the entire service order, the following actions
occur:
• The State field for the customer order is automatically set to Completed.
• The State field for each of the individual customer order line items is set to Completed.

Service Exchange
®

ServiceNow Service Exchange connects multiple ServiceNow instances to provide seamless
support and service experiences across the ecosystem, from enterprise customers to suppliers
and system integrators. Service Exchange provides a frictionless experience that makes it easy
to collaborate and process requests while giving users the convenience of working in their own
ServiceNow instance.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Get started

Explore

Configure for providers

Configure for consumers

Learn about the benefits
of Service Exchange
and how it is used.

Learn how to install
and configure Service
Exchange for providers.

Learn how to install
and configure Service
Exchange for consumers.

Integrate

Create remote
record producers

Configure outbound
FDS for providers

Offer catalog items
to a consumer using
remote catalog.

Configure outbound
foundation data sync
(FDS) settings for
provider instances.

Configure outbound
FDS for consumers

Create remote
task definitions

Service Exchange
data model

Configure outbound
foundation data sync
settings (FDS) for
consumer instances.

Create remote task
definitions to define
the task types that
can be shared across
connected instances.

Explore the tables and
access control rights
used in the Service
Exchange data model.

Extend Service Exchange
capabilities by integrating
with other applications.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
Reference

Get additional details
about Service Exchange,
including data model, error
log, and cloning instances.

Additional resources
• Learn more about what's new and changed, see the Service Exchange (formerly Service
Bridge) release notes .
• Review the multiple TM Forum (TMF) Open APIs supported for the product, see TMF APIs for
TMT.
• Access real-time courses, self-paced training, and career resources at ServiceNow
University .
®

• Log in to your ServiceNow account and find additional information about implementing and
deploying Service Exchange features at the Best Practices Library .
• Connect with other Service Exchange users at Now Community

.

• Find useful resources related to your role and explore general guidelines at ServiceNow
Impact .
• View KB articles at the Service Exchange Knowledge Base.
• View Service Exchange product related information at the Service Exchange product page

.

Service Test Management
Define tests, set measurable thresholds, and monitor real-time execution with accuracy using the
®
ServiceNow Service Test Management application. Streamline your testing process to improve
performance, ensure reliability, and deliver consistent results in every scenario.

Get started
The Service Test Management product enables the you with the ability to precisely define,
execute, and monitor service tests in real-time. This advanced system enables customers to
create detailed test specifications, establish test measures, and set threshold rule violations.
Agents can use these for instantaneous testing and diagnostics. Technology, media, and
telecommunications (TMT) service providers can use this application where proactive and
reactive service testing is critical.

Additional resources
• Review the multiple TM Forum (TMF) Open APIs supported for the product, see TMF APIs for
TMT.
®

• Log in to your ServiceNow account and find additional information about implementing and
deploying Service Test Management features at the Best Practices Library .
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
• Access real-time courses, self-paced training, and career resources at ServiceNow University
• Find useful resources related to your role and explore best practices at ServiceNow Impact
• Connect with other Service Test Management users at Now Community

.

.

Setting up a test group
Define tests for a particular service type, product model, or inventory to troubleshoot the servicerelated problems.
Test group includes relationships and measure consequences. These entities enable the
system to trigger relevant tests for the service problem that help to identify the root-cause of the
problem. You can define these entities for each test based on your requirements. The test group
contains multiple test definitions.
Customers can set up Test groups as either manual or automated:
• For manual types, one or more Test definitions must be attached to the Test group.
• For automated types, you must create a Sub flow with a list of steps and add it to the group.
• If customers want test diagnostics to run automatically and provide results directly to the
agent, they can create a flow with specific trigger conditions. When a task meets these
conditions, the flow runs automatically and displays the test results for the task. This may affect
system performance.
• The demo subflow with the demo data for the automated test group is provided. This demo
flow can be used as a reference for creating subflow for new automated test groups.

Create a test group
Create a test group to combine various tests that can assist in troubleshooting issues
encountered by specific types of services or product models. For instance, grouping a speed
test and a ping test together can effectively help in diagnosing internet-related problems.

Before you begin

Role required: sn_st_mgmt.test_def_creator

Procedure
1. Navigate to All > Service Test Management > Test Groups > All.
2. Select New.
3. On the form, fill in the fields.
Service Test Groups
Field

Description

Number

Auto-generated ID for the test group.

Name

Name of the test group.

State

State of the test group.
Draft
Unpublished draft service test
group that is assigned when you
first create the group record.
Published

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
Field

Description

Published service test group
that is assigned when you
formally publish it for use.
The service test group and the
related tables can’t be modified
in the published state.
Retired
Service test group that is retired.
Execution Type

Execution type of the test group.
Manual
The test definitions can be
mapped to the test group in the
related list.
Automated
A subflow has to be created and
mapped to the automated test
group.

Description

Description for the test group.

4. Select Submit.

Associate a test group with a specification or product model
Establish a relationship between test groups and their respective specifications or product
model to determine the tests that must be executed for a given inventory. This relationship
confirms that the appropriate tests are identified and executed based on the defined
specifications. Without this association, the system can’t accurately assign the necessary tests
for each inventory item.

Before you begin

Role required: sn_st_mgmt.test_def_creator

Procedure
1. Navigate to All > Service Test Management > Test Groups > All.
2. Select the test group that you want to open.
Only the published test groups are displayed in the list.
3. In the Specification or product model to Test Group Relationship related list, define a
relationship by selecting New.
4. On the form, fill in the fields.
Specification to Test Group Relationship
Field

Description

Specification

Name of the specification.

Product model

Name of the inventory.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Field

Description

Test Group

Auto-populated name of the test group for
which you’re specifying a relationship.

5. Select Submit.

Publish a test groups
Publish the test groups to ensure that agents only see the approved versions of test groups for
execution. This also helps maintain consistency and control over both current and future test
versions.

Before you begin

You must ensure that the characteristic and its options are added to the test group for successful
publishing and operation of the tests.
Role required: sn_st_mgmt.test_def_manager

Procedure
1. Navigate to All > Service Test Management > Test Groups > All.
2. Select the test group that you want to publish.
3. Select Publish.

Result

The test group is published and its state changes from Draft to Published.

Setting up test definitions
Define tests for a particular service type, product model, or inventory to troubleshoot the servicerelated problems.
Test definition includes characteristics, relationships, test measures definitions, measure
consequences, and threshold rules. These entities enable the system to trigger relevant tests
for the service problem that help to identify the root-cause of the problem. You can define these
entities for each test based on your requirements.
A service test definition outlines the parameters to be configured and the metrics to be
measured for a given service test. These parameters are defined in the test definition. They
can be set during execution to run the tests that measures the service problem effectively. This
structured approach confirms that the test is done correctly and collects all the data needed to
identify the problem of the service.

Create a test definition
Create a test definition to define tests that can help troubleshoot a problem encountered by a
particular type of service or product model. For example, use a speed test to troubleshoot the
internet-related issues.

Before you begin

Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select New.
3. On the form, fill in the fields.
Service Test Definition
Field

Description

Number

Auto-generated ID for the test definition.

Name

Name of the test definition.

Owner

Name of the person who is responsible for
maintaining this definition.

State

State of the test definition.
Draft
Unpublished draft service test
definition that is assigned when
you first create the definition
record.
Published
Published service test definition
that is assigned when you
formally publish it for use.
The service test definition and
the related tables cannot be
modified in the published state.
Retired
Service test definition that is
retired.
Archived
Service test definition is no
longer used in diagnosing
process.

Published on

Date on which the test definition is published.

Retired on

Date on which the test definition is retired.

Description

Description for the test definition.

4. Select Submit.

Define a characteristic for the test definition
Add a characteristic for a test to determine the properties that are required to run and evaluate
the test.

Before you begin

Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to open.
3. In the Test Definition Characteristics related list, add a characteristic by selecting New.
4. On the form, fill in the fields.
Test Definition Characteristics
Field

Characteristic

Description

Service or product characteristic of the test
that helps determine the effectiveness of the
defined characteristic.
In the test definitions, the characteristics
of type attachment and duration aren’t
supported.
For example, if you select download speed
characteristics for the speed test definition,
the system tests the downloading speed to
troubleshoot the issue raised due to internet
outage.

Characteristic option

Characteristic options for a characteristic.

Test definition

Auto-populated name of the test definition for
which you’re defining the characteristics.

5. Select Submit.

Define the relationship between the test definitions
Define relationships for a test definition to connect and associate it with other test specifications.
This process ensures comprehensive testing coverage and that the tests are aligned with the
testing goals.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to open.
3. In the Test Definition Relationships related list, define a relationship by selecting New.
4. On the form, fill in the fields.
Test Definition Relationship
Field

Description

Number

Auto-generated ID for the test specification.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Field

Description

Test definition

Auto-populated name of the test definition for
which you’re defining a relationship.

Related test definition

Name of the other test definition that you
want to connect this test with.

Note: Ensure that the selected test
definition is different from the one
for which the relationship is being
established. The association between
the test definitions should be unique
and either in a published or draft state.
Type

Type of relationship defined in with the
related test definition, such as dependency.

Order

Order in which this test is executed.

5. Select Submit.

Define test definition relationships with specifications
Establish a relationship between test definitions and their respective specifications or
product model to determine the tests that must be executed for a given inventory. This
relationship ensures that the appropriate tests are identified and executed based on the defined
specifications. Without this association, the system can’t accurately assign the necessary tests
for each inventory item.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to open.
3. In the Specification or product model to Test Definition Relationship related list, define a
relationship by selecting New.
4. On the form, fill in the fields.
Specification to Test Definition Relationship
Field

Description

Specification

Name of the specification.

Product model

Name of the inventory.

Test Definition

Auto-populated name of the test definition for
which you’re specifying a relationship.

5. Select Submit.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
Define test measure definitions for a service test
Define unique test metrics, such as parameters and criteria to run the test on a given service
during testing. These metrics help promote that the service meets the desired standards and
requirements to provide a satisfactory user experience.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Groups > All.
2. Select the test group that you want to open.
3. In the Test Measure Definitions related list, define test measures for the service by selecting
New.
4. On the form, fill in the fields.
Test Measure Definition
Field

Description

Number

Auto-generated ID for the test measure
definition

Name

Name of the test measure definition.

Metric name

Unique name for the metric definition.

Value type

Type of characteristic value.
Data type: String

Unit of measure

Measurable value used to calculate the
performance of a service, such as seconds,
minutes, days, and more.

Test definition

Auto-populated name of the test
specification for which you’re defining this
test measure.

Capture frequency

Frequency at which test metrics record is
refreshed. For example, once, daily, weekly,
or monthly.

Capture method

Method to capture the frequency, such as
automatic or manual.

Capture period

Period of the capture to calculate the
duration, such as days and hours.

Validity start date time

Valid date and time on which the test takes
effect.

Validity end date time

Valid date and time on which the test takes
expires.

Metric description

Description of the test metrics.

5. Select Submit.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
Define threshold rules for a test measure definition
Set rules or criteria to evaluate the results of test measures. These rules establish thresholds that
determine the acceptable performance and quality metrics for a service under evaluation. If test
measure results exceed or fall below these thresholds, it indicates a deviation from expected
performance levels.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to open.
3. In the Threshold Rules related list, define a threshold rule for a test measure by selecting New.
4. On the form, fill in the fields.
Threshold Rule
Field

Description

Number

Auto-generated ID for the test measure
definition.

Name

Name of the threshold rule.

Test measure definition

Name of the test measure definition for which
you’re defining threshold rules.

Conformance comparator exact

Option to determine if the service under
testing meets the defined criteria.

Conformance target exact

Option to determine if the service or system
behaves as expected under specified
conditions.
This field appears only if the Conformance
comparator exact option is selected.

Conformance comparator lower

Lower range of the threshold for comparing
the test measure results.

Conformance comparator upper

Upper range of the threshold for comparing
the test measure results.

Severity

Severity of this rule.

Tolerance period

Specified time interval during which crossing
occurrences are enabled without triggering
any immediate consequences or actions.

Number of allowed crossing

Number of occurrences of a threshold
crossing that are allowed within a certain time
frame before any consequences are triggered.

Conformance target lower

Lower boundary that determines if a specific
limit is crossed or no longer crossed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
Field

Description

Note: This value must be greater
than the upper limit defined in the
Conformance target upper.
Conformance target upper

Upper limit that determines if the threshold is
crossed or no longer crossed.

Note: This value must be less than the
lower limit defined in the Conformance
target lower.
Description

Description of the threshold rule.

5. Select Submit.

Define measure consequences for the threshold rules
Set actions or responses to trigger when the test measure results fall outside the predefined
acceptable limits.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to open.
3. In the Threshold Rules related list, select a threshold rule for which you want to define
consequences.
4. In the Test Measure Consequences related list, define consequences for the threshold rules
by selecting New.
5. On the form, fill in the fields.
Measure Consequences
Field

Description

Number

Auto-generated ID for the measure
consequences.

Name

Name of the measure consequence for the
threshold rule. For example, send a warning
to the system.

Prescribed action

Action that is taken when the threshold rule
falls outside its prescribed limit.

Repeat action

Option to repeat the action until the desired
result achieves.

Threshold rule

Name of the threshold rule for which you’re
defining the measure consequences.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


