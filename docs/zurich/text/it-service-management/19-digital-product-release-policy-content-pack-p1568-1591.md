# Zurich IT Service Management — Digital Product Release Policy Content Pack

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1568–1591 of 3857

Sections: Digital Product Release Policy Content Pack (p1568); Reference (p1574)

---

<!-- page 1568 -->
6. On the Release target form, select the Releases tab to view all releases planned in the
readiness target.
The list displays all releases attached to this readiness target.
7. Select a release from the list to review its status and other details.

Digital Product Release Policy Content Pack
The Digital Product Release Policy Content Pack includes data collectors and policies for
automating the verification of phase gate in product and service releases in Digital Product
Release.
• Data collectors enable you to create low-code policies for the DevOps data model application.
For more information, see Digital Product Release data collectors.
• Policies enable you to automate phase gate verification and continuous evaluation of software
artifacts to ensure they meet the business requirements and standards.
For more information, see Digital Product Release policies.

Digital Product Release data collectors
The Digital Product Release Policy Content Pack contains a set of data collectors to collect
DevOps data to be validated against policies.

Approval Task Completeness
The Approval Task Completeness data collector checks if all approval release tasks associated
with a release phase are complete.
Input: Release phase.
Output:
• true: All approval tasks are approved.
• false: One or more approval tasks aren’t approved, or there are no approval tasks for the
release phase.

Artifact Story Complete
The Artifact Story Complete data collector returns the percent of stories completed that
are associated with a release artifact. The formula used to calculate the percentage is:
Percentage of stories completed = (Number of completed Stories /
(Total number of stories - Number of stories in cancelled state Number of stories in deleted state)) * 100.
Input: List of artifacts for a release phase.
Output: % of stories that are complete.

Change Request State Validation
The Change Request State Validation data collector returns the number of change requests in
the specified states. It can check at change requests in one phase or all phases of a release,
based on the input.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
Input: List of states to validate, Validates all phases, Release ID, and Phase ID.
Output: Total number of change requests in the given states.

Code Coverage
The Code Coverage data collector returns the current code coverage calculated based on the
artifact versions.
Input: List of artifacts for a release phase.
Output: % of code coverage.

Commits Without Work Item
The Commits Without Work Item data collector returns the percent of commits that don't have
an associated Work Item. The formula used to calculate the percentage is: Percentage
of commits without work item = (Number of commits without work
item / Total number of commits in artifact) * 100.
Input: List of artifacts for a release phase.
Output: % of commits without Work Item.

Planned Story Completeness
The Planned Story Completeness data collector returns the percent of planned stories that are
marked as complete. Stories from the Epics that are associated with the release are considered.
The data collector also checks if the product version is associated with plan version. If it’s
associated with plan version, it also considers all stories associated with plan version.The
formula used to calculate the percentage is: Percentage of stories completed =
(Number of completed Stories / (Total number of stories - Number
of stories in cancelled state - Number of stories in deleted
state)) * 100;.
Input: List of Epics associated with a release.
Output: % of planned stories that are marked as complete.

Security Vulnerability
The Security Vulnerability data collector returns the number of security vulnerabilities that are
associated with a particular category. Security vulnerabilities are identified based on the artifact
versions and the category of vulnerability as follows:
• Blocker: Returns the sum of blocker issues. Valid only for DevOps data.
• Critical priority issues: For DevOps data, returns the sum of Critical issues. For SecOps data,
returns the sum of Very High Priority issues. For both DevOps and SecOps data, returns the
cumulative of the Critical and Very High Priority issues.
• High priority issues: Returns the sum of High Priority issues from both DevOps and SecOps
data.
• Medium priority issues: Returns the sum of Medium Priority issues from both DevOps and
SecOps data.
• Major issues: Return the sum of Major issues from all artifacts. Valid only for DevOps data.
• Minor issues: Return the sum of Minor issues from all artifacts. Valid only for DevOps data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
Input: List of artifacts for a release phase.
Output: Total number of vulnerabilities.

Test Pass
The Test Pass data collector returns the percent of passed tests based on artifact versions. If the
test type is provided, it returns the test results only for the given test type, otherwise for all test
types for the artifact version. The formula used to calculate the percentage is: Percentage of
tests passed = (Number of tests passed / (Total number of tests Number of skipped tests)) * 100.
Input: List of artifacts for a release phase and Test type (optional).
Output: % of tests passed.

Work Items Have Commits
The Work Items Have Commits data collector returns whether all Work Items have a related
commit. The Work Items are identified based on the Epics related with the release. The data
collector also checks if the product version is associated with plan version. If it’s associated
with plan version, it also considers all stories associated with plan version. The formula used
to calculate the percentage is: Percentage of stories without commits =
(Number of completed stories without commits / Total number of
stories in completed state) * 100.
Input: List of artifacts for a release phase.
Output: % of commits without Work Item.
Related topics
Digital Product Release policies
Passing parameters to PaCE policies

Digital Product Release policies
The Digital Product Release Policy Content Pack contains a set of policies to automate phase
gate verification and continuous evaluation of software artifacts.
You can use or customize these default DPR policies to validate that your configuration data
content is conformable, or administrate the full life cycle of PaCE policies. For more information,
see Policy as Code Engine (PaCE) .

Note: You can’t modify the base system policies. However, you can create a copy of the
policy and customize it.
These policies are for both product and service releases. However, a few don't apply to service
releases. For more information about those policies, see Policies not applicable to service
releases.

All Completed Stories Have Associated Commits
(all_completed_stories_have_associated_commits)
This policy checks whether all the completed stories of a release have associated commits.
The policy results into a non-compliant status when a completed story of a release has no
associated commits.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
All Planned Stories Are Completed (all_planned_stories_are_completed)
This policy checks whether all the planned stories of a release are completed. This policy also
checks if the product version is associated with plan version. If it’s associated with plan version,
it checks all stories associated with plan version in addition to the stories associated with epics
in features or enhancements.
The policy results into a non-compliant status when the completion percentage of stories
planned for a release isn’t 100%. The completion percentage of planned stories is calculated as
(Total completed stories/Total planned stories) * 100.

Code Coverage Exceeds Threshold (code_coverage_threshold)
This policy checks whether the percentage of code coverage exceeds the threshold value.
The policy results into a non-compliant status when the percentage of code coverage is less
than the specified threshold value. The percentage of code coverage for a release is the average
code coverage calculated for all artifact versions included in the release.

Note: The artifact versions with no code coverage data are excluded from the average
code coverage calculation.
Input arguments
minCodeCoverageThreshold
• The minimum accepted value for the code coverage for a release.
• Default value: 100
• Type: Integer
• Usage: Mandatory

Integration Test Pass Exceeds Threshold (integration_test_pass_threshold)
This policy checks whether the percentage of passed integration tests is not less than the
threshold value.
The policy results into a non-compliant status when the percentage of passed integration tests
is less than the specified threshold value. The passed integration tests percentage is calculated
as (Total passed integration tests for all artifact versions/Total
integration tests for all artifact versions) * 100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed integration tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

Load Test Pass Exceeds Threshold (load_test_pass_threshold)
This policy checks whether the percentage of passed load tests is not less than the threshold
value.
The policy results into a non-compliant status when the percentage of passed load tests is less
than the specified threshold value. The passed load tests percentage is calculated as (Total
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
passed load tests for all artifact versions/Total load tests for
all artifact versions) * 100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed load tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

No Critical Vulnerabilities Found (no_critical_vulnerabilities)
This policy checks whether there are no critical vulnerabilities found in a release.
The policy results into a non-compliant status when the total number of vulnerabilities
categorized as blocker, critical, high, or major is greater than zero.

Regression Test Pass Exceeds Threshold (regression_test_pass_threshold)
This policy checks whether the percentage of passed regression tests isn’t less than the
threshold value.
The policy results into a non-compliant status when the percentage of passed regression tests
is less than the specified threshold value. The passed regression tests percentage is calculated
as (Total passed regression tests for all artifact versions/Total
regression tests for all artifact versions) * 100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed regression tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

Smoke Test Pass Exceeds Threshold (smoke_test_pass_threshold)
This policy checks whether the percentage of passed smoke tests is not less than the threshold
value.
The policy results into a non-compliant status when the percentage of passed smoke tests is
less than the specified threshold value. The passed smoke tests percentage is calculated as
(Total passed smoke tests for all artifact versions/Total smoke
tests for all artifact versions) * 100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed smoke tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


<!-- page 1573 -->
System Test Pass Exceeds Threshold (system_test_pass_threshold)
This policy checks whether the percentage of passed system tests is not less than the threshold
value.
The policy results into a non-compliant status when the percentage of passed system tests is
less than the specified threshold value. The passed system tests percentage is calculated as
(Total passed system tests for all artifact versions/Total system
tests for all artifact versions) * 100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed system tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

User Acceptance Test Pass Exceeds Threshold
(user_acceptance_test_pass_threshold)
This policy checks whether the percentage of passed user acceptance tests is not lower than
the threshold value.
The policy results into a non-compliant status when the percentage of passed user acceptance
tests is less than the specified threshold value. The passed user acceptance tests percentage
is calculated as (Total passed user acceptance tests for all artifact
versions/Total user acceptance tests for all artifact versions) *
100.
Input arguments
minTestPassThreshold
• The minimum accepted value for the percentage of passed user acceptance
tests.
• Default value: 100
• Type: Integer
• Usage: Mandatory

Validate change requests (validate_change_requests)
This policy checks whether all change requests are in the given states, across all phases or a
single phase of a release.
The policy results into a non-compliant status when at least one change request is not in any of
the given states.
Input arguments
Validate all phases: Determines whether to check the state of change requests in
all phases or in a single phase of a release.
• Default value: False
• Type: Boolean
• Usage: Mandatory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
States to validate: An array of states of change requests to validate. It accepts
comma-separated numeric values corresponding to the states.
• Default value: Empty
• Type: Data Array
• Usage: Mandatory

Policies not applicable to service releases
The following policies don't apply to service releases.
• all_completed_stories_have_associated_commits
• integration_test_pass_threshold
• regression_test_pass_threshold
• system_test_pass_threshold
• code_coverage_threshold
• no_critical_vulnerabilities
• load_test_pass_threshold
• smoke_test_pass_threshold
• user_acceptance_test_pass_threshold
Related topics
Digital Product Release data collectors

Digital Product Release reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Digital Product Release (DPR).

Components installed with Digital Product Release
Several types of components are installed with activation of the Digital Product Release app,
including tables and user roles.

Roles installed
Role title [name]

Description

Contains roles

Product Enhancement Read

Reads product None
enhancements
[sn_dpr_model.product_enhancement_read] in a product or
service.
Product Feature Create
[sn_dpr_model.product_feature_create]

Creates
product
features in
a product or
service.

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
Role title [name]

Description

Contains roles

Product Feature Delete

Deletes
product
features in
a product or
service.

None

Reads product
features in
a product
or service.
Can’t create
or modify
a product
feature.

None

Updates
product
features in
a product or
service.

None

Manages
digital products
and services.

• asset

[sn_dpr_model.product_feature_delete]

Product Feature Read
[sn_dpr_model.product_feature_read]

Product Feature Write
[sn_dpr_model.product_feature_write]

Digital Product Manager
[sn_dpr_model.product_manager]

• model_manager
• pd_operator
• sn_change_write
• sn_devops.app_owner
• sn_dpr_model.product_feature_create
• sn_dpr_model.product_feature_delete
• sn_dpr_model.product_feature_write
• sn_dpr_model.release_user
• sn_dpr_workspace.workspace_user
• sn_pace.code_reader
• sn_pace.execution_reader
• sn_pace.mapping_admin
• sn_pace.policy_reader
• template_read_global

Digital Product Release Admin
[sn_dpr_model.release_admin]

Defines
the release
process and
monitors the
release.

• pd_operator
• sn_change_write
• sn_devops.tool_owner
• sn_dpr_model.release_template_admin
• sn_dpr_model.release_calendar_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
Role title [name]

Description

Contains roles

• sn_pace.admin
• sn_pace.mapping_admin

Digital Product Release Calendar Admin
[sn_dpr_model.release_calendar_admin]

Manages
release
calendar.

• sn_change_read
• personalize_choices

Note:
This role
doesn't
work by
itself. It
has to be
assigned
to users
along with
another
DPR
role to
function.

Digital Product Release Coordinator
[sn_dpr_model.release_coordinator]

Helps product
teams in their
responsibilities.

• pd_operator
• sn_change_write
• sn_dpr_model.release_user
• sn_pace.code_reader
• sn_pace.execution_reader
• sn_pace.mapping_admin
• sn_pace.policy_reader
• template_read_global

Digital Product Release Template Admin
[sn_dpr_model.release_template_admin]

Manages
release
templates.

• sla_manager
• personalize_choices
• sn_pace.policy_reader
• template_editor_global

Digital Product Release User
[sn_dpr_model.release_user]

Accesses
Digital Product
Release
Workspace to
view release
details and
update and
approve
release tasks.
Can’t create

• app_service_user
• service_viewer
• sn_change_read
• sn_devops.viewer
• sn_dpr_model.product_feature_read
• sn_dpr_workspace.workspace_user
• sn_gf.goal_user_read
• sn_incident_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
Role title [name]

Description

Contains roles

or modify
releases.

• sn_pace.policy_reader
• sn_problem_read
• sn_request_read
• task_editor

Digital Product Release Workspace User
[sn_dpr_workspace.workspace_user]

Accesses
Digital Product
Release
Workspace.

cmdb_read

Scheduled jobs installed
Scheduled job

Description

Clean 6 month
old unused
release target

Deletes release target records older than six months and unused.

DPR Execute
policies for all
active release
phases

Runs policies that are mapped to phases that are currently in progress for all
releases.

Release phase
state transition

Manages the state of phases for ongoing releases.

Runs: Daily

Runs: Daily

This job checks all in-progress releases and their phases. If a phase is
in progress and its planned end date is today, and its policy status is
compliant, it will be marked as completed and the next phase will begin.
Runs: Every hour

Release state
transition

Manages the states of Pending or In progress releases.
• If a release is in the Pending state and its planned start date is today, its
state is updated to In progress.
• If a release is in the In progress state and all its phases are completed, its
state is updated to Review.
Runs: Every hour

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
Tables installed
Table

Description

Approval Definition

Approval definitions that
are used to direct approval
requests for release tasks to a
user or user group.

[sn_dpr_model_approval_definition]

Key Date
[sn_dpr_model_release_key_date]

Policy
[sn_dpr_pace_policy_mapping]

Product Enhancement
[sn_dpr_model_product_enhancement]

Release key dates that define
milestones, key events,
deadlines, and important dates
for single or recurring releases.
Policies mapped to a
release. Extends the
Policy Mapping table
[sn_pace_policy_mapping]
from PaCE.
Product enhancements of a
product feature.
Use these product
enhancements to release a
product feature in phases
across multiple versions.

Product Feature
[sn_dpr_model_product_feature]

A product feature is a function
or capability that adds value
to a product or service for the
customer.
You can break down a
product feature into product
enhancements to release
it in phases across multiple
versions.

Related Tasks
[sn_dpr_model_release_related_task_m2m]

Release
[sn_dpr_model_release]

Mapping between records
from the Task table (task) and
release records in the Release
table (sn_dpr_model_release).
A product or service release is
the process of releasing a new
version of a product or service.
It involves several phases,
tasks, policies, and approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
Table

Description

Release Artifact

Artifacts in a release for a
product.

[sn_dpr_model_release_artifact]
Release Association
[sn_dpr_release_association]
Release Bundle
[sn_dpr_model_release_bundle]

Release Bundle M2M
[sn_dpr_model_release_bundle_m2m]

Release Calendar
[sn_dpr_model.release_calendar]

Release notes
[sn_dpr_model_release_notes]

Release Phase
[sn_dpr_model_release_phase]
Release Phase CI
[sn_dpr_model_release_phase_ci_m2m]
Release Phase CR
[sn_dpr_model_release_phase_cr]
Release Phase M2M
[sn_dpr_release_phase_m2m]

Release Policy Execution

Relationships between a
release and the associated
release template.

Release bundles are groupings
of releases that can be tracked
concurrently.
Relationships of releases
that are grouped into various
release bundles.
Calendars that can contain
related release readiness
targets within them. Release
calendars can have exclusion
schedules attached to them
so that no release targets are
created on dates that fall within
those exclusion schedules.
Release notes generated using
AI or manually added for a
release.
Phases in a release for a
product or service.

Mapping of configuration items
and phases of a release.

Mapping of change requests
and phases of a release.

Mapping of releases and
phases to the policies that are
mapped to each phase.
Results of policies run on a
phase of a release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
Table

Description

[sn_dpr_policy_execution]
Release Readiness Target
[sn_dpr_model_release_target]

Release readiness target that
defines schedules for a single
or recurring releases. Release
targets are added to a release
calendar.

Release Task

Tasks in phases for a release.

[sn_dpr_model_release_task]
Release Template
[sn_dpr_model_release_template]

Release templates containing
predefined phases, tasks,
approvals, and policies. While
creating a release, you can
apply a release template to prepopulate these phases, tasks,
approvals, and policies.

Work Item

Mapping between product
enhancements and work items
[sn_dpr_model_product_enhancement_work_item_mapping] (records in the Work Item table
(sn_devops_work_item)).

Digital Product Release properties
Configure the system properties to customize various features of Digital Product Release
according to your organization's needs.
These properties are available for Digital Product Release.

Note: To open the System Properties [sys_properties] table, enter
sys_properties.list in the navigation filter.
Properties for Digital Product Release
Property

Description

sn_dpr.auto_transition_release_to_completed

Determines whether a release can b
from the Review state to Completed
finished.
• Type: true|false
• Default value: false
• Other possible values: true

sn_dpr.auto_transition_release_to_review

Determines whether a release can b
from the In Progress state to Review
are completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


<!-- page 1581 -->
Properties for Digital Product Release (continued)
Property

Description

• Type: true|false
• Default value: true
• Other possible values: false

sn_dpr.complete_phase_override

Enables users with specific roles to
The default role, sn_dpr_model.rele
Value field. You can append additio
access to the release phase state, s
• Type: string

• Default value: sn_dpr_model.relea

• Other possible values: Roles that
release phase state.

sn_dpr.mandate_release_target

Determines whether selecting a rele
a stage release.
• Type: true|false
• Default value: false
• Other possible values: true

sn_dpr.max_template_duration

Specifies the maximum number of d
release template. It is the total durat
in the template.
• Type: Integer
• Default value: 730 days

• Other possible values: An integer

sn_dpr.multi_product.create_independent_releases

Determines whether to create indivi
managed independently for each p
release creation.

• When set to false, a main release
product or service that includes in
product as dependent releases.

• When set to true, a release bundl
independent releases for each in
For more information, see Create a
• Type: true|false
• Default value: false
• Other possible values: false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1581


<!-- page 1582 -->
Properties for Digital Product Release (continued)
Property

Description

sn_dpr.multi_product.included_products_limit

Specifies the maximum number of p
as Included products when creating
For more information, see Create a

Note: This property is applica

sn_dpr.multi_product.create_in
set to true.
• Type: Integer
• Default value: 10

• Other possible values: An integer

sn_dpr.out_of_band_release_allowed

Determines whether a release can b
date, without a release target.
• Type: true|false
• Default value: true
• Other possible values: false

sn_dpr.out_of_band_release_roles

Specifies the comma-separated list
one-off release.
• Type: string

• Default value: sn_dpr_model.relea

sn_dpr.release_calendar_exclusions

Restricts the schedules shown as p
using the encoded query.

You can use an encoded query on t
filter and show specific schedules in
field on the Release calendar dialog
Maintenance schedules are include
• Type: string

• Default value: sn_dpr_model.relea

sn_dpr.release_kanban_lanes

Shows the lanes on Kanban board i
page.
• Type: string
• Default value: 1,2,3

sn_dpr.sequential_task_execution

Determines whether tasks in a phas
processed one after the other.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1582


<!-- page 1583 -->
Properties for Digital Product Release (continued)
Property

Description

When this property is set to true, tas
sequential order. At the start of a ph
lowest order in it is set to the Open
completed, the next task in the orde
continues for the remaining tasks in
approval task, the state is moved to

When this property is set to false, ta
sequential order. Instead, all its task
at the start of the phase.
• Type: true|false
• Default value: true
• Other possible values: false

sn_dpr.stage_workflow_auto_transition

Determines whether a stage-oriente
can automatically transition betwee
scheduled job.

If this property is set to false, the ph
transition between states, even if th
policies.
• Type: true|false
• Default value: true
• Other possible values: false

sn_dpr.VulnerabilitiesTypeMapping

Customizes the levels mapped to va
vulnerabilities so that they can be re
Vulnerabilities widget in the Release

sn_dpr_model.allow_any_release_dates

Controls whether you can create tim
date configurations, even if the rele

• When set to false (default behavio

◦ Restricts release creation if the
not have sufficient days betwee
release target.

◦ Restricts releases creation and
before today.
• When set to true:

◦ Enables creation of releases ev
before today.

◦ Enables creation of tasks and k
only after the release start date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1583


<!-- page 1584 -->
Properties for Digital Product Release (continued)
Property

Description

◦ Restricts release targets to be s
only.

◦ Enables retargeting releases wi
• Type: true|false
• Default value: false
• Other possible values: true

sn_dpr_model.release_related_task_types

Specifies the comma-separated list
can be associated with a release. Ea
name and the default view type, and
shows up on the Release scope pag
• Type: string
• Default value:

[
{"table":"incident", "
"label": "Incidents"}
{"table":"problem", "v
"label": "Problems"},
{"table":"sc_request",
"default", "label": "
requests"}
]

• Other possible values: Other Task
format as provided in the default

States of primary epics that are con
sn_dpr_workspace.allowed_states_for_create_auto_product_enhancement creation of product enhancements.
• Type: string

• Default value:
created,planned,wip,complete,pro

• Other possible values: You can pr
the list of existing states.

sn_dpr_workspace.auto_create_product_enhancement_for_primary_epic

Determines whether product enhan
automatically created for primary ep
• Type: true|false
• Default value: false
• Other possible values: true

sn_dpr_workspace.cmdb_model_creation.supported_ci_types

Specifies the comma-separated list
types that can be associated with p

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1584


<!-- page 1585 -->
Properties for Digital Product Release (continued)
Property

Description

requesting them. For more informat
product or service.
• Type: string

• Default value: cmdb_ci_service_te
cmdb_ci_service_business, cmdb
cmdb_ci_business_app

• Other possible values: Valid CI ty

Email notifications in Digital Product Release
List of automated email notifications that are installed with Digital Product Release.
The following table lists automated email notifications that trigger at key events throughout the
release lifecycle. These notifications help stakeholders stay informed and take timely action,
improving collaboration and release efficiency.
Email notifications in Digital Product Release
Name

Description

When to send

Who to
send

Failed policies for a
release phase

Notifies if any of the policies
mapped to that phase are noncompliant.

On the phase end
date

Release
owner

Release task 2-days
due reminder

Notifies to complete any pending
release tasks.

2 days before the
release task due
date

Assignee
of the
task

Release readiness
reminder

Notifies to complete any remaining
activities in the release.

1 day before the
release readiness
date

Release
owner

Release phase closed

Notifies completion of a release
phase.

Phase's state
change

Release
owner

Policies are noncompliant for a release
phase

Notifies when policies mapped to a
release phase are non-compliant.

Policy executed with Release
non-compliant status owner

Release task rejected

Notifies when the release task
approval request is rejected.

Task approval
request is rejected

Release
owner

Release task approval
request

Notifies to review and approve or
reject the release task request.

Task approval
request submitted

Approver

Approval definition form
Release admins can create approval definitions to get approvals of phase tasks for a release.
For more information, see Create an approval definition in Digital Product Release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1585


<!-- page 1586 -->
Approval Definition form
Field

Description

Name

Name of the approval definition.
Providing a meaningful name that helps to identify the purpose of the
approval.

Active

Option for marking the approval definition active.
Only active approval definitions are available for selection when
creating a task or task template.

Approver source

Source of the user or group who approves the tasks.
• Approval Definition: Selects a specific user or group.
• Digital Product: Selects the user or group determined dynamically
through a user reference field from the Application Models
[cmdb_application_product_model] table.
• Service: Selects the user or group determined dynamically
through a user reference field from the Service Models
[cmdb_service_product_model] table.

Approval action

Options for directing the approval to:
• An individual user based on the role
• A user group

User field

Fields from the User [sys_user] table.
Select a user field. When an approval is initiated from a task, the
approval request is directed to the person whose name is in that User
field. For example, if you select the Manager user field, the approval
record is assigned to the manager of the individual assigned with the
task.
This field appears only when User is selected from Approval action.

Group field

Fields from the Groups [sys_user_group] table.
Select a group field. When an approval is initiated from a task, the
approval request is directed to members of the group listed in the Group
field.
This field appears only when Group is selected from Approval action.

Wait for

Option to determine when an approval request should be considered
approved.
• All responses: The request is considered approved when all group
members approve it.
• First response: The request is considered approved when any one of
the group members approves it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1586


<!-- page 1587 -->
Approval Definition form (continued)
Field

Description

• Percentage of users: The request is considered approved when the
minimum specified percentage of group members approves it.
When you select this option, enter the percentage in the Percentage
field.
This field appears only when Group is selected from Approval action.

Release readiness target form
Release admins can create release readiness targets on a release calendar to define the dates
by which the releases must be ready for deployment.
For more information, see Create a release readiness target.
Release readiness target form
Field

Description

Name

Name of the release readiness target.
You can create multiple release targets with the same name if they are
scheduled for different days in a release calendar.
The target names are displayed along with the date.

Release admin

Name of the release admin who manages the release process.
Your name is pre-populated by default; however, you can select another user
with appropriate role as the release admin for the readiness target.

Description

Brief description of the release readiness target.

Date

Date by when the product or service must be ready for release.

Note: This field isn’t available for release readiness targets that have a
release associated.
The Date field is replaced by the Start date field when you select the
Recurring option.
Recurring

Option to set the recurring target.
Select an option from Repeat, choose the start date, recurrence options, and
end date to set the recurring targets.

Schedules
excluded from
target

Schedules when the release readiness targets are excluded from creation
that overlaps with blackout, maintenance, or other schedules.
These schedules are auto-populated from the selected calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1587


<!-- page 1588 -->
Request new product or service form
Product managers or release admins can request for a new product or service in Digital Product
Release.
For more information, see Request a new product or service.
Request new product or service form
Field

Description

Name

Unique name of the product or service.

Owner

User who owns the product or service.

Configuration item

Configuration item (CI) to which this product or
service is linked to.
You can associate the product or
service with configuration item of
types as listed in the system property,

sn_dpr_workspace.cmdb_model_creation.support
For example, CI of type Technology
Management Service, Business Service,
Service Instance, or Business Application can
be linked.
Type

Request is for a product or service.

Short description

Short description about the product or service
is being requested.

Release form
Product managers or release admins can create a release for a product or service version in
Digital Product Release.
For more information, see Create a release for a product or service.
Create release form
Field

Description

Release name Unique release name to identify the release.
Release
validates a
new product
version

Option to determine whether the release can validate the version.
• If selected, the version and template selections are impacted as below:
◦ Existing versions that are not validated by other releases are listed in the
Version field for selection.
◦ Only templates with the Validates version set to true are shown in the
Release template list.
• If cleared, the version and template selections are impacted as below:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1588


<!-- page 1589 -->
Create release form (continued)
Field

Description

◦ All existing versions, whether validated or not, are listed in the Version
field for selection. You can also add a new version as needed.
◦ Templates created with the Validates version set to false are shown in the
Release template list.
Product or
service

Product or service for which the release is created.

Version

Version of the product or service that is included in the release.
The list of available versions is filtered based on the Release validates a new
product version field.
• If selected, the list displays only versions that have not been used in a
previous release.
• If clear, the list displays all versions, including those with active releases.
• If you enter a new version, it will be created and associated with the release.

Release
template

Template that defines the release process. The template applies the
predefined phases, tasks, policies, and approvals to this release.
The list of available templates is filtered based on the Release validates a new
product version field.
• If selected, the list displays only templates with the validates version option
set to true.
• If clear, the list displays only templates with the validates version option set
to false.
For more information, see Create a release template.
Based on the template you select, the release follows either a timelineoriented or stage-oriented release process. For more information, see Release
for a product or service.

Release
readiness
target

Readiness target to indicate when the product or service should be ready for
the release.

Note: For stage-oriented releases, whether this
field is required depends on the system property
sn_dpr.mandate_release_target:
• When set to false: This field is optional. You can leave it blank if
needed.
• When set to true: This field is required. You must specify a release
readiness target before you can proceed.
For more information, see Create a release readiness target.
This field appears only when Out of band is clear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1589


<!-- page 1590 -->
Create release form (continued)
Field

Description

Out of band

Option to make this release as an out-of-band release, which means it isn’t
associated with any existing release readiness target. Instead, a new release
readiness target is created for the selected date.
The option to create out-of-band releases depends on the following system
properties configuration:
• out_of_band_release_allowed is set to true.
• You have one of the roles listed in out_of_band_release_roles.
For more information, see Digital Product Release properties.

Release date

Date of release for an out-of-band release.
This field appears only when Out of band is selected.

Release
calendar

Release calendar on which the release is targeted. If a release target exists on
the selected date in the release calendar, the release is added to it. If not, a
release target is created and the release is added to it.
For more information, see Create a release calendar.
This field appears only when Out of band is selected.

Release key date form
Manage your release key dates for a timeline-oriented release.

Release key date
For more information about adding key dates to a release, see Add key dates to a timelineoriented release.
For more information about viewing and managing key dates in a release, see Work on a
timeline-oriented release for a single product or service.
Release key date form
Field

Description

Name

Unique name of the key date.

Type

Type of key date. Select one of the options:
• Milestone: An event used to mark the
progress toward the overall goal. For
example, dev complete.
• Key event: Any release activity that holds
strategic significance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1590


<!-- page 1591 -->
Release key date form (continued)
Field

Description

• Deadline: The latest date by which a task or
activity must be completed. For example,
code freeze date.
• Important date: Any date that holds
significance in the release timeline.
Due date

Date and time of the release key date.
This date must be between the release start
date and end date.

Note: You can only add a future date
and it must not be a holiday according
to the selected holiday schedule in the
release.
Assigned to

The person that is responsible for achieving
the key date event.

Description

Short description of the key date.

Policy status aggregation
In a multi-product release, the policy run status of releases for all primary and included products
are rolled up to the policy status of the main release.

Example of a policy status aggregation
Consider a release with a primary product or service and three related products. Each phase has
policies mapped to it. You can run policies on the current phase from the main release or from an
included product release.
The following table shows how the aggregated status is calculated from the status of each
release.
Policy status in a multi-product release
Status for primary
product or service

Status for
Included product
1

Status for
Included product
2

Status for
Included product
3

Aggregated
status

Not run

Not run

Not run

Not run

Not run

Not run

Non-compliant

Non-compliant

Non-compliant

Not run

Not run

Compliant

Compliant

Compliant

Not run

Non-compliant

Compliant

Compliant

Compliant

Non-compliant

Compliant

Compliant

Compliant

Compliant

Compliant

Compliant

Compliant

Compliant

Compliant with
exception

Compliant with
exception

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1591


