# Zurich IT Service Management — Accelerate your DevOps change process

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1035–1184 of 3857 | Part 1 of 2

Sections: Accelerate your DevOps change process (p1035); Manage (p1109)

---

<!-- page 1035 -->
Object type

Steps

Note: While associating a pipeline with an app, the
pipeline steps are also fetched during import.

Note: When the property Enable automatic

association of repos to apps on
pipeline execution is enabled, if a repository
is already associated to an application, then the corre­
sponding unassigned pipelines are automatically as­
signed to the same app.

Accelerating your DevOps change process
Enable the change acceleration feature of DevOps Change Velocity for automatic change
request creation in your pipeline, and use change approval flows and policies to automate
approval under certain conditions.

Note: ServiceNow Change Management must be installed for change acceleration.
Enable and set up change control when you model your pipeline in DevOps:
• Model an Azure pipeline in DevOps
• Model a GitLab basic CI pipeline in DevOps
• Model a Jenkins pipeline in DevOps
You can view details for active change requests by navigating to DevOps > Orchestrate >
Pipeline Change Requests.

Change control process
When change control is enabled for a job in your DevOps development pipeline, a change
request is automatically created and set to Assess state to request approval for the execution
of the current stage or job if an assignment group is added for the change request. Change
requests can be approved automatically by configuring conditions in a change approval policy.
Pipeline steps can be configured to enable change receipts, which do not pause the pipeline.
Change requests created with change receipts enabled include all pipeline data, but do not
require approval to proceed in the pipeline and the change request will be in post implement
states. For change requests created without enabling change receipt, the pipeline will be paused
until the change request is approved, and upon approval, the pipeline will be resumed.
If you want to stop the automatic transition of the change request states even when change
receipt is turned on, you must disable the sn_devops.enable_change_receipt_state_transition
property. For more information, see DevOps Change Velocity properties.
Once approved, either automatically or manually, change requests move to Implement state
and the job is run. Once the job is run, the change request is moved to the closed state with
Close code as successful on a successful job run or Unsuccessful on error in the job run. For
information on customizing your change request states, see Custom change request process.
If a change request is not approved and moved to the canceled or closed state, the associated
Jenkins, GitHub, or ADO job is marked as failed and a console message is shown:
For Jenkins: [ServiceNow DevOps] Job was not approved for execution

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
For GitHub: Error: **** Change has been created but the change is
either rejected or cancelled
For ADO: "changeState":"Closed"

Automatic approval of change requests using flows and policies
You can automate the change approval process for all your DevOps change requests. DevOps
Change Velocity uses flows and DevOps data (such as work items, commits, code coverage,
code security, risk, and test results) to update the state of a change request and automatically
approve it based on change approval policies. Three flows are available in the base system
that you can clone, customize, and activate (in Flow Designer). By default, the DevOps Change
Request Manual Approval Flow is activated. DevOps flows are applicable to only automatically
created change requests or change requests that have change receipt turned off.

Flows
A flow is an automated process consisting of a trigger (which specifies when to run the flow) and
a sequence of reusable actions (where the actions perform a sequence of operations on your
data). Flows are built in Flow Designer, a ServiceNow AI Platform feature that enables process
automation. For more information, see Flow Designer .
You can use one of the DevOps flows available in the base system as a template; clone the
flow and customize it to your business requirements. Ensure that only one DevOps flow is in
the active state at any time to avoid conflicts and errors. A DevOps flow is applicable to change
requests that have the DevOps category or if the devops_change property is set to true. (An
automatically created DevOps change request sets the category to DevOps by default).
By default, the flows are configured to update the state of the step execution based on the
change request state, and any additional default behavior. Based on the step execution state, a
callback is made to the pipeline:
• If the DevOps change request is approved, the flow will update the step execution state to
approved, and the change request state is updated to implement. After that the pipeline will be
resumed.
• If the DevOps change request is rejected, the flow will update the step execution state to
rejected, and the change request state is updated to new. After that the pipeline will be
terminated.
• If the DevOps change request is canceled, the flow will update the step execution state to
canceled by user, and the change request is updated to canceled. After that the pipeline will
be canceled.
If a business rule or data policy causes an error while updating a change in the DevOps Change
Request Manual Approval Flow, DevOps Change Request Minimal Automation Approval Flow, or
DevOps Change Request Advanced Automation Approval Flow, the corresponding error will be
displayed in the worknotes of the change request and logged in the console logs of the pipeline
tool.

DevOps flow

DevOps Change Request Manual Approval
Flow

Default behavior

This flow is activated by default. With this flow,
DevOps change requests must go through a
manual approval process, where the flow waits
for the change request to reach an eligible
state (rejected, implemented, or specific
implementation state). When reached, this

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
DevOps flow

Default behavior

flow will update the state of the step execution
based on the state of the change request.
If the change request is type-based, the
flow will wait for the change to get rejected,
implemented, or canceled. If the change
request is model-based, the flow will wait for
the change to get rejected, get canceled,
or reach one of the implementation states
defined in the model or the implement
state specified in the DevOps property.
This flow won’t trigger for DevOps change
requests whose model is a base system
DevOps change model (DevOps or DevOps
simplified) to avoid conflicts and errors.

You can clone this flow and customize it to
make changes. Ensure that the other DevOps
flows are deactivated.
DevOps Change Request Minimal Automation
Approval Flow

This flow gathers DevOps data and runs the
DevOps Change Request Minimal Automation
Policy, which determines if the change should
be auto-rejected, auto-approved, or sent
for manual approval. This flow is triggered
for DevOps change requests whose type or
model is set to normal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
DevOps flow

Default behavior

Activate this flow if you want to automate
change request approvals, but start minimally.

You can clone this flow and customize it to
make changes. Ensure that the other DevOps
flows are deactivated.
You can also add the DevOps - Update
Minimal Automation Policy Decision Reason
action to this flow to update the policy
decisions to the step execution change
comment and the change request worknotes
to know the reasons for the decision. You
can add this action inside every decision
block and specify the required input.

DevOps Change Request Advanced
Automation Approval Flow

This flow gathers DevOps data and runs
the DevOps Change Request Advanced
Automation Policy, which determines if
the change should be auto-rejected, autoapproved, or sent for manual approval. This
flow is triggered for DevOps change requests
whose type or model is set to normal.
If the DevOps change request is approved,
the flow will update the change request
to the scheduled state, and the planned
start date will be used to set the change
request start date. On the change request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
DevOps flow

Default behavior

start date, the flow will update the change
request state to implement. After that the
pipeline will be resumed. Activate this flow
if you want to automate change request
approvals with a robust change policy.

You can clone this flow and customize it to
make changes. Ensure that the other DevOps
flows are deactivated.
DevOps Demo Change Automation flow

When demo data is installed, the DevOps
Demo Change Automation flow is available
where normal type of change request or
normal model change request can be autoapproved based on the decision policies.
As a part of demo data, the decision policies
available are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
DevOps flow

Default behavior

• DevOps Low Risk Auto Approval policy,
where the failed test count is zero .
• DevOps High risk manual approval policy,
where the failed test count is greater than
zero .

You can clone this flow and customize it to
make changes. Ensure that the other DevOps
flows are deactivated.
To read guidelines on how to use flows, subflows, and actions more effectively, see General
guidelines for Workflow Studio flows, subflows, and actions .

Change approval policies
A change approval policy is a course of action that can be applied to a change request. It
consists of the following:
• Policy input: Variable sources evaluated within a condition.
• Decisions: Determines whether the change approval definition must be applied based on
conditions.
• Approval definitions: Defines the type of approval that can be applied.
The DevOps Change Request Minimal Automation Policy and DevOps Change Request
Advanced Automation Policy are available by default. The three normal change policies available
are:
• DevOps Model Change Policy
• DevOps Change Request Minimal Automation Policy
• DevOps Change Request Advanced Automation Policy
For more information on change approval policies, see Change approval policies.
The DevOps automated approval flows use change approval policies and DevOps data (such as
work items, commits, pull requests, test summaries, security summaries, and quality summaries)
to automatically update the change record state and step execution state to approved, rejected,
or canceled. You can view and edit these policies based on your business requirements, or
create your own in the decision table. See the following decision tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
The DevOps Change Request Minimal Automation Policy has the following conditions and
criteria by default:

The DevOps Change Request Advanced Automation Policy has the following conditions and
criteria by

default:
The three outcomes for the DevOps Change Request Minimal Automation and DevOps Change
Request Advanced Automation policies (depending on the conditions that you specify) are:
• Auto approval: If the conditions specified in the policy are met, the change request is
automatically approved.
• Auto reject: If one or more of the conditions specified in the policy are not met, the change
request is automatically rejected.
• Manual approval: If one or more conditions need manual approval by a user or group, that is
specified in the policy. Notifications are sent by the policy to the relevant users or groups to
expedite the manual approval and progress the change request.
You can apply your change approval policy in the Change Management Workflow Studio action
to control the approval process for a change request. For more information, Use the Apply
Change Approval Policy flow action.

Change approval work notes
When a change request is updated based on a flow and change approval policy, the work notes
associated with the change request are updated to one of the following hard-coded messages:
• Change Approval Policy not found. Change Request has been rejected (%s).
• %s is inactive. Change Request has been rejected (%s).
• No Decisions matched. %s has been skipped (%s).
• No approvals were generated from matched Decisions. %s has been skipped (%s).
• Change Request has been rejected by %s (%s).
• Change Request has been approved by %s (%s).
The work notes are updated based on a logic which uses the combination of one of the hardcoded messages + the policy name + action label used in the flow associated with the change
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
request. In this combination, you can change only the value of policy name and the action label
but not the hard-coded message. For example,
if (APPROVED.equals(state))
38 message = String.format(APPROVED_MSG, policyName,
actionLabel);

Default Change Handler subflow
Use the Default Change Handler subflow to populate these change request fields with default
values.
• Requested by
• Justification
• Implementation Plan
• Backout plan
• Test Plan
• Short Description
• Description
• Start Date
• End Date
• Risk Impact Analysis
The Default Change Handler subflow overrides the field values that were populated using a
template while creating the change request record.
If desired, you can write a custom subflow in place of this flow by modifying the
[sn_devops.change_request_handler_subflow] DevOps property.

Custom change request templates
When you enable change control in the ServiceNow DevOps step , you can select a custom
template to populate fields automatically while creating the change request. The change request
Category field is automatically set to DevOps.

Note: Do not configure the Category and changeType fields from the custom template.
The type of change request corresponds to the change request table in global scope.

Automatic change request related lists
For a change request automatically created by DevOps, the Category field is automatically set to
DevOps, and these related lists are added:
Commits
Commits associated with the change request.
Work Items
Work items associated with the change request.
Artifact Versions
List of artifact versions associated to the package linked to pipeline execution for
packages created before the change request is approved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
If no package is linked to the pipeline execution, then the list is empty.
Test Summaries (replaces Test Results related list)
List of test summaries for a pipeline execution associated with an artifact, package,
or task execution before the change request.
See Test Results for more details.
Software Quality Summary
List of software quality summaries for a pipeline execution associated with an
artifact, package, or task execution before the change request.
Security Summaries
List of security summaries for a pipeline execution associated with an artifact,
package, or task execution before the change request.

Note: Security scan results on the change record associated to a pipeline
execution with a linked package are also displayed in the Security Summaries
tab.

Note: Implementation details from the orchestration tool are automatically added to the

Work notes field on the change request form. Detail added to the work notes is limited to 5
KB of the task execution log for the step.

Custom change request process
These DevOps change properties are available to customize your change request flow.
• DevOps change request implement state
• DevOps change request post implement state
• DevOps change request cancel state
• DevOps change request approval text
To customize your change request flow, you must first create a System Definition > Choice List.
For example, DevOps_Implement (value - 10).
Then, add the choice list to System Definition > Script Include >
ChangeRequestStateHandlerSNC.
Once you have created the choice list and added it to the script include, you can update DevOps
change properties with the new choice list values. For example, DevOps change request
implement state -10.

DevOps Risk Condition
You can use the DevOps risk and impact calculation based on committer risk score.
This condition is inactive by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
Test Results related list
Lists the tests that were run in a pipeline after a package was created. If no package was created,
then the list includes the tests that were run after an artifact version was created.
Scenarios:
A package is created in the pipeline, but no artifact versions are registered.
• If the change request is created in the package creation stage:
No test results are displayed because a package is not yet linked to the pipeline
execution.
• If the change request is created in a stage after the package creation stage:
Build test summaries include those associated with stages after the package
creation stage, up to the change-controlled stage.
Artifact versions are registered, but no package is created.
• If the change request is created in the artifact version stage:
No test results will be displayed, because no tests are associated until the task
execution is completed.
• If the change request is created in a stage after the artifact version stage:
Build test summaries include those in the artifact version stage, as well as the
stages afterward, up to the change-controlled stage.
Both artifact versions and package are created in the pipeline.
• If the change request is part of the stage after artifact version and package
creation stages:
Build test summaries include those associated with the package creation stage,
as well as the stages afterward, up to the change-controlled stage.
• If the change request is part of the package creation stage, and artifact versions
are created as part of an earlier stage;
◦ or the change request is created in a stage (not package creation) after the
artifact version stage, but before package creation stage;
◦ or the change request is part of the package creation stage and artifact
versions are created as part of an earlier stage:
Build test summaries include those associated with the artifact version stage, as
well as stages afterward, up to the change-controlled stage.

Pipeline executions view
You can view pipeline activity by navigating to DevOps > Orchestrate > Pipeline Executions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
Customizing DevOps flows
Customize or recreate the DevOps Change Request Manual Approval, DevOps Change Request
Minimal Automation Approval, and DevOps Change Request Advanced Automation Approval
flows based on your requirements using a flow or a script.
You can clone the DevOps flows and then customize them according to your requirements. To
clone a flow, navigate to the flow you want to clone from the Base system DevOps flows sections
or from the Flow Designer landing page (All > Process Automation > Flow Designer). On the topright corner of the Flow page, select More Actions > Copy flow. In the Create a copy of this flow
dialog box, enter the new name for the flow, and select DevOps Data Model as the application.
Select the Copy button to create the new flow. The new flow will open in Flow Designer. Make any
changes to customize it to your business requirements. You can run the flow to make sure it has
no errors by selecting the Test button on the top-right corner of the screen before activating the
flow. Activate the flow when it's ready by selecting the Activate button.

Customize the DevOps Change Request Manual Approval flow
In the DevOps Change Request Manual Approval flow, the state of step execution is changed
based on the change approval. However, you can customize or recreate this flow based on your
requirements.
After the change request state is moved to approved, canceled, or rejected (either manually or
by using a change policy), call the Update state of step execution based on change approval
Workflow Studio action to update the State field of the step execution record.
You can use either a flow or a script to call the action.
Calling the Workflow Studio action using a flow
Calling the Update state of step execution based on change approval Workflow
Studio action is required to update the state of the step execution record according
to the approval field in the change request record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
This action serves as a trigger for the Change Control Callback flow, which is used
to notify the change decision to the orchestration tool.

Calling the Workflow Studio action using a script
Method to call the Workflow Studio action from a script:
sn_fd.FlowAPI.executeAction('sn_devops.update_state_of_
step_execution_based_on_change_approval’, inputs);

Customize the DevOps Change Request Minimal Automation Approval flow
In the DevOps Change Request Minimal Automation Approval flow, the change is approved
and the state of the change moves from the new to the implementation state. After the change
request state is moved to approved, call the DevOps - Update Step Execution and Change
Request States Flow Designer action to update the State field of the step execution record.
You can use either a flow or a script to call the action.
Calling the Workflow Studio action using a flow
Calling the DevOps - Update Step Execution and Change Request States Workflow
Studio action is required to update the state of the step execution record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
This action serves as a trigger for the Change Control Callback flow, which is used
to notify the change decision to the orchestration tool.

Calling the Workflow Studio action using a script
Method to call the Workflow Studio action from a script:
sn_fd.FlowAPI.executeAction('sn_devops.devOps-_update_s
tep_execution_and_change_request’, inputs);

Customize the DevOps Change Request Advanced Automation Approval flow
In the DevOps Change Request Advanced Automation Approval flow, the change is approved
and the state of the change moves from the new to the implementation state. After the change
request state is moved to approved, call the Update step execution record action to update the
State field of the step execution record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
You can use either a flow or a script to call the action.
Calling the Workflow Studio action using a flow
Calling the Update step execution record Workflow Studio action is required to
update the state of the step execution record according to the approval field in the
change request record.
This action serves as a trigger for the Change Control Callback flow, which is used
to notify the change decision to the orchestration tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
Calling the Workflow Studio action using a script
Method to call the Workflow Studio action from a script:
sn_fd.FlowAPI.executeAction('sn_devops.update_step_exec
ution_record’, inputs);
Related topics
Accelerating your DevOps change process

Automate DevOps change request creation
Modify your pipeline to automatically create a DevOps change request.

About this task

The step 5 in this topic requires you to specify the attributes for the change request. Change
attributes can be specified in multiple areas. They can be specified in the pipeline step of
DevOps Change Velocity, in the Default Change Handler subflow, in an approval flow, in a
template, or passed in the pipeline. If a change model is used, they can also be specified in
model presets. For more information, see DevOps change request attributes.
If you have used business rules, then you must set the

sn_devops.change_request.apply_attributes_on_creation property to true,
so that the change attributes passed in the pipeline are set when the change request is created
instead of the attributes being passed after the change request is created. For more information,
see DevOps Change Velocity properties.

Before you begin

Role required: sn_devops.admin, sn_devops.tool_owner, or sn_devops.app_owner

Procedure
1. From the DevOps Change Workspace, select Automate change creation.
2. In the Application field, select the application that you want to associate with the pipeline for
which you want to automate change request creation, and select Next.

3. Select the pipeline that has the step (stage) from where you want to trigger the automated
creation of change requests.

Note: If you don’t see the pipeline, make sure that it’s associated to the application
selected in the previous step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
You can see the connection state of the tool associated with the pipeline in the Overall status
column. An alert will also be displayed based on the connection state of the tool before
proceeding to the next step.
4. Select the step in the pipeline from where you want to trigger the automated creation of a
change request.

Note: You can skip this activity if you want to manage and specify change attributes in
the pipeline instead as specified in the Enable change step.

5. Specify the change attributes in the change fields and enable change receipt by selecting the
Change receipt option.

Note: You can skip the activity of specifying change attributes if you want to manage
and specify these attributes in the pipeline instead. However, change receipt can be
enabled only from ServiceNow DevOps Change Velocity.
For more information on configuring change settings, see Create a Change.
You must enable change receipt if you don’t want the pipeline to pause when the change
request is created. You can disable the sn_devops.enable_change_receipt_state_transition
property if you don’t want the state to transition automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
6. Modify your pipeline and use the corresponding code snippet to enable change control and
specify change attributes.
Depending on your orchestration tool, the steps to enable change control are displayed.
Follow the instructions given on the page and modify your pipeline accordingly.
The following image displays the steps for Azure DevOps.

7. Select Done.

Create a DevOps Change request and associate existing DevOps data —
Workspace
Create a DevOps change request and associate existing DevOps data through the Workspace
UI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
Before you begin

Role required: sn_devops.admin

About this task

For more information on using Change features, see Create a Change.

Important: You can update the associated data after you create a request, but you
cannot edit a change request if it is in one of the following states:
• Implement
• Post-Implement
• Cancelled

Procedure
1. Navigate to Workspaces > DevOps Change > Applications (

).

2. Select an application from Applications list.
3. In the Recommended actions panel, select Create manual change.
4. In the Category list, select DevOps and then select Save.
5. Select Add DevOps data to add supporting data to the change request.
6. Complete the Add DevOps data pages.
a. Specify the following values on the Select data type and associations page:
Select data type and associations
Field

Data type

Description

The type of data to associate with the
change request.
▪ Artifact version
▪ Release version
▪ Build number

Data associations

The specific data to associate with the
change request. You can select multiple
artifact versions and build numbers.
If you select Build number as the Data type,
then you must also specify the application
name and corresponding pipelines and
build numbers.

b. Select Next to open the Verify data associations page.
c. Navigate the tabs to verify that the associated data is mapped accurately.
Update settings as needed.
▪ Work Items
▪ Commits
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
▪ Pull Requests
▪ Test Summaries
▪ Artifact Versions
▪ Software Quality Summaries
▪ Security Scan Summaries
d. Select Submit.
The Change request form is updated.
7. Configure other settings as needed.
For example, specify the schedule.

Note: For more information on configuring settings, see Create a Change.
8. Select Save.

What to do next

To modify the data that is associated to the change request, select Edit DevOps data. Verify the
associated data that you added or removed in the Additions/Removal tabs in the Add DevOps
Data modal.

Create a DevOps change request and associate existing DevOps data —
Classic
Create a DevOps change request and associate existing DevOps data through the Classic UI.

Before you begin

Role required: sn_devops.admin or sn_devops.app_owner

About this task

Create a DevOps change request and associate existing DevOps data. You can modify the
associated details after you have created a DevOps change and associated data with it.

Important: If the Change request is in one of the following states, the Edit DevOps Data
button is inactive:
• Implement
• Post-Implement
• Cancelled

Procedure
1. Navigate to All > Change > Create New > Create Normal Change.

Note: For more information on using the Change module, see Create a Change.
2. From the Category list, select DevOps or Other.
3. Optional: Select the DevOps Change option, if you have selected Other in the Category field.
4. Click the Add DevOps Data button on the form header.

Note: The Add DevOps Data button appears only if you have selected DevOps as the
category, or Other as the category and selected the DevOps Change option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
The Add DevOps Data modal displays.
5. In the Select data type and associations section, select the data type and the related data
associations.
a. Select any of the following options from the Data Type list.
▪ Artifact Version
▪ Release Version
▪ Build Number

Note: You can select multiple Artifact versions and Build Numbers.
b. Select the data you want to associate with the change from the Artifact Version, Release
Version or Build Number field.

Important: If you select Build Number as the Data Type, you must also specify the
application name, and corresponding pipelines and build numbers. You can search for
build numbers by the branch name as well.
6. Click Next.
7. Verify that the associated data for the following fields is mapped accurately.
◦ Work Items
◦ Commits
◦ Pull Requests
◦ Test Summaries
◦ Artifact Versions
◦ Software Quality Summaries
◦ Security Scan Summaries
8. Click Submit.
The Change Request form displays.
9. Select the Assignment group to which this change request is assigned.
10. Configure the change window for the change request from the Schedule tab.

Note: For more information on configuring the schedule, see Create a Change.
11. Click Submit.

What to do next

To modify the associated DevOps data to the change request, click the Edit DevOps Data button.
Verify the associated data that you added or removed in the Additions/Removal tabs in the Add
DevOps Data modal.

DevOps change request without mandating category as DevOps
Enable categorizing DevOps change request from DevOps properties. Change requests that are
created as part of pipeline execution steps can be created with a category other than DevOps.

Before you begin

Role required: sn_devops.admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
About this task

Change requests created in the DevOps application aren’t created with Category as DevOps.
Use related templates for specific categories, such as Hardware, Software, Database
and so on, to create DevOps change requests. You can categorize DevOps change requests
from the DevOps properties.
New change requests that are created in the DevOps application after you enable the property
can continue to use custom change policies and approval workflows, in addition to the base
system's DevOps Demo Change Automation flow, and the DevOps Model Change Request flow.
If you don’t enable this property, change requests continue to be created and processed with the
category attribute set to DevOps.

Procedure
1. From the DevOps Change Workspace, navigate to Administration > System configuration >
Properties.
You can also navigate from All > DevOps > Administration > Properties.
2. Enable the Categorize DevOps changes requests on "DevOps change" field property.
Select the check box to enable categorizing any change request created from the DevOps
application, as a DevOps change request.
By default, the property check box is cleared. To make changes, set the application scope to
DevOps Data Model.

Important: DevOps Insights capabilities are disabled when this property is selected.
Result

Any new change request that is created from the DevOps application is considered as a DevOps
change irrespective of the category attribute and processed accordingly. DevOps change
request creation and processing no longer depend only on the category attribute being set to
DevOps.

Change request creation with DevOps data retrieval errors
Create change requests even with errors in DevOps data retrieval.

Change request creation overview

Note: Change request creation with DevOps data retrieval errors is supported only for
Azure DevOps, GitHub Actions, GitLab, Jenkins, and Harness pipelines.
You can create a change request with or without errors in DevOps data retrieval. This
functionality can be controlled by the Enable change request creation even with errors in
DevOps data retrieval property. When the Enable change request creation even with errors in
DevOps data retrieval property is enabled, and an error occurs in retrieving DevOps data like
work items, commits, test summaries, or security summaries, the corresponding change request
is still created. The data that can be retrieved will still be associated with the change request. For
the data that can’t be retrieved, the reason for the error will be notified to the user in the thirdparty console, and the same information will also be added in the Change Comments field in the
Step Execution record and the change Worknotes.
If the Enable change request creation even with errors in DevOps data retrieval property
isn’t enabled, a change request is created only when there’s no error in any step of a pipeline
run. When an error occurs, the pipeline is aborted and the reason for the error is added in the
inbound event's Processing details field, and the same is notified to the user in the third-party
console.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
For more information, see DevOps Change Velocity properties.

Approval for change requests with DevOps data retrieval errors
For change requests created with DevOps data retrieval errors, the
is_change_with_partial_data policy input is set to True for all the change approval
policies. Only a manual change approval decision is applied to such changes so that you can
approve or reject the change after manually verifying the DevOps data in it. In the DevOps
Gather Change Policy Data subflow, the Is change with partial data action
determines whether a change is created with DevOps data retrieval errors or not.

Pipeline UI for change requests with DevOps data retrieval errors
When a change request gets created with DevOps data retrieval errors, the card
specifying the stage where the error occurred will be displayed in the Yellow color.

Note: If your build pipeline (CI) is set up to trigger a release (CD) pipeline and a change is
created in the release pipeline, the data is collected from the build pipeline and associated
with the change request. There may be a situation where ServiceNow DevOps Change
Velocity will receive and process the release pipeline events before build pipeline events.
In this case, the change will be created with DevOps data from the build pipeline even
though there’s an error in retrieving some of the data. You can observe this behavior even
though the Enable change request creation even with errors in the DevOps data retrieval
property is enabled. Also, the is_change_with_partial_data policy input will be
false in this case, and the approval process will be applied in the way it’s defined in the
approval flows unlike always manual in case of change requests with DevOps data retrieval
errors.

Callback timeout
If an inbound event goes into the waiting state during a pipeline run, the system
tries to process the change until the timeout value in the sn_devops.change
_request_callback_timeout property is exceeded, after that the pipeline is aborted.
The reason for the error is displayed in your third-party tool's console logs. When a pipeline is
canceled because of callback timeout, the same information is added in the callback record of
the corresponding step execution. You can contact your DevOps admin to increase the timeout
value in the sn_devops.change_request_callback_timeout property. The default
value of this property is 120 minutes, and the minimum value is 60 minutes. For more information,
see DevOps Change Velocity properties.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
Note: If you are using GitHub change automation custom action, GitLab Docker change
automation custom action, or Harness Docker change automation custom action in your
corresponding pipeline to create change requests, you need to provide the interval in
the custom action, which enables GitHub, GitLab, or Harness to poll ServiceNow DevOps
for the change status. When the change reaches an appropriate state in ServiceNow
within the specified interval, the appropriate status depending on the outcome of the
change will be sent to GitHub, GitLab, or Harness pipeline, which will resume or abort
the pipeline. See ServiceNow DevOps custom actions from GitHub marketplace and
Implement custom actions for pipelines using a generic Docker container image for more
details. So, when your pipeline with the change custom action is run, and if any of the
step notification from GitHub, GitLab, or Harness did not reach ServiceNow DevOps,
then the association of callback, step execution, and task execution will not happen in
ServiceNow DevOps. As the association is not available, the change will not be created
and ServiceNow DevOps will wait until the association is in place. At the same time, GitHub,
GitLab, or Harness will poll ServiceNow for the change status until the time specified
in the interval is reached. If the interval is passed and also the timeout specified in
the sn_devops.change_request_callback_timeout property is reached,
ServiceNow DevOps will not terminate your pipeline as it should but will leave it for the
default timeout set in the GitHub, GitLab, or Harness step that will eventually terminate the
pipeline. The important information in this scenario is that ServiceNow DevOps will not be
able to notify the user that the step events did not reach ServiceNow DevOps in the GitHub,
GitLab, or Harness console logs.

Upgrade
After you upgrade, the property will be set to false by default. Your current change process will
function as is, but the only difference you’ll see is that, when an error occurs in retrieving DevOps
data the pipeline is aborted (instead of waiting indefinitely) and the reason for the error is added
in the inbound event Processing details field, and the same is notified to the user in the thirdparty console. If you want to create change requests with errors in retrieving DevOps data and
also not fail your pipeline, you can enable the Enable change request creation even with errors
in DevOps data retrieval property. This provides value to your change approvers and AppDev
teams by getting the changes created automatically with DevOps evidence that is gathered and
appropriately notified in the change request work notes and third-party console logs with errors
or data that may be missing.

Limitation
If the Enable change request creation even with errors in DevOps data retrieval property is
enabled, and the ADO artifact package step in your pipeline results in error, the change will be
created without ADO artifacts associated with it, but the corresponding error will not be notified
in Worknotes, or Step Execution change comments, or in the ADO console log.

Artifacts and packages
Artifacts and packages enable DevOps Change Velocity to track development and testing
activities across a wide range of deployment and release models. This feature ensures that
pipeline activity stored in the DevOps data model can be retrieved and applied when artifacts
are created and released at different times or in different pipelines.
Artifacts
When an artifact version is registered, related activities like commits, tests, and code scans
are tracked so that regardless of when the artifact version is deployed, those details can
be retrieved. It can be in the current pipeline execution, a later execution of the same
pipeline, a pipeline that is triggered by the current one, or a separate pipeline that is triggered
independently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
When you associate commits with an artifact version (CI pipeline), and define an artifact package
(CD pipeline), all artifact versions generated since the last time the app was deployed to
production are included in the list of commits for the change. Consolidation of these items is
helpful, especially when there are multiple CI builds before the deployment.
DevOps change request attributes:
• Category DevOps or the Categorize DevOps change requests on "DevOps Change" field
check box is selected in DevOps properties. For more information, see DevOps change
request without mandating category as DevOps.
• Commits and Work Items related lists
Packages
A package tracks when one or more artifact versions are being used in a deployment pipeline.
This provides two important benefits:
1. Retrieval of activities for all artifact versions declared in the package. For example, for use in an
automated change approval policy.
2. Recording when a specified artifact version was successfully released, ensuring that
information tied to them is no longer considered. For example, for later change requests.

Artifact setup
1. Create an artifact tool record in DevOps.

Note: An artifact tool isn’t necessary unless a webhook or user-created integration
subflow configuration is required to look up artifact versions.
2. Register artifacts in the CI pipeline.
3. Create a package in the CD pipeline.

Note: The package creation step must be before the Prod Deploy step.
Artifact registration
Configure artifact registration in a scripted pipeline or freestyle job using the DevOps API
artifact/registration endpoint. Multiple artifact versions are supported.

/

For Jenkins pipeline:
• Scripted and declarative pipeline (snDevOpsArtifact Jenkinsfile command)
For example:
snDevOpsArtifact(artifactsPayload: """{"artifacts":
[{"name": "sa-web.jar", "version": "1.9","semanticVersion":
"1.9.0","repositoryName": "services-1031"}], "branchName":
"master"}""")
• Freestyle job (Register Artifact build step)
For example:
{"artifacts":[{"name":"sentiment-analysis-web2","version":"1.9"
,"semanticVersion":"1.9.0","repositoryName":"maven-releases"}]}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
Artifact package creation

Important: You must add the package creation step before the change step in your
pipeline, and package creation must be added in a stage which is previous to the change
step, so that packages are linked to the pipeline execution for a change request.
Configure artifact package creation in a scripted pipeline or freestyle job using the DevOps API
/package/registration endpoint.

Note: Package name must be specified.
For Jenkins pipeline:
• Freestyle job (Create Package build step)
For example:
{"artifacts":[{"name":"sentiment-analysis-web2","version":"1.9"
,"repositoryName":"maven-releases"}]}
• Declarative and scripted pipeline (snDevOpsPackage Jenkinsfile command)
Package with more than one artifact (from different repos) in the payload, for example:
snDevOpsPackage(name: "sentimentpackage", artifactsPayload:
"""{"artifacts":[{"name": "sa-web.jar", "version": "1.9",
"repositoryName": "services-1031"}, "{"name": "sa-db.jar",

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
"version": "1.3.2", "repositoryName": "services-1032"}],
"branchName": "master"}""")

Note: When an artifact version isn’t available during the build, build details (pipelineName
or projectName, taskExecutionNumber, stageName, branchName) are used to look up the
artifact version in the task execution.
Jenkins plugin step includeBuildInfo can be used to include build details in the API call.

Artifact workflow and objects
The orchestration tool job publishes the new artifact (consisting of versions) to the artifact
repository. Each artifact version is associated with a task execution (consisting of the related
code commits). A package is created for the release (consisting of specific artifact versions
flagged for deployment) and, after the deployment stage completes, the package is marked as
deployed to production.
These objects are part of the artifact structure.

• Artifact tool
Used to support artifact repository managers such as JFrog Artifactory.

Note: An artifact tool isn’t necessary unless a webhook or user-created integration
subflow configuration is required to look up artifact versions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
• Artifact repository
Target for artifacts generated in a build, and also a source of artifacts required by a build. Can
be created manually, or through the RegisterArtifact API as new artifacts are published under
new repositories in a tool.
• Artifact
Artifact name for which different builds (artifact versions) are generated. Can be created
manually, or through the RegisterArtifact API. Artifacts (versions) are associated with a task
execution and published to an artifact repository.
• Artifact version
Specific version of the artifact. Deployable component of an application generated by a CI
build. When provided, semantic version is used.
Can be created through discovery, or through the RegisterArtifact API. Artifacts (versions) are
associated with a task execution and published to a tracked artifact repository.
• Semantic version
Optional attribute of an artifact version that, when provided, is used to determine commits for a
change. Semantic version format is (MAJOR.MINOR.PATCH).
• Package
Collection of artifact versions used as input to a CD pipeline, or for associating test results.
Package creation is triggered by the CreatePackage API call from the orchestration tool and
contains the name, version, and repository name of all the artifact versions included in the
package. A check box indicates whether the package has been deployed to production.
DevOps change acceleration for releases:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
DevOps change request – category DevOps

DevOps change request – commits and work items

DevOps artifact version list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
DevOps artifact version – commits

DevOps artifact version – packages

DevOps package

You can also see all existing pipeline change requests directly from the Changes module in the
application navigator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
Changes module
You can see all existing change control and pipeline change requests directly using
the Changes module in the application navigator.
Navigate to DevOps Change Workspace > Changes > Pipeline change requests >
All for all change-related information.
Pipeline change requests

List module
You can see all the existing artifacts and packages directly using the List module in
the application navigator.
Navigate to DevOps Change Workspace > Lists > Artifact for all artifact-related
information.

Artifacts and packages monitoring
When artifacts and packages are registered from a source tool into ServiceNow, they are often
staged in the sn_devops_artifact_staging table, while the remaining necessary data
for creation and linkage of these objects is either received from inbound events, or fetched by
DevOps flows.
Most of the times, these staging records are processed within a few seconds. But there may
be cases where the necessary data is never received, so these records may be left idle. The
Description field on the table below contains a summary of the details missing in such cases to
help in easier monitoring.

Note: It is recommended to have unique artifact names for release builds, that is, different
artifact names for builds running on different branch builds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
Staging
type

Staging
code

When can this occur

Final
state?

create_package_association
WAITING_FOR_OTHER_STAGED_REQUESTS
During a package registration No
call, when the task execution
where the call originated
from is found in the system
and post processed, but not
all artifact versions passed
in the artifacts payload have
been found in the system.

Description

Your package registration
request is pending for the
following reason:
Task execution found for
association (TE00012345)
and post processing flag is
set to true, but not all artifact
versions were found.
Total artifact count: 2

create_package_association
TASK_EXEC_POST_PROCESSING_PENDING
During a package registration No
call, when the task execution
where the call originated
from is found in the system
but hasn’t yet been post
processed. That is, the
Completed webhook event
for this task execution hasn’t
yet been processed.

Your package registration
request is pending for the
following reason:
Task execution found for
association (TE00012345),
but post processing
complete flag is not set to
true.
Total artifact count: 2

create_package_association
NO_TASK_EXECUTION_FOUND
During a package registration No
call, when the task execution
where the call originated
from isn’t yet found in the
system.

Your package registration
request is pending for the
following reason:
Task execution not
found for association
(pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).
Total artifact count: 2

create_package
VERSION_NOT_FOUND
During a package registration No
call, when the artifact version
passed in the artifacts
payload hasn’t yet been
found in the system.

Your package registration
request is pending for the
following reason:
Artifact version not found
(name=TestArtifact,
version=2.5,
repositoryName=TestRepo,
pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).
Artifact count: 1 out of 2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
Staging
type

Staging
code

When can this occur

Final
state?

create_package
VERSION_NOT_FOUND
During a package registration No
call, when the artifact
version isn’t passed in
the artifacts payload,
but it contains either a
taskExecutionSysId or
(pipelineName, stageName,
taskExecutionNumber) that
can be used to lookup the
task execution record, which
in this case is found and post
processed, but doesn’t have
any artifact version record
associated.

Description

Your package registration
request is pending for the
following reason:
Artifact version not available
in payload and not found
using task execution
details (name=TestArtifact,
version=2.5,
repositoryName=TestRepo,
pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18)
(TE00012345).
Artifact count: 1 out of 2

create_package
TASK_EXEC_POST_PROCESSING_PENDING
During a package registration No
call, when the artifact
version isn’t passed in
the artifacts payload,
but it contains either a
taskExecutionSysId or
(pipelineName, stageName,
taskExecutionNumber) that
can be used to lookup the
task execution record, which
in this case is found but not
yet post processed.

Your package registration
request is pending for the
following reason:
Artifact version not
available in payload, and
task execution found
for association but post
processing complete
flag is not set to true
(name=TestArtifact,
version=2.5,
repositoryName=TestRepo,
pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18)
(TE00012345).
Artifact count: 1 out of 2

create_package
NO_TASK_EXECUTION_FOUND
During a package registration No
call, when the artifact
version isn’t passed in
the artifacts payload,
but it contains either a
taskExecutionSysId or
(pipelineName, stageName,
taskExecutionNumber) that
can be used to lookup the
task execution record, which
in this case isn’t found.

Your package registration
request is pending for the
following reason:
Artifact version not
available in payload, and
task execution also not
found for association
(name=TestArtifact,
version=2.5,
repositoryName=TestRepo,
pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


<!-- page 1068 -->
Staging
type

Staging
code

When can this occur

Final
state?

Description

Artifact count: 1 out of 2
create_package
WAITING_FOR_OTHER_STAGED_REQUESTS
During a package registration No
call, when the artifact
version passed in the
artifacts payload has been
found in the system, but
must wait for the other
related staging records to
be processed (including
both create_package or
create_package_association
records).
register_artifact
TASK_EXEC_POST_PROCESSING_PENDING
During an artifact registration No
call, when the task execution
where the call originated
from is found in the system
but hasn’t been post
processed yet. That is the
'Completed' webhook event
for this task execution hasn’t
yet been processed.

register_artifact
NO_TASK_EXECUTION_FOUND
During an artifact registration No
call, when the task execution
where the call originated
from isn’t yet found in the
system.

Your package registration
request is pending for the
following reason:
Artifact version found,
but need to wait for
the remaining package
registration staging records.
Artifact count: 1 out of 2

Your artifact registration
request is pending for the
following reason:
Artifact version created and
task execution found for
association for association
(TE00012345), but post
processing complete flag is
not set to true.
Your artifact registration
request is pending for the
following reason:
Artifact version created,
but task execution not
found for association
(pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).

register_artifact
VERSION_ALREADY_REGISTERED
During an artifact registration Yes
call, when the artifact version (Ignored) Your artifact registration
request was ignored for the
provided in the artifacts
following reason:
payload for a given artifact
and repository, already exists
Artifact version has already
in the system.
been registered.
register_artifact
NO_SUBFLOW_CONFIGURED
During an artifact registration Yes
call, when the artifact version (Ignored) Your artifact registration
request was ignored for the
isn’t provided in the artifacts
following reason:
payload, and both webhook
and look-up subflow aren't
Artifact version not available
to find the artifact version
in payload. Webhook and
record.
look-up subflow are not
available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
Staging
type

Staging
code

When can this occur

Final
state?

register_artifact
NO_TASK_EXECUTION_FOUND
During an artifact registration No
call, when the artifact version
isn’t provided in the artifacts
payload, but webhook is
supported and the artifact
version record can be found,
but the task execution where
the call originated from isn’t
yet found in the system.

register_artifact
TASK_EXEC_POST_PROCESSING_PENDING
During an artifact registration No
call, when the artifact version
isn’t provided in the artifacts
payload, but webhook is
supported and the artifact
version record can be found,
and the task execution where
the call originated from is
found in the system but
hasn’t been post processed
yet. That is, the Completed
webhook event for this task
execution hasn’t yet been
processed.
register_artifact
NO_TASK_EXECUTION_FOUND
During an artifact registration No
call, when the artifact version
isn’t provided in the artifacts
payload, but look-up subflow
is supported and the artifact
version record can be found,
but the task execution where
the call originated from isn’t
yet found in the system.

register_artifact
TASK_EXEC_POST_PROCESSING_PENDING
During an artifact registration No
call, when the artifact version
isn’t provided in the artifacts
payload, but look-up subflow
is supported and the artifact
version record can be found,
and the task execution where
the call originated from is
found in the system but
hasn’t been post processed
yet. That is, the Completed
webhook event for this task
execution hasn’t yet been
processed.

Description

Your artifact registration
request is pending for the
following reason:
Artifact version found via
webhook, but task execution
not found for association
(pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).
Your artifact registration
request is pending for the
following reason:
Artifact version found via
webhook and task execution
found for association
(TE00012345), but post
processing complete flag is
not set to true.

Your artifact registration
request is pending for the
following reason:
Artifact version found via
lookup, but task execution
not found for association
(pipelineName=TestPipeline,
stageName=Package,
taskExecutionNumber=18).
Your artifact registration
request is pending for the
following reason:
Artifact version found via
lookup and task execution
found for association
(TE00012345), but post
processing complete flag is
not set to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
Staging
type

Staging
code

When can this occur

Final
state?

Description

register_artifact
ERROR_CALLING_SUBFLOW
During an artifact registration Yes
call, when the artifact version (Ignored) Your artifact registration
request was ignored for the
isn’t provided in the artifacts
following reason:
payload, and look-up subflow
is supported but the artifact
Artifact version not found by
version couldn't be found.
the look-up subflow.
register_artifact
ERROR_CALLING_SUBFLOW
During an artifact registration Yes
call, when the artifact version (Ignored) Your artifact registration
request was ignored for the
isn’t provided in the artifacts
following reason:
payload, and look-up subflow
is supported but could not
Artifact version not found
find the artifact version due
by the look-up subflow due
to an error in the subflow.
to an error (refer to DevOps
logs for additional details).
register_artifact
ERROR_CALLING_SUBFLOW
During an artifact registration Yes
call, when the artifact version (Ignored) Your artifact registration
request was ignored for the
isn’t provided in the artifacts
following reason:
payload, and look-up subflow
is supported but wasn’t
Artifact not found.
executed because the parent
artifact record could not be
found in the system.
Commits included in DevOps change request
The DevOps artifact package and its associated artifact versions are used to determine which
commits are included in a DevOps change.
Commits are included in a change based on the change type.

Change type

Commits included

Manual

Commits from the artifact versions of the package in the change.
In addition, the commits from task executions of all the pipeline
executions in the change reference record when the data_type
column is plan or pipeline execution are included.

Automated

• Without package: All commits from the artifact versions are
included. The artifact versions are the ones that are linked to
the pipeline execution and the task executions for that pipeline
execution.
• With package: If any of the upstream task executions of the change
has the prod deploy step, then commits from the last successful
prod deploy pipeline execution are included. Commits that appear
in multiple pipeline executions will be listed only once. If the prod
deploy step is not present in the upstream task executions, the
commits from all the artifact versions of the package are included.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
Change type

Commits included

• Run commits: If there are no commits from either of the with or
without package flow as specified previously, then the run commits
from the upstream task executions of the change request are
associated.

All commits for artifact versions in the package that were generated after the last deployment
date (up to the version currently being deployed) are included in the change request. Previous
major versions are not included.

Note: Patch and hot fix versions are excluded.
When provided, semantic version is used to determine commits for a change. Format is
(MAJOR.MINOR.PATCH). For example, semantic version 2.0.1 is read as follows:
• Major version 2
• Minor version 0
• Patch/hotfix version 1
Failed task executions between the previous and current artifact versions that did not build an
artifact but have associated commits are also associated to the created artifact version.

Types of commits
• Normal commits: Commits on the tracked repository are associated to the change request.
• Revert commits: Commits that have the revert field value as true. A revert commit results in a
reverted commit and revert commit in the source tree. Both the commits are not associated to
the change request.
• Merge commits: Commits that have the merge field value as true.
◦ Merge commit: The source tree tracks the commit to a branch over time and allows for a
special merge commit to be made. This merge commit combines the parent commits located
directly after the most recent common commit on both the current branch and the branch to
be merged. Merge commit adds a new commit on the main branch.
◦ Squash and merge: Squashing during a merge generates the working tree and index state to
match a merge without creating a merge commit. Squash and merge keeps the changes but
removes the individual commits from history. It has a single commit with the merge value as
true.

Example: Commits and packages
This example consists of:
• Three build pipelines (A, B, and C)
• A release pipeline (ABC) under change control, with four packages:
1. Build pipeline A (major version 1)
2. Build pipelines A and B (major version 1)
3. Build pipelines B and C (major version 1)
4. Build pipelines A, B, and C (major version 1)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Package 1 (A 1.1.0)
Commit

Build pipeline

Semantic version

Included in package

1

A

1.0.0

X

2

A

1.0.1

--

3

A

1.1.0

X

Note: Commit 2 (build A, semantic version 1.0.1) is not included in the package because
the semantic version syntax indicates a patch or hot fix.

Package 2 (A 1.2.0, B 1.1.0)
Commit

Build pipeline

Semantic version

Included in package

4

A

1.1.1

--

5

A

1.2.0

X

6

A

1.2.0

X

7

B

1.0.0

X

8

B

1.0.0

X

9

B

1.1.0

X

10

B

1.1.0

X

Note: Commit 4 (build A, semantic version 1.1.1) is not included because the semantic
version syntax indicates a patch or hot fix.

Package 3 (B 1.2.0, C 1.0.0)
Commit

Build pipeline

Semantic version

Included in package

11

A

1.3.0

--

12

B

1.2.0

X

13

B

1.2.0

X

14

C

1.0.0

X

15

C

1.0.0

X

16

C

1.0.0

X

Note: Commit 11 (build A, semantic version 1.3.0) is not included because the package
does not specify build A.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
Package 4 (A 1.4.0, B 1.3.0, C 1.2.0)
Commit

Build pipeline

Semantic version

Included in package

17

A

1.4.0

X

18

A

1.4.0

X

19

B

1.3.0

X

20

B

1.3.0

X

21

C

1.1.0

X

22

C

1.1.0

X

23

C

1.2.0

X

24

C

1.2.0

X

Note: Commit 11 is also included in this package because it is part of the changes in
major version 1 of build A since the last package (including major version 1 of build A),
package 2, was deployed to production.

Example: Commit calculation logic
Use case with the logic for calculating commits that get associated to artifact versions. The
branch information is included whenever the commits are defined.
For example, consider two pipelines, one on the main branch, one on the test branch. Run
scenario:
• Create a commit C0 on main, run CI build, but don’t create Artifact Version.
• Create a commit C1 on test, run CI build, but don’t create Artifact Version.
• Create a commit C2 on main, run CI build and the build fails.
• Create 2 commits C3,C4 on main, run a CI build and create an Artifact Version (v1.0).
Expected result: Artifact Version (v1.0) is associated to C0, C2, C3, C4. Commit C1 is excluded as
it's on a different branch.
Continuing with the use case:
• Create 1 commit C5 on main, run CI build, but don’t create Artifact Version.
• Create 1 commit C6 on main, run CI build and create an Artifact Version (v2.0).
Expected result: The new artifact version (v2.0) created is associated to C5, C6.
Summary:
• All commits from pipeline executions (success & failed) in the same branch, between last
Artifact Version for a given Artifact and current Artifact Version, are associated.
• If no previous Artifact Version for the given Artifact is found, then all commits from pipeline
executions in the same branch are associated.
Continuing with the use case:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Create a release with Artifact Version from the previous step, have a CD pipeline with Step type =
Prod Deploy.
Expected result:
• Release is associated with the same Artifact Version (v2.0).
• Change Request created shows Artifact Version (v2.0) and Commits C0, C2, C3, C4, C5, C6.
Summary:
• Commits from both Artifact Versions (v1.0, v2.0) built on main branch (no previous package was
deployed to Prod) are shown in the change request, but not the commit from execution on test
branch.
• The number of commits shown in the change request will be the same as the number in the
tool.
Continuing with the use case:
• Create 2 commits C7, C8 on test branch, run CI build and create an Artifact Version.
Expected result: Artifact Version (v3.0) is associated to C1, C7, C8.
• Create 2 commits C9, C10 on main branch, run CI build and create an Artifact Version.
Expected result: Artifact Version (v4.0) is associated to C9, C10.
• Create a release with Artifact Version from previous step (v4.0), have a CD pipeline with Step
type = Prod Deploy.
Expected result:
◦ Release is associated with Artifact Version (v4.0).
◦ Change Request created shows Artifact Version (v4.0) and commits C9, C10.
Summary:
• The change request shows commits just from the latest Artifact Version built on main branch,
as commits from previous Artifact Versions built on main had been deployed to Prod on the
previous package.
• The number of commits shown in the change request will be the same as the number in the
tool.
• To have other step types, like Test or Deploy, use the same commit logic as Prod Deploy,
update the Controls whether other Step types should follow the same logic as Prod Deploy
to determine commits for a Change [sn_devops.commit_rel_change_step_type]
property. Specify which step types (such as Deploy and Test) should use the same commit
logic as Prod Deploy as the property value. If these are set up, the Prod Deploy commit process
will also apply to their relationship scripts.

DevOps Pipeline UI
Use the Pipeline UI to visualize interactions and results across a pipeline execution. This
graphical view shows pipeline step progression and other details for each pipeline.
From DevOps, get a quick view of how everything is connected to see exactly what is happening
with the pipeline and when. From the ServiceNow Change Management application, you can
access the Pipeline UI and quickly see the commits, the committers, and other details for the
change request in one place.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
The Pipeline UI displays parallel stages as modeled in Azure DevOps release pipelines. The
pipeline UI displays the real-time state of the pipeline as it appears in Azure DevOps. The
associated artifact details sourced from the build pipeline, Test Results, Software Quality
Summary Results also display on the pipeline UI. For more information, see Parallel stages in
Azure DevOps release pipelines.
The Pipeline UI shows all attempts of any stage or job that has been rerun or restarted. For more
information, see Restarting failed build or release pipeline jobs and stages.
The Pipeline UI shows the pipeline steps that ran instead of the steps configured in DevOps.
You can access the Pipeline UI using the related link from within certain DevOps forms, and also
from a DevOps change request form:
• DevOps Pipeline form
• DevOps Pipeline Execution form
• Change Request form created by DevOps

Note: You must reload the view to update the status buttons in the pipeline execution
History.
Step run states (task execution status)
Green

Successful.
All step executions associated to the pipeline
execution passed.

Grey
Yellow

Not yet run.
Waiting (pending, building, validating).
At least one step execution is waiting.

Red

Failed.
At least one step execution failed.
Task execution end date is populated even
when the change is rejected.

Note: To enable the canceling of the
change request associated with the step
when the step fails, you must set the

sn_devops.cancel_change_on_pipeline_cance
property to Yes. For more information,
see Properties installed with DevOps.

Note: The order the cards appear in the Pipeline UI is determined by the Order field in
each pipeline step when you modeled your pipeline in DevOps. Skipped stages are not
shown.
The order the cards appear in the Pipeline UI by task execution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
UI feature

Pipeline steps

Description

Timing.
• Start
• Last run
• Duration for each step
When the downstream task execution
starts immediately after the upstream task
execution, the duration is 0 seconds.
• Wait times in between task executions.
Wait time is calculated as:
Start time of the task execution minus the
end time of the upstream task execution.

View change request

Change request record.
Click directly into the change request of the
step that was created by DevOps to view
details of the change and take action.

Note:
• The change request record for
the associated with the latest task
execution displays.
• Commits reverted in the same pipeline
execution are not shown in the commit
list.
Pipeline history

Pipeline Execution.
Click a history tile to view the previous step
details for a pipeline execution.

Note: Pipeline history is displayed
for only the most recent 20 pipeline
executions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
UI feature

Description

View all attempts

All attempts that the job has run in a step.
Click the link in the relevant step to view all
attempt details.

Artifacts
• Artifact versions
◦ Work items
◦ Commits
◦ Packages
• Commits
• Work items

Note: Commits reverted in the same
pipeline execution are not shown in the
commit list.
Test Results

View the build test results to see what tests
passed or failed.
The quality card contains test summaries:
• Test type and test category in the format:
test type/test category
• Native ID of the step
• Test pass percentage (unit and functional
tests only)
• Throughput (performance tests only)
• Step name

Software Quality Results

View all the software quality (SonarQube scan)
results grouped by project name that were
fetched as part of the selected pipeline. You
can view the scan results for all categories in a
pipeline execution step.
You can customize the results that are
displayed in the Pipeline UI by configuring the
columns in the Software quality categories
shown by default in the Pipeline UI view
(DevOps > Administration > Properties >
DevOps Properties Category > ) property in a
comma separated format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
UI feature

Description

• Click the gear icon to modify the column
view in the pipeline UI.
• Click the step execution record to view
the corresponding Software Quality Scan
Summary record.
• Click the Vulnerabilities count record to view
the Software Quality Scan Detail record and
the corresponding sub category details.
Security Results

View all the security results that were retrieved
as part of the selected pipeline. You can view
the scan results for all categories in a pipeline
execution step.
You can customize the results that are
displayed in the Pipeline UI.
• Click the gear icon to modify the view in the
pipeline UI.
• Click the step execution record to view the
corresponding Security scan summary
record.
• Click the Detected flaws count record to
view the Security scan details.

Note: When you reattempt running a stage or a pipeline job in Azure DevOps, which
contains a test or a software quality scan, the results get appended with the attempt
number.
Click directly into DevOps change requests, step executions, artifacts, artifact versions, work
items, test summaries, and reattempts in flyout windows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
Pipeline UI — Artifact version flyout

Pipeline UI - Reuse change request - Step execution flyout

Azure DevOps - Pipeline UI with parallel stages

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
Configuring DevOps change request details within the pipeline
Configure how the closure information, change state, and change request fields are updated
from within a pipeline in the change step of the pipeline.

Note: Configuring change request details from within a GitLab pipeline isn’t supported.
The system variable, by default, points to the Default subflow to auto close a change
in the base system. The DevOps auto close change on pipeline completion subflow
(sn_devops.auto_close_change) determines how the closure information, change state,
and change request fields are updated when a pipeline is completed. If you want to specify a
custom subflow that must be activated when a pipeline is completed, you can clone this subflow
and customize it according to your requirements.
Closure information and change request attributes are contained with the
changeRequestDetails object.

Auto close change
Set the autoCloseChange parameter to true/false in the changeRequestDetails object
when creating a change from a pipeline to update the Close code and Close notes fields and
close the change request when a pipeline is completed. The Actual start date and Actual end
date field values are also updated when the pipeline is completed. The date values are based on
the pipeline's start time or the pipeline's first stage's start time, and the pipeline's end time or the
pipeline's last stage's end time.

Note: If you want the change request start and end time
to be considered instead of the pipeline’s, you can set the

sn_devops.change_request.auto_close_allow_override_start_time
and sn_devops.change_request.auto_close_allow_override_end_time
property to false by navigating to All > System Properties > All Properties.
The close notes will be suffixed with text specifying that the closure information has been
updated based on the Auto close change feature.
If set to true, the Close code and Close notes fields will be updated and the system will try to
close the change request when the pipeline is completed.
If set to false, the Close code and Close notes fields will be updated when a pipeline is
completed but the change request won’t be closed.
You can also set the Auto close change field value for a pipeline in the ServiceNow application. If
you select Update Change Only, the Close code and Close notes fields will be updated when a
pipeline is completed, and if you select Update and Close Change, the change request will also
be closed along with updating the closure information.
Based on whether the auto close change is specified in the pipeline or column, the final state
considered will be as follows:

autoCloseChange flag in change
request attributes

Auto Close Change column value
Final state
(sn_devops_pipeline)

True

Update Change Only

Updates change and moves
state to close

False

Update and Close Change

Only updates the change

-

Update Change Only

Only updates the change

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
autoCloseChange flag in change
request attributes

Auto Close Change column value
Final state
(sn_devops_pipeline)

-

Update and Close Change

Updates change and moves
state to close

Note: The value specified for the autoCloseChange attribute in the pipeline takes
precedence over the value specified in the Auto Close Change column in ServiceNow.

Note:
• The auto close change feature is only applicable for basic pipelines with a single change
created on it. If there are multiple changes, the latest change will be considered for auto
close.
• The auto close change feature isn’t supported for Jenkins freestyle pipelines and change
requests where the change receipt feature is enabled.
• For an Azure release pipeline, the pipeline completion state is derived by consolidating
the state of each stage in the pipeline. If even one stage fails, the pipeline will be
considered unsuccessful. If even one stage is partially successful, the pipeline will be
considered successful with issues.

Upgrade information
If you’re upgrading, you must re-configure your orchestration tool before setting the
autoCloseChange parameter for GitHub and Azure build pipelines.

Set Close Code
Set the setCloseCode: parameter to true/false based on the desired behavior. Default is
true.
If set to true, the Close code and Close notes fields are updated as specified in the change
step attributes and the change request is moved to post-implement when a stage is completed.
You can override this behavior by enabling the Auto close code feature. The setCloseCode
feature will get disabled when autoCloseChange is enabled and set to true or false. For more
information, see Auto Close Change. Use the autoCloseChange feature for more accurate
change request details.
If set to false, when the job or pipeline has completed, the change request isn’t updated and
remains in the Implement state.
• Closure Information in the change request isn’t set (Close code and Close notes fields are left
empty).
• A link to the step execution is added to the Work notes.

Change request fields
Set change request field values within the pipeline for the change request template specified.
• Use the attributes: parameter to set field values.
• Use the DevOps - POST /devops/orchestration/changeControl

endpoint of the DevOps API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
Note:
• If a specified field has a dependent field that is required, you must set that attribute as
well.
• If the attribute for the dependent required field isn’t set, change request and related step
execution are canceled, and work notes are updated.
Field values within the attributes: parameter are key-value pairs. Meaning, the key is the
field name within the template and the value is the information to populate in the field.
You can use the changeControl API to specify fields such as type, cmdb_ci, template,
assignment_group business_service, standard_change_template,
chg_model and create a change request.
When attributes are passed for change, the order of priority is as follows:
1. Change request fields or changeControl API.
2. Values in the Step record.
3. Values provided in the Change Request template.

Note: When configuring change requests from within the pipeline, change type and
template fields are always taken from one source. You can’t use a combination of attributes
from the API request and the change request form.
All fields in the Change Request [change_request] table are supported except where specified.
Change request fields supported
Unsupported fields

• risk
• impact
• number
• sys_id
• risk_impact_analysis

Supported fields

All remaining fields in the Change Request
[change_request] table.

Note: The attribute name must match the change request field name, and the value
specified must be valid.

Sample JSON payload
{
"callbackURL":"http://192.168.0.4:3000/jenkins/sndevops/pipeline_839b7605-b98d-4831-bc87-96829de7da37",
"orchestrationTaskURL":"http://192.168.0.4:3000/jenkins/job/jav
a_sample_tests✅deploy/",
"isMultiBranch":"false",
"orchestrationTaskName":"java_sample_tests✅deploy",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
"orchestrationTaskDetails":{
"triggerType":"upstream",
"upstreamTaskExecutionURL":"http://192.168.0.4:3000/jenkins/j
ob/java_sample_tests/129/execution/node/35/wfapi/describe",
"taskExecutionURL":"http://192.168.0.4:3000/jenkins/job/java_sa
mple_tests/129/execution/node/50/wfapi/describe"
},
"changeRequestDetails":{
"setCloseCode":false,
"attributes":{
"sys_created_by":"1832fbe1d701120035ae23c7ce610369",
"sys_updated_by":"56826bf03710200044e0bfc8bcbe5dca",
"requested_by":{
"name":"Abel Tuter"
},
"watch_list":[
{
"name":"Abel Tuter"
},
{
"name":"Aileen Mottern"
},
{
"name":"Alejandra Prenatt"
},
"56826bf03710200044e0bfc8bcbe5dca"
],
"work_notes_list":[
"56826bf03710200044e0bfc8bcbe5dca",
"46c6f9efa9fe198101ddf5eed9adf6e7",
"d8f57f140b20220050192f15d6673a98"
],
"assigned_to":"1832fbe1d701120035ae23c7ce610369",
"category":"Service",
"sys_created_on":"2021-02-09 18:58:41",
"priority":"2",
}
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
Pipeline examples
Change request details - Azure pipeline

Job-level settings — Jenkins

Change request details - Jenkins

Change request details - GitHub

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
DevOps change models
DevOps Change Velocity enables you to use fit-for-purpose change models that allow better
flexibility in defining change models or processes to reflect modern development practices.

DevOps Change model overview

Important: For DevOps change requests, use the Change Management - Change
Models feature, which provides greater flexibility to enable the change process flow in a
way that is optimized for specific use cases. For more information, see Change models. The
legacy Change Management - State Model is also supported. For more information, see
State model and transitions.

Important: The DevOps and DevOps Simplified change models are not supported for
Argo CD and Split tool change requests.
Use fit-for-purpose change models with a suite of succinct flows and flow actions built in Flow
Designer for specific use cases. Instead of using the legacy ITIL-based change processes that
are predefined in change workflows (Normal, Standard, and Emergency), you can selectively
transition to a wide range of models that are optimized for specific use cases. Change models
can be created with states and rules that determine the transitions between the states. For
information on change models, see Change models.

You can use any of the base system change models including the DevOps or DevOps Simplified
change models. To create a change request based on models, you can either configure the
Model field in the Step form in ServiceNow, or pass the model sys_id or name in the change step
from your orchestration pipeline.

Base system DevOps change models
Two change models, called DevOps and DevOps Simplified are included in the base system and
are active by default for you to create a model based change request.
Type compatibility flag
The type compatibility

com.snc.change_management.change_model.type_compatibility
property is used to determine what kind of change requests (type- or model-based)
will be created. Navigate to System Properties > All Properties to set the value
for this property. The default value of this property is False. This property enables
change type compatibility for change models. When set to true, the change request
can be created either as a type-based workflow or change models. When set to
false, change request will be created only using change model.
The change request will be created based on the configuration combination as
defined in the following tables when the property is set to true or false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
When the type compatibility property is set to True
Change attribute configured
Change attribute passed in
in the pipeline step in
the pipeline
ServiceNow

Change attribute considered
in change request creation

Change model: <any
selected change model>

Neither model nor change Model-based change
type is passed.
request will be created

Change model: <any
selected change model>

Type is passed. For
example, Normal

Type-based change
request will be created

{
"attributes": {
"type":
"normal"
}
}
Change model: <any
selected change model>
for example, Model 1.

Change will be created
Different model is passed. based on Model 2
For example, Model 2.
{
"attributes": {
"chg_model": {
"name":
"Model 2"
}
}
}

Change model: Not
specified

Neither model nor change Type-based change
type is passed
request will be created

Change type: <any
selected change type>
Change type: <any
selected change type>

Model is passed.
{

Model-based change
request will be created

"attributes": {
"chg_model": {
"name":
"DevOps"
}
}
}
Change type: <any
selected change type>.
For example, Normal

Different type is passed.
For example, Emergency.

Change request will
be created based on
Emergency type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
When the type compatibility property is set to True (continued)
Change attribute configured
Change attribute passed in
in the pipeline step in
the pipeline
ServiceNow

Change attribute considered
in change request creation

{
"attributes": {
"type":
"emergency"
}
}

When the type compatibility property is set to False
Change attribute configured
Change attribute passed in
in the pipeline step in
the pipeline
ServiceNow

Change attribute considered
in change request creation

Change model: <any
selected change model>

Neither model nor change Model-based change
type is passed
request will be created

Change model: <any
selected change model>

Type is passed. For
example, Normal
{
"attributes": {
"type":
"normal"
}
}

Error
Change request can’t
be created because the
type compatibility flag
is disabled. Enable the
type compatibility flag
in system properties or
configure the change
model in the step record
in ServiceNow or enter
the appropriate change
model sys id or name in
the pipeline.
For information on
resolving this error,
see Common errors in
DevOps Change Velocity.

Change model: <any
selected change model>
for example, Model 1.

Change will be created
Different model is passed. based on Model 2
For example, Model 2.
{
"attributes": {
"chg_model": {
"name":
"Model 2"
}
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


<!-- page 1088 -->
When the type compatibility property is set to False (continued)
Change attribute configured
Change attribute passed in
in the pipeline step in
the pipeline
ServiceNow

Change model: Not
specified
Change type: <any
selected change type>

Change attribute considered
in change request creation

Neither model nor change Error
type is passed.
Change request can’t
be created because
either the change type
or change model isn’t
configured for the
pipeline.
For information on
resolving this error,
see Common errors in
DevOps Change Velocity.

Change type: <any
selected change type>

Model is passed.
{

Model-based change
request will be created

"attributes": {
"chg_model": {
"name":
"DevOps"
}
}
}
Change type: <any
selected change type>.
For example, Normal

Different type is passed.
For example, Emergency.
{
"attributes": {
"type":
"emergency"
}
}

Error
Change request cannot
be created because the
type compatibility flag
is disabled. Enable the
type compatibility flag
in system properties or
configure the change
model in the step record
in ServiceNow or enter
the appropriate change
model sys id or name in
the pipeline.
For information on
resolving this error,
see Common errors in
DevOps Change Velocity.

Configuration of DevOps models
The base system change models have the Implementation states field value as
Implement, and the Record preset field is selected as Type=Normal by default. The
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
model states available for the DevOps change model are New, Assess, Authorize,
Scheduled, Implement, Review, Closed, and Canceled. And the model states
available for the DevOps Simplified change model are New, Authorize, Scheduled,
Implement, Review, Closed, and Canceled. Depending on your requirements, you
can modify the change models and configure the states and transitions for your
specific use case.
DevOps Change Model

DevOps Simplified Change Model

If you want to create your own model instead of using the base system DevOps
models, see the instructions in the Create a Change model section.
You can use record presets to configure change details for your change model.
Whenever a change is created, these values will be automatically set on the
change. You can set a record preset for any change field that exists in the change
request.
The following logic is considered for pre-filing the change details when creating a
change request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
• If you have configured change details in the record preset, then you can’t override
this value by passing change details from the pipeline.
• If change details aren’t configured in the record preset, then the values passed
from the pipeline is considered for pre-filing the details in the change request.
• If change details are neither configured in the record preset nor passed from
the pipeline, then the values configured in the Step form in ServiceNow are
considered.

Change details
configured in
record preset in
ServiceNow

Change details
configured in Step
form in ServiceNow

Change details
passed in the
pipeline

Change details prefilled when change is
created

Assignment group: Assignment group: Assignment group: Assignment group
DevOps Report
Not specified
Not specified
will be pre-filled
from the record
preset in the
change request
Assignment group: Assignment group: Assignment group: Assignment group
Not configured
Not specified
DevOps Report
will be pre-filled
from the pipeline
in the change
request
Assignment group: Assignment group: Assignment group: Assignment group
Not configured
DevOps Report
Not specified
will be pre-filled
from the Step form
in the change
request

DevOps Change model
The DevOps change model contains flows in the base system for state transition and change
approvals. Each state in the DevOps model has its own flows and each flow will get triggered
when the required conditions are met. Change approval (auto or manual) is based on the
DevOps Model Change Policy. By default, the base system DevOps Model Change Policy only
has the manual approval decision activated. When you are ready for more approval automation,
you can modify the policy. The following flows explain the state transition and change approval
behavior.
• Change - DevOps - New: When the change request is created in the New state, this flow gets
triggered. If it has an Assignment Group, then this flow updates the change state to Assess.
• Change - DevOps - Assess: When the change request is in the Assess state, this flow
gets triggered. There are two key actions in this flow - DevOps Gather Change Policy
Data and Apply Change Approval Policy, which are used to retrieve the DevOps data
associated with the change request and check whether the change request must be
auto approved, auto rejected, or sent for manual approval. The change approval (auto
or manual) happens as part of this flow in the Apply Change Approval Policy action
based on the DevOps Model Change Policy. If the change is approved (auto or manual),
it moves to the Authorize state. If the change is rejected, an email notification is sent to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
the user who requested the change and the change is moved back to the New state.

• Change - DevOps - Authorize: When the change request is in the Authorize state, this flow
gets triggered. In the base system, you will notice that there are two key actions - DevOps
Gather Change Policy Data and Apply Change Approval Policy, which are used to retrieve the
DevOps data associated with the change request and check whether the change request must
be auto approved, auto rejected, or sent for manual approval. The conditions in the DevOps
Model Change Policy in the Apply Change Approval Policy action won't be met. So the change
approval (auto or manual) in this flow will be skipped. This flow will only move the change
request state to Scheduled that triggers the Change - DevOps - Schedule flow.

Note: If your change process requires another approval, you can refer to this flow and
customize the DevOps Model Change Policy according to your requirements.
• Change - DevOps - Schedule: When the change request is in the Scheduled state, this flow
gets triggered. When the planned start date is reached, the change is moved to the Implement
state.
• Change - DevOps - Implement: When the change request is in the Implement state, this flow
gets triggered.
The DevOps Model Change Policy contains the following policy inputs:
• is_change_with_partial_data
• regression_tests_failed
• code_security
• code_coverage
• total_num_of_commits
• tests_passing_percent
• load_tests_failed
• num_of_open_incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
• num_of_outages_in_last_7_days
• num_of_current_outages
• integration_tests_failed
• commits_without_work_item
• change_request
• risk
The three outcomes for the DevOps Model Change Policy (depending on the conditions that you
specify) are:
• Auto approval: If the conditions specified in the policy are met, the change request is
automatically approved.
• Auto reject: If one or more of the conditions specified in the policy are not met, the change
request is automatically rejected.
• Manual approval: If one or more conditions need manual approval by a user or group, that is
specified in the policy. Notifications are sent by the policy to the relevant users or groups to
expedite the manual approval and progress the change request.

Note: By default, the base system DevOps Model Change Policy only has the manual
approval decision activated.

Important: When you use the base system DevOps model as is, the change approval is
automated by default. If you do not want automated change approval, you can modify the
DevOps Model Change Policy in a way it suits your current change process.

DevOps Simplified model
The DevOps Simplified change model contains flows in the base system for state transition and
change approvals. Each state in the DevOps Simplified model has its own flows and each flow
will get triggered when the required conditions are met. Change approval (auto or manual) is
based on the DevOps Simplified Model Change Policy. The following flows explains the state
transition and change approval behavior.
• Change - DevOps Simplified - New: When the change request is created in the New state, this
flow gets triggered. If it has an Assignment Group, then this flow updates the change state to
Assess.
• Change - DevOps Simplified - Authorize: When the change request is in the Authorize state,
this flow gets triggered. There are two key actions in this flow - DevOps Gather Change
Policy Data and Apply Change Approval Policy, which are used to retrieve the DevOps data
associated with the change request and check whether the change request must be auto
approved, auto rejected, or sent for manual approval. The change approval (auto or manual)
happens as part of this flow in the Apply Change Approval Policy action based on the DevOps
Simplified Model Change Policy. If the change is approved (auto or manual), it moves to
the Schedule state. If the change is rejected, an email notification is sent to the user who
requested the change and the change is moved back to the New state.

Note: If your change process requires another approval, you can refer to this flow and
customize the DevOps Simplified Model Change Policy according to your requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
• Change - DevOps Simplified- Schedule: When the change request is in the Scheduled state,
this flow gets triggered. When the planned start date is reached, the change is moved to the
Implement state.
• Change - DevOps Simplified - Implement: When the change request is in the Implement state,
this flow gets triggered.
The DevOps Simplified Model Change Policy contains the following policy inputs:
• is_change_with_partial_data
• regression_tests_failed
• code_security
• code_coverage
• total_num_of_commits
• tests_passing_percent
• load_tests_failed
• num_of_open_incidents
• num_of_outages_in_last_7_days
• num_of_current_outages
• integration_tests_failed
• commits_without_work_item
• change_request
• risk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
The three outcomes for the DevOps Simplified Model Change Policy (depending on the
conditions that you specify) are:
• Auto approval: If the conditions specified in the policy are met, the change request is
automatically approved.
• Auto reject: If one or more of the conditions specified in the policy are not met, the change
request is automatically rejected.
• Manual approval: If one or more conditions need manual approval by a user or group, that is
specified in the policy. Notifications are sent by the policy to the relevant users or groups to
expedite the manual approval and progress the change request.

Note: By default, the base system DevOps Simplified Model Change Policy only has the
manual approval decision activated.

Callback to resume the pipeline
In DevOps Change Velocity, the following considerations are made to send a callback request.
• The implementation states is used to send a callback to the third-party orchestration tool. If
only one implementation state is present in the change model, then an absolute comparison is
made. When the change created by a change model reaches the implementation state that is
set, a call back is sent to the third-party orchestration tool.

Note: In change models, the Implementation states field can have one or more states.
You can define the implementation states for each change model. For more information,
see State model and transitions.
• If multiple implementation states are present in the change model, a call back is sent to the
third-party orchestration tool in the state where implementation state is reached first.
• If there’s no implementation state set on the change model, then the model states are checked
for the Implement state. If the Implement state is present, then that is considered for call
back to the third-party orchestration tool. If there’s no implement state in the model states as
well, then the value present in the sn_devops.change_request.implement_state property is
considered. The value of the system property is -1 by default, which is the implement state.

Note: The Change – DevOps – Update execution state flow is used to send a callback to
the third-party orchestration tool. This approval flow waits until the change request is in the
Implement state. Once the change request reaches Implement state, this flow updates the
Step Execution record to the appropriate (approved, rejected, canceled) state. The moment
the Step Execution record is updated, the Change Control Callback flow is triggered to send
the callback to the third-party tool.

After upgrade
• The Change model field will be displayed in the Step form. This won’t impact your
existing type-based change creation process as the type compatibility property
(com.snc.change_management.change_model.type_compatibility) is true.
• If you want to have a model-based change request, set the type compatibility property to false.
The Change model field in the Step form will be required. For information on configuration
combination based on the property, see the table When the type compatibility property is set
to False.

Note: If you’re an existing customer and zbooted your instance, or a new customer, you
can create model-based change requests by default. However, you can create type-based
change requests by setting the type compatibility property to true.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
The following table explains how the change model feature works for new and upgrading
customers.
Change model behavior based on upgrade
Type
New or upgrade
compatibility
instance
flag

zboot (new
or existing
zbooted)

false

Model or Type

DevOps
model

State transition Auto change
flows
approval flows

• Change
request DevOps New
• Change
request DevOps Assess
• Change
request DevOps Authorize
• Change
request DevOps Schedule
• Change
request DevOps Implement

Upgrade

false

DevOps
model

• Change
request DevOps New
• Change
request DevOps Assess
• Change
request DevOps Authorize
• Change
request DevOps Schedule

Callback to 3rd
party

In the base
system,
change
approval (auto
or manual)
happens
through the
Change
request DevOps Assess flow.
If you want
another level
of approval,
you can refer
to the Change
request DevOps Authorize
flow and
customize
the DevOps
Model
Change Policy
accordingly.

See the
Note in the
Callback
section.

In the base
system,
change
approval (auto
or manual)
happens
through the
Change
request DevOps Assess flow.
If you want
another level
of approval,
you can refer
to the Change
request DevOps Authorize
flow and

See the
Note in the
Callback
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
Change model behavior based on upgrade (continued)
Type
New or upgrade
compatibility
instance
flag

Model or Type

State transition Auto change
flows
approval flows

• Change
request DevOps Implement
zboot (new
or existing
zbooted)

false

DevOps
Simplified
model

• Change
request DevOps New
• Change
request DevOps Authorize
• Change
request DevOps Schedule
• Change
request DevOps Implement

Upgrade

false

DevOps
Simplified
model

• Change
request DevOps New
• Change
request DevOps Assess
• Change
request DevOps Authorize
• Change
request DevOps Schedule
• Change
request DevOps Implement

Callback to 3rd
party

customize
the DevOps
Model
Change Policy
accordingly.
In the base
system,
change
approval (auto
or manual)
happens
through the
Change
request DevOps Authorize flow.
If you want
another level
of approval,
you can
customize
the DevOps
Simplified
Model
Change Policy
accordingly.

See the
Note in the
Callback
section.

In the base
system,
change
approval (auto
or manual)
happens
through the
Change
request DevOps Authorize flow.
If you want
another level
of approval,
you can
customize
the DevOps
Simplified
Model
Change Policy
accordingly.

See the
Note in the
Callback
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Change model behavior based on upgrade (continued)
Type
New or upgrade
compatibility
instance
flag

Model or Type

Upgrade

Type

true

State transition Auto change
flows
approval flows

Callback to 3rd
party

Current
behavior is
continued

Change
Control
Callback flows

DevOps
Change
Request
Manual
Approval,
or DevOps
Change
Request
Minimal
Automation
Approval,
or DevOps
Change
Request
Advanced
Automation
Approval
flows
(whichever
flow is active)

Update change model in pipeline
Update the change model in your existing pipeline steps using the DevOps Pipeline Migration to
Change Models catalog item.

Before you begin
Role required:

• sn_change_read role to read the change model from the chg_model table.
• sn_devops.viewer role to read the pipelines from the sn_devops_pipeline table.

About this task

If you’re an upgrading user, and you want to migrate your existing pipelines steps to change
models, you must perform this procedure.
The DevOps Pipeline Migration to Change Models catalog item enables you to update the
change model in each step record in your pipeline at once. For example if you have set the type
compatibilitycom.snc.change_management.change_model.type_compatibility
property to false and change model input is required in multiple pipeline steps, you can use
this catalog item to update the change model for all pipeline steps in one go.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items > DevOps Pipeline
Migration to Change Models, and set the Active state to True to activate the DevOps
Pipeline Migration to Change Models maintain item.
By default the catalog item is turned off.
2. In the Available For related list of the catalog item, add the users to whom the catalog must be
available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
3. In the Approve By related list of the catalog item, add the users who can approve the catalog
item.
Alternatively, navigate to All > Flow Designer > Flows, and activate the Request for pipeline
migration catalog flow. You can update the rule set in the Ask For Approval action of the flow
to add a user or a group of users who can approve the catalog item.
4. To add the catalog item in the Service Catalog categories in Service Portal, set the category of
these items to DevOps and add theService Catalog catalog.
If the DevOps category isn’t available, you must create a new category called DevOps from
the catalog item record itself and assign the DevOps Onboarding catalog to it.
5. To add catalog item in Employee Service Center, add a new topic in the Assigned Topics
related list with taxonomy as Employee in theIT > IT for IT section.
The Assigned Topics related list isn’t available in the Default view of the Catalog Item form.
To add it, select Additional icons > Configure > Related Lists and move the Connected
Content → Catalog item field to the selected section.
6. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items
DevOps.

and search for

Note: You can also access the service catalog from the Employee Center or Service
portal.
7. From the DevOps catalog items, select DevOps Pipeline Migration to Change Models.

8. In the form, fill in the following fields.
DevOps Pipeline Migration to Change Models form
Field

Description

Tool

Orchestration tool that contains the required
pipelines.

Pipeline

Pipelines for which you want to update the
change model.

Change model

Change model to which the existing models
are being updated.

9. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
A request is created. Based on whether the request is approved or rejected, notifications are
send to the requester.

Note: If any of the pipelines you selected in step 8 has any data policy, which doesn’t
allow the pipeline steps to be updated, the same is updated as an error in the worknotes
of the corresponding request.
Option

Description

◦ A comment is added in the request
record specifying that migration
to change model was successful.

◦ A bell notification is sent to the
requester specifying that the mi­
gration has been successful.

Approved and successful

◦ An email notification is sent to the
requester specifying that the migra­
tion request has been successful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
Option

Description

◦ A comment is added in the request record
specifying that migration wasn’t successful.

◦ A bell notification is sent to the re­
quester specifying that the migra­
tion request has been rejected.

Rejected and unsuccessful

◦ An email notification is sent to the
requester specifying that the mi­
gration request has been rejected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
Retrieve change request data using DevOpsChangeRelationshipHelper script
Retrieve data associated with a change request based on the specified relation type using the
DevOpsChangeRelationshipHelper script include.

Before you begin

Role required: sn_devops.viewer

About this task
Use Script Includes
to store JavaScript functions and classes for use by server scripts. You can
call the Script Include from a Business Rule, UI Action, workflow script, Scripted REST API, and so
on.
This method retrieves data related to a change request based on the specified relation type.
The supported relation types are:
• DevOpsCommonConstants.COMMIT_TABLE
• DevOpsCommonConstants.DEVOPS_WORK_ITEM
• DevOpsCommonConstants.DEVOPS_TEST_SUMMARY_TABLE
• DevOpsCommonConstants.DEVOPS_SECURITY_SCAN_SUMMARY_TABLE
• DevOpsCommonConstants.DEVOPS_ARTIFACT_VERSION_TABLE
• DevOpsCommonConstants.DEVOPS_SOFTWARE_QUALITY_SUMMARY_TABLE
• DevOpsCommonConstants.DEVOPS_PULL_REQUEST_TABLE

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Search for the DevOpsChangeRelationshipHelper script.
You can call this Script Include from a Business Rule, UI Action, workflow script, Scripted REST
API, and so on.

Example:

Assume you have an instance of the object containing the changeRelationHelperObj method.
var changeRelationHelperObj = new
sn_devops.DevOpsChangeRelationshipHelper();
Assume you have a GlideRecord object representing a change request.
var changeRequest = new GlideRecord('change_request');
changeRequest.addQuery('number', 'CHG123456');
changeRequest.query();
changeRequest.next();
The retrieved data may include additional details depending on the relation type. If data is found,
an array containing the related sys IDs information is returned. If data is not found, a debug
message is displayed and an empty array is returned. If there is an issue during data retrieval, an
error message is displayed with details.
Example 1: Retrieving commit data for a change request.
try {
var commitsData =
changeRelationHelperObj.getChangeRelationData(changeRequest,
sn_devops.DevOpsCommonConstants.COMMIT_TABLE);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
if (commitsData && commitsData.length > 0) {
gs.log('Commits Data:', commitsData);
} else {
gs.log('No commits found for Change Request:',
changeRequest.getDisplayValue());
}
} catch (error) {
gs.error('Error fetching commits data:',
error.getMessage());
}
Example 2: Retrieving work items for a change request.
try {
var workItemsData =
changeRelationHelperObj.getChangeRelationData(changeRequest,
sn_devops.DevOpsCommonConstants.DEVOPS_WORK_ITEM);
if (workItemsData && workItemsData.length > 0) {
gs.log('Work Items Data:', workItemsData);
} else {
gs.log('No work items found for Change Request:',
changeRequest.getDisplayValue());
}
} catch (error) {
gs.error('Error fetching work items data:',
error.getMessage());
}

Manage Pull Requests (PR) or Merge Requests in DevOps Change Velocity
Manage Jenkins, GitHub Actions, and Azure DevOps (ADO) pipeline’s pull requests for GitHub,
Bitbucket, and ADO coding sources from ServiceNow DevOps. You can enable the change
approval process on your pull request to control pull request merge approvals from ServiceNow
DevOps and monitor pull request details associated with the change request.

Before you begin

Ensure that the following prerequisites are met before approving pull requests:
• Your admin has created a pull request branch in GitHub or Bitbucket using a Multi-branch
project pipeline. For more information, see GitHub branch source
and Bitbucket branch
source .
• Your admin has enabled pull request creation in the ADO repository.
For more information, see https://marketplace.visualstudio.com/items?
itemName=ShaykiAbramczyk.CreatePullRequest .
• Your admin has configured Jenkins integration with DevOps. For more information, see Jenkins
integration with DevOps.
• Your admin has configured GitHub integration with DevOps. For more information, see GitHub
integration with DevOps.
• Your admin has configured Bitbucket integration with DevOps. For more information, see
Bitbucket integration with DevOps.
• Your admin has configured ADO integration with DevOps. For more information, see Azure
DevOps integration with DevOps Change Velocity.
• Your admin has enabled the Change Acceleration feature of DevOps for automatic change
request creation in your pipeline. For more information, see Accelerating DevOps change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
Role required: sn_devops.admin

About this task

For Jenkins pipelines, pull requests can be managed for GitHub and Bitbucket coding sources.
For GitHub Actions pipelines, pull requests can be managed for GitHub coding source.
For ADO pipelines, pull requests can be managed for ADO coding source.

Procedure
1. Create a pull request in GitHub or Bitbucket or ADO.
For more information, see Creating a pull request
or Create a pull request to merge your
change .
2. Perform the following steps based on your orchestration tool.
Orchestration tool

Steps

Jenkins

a. In the Jenkins dashboard, navigate to Man­
age Jenkins > Configure System > Service­
Now DevOps Configuration.
b. Select the Pull Request Pipeline Tracking
Check option.
a. In your GitHub repository, navigate to Ac­
tions > General > Workflow permissions.

GitHub Actions

b. Select the Allow GitHub Actions to create
and approve pull requests option.
c. Select Save.
a. In ServiceNow, navigate to All > DevOps >
Properties.

ADO

b. Set the Enable to track Azure DevOps
Code Pull-Requests to Yes.
Pull request tracking will be enabled for all
the existing configured projects. For any
project that is not configured, you must con­
figure them for pull requests to be tracked.

3. Run the pull request pipeline in Jenkins, GitHub Actions, or ADO.
A build is initiated and a change request notification is sent to the approver associated with
the pipeline.
4. Navigate to DevOps > Orchestrate > Pipeline Change Requests.
5. Select the change record associated with the pull request.
6. Approve the change request associated with the pull request by selecting Approved in the
State field.
Merge is enabled in GitHub or Bitbucket or ADO for the pull request. Merge the pull request in
the corresponding tool.
7. Select the Pull Requests related list associated with the change record.
8. View the pull request details by clicking the pull request number corresponding to the Number
field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
All the pull request details (including the details after the request is merged) associated with
the change record are displayed. Details such as Pull request ID, Commits, Origin branch,
Destination branch, Raised by, Approver, Comments, PR raised time, PR approved time, PR
merged/closed time are displayed. Commits from pull requests are shown in the Commits
related list.
Limitation
Details of pull requests that are created in a BitBucket coding source and
associated with a Jenkins pipeline are not displayed for a change request.

DevOps change request attributes
Add or update DevOps change request attributes using the changeInfo REST API, the Default
Change Handler subflow, by passing attributes through the pipeline, Update function, or
automated flows.

Specifying attributes
Use one of the following methods to specify change request attributes:
• DevOps - PUT /devops/orchestration/changeInfo/{changeInfo}
specified change request.

to update fields within a

Note:
◦ The changeInfo API won’t function when the pipeline is in the paused state.
◦ An API call can’t be executed while the pipeline is waiting.
◦ The API approach must be considered after thorough testing.
• Default Change Handler subflow to populate change request fields with default values. For
more information, see Default Change Handler subflow.
• Passing the change attributes through the orchestration pipeline. For more information, see
Configuring DevOps change request details within the pipeline.
• Passing the change attributes through the Update function in the orchestration pipeline
function. For more information, see the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
◦ Get and update change request details in Azure DevOps pipeline
◦ Update change request details in Jenkins pipeline
◦ ServiceNow DevOps custom actions from GitHub marketplace
◦ Implement custom actions for pipelines using a generic Docker container image
• Automated flows: DevOps approval flows to make changes in a change request. For more
information, see Flows.

Precedence of consideration
When the change attributes are specified through multiple methods, the precedence in which
the attribute values are considered will vary. In ServiceNow, attributes can be specified in the
pipeline step of DevOps Change Velocity, in the Default Change Handler subflow, or in an
approval flow. In the orchestration tool pipeline, attributes can be passed in the pipeline step, or
using the REST APIs. If a change model is used, they can also be specified in model presets.
See the following tables and examples to understand the precedence in which the values will be
considered.
Precedence of change attributes for type-based changes
Change request

Standard

Precedence

1. Change attributes passed through pipeline
2. Step record fields in ServiceNow
3. Template passed in change attributes
through pipeline
4. Template in Step fields in ServiceNow

Non-standard

1. Change attributes passed through pipeline
2. Default Change Handler subflow & approval
flows

Important: Setting attribute values
in both the Default Change Handler
subflow and approval flows can cause
conflicts because they might run
simultaneously. Set the attribute values
in only one source to avoid issues.
3. Step record fields in ServiceNow
4. Template passed in change attributes
through pipeline
5. Template in Step fields in ServiceNow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
Precedence of change attributes for model-based changes
Change request

Standard

Precedence

1. Model Presets
2. Change attributes passed through pipeline
3. Step record fields in ServiceNow
4. Template passed in change attributes
through pipeline
5. Template in Step fields in ServiceNow

Non-standard

1. Model Presets
2. Change attributes passed through pipeline
3. Default Change Handler subflow & approval
flows

Important: Setting attribute values
in both the Default Change Handler
subflow and approval flows can cause
conflicts because they might run
simultaneously. Set the attribute values
in only one source to avoid issues.
4. Step record fields in ServiceNow
5. Template passed in change attributes
through pipeline
6. Template in Step fields in ServiceNow

Note: If you have used business rules in your change operations, then you must set the

sn_devops.change_request.apply_attributes_on_creation property to
true, so that the change attributes passed in the pipeline are set when the change request
is created instead of the attributes being passed after the change request is created. For
more information, see DevOps Change Velocity properties.

Example: Scenario 1
Consider a scenario where the attributes are specified in the Default change handler subflow
in ServiceNow and in the Update function in the orchestration pipeline. Assume that the
assignment_group attribute is specified as “change mgmt” in the Default change handler
subflow, and as “CAB” in the Update function in the pipeline. In this scenario, when the change
is created, the value from the Default change handler subflow will be considered, and “change
mgmt” will be the value considered for assignment_group. Once the change is approved, and
the pipeline is resumed, the value specified in the Update function will be considered, i.e. “CAB”.

Example: Scenario 2
Consider a scenario where the attributes are specified in the Default change handler
subflow in ServiceNow and in the change step in the orchestration pipeline. Assume that the
assignment_group attribute is specified as “change mgmt” in the Default change handler
subflow, and as “chg mgmt1” in the change step of the pipeline. In this scenario, when the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
change is created, the value from change step (chg mgmt1) will be considered, and then once
the Default change handler subflow is triggered, the value considered will be “change mgmt”.

Example: Scenario 3
Consider a scenario where the attributes are specified through the template passed in change
attributes and in the template of the step record. Assume that the assignment_group attribute is
specified as “change mgmt” in the template passed in change attributes, and as “chg mgmt1” in
the template of the pipeline step record. In this scenario, when the change is created, the value
from the template passed in change attribute (chg mgmt) will be considered.

Example: Scenario 4
Consider a scenario where the attributes are specified in the change attributes and the model
preset for a model-based change. Assume that the assignment_group attribute is specified as
“change mgmt” in change attributes and as “chg mgmt1” in the model preset. In this scenario,
when the change is created, the value from model preset (chg mgmt1) will be considered.

Import based evidence collection
Reduce instance overhead by skipping step-level pipeline processing for accelerated change
management and evidence collection for GitHub Actions, Azure DevOps (ADO), Jenkins and
GitLab orchestration tools.
All relevant evidence in the pipeline is attached to the change request using import request
instead of webhook notifications.

Enable import based evidence collection
You can enable this feature by switching on the Import based evidence collection for
orchestration capability toggle in the Properties page. For more information, see DevOps
Change Velocity properties.
Switching the toggle modifies how the pipeline events are processed. When switched on,
the setting reduces instance overhead by skipping step-level processing in the pipeline. The
skipped step-level events are ignored with the processing details, "IGNORED: This event is
ignored because the 'Import based evidence collection for orchestration capability' property
is enabled". Conversely, switching off reverts to the standard mode, where all inbound events
undergo processing.

Note: Ensure that no pipeline is running before making changes to this setting. Switching
the toggle during an active pipeline execution may cause the pipeline to hang and
eventually time out, resulting in incomplete or incorrect data collection. If a change request
has already been created, you must cancel it manually, as required evidence may not be
attached. Select Save to continue, and initiate a new pipeline execution after switching the
toggle.

How is the evidence collected
When the change step in a pipeline is triggered, a callback record is created with the state:
created and change evidence status: pending. An import request, with the corresponding
import request pages are created to gather pipeline execution details and the required evidence.
The change request is then created with all the evidence attached to it. In addition, the import
based evidence collection feature is triggered again at the pipeline completion event to ensure
all the associated evidence is accurately retrieved and associated with the change request.
Post-creation of the change request, the auto-approval mechanisms, and subsequent behaviors
remains the same as the existing behavior.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
For ADO
• For build pipeline, when the property is enabled, the evidence collection happens
based on the pipeline completion event only (step level events aren’t processed
to reduce the instance overhead).
• For release pipeline, even if the property is enabled, the evidence collection
happens based on processing step-level events.
For GitHub Actions
• When the property is enabled, the evidence collection happens based on the
workflow completion event only (step level events aren’t processed to reduce the
instance overhead).
• If you’re using GitHub Actions Deployment Gates in any of your steps, then you
must configure the GitHub app, and the evidence collection happens based on
the workflow completion event. For more information on deployment gates, see
GitHub Deployment Gates for ServiceNow DevOps Change.
Jenkins
When the property is enabled, the evidence collection happens based on the
pipeline completion event only (step level events aren’t processed to reduce the
instance overhead).

Note: You must install the latest Jenkins from the Jenkins Marketplace.

Navigate to Manage Jenkins > System configuration > Plugins in your Jenkins
instance. Search for ServiceNow DevOps Plugin and select it, and then select
Install.
GitLab
When the property is enabled, the evidence collection happens based on the
Pipeline events webhook event only (step level events aren’t processed to reduce
the instance overhead).

Key points
• Import based evidence collection supports all existing pipeline styles (reruns, parallel,
sequential) and configurations for GitHub Actions, Jenkins, and ADO.
• All types of evidence collection supported for GitHub Actions, ADO, GitLab, and Jenkins in the
base system are also supported when this property is enabled.
• For GitHub Actions, environment-based change isn’t supported.
• For GitLab, manual jobs (when: manual) are not supported.
For example,
run_tests:
script: npm test
when: manual
allow_failure: true
• For Jenkins, Freestyle pipelines are not supported.
• Historical import and polling features works the same way regardless of the Import based
evidence collection for orchestration capability property being enabled or turned off.
• Restarting import in the import request record is also supported.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
• Troubleshooting and error handling frameworks remain unaffected.
• If you’re upgrading, the Import based evidence collection for orchestration capability
property is turned off by default.

Managing DevOps Change Velocity
Utilize the features of DevOps Change Velocity to efficiently manage your DevOps tools and
processes.

Onboard a new tool using DevOps generic playbook
DevOps Change has a pre-build playbook setup for users to configure a new tool. Custom tool
integrations can be created using the guided playbook experience in the DevOps Change
Workspace.
Playbooks provide end users with a visual, task-oriented guide with the steps to complete a
process, ensuring a consistent experience for tool onboarding. For detailed information about
playbooks, see About Playbook Experience .
Perform the following steps to onboard your custom tool using the DevOps generic playbook.

1. Identify tool capabilities
To configure a tool using the generic playbook, first you must identify the capabilities supported
by the tool. A tool can have one or more capabilities like code, plan, and orchestration.
The Generic playbook consists of the following stages and each stage has its related activities:
1. Connect to a tool
a. Connect to a tool
b. Specify tool access
c. Configure the tool
2. Capability
Capability can be of type plan, code, or orchestrate. If the tool has multiple capabilities,
multiple stages exist with the capability name.
a. Select to track
b. Import data
c. Associate (This activity is for the Orchestration tools to associate pipeline steps)
3. Summary

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
This is how a playbook with multiple capabilities looks

like:

2. Configure Activity Definitions
Each Activity in a playbook is associated to an activity definition. DevOps has the following
activity definitions:
• DevOps CreateTool AD
• DevOps Configure & Test AD
• DevOps Select Associated Objects AD
• DevOps Import Data AD
• DevOps Associate Services AD
• DevOps Summary AD
For more information, see Exploring playbooks

and About Playbook Experience

.

The DevOps table sn_devops_capability_activity_mapping has been created to
maintain associations between Activity definitions and capabilities. This table configuration is
used to dynamically render the stages and activities for a tool. You can update the conditions as
needed to either enable or disable a particular activity for a tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


<!-- page 1111 -->
For example, tools like GitLab and JFrog don’t support data import. So you don't require
the Data Import activity for such tools. In that case, you must add the logic in the
condition column to return false for these types of tools. See the following image as a

reference:

3. Configure Activity UI for the Activity Definition
Playbook Activity UIs define the experience type and UI template rendered to users while
managing Playbooks. You can configure multiple Activity UIs for an Activity Definition and render
any one dynamically based on the condition evaluation.
DevOps has the following AUIs for Create Tool activity. Except this, all other activity definitions
have only one Activity UI.

You can configure any one of the Activity UI based on the requirement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
Identify the required activity UI and add your tool in the condition
builder so that the UI gets effected in the playbook for the

tool.
Result
After completing these steps, your tool can be onboarded using the DevOps generic playbook.
Related topics
Integrating DevOps Change Velocity with third party tools

Additional information for onboarding DevOps tools and apps using the
Service catalog
Use the onboarding catalog items as a self-service approach to onboard your DevOps tools and
apps.

Onboarding tools and apps

Note: This content pertains to the Classic Environment, which refers to working in lists of
records and on record forms directly, not in the Configurable Workspace interface . You
can work in the Classic Environment with Next Experience active, or with it inactive, which is
referred to as Core UI, (formerly known as UI16).
Use the ServiceNow Service Catalog to request the onboarding of tools and apps. Fill out the
onboarding form details for a tool or an app and submit the request. You can also import the
DevOps data for the app that you are creating for swifter and easier onboarding.
Prior to the request creation, an automated workflow approves or rejects the request.
• When the workflow is approved, a success message displays.
• When rejected, an inbound event is created capturing error logs. By ensuring the log is error
free, you can create a request again.
You can onboard DevOps tools and apps using self-service catalog items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
• Navigate to All > Service Catalog > Catalog Definitions > Maintain Items > DevOps App
Onboarding, and set the Active state to True to activate the DevOps App Onboarding
maintain item. By default the catalog items (App Onboarding) is turned off.
• Navigate to All > Service Catalog > Catalog Definitions > Maintain Items > DevOps Tool
Onboarding, and set the Active state to True to activate the DevOps Tool Onboarding
maintain item. By default the catalog items (Tool Onboarding) is turned off.
• To add the DevOps catalog items in the Service Catalog categories in Service Portal, set
the category of these items to DevOps and add the Service Catalog catalog. If the DevOps
category is not available, you must create a new category called DevOps from the catalog item
record itself and assign the DevOps Onboarding catalog to it.
• To add the DevOps catalog items in Employee Service Center, add a new topic in the Assigned
Topics related list with taxonomy as Employee in the IT > IT for IT section. The Assigned
Topics related list is not available in the Default view of the Catalog Item form. To add it, select
Additional icons > Configure > Related Lists and move the Connected Content → Catalog
item field to the selected section.
• Navigate to All > Flow Designer > Flows, and activate the Request for onboarding approval
flow, so that the tool or app onboarding requests are approved by default. If you want to
request manual approval for onboarding catalog items (i.e. from a user other than the DevOps
system user), you can update the rule set in the Ask For Approval action of the flow. You can
configure manual request approval for such items by configuring the fulfillment process for the
catalog item. For more information, see Service Catalog request fulfillment .
• Customize roles for approvals of the request for onboarding approval flow from Flow Designer.

Onboarding at scale
You can also use the onboarding APIs to onboard DevOps tools & apps in bulk instead of
onboarding one tool or app per request. In the request parameters for tools or apps, you can
specify multiple values to onboard them in one go. For example:
{
"tools":[
{
"name": "jira_revamp",
"type": "Jira",
"url": "http://jira1.sndevops.xyz",
"username": "admin",
"password": "DevOps1!",
"useMidServer": false
},
{
"name" : "azure_revamp",
"type" : "Azure DevOps",
"url" :
"https://dev.azure.com/ADOLightweight/Testing%20ADO%20On%20empm
olugu",
"username" : "devops.integration.user",
"password" :
"EXAMPLE_TOKEN_REDACTED",
"useMidServer" : false
},
{
"name" : "jenkins_revamp",
"type" : "Jenkins",
"url" : "http://jenkins5.sndevops.xyz/",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
"username" : "admin",
"password" : "DevOps1!",
"useMidServer" : false
},
{
"name" : "github_revamp",
"type" : "GitHub",
"url" : "https://api.github.com",
"username": "admin",
"password": "ghp_EXAMPLE_REDACTED",
"useMidServer" : false
},
{
"name" : "bitbucket_revamp",
"type" : "Bitbucket",
"url" : "",
"username" : "admin",
"password" : "DevOps1!",
"useMidServer" : false
},
{
"name": "gitlab_revamp",
"type": "GitLab",
"url": "http://gitlab2.sndevops.xyz",
"username": "admin",
"password": "mYdAJQCLi6Qft4Nk3XvS",
"useMidServer": false
}],
"credentials" : {
"name" : "devops.integration.user",
"password" : "devops"
}
}
• Onboard DevOps apps at scale by using the DevOps app onboarding API. The POST/devops/
onboarding/app request creates an onboarding app event that is asynchronously processed
by the DevOps service. For more information, see POST/devops/onboarding/app .
• Onboard DevOps tools at scale by using the DevOps tool onboarding API. The POST/devops/
onboarding/tool request creates an onboarding tool event that is asynchronously processed
by the DevOps service. For more information, see POST/devops/onboarding/tool .
Importing historical data for DevOps tools
Use the service catalog to onboard a new app and import historical DevOps data for that app.
Enable polling to import data that is mapped to associated plans, repositories and pipelines on a
scheduled frequency.

Import historical DevOps data for existing tools
You can create an app onboarding request and import historical data for a DevOps tool that
you have already on-boarded, using the app onboarding catalog form. Currently, you can
import historical data for the last 90 days from current date, and enable polling on a scheduled
frequency for the following tools:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
• Jira (Plan)
• GitHub and GitHub Enterprise (Coding)
• Jenkins (Orchestration)

Note:
• Ensure that you have created, connected, and discovered the tool you are importing data
for.
• Import requests for Plan tool (Jira) are processed first, followed by repository and pipeline
import requests.

Import workflow and retries
On successfully submitting the catalog request from the Self-service catalog, the request is sent
for approval following the designated approver flow that you have configured. When the request
is approved, an inbound event is created for the app onboarding request. The Processing
details field of the inbound event record displays the import request ID and status. A single
import request creates multiple child import request pages that display in the related list. The
import request pages are created based on the following logic for the supported tools:
• Jira: a page is created for a range of 15 days.
• GitHub : a page is created for every 100 commits.
• Jenkins: pages are created per build.
. After import requests are complete processing, the associated Work items, Commits, Branches,
Tags, Pipeline executions, Test summaries that you mapped are created and persisted in the
system.
On successful import you can view all imported commits in the DevOps > Develop:
• Branches
• Commits
• Committers
• Tags
• Repositories
• Work Items
for details to confirm successful import for the specified date range.
While processing an import request, if any page errors out, an inbuilt retry mechanism tries
processing the page for a set number of times. After all automatic retries, if the page is still in
error state, the subsequent or remaining pages in the import request are processed. The overall
state of the import request remains in error.
For example, if the Plan import request failed (after all retries), we will proceed to process
Repository and Pipeline imports. You can configure the retries for the import request from
DevOps > Administration > Properties > Maximum retries per page, while importing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


<!-- page 1116 -->
• Specify the count of retries to auto-attempt, in case the import request page fails in the
Maximum retries per page, while importing field. If after all the automatic retries, page does
not succeed, the import request will process the remaining pages. The overall status of the
import request reflects as errored.
• You can manually retry attempting a failed import by clicking the Retry import button, on the
failed import request page,
Polling schedule and configuration
Enable polling to import DevOps data on a scheduled frequency to apps that have imported
historical data, and are mapped to associated plans, repositories, and pipelines.
After you have onboarded an app and imported the associated DevOps data, you can enable
the base system schedule for import requests to be created for the plans, repositories, and
pipelines that are tracked and associated to an app. When the import requests complete
processing, the associated data is persisted and display against the app. While the base system
DevOpsImportPolling schedule job is active by default, you must enable polling from the
DevOps properties to run the scheduled job.
To enable polling, navigate to DevOps > Administration > Properties > Enable Import Polling
and select the check box.
Turning this property flag on, enables the base system DevOpsImportPolling schedule job.
The scheduled job for polling considers either the last successful import or 30 days, whichever
is later as the ‘start date’, and the current day's date as the 'end date' for the data import, for all
apps that are active and have tracked pipelines. The job looks up the time of the last successful
import and creates the subsequent import request accordingly. This logic ensures that the
scheduled polling job imports the delta of relevant DevOps data for that app, from the last
successful import till date, to a maximum of thirty days.

Note: Do not configure a polling frequency that is less than a day or 24 hours.
The default frequency of the job is set to run daily at midnight using the system time zone. To
change the frequency of scheduled job you need the ServiceNow ServiceNow AI Platform
Administrator (admin) role.
Navigate to System Definition > Scheduled Jobs > DevOpsImportPolling and modify the Run
frequency, Time zone, and Time field values, as needed. For more information, see Schedule
Jobs

Note:
• The scheduled job only applies to active apps. Ensure that the app you are configuring
polling for is in active state and the Track field is enabled for the relevant pipelines.
• Consider the following when you're modifying the schedule frequency:
◦ For JIRA the default time zone is based on the time zone of the JIRA server's location.
◦ For Jenkins the default time zone is UTC. For more information see Jenkins
documentation on System Time time zones .
The schedule jobs that polls to import DevOps data honours the default values for the following
DevOps properties related to imports and import requests:
• Maximum retries per page while importing
• Maximum number of pages to process at a time for an import request
• To save payloads as attachments on the Import Request Page record, set the "Value" field to
"true". Anything else is considered false.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1116


<!-- page 1117 -->
Import existing Azure DevOps pipelines, repositories, and plans
After you have integrated Azure DevOps with DevOps, you can import up to 90 days of existing
Azure DevOps pipeline, repository, and plan data. You can then use DevOps dashboards to view
and manage Azure DevOps data.

Before you begin

Role required: admin

About this task
• You will request the data from the service catalog as a predefined catalog item.
• Imported test summaries, artifacts, and packages are linked to pipeline executions and not to
step executions.
• SonarQube scan results are not imported.
• Azure DevOps imposes the following restrictions:
◦ Maximum 20,000 work items can be imported every 15 days.
◦ Maximum 200 run commits can be mapped to any pipeline execution.
◦ Test results for pipeline executions longer than 7 days are not returned.

Note: The import process can take some time, hours for very large data sets.
Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > My Catalogs and then select
DevOps Onboarding.
2. In the Catalog Items related list, select DevOps App Onboarding.
3. On the Catalog Item form, select Try It to request the data.
The resulting DevOps App Onboarding form enables you to specify the catalog item to order.
In this case, the "app" to order is your Azure DevOps instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1117


<!-- page 1118 -->
4. Select the Select in list icon ( ) on the App field and then select your instance of Azure
DevOps.
Now that you have specified the instance, you will specify date range and sources of data to
import.
5. Repeat the following procedure for each pipeline, repository, and plan that you want to import:
a. Select the Select in list icon (
import.
You can select multiple items.

) on the appropriate Onboarding field to select the item to

b. Specify the range of dates for the data in the Import From and Import To fields.
6. Select Order Now.
Your request appears on the Order Status page.
7. Select the request number so you or another user with the admin role can approve the
request.

8. Approve the request: On the Request form, set Approval and Request stateto Approved.
The import process begins immediately on approval.
Import existing GitLab pipelines and repositories
After you have integrated GitLab with DevOps, you can import up to 90 days of existing GitLab
pipeline and repository data. You can then use DevOps dashboards to view and manage GitLab
data.

Before you begin

Role required: admin

About this task
• You will request the data from the service catalog as a predefined catalog item.
• Imported test summaries are linked to pipeline executions and not to step executions.
• Only artifacts published using the artifacts keyword are imported.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1118


<!-- page 1119 -->
• Test results are not displayed for artifacts that have expired. You can set the expiration date
of an artifact by configuring the expire_in property in the pipeline. For more information on
artifact expiration policies, see Artifact and job meta data expiration .
• SonarQube scan results are not imported.
• Only 6400 commits per branch can be imported in a single import.
• GitLab imposes the following restriction: While associating run commits to a pipeline
execution, GitLab doesn't provide the starting part of the commit details in some scenarios. It
provides only the part before the SHA as '0000000000000000'. In such scenarios, the latest
commit will be associated as the run commit. For example, when a new branch is created or
when a pipeline is run manually.

Note: The import process can take some time, hours for very large data sets.
Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > My Catalogs and then select
DevOps Onboarding.
2. In the Catalog Items related list, select DevOps App Onboarding.
3. On the Catalog Item form, select Try It to request the data.
The resulting DevOps App Onboarding form enables you to specify the catalog item to order.
In this case, the "app" to order is your GitLab instance.

4. Select the Select in list icon ( ) on the App field and then select your instance of GitLab.
Now that you have specified the instance, you will specify date range and sources of data to
import.
5. Repeat the following procedure for each repository that you want to import:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1119


<!-- page 1120 -->
a. Select the Select in list icon (
item to import.
You can select multiple items.

) on the Onboarding Repositories field and then select the

b. Specify the range of dates for the data in the Import From and Import To fields.

Note: The pipelines mapped to the repositories are automatically selected when you

select the repository in the Onboarding Repositories field. You do not have to select the
pipelines separately.
6. Select Order Now.
Your request appears on the Order Status page.
7. Select the request number so you or another user with the admin role can approve the
request.

8. Approve the request: On the Request form, set Approval and Request state to Approved.
The import process begins immediately upon approval.

Cloning guidelines for DevOps Change Velocity
Clone the DevOps Change Velocity application from one instance to another.

Note: Valid for Utah and later.
For detailed information for cloning a ServiceNow instance, see the following topics.
• Instance Clone
◦ Request a clone
◦ Register target instance (legacy)
◦ Exclude a table from cloning (legacy)
◦ Create a data preserver (legacy)
• New Backup-based Clone Engine [KB0540342]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1120


<!-- page 1121 -->
Base system table exclusion and preservers on global tables used in DevOps
Table name

Exclude table entry present?

Data preservers entry present?

sys_alias

No

No

http_connection

Yes

Yes

discovery_credentials

Yes

Yes

oauth_entity_profile

Yes

Yes

oauth_entity

Yes

Yes

jwt_provider

Yes

Yes

jwt_keystore_aliases

Yes

Yes

sys_certificate

Yes

Yes

token_verification

Yes

Yes

sys_user_group

No

No

cmdb_ci_business_app

No

No

cmdb_ci_sdlc_component

No

No

cmdb_application_product_model
No

No

For DevOps tool

For DevOps apps

Tools cloned from source instance
• The tools that are cloned from source instance will have a Connection alias (sys_alias)
associated with them.
• The Connection record and the Credential record aren’t cloned over from the source instance
since those tables are excluded.
• Tool URL will be empty because the tool URL is dynamically calculated using connection
record.
• Connect test fails because there’s no active connection.
• All the underlying entities like projects, plans, pipelines, repositories, work items, commits,
pipeline execution, and so on must be present under the tool.
• The tool's token isn’t cloned.
• New webhook inbound events won’t automatically start to come to the cloned target instance
for these tools. The tools must be reconfigured to receive new inbound events.
Manual steps on cloned tools
1. Create Connection and Credential
◦ Use the Create New Connection & Credential action present under the related links
on the tool record or manually create the connection (http_connection) and credential
(discovery_credentials) record and associate with the tool's connection alias.
◦ Manually run the Connect action on the tool and make sure that the tool connection state is
Connected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1121


<!-- page 1122 -->
2. Regenerate token and configure
◦ For the tools that support token-based webhook configuration, use the Regenerate token
action from the Related Links on the tool record page.
◦ Regenerating the token creates a new token in the token_verification table and creates
webhooks for the tool and repos that have Configure status as Configured.
◦ For the tools that don't support token-based webhooks, click Configure and enter the user
name and password for the DevOps integration user.

Apps cloned from source instance
• Apps that are cloned from the source instance will have all the app associations intact.
• Business app and SDLC component links are maintained.
• Manual steps aren't required after cloning.

Preserving data on target instance
Aim to preserve the existing tools, tool connections, and apps on the target instance.

Level 1 data preservers
Required data preservers
Title

Table name

Purpose

Suggested filter

DevOps tool

sn_devops_tool

To preserve top-level
DevOps tool list.

connection_state=connected^
to preserve all
connected tools or
filter on specific tool
IDs.

Connection &
Credential Aliases

sys_alias

Specified in
DevOps tool to hold
connection details.

idLIKEdevops^ORidLIKEspoke^
to preserve all aliases
related to DevOps.

DevOps app

sn_devops_app

To preserve top-level
DevOps App list.

Manual steps on preserved tools after cloning
1. Maintained by
If the tool on the target instance had any Maintained by user groups specified before cloning,
update the user groups, and set them on the tool record manually after cloning.
2. Discover
◦ Projects, pipelines, plans, and repositories aren't present for preserved tools after the clone.
◦ For Azure DevOps tools, first perform Discover projects.
◦ Perform Discover action on the tool or the project to bring the pipelines, plans, and
repositories details.
3. Track
Track the required pipelines, plans, and repositories.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1122


<!-- page 1123 -->
4. Configure
◦ Optional for tools where the webhook url holds a reference to tool sys_id only. For example,
GitHub, GitLab, Jira, Bitbucket.
◦ You must reconfigure Azure DevOps projects because the project sys_id has changed after
rediscover.
◦ Token remains the same for the tool.
◦ Verify that there are no duplicate webhooks created in the third-party DevOps tool after
reconfiguring.
5. Historical import
Use the import action or workspace to import historical data for plans, repositories, and
pipelines.

Manual steps on preserved apps after cloning
1. Maintained by
If the app on the target instance had any Maintained by user groups specified before cloning,
update the user groups, and set them on the app record manually after cloning.
2. Associate with app
Manually reassociate plans, repositories, and pipelines with the app.
3. Relink to SDLC component and application model
Manually associate the DevOps app to the SDLC component, and SDLC component to the
application model.

Level 2 data preservers
Aim to preserve the data and relations under DevOps tools and DevOps apps. These preservers
should be used along with the level1 preservers and manual steps.
Required data preservers
Title

Table name

Purpose

Suggested filter

Plugin: DevOps Data Model
Artifact Repository

sn_devops_artifact_repository
Top-level list of artifact tool=toolid^EQ,
repositories. Required where toolid is the
to keep artifact repos tool being preserved.
that are associated
with a preserved tool.

Artifact

sn_devops_artifact

Top-level list of
artifacts. Required
to keep artifacts that
are associated with a
preserved tool.

artifact_repository.tool=to
where "toolid"
is the tool being
preserved.

Pipeline

sn_devops_pipeline

Top-level list of
pipelines. Required
to keep pipelines that

tool=toolid^EQ,
where toolid is the
tool being preserved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1123


<!-- page 1124 -->
Required data preservers (continued)
Title

Table name

Purpose

Suggested filter

are associated with a
preserved tool.
Release Version

sn_devops_plan_versionTop-level list of
release versions.
Required to keep
release versions that
are associated with a
preserved planning
tool.

plan.tool=toolid^EQ,
where toolid is the
tool being preserved.

Plan

sn_devops_plan

Top-level list of
plans. Required to
keep plans that are
associated with a
preserved planning
tool.

tool=toolid^EQ,
where toolid is the
tool being preserved.

Project

sn_devops_project

Top-level list of
projects. Required
to keep projects that
are associated with
a preserved tool.
Currently supported
by Azure DevOps.

tool=toolid^EQ,
where toolid is the
tool being preserved.

Repository

sn_devops_repository Top-level list of
tool=toolid^EQ,
repositories. Required where toolid is the
to keep repositories
tool being preserved.
that are associated
with a preserved
coding tool.

App to Artifact
Repository

sn_devops_m2m_app_artifact_repository
App/Artifact Repo
associations.
Required to keep the
relationship between
preserved apps and
artifact repositories.

app=appid^EQ,
where appid is the
app being preserved.

App to Artifact

sn_devops_m2m_app_artifact
App/Artifact
associations.
Required to keep the
relationship between
preserved apps and
artifacts.

app=appid^EQ,
where appid is the
app being preserved.

App to Plan

sn_devops_m2m_app_plan
App/Plan
associations.
Required to keep the
relationship between
preserved apps and
plans.

app=appid^EQ,
where appid is the
app being preserved.

Plugin: DevOps Vulnerability Integrations
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1124


<!-- page 1125 -->
Required data preservers (continued)
Title

Table name

Purpose

DevOps Security
sn_devops_security_orchestration_relation
Required to keep
Orchestration Relation
the relation between
DevOps entitiy (for
example, pipeline)
and a security tool.

Suggested filter

reference_table=sn_devops_pipeline

Custom integration data preservers
Aim to preserve the meta-data related to any custom tool integrations on the target instance.
These data preservers can be used with both level1 and level2 preservers.
Required data preservers
Title

Table name

Purpose

Suggested filter

Plugin: DevOps Data Model
Custom tool
Integration Capability

sn_devops_integration_capability
Required to keep
the supported
actions to integration
capability mapping
records of custom tool
integration.

tool_integration=customTool
, where
customToolIntegrationId
is the sys_id of
the custom tool
integration.

Custom tool
Integration Capability
Mapping

sn_devops_tool_capability_mapping
Required to keep
the integration
capability mapping
records of custom tool
integration.

tool_integration=customTool
, where
customToolIntegrationId
is the sys_id of
the custom tool
integration.

Custom DevOps Tool
Integration

sn_devops_tool_integration
Required to keep
the tool integration
record of custom tool
integration.

sys_id=customToolIntegratio
where
customToolIntegrationId
is the sys_id of
the custom tool
integration.

Custom Tool
permissions

sn_devops_tool_permission
Required to keep the
permission check
records of custom tool
integration.

tool_integration=customTool
, where
customToolIntegrationId
is the sys_id of
the custom tool
integration.

Plugin: DevOps Workspace
Custom tool
Onboarding task type

sn_devops_ws_onboarding_task_type
Required to keep
the onboarding task
types of custom tool
integration.

tool_integration=customTool
where
customToolIntegrationId
is the sys_id of
the custom tool
integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1125


<!-- page 1126 -->
Level 3 data preservers
Aim to have all the m2m mapping intact in the target instance.

Note: The following are DevOps specific tables. If you require other data to be in place,
then you can add those tables in the preservers list. For example, Change Requests.
Preserve and exclude tables
Name

Table name

Application

App

sn_devops_app

DevOps Data Model

Artifact

sn_devops_artifact

DevOps Data Model

Artifact Repository

sn_devops_artifact_repository DevOps Data Model

Artifact Staged Request

sn_devops_artifact_staging

DevOps Data Model

Artifact Version

sn_devops_artifact_version

DevOps Data Model

Base Planning Item

sn_devops_base_planning_itemDevOps Data Model

Branch

sn_devops_branch

DevOps Data Model

Build Test Result

sn_devops_build_test_result

DevOps Data Model

Build Test Summary

sn_devops_build_test_summaryDevOps Data Model

Callback

sn_devops_callback

Change Reference

sn_devops_change_reference DevOps Data Model

Commit

sn_devops_commit

DevOps Data Model

Committer

sn_devops_committer

DevOps Data Model

Commit Details

sn_devops_commit_details

DevOps Data Model

Contributor Score Change
Factor

sn_devops_contributor_score_chg_factor
DevOps Data Model

Environment

sn_devops_environment

DevOps Data Model

Import Request

sn_devops_import_request

DevOps Data Model

Import Request Page

sn_devops_import_request_page
DevOps Data Model

Inbound Event

sn_devops_inbound_event

App to Artifact

sn_devops_m2m_app_artifact DevOps Data Model

App to Artifact Repository

sn_devops_m2m_app_artifact_repository
DevOps Data Model

App to Plan

sn_devops_m2m_app_plan

Deployed Artifact to
TaskExecution

sn_devops_m2m_artifact_execution
DevOps Data Model

Artifact Version to Commit

sn_devops_m2m_artifact_version_commit
DevOps Data Model

Artifact Version to Package

sn_devops_m2m_artifact_version_package
DevOps Data Model

Branch To Commit

sn_devops_m2m_branch_commit
DevOps Data Model

Run Commit

sn_devops_m2m_commit_execution
DevOps Data Model

Commit to Pull Request

sn_devops_m2m_commit_pull_request
DevOps Data Model

DevOps Data Model

DevOps Data Model

DevOps Data Model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1126


<!-- page 1127 -->
Preserve and exclude tables (continued)
Name

Table name

Application

Commit To Work Item

sn_devops_m2m_commit_work_item
DevOps Data Model

Import Request to Inbound
Event Mapping

sn_devops_m2m_inbound_event_import_request
DevOps Data Model

Tool Integration Configuration
Template

sn_devops_m2m_tool_integration_configuration_template
DevOps Data Model

Work Item To Release Version

sn_devops_m2m_work_item_plan_version
DevOps Data Model

Orchestration Task

sn_devops_orchestration_task DevOps Data Model

Orchestration Task Definition

sn_devops_orchestration_task_definition
DevOps Data Model

DevOps Package

sn_devops_package

DevOps Data Model

Participant

sn_devops_participant

DevOps Data Model

Performance test summary

sn_devops_performance_test_summary
DevOps Data Model

Pipeline

sn_devops_pipeline

Pipeline Execution

sn_devops_pipeline_execution DevOps Data Model

Plan

sn_devops_plan

DevOps Data Model

Release Version

sn_devops_plan_version

DevOps Data Model

Processed Inbound Event

sn_devops_processed_inbound_event
DevOps Data Model

Project

sn_devops_project

DevOps Data Model

Pull Request

sn_devops_pull_request

DevOps Data Model

Repository

sn_devops_repository

DevOps Data Model

Software Quality Category

sn_devops_software_quality_category
DevOps Data Model

Software Quality Category
Detail

sn_devops_software_quality_category_detail
DevOps Data Model

Software Quality Scan Detail

sn_devops_software_quality_scan_detail
DevOps Data Model

Software Quality Scan
Summary

sn_devops_software_quality_scan_summary
DevOps Data Model

Software Quality Scan
Summary Relations

sn_devops_software_quality_scan_summary_relations
DevOps Data Model

Software Quality Sub
Category

sn_devops_software_quality_sub_category
DevOps Data Model

Step

sn_devops_step

DevOps Data Model

Step Execution

sn_devops_step_execution

DevOps Data Model

Tag

sn_devops_tag

DevOps Data Model

Task Execution

sn_devops_task_execution

DevOps Data Model

Test Execution

sn_devops_test_execution

DevOps Data Model

Test Result

sn_devops_test_result

DevOps Data Model

Test Summary

sn_devops_test_summary

DevOps Data Model

DevOps Data Model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1127


<!-- page 1128 -->
Preserve and exclude tables (continued)
Name

Table name

Application

Test Summary Relations

sn_devops_test_summary_relations
DevOps Data Model

DevOps Tool

sn_devops_tool

Tool Connection Status

sn_devops_tool_connection_status
DevOps Data Model

Tool Connectivity History

sn_devops_tool_connectivity_history
DevOps Data Model

Waiting Reason Tracking

sn_devops_waiting_reason_tracking
DevOps Data Model

Work Item

sn_devops_work_item

DevOps Data Model

DevOps Data Model

Check permissions and update credentials for tools — Workspace
You can perform permission checks and update credentials like passwords and access tokens
for your tools from the tool details page.

Permission checks
You can perform permission checks on connected tools at any time, to verify if the existing
credentials have the necessary permissions. This check helps to determine if there are possible
impacts or if you must get a token or credential with higher-level permissions for the tool.

Note:
SonarQube and Rally doesn't have the option to check for permissions.
1. From the DevOps Change Workspace, navigate to Tools and select the tool to open the details
page.
The Permission check result field shows whether the tool credentials have all the necessary
permissions, have partial permissions, or if permissions haven't been checked. The Last
Permission check field tells you when the permission checks were previously run.
2. Click More Actions.
◦ For Bitbucket, select Check password permissions.
◦ For GitHub and GitHub Enterprise with OAuth credentials using the GitHub app, select
Check credential permissions and then enter the GitHub app slug name. Click Check
permissions.
◦ For others, select Check credential permissions.
You can see the status of the checks depending on your credential permissions. You need
sufficient permissions on your credentials for seamless discovery and import.
3. If permissions aren’t sufficient, it’s recommended to update the credentials with those having
higher-level permissions, or update the permissions for the objects on the external tool.

Update credentials
You can update the tool credentials with credentials having sufficient permissions for seamless
discovery and import of data from your tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1128


<!-- page 1129 -->
1. From the DevOps Change Workspace, navigate to Tools and select the tool to open the details
page.
2. Click More Actions. Depending on your tool, the options to update your credentials are
displayed.

Tool

Bitbucket

Steps

a. Click Update password.
b. Enter the user name and the new password.
c. Click Check permissions.
d. The permission check results are shown in the
Permission check dialog box. If you are satisfied
with the permissions for your tool, then update the
credentials.

Azure DevOps

a. Click Update credentials.
b. Select the Credential type.
▪ If the credential type is Basic Auth, enter the new
password or access token.
▪ If the credential type is OAuth, enter the new
credential.
c. Click Check permissions.
d. The permission check results are shown in the
Permission check dialog box. If you’re satisfied
with the permissions for your tool, then update the
credentials.

Note: Since the DevOps tool maps to an

Azure DevOps organization, the Project
Administrators privilege requires the owner of
the PAT to be a member of the organization's
Project Collection Administrators group.
Jira, Jenkins, JFrog

a. Click Update credentials.
b. Select the Credential type.
▪ If the credential type is Basic Auth, enter the new
password or access token.
▪ If the credential type is OAuth, enter the new
credential.

Note: OAuth 2.0 credentials are not available
for Jenkins and JFrog.
c. Click Check permissions.
d. The permission check results are shown in the
Permission check dialog box. If you’re satisfied
with the permissions for your tool, then update the
credentials.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1129


<!-- page 1130 -->
Tool

GitLab

Steps

a. Click Update credentials.
b. Select the Credential type.
▪ If the credential type is Basic Auth, enter the new
password or access token.
▪ If the credential type is OAuth, enter the new
credential.
c. Click Check permissions.
d. The permission check results are shown in the
Permission check dialog box. If you’re satisfied
with the permissions for your tool, then update the
credentials.

GitHub, GitHub Enterprise

a. Click Update credentials.
b. Select the Credential type.
▪ If the credential type is Basic Auth, enter the user
name and new password or access token.
▪ If the credential type is OAuth using the GitHub
app, enter the new credential. If you don't want to
check for permissions, then click Update directly,
and the credentials are updated.
To check the permissions, you must enter the
GitHub app slug name.
▪ If the credential type is OAuth using the OAuth app
(not the GitHub app) at GitHub end, enter the new
credential.
c. Click Check permissions.
d. The permission check results are shown in the
Permission check dialog box. If you're satisfied
with the permissions for your tool, then update the
credentials.

Argo CD, SonarQube, Rally

These tools don't check for permissions. To update
credentials:
a. Click Update credentials.
b. Enter the user name and new password or access
token.
c. Click Update to update the credentials.

Permission checks are run on the new credentials. Once permissions check is completed, you
can proceed with updating the credentials. If you want to abort the update, click Cancel.
Permissions required for DevOps tools
Permissions required in your third-party tool to connect to DevOps Change Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1130


<!-- page 1131 -->
Azure DevOps permissions

Important: With the access level permissions specified in the following table in Azure
DevOps, and the ServiceNow DevOps extension, you can connect to Azure DevOps from
ServiceNow. Your Azure DevOps admin does not have to manually configure webhooks and
service connections in Azure DevOps.

Important:
• When onboarding a Project, the Project Administrators privilege requires the owner of
the PAT to be a member of the project's Project Administrators group.
• When onboarding an Organization, the Project Administrators privilege requires the
owner of the PAT to be a member of the organization's Project Collection Administrators
group.

Object

Permissions required

Impact

Work Items

Read

Required to discover the
boards and receive the work
items either through import,
polling, or real time with a
configured webhook.

Code

Read

Required to discover
repositories and receive
branches, commits, and tags
either through import, polling,
or real time with a configured
webhook.

Build

Read and execute

Read: Required to discover
the build pipelines and
receive pipeline execution
details like stages, artifacts,
test results, code security
results, and so on, either
through import, polling, or
real time with a configured
webhook.
Execute: Required to pause or
resume the pipelines based
on the change control step.

Release

Read, write, and execute

Read: Required to discover
the release pipelines and
receive pipeline execution
details like stages, artifacts,
test results, code security
results, and so on, either
through import, polling, or
real time with a configured
webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1131


<!-- page 1132 -->
Object

Permissions required

Impact

Write and Execute: Required
to pause or resume the
pipelines based on change
control step.
Test Management

Read

Required to receive test
results for pipeline execution.

Service Connections

Read, query, and manage

Required to create Service
connection automatically
which is used to configure
ServiceNow tasks like change
acceleration, artifact, and
package registration, and so
on.

Packaging

Read

Required to discover the
artifact repositories and
receive the feeds and
packages either through
import, polling, or real-time
with a configured webhook.

Permissions

Project Administrators

Required to create webhooks
automatically to receive
data in real-time and to
create Service connections
automatically which is used to
configure ServiceNow tasks
like change acceleration,
artifact and package
registration, and so on.

Limitation of Azure DevOps
If you create an Azure tool with custom defined access level, and you reconfigure
such a tool because of change in your Integration user credentials, then the existing
service hooks for release created and release deployment are not updated. Instead,
two new service hooks are created with new configuration details. To avoid the
duplication of these service hooks, you must create the tool with full access level.

Bitbucket
Object

Permissions required

Impact

Account

Read

Required to discover repos
and fetch branches, commit,
pull requests, and tags either
through import, polling, or
configured webhook.

Projects

Read

Required to discover repos
and fetch branches, commit,
pull requests, and tags either
through import, polling, or
configured webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1132


<!-- page 1133 -->
Object

Permissions required

Impact

Webhooks

Read and write

Required to discover repos
and fetch branches, commit,
pull requests, and tags either
through import, polling, or
configured webhook.

Pull requests

Read

Required to discover repos
and fetch branches, commit,
pull requests, and tags either
through import, polling, or
configured webhook.

GitHub permissions
The following table lists the GitHub permissions for basic authentication.

Object

Permissions required

Impact

repo

repo

Required to discover
repositories and their
respective workflows and
receive branches, commits,
pull requests, and tags either
through import, polling, or
real-time with a configured
webhook.

admin:repo_hook

write:repo_hook

Required to create webhooks
automatically to receive repo
data in real time.

admin:repo_hook

read:repo_hook

Required to lookup already
existing webhooks before any
new webhook is automatically
created to receive repo data in
real time.

user

user:email

Required to discover pull
requests actors like approvers,
raised by, merged by,
reviewers, and assignees
either through import, polling,
or real time with a configured
webhook.

The following table lists the GitHub permissions required for OAuth 2.0 authentication.

Object

Permissions required

Impact

Actions

Read-only

Required to receive workflows
associated to the respective
repos real time with a
configured webhook.

Contents

Read-only

Required to discover
repositories and its respective

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1133


<!-- page 1134 -->
Object

Permissions required

Impact

workflows and receive
branches, commits, and tags
either through import/polling
or real time with a configured
webhook.
Deployments

Read and write

Required to resume
the workflow which has
environment with ServiceNow
change as an environment
secret.

Environments

Read-only

Required to lookup for existing
environment secrets for
change creation.

Metadata

Read-only

Required to discover
repositories and its respective
workflows.

Secrets

Read-only

Required to get access to
environment secrets (to create
change).

Webhooks

Read and write

Required to create webhook
automatically to receive repo
data in real time.

Note: Read and write
permissions are required
to configure webhooks
from ServiceNow.
Pull requests

Read-only

Required to discover pull
requests and receive related
details like pull request ID,
commits, raised by, approvers,
comments, reviewers, etc.,
either through import/polling
or real time with a configured
webhook.

Checks

Read-only

Required to process workflow
events associated with private
repositories.

Object

Permissions required

Impact

api

Read and write

Required to discover plans,
repos, and pipelines and
receive branches, commit,
and tags, and pipeline
execution details (like stages,
artifacts, test results, code
security results), work items,
tags, branches, and commits

GitLab permissions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1134


<!-- page 1135 -->
Object

Permissions required

Impact

either through import, polling,
or real time with a configured
webhook. Also, to pause or
resume the pipelines based
on change control step.

Jenkins permissions
Object

Permissions required

Impact

Overall

Read

Required to discover the
pipelines and receive pipeline
execution details like jobs or
stages, artifacts, test results,
code security results, and
so on, either through import,
polling, or real time with
ServiceNow DevOps Jenkins
plugin.

Job

Read

Required to discover the
pipelines and receive pipeline
execution details like jobs or
stages, artifacts, test results,
code security results, and
so on, either through import,
polling, or real time with
ServiceNow DevOps Jenkins
plugin.

Object

Permissions required

Impact

Roles

Administer Platform

Required to access artifact
details like artifact name,
artifact repo, and artifact
version.

Object

Permissions required

Impact

Groups

jira-software-users

Required to discover plans
and fetch features, stories,
and so on, either through
import, polling, or configured
webhook.

Permissions

Jira Administrators

Required to create webhooks
automatically for fetching
features and stories in real
time.

JFrog permissions

Jira permissions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1135


<!-- page 1136 -->
Configure webhooks from the tool record
Configure webhooks from the tool record to send data to DevOps Change Velocity after your tool
is connected.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity, and
respective tool's admin access to access and configure webhooks.

Procedure
1. Navigate to All > Workspaces > DevOps Change Workspace > Tools.
2. Select the required tool to open the tool

record.
3. Select the Configure drop-down menu, and select one of the following actions.

Note: You can also select the a Project, Plan, or Repository record and configure the
corresponding webhooks for them specifically.
Options

Description

Auto configure with existing token

Configures a webhook with your existing to­
ken.

Auto configure with new token

Configures a webhook with a new token.
◦ Configure webhooks in Azure DevOps man­
ually
◦ Configure webhooks in GitHub manually

Configure manually

◦ Configure webhooks in GitLab manually
◦ Configure webhooks in Jira manually
◦ Configure webhooks in Bitbucket manually
◦ Configure webhooks in Argo CD manually
◦ Configure webhooks manually for Jenkins

Webhooks are configured in your third-party tool's instance to send data to DevOps Change
Velocity.

Test webhooks manually
For tools including GitLab, Rally, Split.io, Jira, Bitbucket, and Argo CD, you have to test webhooks
manually if there is any issue with the connection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1136


<!-- page 1137 -->
GitLab
Role required:
• GitLab: GitLab admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
To test webhooks manually in GitLab, you must:
1. Navigate to GitLab and select the project for which you want to test webhooks.
2. Navigate to Settings > Webhooks.
When your project is configured in DevOps Change Velocity, webhooks are created for that
project in GitLab. These webhooks are available under Project Hooks.

For each project, two webhooks are created. One is for code events and the other for
orchestration events.
3. To test a webhook, select Test and select Push events from the list.

Note: You can test for other events as well, for example Tag push events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1137


<!-- page 1138 -->
◦ If the webhook is configured correctly, you’ll receive a success message. For example:

◦ If the webhook is configured incorrectly, you’ll receive an error message. For example:

To fix a webhook, you can try the following options:
▪ Reconfigure the webhooks by selecting Configure from the project record page in DevOps
Change Velocity. This reconfigures all the existing webhooks for the project.
▪ Select Edit for the webhook and verify if the toolId is correct in the URL field. Verify if
the Secret token is correct.
You can find the correct values in the tool record page in DevOps Change Velocity.

For detailed information about webhooks in GitLab, see Webhooks

.

Rally
Role required:
• Rally: Rally admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
Rally doesn't provide an option to directly test for webhook connectivity. If you're not seeing Rally
events in DevOps Change Velocity, you can try the following options:
• From your Rally instance, navigate to My Settings > System Administration > Extensions >
Webhooks.
Check if there’s a corresponding webhook created for your DevOps Change instance, and that
it’s Active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1138


<!-- page 1139 -->
• Reconfigure the webhook by selecting Configure from the project record page in DevOps
Change Velocity. This reconfigures the existing webhook for the project.
For detailed information about webhooks in Rally, see Manage Webhooks

.

Split.io
Role required:
• Split.io: Split.io admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
Split.io doesn't provide an option to directly test for webhook connectivity. If you're not seeing
Split.io events in DevOps Change Velocity, you can try the following options:
• From your Split.io instance, navigate to Admin Settings > Integration settings > Integrations.
Select the Configured tab, and select Edit for the ServiceNow DevOps application.

Check if the ServiceNow DevOps application is configured correctly in Split.io. For details on
configuring, see Enable integration with ServiceNow DevOps in Split tool.
• Check if the status of the ServiceNow DevOps application is Active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1139


<!-- page 1140 -->
• Reconfigure the webhook by selecting Configure from the tool record page in DevOps Change
Velocity. This reconfigures the existing webhook for the Split.io tool.
You can also refer to ServiceNow integration with Split.io

.

Jira
Role required:
• Jira: Jira admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
Jira doesn't provide an option to directly test for webhook connectivity. If you're not seeing Jira
events in DevOps Change Velocity, you can try the following options:
• Navigate to:
◦ For Jira Server navigate to Administration > System > WebHooks.
◦ For Jira Cloud instance, navigate to Settings > System > WebHooks.
Check if there’s a corresponding webhook created for your DevOps Change instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1140


<!-- page 1141 -->
• Select Edit for the webhook.
◦ Check if the status is Enabled.
◦ Check if the Tool ID in the URL field is correct. The Tool ID is the value after ?
toolId=.
◦ Check if the secret token in the URL field is correct. Token value is at the end of the URL,
after token=.

You can find the correct values of the Tool ID and Secret token in the tool record page
in DevOps Change Velocity.
For detailed information about webhooks in Jira, see Webhooks

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1141


<!-- page 1142 -->
• Reconfigure the webhook by selecting Configure from the tool record page in DevOps Change
Velocity. This reconfigures the existing webhook for the Jira tool.

Note:
If you have connected your Jira tool using OAuth 2.0 based authentication, the webhooks
are created for the OAuth 2.0 integration app in Jira when you configure automatically,
whereas if you have connected using basic authentication, the webhooks are created for
all your projects in Jira. If you choose to configure the webhooks manually for a Jira tool
created using OAuth 2.0 based authentication, a duplicate webhook may get created.

Bitbucket
Role required:
• Bitbucket: Bitbucket admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
Bitbucket doesn't provide an option to directly test for webhook connectivity. If you're not seeing
Bitbucket events in DevOps Change Velocity, you can try the following options:
• Navigate to Bitbucket and select the repository for which you want to test webhooks. Navigate
to Repository settings > Workflow > Webhooks.
Check if there’s a corresponding webhook created for your DevOps Change instance.

• Select Edit for the webhook.
◦ Check if the status is Active.
◦ Check if the Tool ID in the URL field is correct. The Tool ID is the value after /event/.
◦ Check if the secret token in the URL field is correct. Token value is at the end of the URL,
after token=.
You can find the correct values of the Tool ID and Secret token in the tool record page
in DevOps Change Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1142


<!-- page 1143 -->
For detailed information about webhooks in Bitbucket, see Manage webhooks

.

• Reconfigure the webhook by selecting Configure from the tool record page in DevOps Change
Velocity. This reconfigures the existing webhook for the Bitbucket tool.

Argo CD
Role required:
• Argo CD: Argo CD admin privileges
• DevOps Change: sn_devops.admin or sn_devops.tool_owner
Argo CD doesn't provide an option to directly test for webhook connectivity. To configure
webhooks, see Configure webhooks in Argo CD manually.

Tool throttling
In DevOps Change Velocity, when a tool is throttled, processing of new events is delayed
until the throttling expires and the tool status changes to Throttled. This is available for Azure
DevOps, GitHub, and GitLab.
When the tool is throttled, you will receive an error

message.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1143


<!-- page 1144 -->
Throttled status
Throttled status means that the tool is not allowing API requests to get data because it has
reached or exceeded a certain usage limit. API response has a rate limit or too many request
errors. In that case, DevOps tool status is changed to Throttled.
Why does this happen
Some tools limit the number of API requests that can be made within a specific amount of time.
This limit helps prevent abuse and denial-of-service attacks, and ensures that the API remains
available for all users.
When this happens, the DevOps tool status is changed to Throttled and further inbound events
aren’t processed until the rate limit imposed by the tool is removed. Till that time, the inbound
events will be in the Deferred state. After the throttle expires, processing of events resumes.
How to reset the throttle
Generally, the tool API provides the information about how long the rate limit will be imposed.
This indicates the throttle reset time. This information is used to resume API requests for that
tool, if there are any pending inbound events or discover or historical import requests.
If a tool doesn't provide the throttle reset time, the default value, which is 15 minutes is applied.
The default value can be changed using the property Default throttle reset time
in minutes from current time (sn_devops.throttle.reset.time.default), from the
DevOps properties page.
Where to check for the throttled status and reset status
Tool Connection Status (sn_devops_tool_connection_status) table contains tool throttling
related information. It has columns like tool, throttle reset time, throttle active, which indicates
which tool is under throttle, when this throttle will be reset, and whether the throttle is active or

not.
REST_RATE_LIMIT_ERROR will be logged in DevOps error logs. Also, the tool under throttle will
have Throttled status.

Retry errored inbound events
Run base system or modified scheduled jobs to retry processing errored inbound events.
Specify the exceptions or errors to retry events that are in an Error state.

Before you begin

Role required: sn_devops.admin

About this task

A scheduled job retries processing inbound events that are in Error state. You can choose to
use the scheduled job with its base-system properties or customize the properties to suit your
needs.
• Run a scheduled job on inbound events that are in error state.
• Update the list of exceptions and errors so that you can retry processing errored inbound
events with those exceptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1144


<!-- page 1145 -->
• Specify the count for maximum attempts the retry jobs runs on an inbound event.
• Specify the time elapsed since the last retry job. The retry job runs again on the errored
inbound events after the duration you specify.
Based on your error or exception, perform any of the following steps to retry processing the
inbound events.

Procedure
1. Modify the Retry Errored Inbound Events scheduled job frequency.
a. Navigate to System Definition > Scheduled Jobs.
b. Search and open the Retry Errored Inbound Events job.
The job checks for errored inbound events.

Note: By default, the scheduled job runs repeat every two minutes. You can modify
the frequency (in minutes), as required.
c. Select the frequency to run the job, from the Run field, and configure the corresponding
fields.
d. Click Update.
You have modified the frequency of the scheduled job.
2. Modify properties related to retry processing inbound events.
a. Navigate to DevOps > Administration > Properties.
b. Modify the Maximum retries for errored inbound events property.

Note: The default value for this property is 3. You can modify the count as needed.
Processing inbound events are retried based on the count you specify.
c. Modify the Time elapsed (in minutes) property.

Note: The default value for this property is 1440 minutes (24 hours). You can modify
the count if required.
Based on the value in this property field, the system retries processing inbound events. For
example, if the last attempt to process the inbound events was on 12 noon on 1 January, by
default, the scheduled job retries processing errored events after 1440 minutes or 1 day from
the timestamp of the last attempt to process the inbound event.
d. To update the exceptions list based on which errored events are retried for processing,
modify the Errors or exceptions (comma separated) for which errored inbound events are
set to Retry property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1145


<!-- page 1146 -->
Note: The default value of this property is TimeOutExceptions,

FlowObjectAPIException. You can update the exceptions you want to retry
processing in a comma-separated format.
The exceptions you enter for the property are checked for the Processing Details field in the
inbound event's record and retries processing.

Result

The scheduled job to retry processing inbound events runs based on either the properties you
have configured or the base system properties that are specified by default.

Customized lists
Create customized lists for your List, Change, Tools, and Administration modules. You can create
your own version of an existing list, or a new one.

Before you begin

Role required: sn_devops.admin, sn_devops.tool_owner, or sn_devops.app_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace.
2. Select the module where you want the list added (List, Change, Tools, or Administration).
3. Select My Lists tab and select Add new list.
You can create a different version of an existing list or a new one.

4. You can create a different version of an existing list or a new one.
◦ To create a list from an existing list:
a. Select the Start from existing tab.
b. From the List drop-down, select an existing list.
c. In the List Name field, give a name for your list.
d. Select the columns from the list that you want in your list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1146


<!-- page 1147 -->
e. If required, add filters for the list.
f. If you want the list sorted by a column, select the column and order in the Sort by section.
g. Select Create.

◦ To create your own list:
a. Select the Create your own tab.
b. From the Select Source list, gselect the table using which you want to create your list.
c. Select the columns that you want in your list.
d. If required, add filters for the list.
e. If you want the list sorted by a column, select the column and order in the Sort by section.
f. Select Create.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1147


<!-- page 1148 -->
Deleting a record in DevOps Change Velocity
Cascade record deletion is implemented to delete all dependent lower level DevOps records
whenever a parent or higher level DevOps entity is deleted. Confirmation popups ensure that
you understand that data will be lost when you delete a record (for example, the record of a tool
connection).
For example, when a Plan record is deleted, all dependent Work Item, Plan Version, and many-tomany relation (like App to Plan, and Work Item to Plan Version) records are deleted.
DevOps cascade deletion is implemented for these tables.
• Pipeline, Pipeline Execution, Step, Orchestration Task, Task Execution
• Repository, Commit, Branch, Tag
• Plan, Work item, Plan Version
• DevOps Tool, Artifact Repository, Artifact, Test Summary / Performance test summary

Delete action on a DevOps form
A user with the sn_devops.admin role can delete a DevOps record, but only if it meets the
defined ACL criteria.

Note: To see the Delete button on a form, you must have the sn_devops.admin role, and
the current record must meet the criteria defined in the scripted ACL.

Entity

Scripted ACL criteria

Pipeline

A Pipeline record can be deleted only if no
other pipeline executions from other pipelines
are dependent on the artifact versions
generated by the pipeline executions of this
pipeline.

Pipeline Execution

A Pipeline Execution record can be deleted
only if no other pipeline executions are
dependent on the artifact versions generated
by this pipeline execution.

Task Execution

A Task Execution record can be deleted if ALL
of these conditions are met.
• There are no step executions referencing it.
• There are no downstream task executions
referencing it.
• There are no pipeline executions dependent
on the artifact versions built by this task
execution.

Step

Orchestration Task

A Step record can be deleted only if there
are no orchestration tasks or step executions
referencing this step.
If the orchestration task has a step associated,
it can be deleted only if there are no task
executions referencing this orchestration task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1148


<!-- page 1149 -->
Entity

Scripted ACL criteria

If the orchestration task does not have a step
associated (example Jenkins freestyle job),
it can be deleted only if no other pipeline
executions are dependent on the artifact
versions generated by the task executions of
this orchestration task.
Repository

A Repository record can be deleted only if
none of the commits of this repository are
associated to the artifact versions (Artifact
Version to Commit table) or task executions
(Run Commit table).
Therefore, before cleaning up the repository,
delete the dependent pipeline entities.

Branch

A Branch record can be deleted only if there
are no commits associated to it in the Branch
To Commit table.

Tag

A Tag record cannot be deleted by a
sn_devops.admin.

Commit

A Commit record can be deleted if ALL of
these conditions are met.
• The commit is not associated to the artifact
version (Artifact Version to Commit table).
• The commit is not associated to task
executions (Run Commit table).
• The commit is not being referenced by other
commits as a revert commit.

Plan

Work Item

A Plan record can be deleted only if none of
the work items of this plan are associated or
referenced by any commits.
A Work Item record can be deleted if ALL of
these conditions are met.
• The work item is not being referenced by
another work item as parent.
• There are no commits referencing or
associated to this work item.

Plan Version

A Plan Version record can be deleted only if
there are no work items associated to it in the
Work Item To Plan Version table.

Test Summary / Performance Test Summary

A Test Summary record can be deleted only if
it doesn’t have an associated related record
(Artifact version/Package/Task Execution) in
the Test Summary Relations table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1149


<!-- page 1150 -->
Entity

Scripted ACL criteria

Artifact

An Artifact Record can be deleted only if
all the artifact versions belonging to it are
deletable.

Artifact Repository

An Artifact Repository record can be deleted
only if all the artifacts belonging to it are
deletable.

Artifact Version

An Artifact Version record can be deleted only
if it's built by task execution field is empty.

Artifact Staged Request

An Artifact Staged Request record can be
deleted when it is either an orphaned record,
or the state is Processed / Error.

Package

A Package record can be deleted if ALL of
these conditions are met.
• There are no pipeline executions referenced
to it.
• The built by task execution value on the
Package record is null.

DevOps Tool

Build Test Summary

A DevOps Tool record cannot be deleted by a
sn_devops.admin.
These entities cannot be deleted by a
sn_devops.admin.

Build Test Result
Commit Details
Event
Inbound Event

DevOps record delete cascade
Deleting a record in a parent table cascade deletes all the child records in the hierarchy.

Parent record being deleted

Pipeline

Cascade deleted child records

Step: Orchestration Task
Pipeline Execution:
• Step Execution
• Callback
• Task Execution
◦ Package
◦ Run Commit
◦ Test Summary Relations
◦ Build Test Summary: Build Test Result

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1150


<!-- page 1151 -->
Parent record being deleted

Cascade deleted child records

◦ Artifact Version
▪ Artifact Staged Request
▪ Artifact Version To Commit
▪ Artifact Version To Package
Pipeline Execution

Step Execution
Callback
Task Execution:
• Package
• Run Commit
• Test Summary Relations
• Build Test Summary: Build Test Result
• Artifact Version
◦ Artifact Staged Request
◦ Artifact Version To Commit
◦ Artifact Version To Package

Step

None.
A Step record can be deleted only if there
are no Orchestration Task or Step Execution
records associated to it.

Orchestration Task

Task Execution
• Package
• Run Commit
• Test Summary Relations
• Build Test Summary: Build Test Result
• Artifact Version
◦ Artifact Staged Request
◦ Artifact Version to Commit
◦ Artifact Version to Package

Repository

Tag
Branch: Branch to Commit
Commit:
• Commit Details
• Branch to Commit
• Tag

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1151


<!-- page 1152 -->
Parent record being deleted

Cascade deleted child records

Branch

Branch to Commit

Tag

No dependent child records.

Commit

Commit Details
Branch to Commit
Tag

Plan

Work Item
App to Plan
Plan Version: Work Item to Plan Version

Work Item

Work Item to Plan Version

Plan Version

Work Item to Plan Version

Test Summary / Performance Test Summary

Test Summary Relations

Artifact

Artifact Version
• Artifact Staged Request
• Artifact Version to Commit
• Artifact Version to Package

Artifact Repository

Artifact
Artifact Version:
• Artifact Staged Request
• Artifact Version to Commit
• Artifact Version to Package

DevOps Tool

Event
Inbound Event
Test Summary / Performance Test Summary:
Test Summary Relations
Plan:
• Work Item
• App to Plan
• Plan Version: Work Item to Plan Version
Artifact Repository
Artifact
Artifact Version:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1152


<!-- page 1153 -->
Parent record being deleted

Cascade deleted child records

• Artifact Staged Request
• Artifact Version to Commit
• Artifact Version to Package
Repository:
• Tag
• Branch: Branch to Commit
• Commit
◦ Commit Details
◦ Branch to Commit
◦ Tag
Pipeline
• Step: Orchestration Task
• Pipeline Execution
◦ Step Execution
◦ Callback
◦ Task Execution
▪ Package
▪ Run Commit
▪ Test Summary Relations
▪ Build Test Summary: Build Test Result
▪ Artifact Version
▪ Artifact Staged Request
▪ Artifact Version To Commit
▪ Artifact Version To Package

DevOps record delete cascade exceptions
These records are always deleted in the foreground.

Parent record being deleted

Artifact Version

Cascade deleted child records

These records are deleted along with Artifact
Version.
• Artifact Staged Request
• Artifact Version To Commit
• Artifact Version to Package

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1153


<!-- page 1154 -->
Parent record being deleted

Build Test Summary

Package

Cascade deleted child records

These records are deleted along with Build
Test Summary.
These records are deleted along with Package.
• Artifact Staged Request
• Artifact Version to Package

Foreground deletion threshold property
Deletion of DevOps records occurs in the foreground (synchronously) by default. Meaning, other
UI actions cannot be performed during synchronous deletion. Because the deletion of a parent
record can result in the deletion of multiple child records, you can set a threshold value so the
remaining records are deleted in the background.

Note: Artifact Version, Build Test Summary, and Package records are always deleted in the
foreground.
To set the DevOps Cascade delete threshold property, navigate to DevOps > Administration >
Properties. Define the total number of records that can be cascade deleted in the foreground,
after which the remaining records are deleted in the background. Default is 1000.

Note: The records of tables in a hierarchy are deleted in a bottom-up manner. For
example, it might be possible that even after triggering the delete action on a Repository
record, it will still be available for read, write, and update in the system until deletion is
complete.
DevOps record deletions do not trigger any business rules or workflows.

DevOps record deletion UI
Cascade delete of a DevOps record triggers multiple confirmation approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
Map spoke alias as parent alias for new DevOps tool
Create Jira, GitHub or Jenkins tool with parent alias set to respective spoke alias instead of
DevOps Basic authentication. Use a script include to reset parent alias to spoke alias for existing
or onboarded tool.

Before you begin

Important: This feature is currently supported for Jira spoke v3.1, Jenkins spoke v2.1.1,
and GitHub spoke v2.2.2, and later only.
• Ensure that you have an Integration Hub subscription.
• Ensure that you have set up the connection and credential alias using spoke for Jira, Jenkins
and GitHub . For more information, see:
◦ Jira spoke
◦ Jenkins spoke
◦ GitHub spoke
• Upgrade to DevOps Data Model and DevOps Integrations version 1.33 or later.
Role required: admin, sn_devops.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
About this task

Whenever you create a Jira, Jenkins, and GitHub tool, the parent alias will be set to
their respective spoke alias, if you have set up the spokes for the supported tools. In
previous versions, when we created a tool, the parent alias was set to DevOps Basic Auth
(sn_devops.DevOps_BasicAuth) for all the tools we onboarded.
If you have already created / onboarded tools with a connection and credential alias; the
functionality does not change on upgrade and the parent alias remains DevOps Basic Auth
(sn_devops.DevOps_BasicAuth) unless Jira, Jenkins, and GitHub tools are associated to spoke
alias as parent alias. You can use a base system script include to ensure that the parent alias is
reset to the spoke alias, for all existing and supported tools that were created earlier.

Note: Integration Hub uses aliases to manage connection and credential information.
Using an alias eliminates the need to configure multiple credentials and connection
information profiles when using multiple environments. If the connection or credential
information changes, you don't need to update any actions that use the connection. For
more information, see Connections and Credentials .

Procedure
1. Navigate to All > System Definition > Script Includes >
DevOpsReparentingConnectionAliasFixScript.
2. Copy the script from the Script field.
3. Navigate to System Definition > Scripts - Background.
4. Paste the script in the Run script (JavaScript executed on server) field.

Note: Ensure that the script is run in Global scope.
Once the script run is successfully completed, all supported tools created prior to the version
1.33 upgrade, are reset to their corresponding parent alias.

What to do next

Verify that the parent alias is set to sn_jira_spoke.Jira for Jira, sn_github_spoke.GitHub for
GitHub, and sn_jenkins_v2_spoke.Jenkins_v2 for Jenkins in the Connection & Credentials
Aliases form.

Delete orphan connection and credential aliases
Delete the connection and credential aliases that do not label any connection or credential
record by running a background script. This helps you in freeing up space in your system.

Before you begin

Role required: System Admin (admin)

Procedure
1. Navigate to All > System Definitions > Scripts - Background.
2. Select the scope as global.
3. Enter the following script in the Run script (JavaScript executed on server) pane.
deleteOrphanAliases();
function deleteOrphanAliases() {
var orphanAliases = new GlideRecord('sys_alias');
orphanAliases.addEncodedQuery("nameSTARTSWITHDevOps-_-");
orphanAliases.query();
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
while(orphanAliases.next()) {
if
(!checkIfAliasHasConnection(orphanAliases.getUniqueValue()))
orphanAliases.deleteRecord();
}
};
function checkIfAliasHasConnection(sysAliasId) {
var httpToolConnGR = new GlideRecord("http_connection");
httpToolConnGR.addEncodedQuery("connection_alias=" +
sysAliasId);
httpToolConnGR.query();
if (httpToolConnGR.next())
return true;
return false;
};
4. Select Run script.

Implement custom actions for pipelines using a generic Docker container
image
Use the ServiceNow custom actions to collect data related to change request creation, Sonar
scan, artifact registration, and package registration in your pipeline with the help of the generic
Docker Container Image.
Docker Image is a software package that can be used to run an application. This image informs
how a container should instantiate, and which software components must be run. Docker
Container is a virtual environment that combines application code and all the dependencies
required to run the application. For more information on Docker, see Docker documentation .

Environmental variables for GitLab
To configure Docker Images, the following environmental variables must be available in your
GitLab instance for your project.
• SNOW_TOKEN: ServiceNow token number. It’s a masked variable and wont be displayed in the
jobs.
• SNOW_TOOLID: ServiceNow tool ID.
• SNOW_URL: ServiceNow instance URL.
When you configure a GitLab project, the environmental variables are created for the project and
the latest configured variable values are considered. If you’re an upgrading customer, you must
reconfigure your existing GitLab projects or manually add the environmental variables in your
GitLab instance. For information on adding variables, see GitLab documentation .
When adding the SNOW_TOKEN variable, you can acquire the token by selecting the Copy token
button on the tool record, located in the Tool [sn_devops_tool] table.
The environmental variables must be updated with the values available in the Configure
webhooks manually pop-up in the tool record page. For details on how to view the connection
details, see Configure webhooks from the tool record and Configure webhooks in GitLab
manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


<!-- page 1158 -->
Environmental variables for GitHub Actions
To configure Docker Images, certain environmental variables must be available in your GitHub
Actions instance.
The following environmental variables must be configured in your GitHub Actions instance.

Note: The variables must be updated with the values available in the Configure webhooks
manually pop-up in the tool record page.
• SNOW_TOKEN: ServiceNow token number. It’s a masked variable and wont be displayed in the
jobs.
• SNOW_TOOLID: ServiceNow tool ID.
• SNOW_URL: ServiceNow instance URL.

Note: For information on adding variables in GitHub Actions, see GitHub documentation

.

The following environment variables must be passed in your GitHub Actions pipeline:

Note: The values for these variables are dynamically retrieved from GitHub, and you don’t
have to configure them separately.
• PIPELINE_ID: Workflow run ID of a repository. Usage - PIPELINE_ID: ${{github.run_id }}
• API_V4_URL: URL of the GitHub server. Usage - API_V4_URL: ${{ github.server_url }}
• JOB_ID: Workflow run ID of a repository. Usage - PIPELINE_ID: ${{ github.run_id }}
• PROJECT_PATH: Name of the workflow. Usage - PROJECT_PATH: ${{ github.repository }}/
${{github.workflow}}
• REPOSITORY_NAME: Name of the repository. Usage - REPOSITORY_NAME:
${{ github.repository }}
• RUN_ATTEMPT: Number of workflow attempts. Usage - RUN_ATTEMPT:
${{ github.run_attempt }}
• PROJECT_TITLE: Name of the workflow. Usage - PROJECT_TITLE: ${{ github.repository }}/
${{github.workflow}}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
• COMMIT_BRANCH: Name of the branch on which the workflow is running. Usage COMMIT_BRANCH: ${{ github.ref_name }}
• WORKFLOW_NAME: Name of the workflow. Usage - WORKFLOW_NAME: ${{ github.workflow }}
When you configure a repository, the environmental variables are created for the repository
and the latest configured variable values are considered. If you’re an upgrading customer, you
must reconfigure your existing repositories or manually add the environmental variables in your
instance.

Environmental variables for Harness
To configure Docker Images, certain environmental variables must be available in your Harness
instance.
The following environmental variables must be configured in your Harness instance.

Note: The variables must be updated with the values available in the Configure webhooks
manually pop-up in the tool record page.
• SNOW_TOKEN: ServiceNow token number. It’s a masked variable and wont be displayed in the
jobs.
• SNOW_TOOLID: ServiceNow tool ID.
• SNOW_URL: ServiceNow instance URL.
The following environment variables must be passed in your Harness pipeline:

• HARNESS_STAGE_NAME: "<+stage.identifier>"
• HARNESS_PIPELINE_NAME: "<+org.identifier>/<+project.identifier>/<+pipeline.name>"
When you configure a repository, the environmental variables are created for the repository
and the latest configured variable values are considered. If you’re an upgrading customer, you
must reconfigure your existing repositories or manually add the environmental variables in your
instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
ServiceNow Docker Image
You must pass the ServiceNow Docker Image (servicenowdocker/sndevops:6.2.0) in your
pipeline before adding custom actions in your pipeline. You can clone the app-devops-gitlab
public repository located at https://github.com/ServiceNow/app-devops-gitlab , and create the
Docker Image by running the following commands:
docker build -t servicenowdocker/sndevops:6.2.0
docker push servicenowdocker/sndevops:6.2.0
You can add the Docker Image at the starting of the .yml file. You don’t have to add it for each job
separately.

Note: If you want to use multiple images, then add them at the job levels.
You can also customize the app-devops-gitlab public repository and create your own Docker
Image to pass in the pipeline.

Proxy configuration
If your GitLab instance runs behind a proxy server or you want to route requests through a proxy,
you must configure proxy settings using environment variables in your Docker deployment.
Configure the following environment variables for proxy support:
• PROXY_ENDPOINT:

for example, http://localhost:7080 or https://proxy.example.com:8080

• PROXY_USERNAME:

Optional: for proxy authentication

• PROXY_PASSWORD:

Optional: for proxy authentication

• PROXY_AUTH:

Optional: alternative authentication using API key

PROXY_ENDPOINT can be either HTTP or HTTPS. For backward compatibility, HTTP_PROXY
and HTTPS_PROXY are also supported. If you’re using self-signed certificates with HTTPS proxy,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
set NODE_TLS_REJECT_UNAUTHORIZED=0 (for testing only). Authentication can be provided
through the following ways:
• Username/Password: Use PROXY_USERNAME and PROXY_PASSWORD
• API Key: Use PROXY_AUTH
• No authentication: Leave authentication variables unset
For example:
stages:
- package
package:
stage: package
image: servicenowdocker/sndevops:6.2.0
variables:
PROXY_ENDPOINT: "https://proxy.example.com:8080"
PROXY_USERNAME: "proxy_user"
PROXY_PASSWORD: "proxy_pass"
script:
- sndevopscli create package -n "package-name" -a
'[{"name":"artifact-name","repositoryName":"artifact-repo-name"
,"version":"1.3.0"}]'

ServiceNow DevOps Change Step
Add the ServiceNow DevOps Change custom step at the job level to create a change in your
ServiceNow instance. For example:
stages:
- DevOpsChangeApproval
ServiceNow DevOps Change:
stage: DevOpsChangeApproval
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"attributes\":
{\"short_description\":\"Software
Deployment\",\"description\":\"Software
Deployment.\",\"assignment_group\":\"xxxxxxxxx\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}}"

Note: If you’re using both the Docker change step and the when: manual instruction
change step, confirm that you add them at different job levels.
You must enter the input values for this custom action as a JSON-formatted string.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
• changeStepDetails: [optional] It holds the timeout and interval details.
• interval: [optional] The time in seconds to wait between trying the API. The default value is 100
seconds.
• timeout: [optional] The maximum time in seconds to wait until the action should fails. The
default value is 3600 seconds.

Note: When the timeout value is available here as well in your tool, the timeout value
that is earlier is considered.
• attributes: [optional] The change request attribute details are to be used while creating
a change in a ServiceNow instance. The change request is a JSON object surrounded
by curly braces {} containing key-value pairs separated by a comma(,). A key-value pair
consists of a key and a value separated by a colon(:). The keys supported in key-value pair
are short_description, description, assignment_group, implementation_plan, backout_plan,
test_plan, and so on.
• -ctx: [optional] Additional context parameters in JSON format. Environmental variable details
from GitHub that will be used to build the request for the DevOps Change API. For example,
sndevopscli create change -ctx "{\"projectId\": \"123456\",
\"attemptNumber\": \"${{ github.run_attempt }}\"}" -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"autoCloseChange\":true,\
"attributes\":{\"short_description\":\"G Venkata Automated
Software Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":
\"a715cd759f2002002920bde8132e7018\",\"implementation_plan\":
\"Software update is tested and results can be found in
Test Summaries Tab.\",\"backout_plan\":\"When software
fails in production, the previous software release will be
re-deployed.\",\"test_plan\":\"Testing if the software was
successfully deployed or not\"}}"
• -w: [optional] Specify whether the pipeline should wait for change creation and approval. By
default, the pipeline will be waiting until the change creation and it's approval.

Note: The name of the change step must contain the ServiceNow DevOps Change
keyword, which is the job name.
Deployment gate
This attribute enables the passing of data during change request creation using the
sndevopscli, and at the same time uses the manual job functionality provided
by tools like GitLab. For example:
stages:
- DevOpsChangeApproval
- deploy
ServiceNow DevOps Change:
stage: DevOpsChangeApproval
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create change -p
'{"changeStepDetails":{"timeout":3600,"interval":100},
"deploymentGateDetails":{"jobName":"sn-change-job"},"at
tributes":{"short_description":"Automated Software
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
Deployment","description":"Automated Software
Deployment.","implementation_plan":"Software
update is tested and results can be found in Test
Summaries Tab.","backout_plan":"When software fails
in production, the previous software release will be
re-deployed.","test_plan":"Testing if the software was
successfully deployed or not"}}'
sn-change-job:
stage: deploy
needs:
job: ServiceNow DevOps Change
when: manual
allow_failure: false
script: |
echo sn-change-job
The optional deploymentGateDetails attribute must contain a jobName attribute,
which holds the name of the downstream manual job in the pipeline.

ServiceNow DevOps SonarScan Results
Add the ServiceNow DevOps SonarScan Results custom step at the job level to create a Sonar
summary in your ServiceNow instance. For example:
stages:
- DevOpsSonarStage
ServiceNow DevOps SonarScan Results:
stage: DevOpsSonarStage
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create sonar -url 'https://sonarcloud.io'
-projectKey 'devsystem2019_TestImportTest'

• url: [Required] This specifies the Sonar URL.
• projectKey: [Required] This specifies the Sonar project key.

Note: The name of the Sonar step must be same as the job name, which is ServiceNow
DevOps SonarScan Results.
Limitation
While creating software quality summary results, the
MERGE_REQUEST_SOURCE_BRANCH_NAME environment variable will be used
for merge pipelines, and DEFAULT_BRANCH will be used for tag pipelines because
the COMMIT_BRANCH variable isn’t available for merge or tag pipelines. For more
information, see GitLab documentation .

Register Artifact
Add the artifact custom step at the job level to register an artifact in your ServiceNow instance.
For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
stages:
- artifact
artifact:
stage: artifact
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create artifact -a
"[{\"name\":\"Artifact-${JOB_NAME}\",\"repositoryName\":
\"Repo\",\"version\":\"1.${JOB_ID}.0\"}]"

You must enter the input values for this custom action as a JSON-formatted string.
-a: [Required] This value specifies the artifact details.

Register Package
Add the package custom step at the job level to register a package in your ServiceNow instance.
For example:
stages:
- package
package:
stage: package
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create package -n "Package2" -a
"[{\"name\":\"Artifact-${JOB_NAME}\",\"repositoryName\":
\"Repo\" ,\"version\":\"1.${JOB_ID}.0\"}]"
You must enter the input values for this custom action as a JSON-formatted string.
-n: [Required] This specifies the package name.

Get change
Add at job level to get changeRequestNumber from ServiceNow instance with the given
changeDetails to identify the change request.
For example:

stages:
- DevOpsGetChange
ServiceNow DevOps Get Change:
stage: DevOpsGetChange
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli get change -p
"{\"buildNumber\":${CHG_JOB_ID},\"stageName\":\"ServiceNow
DevOps Change
Step\",\"pipelineName\":\"GitlabDockerGetAndUpdateChange\"}"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
-p: It stands for changeDetails. The change details to be used
for identifying change request in ServiceNow instance. The
change details is a JSON object surrounded by curly braces {}
containing key-value pair separated by a comma ,. A key-value
pair consists of a key and a value separated by a colon :. The
keys supported in key-value pair are buildNumber, pipelineName,
stageName
buildNumber: [mandatory]
This specifies ID of the Job where we have created change
request.
stageName: [mandatory]
This specifies the Job name where we have created change
request..
pipelineName: [mandatory]
This specifies the pipeline name.
Outputs:
sndevopschg.json file created with content: {
"status": "SUCCESS",
"changeRequestNumber": "CHGXXXXX"
}
changeRequestNumber: Change Request Number found for the given
change details
status: To know the status of the Change Request GET.

Update change
Add at job level to update change in ServiceNow instance for the changeRequestNumber
provided as input along with changeRequestDetails.
For example:
stages:
- DevOpsUpdateChangeStage
ServiceNow DevOps Update Change:
stage: DevOpsUpdateChangeStage
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli update change -n 'CHGXXXXXX' -p
"{\"short_description\":\"G Venkata12345 Automated
Software Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":\"XXXXX\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}"
-n [Not mandatory if we have sndevopschg.json in our pipeline
yml]: It stands for changeRequestNumber. The change request
number to identify a unique change request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
Precedence of choosing changeRequestNumber:
- changeRequestNumber mentioned in the pipeline yml
- changeRequestNumber stored in sndevopschg.json.
-p : It stands for changeDetails. The change details to be used
for Updating the change request information identified by the
specified change request number with the key-value pairs. The
change details is a JSON object surrounded by curly braces {}
containing key-value pair separated by a comma ,. A key-value
pair consists of a key and a value separated by a colon :. The
keys supported in key-value pair are short_description, state,
description, work_notes ..so on
OR
- sndevopscli update change -p
"{\"short_description\":\"Updated Automated Software
Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":\"XXXXXXXXXX\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}"
NOTE: State should be specified at last in case if you are
update the state of change request.
- sndevopscli update change -p "{\"short_description\":\"Updated
Automated Software Deployment\",\"description\":\"Automated
Software
Deployment.\",\"assignment_group\":\"XXXXXXXXXX\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\","state":"3"}'

Auto close change
Incorporate auto close change in ServiceNow instance. For detailed information about auto
close, see Configuring DevOps change request details within the pipeline.
For example:
stages:
- changeapproval
ServiceNow DevOps Change Step:
stage: changeapproval
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"autoCloseChange\":true,\"a
ttributes\":{\"short_description\":\"G Venkata Automated
Software Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":\"xxxxxxxx\",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}}"
autoCloseChange: [optional] : Boolean value

Security scan results
Add the ServiceNow DevOps Security Scan Results custom step at the job level to retrieve
security scan results. For example:
stages:
- DevOpsSecurityScanStageServiceNow
ServiceNow DevOps Security Scan Results:
stage: DevOpsSecurityScanStageimage
image: servicenowdocker/sndevops:6.2.0
script:
- sndevopscli create securityScan -p
"{\"pipelineInfo\":{\"buildNumber\":
\"${PIPELINE_ID}\",\"pipelineExecutionUrl\":
\"${PIPELINE_URL}\" },\"securityResultAttributes\":
{ \"scanner\":\"Veracode\",\"applicationName\":
\"PetStoreAPI-Github\",\"buildVersion\":\"\",\"securityToolId\":
\"\"}}"
-p: [mandatory]It the payload of security result attributes.
The payload will have attributes as follows:
buildNumber: PIPELINE_ID (mandatory)pipelineExecutionUrl:
PIPELINE_URL (mandatory)scanner: Scanning tool and is required
e.g. Checkmarx One.projectName/projectId: Name/Id of your
Checkmarx One project and is required. This attribute is
applicable only for Checkmarx One.applicationName: Name of
your Veracode application and is required. This attribute
is applicable only for Veracode.buildVersion": Veracode
Scan name / build version and is optional. This attribute is
applicable only for Veracode.scanId: Checkmarx One scan id and
is optional. This attribute is applicable only for Checkmarx
One.securityToolId: Security tool onboarded in ServiceNow
(sys_id of the onboarded security tool) and is optional.

Sample pipelines
Example: Sample GitLab pipeline
image: servicenowdocker/sndevops:6.2.0
stages:
- pre-build
- build
- sonar
- securityscan
- changeapproval
- getchange
- updatechange
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
- deploy

Pre-Build:
stage: pre-build
script:
- echo $JOB_NAME
Artifact and Package:
stage: build
script:
- sndevopscli create artifact -a
"[{\"name\":\"Artifact-${JOB_NAME}\",\"repositoryName\":
\"TestRepo\",\"version\":\"1.${RUNNER_ID}.0\"}]"
- sndevopscli create package -n "Test_Package" -a
"[{\"name\":\"Artifact-${JOB_NAME}\",\"repositoryName\":
\"TestRepo\",\"version\":\"1.${RUNNER_ID}.0\"}]"

ServiceNow DevOps SonarScan Results:
stage: sonar
script:
- sndevopscli create sonar -url 'https://sonarcloud.io'
-projectKey 'xxxxxxx'

ServiceNow DevOps Security Scan Results:
stage: securityscan
script:
- sndevopscli create securityScan -p
"{\"pipelineInfo\":{\"buildNumber\":\"${JOB_ID}\",
\"stageName\":\"ServiceNow DevOps Security Scan
Results\",\"taskExecutionUrl\":\"${JOB_URL}\" },
\"securityResultAttributes\":{ \"scanner\":\"Veracode\",
\"applicationName\":\"PetStoreAPI-Github\",\"buildVersion\":
\"\",\"securityToolId\":\"\"}}"
ServiceNow DevOps Change Step:
stage: changeapproval
variables:
CHG_JOB_ID: $JOB_ID
script:
- echo "CHG_JOB_ID=$CHG_JOB_ID" >> generated_job_id.env
- sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"autoCloseChange\":true,\"a
ttributes\":{\"short_description\":\"G Venkata Automated
Software Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":
\"a715cd759f2002002920bde8132e7018\",\"implementation_plan\":
\"Software update is tested and results can be found in
Test Summaries Tab.\",\"backout_plan\":\"When software
fails in production, the previous software release will be
re-deployed.\",\"test_plan\":\"Testing if the software was
successfully deployed or not\"}}"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
- sndevopscli get change ✅If we are placing get change cli
command in the same job where we are creating change then no
need to mention the changeDetails.
artifacts:
paths:
- generated_job_id.env
DevOps Get Change:
stage: getchange
script:
- source generated_job_id.env
- sndevopscli get change -p
"{\"buildNumber\":${CHG_JOB_ID},\"stageName\":\"ServiceNow
DevOps Change
Step\",\"pipelineName\":\"SmrutiTestDemoProject\"}"
artifacts:
paths:
- sndevopschg.json
dependencies:
- ServiceNow DevOps Change Step
DevOps Update Change:
stage: updatechange
script:
✅- sndevopscli update change -n 'CHGXXXX'
-p "{\"short_description\":\"Automated Software
Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":\"xxxxxxx\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}"
- sndevopscli update change -p
"{\"short_description\":\"Updated Automated Software
Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":\"xxxxxxx\",
\"implementation_plan\":\"Software update is tested and results
can be found in Test Summaries Tab.\",\"backout_plan\":\"When
software fails in production, the previous software release
will be re-deployed.\",\"test_plan\":\"Testing if the software
was successfully deployed or not\"}"
dependencies:
- DevOps Get Change
Deploy Job:
stage: deploy
script:
- echo $JOB_NAME

Example: Sample GitHub Actions pipeline
name: GithubAction
on:
push:
branches: ["main"]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
pull_request:
branches: ["main"]
permissions:
contents: read
env:
SNOW_URL: ${{ secrets.SNOW_URL }}
SNOW_TOKEN: ${{ secrets.SNOW_TOKEN }}
SNOW_TOOLID: ${{ secrets.SNOW_TOOLID }}
✅ These are the optional env variables
✅PIPELINE_ID: ${{ github.run_id }}
✅API_V4_URL: ${{ github.server_url }}
✅JOB_ID: ${{ github.run_id }}
✅PROJECT_PATH: ${{ github.job }}
✅REPOSITORY_NAME: ${{ github.repository }}
✅RUN_ATTEMPT: ${{ github.run_attempt }}
✅PROJECT_TITLE: ${{ github.repository }}/${{github.workflow}}
✅COMMIT_BRANCH: ${{ github.ref_name }}
✅WORKFLOW_NAME: ${{ github.workflow }}
jobs:
build:
runs-on: ubuntu-latest
steps:
- name: Set up JDK 17
run: |
echo 'hello'
ServiceNowDevOpsChange:
runs-on: ubuntu-latest
needs: build
container:
image: servicenowdocker/sndevops:6.2.0
env:
JOB_NAME: "ServiceNowDevOpsChange"
steps:
- name: create change
run: |
sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":10},\"autoCloseChange\":true,\"at
tributes\":{\"short_description\":\"G Venkata Automated
Software Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":
\"a715cd759f2002002920bde8132e7018\",\"implementation_plan\":
\"Software update is tested and results can be found in
Test Summaries Tab.\",\"backout_plan\":\"When software
fails in production, the previous software release will be
re-deployed.\",\"test_plan\":\"Testing if the software was
successfully deployed or not\"}}"
ServiceNowUpdateDevOpsChange:
runs-on: ubuntu-latest
needs: ServiceNowDevOpsChange
container:
image: servicenowdocker/sndevops:6.2.0
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


<!-- page 1171 -->
env:
JOB_NAME: "ServiceNowDevOpsChange"
steps:
- name: update change
run: |
sndevopscli update change -p
"{\"short_description\":\"Updated Automated Software
Deployment\",\"description\":\"Automated Software
Deployment.\",\"assignment_group\":
\"a715cd759f2002002920bde8132e7018\",\"implementation_plan\":
\"Software update is tested and results can be found in
Test Summaries Tab.\",\"backout_plan\":\"When software
fails in production, the previous software release will be
re-deployed.\",\"test_plan\":\"Testing if the software was
successfully deployed or not\"}"
ArtifactAndPackage:
runs-on: ubuntu-latest
needs: build
container:
image: servicenowdocker/sndevops:6.2.0
env:
JOB_NAME: "ArtifactAndPackage"
steps:
- name: create artifact
run: |
sndevopscli create artifact -a
"[{\"name\": \"com:customactiondemo\",\"version\":
\"1.${{ github.run_number }}\",\"semanticVersion\":
\"1.${{ github.run_number }}.0\",\"repositoryName\":
\"${{ github.repository }}\"}]"
sndevopscli create package -n "Test_Package"
-a "[{\"name\": \"com:customactiondemo\",\"version\":
\"1.${{ github.run_number }}\",\"semanticVersion\":
\"1.${{ github.run_number }}.0\",\"repositoryName\":
\"${{ github.repository }}\"}]"
ServiceNowDevOpsSonarScanResults:
name: ServiceNowDevOpsSonarScanResults
needs: ArtifactAndPackage
runs-on: ubuntu-latest
container:
image: servicenowdocker/sndevops:6.2.0
env:
JOB_NAME: "ServiceNowDevOpsSonarScanResults"
steps:
- name: devops soanr results
run: |
sndevopscli create sonar -url
'https://sonarcloud.io' -projectKey 'xxxxxxx'
ServiceNowDevOpsSecurityScan:
name: ServiceNowDevOpsSecurityScan
runs-on: ubuntu-latest
needs: build
container:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
image: servicenowdocker/sndevops:6.2.0
steps:
- name: security scan
run: |
sndevopscli create securityScan -p
"{ \"pipelineInfo\": { \"runId\": \"${{ github.run_id }}\",
\"runNumber\": \"${{ github.run_number }}\",
\"runAttempt\": \"${{ github.run_attempt }}\",
\"job\": \"ServiceNowDevOpsSecurityScan\",
\"workflow\": \"${{ github.workflow }}\", \"repository\":
\"${{github.repository}}\" }, \"securityResultAttributes\":
{ \"scanner\": \"Veracode\",
\"applicationName\":
\"PetStoreAPI-Github\",\"buildVersion\": \"\",
\"securityToolId\": \"\"}}"

Example: Sample Harness pipeline
✅ This is an example pipeline, and your pipeline and container
configurations may vary from the setup shown here.
✅ Refer to the pipeline stages for Security, Software, and
Change configurations.
✅ Using this YAML file directly will not work as it contains
several Harness-specific configurations; check the Command
section present for container steps.
pipeline:
name: Example pipeline
identifier: Example_pipeline
projectIdentifier: Example_project
orgIdentifier: ExampleOrg
tags: {}
stages:
- stage:
name: Build
identifier: Build
description: ""
type: Custom
spec:
execution:
steps:
- step:
type: ShellScript
name: ShellScript_1
identifier: ShellScript_1
spec:
shell: Bash
executionTarget: {}
source:
type: Inline
spec:
script: echo "Building.."
environmentVariables: []
outputVariables: []
timeout: 10m
tags: {}
- stage:
name: ServiceNow DevOps Sonar Scan Results
identifier: ServiceNow_DevOps_Sonar_Scan_Results
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
description: ""
type: Custom
spec:
execution:
steps:
- step:
type: Container
name: Sonar container
identifier: Sonar_container
spec:
connectorRef: docker_connector ✅ harness
docker connector
image: servicenowdocker/sndevops:6.2.0
command: |export SNOW_URL="<+variable.SNOW_URL>"
export
SNOW_TOOLID="<+variable.SNOW_TOOLID>"
export SNOW_TOKEN="<+variable.SNOW_TOKEN>"
export
HARNESS_STAGE_NAME="<+stage.identifier>"
export
HARNESS_PIPELINE_NAME="<+org.identifier>/<
+project.identifier>/<+pipeline.name>"
export COMMIT_BRANCH="main"
sndevopscli create sonar -url
'https://sonarcloud.io' -projectKey 'SONAR_PROJECT_KEY' -branch
"main"
shell: Sh
infrastructure:
type: KubernetesDirect
spec:
connectorRef: KUBE_CONNECTOR ✅ harness
kubernates connector
namespace: harness-delegate-ng
resources:
limits:
cpu: "0.5"
memory: 500Mi
annotations: {}
labels: {}
containerSecurityContext:
capabilities:
drop: []
add: []
nodeSelector: {}
reports:
type: JUnit
spec:
paths: []
outputVariables: []
envVariables: {}
timeout: 1h
tags: {}
- stage:
name: ServiceNow DevOps Security Scan Results
identifier: ServiceNow_DevOps_Security_Scan_Results
description: ""
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
type: Custom
spec:
execution:
steps:
- step:
type: Container
name: security
identifier: security
spec:
connectorRef: docker_connector ✅ harness
docker connector
image: servicenowdocker/sndevops:6.2.0
command: |export SNOW_URL="<+variable.SNOW_URL>"
export
SNOW_TOOLID="<+variable.SNOW_TOOLID>"
export SNOW_TOKEN="<+variable.SNOW_TOKEN>"
sndevopscli create securityScan -p \
"{\"pipelineInfo\":{
\"buildNumber\":\"<+stage.nodeExecutionId>\",
\"taskExecutionUrl\":\"<
+pipeline.executionUrl>?stage=<+stage.nodeExecutionId>\",
\"orchestrationPipeline\":\"<+org.identifier>/<
+project.identifier>/<+pipeline.name>\"
},
\"securityResultAttributes\":{
\"scanner\":\"Veracode\",
\"applicationName\":\"VeraDemo-10\"
}
}"
shell: Sh
infrastructure:
type: KubernetesDirect
spec:
connectorRef: KUBE_CONNECTOR ✅ harness
kubernates connector
namespace: harness-delegate-ng
resources:
limits:
cpu: "0.5"
memory: 500Mi
annotations: {}
labels: {}
containerSecurityContext:
capabilities:
drop: []
add: []
nodeSelector: {}
reports:
type: JUnit
spec:
paths: []
outputVariables: []
envVariables: {}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
timeout: 1h
tags: {}
- stage:
name: Deploy
identifier: Deploy
description: ""
type: Deployment
spec:
deploymentType: Kubernetes
service:
serviceRef: service
environment:
environmentRef: Dev
deployToAll: false
infrastructureDefinitions:
- identifier: Infra
execution:
steps:
- step:
type: Container
name: ServiceNow change
identifier: ServiceNow_change
spec:
connectorRef: docker_connector ✅ harness
docker connector
image: servicenowdocker/sndevops:6.2.0
command: |✅ set mandetory variables. These can be
set from Environment variable section of Optional configuration
as well.
export
HARNESS_STAGE_NAME="<+stage.identifier>"
export SNOW_URL="<+variable.SNOW_URL>"
export
SNOW_TOOLID="<+variable.SNOW_TOOLID>"
export SNOW_TOKEN="<+variable.SNOW_TOKEN>"
✅ "sndevopscli create change" command
notifies ServiceNow DevOps to create a change.
✅ Ensure to update "upstreamStage"
accordingly. Example, if you have 3 stages Test, Change
and Deploy in your pipeline, then you must update as
"upstreamStage": "<+pipeline.stages.Test.nodeExecutionId>".
Note that if your change stage is the first stage, you can
remove this line.
sndevopscli create change -ctx \
"{
\"pipelineExecutionUrl\":\"<+pipeline.executionUrl>\",
\"stageIdentifier\":
\"<+stage.identifier>\",
\"stageNodeExecutionId\":
\"<+stage.nodeExecutionId>\",
\"pipelineName\":
\"<+pipeline.name>\",
\"upstreamStage\":
\"<
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
+pipeline.stages.ServiceNow_DevOps_Security_Scan_Results.nodeExe
cutionId>\"
}" -p \
"{
\"changeStepDetails\":
{
\"timeout\":3600,
\"interval\":100
},
\"autoCloseChange\":true,
\"attributes\":{
\"chg_model\":\"adffaa9e4370211072b7f6be5bb8f2ed\",
\"short_description\":\"Software
Deployment\",
\"description\":\"Automated
Software Deployment.\",
\"implementation_plan\":\"Software
update is tested and results can be found in Test Summaries
Tab.\",
\"backout_plan\":\"When software
fails in production, the previous software release will be
re-deployed.\",
\"test_plan\":\"Testing if the
software was successfully deployed or not\"
}
}"
shell: Sh
infrastructure:
type: KubernetesDirect
spec:
connectorRef: KUBE_CONNECTOR ✅ harness
kubernates connector
namespace: harness-delegate-ng
resources:
limits:
cpu: "0.5"
memory: 500Mi
annotations: {}
labels: {}
containerSecurityContext:
capabilities:
drop: []
add: []
nodeSelector: {}
reports:
type: JUnit
spec:
paths: []
outputVariables: []
envVariables: {}
timeout: 1h
- step:
type: ShellScript
name: ShellScript_1
identifier: ShellScript_1
spec:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
shell: Bash
executionTarget: {}
source:
type: Inline
spec:
script: echo "Deploying.."
environmentVariables: []
outputVariables: []
timeout: 10m
rollbackSteps: []
tags: {}
failureStrategies:
- onFailure:
errors:
- AllErrors
action:
type: StageRollback
properties:
ci:
codebase:
connectorRef: CONNECTOR
repoName: REPO_NAME
build: <+input>
sparseCheckout: []
notificationRules:
- name: devopsbugbashwp5
identifier: devopsbugbashwp5
pipelineEvents:
- type: AllEvents
notificationMethod:
type: Webhook
spec:
webhookUrl:
https://{instance_url}/api/sn_devops/v2/devops/tool/orchestrati
on?toolId={tool sys id}&projectId={project sys
id}&ni.nolog.token={token}
enabled: true

Note: If you want to add the Sonar Scan Results and Security Scan Results on the
same stage, you can use different step names for both the custom actions by updating
their default value in the sonar_step_names and security_step_names fields in the
sn_devops_tool_integration_configuration table.

Run health scans for DevOps Change Velocity
Run health check scans on your DevOps Change Velocity instance and get recommendations on
fixing any errors that might exist.

Before you begin

Role required: sn_devops.admin
Activate the DevOps Change Health Scan Content Pack application to use this feature. For
information on activating a plugin, see Activate a plugin .

About this task

If you are in version (3.0 to 5.0) of DevOps Change Velocity, but you have activated the DevOps
Change Health Scan Content Pack application, you can access this feature only from the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1177


<!-- page 1178 -->
Classic UI in the ServiceNow AI Platform. For more information on health scans in ServiceNow AI
Platform, see Scan checks .
Scan suites are collections of security center checks that execute together. The DevOps Change
Velocity Health parent suite contains the DevOps Change Velocity Health - Scheduled and
DevOps Change Velocity Health - On-demand suites within it.
You can choose to run the DevOps Change Velocity Health parent scan, which executes all the
checks available in the DevOps suite of scans or run each child suite individually which executes
the checks applicable to that child suite. Using the DevOps Change Velocity Health - Scheduled
child suite, you can create a schedule to regularly trigger DevOps Health instance suite scans
even when you don’t have an active session. And using the DevOps Change Velocity Health On-demand suite, you can run the available DevOps Health scan checks on a specific target to
obtain focused scan results.
You can also choose to navigate to the Checks list, and run a specific health check scan directly
by selecting the check and then selecting Test Check. The following checks are available in the
DevOps suite.
DevOps suite scan checks
Check name

Check description

Suite

Resolution details

DevOps - subflows
frequently exceeding
execution timeouts

DevOps capability
DevOps Change
handler subflows have Velocity Health a default time out limit Scheduled
of 45 seconds in the
base system. Under
normal operating
conditions, these
timeouts aren’t
exceeded. When
multiple subflows are
timing out frequently,
it indicates a potential
issue.

Increase the timeout
value for the subflow
that is timing out,
in the Integration
Capability table.
You must have the
DevOps Admin role to
perform this action.

DevOps - empty roles
in the base system

If any of your base
DevOps Change
system roles have an Velocity Health empty role reference, Scheduled
it could impact a wide
range of DevOps
functionality, including
the Discover action
and event processing.

See the [KB1642669
article for resolution
details.

DevOps - duplicate
pipelines

The DevOps data
DevOps Change
model doesn't enforce Velocity Health uniqueness on key
Scheduled
records like pipelines,
which can lead
to intermittent or
unpredictable issues.
This check identifies
duplicate pipeline
records in primary
DevOps tables,
which could cause

Delete the duplicate
pipeline that does not
have any associated
pipeline executions or
is not linked to an app.

]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
DevOps suite scan checks (continued)
Check name

Check description

Suite

Resolution details

processing problems
if not addressed.
DevOps System user
access

The devops.system
DevOps Change
user is used
Velocity Health for most server
Scheduled
side transaction
processing, and in
the course of that
processing if it cannot
access certain key
tables the process will
fail. Because it's not
practical to verify if the
user has appropriate
access every time
it makes a query,
the failures tend to
manifest indirectly,
making them hard
and time consuming
to diagnose. This
check will ensure the
devops.system has
appropriate access to
a specific list of tables
required for core
product functionality.

Make sure DevOps
System user exists.
Ensure there are no
field level ACLs on
sys_connection and
credential table

DevOps - related
plugins compatibility

If the plugin versions
DevOps Change
for applications
Velocity Health associated with
Scheduled
DevOps Change
Velocity are not
compatible with the
DevOps Change
Velocity version
in an instance,
it might result in
various features
not functioning
correctly. This check
identifies if any plugin
starting with the name
"sn_devops"(excluding
the
sn_devops_pipeline
plugin) does
not have same
version as that of
sn_devops_chgvlcty.

Upgrade the related
plugins to the version
compatible with
DevOps Change
Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


<!-- page 1180 -->
DevOps suite scan checks (continued)
Check name

Check description

Suite

DevOps - chronically
failing or waiting
pipelines

If a pipeline is
DevOps Change
chronically failing or
Velocity Health in the waiting state
Scheduled
indefinitely, it might
cause the DevOps
processes to not
proceed further.
This check identifies
pipelines that have
failed for the previous
ten executions, so that
you can take remedial
action.

Verify the most recent
executions for the
pipelines flagged, and
investigate inbound
events and DevOps
error logs tables to
help determine the
root cause for the
failures.

DevOps -Stale
or Long-Running
Discover and Import
Requests

Identifies outdated or DevOps Change
prolonged discover
Velocity Health and import requests.
Scheduled
If discover or import
requests stay in
progress or fail for
over 5–6 hours,
they may block new
requests with the
same combination.
This check finds such
outdated or prolonged
requests so that
prompt action can
be taken to keep the
DevOps processes
running.

Verify the tool
connectivity,
credentials,
permissions, and
DevOps error logs
to identify the cause
of failures or stalled
requests.

DevOps - scheduled
jobs with invalid
configuration

Identifies scheduled
jobs that have been
configured to run as
an invalid or nonadmin user.

Configure the jobs to
run with admin users.

DevOps - incorrectly
configured module
access policies

If there are missing or DevOps Change
incorrectly configured Velocity Health - Onmodule access
demand
policies in your
instance, it could
impact a wide
range of DevOps
functionality, including
tool connectivity,
event processing,
pipeline processing,
and change creation.
Auto-generated
module access
policies are set to
reject by default.

DevOps Change
Velocity Health Scheduled

Resolution details

Set the result value
of the module access
policy for the DevOps
application to "Track'
to allow the DevOps
application to access
the credentials. See
the [KB1112530 ]
KB article for more
details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1180


<!-- page 1181 -->
DevOps suite scan checks (continued)
Check name

Check description

Suite

Resolution details

This check identifies
the module access
policies that are
configured with the
reject result state.
DevOps - change
control steps with
untracked pipelines

If a pipeline has
change control
enabled but it is not
marked for tracking,
a change request
might not get created
when it is run, and
the pipeline may get
stuck.

DevOps Change
Velocity Health - Ondemand

Enable tracking for
pipelines under
change control by
selecting the Track
option in the tool
record page or add
the pipeline to an app.

DevOps - Jenkins
plugin compatibility

If the Jenkins plugin
version installed in
your instance is not
compatible with the
DevOps Change
Velocity version,
it might result in
Jenkins features not
functioning correctly.

DevOps Change
Velocity Health - Ondemand

Upgrade your Jenkins
plugin to the version
compatible with
DevOps Change
Velocity.

DevOps – changes in
update set records

If there are
DevOps Change
modifications in
Velocity Health - Onany of the DevOps
demand
applications, it could
potentially result
in updates being
skipped or overlooked
when upgrading to
a newer version.
This check scans
the update.xml file
for DevOps Change
Velocity scoped
changes.

Before working
with update sets,
create a standard
process for moving
customizations. For
more information,
see the Get started
with update sets
topic in product
documentation.

DevOps - files
skipped during
upgrade

If any file was
skipped during the
upgrade process,
it could lead to
potential issues or an
unstable application
state. Proactively
addressing missing
files ensures the
upgrade's integrity
and prevents
unexpected errors or
failures.

Manually merge the
new updates for
the skipped files.
See the KB article
[KB0952456 ] for
more information.

DevOps Change
Velocity Health - Ondemand

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1181


<!-- page 1182 -->
DevOps suite scan checks (continued)
Check name

Check description

Suite

DevOps webhook
configuration analysis

Verifies whether
DevOps Change
webhooks have been Velocity Health - Onconfigured correctly
demand
for any tracked
repository, pipeline, or
plan in GitHub, GitLab,
Azure DevOps, and
Jenkins.

If the webhook is
not configured, set
it up. If the existing
configuration contains
errors, update it to
ensure the correct
settings are applied.

DevOps OAuth app
configuration analysis

If a GitHub tool is
in the connected
state and has a
related OAuth app
configuration, this
check evaluates the
configuration for any
potential issues. For
example, for GitHub
Apps, it checks
whether the App ID
and Client ID values
are matching with the
values configured
in the ServiceNow
Application Registry
and JWT Provider
records.

NA

DevOps Change
Velocity Health - Ondemand

Resolution details

Note: This
check is
available for only
GitHub.

Procedure
1. Navigate to Workspaces > DevOps Change Workspace.
2. In the Lists module, select Health scans > Suites.
3. Select any of the scan suites based on your requirement.
4. Select Execute suite scan.

Result

Once the scan is executed, you can view the results and findings of the scan in the Results
and Findings lists respectively. You can navigate to the Findings list from the DevOps Change
Workspace home page also by selecting View all findings in the Health scan findings widget.
You can navigate to a specific scan finding or check as well from the Health scan findings
widget. To navigate to a specific scan finding, select the required value in the Created column,
and to navigate to a specific check, select a value in the Check column. The DevOps Change
Health Scan Content Pack application must be activated to view data in the Health scan findings
widget in the home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1182


<!-- page 1183 -->
A scan result reports the status and type of the scan. You can also see all the checks that ran
as part of the scan and all other information related to the scan such as errors and scan logs. A
finding is a reference to a record that has violated a rule from a check on the instance. You can
find the source record and the number of times the record triggered the rules of a given check.

Manual configuration mode in DevOps
As an alternative to making a connection using the standard setup process, you can use manual
configuration mode to set up a webhook manually.
For example, if you do not have admin privileges for a tool (to allow automatic configuration
the webhook URL), you can send an email to the admin of the tool requesting the ServiceNow
instance be added to the webhook. Once the instance is added, you can Enter Manual
Configuration Mode and change the Connection state field to Connected (to connect
manually).
This way you only need read-only permission to the tool. Once the connection is made, click Exit
Manual Configuration Mode.

Note: The Connection state field can only be edited in manual configuration mode.
All planning, coding, and orchestration tool connections support manual configuration mode.

Note: Connection state automatically changes to disconnected if there is a change in
configuration, such as URL, credentials, alias, type, or MID Server settings.

Inbound event table data archiving and cleanup
Use table cleaners on the inbound events table to purge event data records beyond a specified
period. Configure a retention policy with table rotation on the auto-flush form to manage table
size growth and archiving data beyond the specified duration.

Data management
The data management feature allows you to enable archiving and purging of inbound event data.
Database rotation and table cleanup configurations are enabled to ensure that eight weeks of
event data is retained. Instance performance is preserved using ServiceNow AI Platform features
such as Database rotation, table rotation , and table cleanup . A scheduled job is auto-enabled
two weeks after you upgrade.

Table rotation on processed inbound events table
The DevOps processed inbound events [sn_devops_processed_inbound_event_list.do] table
contains copies of event data from the DevOps inbound events [sn_devops_inbound_list.do]
table, that is in state 'processed' and 'ignored'.
The processed inbound events table has the table rotation feature enabled. In all, there are eight
preconfigured shards, each containing a week's event data from the DevOps inbound event
table. By default, once you have 56 days (7 days) (Duration) *8 shards (Rotations) of data in the
processed inbound table, table rotation is activated. For more information on applying table
rotation, see Apply table rotation

Tip: To modify table rotation configuration, navigate to System Definitions > Table
Rotation and open the record for DevOps processed inbound events table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1183


<!-- page 1184 -->
Scheduled jobs and Table cleaners

Important: A scheduled job is auto-enabled two weeks after you upgrade . The
scheduled job will run every seven days and is deactivated after the last update.
Scheduled jobs activate tables cleaners on the inbound events if either of the following
scenarios are met:
• A week after you upgrade, and the processed inbound table has records older than
seven weeks.
• Two weeks after you upgrade.
The table cleanup feature for the inbound events table [sn_devops_inbound_table] has two
cleaners that are part of the base system upgrade.
1. Table cleaners are activated and run on the inbound events
[sn_devops_inbound_table_list.do] for events in the following states.
◦ Processed
◦ Ignored
based on the value specified in the Age in seconds field against the value in
sys_created_on field.
2. Table cleaners are activated and run on the inbound events table
[sn_devops_inbound_table_list] for events in the following states.
◦ New
◦ Retry
◦ In-progress
◦ Deferred
based on the value specified in the Age in seconds field against the value in
sys_created_on field.

Note: By default, table cleaners are run on the inbound events table for these states from
the time the schedules jobs are activated. The default value in the Age in Seconds field is
4,838,400 seconds (56*24*60*60).

Auto-updates to table cleaner frequency
Events in states processed and ignored are backed up and copied to the processed
inbound events [sn_devops_processed_inbound_event_list] table. By default, the process
cleaners are auto-updated to an interval of 30 minutes or 1800 seconds, on the inbound events
table, if the following conditions are met:
• Two weeks have passed since the scheduled job is active.
• The processed inbound event table has event data older than 7 weeks.

Data archiving rules for DevOps tables
Base system table archiving rules ensure that DevOps data stored in the Configuration
Management Database (CMDB) are systematically archived and purged.

Archiving rules for DevOps data in CMDB tables
Data archiving involves managing table size growth and archiving old data. It moves data that is
no longer needed every day from primary tables to a set of archive tables. For more information,
see Data archiving . Base-system archive rules are configured to auto-archive DevOps tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1184


