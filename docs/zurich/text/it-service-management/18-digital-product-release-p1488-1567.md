# Zurich IT Service Management — Digital Product Release

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1488–1567 of 3857

Sections: Digital Product Release (p1488); Explore (p1489); Configure (p1515); Use (p1526)

---

<!-- page 1488 -->
Return value for unique keyName (returnValueForUniqueKeyName-now)
Returns the value of a specific key based on its name in the snapshot. Unlike export value
for key within a node, the key is expected to be unique across the snapshot data
model. Multiple keys are supported.

Note: Formats xml and ini are not supported for this exporter.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/raw)
• keyName - Key name (data array)
Special logic
If the key is present multiple times in the snapshot, the exporter returns the first
value found (returns error).
Error handling
• If the keyName is not provided, no keyName argument provided.
• If the key is not found, key not found: <keyName>.

Digital Product Release
®

ServiceNow Digital Product Release (DPR) is a release management solution that helps release
managers, product managers, and program managers manage the release process.

Get started

Explore

Configure

Learn about how Digital Product Release
help you manage the release process
for delivering products and services.

Plan and configure your release readiness.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
Use

Reference

Manage and track the process of
delivering digital products and
services, from planning to delivery.

Get details about components
such as roles, tables, plugins, and
store applications that are installed.

Troubleshoot and get help
• Ask or answer questions in the Digital Product Release community forum
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Digital Product Release
®

The ServiceNow Digital Product Release application enables you to streamline the process of
delivering digital products and services by managing the process from planning to delivery.

Digital Product Release overview
Digital Product Release (DPR) is a release management solution that helps release managers,
product managers, and program managers manage the release process. They can track the
progress of releases while ensuring that the releases adhere to the company's policies.
This solution automates processes that enable collaboration between stakeholders, so everyone
can track release status, from start to finish.
DPR provides AI-driven capability to automate the creation of release notes for product and
service releases. The release notes are automatically generated from canonical release artifacts
—such as stories, problems, incidents, and change records. You can edit and publish the release
notes, and then download them in PDF or share a link. For more information, see AI-powered
release notes generation.

Digital Product Release Workflow
A digital product or service has a release life cycle that starts with planning, goes through
development, and ends with delivery. There are many different phases to the release life cycle of
a product or service, and each phase can have its own set of activities. The following infographic
illustrates the life cycle of digital products and services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
Release life cycle for digital products and services

1. Create a product or service and add features, product enhancements, and releases.
2. Plan the scope of a release by moving product enhancements into releases.
3. Initiate a release and set its release readiness target date.
4. Execute the release by tracking its progress and completing phases and tasks within each
phase.
5. Validate the release phase against mapped policies to ensure that the release adheres to
organizational standards.
6. Get the product or service ready by the specified target date to make it available for
deployment.

Personas
Digital Product Release is aimed at the following personas:

Release manager

• Manages release calendars
• Manages release templates
• Establishes release processes, including policy gates

Release coordinator or
Program manager

• Communicates dependencies across a release
• Approves the scope of a release
• Provides status updates to the release team

Product manager

• Releases new products, services, enhancements, and
features
• Communicates updates to the development status
• Plans the scope of a release

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
• Initiates a release
• Generate release notes using AI or add manually
Engineering lead

• Ensures development of new products, services,
enhancements, and features
• Connects development scope to a release

Digital Product Release benefits
Benefit

Feature

Users

Define release readiness targets for single or
recurring release schedules.

Release readiness
target

Release manager

Define release templates that include phases,
tasks, policies, and approval tasks.

Release templates

Release manager
or Release template
admin

Create policies to automate the release
process.

Policy administration

Release manager

Manage products, services, features, product
enhancements, versions, and initiate a
release.

Release planning

Product manager

Generate AI-powered release notes that
streamline release documentation, reduces
manual effort, and improves clarity for
stakeholders.

Generate AI-powered
release notes for a
release

Product manager

Plan and manage the release process from
start to finish.

Release execution

Release manager

Digital Product Release key terms
Approval definition
An approval definition is a set of rules that specify how tasks will be approved from
a set of stakeholders for a release. For example, the QA team might approve code
quality or the Security team might approve on the security aspects. An approval for
a task can be requested from an individual user or a user group.
Included products
Included products help you organize and manage related digital products and
services. By creating a product hierarchy using Included products, you can
understand the relationships between different products and services and make
informed decisions about product management.
Release bundle
A release bundle helps you to group multiple releases to track and manage them
concurrently from a single place. They also help you to identify dependencies and
potential conflicts, and make any necessary adjustments to ensure a smooth and
coordinated release process.
Release calendar
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
A release calendar helps you manage and track release readiness targets, releases,
and change requests. You can toggle between viewing release readiness targets,
releases, or change requests on the calendar using the filters.. The release calendar
also contains blackout, maintenance, and other user-defined schedules to avoid
overlap of release targets on those dates.
These options on the release calendar give you a comprehensive overview of
all events or activities scheduled for each date, improving release planning and
traceability.
Release execution
Release execution is a continuous process to track and monitor the progress of a
release. It helps you ensure that all products in the release are ready by the release
readiness target date.
Release readiness target
A release readiness target is when a release is ready to be released. It helps release
managers to determine the dates at which the products and services should be
ready for deployment by the team.
Release template
A release template is like a blueprint for a release process, which includes a
predefined set of phases, tasks, policies, and approval tasks.
Release teams can use these release templates to create a release. All phases,
tasks, approvals, and phase gates from the template will be automatically applied to
the newly created release. It helps the release teams avoid redundant activities and
focus on tracking and performing all the necessary tasks to complete the release on
schedule.
Stage-oriented release
A release that follows a stage-oriented process. This process doesn't have phases
with predefined end dates. It’s suitable for teams that work toward completing
product enhancements and objectives. Teams can move to the next phase after
they have completed tasks and met policy compliance for the current phase. Teams
have the flexibility to restart any completed phase if they encounter an issue that
requires them to go back.
Timeline-oriented release
A release that follows a timeline-oriented process. This process has defined end
dates for each phase of the release. It’s suitable for teams that work toward the
planned deadlines and have phases with a specific duration.
Release planning
Release planning is an activity to plan a product or service's enhancements into
releases to define the scope of work for each release.
The release must be associated with a release readiness target date, which
determines the start and end dates for phases and tasks based on the target date.

Digital Product Release Workspace
The Digital Product Release Workspace provides a single location for release admins to define
release processes and release readiness targets. Product managers can use it to create and
manage products and features, define the scope in versions, and plan and execute releases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


<!-- page 1493 -->
Digital Product Release Workspace users
The following users can use the Digital Product Release Workspace. The workspace is
personalized for different roles.
Digital Product Release Workspace users
Release manager

• Manages release calendars
• Manages release templates
• Establishes release processes, including policy gates

Release coordinator or
Program manager

• Communicates dependencies across a release
• Approves the scope of a release
• Provides status updates to the release team

Product manager

• Releases new products, services, enhancements, and
features
• Communicates updates to the development status
• Plans the scope of a release
• Initiates a release
• Generate release notes using AI or add manually

Engineering lead

• Ensures development of new products, services,
enhancements, and features
• Connects development scope to a release

Accessing the workspace
To open the workspace, navigate to Workspaces > Digital Product Release Workspace.

Landing page
On the workspace landing page, get a quick overview of the active releases, open approval
tasks, and policies compliance status.
As a release manager, you can use the onboarding tool to create and manage release processes.

Note: The widgets and the data that are displayed in the widgets depend on your role.
The following is an example of the workspace landing page for the Digital Product Release
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
Example of the landing page of Digital Product Release Workspace

Release template Playbook
In the workspace, you can use the Playbook to create release templates.
The following is an example of a release template playbook. For more information, see Create a
release template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
Example of a release template playbook in the workspace

Release for a product or service
A release groups all the tasks (projects, epics, stories, enhancements, defects, problems,
incidents, and so on) planned for a specific version of a product or service. Digital Product
Release provides two different processes: timeline-oriented and stage-oriented, to help you in
executing your releases.
A release is divided into a series of phases. During each phase, a defined list of tasks, approval
processes, and policies must be fulfilled.
A defined release process ensures that the work items in releases are built, tested, and are ready
for deployment.

Timeline-oriented release process
Timeline-oriented process is suitable for creating releases that have fixed deadlines and follow a
strict schedule.
This process helps you prioritize tasks, allocate resources, and track progress against the
timeline so you can make adjustments as needed to stay on track. Use this release process to:
• Set clear deadlines for each stage of your deployment, so you can plan and execute your
rollout smoothly.
• Keep your team on track by defining clear goals, so you can manage your resources effectively.
• Track your progress against key dates, and adjust your plans as needed to stay on schedule.
The following is the general flow that a timeline-oriented release goes through:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
• The flow starts with the first phase in the Pending state, which is the default state. The state of
the phase moves to In Progress when it starts on the planned start date.
Tasks in the phase are processed based on the system property
sn_dpr.sequential_task_execution:
◦ true: Tasks in the phase are processed in sequential order. At the start of a phase, the task
with the lowest order in it is set to the Open state. After this task is completed, the next task
in the order is opened. This process continues for the remaining tasks in the phase. If the
task is an approval task, the state is moved to the Requested state.
◦ false: Tasks in the phase are not processed in a sequence. Instead, all its tasks are set to the
Open state at the start of the phase.
• When all tasks are completed and policies are compliant, the phase ends automatically on its
planned end date. The phase state updates to the Completed state.
• After the current phase is completed, the next phase moves to the In Progress state. Only one
phase can be in progress at a given time.
• When all phases in the release are completed, the release moves to the Review state.
• When the review of the release is completed, the release moves to the Completed state.

Stage-oriented release process
Stage-oriented process is suitable for creating releases that prioritize completing objectives and
features over following a strict timeline.
Certain products are not constrained by a specific time frame for how long they should remain in
a particular phase. Releases for those products can follow the stage-oriented release process.
This process focuses on making sure that the product is ready to be released, rather than
following a strict schedule or phase.
You can finish a release as soon as the product meets the set criteria, instead of waiting for
a specific timeline or phase to end. However, you must ensure that all aspects of the release,
including development, testing, and quality assurance, are done well to keep the product high
quality.
Use this release process to:
• Set priorities for features and goals, instead of deadlines, so that you can adjust your plans
throughout the development process.
• Restart the release from any of the previous phases to adjust goals and features based on
testing results and user feedback.
• Track your progress by ensuring features are completed and the goals are met for a highquality result.
The following is the general flow that a stage-oriented release goes through:
• The flow starts with the first phase in the Pending state, which is the default state. The state of
the phase moves to In Progress when you manually start it.
Tasks in the phase are processed based on the system property
sn_dpr.sequential_task_execution:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
◦ true: Tasks in the phase are processed in sequential order. At the start of a phase, the task
with the lowest order in it is set to the Open state. After this task is completed, the next task
in the order is opened. This process continues for the remaining tasks in the phase. If the
task is an approval task, the state is moved to the Requested state.
◦ false: Tasks in the phase are not processed in a sequence. Instead, all its tasks are set to the
Open state at the start of the phase.
• When the all tasks are completed and all policies are compliant or compliant with exceptions
for the current phase, it automatically moves to the Completed state.
• After the current phase is completed, the next phase moves to the In Progress state. Only one
phase can be in progress at a given time.
• If you encounter any issues at any point, you can restart from a previously completed phase.
That phase and later phases are reset, including tasks and policy status.
• When all phases in the release are completed, the release moves to the Review state.
• When the review of the release is completed, the release moves to the Completed state.

Single product or service release
A single product or service release enables you to release one product or service at a time. This
release approach can be useful for smaller or less complicated products or services, as it makes
the release process more focused and easier to manage. For more information, see Work on a
timeline-oriented release for a single product or service and Work on a stage-oriented release for
a single product or service.

Multi-product release
A multi-product release enables you to release different products at the same time. You can
do this by including several individual releases for each product, all tied to a main release of
a primary product or service. You manage the phases and release readiness from the main
release and track the collective progress. However, you can set the scope, track approvals, and
run policies for each individual product or service release. This release approach differs from
release bundles, where you monitor the progress of multiple releases together but manage
them independently. For more information, see Work on a timeline-oriented release for multiple
products and Work on a stage-oriented release for multiple products.

System properties to control the release processes
The following system properties control the initiation of automated actions during various stages
of the release process.
• sn_dpr.stage_workflow_auto_transition
• sn_dpr.auto_transition_release_to_review
• sn_dpr.auto_transition_release_to_completed
For more information about these properties, see Digital Product Release properties.
Related topics
Create a release for a product or service
Managing timeline-oriented releases
Managing a stage-oriented release
Managing multiple releases through release bundles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
DPR and GRC integration for release compliance
®

The integration between Digital Product Release (DPR) and ServiceNow GRC: Policy and
Compliance Management connects your release management processes with the enterprise
risk and compliance controls. This integration helps you deliver faster, safer, and reliable
releases.
Starting with Digital Product Release version 2.3, the DPR integration with GRC: Policy and
Compliance Management unifies release management with the organization's risk and
compliance operations. This compliance-driven, risk-aware approach automates compliance
validation, helping you deliver releases faster and more safely while reducing manual effort.
It enables organizations to:
• Map Control Objectives and PaCE policies enabled for DPR.
• Automate compliance checks and risk assessments as part of the release workflow.
• Manage exceptions and justified deviations from policy in a controlled manner, while
maintaining governance and audits.
• Provide real-time visibility into compliance status, risks, and policy adherence for every
release.

Note: Make sure you have the GRC: Policy and Compliance Management
(sn_compliance) version 21.1.3 or above installed.

Digital Product Release and GRC: Policy and Compliance Management
integration workflow
The following table shows a simplified, end-to-end workflow for policy compliance validations
and exceptions when integrating DPR and GRC.

Note: Users must have both sn_dpr_model.release_user and
sn_compliance_ws.corporate_compliance_manager roles to access the
PaCE policies tab in Control Objective records and the PaCE results tab in Control records.
Digital Product Release and GRC: Policy and Compliance Management integration workflow
In Digital Product Release

In GRC: Policy and Compliance Management

-

1. In the Compliance Workspace, the
compliance manager maps a control objective
and policies from the PaCE policies tab in the
Control Objective record.

Note: Only the policies that have the
exception enabled can be mapped to a
control objective.
For more information, see Manage control
objectives and policies using the Compliance
Workspace .
2. In the Digital Product Release Workspace,
the product manager, release admin, or
release coordinator maps policies with a
phase of a release.

-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
Digital Product Release and GRC: Policy and Compliance Management integration workflow
(continued)
In Digital Product Release

In GRC: Policy and Compliance Management

3.a. While executing the release, release
admin or product manager runs these mapped
policies to validate the phase completeness.
-

3.b. One or more Controls are created for a
combination of release entity and control
objective (CO).
For more information, see Multiple controls for
compliance management .
The policy execution status is listed in the
PaCE results tab in the newly created Control
records.

4. If a policy fails, then the release admin or
product manager can request an exception
providing a reason and business justification.
If a previously requested exception has
expired, they can request an extension.

-

-

5. Compliance manager or an authorized
user from the Policy and Compliance group
reviews and approves the policy exception (or
extension) request.
For more information, see Review the policy
exception and extension request using the
Compliance Workspace .

6. On subsequent execution of the policy, the status of the same failed policy updates to
Compliant with exception. The aggregated
status in the Policy status field on the Details
tab also updates to Compliant with exception.
The phase is ready for completion.

AI-powered release notes generation
Digital Product Release provides an AI-driven summarization feature that automatically
generates release notes for your product and service releases. This capability streamlines the
release note creation process, reducing manual effort and improving consistency.

Key capabilities
Using AI to generate release notes gives you clear, well-structured release notes that are
easy to share and update. It also reduces potential issues like delays, errors, and inconsistent
messaging when you do it manually. Other key capabilities include:
Automated generation using release scope
AI generates release notes based on release scope artifacts such as stories,
defects, change records, incidents, and problems.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
Customizable output
The AI-generated release notes draft is ready for review and modification as
needed.
Flexible sharing
Share your published release notes via a link or download the PDF for offline use.
Rich formatting
The release notes draft is displayed in rich text format, which enables multilingual
output and the redaction of sensitive data.

How it works
The release notes are generated using a Now Assist summarization skill called Generate Release
Notes. This skill is available when the Now Assist for IT Service Management (ITSM) plugin is
installed. The skill is inactive by default, and you must activate it to use this feature.
1. When your release is in the readiness phase, select the option to generate release notes.
2. The system creates a draft using AI summarization.
3. Review and modify the draft as needed.
4. Publish and share the release notes with your audience.

What's included
The AI summarization feature pulls together details from your enhancements, features, incidents,
change records, then drafts a set of release notes, which includes the following sections:
Executive summary
This section provides a high-level overview of the release, highlighting major
enhancements and defect fixes.
Scope of work
This section provides details about new features, enhancements, and defect fixes
included in the release, listed in subsections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
Related topics
Generate AI-powered release notes for a release
Now Assist for IT Service Management (ITSM)

Holiday schedules in a release
You can associate a holiday schedule with a release so that the phase and release durations are
calculated considering non-working days.
The following example of a release shows how holiday schedules affect its overall timeline to
keep important dates on working days.
Let's say a release has four phases: Planning, Development, Testing, and Implementation, with
durations of 10, 25, 15, and 10 days, respectively, totaling 60 working days. The release readiness
target date is set to Sep 5, 2025, and has a public and weekend holiday schedule (U.S. Federal +
Weekend holidays in 2025) associated. So, the start and end dates of each phase are adjusted
to account for non-working days (holidays and weekends on the schedule), to keep the phase
durations intact. Key dates also follow the same adjustment rule.
Considerations:
• Total release duration: 60 working days
• Phases and durations: Planning: 10 days; Development: 25 days; Testing: 15 days;
Implementation: 10 days
• Release readiness target date: Sep 5, 2025
• Working days in a week: Mon through Fri (5 days)
• Non-working days on the associated schedule:
1. Weekends are non-working days so skipped.
2. Federal holidays in 2025, relevant to the release period are as follows:
▪ Jun 19: Juneteenth (Thu).
▪ Jul 4: Independence Day (Fri).
▪ Sep 1: Labour Day (Mon).
• Adjustment rules:
◦ The original end date of the last phase is the release readiness target date,
usually a working day so no adjustment needed. All remaining phases prior to
the last phase get their original end and start dates by counting all calendar
days, including both working and non-working. Their adjusted end and start
dates are the actual dates on a working day, skipping non-working days.
◦ The original start date is determined by counting all calendar days backward
from the adjusted end date. The adjusted start date is the actual start date on a
working day, skipping non-working days.
◦ If a key date or the phase start or end date falls on a holiday or weekend, shift to
the previous working day.
◦ The duration of each phase (in days) remains fixed, but holidays and weekends
within the phase period extend the calendar span.
With these considerations, let's calculate the working days in the release timeline
and adjust the phase and release duration accordingly.
Calculation of release dates with holiday adjustments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Phase 4: Implementation
Option

Description

Phase

Phase 4: Implementation

Original end date

Sep 5 (Fri)
(Same as the release readiness target date)

Adjusted end date Sep 5 (Fri)
(A working day, no adjustment needed)
Original start date Aug 27 (Wed)
(10 days counted backward from the phase's adjusted end
date, includes weekends and holidays)
Adjusted start
date

Aug 22 (Fri)

Key dates

Deployment preparation: On 5th day from the phase's
adjusted start – Aug 28 (Thu)

(excludes weekends and holidays, see the End date
calculation)

(Excludes weekends and holidays. Falls on a working day, no
adjustment needed)
Original duration

10 days
Aug 27 (Wed) – Sep 5 (Fri)

Adjusted duration

15 calendar days (10 working days + 5 non-working days)
Aug 22 (Fri) – Sep 5 (Fri)

End date
calculation

Working days: 10
• Sep 5–2 (Fri-Tue): 4 days.
• Aug 29–25 (Fri-Mon): 5 days (total 9 days).
• Aug 22 (Fri): 1 day (total 10 days).
Non-working days: 5
• 1 holiday skipped: Sep 1 (Labor day)
• 2 weekends skipped: Aug 30-31; Aug 23-24

Phase 3: Testing
Option

Description

Phase

Phase 3: Testing

Original end date

Aug 21 (Thu)
(The day before the Phase 4 start date)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
Phase 3: Testing (continued)
Option

Description

Adjusted end date Aug 21 (Thu)
(A working day, no adjustment needed)
Original start date Aug 7 (Thu)
(15 days counted backward from the phase's adjusted end
date, includes weekends and holidays)
Adjusted start
date

Aug 1 (Fri)

Key dates

Test plan approval: On 5th day from the phase's adjusted start
– Aug 7 (Tue)

(Excludes weekends and holidays, see the End date
calculation)

(Excludes weekends and holidays. A working day, no
adjustment needed)
Original duration

15 days
Aug 7 (Thu) – Aug 21 (Thu)

Adjusted duration

21 calendar days (15 working days + 6 non-working days)
Aug 1 (Fri) – Aug 21 (Thu)

End date
calculation

Working days: 20
• Aug 21-18 (Thu-Mon): 4 days.
• Aug 15–11 (Fri-Mon): 5 days (total 9 days).
• Aug 8-Aug 4 (Fri-Mon): 5 days (total 14 days).
• Aug 1 (Fri): 1 day (total 15 days).
Non-working days: 6
• 0 holiday skipped
• 3 weekends skipped: Aug 16–17; Aug 9–10; Aug 2–3

Phase 2: Development
Option

Description

Phase

Phase 2: Development

Original end date

Jul 31 (Thu)
(The day before the Phase 3 start date)

Adjusted end date Jul 31 (Thu)
(a working day, no adjustment needed.)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
Phase 2: Development (continued)
Option

Description

Original start date Jul 7 (Mon)
(25 days from the phase's adjusted end date, includes
weekends and holidays)
Adjusted start
date

Jun 26 (Thu)

Key dates

Sprint end: Every 10 working days from the phase's adjusted
start – Jul 10 (Thu), Jul 24 (Thu)

(excludes weekends and holidays, see the End date
calculation)

(all working days, no adjustment needed)
Original duration

25 days
Jul 7 (Mon) – Jul 31 (Thu)

Adjusted duration

36 days (25 working days + 11 non-working days)
Jun 26 (Thu) – Jul 31 (Thu)

End date
calculation

Working days: 25
• Jul 31-28 (Thu-Mon): 4 days.
• Jul 25–21 (Fri-Mon): 5 days (total 9 days).
• Jul 18–14 (Fri-Mon): 5 days (total 14 days).
• Jul 11-7 (Fri-Mon): 5 days (total 19 days).
• Jul 3-Jun 30 (Fri-Mon): 4 days (total 23 days).
• Jun 27-26 (Fri-Thu): 2 days (total 25 days).
Non-working days: 11
• 1 holiday skipped: Jul 4 (Independence Day)
• 5 weekends skipped: Jul 26-27; Jul 19-20; Jul 12-13; Jul 5-6;
Jun 28-29

Phase 1: Planning
Option

Description

Phase

Phase 1: Planning

Original end date

Jun 25 (Wed)
(The day before the Phase 2 start date)

Adjusted end date Jun 25 (Wed)
(a working day, no adjustment needed)
Original start date Jun 16 (Mon)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
Phase 1: Planning (continued)
Option

Description

(10 days from the phase's adjusted end date, includes
weekends and holidays)
Adjusted start
date

Jun 11 (Wed)

Key dates

Midpoint: On 5th working day from the phase's adjusted start
– Jun 17 (Tue)

(excludes weekends and holidays, see the End date
calculation)

(a working day, no adjustment needed)
Original duration

10 days
Jun 16 (Wed) – Jun 25 (Wed)

Adjusted duration

15 days (10 working days + 5 non-working days)
Jun 11 (Wed) – Jun 25 (Wed)

End date
calculation

Working days: 10
• Jun 25–23 (Wed–Mon): 3 days.
• Jun 20 (Fri): 1 day (total 4 days).
• Jun 18–16 (Wed-Mon): 3 days (total 7 days).
• Jun 13–11 (Fri-Wed): 3 days (total 10 days).
Non-working days: 5
• 1 holiday skipped: Jun 19 (Juneteenth)
• 2 weekends skipped: Jun 21-22; Jun 14-15

Summary Timeline
The timeline extends beyond the 70-days original duration to account for weekends
and associated holiday schedule, but the phase durations remain fixed in working
days.
Summary of release timeline
Option

Description

Original calendar
span

Jul 8 to Sep 5

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
Summary of release timeline (continued)
Option

Description

Adjusted span,
excluding nonworking days

Jun 11 to Sep 5

Original release
duration

60 working days

Adjusted release
duration

87 calendar days

Non-Working Days

87 – 60 = 27 days (12 weekends + 3 holidays)

Digital Product Release flow actions
Digital Product Release provides flow actions that you can use to build custom release workflows
in Workflow Studio.
Familiarize yourself with Workflow Studio actions

basics before starting.

To access these flow actions, navigate to All > Workflow Studio, and then select Actions.
Search for Digital Product Release actions
Flow actions available with Digital Product Release
Flow action

Description

Create release

Creates a release record with your specified input
parameters.

Create out-of-band release

Creates a release record with the out-of-band release
target.

Apply release template

Applies the selected template to a draft release and
validates all required inputs are present and correct.

Apply template for out-of-band
releases

Applies the selected template to an out-of-band draft
release and validates all required inputs are present and
correct.

Note: All create release actions support single and multi-product releases with new or
existing versions, and can be used for validation or non-validation releases.

Release dashboards in Digital Product Release
Release dashboards provide insights into your releases. You can see their progress, identify any
potential risks, and track their software quality. This information can help you to make informed
decisions about your releases and ensure their success.
Release Overview dashboard
The Release Overview dashboard provides an overview of all the information about a release,
which the product team can use to assess its readiness.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
Required ServiceNow AI Platform roles
sn_dpr_model.product_manager, sn_dpr_model.release_admin,
sn_dpr_model.release_coordinator, or sn_dpr_model.release_user, needed to see the
dashboard.

Access the Release Overview dashboard
To open the dashboard, navigate to Workspaces > Digital Product Release Workspace. Select
the releases icon (

) and then select a release from the Releases list.

Widgets
Widget

Description

Release start
date

Start date of the release.

Release end
date

End date of the release.

If the release isn’t started, the planned start date is shown. After the release
starts, the actual start date is shown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Widget

Description

If the release isn’t closed, the planned end date is shown. After the release is
closed, the actual end date is shown.
Release target
date

Readiness target date of the release.

Risk score

Risk level of a release. This score is calculated based on the overdue tasks
and policy failures. For more information, see the calculation of the risk score
in the following section.

Release tasks

Number of tasks in the release, grouped by their state.

Change
requests

Total number of change requests in different phases of the release, grouped
by their state.

Enhancements Product enhancements in the release, grouped by their state.
Work items

Work items in the release, grouped by their type, and stacked by their state.

Related tasks

Related tasks linked to the release, grouped by their type, and stacked by their
state.

Policies

List of all policies, grouped by the phases they’re mapped to.

Approvals

List of all approval tasks, grouped by their approval status.

Calculation of risk score of a release
The risk score of a release combines overdue task scores and policy failure scores, weighted by
their respective importance. The weight or priority to overdue tasks and policy failure determines
their urgency or impact on a release. The overdue task score is categorized based on the
percentage of overdue tasks. The policy failure score is determined by the percentage of failed
policies.
Given overdue_weight + policy_failure_weight = 1, the risk score of a release
is calculated according to the following formula:
Risk score = Round((Overdue task score * overdue_weight + Policy
failure score * policy_failure_weight) * (Number of days elapsed
in release / Total number of days in release))
Where each metric is calculated as follows:
Overdue task score:
• If <10% of tasks are overdue, the overdue task score is 0.
• If 10-40% of tasks are overdue, the overdue task score is 1.
• If >40% of tasks are overdue, the overdue task score is 2.
If a task has no end date, the phase's end date is used as the task's due date.
Policy failure score:
• If <10% of policies fail, the policy failure score is 0.
• If 10-40% of policies fail, the policy failure score is 1.
• If >40% of policies fail, the policy failure score is 2.
Based on the calculated risk score, the release is categorized into one of the following risk levels:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
• Low, if the value is 0 or 1
• Medium, if the value is 2
• High, if the value is 3
• Very high, if the value is 4
This categorization can help you determine the risks involved with the release, thus enabling you
to take measures to reduce these risks in a timely manner.
Release Quality dashboard
The Release Quality dashboard provides insights into the quality of a release based on the
software quality scan summaries and test summaries.

Note: The Release Quality dashboard is available only for the product releases.
The software quality scan summaries give an overview of the code, highlighting any
potential bugs or vulnerabilities that might impact the release. The test summaries provide a
comprehensive view of the testing process, including the number of tests executed, passed, and
failed.

Configuration required for tracking release quality
The data displayed on the Quality tab is pulled from the pipeline execution, task execution, and
their associated test summaries and software quality summaries. You must configure pipelines
through the external tools configuration before you can see the metrics from various data
sources on the Release Quality dashboard.
For more information, see Integrate external tools from Digital Product Release Workspace.

Access the Release Quality dashboard
To open the Release Quality dashboard, navigate to Workspaces > Digital Product Release
Workspace. Select the releases icon ( ) and then select a release from the Releases list.
Select the Quality tab on the release record.

Note: The Quality tab only appears for ongoing releases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Build, Artifact, and Package tabs on the Release Quality dashboard

Data in Quality metrics
The data on the Quality dashboard is organized into two sections to summarize the software
code quality and test results. You can filter the quality and test results using the following
options:
• Build: This option shows all pipelines for the product associated with the release from the
sn_devops_pipeline table.
The Build summary list includes build numbers that represent pipeline executions from the
sn_devops_pipeline_execution_list table.
For an active release, Build summary shows all the pipeline executions of the selected
pipeline within the past 30 days. For a completed release, Build summary shows pipeline
executions up to 30 days before the actual end date of the release.
• Artifact: This option shows all the artifacts data from the sn_devops_artifact table.
The Artifact version list shows all the artifact versions generated within the past 30 days for
the artifact. If the artifact's Use latest version option is selected, the semantic versions are
listed. For more information on the artifact version, see Manage artifacts in a release.
• Package: This option shows all the artifact versions associated with the latest package. The
artifact version data comes from the sn_devops_m2m_artifact_version_package table and the
package data comes from the sn_devops_package table. However, if a package is marked as a
release candidate, that package is used even if it's not the latest.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Note: The Artifact and Package options appear only when the release has an artifact and
package associated with it.
Quality summary section
The Quality summary section shows you a summary of the scans that are run on
the pipelines. The source of data on these widgets is the Software Quality Scan
Summary related to Task Execution. This section contains the following metrics:
Quality summary section widgets
Widget

Description

Vulnerabilities Total number of security vulnerabilities for the selected build.
This data comes from the Vulnerabilities category in the
Software Quality Scan Details.
Use the VulnerabilitiesTypeMapping system property to
normalize each type of vulnerability, mapping the custom values
with the standard values. For more information, see Digital Product
Release properties.
Overall
coverage

Percentage of code covered by your test cases.
This data comes from the Coverage (%) category in the
Software Quality Scan Details.
If there are multiple software quality summary results, then the
percentage isn’t available.
Total number of lines of code and lines covered for all software
quality summary results is shown on this widget.

Bug count

Total number of bugs and average ratings of reliability and
maintainability data for all the software quality summary results.
This data comes from the Bugs category in the Software Quality
Scan Details.

Code smells

Total number of code smells and total number of technical debts
and duplications for all the software quality summary results.
This data comes from the Code Smells category in the
Software Quality Scan Details.

Test summary section
The Test summary section shows you a summary of the test run results. The source
of data on these widgets is the Test Summary related to Task Execution. The section
contains the following metrics:
Test summary section widgets
Widget

Description

Unit tests

Total number of unit tests run across all task executions in a
pipeline execution, including number of tests passed, failed,
skipped, and blocked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Test summary section widgets (continued)
Widget

Description

Functional
tests

Total number of functional tests run across all task executions in
a pipeline execution, including number of tests passed, failed,
skipped, and blocked.

Performance Total number of performance tests run across all task executions
tests
in a pipeline execution, including number of tests passed, failed,
skipped, and blocked.
Related topics
Quality metrics dashboard
Release dashboard for a multi-product release
The Release Overview dashboard for a multi-product release provides an overview of all the
information about every product release, which the product team can use to assess the release
readiness.

Required ServiceNow AI Platform roles
sn_dpr_model.product_manager, sn_dpr_model.release_admin,
sn_dpr_model.release_coordinator, or sn_dpr_model.release_user, needed to see the
dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
Access the Release Overview dashboard
To open the dashboard, navigate to Workspaces > Digital Product Release Workspace. Select
the releases icon (
) and then select a multi-product release from the Releases list. Select All
products in the View by to view the Release dashboard.

Widgets
Widget

Description

Release start date

Start date of the release.
If the release isn’t started, the planned start
date is shown. After the release starts, the
actual start date is shown.

Release end date

End date of the release.
If the release isn’t closed, the planned end
date is shown. After the release is closed, the
actual end date is shown.

Note: This widget is applicable only for
timeline-oriented releases.
Release target date

Readiness target date of the release.

Release Tasks

Number of tasks across all releases, grouped
by their state.

Policies

Number of policies across all releases,
grouped by their run status.

Approvals

Number of approval tasks across all releases,
grouped by their approval status.

Enhancements

Number of enhancements across all releases.

Release Overview dashboard for a multi-product release
The Release overview dashboard provides an overview of all the information about an individual
product's release in a multi-product release, which the product team can use to assess its
readiness.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
Required ServiceNow AI Platform roles
sn_dpr_model.product_manager, sn_dpr_model.release_admin,
sn_dpr_model.release_coordinator, or sn_dpr_model.release_user, needed to see the
dashboard.

Access the Release Overview dashboard
To open the dashboard, navigate to Workspaces > Digital Product Release Workspace. Select
the releases icon (

) and then select a release from the Releases list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
Widgets
Widget

Description

Release tasks

Number of tasks in the release, grouped by their state.

Change requests

Number of change requests in the release, grouped by their
state.

Enhancements

Number of product enhancements in the release, grouped by
their state.

Work items

Number of work items in the release, grouped by their type,
and stacked by their state.

Related tasks

Number of related tasks (incidents, problems) linked to the
release, grouped by their type, and stacked by their state.

Policies

List of all policies, grouped by the phases they’re mapped to.

Approvals

List of all approval tasks, grouped by their approval status.

Configuring Digital Product Release
Plan and configure the Digital Product Release application.

Configuration overview
• Install Digital Product Release
• Integrate external tools from Digital Product Release Workspace
• Create a release calendar
• Create a release readiness target
• Create an approval definition in Digital Product Release
• Define policies in Digital Product Release
• Create a release template

Get started with Digital Product Release through the Onboarding section
If you have the sn_dpr_model.release_admin or admin role, you see an Onboarding section
on the home page of the Digital Product Release Workspace that helps you get started with
configuration tasks.
Example of the Onboarding section on the homepage of Digital Product Release
Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
Install Digital Product Release
You can install the Digital Product Release application (sn_dpr) if you have the admin role. The
®
application includes demo data and installs related ServiceNow Store applications and plugins
if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Digital Product Release application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Digital Product Release:
• Plugins:
Global Ranking Application plugin (com.snc.sdlc.ranking)
• Store applications:
◦ Digital Product Release Data Model (sn_dpr_model): Contains the core data model for Digital
Product Release.
◦ Digital Product Release Workspace (sn_dpr_workspace): Provides a single location for the
program managers to plan the releases for the digital products and services and the release
managers to manage the release processes.
◦ Digital Product Release Policy Content Pack: Contains a set of policies and data collectors to
enable automation of phase gate verification in your Digital Product Release.
◦ Release Timeline Component: Timeline component for Digital Product Release to visualize
phases in releases.
The following apps are also installed:
◦ Policy as Code Engine (sn_pace)
◦ Policy as Code Engine UI (sn_pace_builder)
◦ CMDB CI Class Models (sn_cmdb_ci_class)
◦ Roadmap UI Builder Component (sn_roadmap)
◦ Playbook Experience (sn_playbook_exp)
◦ Playbook Experience Components (now_playbook_exp)
◦ DevOps (sn_devops)
◦ DevOps Workspace (sn_devops_ws)
◦ DevOps Integrations (sn_devops_ints)
◦ Quick filter component (sn_quick_filter)
◦ Quick filter popover (sn_filter_popover)
• Roles
• Scheduled jobs
• Tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
For more information, see Components installed with Digital Product Release.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Digital Product Release application (sn_dpr) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
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

Migrate data from Release Management v2 to Digital Product Release
If you have the Release Management v2 (RM v2) application installed, you can migrate your data
from RM v2 to Digital Product Release.

Before you begin

Role required: admin
To provide access to additional roles, you can add comma-separated values of other roles
installed with DPR in the system property sn_dpr_model.rmv2.migration_roles. For
more information, see Digital Product Release properties.

About this task

The migration utility performs the following tasks:
• Migrate RM v2 product to Digital product: Copies data from rm_product into newly created
Application Product Models.
• Create Release Template from RM v2 Release: Creates a DPR Release Template by leveraging
the Phases and Tasks from an existing RM v2 Release record.
For more information about migrating data from Release Management V2 to Digital Product
Release, see the RMV2 Product Migration [KB1644412]
article in the Now Support Knowledge
Base.

Procedure
1. Define your custom field mappings as needed.
2. Add any additional post-processing instructions after the creation of the
cmdb_application_product_model record.
3. Perform the migration either from the rm_product list view or running the migration script from
the sn_dpr_model app scope.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
Integrate external tools from Digital Product Release Workspace
Integrate tools for orchestration, planning, coding, artifact, software quality, and security from the
Digital Product Release Workspace for end-to-end change traceability and automation.

Before you begin

This integration with external tools is accessible as part of the DevOps Change Velocity. For more
information, see DevOps Change Velocity integrations and Integrating DevOps Change Velocity
with third party tools.
Role required: sn_dpr_model.release_admin

About this task

The data coming from the integrated external tools provide you with insights into the breakdown
of product enhancements into epics and their stories. This data also enables you to create and
automate policies and determine whether the release meets the release exit criteria. For more
information, see View and manage data from external tools.
You can also track the software quality of your releases on the Release Quality dashboard that
uses this data to show up on different widgets.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the tools icon (

).

3. Select the Connect a tool.
The Connect to a tool dialog box appears.

4. Select a tool category, select a tool, and then give it a name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


<!-- page 1519 -->
5. Select Next and follow the guided experience to connect and configure the tool.
For more information about configuring a tool, see its onboarding under Integrating DevOps
Change Velocity with third party tools.

Create a release calendar
Create a release calendar to define release readiness targets within it.

Before you begin

Role required: sn_dpr_model.release_calendar_admin or sn_dpr_model.release_admin

About this task

A release calendar provides you with a layout to manage and track release readiness targets,
and view and manage releases and change requests. The release calendar also contains
blackout, maintenance, and other user-defined schedules to avoid overlap of release targets on
those dates. Each event type is color-coded and can be filtered using the hierarchical filter panel.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the release calendar icon (

).

3. Create a release calendar or update an existing one.
◦ To create a release calendar, select the release calendar actions button (
select Create release calendar.

), and then

◦ To modify an existing release calendar, open the release calendar from the drop-down list,
select the release calendar actions button, and then select Edit release calendar.
4. In the dialog box, fill in the fields.
Release calendar dialog box
Field

Description

Name

Name of the release calendar.

Release
admin

Name of the release admin who will own the release calendar.

Description Brief description of the release calendar.
Exclusion
schedules

Schedules for blackouts, maintenance, or holidays are lists of dates for planned
closures or business holidays. Add these schedules to the release calendar to
avoid having release targets for certain dates.
The blackouts and maintenance schedules are shown from the Schedule
[cmn_schedule] table. For more information, see Define a schedule .
To include user-defined exclusion schedules under
Others category, you can configure the system property
sn_dpr.release_calendar_exclusions. For more information, see
Digital Product Release properties.

5. Save the release calendar.
◦ Save a new release calendar by selecting Create.
◦ Save the changes to an existing release calendar by selecting Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
Result

The release calendar is saved and displayed in the calendar layout. Events for the exclusion
schedules that are added to the release calendar are shown on specific dates on the calendar.

What to do next

Create a release readiness target
You can perform the following tasks to manage and visualize your release activities:
• Select an event (release target, release, or change request) from the release calendar to see a
popover with the key details of the event. Select the edit icon (
record if you have the required roles.

) to view and edit the event

• Use the side panel to view all event details for the selected day, or search for an event.
• Use filters to view calendar entries by event type (release target, release, change request) or
by exclusion schedules (blackouts, holidays, maintenance).
• Change the timezone to view events on the calendar for the selected timezone.
• Switch between Week and Month views for better visibility of upcoming events.

Create a release readiness target
Create release readiness targets to define the dates by which the releases must be ready for
deployment. These targets help you to track and manage capacity and conflicts while ensuring a
smooth delivery of your products.

Before you begin

Role required: sn_dpr_model.release_calendar_admin or sn_dpr_model.release_admin

About this task
• The release readiness target dates indicate when the products should be ready. They aren’t
the actual deployment dates.
• You can set either a single or recurring release readiness target on a release calendar.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the release calendar icon (

).

3. Select a calendar on which you want to create release readiness targets.
4. Create a release readiness target or update an existing one.
◦ To create a release readiness target, select Create release target.
◦ To modify an existing release readiness target, open the release readiness target from the
calendar or list.
5. In the dialog box, fill in the fields.
For more information on release readiness target field descriptions, see Release readiness
target form.
6. Select Next.
7. If your target dates conflict with scheduled events, you will see a list of those dates, and you
can choose to create or not create targets on those dates.
◦ To create release targets for conflicting dates, select the check box under the Opt-in column
next to the dates.
◦ If you don't want to create release targets for those dates, clear Opt-in.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
Note: By default, the Opt-in check boxes for all conflicting dates are clear, which means
that the target dates will not be created for those dates.
8. Select Create.

Result

Release readiness targets are created and displayed on the selected calendar. Release targets
that overlap with dates in the exclusion schedule are created only for the dates for which you
selected to opt in to.

Create an approval definition in Digital Product Release
Create an approval definition that can be used in release tasks for getting approvals.

Before you begin

Role required: sn_dpr_model.product_manager, sn_dpr_model.release_coordinator, or
sn_dpr_model.release_admin

About this task

An approval definition is a set of rules that specify how tasks will be approved from a set of
stakeholders for a release. For example, the QA team might approve code quality or the Security
team might approve on the security aspects. An approval for a task can be requested from an
individual user or a user group.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the release administration icon (

).

3. On the Release administration page, select the Approval definitions tab.
4. Create an approval definition or update an existing one.
◦ To create an approval definition, select New.
◦ To modify an existing approval definition, open the approval definition from the list.
5. On the form, fill in the fields.
For more information on approval definition field descriptions, see Approval definition form.
6. Select Submit.

Define policies in Digital Product Release
Define policies to automate the release workflow based on the different states of the release.

Before you begin

Role required: sn_dpr_model.release_admin

About this task

®

The policies are defined using ServiceNow Policy as Code Engine (PaCE), so make sure you’re
familiar with the basics. For more information, see Understanding PaCE .

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the policy administration icon (

).

3. Create a policy or update an existing one.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
◦ To create a policy, select New.
For more information on creating a policy, see Create a PaCE policy

.

◦ To modify an existing policy, open the policy from the list.
A policy is created in the inactive state and a draft version of the policy is added.
4. Select the Version tab and open the draft version.
5. On the Version record form, select the Policy Builder tab to write the policy

.

a. On the Define Variables pane, use API variables, config parameters, record references, and
data collectors to write your policy.
b. Process data from the DevOps application data model related to the product using the base
system data collectors.
The data collectors collect inputs by processing data from ServiceNow or an external data
source to provide an output. The output can be used in the policy logic to take a decision.
For more information, see Digital Product Release data collectors.
6. Test your policy in the Test Playground tab.
For more information, see Use the Test Playground for PaCE policies

.

7. Select Save to save the policy version.
You can also save the version as a template by selecting the Save as template.
8. Optional: To enable exceptions for the policy for temporarily overriding the policy failure
) and then select Enable

status for specific use cases, select more actions icon (
exceptions.

Note: This option is only available when GRC: Policy and Compliance Management is
installed.
The Exceptions tab displays. You can view a list of exceptions requested for this policy,
including their active status and expiry. You can withdraw or extend any existing exceptions for
the policy.
9. Select Publish to publish the policy version and make it available for use.
10. In the Publish draft dialog box, select Activate this policy to also activate the policy along with
publishing the version.

Result

The policy version is updated as Current and is used the next time the policy is invoked.
For more information, see Manage PaCE policy versions

.

Create a release template
Create a release template to predefine the release process. The template contains templates for
release phases, tasks, exit criteria for each of the phases, key dates, and approvals.

Before you begin

Identify phases, tasks within each phase, exit criteria for each phase, key dates, and required
approvals for a release. If there are different processes followed for each kind of release or
product, you should create multiple release templates.
Role required: sn_dpr_model.release_template_admin or sn_dpr_model.release_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
About this task

The release teams can use these templates to create a release. All the phases, tasks, key dates,
approvals, and phases' exit criteria from the template are applied to the new release. The release
template helps the release team track and perform all the required tasks to complete the release
on time.

Important: After you mark an activity as done, you can't add or change phases, tasks, or
map policies. So, be sure to review and verify all activity details before marking as done.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the release administration icon (

).

3. On the Release administration page, select the Release templates tab.
4. Create a release template or update an existing one.
◦ To create a release template, select New.
◦ To modify an existing release template, open the release template from the list.
5. On the Create release template dialog box, add details like name and short description.
6. From the Type list, select a release type.
7. Select Enable release to validate product versions to determine if a release created from this
template can validate a new product versions.
8. Select Create.
A release template is created and opens in the release template's Setup playbook page to
define the template.
9. In the Release Process activity, select between a timeline-oriented or stage-oriented release
process.
Release process

Description

Timeline-oriented process

This release process is appropriate for creat­
ing releases that have fixed deadlines and
that follow a strict schedule.

Stage-oriented process

This release process is appropriate for cre­
ating releases that prioritize completing ob­
jectives and features over following a strict
schedule.

10. In the Phases activity, add phases to the release template.
a. Enter a unique phase name, the duration of the phase in days, and a short description.
The Duration field appears only for the timeline-oriented process. The total
duration for all phases in the template must be less than the duration set in the
sn_dpr.max_template_duration system property.
b. Select Add new phase to add another phase.
Repeat the steps to add more phases as required.
c. In the Release readiness target phase section, choose a phase from the Select phase list to
align it with the release readiness.
The selected phase's end date is considered as the release readiness target date.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
d. In the Schedule section, choose a schedule from the Select schedule list as the default
schedule.
The list shows the schedule entries from the Schedule [cmn_schedule] table that are of the
type Excluded.
Adding a schedule considers holidays and weekends and adjusts the phase and release
durations accordingly. This helps improve release planning accuracy by including actual
working days. For more information, see Holiday schedules in a release.

Note: This option is available only for the timeline-oriented release process.
e. Select Mark as done to complete adding all required phases to the release template.
The Phases activity is marked as complete and can’t be edited further. The Tasks activity
becomes editable, displaying each phase in separate tabs.
11. In the Tasks activity, add tasks to each phase.
a. Select a phase tab in which you want to add a task.
b. In the Task name field, enter a unique name for the task.
c. In the Need approval field, select whether the task requires approval.
d. If approval is required for the task, select an approval definition from the Approval definition
list.
For more information, see Create an approval definition in Digital Product Release.
e. Select Add new task to add another task to the phase.
f. After all tasks are added to the current phase, select Next phase.
The tasks you added to the current phase are saved. The next available phase tab is
selected so you can add tasks for that phase.
Repeat the steps to add more tasks as required for each phase.
g. After all tasks are added to all available phases, select Save on the last phase tab.
h. Select Mark as done to complete adding tasks to phases as needed.
The Tasks activity is marked as complete and can’t be edited further. The next activity
becomes editable.
12. In the Key dates activity, add key dates as needed.

Note: This activity is available only for the timeline-oriented release process.
a. Select a phase tab in which you want to add a key date.
b. Select Add new key date to add a key date to the phase.
Alternatively, select anywhere on the timeline section. This action creates a key date with the
number of days calculated and added to the new key date entry.
c. In the Type field, select the type of event to map to the phase.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
d. In the Key date field, describe your key date.
e. Define your key date by selecting the number of days either from the beginning or before the
end of the selected phase.
f. After all key dates are added, select Mark as done to complete adding key dates as needed.
The Key dates activity is marked as complete and can’t be edited further. The Policies
activity becomes editable, displaying each phase in separate tabs.
When you create a release using the template, these key dates help you track the progress of
the important events of the release.
13. In the Policies activity, map policies to each phase as needed.
a. Select a phase tab to which you want to map policies.
b. Select Map policies.
c. In the Map Policies dialog box, select policies from the list to map to the phase, and then
select Map policies.
d. Select Next phase to save the mapped policies for the current phase and move to the next
phase.
e. After policies are mapped to available phases, select Save from the last phase tab.
f. Select Mark as done to complete the Policies activity.
The Policies activity is marked as complete and can’t be edited further.
14. In the Publish template pop-up window, select whether to publish the template.
◦ Select Yes to publish and activate the template.
◦ Select No to keep the template unpublished. You can publish and activate it later from the
release template record form.

Result
• The release template is created and opens in the release template record form.
• A published release template can be used for creating releases.

What to do next

On the release template record form, you can update, publish, delete, or duplicate it into a new
template.

Action

Steps

Publish the release template

Select Publish template.

Note: The option to publish the
template is only available if you didn't
choose to publish it in the Publish
template pop-up window.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
Action

Edit the release template

Steps

1. Select the more actions button (
select Edit.

) and

2. In the Edit template pop-up window, select
Yes to confirm editing.
The release template becomes inactive and
can't be used for creating a release.
The release template opens in the Playbook
for editing.
3. Update the template to add or change the
phases, tasks, key dates, and policies as
needed.
4. To save all the changes in the template,
select Mark as done in the Policies activity.
Duplicate the release template

1. Select Clone template.
2. In the Create release template popup window, enter the name, type, and
description for the duplicate template and
select Create.
A new release template is created identical
to the current release template and is
opened in the Playbook for editing.
3. Update the template to add or change the
phases, tasks, key dates, and policies as
needed.
4. Select Mark as done in the Policies activity
to save all the changes in the template.

Delete the release template

Select the more actions button (
select Delete.

) and

Related topics
Release for a product or service
Create a release with a wizard
Create a release for a product or service
Work on a timeline-oriented release for a single product or service
Managing multiple releases through release bundles

Using Digital Product Release
Digital Product Release helps you streamline the process of delivering digital products and
services by managing the entire release life cycle from planning to delivery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
Use Digital Product Release Workspace to perform these tasks to manage the release cycle of
your digital products and services.

Request a new product or service
Request a new product or service to manage features and enhancements.

Before you begin
• Identify, prioritize, and create a backlog of features and enhancements required for the product
or service.
• Define a roadmap of features and enhancements to be included across multiple releases.
Role required: sn_dpr_model.product_manager

About this task
• The Product records are saved in the Application Models [cmdb_application_product_model]
table.
If the application model has a corresponding business application, the View Business
Application related link is displayed on the Product form. Select View Business Application to
view details of the corresponding business application.
• The Service records are saved in the Service Models [cmdb_service_product_model] table.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select Request new for a new product or service.
4. In the dialog box, fill in the fields.
For more information on the field descriptions, see Request new product or service form.
5. Select Submit.

Result
• A request is submitted to create a product or service.
• The DPR Service Catalog Request approval flow is triggered that auto-approves the request
and then triggers the Request Product flow that creates the product or service.

Note: You can modify these flows in Workflow Studio according to your business needs.
• The new product or service is listed in the Products and Services list.
• A DevOps app corresponding to the product or service is also created.

What to do next
• Manage product hierarchy using Included products.
• Select the product or service name from the list to see details, plan releases, and manage data
from external tools.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
Manage product hierarchy using Included products
Add products that you manage as Included products within a product or service to create a
product hierarchy.

Before you begin

Role required: sn_dpr_model.product_manager

About this task

The product hierarchy created using Included products helps you see relationships between
different products and services and make informed decisions about their development,
management, and releases.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select the Included products tab.
5. View and manage included products.
◦ To add existing products, select Add, select products from the list, and then select Confirm.
◦ To add a new product, select the more actions icon ( ) next to the Add button and then
select Request new product. In the Request new product dialog box, fill in the fields, and
select Submit. The new product appears in the list after it’s created.
◦ To remove an existing product from the hierarchy, select the product from the list, and then
select Remove.
◦ To view the details of a product, select the product from the list to open.
Related topics
Request a new product or service
Create a release with a wizard
Work on a timeline-oriented release for multiple products
Work on a stage-oriented release for multiple products

Create a release for a product or service
Create a product or service release when all planned product enhancements and product
features are ready.

Before you begin
• Define release scope using product enhancements
• Complete the release planning by moving enhancements into different releases
Role required: sn_dpr_model.product_manager

About this task

Releases can follow a timeline-oriented and stage-oriented release process. For more
information, see Release for a product or service.
For creating a release for multiple products using the wizard, see Create a release with a wizard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Create a release for a product version from the Release planning page or the Releases list
view.
Option

Steps

a. Select the products and services icon (
From the Release planning
page of a product

).

b. Select a product or service from the list to open.
c. Select Release planning.
d. Select the sub menu icon ( ) on a version lane and se­
lect the Create release menu option.

From the Releases list view

a. Select the releases icon (

).

b. Select the more actions icon next to the Create release
button and then select Quick create.

3. In the dialog box, fill in the fields.
For more information on release field descriptions, see Release form.
4. Select Confirm.

Result
• A release is created in the Draft or Pending state based on the following conditions:
◦ If all fields on the form are filled, the release is created in the Pending state and opens in the
Release Dashboard page.
◦ If either the Release template or Release readiness target fields, or both, are empty, the
release is created in the Draft state.
You can finish creating the release later from the Release Planning page or from the
Releases list.
• If you have selected a timeline-oriented release template, then the following options might
apply as defined in the template:
◦ If available, the schedule from the template is applied to the release. The actual working
days for the phase and release are calculated by considering the holidays and weekends in
the schedule. When considering the holidays for calculating phase or release durations, a
release is not created if:
▪ The start date of the release or its phase falls in the past.
▪ The duration exceeds the max duration defined in the system property.
In that case, you have to select another schedule or adjust the holidays. For more
information, see Holiday schedules in a release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
◦ Any key dates from the template are added to the release. The date of each key date is
calculated using the number of days from the start or end of the phase specified in the
release template.

Note: If the release has a holiday schedule and a key date from the template falls on
a holiday, the last workday before or after the holiday is considered as the revised key
date.
• If an out-of-band release is created on a date that already has a release target, it uses that
release target. However, if there’s no release target for that date, one is created, when the
system property sn_dpr.out_of_band_release_allowed is set to true. The release
admin for this new release target is the same as the one for the selected release calendar.
• Any artifacts associated with the product or release are added to the release. For more
information, see View and manage data from external tools.
You can add or remove artifacts from a release as needed. For more information, see Manage
artifacts in a release.

Create a release with a wizard
Create a release for one or more products or services with the help of a wizard. The wizard
guides you through the entire release creation process.

Before you begin
• Define release scope using product enhancements
• Complete the release planning by moving enhancements into different releases
Role required: sn_dpr_model.product_manager

About this task

Releases can follow a timeline-oriented and stage-oriented release process. For more
information, see Release for a product or service.

Note: When you edit releases that are in the Draft state, they open in the wizard where you
can finish creating them.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select Create release.
4. In the Release details step, provide basic information about the release, including the release
name, owner, and a brief description.
5. Select Release validates a new product version to determine whether the release validates a
version.
The versions and templates in the next step are determined by this field.
◦ If this option is selected, the Versions list only shows only versions that are not validated
by other releases. If this option is cleared, the list shows all product versions, regardless of
whether they are already validated or not.
◦ Templates with the validate version setting on are only available to select.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
6. In the Version details step, select a product or service from the Primary product or service
and select an existing version or enter a new version number.
The existing versions listed for a product or service are based on the Release validates a new
product version field.

Note: If a new version number was entered, it’s automatically created and associated
with the release.
Any Included products associated with the selected product or service are listed.
You can add more related products or remove any listed related products and their versions.
◦ To add more products, perform the following steps:
a. Select + Add product.
b. Select one or more related products from the list as needed.
c. Select Add.
d. If any of the selected products also have their own Included products, you can choose to
include or exclude them from being added to the release.
▪ To add the selected products and their Included products, select Yes, add Included
products also.
▪ To add only the selected products without Included products, select No, add selected
products.
◦ To remove an existing Included product from the list, select the remove included product
icon (

) against the product.

Note: The number of Included products that can be added to a release depends on

the system property sn_dpr.multi_product.included_products_limit.
A release admin can update the value of this property to increase or decrease the limit.
7. In the Release template step, select a release template to apply to the release.
The templates listed are based on the Release validates a new product version field. If it’s
selected, the templates with the validate version setting on are only available to choose.
A release structure is generated based on the selected release template. For more information
about a release template, see Create a release template.
8. In the Release target step, select a release readiness target to determine when the release
should be ready.
A release target is needed for timeline-oriented releases, while it's not required for stageoriented releases.
a. Select a release calendar.
b. Select a release target date on the calendar.
▪ If release targets are available on the selected date, select a target to apply to the release.
▪ If release targets are unavailable on the selected date, a new target is created and applied
to the release.
9. Save or update the release.
◦ Save a new release by selecting Create release.
◦ Update the changes to an existing draft release by selecting Update release.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Result
• One or more releases are created depending on the number of products or services selected:
◦ If you selected a single product or service, one release is created. The release is opened in
the Release Overview page.
◦ If you selected a primary product or service and added included
products, the releases are created based on the value set in the

sn_dpr.multi_product.create_independent_releases system property:
▪ When the property is set to false, a main release is created for the primary product or
service and individual releases for each included product are created and added to the
main release as dependent releases. The release is opened in the Release Dashboard
page.
▪ When the property is set to true, a release bundle is created which contains all the
individual releases created for the primary product or service and each included product.
The release bundle is opened in the Release bundle's Overview page.
In either case, the releases are created in the Pending state.
• If you have selected a timeline-oriented release template, then the following options might
apply as defined in the template:
◦ If available, the schedule from the template is applied to the release. The actual working
days for the phase and release are calculated by considering the holidays and weekends in
the schedule. When considering the holidays for calculating phase or release durations, a
release is not created if:
▪ The start date of the release or its phase falls in the past.
▪ The duration exceeds the max duration defined in the system property.
In that case, you have to select another schedule or adjust the holidays. For more
information, see Holiday schedules in a release.
◦ Any key dates from the template are added to the release. The date of each key date is
calculated using the number of days from the start or end of the phase specified in the
release template.

Note: If the release has a holiday schedule and a key date from the template falls on
a holiday, the last workday before or after the holiday is considered as the revised key
date.
• Any artifacts associated with the product or release are added to the release. For more
information, see View and manage data from external tools.
You can add or remove artifacts from a release as needed. For more information, see Manage
artifacts in a release.

Define release scope using product enhancements
Define the release scope of products and services by adding features, enhancements, and work
items.​

Before you begin

Role required: sn_dpr_model.product_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
About this task

Note: When a Plan Version from the DevOps data model is mapped to a Software Model
in DPR, any Work Items associated with that Plan Version get automatically listed in the
Release scope page. If a work item is associated with a product enhancement, it shows as
a child under that product enhancement in the list. You can track these work items on the
Release scope page of the release.
This option is available when you have selected the Auto-create product versions
®
from plan versions while associating the product with a plan from ServiceNow Agile
Development 2.0, Jira, or GitLab.
The mappings between plan versions and software models are stored in the Plan Version
to Software Models (sn_devops_m2m_plan_version_software_model) table. The mappings
between work items and plan versions are stored in the Work Item to Release Versions
(sn_devops_m2m_work_item_plan_version) table.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Add features and enhancements to the product.
◦ Add a product feature to a product or service
◦ Add an enhancement to a product or service
◦ Add a product enhancement from an epic
Add a product feature to a product or service
Add a product feature to a product or service to help you plan and manage the scope of a
release.

Before you begin

Role required: sn_dpr_model.product_manager

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select the Product features tab.
5. Add or modify a product feature.
◦ To add a new product feature, select Add feature.
◦ To modify an existing product feature, select it from the list.
6. On the Add feature dialog box, fill in the fields.
Add feature form
Field

Description

Feature
name

Name of the product feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
Field

Description

Priority

Priority level for the feature. The level determines how much effort is needed to
meet the feature's goals.

Description Brief, high-level description of the product feature.
7. Select Confirm.
The product feature is created and opened in the Product Feature record page.
8. Optional: On the Details tab, update the details about the feature, including its state, owner
name, and assignment group.
9. Optional: On the Product Enhancements tab, manage enhancements to plan the product
feature into multiple versions of the product.
a. Select New.
b. Enter details for the enhancement on the Details tab.
c. Select Save.
10. Optional: Add artifacts for the product feature.
a. Select the attachment icon (

) on the contextual menu to open the Attachments pane.

b. Select the Select button to upload and attach a file.
Add an enhancement to a product or service
Add a product enhancement to a product or service to help you plan and manage the scope of
its release.

Before you begin

Role required: sn_dpr_model.product_manager

About this task

You can also add enhancement from an epic. For more information, see Add a product
enhancement from an epic.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select the Product enhancements tab.
5. Select Add enhancement.
Alternatively, you can also add enhancements or manage existing ones from the
Release planning page of the product or service. For more information, see Plan product
enhancements into different releases.
6. On the Add enhancement dialog box, fill in the fields.
Add enhancement form
Field

Description

Name

Name of the product enhancement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Field

Description

Product
feature

Name of the product feature to which this enhancement will be associated to.

Release

Release to which the enhancement is associated.
The list displays releases of the product that have the validates version set to
true and are in the Pending state.

Note: If you don't select a release, the enhancement is added to the
product backlog.
Priority

Priority level for the enhancement. The level determines how much effort is
needed to meet the enhancement's goals.

Description Short description of the enhancement.
7. Select Confirm.
The product enhancement is created and opened in the Product Enhancement record page.
8. Optional: On the Details tab, update the details about the enhancement, including its state,
owner name, assignment group, assigned to person, and start and end dates.
9. Select Link Epics to associate all the top-level epics being worked on by the development
team.
10. On the Link Epics dialog box, select the epics from the list, and select the Link Epics button.
The selected epics are associated with the product enhancement and are listed in the Work
Items tab.
11. Optional: On the Work Items tab, select an epic to review its details and related records.
12. Optional: Select the attachment icon (
attach a file related to the feature.

) to open the Attachments pane to upload and

Add a product enhancement from an epic
Add a product enhancement from an epic to a product or service manually.

Before you begin

Role required: sn_dpr_model.product_manager

About this task

Product enhancements can also be generated automatically from the main epics imported into
the ServiceNow instance through the DevOps data model if the following settings have been
completed:
• The integration with the external planning tool is done.
• The validates version option of the release is set to true.
• A project from the Planning tool is linked with the product or service. For more information, see
View and manage data from external tools.
• The system property

sn_dpr_workspace.auto_create_product_enhancement_for_primary_epic
is set to true. For more information, see Digital Product Release properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


<!-- page 1536 -->
Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select the Product enhancements tab.
5. Select the more actions icon next to the Add enhancement button and then select Add
enhancement from epic.

The Add enhancements from epics dialog box appears. It has a list of all top-level epics from
the linked project that don’t have a product enhancement.
6. On the Add enhancements from epics dialog box, select the epics from the list, and then
select Add enhancements.
The product enhancements are created for the selected epics and listed in the Product
enhancements list.
Related topics
Add an enhancement to a product or service
Add a product feature to a product or service

View and manage data from external tools
View and manage data coming from the DevOps application corresponding to your product that
has been imported through external tools.

Before you begin

Role required: sn_dpr_model.product_manager

About this task

This data coming from the external tools provide you with insights into the breakdown of product
features into epics and their stories. This data also enables you to create and automate policies
and determine whether the release meets the release exit criteria.
The data also provides an overview of the software quality of your releases in the Release Quality
dashboard. For more information, see Release Quality dashboard.
This integration with external tools is accessible as part of the DevOps Change Velocity. For more
information, see DevOps Change Velocity integrations and Integrating DevOps Change Velocity
with third party tools.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select the External tools tab.
5. Associate plans, repositories, and pipelines from the Plans, Repositories, and Pipelines tabs
respectively.
For more information, see Associate tool objects to applications - Workspace.

Note: Only the Plans tab is available for services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
®

6. To create product versions in DPR for each Release imported from ServiceNow Agile
Development 2.0, Fix Version imported from Jira, or Milestones imported from GitLab
automatically, select the Auto-create product versions from plan versions option when
associating plans from these planning tools.

Note: This option is only available when you select only one record (release, plan,
or milestone) for association. Make sure you have completed the mapping between
the apps in DevOps and the products in DPR. For all new Releases created in Agile
Development 2.0, Fix versions created in Jira, or Milestones created in GitLab for the
associated plan, a product version and a corresponding release are automatically
created in DPR.
7. Select the Artifact repositories tab to associate an artifact repository to the product.
8. Select the Artifacts tab to establish a relation between the artifacts and the product.
When you create a release for the product, a relationship is established between the artifact
version and the release so that policies can be run against the release.

Plan product enhancements into different releases
Move product enhancements into different releases of the product or service to plan the scope
of your release.

Before you begin

You can only plan releases that have the validates version option set to true.
Role required: sn_dpr_model.product_manager

About this task

Release planning is done using the Kanban board. The vertical lanes represent releases that are
in the Draft or Pending state. The cards in each release lane represent product enhancements
associated with the release.
®

When linking a plan version from ServiceNow Agile Development 2.0, Jira, or GitLab, you
can select the Auto-create product versions from plan versions option. Selecting this option
automatically creates a release associated with one of the following, depending on the tool you
select:
• A Fix version created in Jira.
• A Milestone created in GitLab.
• A Release created in Agile Development 2.0.
When a release is created from a version from one of these planning tools, the product
enhancements are planned for the appropriate release as well. This option verifies that the
release planning in DPR reflects the planning state from the planning tool.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the products and services icon (

).

3. Select a product or service from the list to open.
4. Select Release planning.
The Release planning page shows a Kanban board with lanes for the backlog and each
product release. Only the releases that validate versions and are in Draft or Pending states
are shown. You can identify the draft releases by the lane header color or the word (Draft) at
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
the end of the release name. The release lanes are sorted by the order of the release creation
date, from the most recent to the oldest.
Enhancements are displayed as cards in the release lane they are associated with.
5. View a release in the Pending state by selecting the sub menu icon (
select the View release option.

) of a release lane and

6. On the Kanban board, complete your release planning.
Action

Steps

Move an enhancement into a release

Select an enhancement card and drag to
move it from backlog to a release or between
releases.
a. Select Add enhancement.

Add an enhancement

b. On the Add enhancement dialog box, add
details for the enhancement, and select
Confirm.
For more information, see Add an enhance­
ment to a product or service.
a. Select the more actions icon beside the
Add enhancement button and then select
Add enhancement from epic.

Add an enhancement from an epic
b. On the Add enhancements from epics dia­
log box, select one or more epics, and then
select Add enhancements.
For more information, see Add a product en­
hancement from an epic.

Prioritize enhancements in a release

Rearrange enhancement cards within a re­
lease in order of priority. The enhancement
card positioned at the top of the release lane
is given the highest ranking.
◦ To create a release using a wizard, select
Create release.
For more information, see Create a release
with a wizard.

Create a release

◦ To create a release for a single product or
service, select the more actions icon be­
side the Create release button and then se­
lect Quick create.
For more information, see Create a release
for a product or service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Action

Steps

a. Select the sub menu icon ( ) of a release
lane and select the Edit release option.
Edit a draft release

b. On the Release details page, modify the
details and complete the release creation
process. For more information, see Create
a release with a wizard.

Manage releases for digital products and services
Track the progress of your releases, and work on them to release products and services faster
and more efficiently.

Before you begin

Role required: sn_dpr_model.release_coordinator, sn_dpr_model.product_manager, or
sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. If the release isn't in progress, select Start release.
Managing timeline-oriented releases
Managing a timeline-oriented release involves following a series of deadlines and milestones
and adjusting as necessary to keep your release on track.

Timeline-oriented release process
Timeline-oriented process is suitable for creating releases that have fixed deadlines and follow a
strict schedule.
The following is the general flow that a timeline-oriented release goes through:
• The flow starts with the first phase in the Pending state, which is the default state. The state of
the phase moves to In Progress when it starts on the planned start date.
Tasks in the phase are processed based on the system property
sn_dpr.sequential_task_execution:
◦ true: Tasks in the phase are processed in sequential order. At the start of a phase, the task
with the lowest order in it is set to the Open state. After this task is completed, the next task
in the order is opened. This process continues for the remaining tasks in the phase. If the
task is an approval task, the state is moved to the Requested state.
◦ false: Tasks in the phase are not processed in a sequence. Instead, all its tasks are set to the
Open state at the start of the phase.
• When all tasks are completed and policies are compliant, the phase ends automatically on its
planned end date. The phase state updates to the Completed state.
• After the current phase is completed, the next phase moves to the In Progress state. Only one
phase can be in progress at a given time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
• When all phases in the release are completed, the release moves to the Review state.
• When the review of the release is completed, the release moves to the Completed state.
For more information, see Release for a product or service.

Working on a timeline-oriented release

Work on a release for a
single product or service

Work on a release
for multiple products

Learn about working
on a timeline-oriented
release to deliver a single
product or service.

Learn about working on a
timeline-oriented release to
deliver multiple products.

Work on a timeline-oriented release for a single product or service
Monitor and work on a release that follows the timeline-oriented release process to release a
single product or service.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Optional: Select the Details tab and add or update the schedule in the Schedule list to
account for holidays during the release period.
(Optional) The list shows schedule entries that are of the type Excluded from the Schedule
[cmn_schedule] table.

Note: The selected schedule must be within the release duration (release target date).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
The phase start and end dates are updated and the release duration is recalculated by
considering the non-working days in the schedule. For more information on how schedules
impact the dates of phases and release target, see Holiday schedules in a release.
5. If the release isn't in progress, select Start release.
6. Select the Overview section to review and modify release details, get an overview of its status,
or change its readiness target date.
For more information, see Review and update release details and Retarget a release.
7. Select the Release scope section to review and update the scope of the release by adding or
removing the product features and enhancements.
For more information, see Update the scope of a release.
8. Select the Configuration items section to review and manage the configuration items in the
release.
You can add more configuration items or remove the existing ones as needed. For more
information, see Manage configuration items in a release.
9. Select the Change requests section to review and manage the change requests in the release.
You can add new or existing change requests or remove the existing ones as needed. For more
information, see Manage change requests in a release.
10. From the Release form header, select the number under the Artifacts to manage artifacts
added to the release.
For more information, see Manage artifacts in a release.
11. Select the Release notes section to create and manage release notes for the release.
You have the option to add release notes manually or generate using AI.
◦ To add release notes manually, select Add manually and then enter the release notes in the
Release notes field.
◦ To generate release notes using AI, select Generate.
For more information, see Generate AI-powered release notes for a release.
Execute the release
View the release status and work on its phases and tasks, and policies.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

About this task

Automated email notifications are triggered at key release life cycle events. Notifications are sent
to relevant stakeholders when:
• A phase reaches its end date
• A release task is 2 days from its due date
• The release is 1 day from its readiness target
• A phase's state changes
• A policy is executed and resulted in non-compliant
• A task approval request is submitted
• A task approval request is rejected
For more information, see Email notifications in Digital Product Release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
Procedure
1. Select Release execution to view the release status and work on its phases and tasks, and
manage key dates.

2. Update a release phase.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. When all tasks in the current phase are complete and mapped policies comply, mark the
phase as complete by selecting Complete phase.

Note: If any of the mapped policies is noncompliant, you can complete a
phase only when you have any of the roles defined in the system property
sn_dpr.complete_phase_override.
The state of the current phase is updated to Completed and the next phase is started. The
actual end date of the current phase is updated to the current date.
3. Optional: Add a task to a release phase.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. Select Add task.
c. On the Create task dialog box, add details for the task like its name, phase it belongs to, end
date, and description.
d. If the task needs approval, perform the following steps:

Note: You can select whether the task needs approval when creating it. This option
can’t be changed after it’s saved.
i. Select Yes in the Need approval field.
The Assigned to and Approval definition fields appear.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
ii. From the Assigned to list, select the user who would approve the task.
iii. From the Approval definition list, select an approval definition to trigger the approval
based on the predefined condition.
e. Select Create task.
The task is created in the Pending state and added to the selected phase.
For an approval task, an approval record is created for the approvers to review and act. An
email notification is also sent to them. For more information, see Approve or reject a release
task.
4. Track and manage the progress of tasks for the selected phase.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. Select the Tasks tab to view all tasks in the phase.
You can apply filters to view specific tasks or change the view type by selecting the Kanban
or List option.
c. Select a task to open in the Task details pane.
d. Review the task in the Task details pane, or select Full details to open the task record in the
form view.
e. Assign the task in the Assigned to field to the user who will work on it.
f. Review the approval status for an approval task in the Approval field.
g. Update the State field with the status of the task that doesn't need any approval.
The state of an approval task is automatically updated when approved.
h. Select Save to save the changes.
If you complete the current task and the system property
sn_dpr.sequential_task_execution is set to true, the next task in the order
moves to the Open state.
5. Optional: Manage mapping of policies to a release phase to validate it.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.

Note: Policies can’t be mapped to a completed or cancelled phase.
b. Select the Policies tab.
c. To map a policy to the selected phase,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


<!-- page 1544 -->
i. Select Add.
ii. On the Map Policies dialog box, select one or more policies from the list to map to the
phase.
iii. Select Map policies.
The selected policies are mapped to the phase and are listed in the Policy Mappings list.
d. To delete an existing policy mapping,
i. Select the policies from the Policy Mappings list.
ii. Select Delete, and confirm.
Selected policies mappings are removed from the phase.

Note: For an in-progress phase, if you remove a previously executed policy, the
remaining policies are automatically run after its removal. The updated execution
statuses of the individual policies are aggregated and shown in the Policy status field
on the Details tab.
6. Select Run policies to run policies on the current phase.
All mapped policies are executed in the background for the current phase (In Progress state).
You can check the execution status by refreshing the list on the Policies tab.
A scheduled job runs daily to execute the policies that are mapped to the phase. The
Execution status column on the Policies list for each phase is updated to show the compliance
status after each run.
When multiple policies are mapped to a phase, their execution statuses are aggregated into
the phase's overall status. You can view this aggregated status in the Policy status field on the
Details tab.
7. Optional: If a policy fails compliance, you can request an exception with justification.

Note: This option is only available when both Digital Product Release and GRC: Policy
and Compliance Management are installed.
a. Select the policy that failed.
b. Select Request exception.
c. In the Request policy exception, provide the reason, start date, end date, and business
justification for the exception.
d. Select Request.
The exception request is sent to the Compliance group. For more information about the review
and approval of exception request, see Review the policy exception and extension request
and Manage policy exceptions and extensions .
After the exception is approved, the policy status shows as Compliant with exception in
subsequent executions. The phase can be completed if all other policies are compliant.
8. Optional: Add or update key dates in a timeline-oriented release that should be in relation to
the release target date.
These key dates help you define and track important events that can happen during the
release period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1544


<!-- page 1545 -->
◦ Add a new key date to the release:
a. Select the more actions icon next to the Add task button and then select Add key date.

b. In the Add key date dialog box, fill in the fields.
(Optional) For more information, see Release key date form.
c. Select Save.
◦ Update the existing key dates in the release:
a. Select a key date in the timeline bar to open the Key date details form in the side-panel.
(Optional) Alternatively, you can select the number under Key dates in the form header to
view a list of key dates for the release, and then open a key date.
b. On the Key date form, update the fields.
c. Select Save.
9. Close a release after verifying its completeness.
For more information, see Close a release.
10. Optional: Cancel a release if it's no longer required.
a. Select Cancel release.
b. Enter the reason for cancellation and select Cancel release.
Work on a timeline-oriented release for multiple products
Monitor and work on a release that follows the timeline-oriented release process for multiple
products.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

About this task

When working on a release for multiple products, you can choose to work with the main release
(for the primary product or service) or a specific release (for an Included product). The main
release controls and executes all activities for each product release under it.
• Perform primary activities, like starting the release and managing phases and tasks in the main
release.
• Define the release scope and manage change requests in each product release.
• Run policies for the current phase either from the main release level or an individual product
release. The policy statuses from the individual product releases are aggregated into the policy
status of the main release. For more information about how the aggregated status is derived,
see Policy status aggregation.
You can monitor the progress of an individual product release, or you can track the overall
progress at the main release level.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1545


<!-- page 1546 -->
3. Select a release from the list to open.
4. Optional: Select the Details tab and add or update the schedule in the Schedule list to
account for holidays during the release period.
(Optional) The list shows schedule entries that are of the type Excluded from the Schedule
[cmn_schedule] table.

Note: The selected schedule must be within the release duration (release target date).
The phase start and end dates are updated and the release duration is recalculated by
considering the non-working days in the schedule. For more information on how schedules
impact the dates of phases and release target, see Holiday schedules in a release.
5. If the release isn't in progress, select Start release.
6. Select Dashboard to monitor the overall status of the release, see the details and all products
that have their individual releases.
◦ Select the Release dashboard tab to view important dates of the release, release tasks,
policies, related tasks, and approvals by their state for all releases together.
For more information, see Release dashboard for a multi-product release.
◦ Select the Details tab to make any necessary changes to the release details, such as the
release name, owner, status, or description. For more information, see Review and update
release details.
◦ Select the Products tab to view a list of all products, including their release versions and
statuses.
7. Select a product or service to work on its release from the View by drop-down list.
Based on the selected option, you can see different sections as follows:

View by option

Description

All products or
services

You can see the following sections:
◦ Release execution: Work on the main release, which involves starting
the release, retargeting the release, and executing the release to
manage phases, tasks, key dates, policies, and approvals. All of these
actions apply to all releases.
◦ Change requests: View a list of all change requests across releases for
all products or service.

Included product You can see the following sections for the selected product's release:
◦ Overview: View the progress and quality of the release on the
respective dashboards. For more information, see Release Overview
dashboard for a multi-product release and Release Quality dashboard.
◦ Release execution: View the details of phases of the release or run
policies mapped to its phases for compliance checks. For more
information, see Execute the release.

Note: In the Details tab, the Policy status field displays a
combined compliance status for all releases.
◦ Release scope: View and update the scope of the release, including
product enhancements, planning items, and related tasks such as
incidents and problems associated with the release.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1546


<!-- page 1547 -->
View by option

Description

◦ Configuration items: View and manage configuration items related to
the release.
◦ Change requests: View and manage change requests related to the
release.
◦ Release notes: Create, publish, and share release notes for the release.
You can add release notes manually or generate using AI. For more
information, see Generate AI-powered release notes for a release.
On the Release form header, select the number under the Artifacts label
to manage artifacts in the release. The Artifacts label is available in the
Overview, Release scope, Configuration items, and Change requests
sections. For more information, see Manage artifacts in a release.
8. Close a release after verifying its completeness.
For more information, see Close a release.
Managing a stage-oriented release
Managing a stage-oriented release involves completing objectives and closing the release when
the work is done and meets the defined release criteria, rather than waiting for the planned end
date.

Stage-oriented release process
Stage-oriented process is suitable for creating releases that prioritize completing objectives and
features over following a strict timeline.
The following is the general flow that a stage-oriented release goes through:
• The flow starts with the first phase in the Pending state, which is the default state. The state of
the phase moves to In Progress when you manually start it.
Tasks in the phase are processed based on the system property
sn_dpr.sequential_task_execution:
◦ true: Tasks in the phase are processed in sequential order. At the start of a phase, the task
with the lowest order in it is set to the Open state. After this task is completed, the next task
in the order is opened. This process continues for the remaining tasks in the phase. If the
task is an approval task, the state is moved to the Requested state.
◦ false: Tasks in the phase are not processed in a sequence. Instead, all its tasks are set to the
Open state at the start of the phase.
• When the all tasks are completed and all policies are compliant or compliant with exceptions
for the current phase, it automatically moves to the Completed state.
• After the current phase is completed, the next phase moves to the In Progress state. Only one
phase can be in progress at a given time.
• If you encounter any issues at any point, you can restart from a previously completed phase.
That phase and later phases are reset, including tasks and policy status.
• When all phases in the release are completed, the release moves to the Review state.
• When the review of the release is completed, the release moves to the Completed state.
For more information, see Release for a product or service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1547


<!-- page 1548 -->
Working on a stage-oriented release

Work on a release for a
single product or service

Work on a release
for multiple products

Learn about working
on a stage-oriented
release to deliver a single
product or service.

Learn about working on a
stage-oriented release to
deliver multiple products.

Work on a stage-oriented release for a single product or service
Monitor and work on a release that follows the stage-oriented release process to release a single
product or service.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. If the release isn't in progress, select Start release.
5. Select the Overview section to review and modify release details, get an overview of its status,
or change its readiness target date.
For more information, see Review and update release details and Retarget a release.
6. Select the Release scope section to review and update the scope of the release by adding or
removing the product features and enhancements.
For more information, see Update the scope of a release.
7. Select the Configuration items section to review and manage the configuration items in the
release.
You can add more configuration items or remove the existing ones as needed. For more
information, see Manage configuration items in a release.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1548


<!-- page 1549 -->
8. Select the Change requests section to review and manage the change requests in the release.
You can add new or existing change requests or remove the existing ones as needed. For more
information, see Manage change requests in a release.
9. From the Release form header, select the number under the Artifacts to manage artifacts
added to the release.
For more information, see Manage artifacts in a release.
10. Select the Release notes section to create and manage release notes for the release.
You have the option to add release notes manually or generate using AI.
◦ To add release notes manually, select Add manually and then enter the release notes in the
Release notes field.
◦ To generate release notes using AI, select Generate.
For more information, see Generate AI-powered release notes for a release.
Restart the release phase
You can start over a stage-oriented release from any previously completed phase if you
encounter an issue that requires you to go back.

Before you begin

Note: When you restart a release from a completed phase, it resets that phase and any
later phases up to the current one. It also resets the status of tasks, approval requests, and
policies linked to each affected phase.

Role required: sn_dpr_model.release_admin

About this task

By restarting a phase, you can reassess and adjust the plan to overcome the new issues,
ensuring that the release stays on track and meets its overall goals. For example, if a certain
version of an artifact is being certified during the release process and it doesn't pass the
validation, a new version of the artifact can be chosen. Then, you can restart the release from an
earlier phase to repeat the same tasks, mapped policies, configuration items, and approvals from
those phases.

Procedure
1. On the Release execution page, select the release phase action button ( ) and then select
Restart phase.
2. On the Restart phase dialog box, select a phase from where you want to restart.
The list displays the completed phases.
3. Select Restart.

Result
• The state of the selected phase updates to In Progress and of all the later phases updates to
Pending.
• The state of the current phase updates to Restarted.
• The state of all tasks in the affected phases updates to Open.
• The configuration items associated with the affected phases are reassociated with the newly
created corresponding phases.
• The last run status of the policies mapped to theses phases updates to Not run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1549


<!-- page 1550 -->
Execute the release
View the release status and work on its phases and tasks, and policies.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

About this task

Automated email notifications are triggered at key release life cycle events. Notifications are sent
to relevant stakeholders when:
• A phase reaches its end date
• A release task is 2 days from its due date
• The release is 1 day from its readiness target
• A phase's state changes
• A policy is executed and resulted in non-compliant
• A task approval request is submitted
• A task approval request is rejected
For more information, see Email notifications in Digital Product Release.

Procedure
1. Select Release execution to view the release status and work on its phases, tasks, and
policies.

2. Update a release phase.

Note: If the stage_workflow_auto_transition system property is set to true,
the phases are automatically closed when all tasks in it are closed and policies comply.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. When all tasks in the current phase are complete and mapped policies comply, mark the
phase as complete by selecting Complete phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1550


<!-- page 1551 -->
Note: If any of the mapped policies is noncompliant, you can complete a
phase only when you have any of the roles defined in the system property
sn_dpr.complete_phase_override.
The state of the current phase is updated to Completed and the next phase is started. The
actual end date of the current phase is updated to the current date.
3. Optional: Add a task to a release phase.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. Select Add task.
c. On the Create task dialog box, add details for the task like its name, phase it belongs to, end
date, and description.
d. If the task needs approval, perform the following steps:

Note: You can select whether the task needs approval when creating it. This option
can’t be changed after it’s saved.
i. Select Yes in the Need approval field.
The Assigned to and Approval definition fields appear.
ii. From the Assigned to list, select the user who would approve the task.
iii. From the Approval definition list, select an approval definition to trigger the approval
based on the predefined condition.
e. Select Create task.
The task is created in the Pending state and added to the selected phase.
For an approval task, an approval record is created for the approvers to review and act. An
email notification is also sent to them. For more information, see Approve or reject a release
task.
4. Track and manage the progress of tasks for the selected phase.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.
b. Select the Tasks tab to view all tasks in the phase.
You can apply filters to view specific tasks or change the view type by selecting the Kanban
or List option.
c. Select a task to open in the Task details pane.
d. Review the task in the Task details pane, or select Full details to open the task record in the
form view.
e. Assign the task in the Assigned to field to the user who will work on it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1551


<!-- page 1552 -->
f. Review the approval status for an approval task in the Approval field.
g. Update the State field with the status of the task that doesn't need any approval.
The state of an approval task is automatically updated when approved.
h. Select Save to save the changes.
If you complete the current task and the system property
sn_dpr.sequential_task_execution is set to true, the next task in the order
moves to the Open state.
5. Optional: Manage mapping of policies to a release phase to validate it.
a. From the timeline, select a phase or use the arrow buttons to navigate to the previous or next
phase.

Note: Policies can’t be mapped to a completed or cancelled phase.
b. Select the Policies tab.
c. To map a policy to the selected phase,
i. Select Add.
ii. On the Map Policies dialog box, select one or more policies from the list to map to the
phase.
iii. Select Map policies.
The selected policies are mapped to the phase and are listed in the Policy Mappings list.
d. To delete an existing policy mapping,
i. Select the policies from the Policy Mappings list.
ii. Select Delete, and confirm.
Selected policies mappings are removed from the phase.

Note: For an in-progress phase, if you remove a previously executed policy, the
remaining policies are automatically run after its removal. The updated execution
statuses of the individual policies are aggregated and shown in the Policy status field
on the Details tab.
6. Select Run policies to run policies on the current phase.
All mapped policies are executed in the background for the current phase (In Progress state).
You can check the execution status by refreshing the list on the Policies tab.
When a policy execution results in a non-compliant status, an email notification is sent to the
release admin and other relevant stakeholders.
When multiple policies are mapped to a phase, their execution statuses are aggregated into
the phase's overall status. You can view this aggregated status in the Policy status field on the
Details tab.
7. Optional: If a policy fails compliance, you can request an exception with justification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1552


<!-- page 1553 -->
Note: This option is only available when both Digital Product Release and GRC: Policy
and Compliance Management are installed.
a. Select the policy that failed.
b. Select Request exception.
c. In the Request policy exception, provide the reason, start date, end date, and business
justification for the exception.
d. Select Request.
The exception request is sent to the Compliance group. For more information about the review
and approval of exception request, see Review the policy exception and extension request
and Manage policy exceptions and extensions .
After the exception is approved, the policy status shows as Compliant with exception in
subsequent executions. The phase can be completed if all other policies are compliant.
8. Close a release after verifying its completeness.
For more information, see Close a release.
9. Optional: Cancel a release if it's no longer required.
a. Select Cancel release.
b. Enter the reason for cancellation and select Cancel release.
Work on a stage-oriented release for multiple products
Monitor and work on a release that follows the stage-oriented release process for multiple
products.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

About this task

When working on a release for multiple products, you can choose to work with the main release
(for the primary product or service) or a specific release (for an Included product). The main
release controls and executes all activities for each product release under it.
• Perform primary activities, like starting the release and managing phases and tasks in the main
release.
• Define the release scope and manage change requests in each product release.
• Run policies for the current phase either from the main release level or an individual product
release. The policy statuses from the individual product releases are aggregated into the policy
status of the main release. For more information about how the aggregated status is derived,
see Policy status aggregation.
You can monitor the progress of an individual product release, or you can track the overall
progress at the main release level.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. If the release isn't in progress, select Start release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1553


<!-- page 1554 -->
5. Select Dashboard to monitor the overall status of the release, see the details and all the
products that have their individual releases.
◦ Select the Release dashboard tab to view important dates of the release, release tasks,
policies, related tasks, and approvals by their state for all releases together.
For more information, see Release dashboard for a multi-product release.
◦ Select the Details tab to make any necessary changes to the release details, such as the
release name, owner, status, or description. For more information, see Review and update
release details.
◦ Select the Products tab to view a list of all products, including their release versions and
statuses.
6. Select a product or service to work on the release from the View by drop-down list.
Based on the selected option, you can see different sections as follows:

View by option

Description

All products or
services

You can see the following sections:
◦ Release execution: Work on the main release which involves starting
the release, retargeting the release, executing the release to manage
phases, tasks, policies, and approvals, and restarting the release from a
previously completed phase. All of these actions apply to all releases.
◦ Change requests: View a list of all change requests across releases for
all products or service.

Included product You can see the following sections for the selected product's release:
◦ Overview: View the progress and quality of the release on the
respective dashboards. For more information, see Release Overview
dashboard for a multi-product release and Release Quality dashboard.
◦ Release execution: View the details of phases of the release or run
policies mapped to its phases for compliance checks. For more
information, see Execute the release.

Note: In the Details tab, the Policy status field displays a
combined compliance status for all releases.
◦ Release scope: View and update the scope of the release, including
product enhancements, planning items, and related tasks such as
incidents and problems associated with the release.
◦ Configuration items: View and manage configuration items related to
the release.
◦ Change requests: View and manage change requests related to the
release.
◦ Release notes: Create, publish, and share release notes for the release.
You can add release notes manually or generate using AI. For more
information, see Generate AI-powered release notes for a release.
On the Release form header, select the number under the Artifacts
label to manage artifacts in the product's release. The Artifacts label
is available in the Overview, Release scope, Configuration items, and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1554


<!-- page 1555 -->
View by option

Description

Change requests section. For more information, see Manage artifacts in a
release.
7. Close a release after verifying its completeness.
For more information, see Close a release.
Managing multiple releases through release bundles
Release bundles help you to group multiple releases to track and manage them concurrently
from a single place.
Release coordinators and product managers can easily track the progress of each release using
release bundles. Release bundles help to identify dependencies and potential conflicts, and
make any necessary adjustments to ensure a smooth and coordinated release process. They
also enable communication and collaboration among team members, as everyone can access
the same information and stay updated on the status of each release.

Note: You cannot add releases that are in the Draft state to a release bundle.
You can include a release in multiple release bundles, which can be useful for larger projects. It
can help in better coordination between multiple teams working on different features. It can also
help with managing and prioritizing updates.

State of a release bundle
The State field shows the overall state of the release bundle, which is determined by the states
of its releases, as mentioned below:
• Draft: When there are no releases in the bundle.
• Ready: When all releases are either in the Pending or Draft state.
• In Progress: When at least one release is in the In Progress, Review, or Restarting state, or
when there's a combination of Draft and Completed states among the releases.
• Completed: When all releases have either the Completed or Cancelled state. For the
Completed release bundle, the Active is set to false.

Features and benefits
Release bundles offer the following features and benefits:
Centralized management
Provides release coordinators and project managers to manage multiple releases
concurrently from one place.
Progress and quality monitoring
Monitor progress of releases across multiple teams and projects and ensure the
quality of releases within the bundle.
Change request tracking
Track all change requests in releases.
Create a release bundle
Create a release bundle to manage and track multiple releases from a single place. These
releases can have different release readiness targets. However grouping them together in
bundles helps you manage them all efficiently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1555


<!-- page 1556 -->
Before you begin

Role required: sn_dpr_model.release_coordinator, sn_dpr_model.product_manager, or
sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

), and then select Bundles.

3. Select New.
4. On the Create release bundle dialog box, provide the name, owner, and a description for the
release bundle.
5. Select Next.
6. Add releases to the bundle or skip to add them later.

Note: You can’t add releases that are in the Draft state to a release bundle.
◦ To add releases to the bundle, select them from the list, and select Add.
◦ To add releases to the bundle later, select Skip.
Track multiple releases from a release bundle
Track the progress of releases in a release bundle concurrently to improve efficiency and
streamline the release management process. You can also identify dependencies and potential
conflicts in your releases and coordinate with team members working on different releases.

Before you begin

Role required: sn_dpr_model.release_coordinator, sn_dpr_model.product_manager, or
sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

), and then select Bundles.

3. Select a release bundle from the list to open.
4. On the Overview tab, review key metrics for all releases in the bundle.

Widget

Description

Releases by
state

Total number of releases in the bundle, grouped by their state.

Tasks

Total number of tasks across all releases in the bundle, grouped by their
state.

Policies

Total number of policies across all releases in the bundle, grouped by their
compliant status.

Approvals

List of all approval tasks across all releases in the bundle, grouped by their
approval status.

Enhancements Total number of product enhancements across all releases in the bundle,
grouped by their state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1556


<!-- page 1557 -->
5. Optional: On the Details tab, view and edit the release bundle details.
The State field shows the overall state of the release bundle, which is determined by the states
of its releases, as mentioned below:
◦ Draft: When there are no releases in the bundle.
◦ Ready: When all releases are either in the Pending or Draft state.
◦ In Progress: When at least one release is in the In Progress, Review, or Restarting state, or
when there's a combination of Draft and Completed states among the releases.
◦ Completed: When all releases have either the Completed or Cancelled state. For the
Completed release bundle, the Active is set to false.

Note:
6. On the Releases tab, view and manage releases in the bundle.
◦ To add a release to the bundle, select Add and then select from the list of releases.
◦ To remove an existing release from the bundle, select the release from the list, and then
select Remove.
◦ To view the details of a release, select the release name from the list.
7. On the Change requests tab, view change requests across all releases in the bundle.
To view the details of a change request, select it from the list.
Review and update release details
Review and modify the details of a release. You can also retarget the readiness date of the
release as required.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select Overview to review the release's progress and quality at a glance, take any necessary
steps, or review and change its details.
5. Select the Release overview tab to review the important dates, change requests, risk scores,
tasks, and policy and approval statuses.
For more information, see Release Overview dashboard.
6. Select the Details tab to perform following actions:
a. Update release details, such as the release name, owner, status, or description, as needed.
b. Attach a supporting file to the release for additional context and collaboration during
execution.
i. From the Contextual side panel, select the attachments icon (

).

ii. In the Attachments pane, add, rename, download, or delete attachments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1557


<!-- page 1558 -->
▪ If attaching the first file, select the Select file button, or else select the add file button
(

), and upload a file.

▪ To rename an attachment, select the actions icon (
file name.

), select Rename and update the

▪ To delete an attachment, select the actions icon, select Delete.
▪ To download an attachment, select the actions icon, select Download.
7. Select the Quality tab to review the software and test quality summaries for an ongoing
release.
This tab is available only for the release of a product. For more information, see Release
Quality dashboard.

Note: You must configure pipelines to track software quality of your release. For more
information about setting up pipelines using external tools configuration, see Integrate
external tools from Digital Product Release Workspace.
Update the scope of a release
Review and update the scope of the release by adding or removing product enhancements,
planning items, and related tasks like incidents and problems.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select Release scope to manage product enhancements, work items, planning items, and
tasks in the release.

Note: The tabs for task types that you see depend on the permissions
required to view those task type records and the system property
sn_dpr.release_related_record_types. For more information, see Digital
Product Release properties.
5. Select the Product enhancements and Work items tab to manage product enhancements and
work items in the release.
◦ Add an enhancement to a product or service
◦ Add a product enhancement from an epic
The product enhancements added to the release are listed in the Product enhancements and
Work items tab.
6. Select the Planning Items tab to view planning items associated with the release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1558


<!-- page 1559 -->
Note: The Planning Items tab is available only when the following conditions are met:
◦ You have one of the following roles required to view those items
▪ sn_dpr_model.product_enhancement_read
▪ sn_dpr_model.release_admin
▪ sn_dpr_model.release_user
▪ sn_dpr_model.product_manager
▪ sn_dpr_model.release_coordinator
®

◦ ServiceNow Strategic Planning Workspace is installed with the Digital Product lens
configured
For more information about the lenses and portfolio plans, see Lenses in Strategic
Planning
and Portfolio plans in Strategic Planning .
A list of the planning items associated with the product enhancements displays.
7. Manage related tasks, such as Incidents, Problems, and Requests, in the release.
◦ To add a related task, select Add.
a. Select the tab in which you would like to add a task.
A list of the records of the selected task type displays.
b. Select one or more records from the list and then select Add.
The selected task records are added to the release.
◦ To remove a related task, select it from the list and select Remove.
Manage configuration items in a release
View and manage the configuration items (CIs) in a release phase to manage the release
effectively. These associated CIs can be used for managing change requests and future tasks
through the release.

Before you begin

Role required: sn_dpr_model.product_manager, sn_dpr_model.release_coordinator, or
sn_dpr_model.release_admin

About this task

You can add a specific configuration item to a phase only once, although it can be added to
multiple phases in the release.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select Configuration items to manage configuration items in the release.
The list displays all CIs that are associated with the selected phase.
5. Select a phase from the Phase list to add or remove configuration items of any CI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1559


<!-- page 1560 -->
Option

Steps

a. Select Add.
Add existing CIs to the release
phase

b. Select the CIs to add to the phase.
c. Select Add.
The selected configuration items are added to the
phase.

Remove associated CIs from a
phase

a. Select configuration items form the list that you want
to remove from the phase.
b. Select Remove.

Manage change requests in a release
View and manage change requests in a release. You can create and add new change requests to
the release or add existing ones.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

About this task

You can associate a change request to a phase only once, although it can be added to multiple
phases in the release.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select Change requests to manage change requests in the release.
The Change requests list displays all change requests that are associated with the selected
phase of the release.
5. Select a phase from the Phase list.
6. Create change requests and add them to the phase, add existing change requests to the
phase, or remove the ones that are already associated with the phase.
Option

Steps

a. In the Change requests tab, select New.
b. Select a Change request model and then select
Next.
c. Fill in the details in the Change Request form and
select Save.
Create and add a change request to
the phase
For more information, see Create a change request.
The new change request is created and added to
the selected phase. The Software model field in the
change request is filled with the version of the re­
lease.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1560


<!-- page 1561 -->
Option

Steps

a. Select Add.
All existing change requests that have the Software
model field empty are listed.
Add existing change requests to the b. Select the change request to add to the release.
phase
c. Select Add.
The selected change requests are added to the select­
ed phase. The Software model field in these change
requests is filled with the version of the release.
a. Select change requests form the list that you want
to dissociate from the release.
Remove associated change re­
quests from the phase

b. Select Remove.
The selected change requests are removed from the
selected phase. The Software model field in these
change requests is also cleared.

7. Import the configuration items (CIs) from the attached phases into the change request as
affected CIs.
a. Select the Affected CIs tab.
b. Selecting Add CIs from release phases.

Result
• If the change request is associated with a single phase, the Attached to phases in the header
section of the Change Request record shows the name of that phase. Select the link to open
the phase.
• If the change request is associated with more than one phase of the release, the Attached to
phases shows the count of those phases. Select the link to open the list of those phases.
Generate AI-powered release notes for a release
Generate structured release notes for a release using AI-driven summarization, reducing manual
effort and improving clarity for stakeholders. The release notes are generated from the release
scope.

Before you begin
Required applications and plugins:
• Digital Product Release version 2.3 or later.
For more information, see Digital Product Release.
• Now Assist for ITSM plugin (sn_itsm_gen_ai) version 12.0.0 or later.
For more information, see Now Assist for IT Service Management (ITSM).
Configuration:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1561


<!-- page 1562 -->
• The Generate Release Notes skill must be active.
For more information about activating a Now Assist skill for ITSM, see Configure
Now Assist for IT Service Management (ITSM).
• The release phase set as the release readiness must be in progress or
completed.
Role required: sn_dpr_model.product_manager

About this task

The release notes are generated using the release scope data for the release:
• Product enhancements and work items
• Incidents
• Problems
• Requests

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select the Release notes section to manage release notes.
5. Select Generate to create the release notes using AI-driven summarization.
Depending on the number of items in the release scope, this process might take some
time. You can choose to close this section and proceed with other work as needed.
After the release notes are generated and ready for review, you receive an email

notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1562


<!-- page 1563 -->
The release notes are generated and

displayed.
6. Review the AI-generated release notes for accuracy and make changes, if necessary.
7. To save the release notes, select Save.
8. Optional: If you update the release scope, you can regenerate the release notes by selecting
Regenerate.
The existing release notes are replaced with the regenerated release notes, which include the
latest release scope data.
9. To publish the release notes, select Publish.
The release notes are set to read only.
10. Select Download to download a copy of release notes as a PDF file.
11. Select Copy link to create a shareable link to the release notes.
You can share the link with your stakeholders. They can access the release notes in Digital
Product Release Workspace.
12. Optional: To add content manually or regenerate the release notes after they are published,
select Edit.
Manage artifacts in a release
Add or remove artifacts from a release.

Before you begin

Make sure you have associated an artifact repository with the product. For more information, see
View and manage data from external tools.
Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. On the Release form header, select the number under the Artifacts label.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1563


<!-- page 1564 -->
The Artifacts label is available when you select Overview, Release scope, or Change
requests.

5. On the Release Artifacts list view, add or remove artifacts.
Option

Steps

a. Select Add artifact.
b. On the Link artifact to release dialog box, select an artifact
from the Artifact list.
By default, the latest version of the artifact is added.
Add an artifact

c. To choose a different version of the artifact, clear Use latest
version and provide a version in Semantic version.
A valid semantic version has the format as major.minor.patch.
For example, 5.4.2.
d. Select Confirm.

Note: An artifact can only be added to a release once.
Remove an artifact

a. Select an artifact from the list.
b. Select Delete.

Approve or reject a release task
Review a release task and approve or reject it.

Before you begin

Role required: approver_user

Procedure
1. Navigate to All > Service Desk > My Approvals.
2. In the My Approvals list, click a record to open for approval.
3. Review the record and either approve or reject:
◦ To approve the record, click Approve.
◦ To reject the record, enter comments for rejection in the Comments field and click Reject.

Result

The following table shows the result of approve and reject actions on the approval record of a
release task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1564


<!-- page 1565 -->
Result of approving or rejecting a release task
Approve

Reject

• The approval record's state updates from
Requested to Approved.

• The approval record's state updates from
Requested to Rejected.

If the requested item was assigned to a
user group for approval, then the state of
the approval records for the remaining
users updates from Requested to No Longer
Required.

If the requested item was assigned to a
user group for approval, then the state of
the approval records for the remaining
users updates from Requested to No Longer
Required.

• The State field on the release task updates
from Open to Closed Complete.

• The State field on the release task remains
Open.

• The Approval field on the release task
updates from Requested to Approved.

• The Approval field on the release task
updates from Requested to Rejected.
• The rejection comments posted by the
approver is added to the release task's
Activities section.

Retarget a release
Change the release readiness target to reschedule the release period.

Before you begin

Role required: sn_dpr_model.product_manager or sn_dpr_model.release_admin

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. On the Release form, select Overview.
5. Select the release action icon (

) and then select Retarget release.

6. On the Retarget release dialog box, select a different release readiness target from Release
readiness target.

Note: The new release readiness target date must be within the defined schedule of the
release.
7. You can also make the release as an out-of-band release by selecting Out of band.
This option depends on the system properties—out_of_band_release_allowed
and out_of_band_release_roles. For more information, see Digital Product Release
properties.
8. If you selected the out-of-band option, then select a release calendar from the Release
calendar to tag the release and use its release target.
9. Select Confirm.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1565


<!-- page 1566 -->
Result
• The readiness target date of the release is updated to the new date.
• For timeline-oriented releases, the key dates impacted are adjusted based on the retargeted
date. This adjustment is made after recalculating the number of days that have changed from
the original schedule.

Note: If a holiday schedule is attached to the release and the revised key dates fall on a
holiday, the last workday before the holiday is considered as the revised key date.

What to do next

Update the planned dates on the associated change requests manually because they are not
automatically updated when you retarget the release.
Close a release
Complete a release after all tasks have been completed and all phases are in compliance with
the mapped policies.

Before you begin

A release must be in the Review state to mark it as complete.
Role required: sn_dpr_model.release_admin

About this task

Note: A release that follows a stage-oriented process automatically moves to Completed
when it’s compliant, provided that the stage_workflow_auto_transition system
property is set to true.

Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Review the completeness of the release to determine if all the release work is complete.
5. Close the release.
◦ In a single product or service release, on the Overview page, select Complete release.
◦ In a multi-product release, on the Dashboard page, select Complete release.

Result

The release is closed and its state is updated to Completed.

View releases planned in a release readiness target
View and track all product releases that are planned in a release readiness target and track their
progress.

Before you begin

Role required: sn_dpr_model.release_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1566


<!-- page 1567 -->
Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the release calendar icon (
The release calendar appears.

).

3. Select a release calendar on which you want to view the releases.
4. Optional: Filter the release calendars by selecting a release manager from the filter list.
Release targets are displayed for all release managers by default.
5. Select a release readiness target from the calendar, list view, or agenda view pane, to open.
Option

From the calendar view

From the List view

Steps

a. Select the calendar view icon (

).

b. On the calendar, select the release target
item on a date.
a. Select the list view icon (

).

b. Select a release target from the list.
a. Select a date on the calendar.

From the Agenda View pane

The Agenda View pane appears with a list
of all release targets scheduled for the se­
lected date.
b. On the Agenda View pane, select a release
target tile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1567


