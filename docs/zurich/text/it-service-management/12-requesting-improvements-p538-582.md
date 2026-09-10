# Zurich IT Service Management — Requesting improvements

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 538–582 of 3857

Sections: Requesting improvements (p538); Managing improvements (p540); Reference (p555)

---

<!-- page 538 -->
• Customize fields shown in workbench lists using the Workbench Planning view.
Access the Workbench Planning view from the List Controls menu (
Register (List Controls > View > Workbench Planning).

) of the Improvement

• Filter by priority, benefits, effort estimate, and CIM Coordinator.

Note: The filters are dynamic and show only the fields visible in the Workbench
Planning view.
• Toggle the Filter menu and fields shown using the Configuration menu (

).

Note: Only the fields visible in the Improvement Register [Workbench Planning] view
are shown in the workbench planning section.

Procedure
1. Navigate to Continual Improvement > Workbench.
2. On the Overview tab, analyze the Work in Progress tiles to get an overall picture of the
improvements in progress.
Color-coded alert banners call out improvements that need attention. You can click on a tile to
view the improvement.
3. Use the Planning tab to build the contents of your current sprint, according to capacity.
a. Drag and drop items from the Backlog list to the Work in Progress list.
b. Use the filters (Priority, Benefits, Effort Estimate, and CIM Coordinator) to narrow the data
contained in the lists so you can focus on certain groups of improvements.
4. Use the Configuration menu to customize the columns shown in the Planning tab lists that is
specific to your needs.

Requesting improvements
Identify improvement opportunities within your environment and create an improvement request
to begin implementation.
You can request improvements either manually from Continual Improvement Management, or
from an application that is integrated with Continual Improvement Management.
Continual Improvement Management integration with other applications lets you:
• Create an improvement initiative from within other applications
• Create a record for another application as part of an improvement initiative or CIM task

Identifying improvement opportunities
There are many different ways you can identify improvements in your organization. Improvement
opportunities need not to be limited to the applications you use, your area of expertise, or your
specific group.
You can identify improvement opportunities based on feedback from other groups.
Process manager or process owner
Reach out to the process manager or process owner to identify improvement
suggestions for a process that is not working well.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

538


<!-- page 539 -->
IT, development, and project management groups
Reach out to the IT staff, development team, and project management staff for
improvement suggestions, and provide the Improvement Requester role so they can
submit an improvement request from within an integrated application with one click.
You can also identify improvement opportunities from within many different applications.

Application

Description

Surveys

Review customer feedback and complaints and send additional
assessments soliciting customers for improvement opportunity
suggestions.

Performance Analytics

Monitor process KPIs and internal process assessments
in Performance Analytics reports to identify improvement
opportunities.

Benchmarks

Compare KPI performance with Benchmarks baseline reports,
and identify improvement opportunities in Benchmarks
recommendations.

Service

Review undesirable trends in reports to identify improvement
opportunities.

Problem Management and
Change Management

Review Problem Management and Change Management trend
reports to identify improvement opportunities.

Risk and GRC Audits

Review Risk registers and GRC Audit test failures to discover
improvement opportunities.

IT Service Management

Review ITSM regularly to identify improvement opportunities for
what is not working well.

Create an improvement request
Create an improvement request for improvement opportunities you identify in your environment.
Once submitted, the improvement request is analyzed and implemented by the Improvement
Manager and Improvement Coordinator.

Before you begin

Role required: sn_cim.improvement_requester

About this task
Continual Improvement Management Process Flow

Procedure
1. Identify an opportunity for improvement.
Any type of improvement identified in your company qualifies as the basis for an improvement
request. For example, KPI performance, customer satisfaction, resources, processes, training,
to name a few.
2. Determine your improvement goal.
The improvement goal is the expected result to be achieved from the improvement.
3. Submit an improvement request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

539


<!-- page 540 -->
a. Navigate to Continual Improvement > Create New.
A CIM phase is automatically created when you create the initiative, if the
sn_cim.create_default_phase system property is enabled. For more information,
see Properties installed with Continual Improvement Management.
b. Fill in the short description and the business justification, and click Submit.
The improvement request is created and set to New for the Improvement Manager to accept
or reject based on alignment with strategic objectives.
4. To track the status of your improvement request, navigate to Continual Improvement > My
CIM Requests.

Example: Create improvement request
In the process of reviewing KPI performance in the Performance Analytics application, the
incident manager noticed the Average time to resolve an incident KPI scorecard was too high
(24 hours).
As part of the improvement identification process, the incident manager analyzed the KPI
performance by comparing it with values from other companies using the Benchmarks
application, determined an improvement was needed, and set a target goal.
Improvement Initiative form
Field

Value

Number

CIM0000135 (set internally)

Business service

IT Services

Business process

Incident Management

Short description

(Required) Improve average time to resolve an
incident by 25%

Business justification

Average time to resolve an incident time is bad
compared to Industry average. I compared
our value with global values from companies
in the same industry using the Benchmarks
application.

State

New

Priority

4 - Low (default)

Related topics
Improvement field descriptions

Managing improvements
After an improvement is requested, the Improvement Manager reviews it, assigns an
Improvement Coordinator, and monitors progress of all improvements to ensure value and
success. The Improvement Coordinator works with the Improvement Manager to implement the
improvement.
The Improvement Manager oversees, identifies, drives, and monitors the progress of all
improvements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

540


<!-- page 541 -->
The Improvement Coordinator manages the improvements to which they have been assigned by
the Improvement Manager, and works with the CIM task owners to track task completion.

Note: Although both roles can cancel an improvement, only the Improvement Manager
can delete an improvement, which removes it from the Improvement Register list.

Process flow
Continual Improvement Management Process Flow

1. The process flow starts with a new improvement request. A need for improvement is
identified in the environment and a new improvement request is submitted by a user with the
Improvement Requester role.
2. The Improvement Manager then verifies that the new improvement request aligns with at
least one company strategic objective, and assigns an Improvement Coordinator before
accepting the improvement as valid. The assigned Improvement Coordinator is notified that
the improvement request has been accepted.
There is typically more than one Improvement Coordinator in a company since that role is
responsible for implementing and tracking the progress of assigned improvement initiatives at
the task level, and there can be many tasks per improvement.
3. Once accepted, the Improvement Manager sets the remaining attributes on the Improvement
Initiative form, and progresses it to be assessed for approval (by Approver group members).
4. During assessment, users in the approver group (shown in the Approvers related list) are
notified of the approval request. One or all of the approver group members evaluate the
improvement attributes and either approve or reject the improvement.
5. Once approved, the Improvement Coordinator and Improvement Manager work together (in
regular implementation meetings, for example) to determine what work is needed to ready the
improvement for implementation.
During implementation, the Improvement Coordinator creates and assigns phases and can
create tasks directly from an initiative or from a phase to complete the improvement. The
Improvement Coordinator works with the task owners (in regular task status meetings, for
example) to track the progress of task completion. Records for other supported applications
can also be created from within the improvement initiative or CIM task, if needed, and are
typically shown in a related list in the improvement initiative or CIM task.
If, for some reason, implementation for the improvement has been halted, the Improvement
Manager or Improvement Coordinator can place the improvement on hold. All CIM tasks that
are not closed or canceled are also placed on hold. You can cancel a CIM initiative at any
stage when the initiative is in progress. When you cancel an initiative, the initiative as well as
the tasks associated with the initiative move to Closed Incomplete.
6. The Improvement Coordinator places the improvement under review when all CIM tasks in all
CIM phases are verified 100% complete. The Improvement Manager reviews the improvement
completeness and sets the improvement to closed.

CIM task progress rollup calculation
You can create a task directly from an initiative or from a phase. When a task is moved to the
Closed Complete state, the progress of the CIM initiative is calculated based on the percentage
of all tasks that are in Closed Complete state for that initiative. The duration of the task which is
based on the planned end date is also taken into consideration when the progress of the CIM
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

541


<!-- page 542 -->
initiative is calculated. The longer the duration, the slower the progress. As you add new tasks
to a phase or associate it directly with the CIM initiative, the percentage completion for the CIM
initiative is updated accordingly.
The table below shows an example of how the CIM task progress rollup is calculated.
Example CIM task progress rollup calculation
Parent Record

Task

Task duration

State

Contribution to
initiative progress
(%)

CIM Phase 1

Task 1

2 days

Closed Complete

20%

CIM Phase 1

Task 2

3 days

Closed Complete

30%

CIM Initiative

Task 3

2 days

Any state other
than Closed
Complete

50%

Note: This
task is directly
associated
with the CIM
initiative.

Alignment with company strategic objectives
You can ensure alignment with company goals by setting the Strategies field on the
Improvement Initiative form to one or more company enterprise strategies
from the Strategic
Objectives lookup list so they are linked.

Note: Only the Improvement Manager can create a strategy.
Coordinating improvements with enterprise strategies of the company ensures the improvement
contributes to the overall goals of the company.
Access enterprise strategies by navigating to Continual Improvement > Enterprise Strategies
(or Organization > Enterprise Strategy).

Improvement Register list
View, prioritize, and track improvements, related tasks, and phases from one Improvement
Register list that includes all open and closed improvements in one list.
Improvement Register

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
Embedded Performance Analytics scorecard
Use the Analytics Hub
embedded in the Improvement Initiative form for continuous KPI
monitoring, and to track the progress of the KPI improvement during the lifecycle of the
improvement. The KPI scorecard is useful so you can monitor the incremental benefits of the KPI,
or adjust CIM tasks and assignments to meet your improvement goal, if needed.
Embedded KPI scorecard

The improvement icon (
scorecard chart.

) indicates the start and end dates that are tracked on the KPI

Scorecards are also shown for any KPIs listed in Impacted KPIs related list on the Improvement
Initiative form.
Related topics
Continual Improvement Management reference
Improvement field descriptions

Accept an improvement
Accept and assign a new improvement request so it can be assessed for approval. You can reject
the improvement request if it does not align with company strategic objectives.

Before you begin

Role required: sn_cim.improvement_manager, sn_cim.improvement_coordinator

About this task
Accept a Continual Improvement Management initiative

Precondition: Improvement Requester created an improvement request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
Procedure
1. Identify the new improvement request.
a. Navigate to Continual Improvement > Open.
b. In the Improvement Register list, open an improvement in the New state.
2. Align the improvement request with company strategic objectives, and assign an Improvement
Coordinator.
a. On the Improvement Initiative form, unlock the Strategies field to access your company
strategic objectives, then click the lookup list.
b. Select the enterprise strategy

aligned with the improvement request.

Note: Only the Improvement Manager can create a strategy.
c. Click the CIM Coordinator lookup list and select an Improvement Coordinator to manage
the improvement.
3. Complete the fields for business service, business process, priority, effort estimate, benefits,
and why this improvement is important.
4. In the header bar, click Accept to progress the improvement request to the Assess state.
Improvement Coordinator is notified of assignment.
5. Complete the content in the Goals, Details, and Schedule tabs on the Improvement Initiative
form.

Example: Accept improvement request
In the process of reviewing KPI performance in the Performance Analytics application, the
incident manager noticed the Average time to resolve an incident KPI scorecard was too high
(24 hours).
As part of the acceptance process, the Improvement Manager determined that KPI performance
improvement aligned with the Automation/Effort Reduction strategic objective, assigned the
Improvement Coordinator that drives KPI improvements, and accepted the improvement request.
Improvement Initiative form
Field

Value

Number

CIM0000135 (set internally)

Business service

IT Services

Business Process

Incident Management

CIM Coordinator

Adela Cervantsz

Approver Group

CIM Approvers

Strategies

Automation/Effort Reduction

State

Accepted

Priority

4 - Low

Effort estimate

Medium

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
Improvement Initiative form (continued)
Field

Value

Benefits

High

Percent complete

0

Short description

Improve average time to resolve an incident by
25%

Business justification

Average time to resolve an incident time is bad
compared to Industry average. I compared
our value with global values from companies
in the same industry using the Benchmarks
application.

Goals tab
Field

Value

Success measurement method

Automated: PA Indicator

Improvement KPI

Average close time of incidents

Breakdown

--

Aggregation

--

Base value

100

Percentage improvement

25

Target value

75

Target review date

2018-06-30

Expected outcomes

Improvement in average time to resolve an
incident.

Details tab
Field

Value

Requested for

Mabel Weeden

Type

Process

Watch list

--

Schedule tab
Field

Value

Planned start date

2018-03-18

Planned end date

2018-06-19

Actual start date

2018-03-11

Actual end date

--

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
Notes tab
Field

Value

Additional comments (Customer visible)

--

Work notes

--

Related topics
Improvement field descriptions

Prepare an improvement
Once the improvement is approved, you can create CIM phases, tasks, and identify impacted
KPIs. The Improvement Coordinator for the improvement works with the Improvement Manager
to plan implementation.

Before you begin

Role required: sn_cim.improvement_manager, sn_cim.improvement_coordinator

About this task

Plan your implementation as phases to keep track of your project milestones. Add tasks to the
phase and monitor the progress for the milestones. You can also track your goals by creating
tasks directly from the initiatives.
Continual Improvement Management Implementation Process

Preconditions:
• Improvement Requester created the improvement request.
• Improvement Manager accepted and assigned the improvement request.
• Approver group member assessed and approved the improvement.

Procedure
1. Determine phases and tasks needed for the improvement.
Improvement Manager and Improvement Coordinator meet to determine the tasks required to
complete the improvement, and whether multiple phases are required.
2. Set up CIM phases to track CIM tasks.
a. Navigate to Continual Improvement > Open and open the improvement in the In Progress
state.
b. In the CIM Phases related list, click New and fill in the description and planned end date.
c. Right-click the form header and select Save.
d. In the CIM Tasks related list, click New to create a CIM task.
e. In the Parent field, select the a CIM Phase record to which you want to associate the CIM
task.
f. Set the CIM task attributes, including assignment, priority, state, planned end date, and short
description.
g. Click Submit.
3. Create and assign CIM tasks for an improvement.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
a. In the CIM Tasks related list, click New to create a CIM task.
By default, the CIM task is linked to the CIM initiative. To track the task within a phase, in the
Parent field, select the a CIM Phase record to which you want to associate the CIM task.
b. Set the CIM task attributes, including assignment, priority, state, planned end date, and short
description.

Note:
▪ When the planned end date for a CIM task is updated, the planned end date that the
CIM initiative that the task is associated with also gets updated. When the state for
a CIM task is moved to Work In Progress, the Actual Start Date field is automatically
updated with the current date.
▪ When the task is assigned, the task assignee receives an email notification.
4. To create a separate application task for an integrated application, click the related link for that
application task.
5. To monitor a KPI with the improvement, add a record to the Impacted KPIs tab.
6. Meet with CIM task owners to oversee status, monitor work completed, add or update tasks
and phases, and track overall progress of the improvement to completion.
a. Oversee the progress of CIM tasks with task owners on a regular basis until all tasks are
presented as complete.
b. On the Improvement Initiative form, verify that all tasks in the CIM Tasks related list are
Closed Complete.
The improvement coordinator and task assignee receive an email notification when the task
is moved to Close Incomplete, Closed Skipped, or Closed Complete state.
c. On the Improvement Initiative form, verify that all phases in the CIM Phases related list are
100% complete.
7. Click Review in the header bar to request the improvement be reviewed by the Improvement
Manager for closure.

Example: Implement improvement
In the process of reviewing KPI performance in the Performance Analytics application, the
incident manager noticed the Average time to resolve an incident KPI scorecard was too high
(24 hours).
As part of the implementation process, the Improvement Manager and Improvement Coordinator
determined the work required in the next three to six months to complete the improvement, with
a target review date 3 months after start.
• Configured default CIM Phase 1 (added two CIM tasks), and created CIM Phase 2 (added two
CIM tasks).
• Created a Change Management application task record (CHG0030001) associated with CIM
Task 2 using the Create Change related link, and set the change record attributes.
• Added four KPIs to the Impacted KPIs tab to monitor with the improvement.
Improvement Coordinator met with CIM task owners regularly to oversee status and monitor work
completed, and set the improvement status to review after all implementation was complete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
CIM Phase 1 - CIM Tasks 1 and 2
Field

Value

Number

CIMT0000116 (assigned internally)

Parent

CIM0000135

Percent complete

0

Planned end date

2018-06-19

Actual end date

--

Short description

Resolved incident and reassigned count
improvements

CIM Task 1
Number

CIMT0000118 (assigned internally)

Parent

CIMT0000116

Configuration item

--

Active

(Selected)

Implementing task

--

Assigned to

Bernard Laboy

Improvement register

CIM0000135

Priority

4 - Low

State

Open

Planned end date

2018-06-19

Short description

Improve % of incidents resolved by first
assigned group by using self service and more
automation

Work notes

--

CIM Task 2
Number

CIMT0000119 (assigned internally)

Parent

CIMT0000116

Configuration item

--

Active

(Selected)

Implementing Task

CHG0030001

Assigned to

Change Manager

Improvement register

CIM0000135

Priority

4 - Low

State

Open

Planned end date

2018-06-19

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
CIM Phase 1 - CIM Tasks 1 and 2 (continued)
Field

Short description

Work notes

Value

Reduce the reassigned count by using
ServiceNow Auto Categorization and Auto
Assignment models
--

CIM Phase 2 - CIM Tasks 1 and 2
Field

Value

Number

CIMT0000120

Parent

CIM0000135

Percent complete

0

Planned end date

2018-06-19

Actual end date

--

Short description

Knowledge improvements and self-service
improvements

CIM Task 1
Number

CIMT0000121 (assigned internally)

Parent

CIMT0000120

Configuration item

--

Active

(Selected)

Implementing task

--

Assigned to

David Loo

Improvement register

CIM0000135

Priority

4 - Low

State

Open

Planned end date

2018-06-19

Short description

Add new KB articles for common issues

Work notes

--

CIM Task 2
Number

CIMT0000123 (assigned internally)

Parent

CIMT0000120

Configuration item

--

Active

(Selected)

Implementing task

--

Assigned to

Adela Cervantsz

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
CIM Phase 2 - CIM Tasks 1 and 2 (continued)
Field

Value

Improvement register

CIM0000135

Priority

4 - Low

State

Open

Planned end date

2018-06-19

Short description

Provide training and enablement training for
new apps

Work notes

--

Change Request form
Field

Value

Number

CHG0030001 (set internally)

Requested by

Improvement Manager

Configuration item

--

Planned start date

2018-03-18

Planned end date

2018-06-19

Type

Normal

State

New

Priority

4 - Low

Impact

3 - Low

Risk

Moderate

Short description

Description

Reduce the reassigned count by using
ServiceNow Auto Categorization and Auto
Assignment models.
--

Impacted KPIs related list
Field

Impacted KPI

Value

• % of incidents resolved by first assigned
group
• % of incidents resolved on same day
opened
• % of incidents resolved without
reassignment
• Average age open incidents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
Related topics
Improvement field descriptions
Applications integrated with Continual Improvement Management

Assess an improvement for approval
Once accepted and set to assess, Approver group members evaluate the improvement for
approval before implementation can begin.

Before you begin

Role required: None (must be a member of the Approver group)

About this task

Continual Improvement Management - Assess Process Flow

Note: Only one Approver group member needs to approve the improvement before
moving to the next state. To require additional approvers, configure the CIM Approval
workflow in Flow Designer .
The default expiration period for approval requests is seven business days. Pending
approval requests are automatically canceled after seven days but can be resubmitted for
approval.
Preconditions:
• Incident manager created an improvement request.
• Improvement Manager accepted and assigned the improvement request.
By default, an improvement requires approval before it can progress to the Implement state. You
can disable the approval requirement using the sn_cim.need_approval property. When
disabled, the Approver group field and the Approvers related list on the Improvement Initiative
form are not shown.

Procedure
1. Navigate to All > Self Service > My Approvals.
2. On the Approval form, scroll down to the Summary of Item being approved section and
assess the details of the improvement, including alignment with strategic objectives
(strategies), business service, business process, priority, effort estimate, benefits, and why this
improvement is important.
3. Click Approve in the header bar to approve the improvement.
The improvement is ready for implementation by the Improvement Manager and Improvement
Coordinator.
A default CIM phase (CIMT number) is automatically created.

Example: Approve an improvement
In the process of reviewing KPI performance in the Performance Analytics application, the
incident manager noticed the Average time to resolve an incident KPI scorecard was too high
(24 hours).
As part of the approval process, an Approver group member assessed the details of the
improvement and approved it to begin implementation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
Approval form
Field

Value

Approver

Howard Johnson

State

Approved

Approving

CIM0000135

Comments

--

Related topics
Improvement field descriptions

Review and close an improvement
Once all tasks in each phase of the improvement have been completed, the Improvement
Coordinator sets the improvement to review for the Improvement Manager to close.

Before you begin

Role required: sn_cim.improvement_manager, sn_cim.improvement_coordinator

About this task
Continual Improvement Management Review and Close Process

Preconditions:
• Incident manager created an improvement request.
• Improvement Manager accepted and assigned the improvement request.
• Approver group member approved the improvement.
• Improvement Manager and Improvement Coordinator implemented the improvement.

Procedure
1. Review the improvement for closure.
a. Navigate to Continual Improvement > Under Review.
b. In the Improvement Register list, open the improvement in the Monitor/Review state.
c. On the Improvement Initiative form, verify that all phases in the CIM Phases related list are
100% complete.
2. Verify the improvement has met the improvement goal.
3. Close the improvement.
a. In the Closure Notes tab, set the closure code, achieved outcome category, and close notes.
b. Click Close in the header bar to close the improvement.
The improvement is no longer shown in the Open Improvement Register list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
Example: Close improvement
In the process of reviewing KPI performance in the Performance Analytics application, the
Incident Manager noticed the Average time to resolve an incident KPI scorecard was too long
(24 hours).
As part of the review process for Improve average time to resolve an incident by 25%
improvement, the Improvement Manager verified the work for the improvement is complete
(Improvement Initiative form and CIM Phases related list shows 100% complete).
The Improvement Manager also verified the improvement in two places before closing the
improvement.
• Performance Analytics now shows that the Average time to resolve an incident KPI has a
value of 16 hours, which is more improvement than the target value of 18 hours (18 hours is 25%
faster than the previous average of 24 hours).
• Benchmarks application now shows that the company result for the Average time to resolve
an incident KPI has a value of 16 hours, which is 2 hours better than the global industry
average.
CIM Phase 1- CIM Tasks 1 and 2
Field

Value

Number

CIMT0000116 (assigned internally)

Percent complete

*100

Actual end date

*2018-03-14

Short description

Resolved incident and reassigned count
improvements

CIM Task 1
Number

CIMT0000118 (assigned internally)

Active

*(Not selected)

State

*Closed Complete

Short description

Improve % of incidents resolved by first
assigned group by using self service and more
automation

Work notes

*Self service and automation implemented
to improve % of incidents resolved by first
assigned group

CIM Task 2
Number

CIMT0000119 (assigned internally)

Active

*(Not selected)

State

*Closed Complete

Short description

Reduce the reassigned count by using
ServiceNow Auto Categorization and Auto
Assignment models

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
CIM Phase 1- CIM Tasks 1 and 2 (continued)
Field

Value

Work notes

*Auto Categorization and Auto Assignment
implemented to reduce reassigned count

CIM Phase 2-CIM Tasks 1 and 2
Field

Value

Number

CIMT0000120

Percent complete

*100

Actual end date

*2018-03-14

Short description

Knowledge improvements and self service
improvements

CIM Task 1
Number

CIMT0000121 (assigned internally)

Active

*(Not selected)

State

*Closed Complete

Short description

Add new KB articles for common issues

Work notes

*These new KB articles were added

CIM Task 2
Number

CIMT0000123 (assigned internally)

Active

*(Not selected)

State

*Closed Complete

Short description

Provide training and enablement training for
new apps

Work notes

*Provided training for these new apps

Closure Notes tab
Field

Value

Closure code

*Successful

Achieved outcome category

*Customer Satisfaction

Closure notes

*All improvements verified, closing
improvement initiative

Improvement Initiative form
Field

Value

State

*Closed Complete

Percent Complete

*100

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
Related topics
Improvement field descriptions
Applications integrated with Continual Improvement Management

Continual Improvement Management reference
Descriptions of CIM improvement, task, and approver states and process workflow.

Improvement states
The state of an improvement indicates the progress of the improvement in the process.

State

New

Description

Improvement request is created either
manually, or from within an integrated
application by an Improvement Requester.
Integrated applications include Benchmarks,
CMDB, Coaching, Demand, GRC, Major
Incident Management, Problem Management,
and Survey Management.
States list:
• Accepted
• Canceled
List Controls menu ( ) options on the
Improvement Initiative form: Copy Initiative.

Accepted

Improvement request aligns with company
strategic objectives and is considered valid by
the Improvement Manager.
States list:
• Assess
• Canceled
List Controls menu ( ) options on the
Improvement Initiative form: Copy Initiative.

Canceled

Improvement is not accepted (Reject action is
selected by the Improvement Manager), or can
be canceled directly in any state.

Note: Any CIM tasks created for the
improvement are also canceled.
List Controls menu ( ) options on the
Improvement Initiative form: Copy Initiative.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
State

Assess

Description

All improvement attributes are set by the
Improvement Manager, including business
process, business service, and success
measurement details.
The improvement is waiting to be assessed by
an Approver group member for approval.
States list:
• Approved
(only shown for an Approver group member)
• Canceled
List Controls menu ( ) options on the
Improvement Initiative form:
• Copy Initiative
• Revert to Accepted

Approved

The improvement is assessed and approved
by an Approver group member and is ready for
implementation.
The improvement is set to implement by the
Improvement Manager.
States list:
• Implement
• Canceled
• Assess (for reapproval)
If additional tasks were added, or if the
target has changed, the improvement may
need to go through approval again.
List Controls menu ( ) options on the
Improvement Initiative form:
• Copy Initiative
• Submit for Re-Approval

In Progress

CIM task creation is completed by the
Improvement Manager or Improvement
Coordinator. CIM tasks are completed by the
task owners.
The Improvement Coordinator determines
either that the improvement is complete and
sets it to review, or that progress is halted and
places it on hold.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
State

Description

States list:
• Monitor/Review
• On Hold
• Assess (for reapproval)
If additional tasks were added, or if the
target has changed, the improvement may
need to go through approval again.
List Controls menu ( ) options on the
Improvement Initiative form:
• Copy Initiative
• Submit for Re-Approval
On Hold

Improvement is no longer in progress but may
resume at a later date.
The Improvement Manager determines
the outcome of the improvement including
whether it should go back to implementation,
or be closed or canceled.
States list:
• Implement
• Closed
• Canceled

Note: When an improvement is placed
on hold, all active CIM tasks (not closed
or canceled) are also placed on hold, but
the state can be changed manually.
When the improvement is taken off
hold, all active CIM tasks (not closed or
canceled) are set to Open state (unless
they were changed manually).
List Controls menu ( ) options on the
Improvement Initiative form: Copy Initiative.
Monitor/Review

All CIM tasks for the improvement are
complete, improvements have been
measured, and no further action is required by
the task owners.
The improvement is reviewed for closure by
the Improvement Manager.
States list:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
State

Description

• Implement
• Closed
• Assess (for reapproval)
If additional tasks were added, or if the
target has changed, the improvement may
need to go through approval again.
List Controls menu ( ) options on the
Improvement Initiative form: Copy Initiative.
Closed

Delete

Improvement is complete and is added to the
Closed Improvement Register list.
Improvement is removed from the
Improvement Register list.
Available in each state but only to the
Improvement Manager.

CIM task states
An improvement contains of one or more CIM tasks to complete the improvement. A CIM task is
assigned to an owner to be responsible for the work specified.
The state of a CIM task indicates the level of progress for the task.

State

Pending

Description

State of a CIM task added before the
improvement has been approved.
If a CIM task is added after the improvement is
approved, the CIM task is set to Pending state
until the improvement is approved again.
Once approved, the CIM task is set to Open
state.
If rejected, the CIM task remains in the
Pending state.

Open

Work in Progress

State of a new CIM task for an improvement
that has been approved.
State of a CIM task for which work has begun.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
State

Description

Closed Complete

State of a closed CIM task that has been
completed.

Closed Incomplete

State of a closed CIM task that has been
closed but not fully completed.

Closed Skipped

State of a closed CIM task for which no work
has been done.

On Hold

State of a CIM task for an improvement set to
On Hold state.
The state of a CIM task on hold can be
manually changed to Open or Work In
Progress states.

Note: When an improvement is placed
on hold, all active CIM tasks (not closed
or canceled) are also placed on hold, but
the state can be changed manually.
When the improvement is taken off
hold, all active CIM tasks (not closed or
canceled) are set to Open state (unless
they were changed manually).

CIM approver states
Each improvement needs at least one approval
to progress to the Implement state. The
Approvers related list in the improvement contains a list of user approval records and the state of
the approval.
The users in the Approvers related list belong to the Approver Group specified on the
Improvement Initiative form. Once the improvement has been approved by an Approver Group
member, approval from other members is no longer required to progress the improvement.
However, other Approver Group members can still set their individual approval state.
To require additional approvers, configure the CIM Approval workflow in Flow Designer

.

Improvement process flow
Process flow for Continual Improvement Management

Process flow

Role

Description

Create Improvement
Initiative

Improvement
Requester

The need is
determined for an
improvement and an
improvement request
is created.

Next action

Click Submit.
Required: Short
Description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
Process flow

Role

Description

New

Improvement
Manager

Acceptance is
determined by
verifying that the
improvement
objective aligns to a
company strategic
objective, and
an Improvement
Coordinator is
assigned.

Accepted

Improvement
Manager

Other attributes
are set and the
improvement request
is ready to be
assessed for approval
(by Approver group
members).

Next action

Click Accept.
Required:
• Improvement
Coordinator
• Strategies

Click Assess.
(Waiting for approval)
Approver group
members are notified.
Required: Approver
Group

Assess

CIM approver
(member of the
Approver group)
CIM approver states

Approved

Implement

The improvement
Click Approved.
attributes are
assessed for approval
from the Approvers
related list.

Improvement
Manager or
Improvement
Coordinator

Improvement
Coordinator and
Improvement
Manager work
together to determine
what is needed
to ready the
improvement for
implementation.

Improvement
Coordinator

Implementation of the
Click Review if
improvement begins
with the assigned task implementation is
complete.
owners.
Any problem, change,
or knowledge
submission is shown
in the corresponding
related list.

On Hold

Improvement
Manager or
Improvement
Coordinator

Click Implement.
Actual start date
(Schedule tab)
is automatically
populated.

Click On Hold if the
process has halted.
Required: On Hold
Reason

Implementation for
the improvement has Click Implement to
halted (On Hold state) continue the process.
but the process flow
Click Close if no
remains in Implement.
further work will be
done.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
Process flow

Role

Description

Review

Improvement
Manager

The improvement
attributes are
reviewed for
completeness and
efficacy for closure.

Next action

Click Close.
Required: Closure
Notes tab
Actual end date
is automatically
populated.

CIM roles
Roles are added with installation of Continual Improvement Management.
CIM roles
Role

Description

Improvement Requester

Can perform
the following
application
functions:

[sn_cim.improvement_requester]

Contains roles

None

• Create
improvement
initiative
• View and track
improvement
initiatives
they've
submitted
• View all CIM
requests
within the
organization
• Follow and
monitor
improvements
by adding them
to the Watched
CIM Initiatives
list
Improvement Coordinator

Can perform
Improvement
[sn_cim.improvement_coordinator] Manager
functions for
improvements
that they’re
assigned to as
Improvement
Coordinator.

• sn_cim.improvement_requester
• app_service_user
• certification
• cmdb_query_builder
• dependency_views
• approver_user
• cmdb_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
CIM roles (continued)
Role

Description

Contains roles

• Coordinate
improvements
within their
area of
expertise at
the process or
service level

• knowledge

• Access the
Continual
Improvement
Workbench
Improvement
Coordinators
can’t perform
these functions:

• pa_analyst
• pa_contributor
• pa_power_user
Can assess existing Performance Analytics
indicators and create new ones.
• pa_target_admin
• pa_threshold_admin
• pa_viewer
• sn_bm_client.benchmark_data_viewer
• sn_bm_client.benchmark_recommendation_viewer

• Create
enterprise
strategies

Can view Benchmarks data and recommendations
and create improvement initiatives from
Benchmarks recommendations.

• Delete
improvement

• template_editor
• view_changer
• sn_coaching.admin
• scrum_story_creator

Improvement Manager
[sn_cim.improvement_manager]

Can perform
all application
functions and is
responsible for
all improvements.

• sn_cim.improvement_coordinator
• sn_process_optimization_viewer

• Accept new
improvement
requests
• Assign
improvements
to
Improvement
Coordinators
for
implementation
• Access the
Continual
Improvement
Workbench

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
CIM roles (continued)
Role

Description

Contains roles

• Monitor the
progress of
improvements
• Review
and close
improvements

For information about assigning user roles, see Assign a role to a user

.

Automatic assignment of the Improvement Requester role
The Improvement Requester (sn_cim.improvement_requester) role is automatically assigned to
the roles listed in the following table when CIM is activated.

Application

Role

Strategic Portfolio Management (only if SPM plugins are active)
Agile Development

scrum_master

Demand Management

it_demand_manager

Portfolio Management

it_portfolio manager

Program Management

it_program_manager

Project Management

it_project_manager

Test Management

tm_test_manager

ITSM
Benchmarks

• sn_bm_client.benchmark_admin
• sn_bm_client.benchmark_recommendation_viewer

Change Management

change_manager

Coaching

sn_coaching.admin

Incident Management

incident_manager

ITSM

itil

Survey Management
Assessments

• survey_admin
• survey_reader

Performance Analytics and Reporting

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
Application

Role

Performance Analytics

• pa_admin
• pa_power_user
• pa_viewer

Email notifications by role
Email notifications are sent when the state of the improvement request changes or when the
target date is breached based on the user role.
Email notification list by role
Improvement
action

Improvement
Manager

Improvement
Coordinator

Improvement
Requester

Watch list

Task assignee

Canceled

No

Yes

Yes

Yes

No

Approved

Yes

Yes

No

Yes

No

Closed

Yes

Yes

Yes

Yes

No

Target review
date is
breached

Yes

Yes

No

Yes

No

CIM task
assigned

No

No

No

No

Yes

CIM task
closed

No

Yes

No

No

Yes

Improvement field descriptions
Improvement Initiative form and related field descriptions.

Improvement Initiative form
Field

Number
Business service

Service offering
Business process

Description

Unique CIM number.
CMDB Business service improved by the improvement
initiative.
Service offering associated with this improvement initiative.
Business process improved by the improvement initiative.
When a business process is selected, the improvement area
Type field on the Details tab is automatically set to Process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
Field

CIM Coordinator

Description

User primarily responsible for ensuring the completion of the
improvement initiative.
The CIM Coordinator must have the Improvement Coordinator
role (sn_cim.improvement_coordinator).

Approver group

Group of users that have permission to approve the
improvement initiative.
CIM Approvers group is added with Continual Improvement
Management. Default is empty.

Strategies

Strategic objectives impacted by the improvement initiative.
Multiple strategic objectives can be selected. Strategic
objectives can be added from the lookup list.
The lookup list contains both Continual Improvement
Management strategic objectives and business enterprise
strategies
to align with the improvement initiative.
An enterprise strategy can be added from the navigation
menu Continual Improvement > Enterprise Strategies.
Also accessible through Business Planner and Organization
navigation menus.

Note: If the improvement initiative does not align with a
company strategic objective, you can click Reject in the
header bar to reject the improvement initiative.
State

State of the improvement initiative. This field is read only.
• New
• Accepted
• Assess
• Approved
• In Progress
• On Hold
• Monitor/Review
• Closed
• Canceled

On hold reason

Reason for putting the improvement initiative on hold.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
Field

Description

Note: This field is shown only when the state is on
hold.
When an improvement initiative is placed on hold, all
CIM tasks are also placed on hold, but the state can be
changed manually.
When the improvement initiative is taken off hold, the
CIM tasks are returned back to their previous state
unless they were changed manually.
Priority

Sequence in which an incident or problem is to be worked on,
based on impact and urgency.
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Effort estimate

Estimate of effort to complete all required tasks for the
improvement initiative.
• Small
• Medium
• Large
• Extra Large

Benefits

Percent complete

Short description
Business justification

Expected level of benefits achieved by completing the
improvement initiative.
Percentage of work completed. The percentage is based on
the completed state of the CIM phases that belong to this
improvement initiative. For example, if there are five CIM
phases, each contributes to 20% completion.
Brief explanation of the improvement initiative.
Description about the importance of the improvement and
additional details that includes metrics or KPIs used to
measure the success.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
Goals tab
Field

Description

Success measurement
method

• Automated: PA Indicator: An improvement KPI.
• Reports: Reports to track progress. Users who do not use
performance analytics can add reports to track the initiatives.
• Survey and Assessment: An Assessment metric type.
• Manual: All other types.

Improvement KPI

Primary KPI used to measure the improvement of the
improvement initiative.
The Show Score Card icon launches the Performance Analytics
score card for the improvement KPI.

Note: This field is shown only when the Success

Measurement Method field is set to Automated: PA
Indicator.
Breakdown

The breakdown of the improvement KPI, if one exists.

Note: This field is shown only when an improvement

KPI is selected for the Automated: PA Indicator success
measurement method.
Element

The element of the KPI breakdown.

Note: This field is shown only when a breakdown is
selected.
2nd Breakdown

The second-level breakdown of the improvement KPI, if one
exists.

Note: This field is shown only after the first breakdown is
selected.
2nd Element

The element of the second-level KPI breakdown.

Note: This field is shown only when a second-level
breakdown is selected.
Time Series

Time series for the improvement KPI.

Note: This field is shown only when an improvement KPI
is selected.
Survey & Assessment

Assessment metric type associated with the improvement
initiative.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


<!-- page 568 -->
Field

Description

Note: This field is shown only for the Survey &
Assessment success measurement method.
If the improvement initiative was created from within
the Survey Management application, this field is not
automatically populated.
Base value

Percentage improvement

Base value of the success measurement method when the target
is set.
Percent improvement target.

Note: This field is shown only when an improvement KPI
is selected.
If the KPI is a percent type, then this field is calculated
automatically (based on Base value and Target value
fields).
Target value

Absolute target value.

Note: For the Automated: PA Indicator success
measurement method, if the KPI is not a percent type, then
this field is calculated automatically (based on base value
and percentage improvement).
If the target value is already set on the indicator,
breakdown, element, and aggregation, this field is
automatically set. However, you can override this value by
specifying a percent in the Percent Improvement field.
The target value set in this field is synced with the Performance
Analytics indicator target for the KPI (Performance Analytics >
Indicator > Targets).
Target review date

Date the goal should be achieved.

Note: For the Automated: PA Indicator success
measurement method, even if the target date is already set
on the indicator, breakdown, element, and aggregation, this
field is not automatically set.
Expected outcomes

Tangible artifacts and updates expected by the improvement
initiative (for example, updated process published in new
template, work Instructions, and FAQ published in knowledge
base).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
Details tab
Field

Requested for
Type

Description

User for which the improvement initiative was created.
Area improved by the improvement initiative. One or many areas
may be selected.
• People
• Process
• Technology
When a value is selected for the Business Process field, the
Type field is automatically set to Process.

Watch list

Parent initiative

Users notified when updates are made to the improvement
initiative.
Parent initiative associated with this child initiative.
When a parent initiative is selected, all associated child
initiatives display in the Child Initiatives related list.

Source/Parent

Source or parent application from which the improvement
initiative was created.
• Coaching Opportunity (COP)
Coaching opportunity record to which the improvement
initiative is linked.
• CMDB
Remediate Duplicate Tasks record to which the improvement
initiative is linked.
• Demand (DMND)
Demand record to which the improvement initiative is linked.
• GRC issue
Issue record to which the improvement initiative is linked.
• Incident (INC)
Incident record to which the improvement initiative is linked.
• Problem (PRB)
Problem record to which the improvement initiative is linked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
Field

Description

• (Survey) Assessment Metric Type
Assessment metric type for the survey definition record to
which the improvement initiative is linked.

Note: This field is shown only when an improvement
initiative is created from Coaching, CMDB, Demand
Management, GRC, Incident Management, Problem
Management, or Survey Management applications.

Schedule tab
Field

Description

Planned start date

Expected start date. By default, this field displays the date and time
when the CIM initiative was created.

Planned end date

Expected end date. By default, this field displays the date and time
for the day after the planned start date.

Actual start date

The date and time when the progress on a new initiative starts.

Actual end date

The date and time when the last task associated with an initiative is
completed.

Notes tab
Field

Additional comments (customer
visible)

Description

Check box to show additional comments that are visible
to the customer.
If checked, the Additional comments (Customer
visible) field content is shown.

Work notes

Work notes relating to the improvement initiative.

Note: Required when submitting the
improvement initiative for reapproval.

Closure Notes tab
Field

Description

Closure code
• Successful: Goals met.
• Withdrawn: No longer needed/applicable.
• Unsuccessful: Goals not met.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
Field

Description

Achieved outcome category
• Cost Reduction
• Revenue Generation
• Time Savings
• Customer Satisfaction
• Quality Improvement
Close notes

Notes regarding the improvement initiative closure.

CIM Phases related list
Field

Number
Parent

Description

Unique CIMT phase number.
Improvement initiative to which the CIM phase belongs.
There can be multiple CIM phases per improvement
initiative.
The CIM phase groups the tasks, sets a planned end
date, and shows the percent complete for tracking
purposes.

Percent complete

Percentage of work completed.
Percentage is based on the completed state of the CIM
tasks that belong to this CIM phase.
For example, if there are five CIM tasks, each contributes
to 20% completion.

Planned end date
Actual end date
Short Description
Description

Estimated phase end date.
End date of the phase.
Short description of the phase.
(Required) Full description of the phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
CIM Tasks related list
Field

Number
Parent

Description

Unique CIMT task number.
If the CIM task is tied to a CIM phase, the improvement phase
number to which the CIM task belongs. A CIM task can only be tied
to one CIM phase.
You can also create a CIM task directly from a CIM initiative.
CIM tasks consist of the work required to complete the
improvement initiative.

Active
Assigned to
Improvement Initiative
Priority

Check box that indicates whether the task is active.
User primarily responsible for completion of the task.
Improvement initiative number to which the CIM task belongs.
Sequence in which an incident or problem is to be worked on,
based on impact and urgency.
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

State

State of the task.
• Pending
• Open
• Work In Process
• Closed Complete
• Closed Incomplete
• Closed Skipped
• On Hold

On Hold Reason

Reason for putting the CIM task on hold.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
Field

Description

Note: This field is shown only when the state is on hold.
When an improvement initiative is placed on hold, all CIM
tasks are also placed on hold, but the state can be changed
manually.
When the improvement initiative is taken off hold, the CIM
tasks are returned back to their previous state (unless they
were changed manually).
Planned end date
Short Description
Description
Work notes

Estimated end date of the task.
Short description of the task.
Full description of the task.
Work notes for the task.

Impacted KPIs related list
Field

Improvement Initiative

Impacted KPI

Breakdown

Description

Improvement initiative number to which the impacted KPI
belongs.
Other related KPIs (independent of the Improvement KPI) that
are affected by changes made as a result of the improvement
initiative.
The breakdown of the impacted KPI.

Note: This field is shown only when an impacted KPI is
selected.
Element

The element of the KPI breakdown.

Note: This field is shown only when a breakdown is
selected.
Breakdown Level 2

The second-level breakdown of the improvement KPI, if one
exists.

Note: This field is shown only after the first breakdown
is selected.
Element Level 2

The element of the second-level KPI breakdown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
Field

Description

Note: This field is shown only when a second-level
breakdown is selected.
View Scorecard

Related link to view the scorecard for the KPI.

Note: The View KPI details button displays the details of
the improvement KPI.

Approvers related list
Field

State

Description

State of the approval.
• Not Yet Requested
• Requested
• Approved
• Rejected
• Canceled
• No Longer Required

Approver

User authorized to approve the improvement initiative.
Approvers are members of the group set in the Approver
Group field on the Improvement Initiative form.

Comments
Created

Comments for the approval improvement initiative.
Date the improvement initiative was created.

Components installed with Continual Improvement Management
Several types of components are installed with the CIM plugin, including tables, user roles, and
scheduled jobs.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles
• Improvement Requester [sn_cim.improvement_requester]
• Improvement Coordinator [sn_cim.improvement_coordinator]
• Improvement Manager [sn_cim.improvement_manager]
For more information about the inherited roles and functions that users with different CIM roles
can perform, see CIM roles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
Scheduled jobs
Scheduled job

Description

[PA Continual Improvement]

Daily CIM data collection.

[PA Continual Improvement]

Historical CIM data collection.

Tables
Table

Description

Improvement Initiative

Contains all improvement initiatives.

[sn_cim_register]
CIM Task

Contains the CIM tasks created for an improvement initiative.

[sn_cim_task]
Impacted KPIs

Contains KPIs related to the CIM improvement initiative.

[sn_cim_related_kpi]
Inbound CIM Integration
[sn_cim_inbound_m2m]

Contains M2M tables to integrate CIM with other ServiceNow
applications.
With an inbound CIM integration, you can create a CIM record from
the application that is integrated with CIM.

Outbound CIM
Integration

Contains M2M tables that integrates other ServiceNow applications
withCIM.

[sn_cim_outbound_m2m] With an outbound CIM integration, you can create an outcome
based on the integrated application, for example, a story or
knowledge article from a CIM record.

Properties
To access CIM properties, navigate to Continual Improvement > Administration > Properties.

Note: System admin role is required to set CIM properties.
Property

Description

sn_cim.need_approval

Enables approval process for Continual Improvement initiatives.
By default, an improvement requires approval before it can
progress to the Implement state. When the check box is
enabled, it indicates that manual approval is required for the
improvement to progress from Accepted state to Approved
state.
• Type: Yes|No
• Default value: Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
Property

Description

If this property is not checked, the improvement automatically
progresses to Approved state once it is accepted, and the
Approver group field and the Approvers related list on the
Improvement Initiative form are not shown.
sn_cim.initiative_copy_attributes
List of comma-separated attributes or field values copied from
the improvement initiative or CIM task to the application task
record (example, demand, project, change record) created from
the improvement initiative.
• Short description (short_description)
• Description (description)
• Priority (priority)
• CIM estimate (cim_estimate)
• Benefit (benefit)
• Assigned to (assigned_to)
• Strategic objective (strategic_objective)
• Business process (business_process)
• Business service (business_service)
• Approver group (approver_group)
• Type (type)
sn_cim.create_default_phase Enable the property to create the default phase when an
improvement initiative is created.
• Type: Yes|No
• Default value: No

Quick tests for Continual Improvement Management
Validate the continued functionality of Continual Improvement Management during application
development and after upgrades. Copy and configure these automated tests to identify
customizations needing review. All test suites and tests should pass.

Note: To run CIM automated tests:
• The Continual Improvement Management Automated Tests (com.sn_cim_atf) plugin must
be enabled.
• The sn_cim.create_default_phase system property must be enabled. For more
information, see Properties installed with Continual Improvement Management.

Name

Description

CIM Parent test suite

Parent test suite that contains multiple child
test suites.
• CIM Inbound Integration
• CIM Outbound Integrations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
Name

Description

• CIM Phase and Task
• CIM State Flow

Note: There is no dependency between
child test suites.
CIM Inbound Integrations

Suite that contains tests to create an
improvement initiative from inbound
integration applications.
• Problem Management
• Incident Management
• Demand Management
• Coaching
• Survey Management
• Assessments

CIM Outbound Integrations

Suite that contains tests for all CIM outbound
integrations.
• From an improvement initiative:
Create demand and create project.
• From an improvement initiative task:
Create knowledge article, change request,
coaching opportunity, and story.

CIM Phase and Task

Suite that contains tests for CIM phase and
CIM task creation, roll-up tasks, roll up phases,
and dates.

CIM State Flow

Suite that contains all CIM state-related tests.

CIM: Create a demand from an improvement
initiative

Tests that a user with the Improvement
Manager role can create a demand from an
improvement initiative.

CIM: Create a project from an improvement
initiative

Tests that a user with Project manager and
Improvement Manager roles can create a
project from an improvement initiative.

CIM: Create a change request from an
improvement initiative task

Tests that a user with the Improvement
Manager role can create a change request
from an improvement initiative task.

CIM: Create a coaching opportunity from an
improvement initiative task

Tests that a user with Coaching admin and
Improvement Manager roles can create a
coaching opportunity from an improvement
initiative task.

CIM: Create a knowledge article from an
improvement initiative task

Tests that a user with Knowledge admin
and Improvement Manager roles can create

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
Name

Description

knowledge article from an improvement
initiative task.
CIM: Create a story from an improvement
initiative task

Tests that a user with Project manager and
Improvement Manager roles can create a story
from an improvement initiative task.

CIM: Create a task within a phase

Tests that a task can be created within a
phase.

CIM: Improvement Coordinator creates a task
and phase

Tests that a user with the Improvement
Coordinator role can create a task and phase.

CIM: Improvement Coordinator state flow from Tests that a user with the Improvement
Approved to Implement
Coordinator role can change an improvement
initiative from Approved state to Implement
state.
CIM: Improvement Manager creates a
strategic objective

Tests that a user with the Improvement
Manager role can create a strategic objective.

CIM: Improvement Manager creates a task
and phase

Tests that a user with the Improvement
Manager role can create a task and phase.

CIM: Improvement Manager deletes an
improvement initiative

Tests that a user with the Improvement
Manager role can delete an improvement
initiative.

CIM: Improvement Requester cannot create a
task or phase

Tests that a user with the Improvement
Requester role cannot create a task or phase.

CIM: Improvement Requester creates an
improvement initiative

Tests that a user with the Improvement
Requester role can create an improvement
initiative.

CIM: Inbound integration from Assessments

Tests that a user with the Survey administrator
role can create an improvement initiative from
an assessment.

CIM: Inbound integration from a coaching
opportunity

Tests that a user with the Coaching admin role
can create an improvement initiative from a
coaching opportunity.

CIM: Inbound integration from Demand
Management

Tests that a user with the Demand manager
role can create an improvement initiative from
a demand.

CIM: Inbound integration from Incident
Management

Tests that a user with the itil role can create an
improvement initiative from an incident.

CIM: Inbound integration from Problem
Management

Tests that a user with the itil role can create an
improvement initiative from a problem.

CIM: Inbound integration from Survey
Management

Tests that a user with the Survey administrator
role can create an improvement initiative from
a survey.

CIM: Initiative reject approval state flow from
Assess to Accepted

Tests when an improvement initiative in
Assess state is rejected by an approver, the
state reverts back to Accepted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
Name

Description

CIM: Initiative state flow from Implement to On Tests that an improvement initiative in
Hold
Implement state can be changed to On Hold
state.
CIM: Initiative state flow from New through
Closed

Tests that an improvement initiative in New
state can be progressed through states
Accepted, Assess, Approved, Implement,
Review, to Closed state.

CIM: Initiative state flow from On Hold to
Implement

Tests that an improvement initiative in On Hold
state can be changed to Implement state.

CIM: Initiative state flow from On Hold to
Review

Tests that an improvement initiative in On Hold
state can be changed to Review state.

CIM: Initiative state flow from Review to
Implement

Tests that an improvement initiative in Review
state can be changed to Implement state.

CIM: New phase planned end date check

Tests that the planned end date for a new
phase is at least one day later than the
planned start date of the improvement
initiative.

CIM: Phase creation for a new improvement
initiative

Tests that a phase is automatically created
when an improvement initiative is created.

CIM: Planned end date always later than
planned start date

Tests that the planned end date of the
improvement initiative is not earlier than
the planned start date of the improvement
initiative.

CIM: Roll-up phase to improvement initiative
value check

Tests that the phase-level roll-up value for the
improvement initiative (percent complete) is
accurate.

CIM: Roll-up tasks to phase value check

Tests that the task-level roll-up value for the
phase (percent complete) is accurate.

CIM: Skip approval process flow

Tests that the approval process is skipped
when the Enable approval process for
Continual Improvement initiatives property is
cleared.

CIM: Submit an initiative in Accepted state to
Cancel

Tests that an improvement initiative in
Accepted state can be submitted for Cancel
action.

CIM: Submit an initiative in Approved state for
Re-Approval

Tests that an improvement initiative in
Approved state can be submitted for ReApproval action.

CIM: Submit an initiative in Assess state for
Revert to Accepted

Tests that an improvement initiative in Assess
state can be submitted for Revert to Accepted
action.

CIM: Submit an initiative in Implement state for Tests that an improvement initiative in
Re-Approval
Implement state can be submitted for ReApproval action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
Related topics
Quick start tests

Updates after improvement initiative creation from integrated applications
UI changes display on the source application record and on the initiative record when you create
an improvement initiative from an integrated application.
• Benchmarks

Benchmarks recommendation candidate

Improvement initiative

Create Improvement Initiative related link
is replaced by the CIM number related link
once an improvement initiative is created.

Benchmarks recommendation KPI is added
to the Improvement KPI field on the Goals
tab.

• Coaching

Coaching opportunity

Improvement initiative

Improvement Initiatives related list is added
that contains the improvement initiative
(CIM) record.

Coaching opportunity record to which the
improvement initiative is linked is added to
the Source/Parent field in the Details tab.

• Configuration Management Database (CMDB)

Remediate Duplicate Tasks record

Improvement initiative

Improvement Initiatives related list is added
that contains the improvement initiative
(CIM) record.

Remediate Duplicate Tasks record to which
the improvement initiative is linked is added
to the Source/Parent field in the Details tab.

• Demand Management

Demand record

Improvement initiative

Improvement initiative (CIM) record is set in
the Improvement field.

Demand record to which the improvement
initiative is linked is added to the Source/
Parent field in the Details tab.

Note: When the improvement is
closed, the demand record is set to
complete.

• Governance, Risk, and Compliance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
Issue record

Improvement initiative

Improvement Initiatives related list is added
that contains the improvement initiative
(CIM) record.

Issue record to which the improvement
initiative is linked is added to the Source/
Parent field on the Details tab.

• Incident Management

Incident record

Improvement initiative

You must customize the Incident form to
show the Improvement Initiatives related
list that contains the improvement initiative
(CIM) record.

Incident (INC) record is added to the Source/
Parent field on the Details tab.

• Problem Management

Problem record

Improvement initiative

You must customize the Problem form to
Problem (PRB) record is added to the
show the Improvement Initiatives related list Source/Parent field on the Details tab.
that contains the improvement initiative (CIM)
record.
The following are the corresponding states of the Problem record and the Improvement
Initiative.

Problem record state

Improvement initiative state

Open

New

Pending change

In Progress

Closed/Resolved

Closed

• Survey Management

Survey definition record

Improvement initiative

Improvement Initiatives related list is added
Survey definition (Assessment Metric Type
that contains the improvement initiative (CIM) [Survey view]) record is added to the Source/
record.
Parent field on the Details tab.

Updates after application record creation from improvement initiatives
UI changes display on the source improvement initiative or CIM task record and on the
corresponding application records of some applications when you create application records
from improvement initiatives or CIM tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
• Demand record

Improvement Initiative

Demand record

Demands related list is added that contains
the demand (DMND) record.

◦ Continual Improvement Management is
set in the Type field.
◦ Improvement initiative (CIM) record is set
in the Improvement field.

• Project record

Improvement initiative

Project record

Projects related list is added that contains the No change.
project (PRJ) record.
• Change record

CIM task

Change record

Change (CHG) record is added to the Change No change.
Requests related list.
The following are the corresponding states of the Change record and the CIM task.

CIM task state

Change record state

New

New

In Progress

Implement

Closed

Closed

• Coaching Opportunity

CIM task

Coaching opportunity record

Coaching opportunity (COP) record is added
to the Coaching Opportunities related list.

No change.

• Knowledge Base article

CIM task

Knowledge Base article record

Knowledge article record is added to the
Knowledge Articles related list.

No change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


