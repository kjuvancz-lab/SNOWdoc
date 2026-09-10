# Zurich IT Service Management — Expense Line / View an expense / Expense lines and expense allocations +1 more

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 733–882 of 3857 | Part 2 of 3

Sections: Expense Line (p583); Components installed with Expense Line (p584); View an expense (p586); Expense lines and expense allocations (p586); Domain separation and Expense Line (p591); DevOps Change Velocity (p591); Explore (p592); Configure (p599); Integrate (p612)

---

<!-- page 733 -->
• Callback URL to pause and resume workflow run from the ServiceNow instance is supported
only with GitHub Actions Deployment Gates feature. However, change creation is possible
through both deployment gates and GitHub Custom Action.
• User who creates GitHub tool in the ServiceNow instance must be a reviewer to approve the
workflow for GitHub Environments.
Related topics
Configure webhooks in GitHub manually
ServiceNow DevOps custom actions from GitHub marketplace
Use the custom actions from the GitHub marketplace to collect SonarQube scan data, security
data, pause or resume workflow, or resume workflow until a change request is approved or
rejected in your instance, or get and update change request details and so on.
Alternatively, you can use Docker container images to implement custom actions for GitHub
Actions pipelines. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
ServiceNow DevOps SonarQube custom action
Save the SonarQube scan results of a project initiated by the workflow run in your ServiceNow
instance. You must create the SonarQube tool in your instance and use the ServiceNow DevOps
SonarQube custom action at the steps level of a job in the workflow.
View the SonarQube analysis results using one of the following methods:
• Navigate to DevOps > Software Quality Results > Software Quality Summary.
• Navigate to DevOps > Orchestrate > Task Execution and selecting a relevant Task Execution
record.
Perform the following tasks to use the custom action.
• Create SonarQube tool in your instance.
Generate token from User > My Account > Security page in your SonarQube tool and create
tool in the ServiceNow instance using the generated token. For more information, see Onboard
SonarQube to DevOps Change Velocity — Workspace and Onboard SonarQube to DevOps
Change Velocity — Classic.
• Create the following Secrets to save SonarQube scan results in the ServiceNow instance.
◦ SONAR_HOST_URL: SonarQube instance URL. For example, https://sonarcloud.io
◦ SONAR_PROJECT_KEY: The key to identify a project in the SonarQube instance. For
example, org.examples:demo
• Configure the ServiceNow DevOps SonarQube custom action in the workflow.
The custom action servicenow-devops-sonar must be configured at steps level of job
in the workflow with uses keyword. The inputs of this custom action must not be tampered
to save SonarQube analysis results in the ServiceNow instance. For more information, see
ServiceNow DevOps Sonar .
ServiceNow DevOps Test Report custom action
Save unit test results of the project initiated by the workflow run in your ServiceNow instance.
The ServiceNow DevOps Test Report custom action must be used at the steps level of job in the
workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

733


<!-- page 734 -->
View the unit test results saved in your ServiceNow instance by navigating to DevOps > Test
Results > Test Summaries.
You can also view by navigating to DevOps > Orchestrate > Task Execution and clicking a
relevant Task Execution record.
Perform the following tasks to use the custom action.
• Create Secrets in the GitHub Repository.
• Configure the DevOps Test Report custom action in the workflow.
The custom action servicenow-devops-test-report must be configured at steps
level of job in the workflow with uses keyword. The inputs of this custom action must not be
tampered to save the unit test results in your ServiceNow instance. For more information, see
ServiceNow DevOps Test Report .
ServiceNow DevOps Register Artifact custom action
Save artifacts created or deployed by the workflow run in your ServiceNow instance. Use the
ServiceNow DevOps Register Artifact custom action at steps level of job in the workflow.
View the artifacts details saved in your instance by navigating to DevOps > Artifact > Artifacts.
Perform the following tasks to use the custom action:
• Create Secrets in the GitHub Repository.
• Configure ServiceNow DevOps Register Artifact custom action in the workflow.
The custom action servicenow-devops-register-artifact must be configured at
steps level of job in the workflow with uses keyword. The inputs of this custom action must not
be tampered to save artifact details in your instance. For more information, see ServiceNow
DevOps register artifacts .
ServiceNow DevOps Register Package custom action
Save packages created or deployed by the workflow run in the ServiceNow instance. Use the
ServiceNow DevOps Register Package custom action at steps level of job in the workflow.
View the package details saved in the ServiceNow instance by navigating to DevOps > Artifact >
Packages.
Perform the following tasks to use the custom action.
• Create Secrets in the GitHub Repository.
• Configure ServiceNow DevOps Register Artifact custom action in the workflow.
The custom action servicenow-devops-register-package must be configured at
steps level of job in the workflow with uses keyword. The inputs of this custom action must not
be tampered to save artifact details in your instance. For more information, see ServiceNow
DevOps register package .
ServiceNow DevOps Change Automation custom action
Create a change request in the ServiceNow instance to pause and resume the workflow run from
the ServiceNow instance.
Use the ServiceNow DevOps Change Automation custom action at steps level of job in
the workflow. If the change is not created within the time period specified in the threshold
(changeCreationTimeOut), and the abortOnChangeCreationFailure parameter is enabled, the
pipeline will be aborted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
This custom action creates a change request in ServiceNow, enables the Change
Control option, and polls the ServiceNow instance at the defined time interval
for change status until either the change is approved or rejected or the timeout
threshold (timeout) is reached. GitHub aborts the workflow run if the timeout
threshold is reached and the abortOnChangeStepTimeout parameter is enabled.

This custom action immediately resumes the workflow run when change receipt is enabled
for pipeline in ServiceNow without waiting for the change to be approved or rejected in the
ServiceNow instance.
View the change created for the workflow run in the ServiceNow instance by navigating to
DevOps > Orchestrate > Pipeline Change Requests.
The change number with status pending_decision is displayed in the GitHub Actions
console while polling the ServiceNow instance for change status. The details like change
comments, approved by, approved on, and status are logged in GitHub Actions console after
the change is approved or rejected or canceled by the user in the ServiceNow instance.

You can navigate to the console logs in your pipeline to view the state of a change request when
a change request is created, change details will be displayed as per the polling time interval.
The policy conditions associated with the change request state will also be evaluated and
displayed in the logs. For example, if the DevOps Change Request Advanced Automation policy
is activated, the policy conditions will be evaluated and the corresponding decision made (autoapprove/auto-reject/manual-approval) will be displayed in the logs.
The following change request details are displayed:
• number
• details
• status
• sys_id
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
• type
• risk
• priority
• changeState
• plannedStartDate
• plannedEndDate
• changeRequestURL

Note: changeState is the state of the change request, and status is the status of the step
execution.
The logs for policy conditions will be displayed for the base system change flows as follows:
• DevOps Model Change Policy: Only logs will be displayed on change creation and when the
change state is updated.
• DevOps Change Request Minimal Automation Policy: Logs along with change decision and
policy conditions corresponding to the change decision will be displayed.
• DevOps Change Request Advanced Automation Policy: Logs along with change decision and
policy conditions corresponding to the change decision will be displayed.
The change policy input and decision conditions are stored in the Decisions
[sys_decision_question] table. Logs will be displayed if the following fields and operators are
used as input for policy conditions:
Fields
• code_coverage
• commits_without_work_item
• integration_tests_failed
• load_tests_failed
• regression_tests_failed
• num_of_outages_in_last_7_days
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
• num_of_current_outages
• num_of_open_incidents
• total_num_of_commits
• tests_passing_percent
• risk
• code_security
• commits
Operators
• <=
• >=
• !=
•=
•<
•>
• ISNOTEMPTY
• ISEMPTY
• BETWEEN
• ANYTHING
• NSAMEAS
• SAMEAS
• GT_FIELD
• LT_FIELD

Note: If any field is modified in a change policy other than the base system fields, then
those fields must be manually added to the flow for policy conditions to be evaluated.
Perform the following tasks to use the custom action.
• Create Secrets in the GitHub Repository.
• Configure ServiceNow DevOps Change Automation custom action in the workflow.
The custom action servicenow-devops-change must be configured at steps level of job
in the workflow with uses keyword. The inputs of this custom action must not be tampered to
create change in your instance and poll for change status every number of seconds. For more
information, see ServiceNow DevOps change automation .
ServiceNow DevOps Get Change Github Action
Retrieve the change request number in a GitHub Actions pipeline based on specific change
details.
The ServiceNow DevOps Get Change Github Action
custom action must be added at the step
level in a pipeline job to retrieve the change request number from a ServiceNow instance by
specifying change details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


<!-- page 738 -->
ServiceNow DevOps Update Change Github Action
Update change request details associated with a GitHub Actions pipeline.
The ServiceNow DevOps Update Change Github Action
custom action must be added at
the step level in a pipeline job to update the change request in a ServiceNow instance. The
change request number whose details need to be updated and the change request details to be
updated must be specified as input.
ServiceNow DevOps Security Results Action
Retrieve security scan results in ServiceNow.
The ServiceNow DevOps Security Results Action
custom action must be added at the step level
in a pipeline job to retrieve security scan results in ServiceNow.
GitHub Deployment Gates for ServiceNow DevOps Change
Use the GitHub Deployment Gate capability to decide on whether a new deployment should
proceed or halt.

Before you begin

GitHub deployment gates are supported only if you have connected your GitHub instance with
Oauth 2.0 credentials for GitHub Apps using the JWT bearer token. For more information, see
OAuth 2.0 credentials for GitHub Apps - JWT.
By default, the Deployment protection rules section is available for environments in all the
repositories selected in the installed GitHub App.
Role required: Permission to create environments in GitHub

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
Procedure
1. Navigate to Settings > Environments from a repository
and click New environment to create an environment.

2. In the Deployment protection rules section, select the
installed GitHub App name, and select Save protection rules.

3. Add the ServiceNow DevOps Change Automation custom action at the step level (for example,
changeRequest job in workflow/yaml file) in a pipeline job to create the change for deployment
gates.
The deployment-gate parameter must be added in the following JSON format.
'{"environment":"deployment_gate","jobName":"Deploy"}'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
Here environment key value is the environment created with deployment
protection rules, and jobName key value is the deployment job created
in the workflow/yaml file with dependency on the change request job
configured with the ServiceNow DevOps Change Automation custom action.

When the deployment gate specific workflow/yaml file is run in GitHub
Actions, the details like change number, change url, and status will
be displayed once the change request is created in ServiceNow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
The details like change comments, approved by, approved on, and status are logged
in the GitHub tool after the workflow run is resumed from ServiceNow, i.e. when change
request is approved and the change request state is updated to Implement in ServiceNow.

Configure webhooks in GitHub manually
Configure webhooks in GitHub to send sync notifications to the DevOps Change Velocity
application.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity, GitHub
admin

About this task

You can also access manual configuration from the GitHub tool record in DevOps Change
Velocity.

Procedure
1. In GitHub, navigate to Settings > Webhooks and add a webhook.
2. In DevOps Change Velocity, choose Configure manually when configuring the tool instance to
send data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
3. In DevOps Change Velocity, copy the Webhook URL field from the ServiceNow instance
connection details for GitHub.

Note: Select Copy in the appropriate field to copy the value to your clipboard. The field
label changes to Copied, but you can copy multiple times.

4. Modify the copied Webhook URL to reflect your tool details, and paste the URL in GitHub.
For example:
https://myinstance.service-now.com/api/sn_devops/v2/devops/
tool/{code | plan | artifact | orchestration | test |
softwarequality }?toolId=23410545938c71d0db5bfe686cba1036

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
a. Select one of the tool capabilities {code | plan | artifact | orchestration
| test | softwarequality } to match your tool.
For example:
https://myinstance.service-now.com/api/sn_devops/v2/devops/
tool/orchestration?toolId=23410545938c71d0db5bfe686cba1036
b. Copy the modified Webhook URL to the Payload URL field of the new webhook in GitHub.
5. In DevOps Change Velocity, copy the Secret token field from the ServiceNow instance
connection details for GitHub, and paste in the Secret field of the new webhook in GitHub.
Copy field values
From DevOps Change Velocity field

To GitHub field

Webhook URL (modified)

Payload URL

Secret token

Secret

GitLab integration with DevOps Change Velocity
Connect to your GitLab instance to discover plans, repositories, and pipeline definitions and
configure real-time notifications or polling to enable change traceability and automation.

GitLab integration overview
Versions supported:
• On premises - base version 13.x and above
• GitLab Cloud

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
DevOps Change Velocity supports Plan (Issues), Code (Repository) and Orchestration
(Pipelines) capabilities for the GitLab tool. In case of pipelines, only basic pipelines are
supported but not the multi-project ones.
• Connect: Discover plans, repositories, and pipeline definitions by connecting your GitLab
instances to DevOps Change Velocity.
• Configure: Enable sending real-time notifications for commits, pipelines, and work items by
automatically creating a webhook in GitLab so that this data can be used to create change
policies.

Note: If you are upgrading to version 5.0.0 from a previous release, you must re-configure
your tool to receive GitLab Issues (planning) related events.
Trigger events required for code capability:
• Push events
• Tag push events
• Comments
• Merge request events
Trigger events required for orchestration capability:
• Job events
• Pipeline events
Trigger events required for planning capability:
• Issues events
• Confidential issues events

Key points
• A pipeline must be run and completed at least once before enabling change control.
• If a manual job in GitLab is canceled, or times out before completion, the corresponding
change remains in Open state until the change request approval process is completed
manually.
• Pipeline discovery is limited to the first 100 results using the project search filter. To discover
additional pipelines, modify the search filter (which appears when you select Discover) to
expand the results for the discovery request.
• Milestone discovered from a GitLab plan is displayed as release version in ServiceNow
DevOps Change Velocity.
• Repositories or pipelines created or updated after the project has already been discovered
and configured are tracked manually.
• JUnit test type integration is supported for GitLab. GitLab unit test reports support test reports
only in the JUnit report format. You can convert different test types to JUnit and persist it. For
detailed information, see Unit test reports
and Unit test report examples .
• Test tool integration lets you view test results in DevOps for GitLab unit, functional, and
performance tests.
• Pipeline reruns are not supported.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
Get started
Use one of the following options to onboard GitLab. For a guided experience, use the workspace
to onboard a tool. Alternatively, you can use the Service Catalog or Classic experience.
Onboard GitLab to DevOps Change Velocity — Workspace
Connect to your GitLab instance using the DevOps Change Workspace playbook to discover
plans, repositories, and pipelines.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard GitLab.
Option

Steps

a. Select Connect a tool.
Homepage

b. From the Connect to a tool modal, select the tool from the appro­
priate category. For example, if you want to connect to GitLab as
coding tool, you'd select GitLab under the Code category.
a. Select Applications (

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
Applications module

c. From the Recommended actions pane, select the Connect a
tool card.
d. From the Connect to a tool modal, select the tool from the appro­
priate category. For example, if you want to connect to GitLab as
coding tool, you'd select GitLab under the Code category.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select the appropriate category. For ex­
ample, if you want to connect to GitLab as coding tool, you'd se­
lect the Coding category.
c. Select Connect a tool.
d. On the Connect to a tool modal, select GitLab.

Important: If you want to discover and track tool objects like plans, pipelines, or
repositories while connecting to the tool, you must connect your tool from the Application
module.
2. In the Tool name field, enter a name for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
3. Select Next.
The DevOps playbook opens to help you complete the onboarding tasks.
4. Enter your GitLab instance details.
a. Enter your GitLab instance URL.
b. In the Credential type field, select one.
▪ Basic Auth
▪ OAuth 2.0
c. Enter the credentials.
▪ Basic Auth: Enter the username and password/access token of your GitLab instance.

Note: Only personal access token is supported. When you generate the token,
select the scope API and grant read/write access including all the groups and
projects, container registry, and package registry.
▪ OAuth 2.0: Enter your OAuth credential.
For more information on OAuth2.0 credentials, see Setting up GitLab OAuth 2.0
credentials for DevOps.
d. Optional: If your GitLab instance is attached to a MID Server, select the MID Server option
and enter its details.
(Optional) For more information about MID server, see MID Server selection
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
e. Select Connect.

5. Permission checks are run on the credentials that you entered.
Permissions required and permissions that are available are displayed. If you want to enter
credentials with better permissions, select Re-enter credentials. For detailed information on
all the required permissions, see GitLab permissions in Permissions required for DevOps tools.
You can choose to continue with the tool connection even if you don't have all the required
permissions.

6. Select Next.
7. Specify the access for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


<!-- page 748 -->
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

8. Select the projects for which you want to configure webhooks automatically.
You can also choose to enable nightly polling to retrieve data for any tracked pipelines by
selecting the Enable Polling property option in the Administration module. See DevOps
Change Velocity properties.
9. Select Configure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


<!-- page 749 -->
To configure manually, select Configure manually. See Configure webhooks in GitLab
manually for more information.

Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then plans, repositories, and
pipelines available in your project are discovered. You can track and import historical
data from them.
10. Select the pipelines that you want to associate to the application, and select Associate
pipelines.
For each selected pipeline, all steps are imported for the last successful execution.
11. Optional: In the Assign services to pipeline steps activity, specify Step type and Service for
each pipeline step.
(Optional) Completing this step as part of tool onboarding enables the DevOps Insights
dashboards to show more meaningful data immediately.
12. Select the plans you want to associate to the application, and select Associate plans.
13. Select the repositories you want to associate to the application, and select Associate
repositories.
14. In the Import historical data step, select the date range in the Start date and End date fields
and select Import data.

Note: You can import up to 90 days of data.
15. Select Next.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
16. From the Summary page, review the details of the successfully connected GitLab tool.
Select View tool record to review the details of the connected instance.

Result

You’ve successfully onboarded your GitLab tool to DevOps Change Velocity.

Note: If your tool credential changes, you must also update the credentials in DevOps
Change. For more information, see Update third-party tool credentials in DevOps Change
Velocity.
Related topics
Configure webhooks from the tool record
Onboard GitLab to DevOps Change Velocity — Service Catalog
Create, connect, discover, and configure your GitLab instance using the ServiceNow Service
Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your GitLab integration.

Tool integration

Select GitLab.

Tool URL

URL of your GitLab instance.

Credential type

Select Basic Auth or OAuth, depending on
the credentials you're using.
◦ For Basic Auth, enter the username and
password or access token.
◦ For OAuth, enter the credentials.

Tool password/ Access token/API Key

GitLab password or access token.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
For a list of all the permissions required on the credentials for connecting to GitLab, see GitLab
permissions in Permissions required for DevOps tools.
5. Select Order Now.
A request is created. When the request is approved, the tool is created, connected, and
discovered.
6. From the DevOps catalog items, select DevOps App Onboarding.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Leave empty.

Onboarding repositories

Enter the connected GitLab tool name.

Repositories

Select the repositories for which you want
to configure webhooks and import historical
data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

Do you wish to configure webhook for the
tool?

Select the check box if you want to configure
webhooks for the selected repositories.

Onboarding plans

Enter the connected GitLab tool name.

Plans

Select the plans for which you want to import
historical data.

Import from and Import to

Select the dates for which you want to import
the Plans data. By default, the last 30 days
are selected. You can choose to import data
for a maximum of 90 days.

8. Select Order Now.
A request is created. When the request is approved, the plan and repository objects are
associated to the app record and webhooks are configured for real-time tracking. Historical
data is imported for the selected plans and repositories. The Track field is automatically
enabled for imported repositories.
Onboard GitLab to DevOps Change Velocity — Classic
Create an GitLab tool record in DevOps Change Velocity to connect, discover, and import GitLab
tool data.

Before you begin

Complete the steps specified in the Getting started section before connecting to a tool.
Role required: sn_devops.admin or sn_devops.tool_owner

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
About this task
• Connect by using your GitLab instance details.
• Discover plans, repositories, and pipelines.
• Configure webhooks in GitLab.
• Import branch and commit records, work items, task execution and step execution records.

Procedure
1. Enter the GitLab instance details to connect to DevOps Change Velocity.
a. Navigate to DevOps > Tools > Create New (legacy) and create a record.
b. Enter a Tool Name and fill in the tool details.

Tool URL

GitLab tool URL.
For example:
https://gitlab.com

Tool Username

GitLab username

Tool Password / Access Token

GitLab access token

Note: Only personal access token
is supported. When you generate the
token, select the scope api and grant
read/write access including all groups
and projects, the container registry,
and the package registry.
For a list of all the permissions required on the credentials for connecting to GitLab, see
GitLab permissions in Permissions required for DevOps tools.
c. Optional: Select MID Server for an on-premises tool that is attached to a MID Server.
The Application value is automatically set to DevOps and the Capability value is set to
REST.
d. Click Submit.
The tool is connected successfully.
On successful tool creation, you’re taken to the tool record page.
2. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
3. Click Discover to discover existing plans, repositories, and pipelines, and fill in the fields in the
project Search Filter window.

Note: GitLab plans, repos, and pipelines discovered are determined by these filter
conditions. To discover additional repos, modify the project filter to expand the results.

Owned by me (recommended)

Searches for the repositories in the project
that the current user owns.

Currently member of

Searches for the repositories in the project
that the current user is a member of.

Search

Searches for the repositories in projects with
the specified text string.

Note: GitLab plans, repositories, and pipelines discovered are also determined by the
credentials (level of access) configured in the connection.
Records are added to the corresponding related lists.
4. Automatically configure the webhook URL in a GitLab repository to send notifications to the
DevOps tool by selecting Configure.
Alternatively, you can choose to enable nightly polling to fetch data system for any tracked
plans, repositories, or pipelines by setting the Enable Polling property to Yes.
5. For discovered plans, repositories, and pipelines, import historical data for the tool and
associate with an app.
a. Open the repository or plan or pipeline record from the corresponding related list and click
Import.
Imported branch records, commits, pipeline executions, work items and so on are added to
the corresponding related lists.
b. In the App field, click the lookup list and select an App record to associate with the
repository, plans, or pipeline.
Imported historical data records are added to the corresponding related lists.
Setting up GitLab OAuth 2.0 credentials for DevOps
Integrate your GitLab account with your ServiceNow instance by creating a custom OAuth
application in GitLab and authenticating requests from ServiceNow DevOps.
Configure your GitLab account, register GitLab in the application registry, and create a credential
record for the GitLab App provider.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
Role required: oauth_admin.
Configure the GitLab App in your GitLab account (Authorization Code)
Create a custom GitLab App from your GitLab account to enable OAuth 2.0 authentication with
your ServiceNow instance.

Before you begin

Role required: admin

About this task

Configure GitLab as an OAuth 2.0 authentication identity provider. For more information, see
GitLab documentation .

Procedure
1. From your GitLab account, create your App by navigating to Edit Profile > Applications.
2. In the Add new application form, specify a Name, and in Redirect URI field, enter https://
<instance-name>.service-now.com/oauth_redirect.do.
3. In the Scopes section, ensure that you select the api check box.
4. Leave the remaining fields empty (default).
5. Click Save application.
The application is created. You can open the application to access the Application ID, Secret
key, and Callback URL.
6. Install the newly created GitLab App on the accounts of your choice.
Register GitLab as an OAuth Provider (Authorization Code)
Use the information generated during GitLab App account configuration to register GitLab as an
OAuth provider and allow the instance to request OAuth 2.0 tokens.

Before you begin

Role required: admin

Procedure
1. Navigate to System OAuth > Application Registry.
2. Click New.
The system displays the message What kind of OAuth application?
3. Select Connect to a third party OAuth Provider.
The system displays an empty Application Registries form.
4. Complete the form.

Field

Name

Value required

Enter any name to uniquely identify the record. For example, enter My
GitLab App Provider.

Client ID

Enter the Application ID of your GitLab App.

Client Secret

Enter the secret key of your GitLab App.

OAuth API
script

Select OAuthDevOpsGitLabHandler.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


<!-- page 755 -->
Field

Value required

Default Grant
type

Select Authorization Code.

Authorization
URL

Enter https://gitlab.com/oauth/authorize.
For an on-premise deployment, use the proper GitLab host URL.

Token URL

Enter https://gitlab.com/oauth/token.
For an on-premise deployment, use the proper GitLab host URL.

5. Leave the rest of the form fields as default.
6. Right-click the form header, and click Save.
◦ The system validates the OAuth credentials and populates the Redirect URL (Hint: It should
match the Redirect URI value previously provided in your GitLab App configuration).
◦ The system populates OAuth Entity Profile with Grant Type as Authorization Code. For
example, OAuth Entity Profile is created with default Name, My GitLab App Provider
default_profile.
7. Validate that the OAuth Entity Scopes related list contains the api scope.
Create a credential record for GitLab App provider (Authorization Code)
Create a credential record for the GitLab App provider previously created to authorize actions.

Before you begin

Role required: admin

Note: The user who creates the credential record, and generates the OAuth token in
ServiceNow must have at least the Maintainer role in GitLab for project webhooks, and
Owner role for group webhooks to ensure that webhooks can be auto-configured. For more
information, see GitLab
documentation.

Procedure
1. Navigate to Connections & Credentials > Credentials.
2. Click New.
The system displays the message What type of Credentials would you like to create?.
3. Select OAuth 2.0 Credentials.
The pop-up window displays an empty OAuth 2.0 Credentials form.
4. Fill in these values.

Field

Value required

Name

Enter any name to uniquely identify the record. For example, enter My
GitLab App Credential.

Active

Enable

OAuth Entity
Profile

Select the default OAuth Entity profile you created previously.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
Field

Value required

Applies to

Select the MID Servers that can use this credential. For example, select All
MID Servers.

Order

Select the order to apply this credential. For example, enter 100.

5. Save the record.
6. Click the Get OAuth Token related link to generate the OAuth token.
A successful token generation indicates that you can now authenticate connection between
ServiceNow DevOps and GitLab via OAuth.
GitLab pull request configurations
GitLab pull (merge) request pipeline executions, which goes through change acceleration before
moving to production, can be tracked in DevOps Change Velocity. This integration also collects
GitLab merge requests meta data to persist in DevOps Change Velocity. The data is linked
with the change created in the merge request pipeline execution and can be used for applying
change policies, review, and approval.
• Create, update, close, re-open, and merge of pull requests are supported.
• Pull request pipeline execution for change acceleration in GitLab pipelines is supported. Pull
request details will be available for use in the change approval policy.
• Status of GitLab pipeline is updated with the pull request status automatically after the change
creation. The pipeline is paused and resumed automatically.
• Email ids are defaulted to the format <user_name>@noreply.gitlab.com.
• Comments are supported as part of merge request support. Create and update to pull
requests are supported, while delete and edit are not supported.
• Maximum of 100 commits will be shown in DevOps Change Velocity. If you need to access
more than 100, you must refer your GitLab instance. Only the latest comment is populated.

Settings to enable pull (merge) requests for change approval
The DevOps property Enable to track GitLab pull (merge) requests. If not enabled, then pull
(merge) requests and related events will be ignored enables the tracking of pull (merge)
requests from GitLab in DevOps Change Velocity.

Note: The property is enabled by default. If you don't want the merge (pull) requests to be
tracked, you must disable it.
When enabled, the pull (merge) request changes will be reflected in DevOps Change Velocity.
When disabled, DevOps Change Velocity ignores the pull request events.
For pull request and orchestration pipeline linking and to enable change approval tracking, the
following are required:
• Use GitLab Docker for change tracking. For detailed information, see Implement custom
actions for pipelines using a generic Docker container image.
• From your GitLab project,
1. Navigate to
▪ For GitLab cloud: Settings > Merge requests.
▪ For On premises (13.x): Settings > General > Merge requests.
2. Select the Pipelines must succeed check box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
With this selection, only if the change is approved, you can proceed with the merge request.
That is, when the check box is selected, pull requests will be blocked until the change is
approved.

3. Select Save changes.
• Navigate to your project and open the .yml file.
To the .yml file, add the following rule at the pipeline level or at specific job levels.
rules:
- if: $CI_PIPELINE_SOURCE == 'merge_request event'
- if: $CI_PIPELINE_SOURCE != 'merge_request_event'
Example for pipeline level:
workflow:
rules:
- if: $CI_PIPELINE_SOURCE == 'merge_request_event'
- if: $CI_PIPELINE_SOURCE != 'merge_request_event'
Example for job level:
changeapproval:
stage: changeapproval
script:
- sndevopscli create change -p
'{"changeStepDetails":{"timeout":3600,"interval":100},"attribu
tes":{"short_description":"Automated Software
Deployment","description":"Automated Software
Deployment.","assignment_group":"a715cd759f2002002920bde8132e7
018","implementation_plan":"Software update is
tested and results can be found in Test Summaries
Tab.","backout_plan":"When software fails in
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
production, the previous software release will be
re-deployed.","test_plan":"Testing if the software was
successfully deployed or not"}}'
rules:
- if: $CI_PIPELINE_SOURCE == 'merge_request_event'
- if: $CI_PIPELINE_SOURCE != 'merge_request_event'
Model a GitLab basic CI pipeline in DevOps
Model a GitLab basic CI pipeline by mapping the pipeline to an app, and mapping DevOps
pipeline steps to GitLab pipeline jobs.

Before you begin

Role required: sn_devops.admin

Procedure
1. Map your pipeline to an app.
a. Navigate to DevOps > Apps & Pipelines > Apps and open the application record to
associate with the pipeline.
b. In the Pipelines related list, click Edit... to select a pipeline to associate with the app, or click
New to create the pipeline.

Note: While associating a pipeline with an app, the pipeline steps are also fetched
during import.
For a new pipeline, fill in the Orchestration pipeline field using the group name, subgroup
name (if applicable), and project name as specified in GitLab.
For example, My Group/My SubGroup/My Project.
If a project is not under a group, simply specify My Project.
c. Click Submit.
2. Open the pipeline record again and create DevOps steps to map to each GitLab pipeline job
so an orchestration task can be created.
Steps can be created in one of the following ways.
◦ Automatically create and map pipeline steps in DevOps by running your GitLab pipeline.
Pipeline steps are automatically created, mapped, and associated when DevOps receives
step notifications from your GitLab pipeline during the run.
◦ Manually create and map each pipeline step to a GitLab pipeline job.
In the Steps related list, click New to create a DevOps step for each GitLab pipeline job
(Orchestration stage field).

Note: The Orchestration stage field value of each step is case-sensitive and must
match the original name of the corresponding GitLab pipeline job.

Name

Name of the pipeline step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
Pipeline

Pipeline in which the step is configured.

Type

Pipeline step type.
▪ Build and Test
▪ Test
▪ Deploy
▪ Deploy and Test
▪ Manual
▪ Prod Deploy

Order

Order in which the steps are run.

Note: The step order determines the
order of the cards in the Pipeline UI.
The order of the cards in the Pipeline
UI is by task execution.
Orchestration stage

GitLab pipeline job name (case-sensitive).

Note: For step association
with GitLab CI pipeline jobs, the
Orchestration stage field must be
configured.
Business service

Configuration service that applies to the
step.

Once orchestration tasks are created, associate each orchestration task in the Orchestration
Tasks related list with a DevOps pipeline step.
3. Optional: Select the Change control check box in a step to enable change acceleration and
the corresponding configuration fields.

Note: The Change Management feature must be installed for change acceleration.
Change receipt

(Optional) Select to enable change receipt for
the step so the pipeline doesn't pause when
a change request is created.
All pipeline data is included in the change,
but approval is not required for the pipeline to
proceed.

Change approval group

(Optional) Approval group for the change
request.
The change approval group becomes the
Assignment group in the DevOps change
request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
Note: Ensure that the selected group
has members and a group manager so
approver field is not empty.
Change type

Change request type to create.
◦ Normal (default)
◦ Standard
◦ Emergency

Change model

Change model for the change request. For
more information, see DevOps change
models.

(Optional) Template

(Optional) List of templates to use to auto
populate fields for Normal or Emergency
change requests.

Note: This field is shown only when

Change type is Normal or Emergency.

(Optional) Standard change template

Note: This field is shown only when
Change type is Standard.
Change controlled branches

Select a template or create a new one.
List of standard change templates to use for
Standard change requests.

Note: This field is required for
Standard change type.

(Optional) (Multibranch only) Commaseparated list of branches under change
control. Wildcards are supported.

You can set up change control in GitLab for manual GitLab jobs.

Note: A pipeline must be run and completed at least once before enabling change
control.

Example:
DevOps pipeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
What to do next

Change acceleration in GitLab
Bulk commits in GitLab
Bulk commits are supported with GitLab.
To support large commits, perform these actions:
• Install the ServiceNow IntegrationHub Action Template - Data Stream
(com.glide.hub.action_type.datastream) plugin.
• For optimal performance, disable flow logging by setting the Flow Designer
com.snc.process_flow.reporting.level property to Off.
• For MID Server settings, view the MID Server support for Data Stream actions

section.

GitLab code push webhook sends a maximum of 20 commits in a notification. If the number of
commits in the push are less than 20, a single inbound event is created and processed in the
ServiceNow instance.
If the number of pushed commits are equal or greater than 20, multiple inbound events are
created from the original event with each new event containing a batch of 19 commits. The
original inbound event is marked as ignored.
Currently, GitLab Data stream action can process up to 10,000 commits in a single push.
Configure webhooks in GitLab manually
Configure webhooks in GitLab manually to send job, push, and issues notifications to the
DevOps application.

Before you begin
Role required:

• sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity
• Maintainer (or higher) for the GitLab projects.

About this task

Create webhooks for the following two triggers in GitLab for every project you want to track.
• Push events (code capability)
• Job events (orchestration capability)
• Issues events (planning capability)
You can also access manual configuration from the GitLab tool record in DevOps Change
Velocity.

Procedure
1. In GitLab, navigate to Project > Settings > Webhooks and add a webhook.
2. In DevOps Change Velocity, choose Configure manually when configuring the tool instance to
send data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
Note: You can also access manual configuration from the GitLab tool record in DevOps
Change Velocity. From the tool record, select Configure > Configure manually.

3. Copy the Webhook URL field from DevOps Change Velocity connection details for GitLab.

Note: Select Copy in the appropriate field to copy the value to your clipboard. The field
label changes to Copied, but you can copy multiple times.

4. Modify the copied Webhook URL to reflect your tool details, and paste the URL in GitLab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
For example:
https://<your instance>.service-now.com/api/sn_devops/
v2/devops/tool/{code | plan | artifact | orchestration | test |
softwarequality }?toolId=<your ToolId>
a. Select one of the tool capabilities {code | plan | artifact | orchestration
| test | softwarequality } to match your tool.
For example:
https://<your instance>.service-now.com/api/sn_devops/
v2/devops/tool/code?toolId=<your ToolId>
b. Copy the modified Webhook URL to the URL field of the new webhook in your GitLab
instance.
5. Copy the Secret token field from the ServiceNow instance connection details for GitLab, and
paste in the Secret Token field of the new webhook in your GitLab instance.
Copy field values
From DevOps Change Velocity

To GitLab

Webhook URL (modified)

URL

Secret token

Secret Token

6. Select the check boxes for Push events, Tag push events, Comments, and Merge request
events for coding capability events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
7. Select Add webhook.
8. Repeat the procedure to create webhooks for planning and orchestration capability events in
GitLab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
◦ For orchestration: Select the check boxes for Job events and Pipeline events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
◦ For planning: Select the check boxes for Issues events and Confidential issues events.

9. Select Add webhook.
GitLab webhooks for DevOps Change Velocity integration:

Change acceleration in GitLab
Change acceleration is supported in DevOps Change Velocity for GitLab jobs.
Change acceleration can be enabled using the following ways:
• Using ServiceNow custom actions for GitLab
• Using manual jobs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
Publishing test results from GitLab pipelines
JUnit test type integration is supported for GitLab. GitLab unit test reports support test reports
only in the JUnit report format. You can convert different test types to JUnit and persist it. For
detailed information, see Unit test reports
and Unit test report examples .
Test tool integration lets you view test results in DevOps for GitLab unit, functional, and
performance tests.
GitLab pipelines with parallel jobs
GitLab Docker Image supports change creation in GitLab pipelines containing parallel jobs.

Note: If your GitLab pipeline has parallel jobs, it is better to use the GitLab Docker Image,
rather than when:manual. For detailed information about GitLab Docker Image, see
Implement custom actions for pipelines using a generic Docker container image.
Sample yaml pipeline demonstrating parallel jobs:
image: servicenowdocker/sndevops:3.1.0
per your current version.
stages:
- pre-build
- build
- test
- pre-prod
- prod

✅ Update docker version

Scan PreProd:
stage: pre-build
script:
- echo $CI_JOB_NAME
Check policies in PreProd:
stage: build
needs:
- job: "Scan PreProd"
script:
- exit 1 ✅ Simulating a failed test job
allow_failure: true ✅ Allow this job to fail without stopping
the pipeline
Check policies in Prod:
stage: build
needs:
- job: "Scan PreProd"
script:
- echo $CI_JOB_NAME
Deploy App in Test:
stage: test
needs:
- job: "Scan PreProd"
script:
- echo $CI_JOB_NAME
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
Deploy App in PreProd:
stage: pre-prod
needs:
- job: "Deploy App in Test"
- job: "Check policies in PreProd"
allow_failure: false
script:
- echo $CI_JOB_NAME
- sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"autoCloseChange\":true}"

Deploy App in Prod:
stage: prod
needs:
- job: "Deploy App in PreProd"
- job: "Check policies in Prod"
allow_failure: false
script:
- echo $CI_JOB_NAME
- sndevopscli create change -p
"{\"changeStepDetails\":
{\"timeout\":3600,\"interval\":100},\"autoCloseChange\":true}"
Change acceleration for manual jobs
Enable change tracking for the pipeline in the tool record page in DevOps Change Velocity.
The GitLab job under change control must have these instructions for the pipeline execution to
be resumed or canceled via the change request:
• when: manual
• allow_failure: false
For example:
deploy:
stage: deploy
tags:
- local-runner1
when: manual
allow_failure: false
script:
- echo 'Deploy'

Note: For when:manual based changes, for a change request to get created at a certain
stage, all the previous stages must complete successfully. If any of the previous stages is
not invoked or not successful, even though there is no dependency of the current stage on
its immediate previous stage, a change request will not get created in ServiceNow.
GitLab pipeline parallel stages is supported with GitLab Docker Image. For more details,
see GitLab pipelines with parallel jobs and Implement custom actions for pipelines using a
generic Docker container image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
Refer to the CI/CD pipeline configuration reference
GitLab job.

for more information on how to configure a

Additional considerations:
• If allow_failure is set to true, the pipeline continues even when the change is rejected.
• A user with the appropriate role access in GitLab can unblock and continue a pipeline
regardless of the change request state.
GitLab change acceleration behavior
Manual execution

Change acceleration in
step

Change request
approved

Yes

Yes

N/A

Yes

No

No

No

N/A

Yes

N/A

Result

If the manual job
is under change
control, the change is
automatically created.
The manual job
is automatically
executed.
The manual job
is automatically
rejected/failed.
The manual job
waits for manual
intervention from the
pipeline owner via
the GitLab UI (default
behavior).
The change request is
not created.

Note: Parallel jobs are displayed sequentially, based on the order in which the jobs are
queued for execution.

Jenkins integration with DevOps Change Velocity
Connect to your Jenkins instance to discover pipeline definitions and configure real-time
notifications or polling to enable change traceability and automation.

Jenkins integration overview
DevOps Change Velocity supports Orchestration capability for the Jenkins tool and various
kinds of pipeline types like Single Pipeline, Multibranch Pipeline, Folder, and Freestyle project
types. For Folder, three levels are supported by default. Integrating Jenkins with DevOps Change
Velocity enables you to retrieve the data from your Jenkins pipeline for end-to-end traceability
and policy creation for change automation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
Get started
Onboard Jenkins to DevOps Change velocity
Connect your Jenkins instance to DevOps Change Velocity to retrieve data like
artifacts, test results, scan results, and so on from your Jenkins pipelines. We
recommend that you onboard using Workspace Onboard Jenkins to DevOps
Change Velocity — Workspace for an intuitive experience.
You can connect to using one or both of the following authentication methods:
• Basic authentication, using the DevOps Integration User credentials.
For more information about the integration user credentials, see Set up
integration user account in DevOps Change Velocity.
• Secret token generated during tool connection.
Set up Jenkins plugin to send real-time data
Automatically configure Jenkins to send real time notifications for your pipeline
executions to DevOps Change Velocity. Real time notifications are ideal to maintain
the most up-to-date information, particularly for automating change requests. For
more information on setting up the plugin, see Configure Jenkins plugin.

Note:
• If you're using DevOps Config, it’s recommended to connect to Jenkins
using basic authentication.
• You must ensure that the basic authentication credentials and secret token
used are valid.

Note: Jenkins also supports testing capabilities with J Unit. Test tool integration lets you
view test results in DevOps for Jenkins unit, functional, and performance tests.
Use one of the following options to onboard Jenkins. For a guided experience, use the
workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard Jenkins to DevOps Change Velocity — Workspace
Connect to your Jenkins instance using the DevOps Change Workspace playbook to discover
pipelines.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Install and enable the ServiceNow DevOps plugin for Jenkins. If you've already installed it,
update to the latest version. For instructions, see Configure Jenkins plugin.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the playbook to onboard Jenkins.
You can connect a tool from an application if you also know which specific pipelines should
be associated and tracked under that application to streamline the setup. This will allow you to
easily associate and import data from Jenkins as well.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
Option

Steps

a. Select Connect a tool.
Homepage

b. From the Connect to a tool modal, select the tool from the appropriate
category. For example, if you want to connect to Jenkins as an orches­
tration tool, you'd select Jenkins under the Orchestration category.
a. Select Applications (

) from the primary navigation.

b. Select an existing application, or create one. To create an application,
see Create an application - Workspace.

Applications mod­
c. From the Recommended actions pane, select the Connect a tool
ule
card.

d. From the Connect to a tool modal, select the tool from the appropriate
category. For example, if you want to connect to Jenkins as an orches­
tration tool, you'd select Jenkins under the Orchestration category.
a. Select Tools (
Tools module

) from the primary navigation.

b. From the Capability list, select the appropriate category. For example,
if you want to connect to Jenkins as an orchestration tool, select the
Orchestration category.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Jenkins.

Important: If you want to discover and track tool objects like pipelines while
connecting to the tool, you must connect your tool from the Application module.
2. In the Tool name field, enter a name for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
3. On the Jenkins instance details playbook activity:
a. Enter the URL of your Jenkins instance.
b. Enter the login credentials (password or access token or API token) of the Jenkins instance.
To generate API token, see Connect to Jenkins using API token authentication.
c. If your Jenkins instance is attached to a MID Server, select the MID Server option and enter
its details.
A MID server is required if your tool instance is hosted on-prem. For more information about
MID server, see MID Server selection
4. Select Connect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
5. Permission checks are run on the credentials that you entered.
Permissions required and permissions that are available are displayed. If you want to enter
credentials with better permissions, select Re-enter credentials. For detailed information on
all the required permissions, see Jenkins permissions in Permissions required for DevOps
tools.
You can choose to continue with the tool connection even if you don't have all the required
permissions.

6. Select Next.
7. Specify the access for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

8. Install the ServiceNow DevOps plugin for Jenkins.
For more information on the extension, see Configure Jenkins plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
9. Select Configure to automatically set up ServiceNow DevOps Configuration in your Jenkins
instance.

Important:
◦ You must first install and enable the ServiceNow DevOps plugin for Jenkins. If you've
already installed it, update to the latest version. For instructions, see Configure Jenkins
plugin.
◦ To configure webhooks automatically, Jenkins admin access is required.
◦ If you choose to automatically configure this tool, then the existing set up for
ServiceNow DevOps Configuration in Jenkins will be over-written.
◦ You can add a total of ten ServiceNow configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
Automatically sets up ServiceNow DevOps Configuration in Jenkins

To configure webhooks manually in Jenkins, see Configure webhooks manually for Jenkins.
You can also choose to enable nightly polling to retrieve data for any tracked pipelines by
selecting the Enable Polling property option in the Administration module. See DevOps
Change Velocity properties.

Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then pipelines available in your
instance are discovered. You can track and import historical data from them.
10. Select the pipelines that you want to track from Select pipelines playbook activity.
For each selected pipeline, all steps are imported for the last successful execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
11. Optional: In the Assign services to pipeline steps activity, specify Step type and Service for
each pipeline step.

(Optional)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
Completing this step as part of tool onboarding enables the DevOps Insights dashboards to
show more meaningful data immediately.
12. If you want to import pipeline data, select the date range and select Submit.
13. From the Summary page, select View tool recordto review the details of the connected
Jenkins tool.

Note: If your tool credential has changed, you must update the credentials in your
ServiceNow instance. For more information, see Update third-party tool credentials in
DevOps Change Velocity.

Result

You’ve successfully onboarded your Jenkins tool to DevOps Change Velocity.
Related topics
Configure webhooks from the tool record
Onboard Jenkins to DevOps Change Velocity — Service Catalog
Connect your Jenkins instance using the ServiceNow Service Catalog to retrieve data like
artifacts, test results, scan results, and so on.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
Field

Description

Tool name

Name for your Jenkins integration.

Tool integration

Select Jenkins.

Tool URL

URL for your Jenkins instance.

Tool username

Username for your Jenkins instance.

Tool password/ Access token

Access credentials for your Jenkins instance.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

For a list of all the permissions required on the credentials for connecting to Jenkins, see
Jenkins permissions in Permissions required for DevOps tools.
5. Select Order Now.
A request is created. When the request is approved, the tool is connected and discovered.
6. From the DevOps catalog items, select DevOps App Onboarding.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Enter the connected Jenkins tool name.

Pipelines

Select the pipelines for which you want to
configure webhooks and import historical
data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

Onboarding repositories

Leave empty.

Onboarding plans

Leave empty.

8. Select Order Now.
A request is created. When the request is approved, the pipeline objects are associated to the
app record, which enables real-time tracking. Historical data is also imported for the selected
pipelines. The Track field is automatically enabled for imported pipelines.
Onboard Jenkins to DevOps Change Velocity — Classic
Connect your Jenkins instance to discover and track your pipelines, and import your
orchestration tasks for end to end traceability and change automation.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
Install and enable the ServiceNow DevOps plugin for Jenkins. If you've already installed it,
update to the latest version. For instructions, see Configure Jenkins plugin.

About this task
Actions:

• Connect to Jenkins and get the webhook URL when you submit a DevOps tool record.
• Discover orchestration tasks and pipelines.
• Import task execution and step execution records.

Note: You can authenticate your connection with Jenkins using Jenkins API tokens. For
more information, see Connect to Jenkins using API token authentication.

Procedure
1. Create a tool record in DevOps to automatically connect to Jenkins and get the webhook URL.
a. Navigate to DevOps > Tools > Create New (legacy) and create a record.
b. Enter a Tool Name and fill in the tool details.

Tool Integration
Tool URL

Jenkins
Jenkins tool URL
For example:
https://jenkins.com

Tool Username

Jenkins user name

Tool Password / Access Token

Jenkins password, access token or the API
token you generate.

Note: To generate API token, see
Connect to Jenkins using API token
authentication.
For a list of all the permissions required on the credentials for connecting to Jenkins, see
Jenkins permissions in Permissions required for DevOps tools.
c. Select MID Server for an on-premises tool that is attached to a MID Server.
The Application value is automatically set to DevOps and the Capability value is set to REST.
d. Click Submit.
The tool is connected successfully.
On successful tool creation, you're taken to the tool record page.
2. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
3. Click Discover to discover the existing orchestration tasks (Jenkins stages) and pipelines.

Note: Orchestration tasks and pipelines are discovered for folders nested to the

level specified in the sn_devops.discover.folder.depth property. For more
information, see Properties installed with DevOps.
Records are added to the corresponding related lists.
4. Open a discovered record from the Orchestration Tasks related list and click the Import
related link to import historical data from the orchestration task.
Imported task execution records and step execution records are added to the corresponding
related lists.
Model a Jenkins pipeline in DevOps
Model a Jenkins pipeline by mapping the pipeline to an app, and mapping DevOps pipeline
steps to Jenkins stages.

Before you begin

The Jenkins plugin for ServiceNow DevOps is provided to enable change acceleration so your
orchestration tool can communicate with ServiceNow DevOps and control certain aspects of
pipeline executions.
Install the plugin from the Jenkins Marketplace. Navigate to Manage Jenkins > System
configuration > Plugins in your Jenkins instance. Search for ServiceNow DevOps Plugin and
select it, and then select Install.
Ensure that your Jenkins tool is connected and configured. For more information, see Onboard
Jenkins to DevOps Change Velocity — Workspace.
Role required: sn_devops.admin

About this task

Both scripted pipelines (Jenkinsfile) and freestyle jobs are supported.
For Jenkinsfile pipelines, pipeline steps are created, mapped, and associated to orchestration
tasks automatically, instead of manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Procedure
1. Map your pipeline to an app in DevOps.
a. Navigate to DevOps > Apps & Pipelines > Apps and open the application record to
associate with the pipeline.
b. In the Pipelines related list, click Edit... to select a pipeline to associate with the app, or click
New to create the pipeline.
For a new pipeline, fill in the Orchestration pipeline field using the full project name as
specified in Jenkins.

Note: While associating a pipeline with an app, the pipeline steps are also fetched
during import.
c. Click Submit.
2. Open the pipeline record again and select the Track check box so events from the pipeline are
received.

Note: The Track check box must be selected to integrate the pipeline with DevOps.
3. Create DevOps steps automatically or manually to map to each Jenkins pipeline stage so an
orchestration task is created.
◦ For declarative or scripted pipelines, run your Jenkins pipeline to automatically create and
map pipeline steps in DevOps.
Pipeline steps are automatically created, mapped, and associated when DevOps receives
step notifications from your Jenkins pipeline during the run.
◦ For freestyle jobs, manually create and map each pipeline step to a Jenkins pipeline job.
In the Steps related list, click New to create a DevOps step for each Jenkins pipeline stage
(Orchestration stage field)

Note: The Orchestration stage field value of each step is case-sensitive and must
match the original name of the corresponding Jenkins pipeline stage.

Name

Name of the pipeline step.

Pipeline

Pipeline in which the step is configured.

Type

Pipeline step type.
▪ Build and Test
▪ Test
▪ Deploy
▪ Deploy and Test
▪ Manual
▪ Prod Deploy

Order

Order in which the steps are run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
Note: The step order determines the
order of the cards in the Pipeline UI.
The order of the cards in the Pipeline
UI is by task execution.
Orchestration stage

Jenkins pipeline stage name (casesensitive).

Note: For step association with
Jenkins pipeline stages, the
Orchestration stage field must be
configured.
Business service

Configuration service that applies to the
step.

Once orchestration tasks are created, associate each orchestration task in the Orchestration
Tasks related list with a DevOps pipeline step.
4. Optional: Enable change control automatically or manually based on the type of pipeline.
◦ For declarative or scripted pipelines, if you have used the snDevOpsChange script in your
pipeline, run your Jenkins pipeline to automatically enable change control. You can also
enable change control manually by following the steps provided for freestyle jobs.
◦ For freestyle jobs, select the Change control check box in a step to enable change
acceleration and the corresponding configuration fields.

Note: ServiceNow Change Management must be installed for change acceleration.
Change receipt

(Optional) Select to enable change receipt
for the step so the pipeline doesn't pause
when a change request is created.
All pipeline data is included in the change,
but approval is not required for the pipeline
to proceed.

Change approval group

(Optional) Approval group for the change
request.
The change approval group becomes the
Assignment group in the DevOps change
request.

Note: Ensure that the selected group
has members and a group manager so
the approver field is not empty.
Change type

Change request type to create.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
▪ Normal (default)
▪ Standard
▪ Emergency
Change model

Change model for the change request. For
more information, see DevOps change
models.

(Optional) Template

(Optional) List of templates to use to auto
populate fields for Normal or Emergency
change requests.

Note: This field is shown only when

Change type is Normal or Emergency.

(Optional) Standard change template

Note: This field is shown only when
Change type is Standard.
Change controlled branches

Select a template or create a new one.
List of standard change templates to use for
Standard change requests.

Note: This field is required for
Standard change type.

(Optional) (Multibranch only) Commaseparated list of branches under change
control. Wildcards are supported.

Example:
DevOps app

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
DevOps pipeline

DevOps pipeline step

Additional information - Jenkins
Additional information on Jenkins.
Configure Jenkins plugin
Configure Jenkins to send real time notifications for your pipeline executions to DevOps Change
Velocity.

Before you begin

Role required: Jenkins admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
Procedure
1. Install the ServiceNow DevOps plugin from the Jenkins Marketplace by navigating to Manage
Jenkins > System configuration > Plugins in your Jenkins instance.
2. Search for ServiceNow DevOps Plugin and select it, and then select Install.
Related topics
Configure webhooks manually for Jenkins
Configure webhooks manually for Jenkins
Configure webhooks in Jenkins to send sync notifications to the DevOps Change Velocity
application.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity, Jenkins
admin

About this task

You can add a total of ten ServiceNow DevOps configurations. For example, you can configure
Jenkins connections for your Development, Testing, Production instances, and so on.
If you are an upgrading customer, you must download and install the latest Jenkins plugin to
enable multiple ServiceNow configurations. After installation, your existing configuration will be
retained and made the default configuration.
In the ServiceNow DevOps Configuration section in Jenkins, the values in the Name field and the
combination of the Instance URL and Orchestration Tool ID fields must be unique.
If you choose to automatically configure a tool from ServiceNow, then the existing set up for
ServiceNow DevOps Configuration will be over-written in Jenkins.
If DevOps Config is installed, you will only be able to configure Jenkins manually.

Procedure
1. In DevOps Change Velocity, choose Configure manually when configuring the tool instance to
send data.

2. Select Copy in the appropriate field to copy the value to your clipboard.
The field label changes to Copied, but you can copy multiple times.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
3. In Jenkins, navigate to Manage Jenkins > System configuration > Manage Plugins >
Configure System.
4. In the ServiceNow DevOps Configuration section, select Add.

Note: You can add multiple connections by selecting Add for each new configuration.
5. Configure the plugin by filling in the fields.
When enabled, Jenkins starts sending events to DevOps as inbound events.

Note: Values are case-sensitive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
Field

Description

Active

Select this option to make the connection
active. By default this option is selected when
you select Add for a new connection.

Note: All the connections that
have Active enabled, will send
webhook notifications for your pipeline
execution,however for the change step
only the connection specified will be
considered.
Default

Select this option to make the connection the
default one when the connection name is not
passed in an existing step on a pipeline.

Note: Not selecting this option when
only one connection is available will
result in error.
Name

Unique name of the connection.

Note: The name value is autogenerated when you auto configure a
connection from ServiceNow.
Instance URL

Orchestration Tool ID

Enter your ServiceNow instance URL you
copied in step 2. For example, https://
<your-instance>.servicenow.com.
The sys_id of the orchestration tool you
copied in step 2.
Alternatively, you can copy this value from the
webhook URL (toolid value), or obtain it
directly using the Copy sys_id command
on the Orchestration Tool record.

Note: The combination of the Instance
URL and Orchestration Tool ID values
must be unique for each connection.
Artifact Tool ID
Credentials

The sys_id of the artifact tool.
Select the basic authentication credentials
that you want to use for connecting to
Jenkins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
Field

Description

a. To add credentials, select Add.
b. In the Username field, enter your DevOps
Integration User details. By default, it is
devops.integration.user.
c. In the Password field, enter your DevOps
Integration User password.
Secret Credentials

Select the secret token that you copied in
step 2. Alternatively, you can perform the
following steps to obtain the secret token
from the tool record.
a. Copy the secret token for your Jenkins tool
in DevOps Change.
▪ Workspace: Navigate to the tool record,
select Configure and copy the secret
token.
▪ Classic UI: Navigate to the tool record
and select Copy token.
b. To add tokens, select Add.
c. From the Kind list, select Secret text.
d. In the Secret field, enter the secret token
generated while creating the Jenkins tool
connection in DevOps.
e. In the ID field, enter a name for the token.

Log Level

The level of log messages you want to store
in Jenkins logs/ ServiceNow log recorder.
Select from one of the following options:
◦ inherit
◦ off
◦ severe
◦ warning
◦ info
◦ config
◦ fine
◦ finer
◦ finest
◦ all
For more information on Log levels and log
recorders, see Jenkins log levels and Log
Recorders

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
Field

Force Tracking Check

Description

Select the check box to make a REST
(POST) API call to Jenkins for each pipeline
execution to determine whether the pipeline
is tracked or not.
Clear the check box to store details in the
snPipelineInfo.json file and stop
making API calls for every pipeline execution.

Note: When a pipeline is tracked,
all active Jenkins configurations will
receive job notifications.
Pull Request Pipeline Tracking Check

Select the check box to enable tracking for
pull request pipelines.

Note: When a pipeline is tracked,
all active Jenkins configurations will
receive job notifications.

6. Select Test Connection.
Verify that the connection successful message displays.
◦ If you've added basic authentication credentials, on successful connection, you will see the
message: Connection using 'Credentials' is successful.
◦ If you've added the secret token, on successful connection, you will see the message:
Connection using 'Secret Credentials' is successful.
7. Select Apply to apply the changes and select Save.
Connect to Jenkins using API token authentication
Connect to Jenkins using API token authentication instead of user name and password.

Before you begin
Role required:

• Jenkins: admin or any user with overall Read and Job Read roles

About this task

You can have multiple active API tokens at the same time and track the usage of your tokens. You
can also revoke API tokens as needed. You can also use the Jenkins API token for authentication
when you're using the Jenkins CLI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
Procedure
1. In the Jenkins banner frame, select your user name to open the user menu.
2. Select Security.

3. In the Security page, select Add new Token.
4. Select Generate.
5. Copy the API token that is generated

Note:
◦ Regenerate the tokens every 6 months (depending on your context). Jenkins displays
an indicator concerning the age of the token
◦ Use a different token for each application so that if an application is compromised you
can revoke its token individually.
◦ If your token expires, regenerate the token and update it in the ServiceNow AI Platform
instance
◦ ServiceNow DevOps DevOps does not support using Legacy API Tokens because
Jenkins does not recommend the use of Legacy API Token. For more information, see
the Jenkins blog post .
Reduce calls from Jenkins to ServiceNow DevOps to fetch pipeline information
Enable the Force Tracking Check field in the Jenkins configuration form to create a pipeline
tracking file in Jenkins. ServiceNow DevOps makes a REST call to Jenkins to update the tracking
file when the Track field in a pipeline is modified.

Force Tracking Check
The ServiceNow DevOps configuration section in Jenkins includes a Force Tracking Check
check box to reduce the number of calls made from Jenkins to DevOps to fetch pipeline
information such as pipelines being tracked. Base-system flows:
• DevOps Jenkins File Update- Track flow
• DevOps Jenkins File Update- Test Info flow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
How it works
In previous versions, a REST call fetched the pipeline information for every Jenkins build
triggered. If you had multiple pipelines in your Jenkins environment and were tracking only a few
of them, this meant that a call was made to fetch the tracking information for each pipeline even
if you were tracking a few of them.
The first time you trigger a Jenkins build or pipeline execution, Jenkins makes a pipeline
information API call and creates snPipelineInfo.json file in /{JENKINS_HOME}/
jobs/{jobName} directory. For each subsequent pipeline execution Jenkins checks the
information available in the snPipelineInfo.json file before making a pipeline info API
call.
If you disable the Force Track Check check box:
• The DevOps Jenkins File Update- Track flow triggers when you update the Track field on the
pipeline form. The Track field info is updated in the snPipelineInfo.json file.
• DevOps Jenkins File Update- Test Info flow triggers when you update Test type mapping for
Jenkins tool integration and verify that Test info is updated in snPipelineInfo.json file.
If you enable the Force Track Check check box, Jenkins makes pipeline info API calls to DevOps
even if track/test information exists in the snPipelineInfo.json file.
Using a declarative or scripted pipeline in DevOps
When you use a Jenkinsfile, steps are created, mapped, and associated to orchestration tasks
automatically instead of manually.
Jenkinsfile is a text file that contains the definition of a Jenkins pipeline and is checked into
source control.
Each root-level stage configured in the Jenkinsfile is discovered as a separate orchestration task
in DevOps that is mapped to an individual step.

Note: The Track field for the pipeline must be set to True in DevOps to receive job
notifications from Jenkins. All active Jenkins configurations will receive job notifications
when this field is set to True.

DevOps Jenkinsfile commands
• snDevOpsChange(ignoreErrors:{true/false},changeRequestDetails:

{setCloseCode:{true/false},attributes:})

Where ignoreErrors specifies the setting to prevent job failure if there is an error (true/
false)
Where changeRequestDetails specifies closure code and change request fields from
within the pipeline
Enables change control for each root-level stage that is mapped to a DevOps step.
• snDevOpsArtifact
Registers artifacts when configuring Artifacts and packages.
• snDevOpsPackage
Creates a package for artifacts when configuring Artifacts and packages.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
• snDevOpsGetChangeNumber
Retrieves the change request number in a Jenkins pipeline based on specific change details.
• snDevOpsUpdateChangeInfo
Updates the change request details associated with a Jenkins pipeline.
• snDevOpsSecurityResult
Configures security scans on any stage of the pipeline and the scan details are retrieved from
the corresponding stage to DevOps Change Velocity.
You can specify the Jenkins server configuration in any of these steps by passing the
configurationName attribute in your pipeline. If the configuration name is not specified in
any step, the default configuration will be used in that step. Passing an incorrect configuration
name will result in the step to fail unless the Ignore ServiceNow DevOps errors option is
selected while configuring the Jenkins plugin.

Note: Stage mapping is only supported for stages at the root level, not nested or parallel
stages.

Jenkins snippet generator for DevOps
You can use the Jenkins Snippet Generator utility to generate a template code for the
orchestration tasks for scripted pipelines. You can use the snippet generator utility to create
template for the following orchestration tasks.
• SnDevOpsArtifact
• SnDevOpsChange
• SnDevOpsPackage
• snDevOpsGetChangeNumber
• snDevOpsUpdateChangeInfo
• snDevOpsSecurityResult
To generate a step snippet, navigate to the Pipeline Syntax from a configured pipeline, select the
step from the Sample Step list, and update the values for different variables in the step. Select
the ignore error option to prevent job failure if there is an error. Select Generate Pipeline Script
to create a snippet. You can copy and paste the snippet into a pipeline.
Example of a pipeline script for the SnDevOpsChange task:
snDevOpsChange changeCreationTimeOut: 3600,
changeRequestDetails: '{ "attributes": { "short_description":
"Test description", "priority": "1", "start_date": "2021-02-05
08:00:00", "end_date": "2022-04-05 08:00:00", "justification":
"test justification", "description": "test description",
"cab_required": true, "comments": "This update for work
notes is from jenkins file", "work_notes": "test work notes",
"assignment_group": "a715cd759f2002002920bde8132e7018" },
"setCloseCode": false, "autoCloseChange": true }',
changeStepTimeOut: 18000, configurationName: 'Jenkins1',
pollingInterval: 60

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
Parallel and sub-stage support
When a stage (or set of parallel stages) is nested within a pipeline stage, these rules apply:
• Any action from the nested stage is processed as part of the parent root-level stage
• Only one change request is created (at the parent root level) even if multiple stages nested
under the parent root-level stage trigger a change
• Orchestration tasks created are always associated with the parent root-level stage (not the
nested stage)

Example: Sub stage
In this sub-stage example, if a change request gets created from the sub stage (deploy
PROD), the details of the parent root-level stage (deploy) are used in the change request, and
orchestration tasks are also associated with the parent root-level stage (deploy).

stage("deploy") {
stages{
stage('deploy UAT') {
when{
branch 'dev'
}
stage('deploy PROD') {
when {
branch 'master'
}
steps{
snDevOpsChange()
}
}
}

Example: Parallel stage
In this parallel stage example, if a change request is created from a sub stage (UAT test-1 and/or
UAT static code test), only the first change request is created (using the details of the parent rootlevel stage, UAT test) regardless of whether both sub stages (UAT test-1 and UAT static code test)
get triggered.
There is no indication of which parallel stage generated the change, and orchestration tasks are
associated with the parent root-level stage (UAT test).

stage('UAT test') {
parallel {
stage('UAT test-1') {
steps {
snDevOpsChange()
// 'UAT test-1' tasks
}
post {
success {

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
// post success tasks. E.g.: junit
'**/target/surefire-reports/*.xml'
}
}
}
stage('UAT static code test') {
steps {
snDevOpsChange()
// 'UAT static code test' tasks
}
}
}
}
Configure SonarQube scans on Jenkins pipelines
Configure SonarQube scans on Jenkins pipelines.

Before you begin

Ensure that you meet the following pre-requisites before configuring your Jenkins pipelines for
SonarQube scans
• SonarCloud or SonarQube version 8.6.1 community edition
• SonarQube Scanner for Jenkins 2.4 or higher is installed on your Jenkins instance/
environment.
• ServiceNow DevOps plugin version 1.27 or later for Jenkins.
• Ensure that SonarQube scans are configured and exist on your Jenkins pipelines using the
SonarQube Scanner plugin for Jenkins. For more information, see
◦ SonarQube Scanner for Jenkins
◦ SonarScanner for Jenkins
• A SonarQube tool is created and is connected to the SonarQube server. For more information,
see SonarQube integration with DevOps Change Velocity.
Role required: sn_devops.admin

About this task

When you run a pipeline which has SonarQube scan executions, the details are fetched
into ServiceNow DevOps from the Jenkins pipeline. Using the Jenkins plugin, we check if
the scan execution is configured in the Jenkins pipeline and check for SonarQube scans on
every orchestration stage, using the withSonarQubeEnv tag. If a SonarQube analysis has
happened on any stage of the pipeline’s execution, as part of our end notification we add a
model with the scanID and url details for every scan that occurs in a particular stage. These
scan analytics or details are correlated and displayed in the Software Quality Summary related
list from Change requests and Task executions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Procedure
1. In Jenkins, navigate to Manage Jenkins > Configure System, select the Enable injection
of SonarQube server configuration as build environment variables check box in the
SonarQube Servers section, and fill in the fields.
SonarQube Installations
Field

Description

Name

A unique name for the configuration/project.

Server URL

URL or IP address of the SonarQube server.

Server authentication

Select the relevant authentication token type
for the configuration.

Note: Use these same SonarQube server details or values while creating the
SonarQube tools in ServiceNow DevOps as well as in the Jenkins pipeline.
2. Click Test Connection.
Verify that the connection successful message is shown.
3. Click Apply and Save.
4. Run the pipeline.

Result

Based on the scan results on various stages of pipeline's execution, the results are shown in the
corresponding step of the pipeline. Inbound events are created for notifications and subflows are
triggered based on the notification type and capability.

What to do next

Note:

Navigate to the pipeline UI to view the scan details under the Quality > Software Quality
Results.
• View scan details as part of Task Executions. View details of all the Sonar scans that are part of
the task execution mapped to a build or release pipeline execution step.
1. Navigate to DevOps > Orchestrate > Task Execution click a relevant Task Execution record.
2. Click the Software Quality Summary related list.
3. Click a relevant Scan ID record.
The Software Quality Scan Summary and Scan Details are displayed.
• View scan details as part of Change Request. View all the scans that were part of this build/
release pipeline in the Software Quality Results > Software Quality Summary related list.
1. Navigate to DevOps > Orchestrate > Pipeline Change Requests
2. Click the Software Quality Summary related list.
3. Click a relevant Scan ID record.
The Software Quality Scan Summary and Scan Details are displayed.
Configure JFrog in Jenkins
Configure JFrog plugin for Jenkins to publish, deploy, or download artifacts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
Before you begin

Role required: admin role in Jenkins

Procedure
1. Install the Artifactory
artifacts.

plugin, to integrate Jenkins with JFrog , to publish, deploy, or download

2. After the installation, configure the JFrog server details from Manage Jenkins > Configure
System.

Note:
To be able to integrate JFrog with Jenkins, the build info must be published for JFrog
along with the artifacts.

3. Use the following scripts to download or upload artifacts to Jenkins.
Scripted pipeline to upload:
def server = Artifactory.server 'JFROG1'
def uploadSpec = """{
"files": [{
"pattern":
"${env.WORKSPACE}/target/artifact-1.3.jar",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
"target": "default-docker-virtual/"
}]
}"""
def buildInfo = server.upload(uploadSpec)
server.publishBuildInfo buildInfo
Scripted pipeline to download:
def server = Artifactory.server 'JFROG1'
def downSpec= """{
"files": [{
"pattern":
"default-docker-local/artifact-1.3.jar",
"target":"/var/jfrog_artifacts/"
}]
}"""
def buildInfo = server.download(downSpec)
server.publishBuildInfo buildInfo
Notify change request rejection or cancellation reason to Jenkins pipeline
Send change request rejection or cancellation reason along with approver name and the change
request number to Jenkins pipeline logs.

Before you begin
• Ensure that you have upgraded to ServiceNow DevOps version 1.28 or later.
• Have an active Jenkins integration.
Role required: sn_devops.admin

About this task

You can send change request rejection or cancellation reasons or comments to the Jenkins
pipeline logs.
• Ensure that you enter appropriate reasons or comments when rejecting or canceling a Change
Request manually.
• If you have loaded demo data during upgrade, and are using the DevOps Demo Change
Automation flow or a custom flow based on it, a notification with default message values is sent
to the Jenkins pipeline logs.

Note:
• The Change request number is also automatically sent to the Jenkins pipeline logs (for
both scripted and freestyle pipelines) as soon as the change is created.
• The Approver name and time stamp of the cancellation/rejection is also automatically
sent to the Jenkins pipeline logs.

Procedure
1. To manually reject or cancel change requests, follow these steps:
a. Navigate to DevOps > Orchestrate > Pipeline Change Requests > Change Request record.
b. Open the required Change Request record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
◦ From the context menu, click Cancel Change. In the Cancel Change Request > Reason field,
enter an appropriate reason for cancelling the change, and click Save.
◦ In the Approvers related list, provide your inputs in the Comment field, right-click the record,
and click Reject.
The change request is canceled/rejected and the reason for canceling the change is added to
the Comments field and sent to the Jenkins pipeline log.
2. To send custom messages (from auto-rejected change requests) to Jenkins, follow these
steps:
a. Navigate to Flow Designer > DevOps Demo Change Automation flow > DevOps Demo
Change Policy.
b. Navigate to the DevOps Auto Reject decision >DevOps Apply Change
Approval Definition subflow > Devops Create Auto Approval Record
action.
c. Modify the action's input script for the approval.comments attribute value.
By default, the auto-rejected change requests stores and sends the approval.comments
= 'Auto ' + state + ' via Change Policy'; variables as messages to the
Jenkins pipeline as notifications.
3. In Jenkins, navigate to the pipeline (that is corresponding to the rejected change request), and
then select Console Output.
The Change Request's rejection or cancellation comments that are stored as part of the step
execution reflect in the Jenkins Console Output.
Notify ServiceNow DevOps change request number to Jenkins pipelines
Send change request numbers to the Jenkins pipeline steps or logs when a change request is
created in ServiceNow DevOps.

Sending ServiceNow DevOps change request to Jenkins pipeline
Change requests that are created as part of Jenkins pipeline executions for both scripted and
free-style pipelines are notified to the Jenkins pipeline console.
When you trigger a scripted Jenkins pipeline and a change request is created as part of the
pipeline execution stage in ServiceNow DevOps, the change request number is notified to
Jenkins. The change request number displays in the Jenkins pipeline job logs for scripted
pipelines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Upon triggering a free-style Jenkins pipeline, the change request that is created as part of the
ServiceNow DevOps pipeline execution stage waits for the approval action to be performed on
the change. The change request number and details display against the relevant build in the
Jenkins console's Build History section.

Note: After an approval or rejection action is performed on the change request in
ServiceNow DevOps, the change request displays in the Jenkins pipeline build logs, similar
to scripted pipelines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
Get change request number in Jenkins pipeline
Retrieve the change request number in a Jenkins pipeline based on specific change details by
running the snDevOpsGetChangeNumber script.

Before you begin

Role required: Jenkins admin

Procedure
1. In your Jenkins dashboard, open the pipeline for which you want to retrieve the change
request number.
2. Navigate to Configure > Pipeline.
3. In the Pipeline script section, update the snDevOpsGetChangeNumber script with the
following input parameters:
◦ Pipeline Name

Note: For a multi-branch pipeline, the pipeline name must be suffixed with the branch
name.
◦ Build Number
◦ Stage Name

Note: For a nested-stage, the stage name must be prefixed with the parent stage
name.
◦ Branch Name (only for multi-branch pipeline)

Note: If you do not provide the change request details as input parameters, the change
request number associated with the current pipeline and stage will be retrieved.
Example of a multi-branch pipeline:
snDevOpsGetChangeNumber (changeDetails: """{ "pipeline_name":
"github_multi_branch_pipeline/scratch/release",
"build_number": "${env.BUILD_NUMBER}", "stage_name":
"Prod/Deploy", "branch_name": "scratch/release" }""");
Example of a Jenkins pipeline:
snDevOpsGetChangeNumber (changeDetails: """{ "pipeline_name":
"github_pipeline", "build_number": "${env.BUILD_NUMBER}",
"stage_name": "Prod/Deploy" }""");
4. Save the script.
5. Navigate to DevOps > Orchestrate > Pipeline Change Requests.
6. Select the change record associated with the pipeline.
7. Approve the change request by selecting Approved in theState field.
8. In Jenkins, open the pipeline for which you are retrieving the change request number.
9. Select Build Now.
The change request number associated with the pipeline will be displayed as an output in the
pipeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
Update change request details in Jenkins pipeline
Update the change request details associated with a Jenkins pipeline by running the
snDevOpsUpdateChangeInfo script in the pipeline.

Before you begin

Role required: Jenkins admin

About this task

When you update the state parameter in a change request, only the following transitions are
supported:
• cancel: Change request state must be implement to move the state to cancel. reason is a
mandatory input to update the state to canceled.
• closed: Change request state must be implement or post implement to move the state to
close. close_code and close_notes are mandatory input to update the state to closed.
Specify the change request state as an integer value:
• 4 - Cancel (Value set in the sn_devops.change_request.cancel_state property)
• 3 - Closed (Value set in the sn_devops.change_request.closed_state property)
When you update a choice field, you must specify a valid choice value that is
available in the corresponding choice list. For example, the choice list values
for the Close code field are successful, successful_issues, and unsuccessful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
Procedure
1. In your Jenkins dashboard, open the pipeline for which you want to update the change request
details.
2. Navigate to Configure > Pipeline.

3. In the Pipeline script section, update the snDevOpsUpdateChangeInfo script with the
following input parameters:
◦ Change request number whose details need to be updated.
◦ Change request details to be updated as Key:Value pairs.
{ "short_description": "Test description", "priority": "1",
"start_date": "2021-02-05 08:00:00",
"end_date": "2022-04-05 08:00:00", "justification": "test
justification", "description": "test description",
"cab_required": <true/false>, "comments": "This update for work
notes is from jenkins file", "work_notes": "test work notes",
"assignment_group": "<SYS_ID>", "state":"<STATE_CODE>",
"close_code":"<successful/successful_issues/unsuccessful>",
"reason":"<As per Choice List>"
4. Save the script.
5. Navigate to DevOps > Orchestrate > Pipeline Change Requests.
6. Select the change record associated with the pipeline.
7. Approve the change request by selecting Approved in theState field.
8. In Jenkins, open the pipeline for which you are updating the change request details.
9. Select Build Now.
The change request details specified in step 3 will be updated for the pipeline.
ServiceNow DevOps change request state in Jenkins pipeline logs
You can use the Jenkins Snippet Generator utility to configure how and when the change state
and the corresponding policy conditions must be displayed in the Jenkins pipeline job logs. This
enables developers to view the status of the change in the console logs of the pipeline itself.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
To generate a step snippet, navigate to the Pipeline Syntax from a configured pipeline, select
the SnDevOpsChange step from the Sample Step list, and update the values for the change
state variables in the step. Select the ignore error option to prevent job failure if there is an error.
Select Generate Pipeline Script to create a snippet. You can copy and paste the snippet into the
pipeline to start receiving the change state notifications. Update the following variables in the
SnDevOpsChange step to receive change state notifications:
• Polling Interval: Specifies the frequency (in seconds) at which Jenkins polls ServiceNow for
the change status and updates the console logs with the status. The change status is updated
in the console logs only when the Change state transitions, Assignment Group updates,
Approval updates, Planned Start/End date, or Change Details (if any) fields are updated.

Note: If no value is entered in the field, polling interval check won’t be run to update the
change status in the console logs.
• Change Creation Timeout: Specifies the change creation timeout value in seconds. On
timeout, Jenkins checks the change creation status in ServiceNow. If the change did not get
created, the pipeline is resumed or aborted based on the Abort on change creation failure
flag. By default, the pipeline is aborted when timeout is specified and the Abort on change
creation failure flag is selected.

Note: If no value is entered in the field, change creation timeout check won’t be run to
update the pipeline.
• Abort on change creation failure: Abort or resume the pipeline if change is not created till the
change creation timeout.
◦ Selected: Abort
◦ Cleared: Resume
• Change Step Timeout: Specifies the change step timeout value in seconds. On timeout,
Jenkins checks the change step status in ServiceNow. If the change step is still in progress,
the pipeline is resumed or aborted based on the Abort on change step timeout flag. By
default, the pipeline aborted when timeout is specified, and the Abort on change step timeout
flag is selected.

Note: If no value is entered in the field, change step timeout check won’t be run to
update the pipeline.
• Abort on change step timeout: Abort or resume the pipeline if the change step is still in
progress on change step timeout.
◦ Selected: Abort
◦ Cleared: Resume
You can navigate to the console logs in your pipeline to view the state of a change request when
a change request is created or when the state of the change request is updated. The policy
conditions associated with the change request state will also be evaluated and displayed in the
logs. For example, if the DevOps Change Request Advanced Automation policy is activated, the
policy conditions will be evaluated and the corresponding decision made (auto-approve/autoreject/manual-approval) will be displayed in the logs.
The following change request details are displayed:
• number
• details
• status
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
• sys_id
• type
• risk
• priority
• changeState
• plannedStartDate
• plannedEndDate
• changeRequestURL

The logs for policy conditions will be displayed for the base system change flows as follows:
• DevOps Model Change Policy: Only logs will be displayed on change creation and when the
change state is updated.
• DevOps Change Request Minimal Automation Policy: Logs along with change decision and
policy conditions corresponding to the change decision will be displayed.
• DevOps Change Request Advanced Automation Policy: Logs along with change decision and
policy conditions corresponding to the change decision will be displayed.
The change policy input and decision conditions are stored in the Decisions
[sys_decision_question] table. Logs will be displayed if the following fields and operators are
used as input for policy conditions:
Fields
• code_coverage
• commits_without_work_item
• integration_tests_failed
• load_tests_failed
• regression_tests_failed
• num_of_outages_in_last_7_days
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
• num_of_current_outages
• num_of_open_incidents
• total_num_of_commits
• tests_passing_percent
• risk
• code_security
• commits
Operators
• <=
• >=
• !=
•=
•<
•>
• ISNOTEMPTY
• ISEMPTY
• BETWEEN
• ANYTHING
• NSAMEAS
• SAMEAS
• GT_FIELD
• LT_FIELD

Note: If any field is modified in a change policy other than the base system fields, then
those fields must be manually added to the flow for policy conditions to be evaluated.
If a change request does not get created due to any issue, then the reason for the failure and the
state is also logged in the console.
Nested and parallel stages in Jenkins pipelines
Use nested and parallel stages in scripted Jenkins pipelines to speed up your pipeline
execution. Change requests are created for nested and parallel stages and not just for the parent
stage.

Support for nested and parallel stages in Jenkins pipelines
You can use nested and parallel stages in scripted Jenkins pipelines to automate and speed up
tasks that can be run in parallel. For example, you have a scripted Jenkins pipeline with nested
and parallel stages for various test cases such as different quality checks for different operating
systems and browsers.
ServiceNow DevOps supports processing parallel and nested stages in Jenkins pipelines and
displays the pipeline, in the DevOps pipeline UI. In effect, the ServiceNow DevOps pipeline UI
renders or replicates the Jenkins pipeline UI in real time. From the Pipeline Execution view of the
relevant pipeline, click the Pipeline UI related link to view the real-time state of the pipeline as it
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
appears in Jenkins. The associated artifact details that are sourced from the build pipeline, Test
Results, Software Quality Summary Results, and Change request details display on the pipeline
UI.

Important: Support for parallel and nested stages is restricted to scripted pipelines
in Jenkins. Freestyle pipelines continue to appear in a sequential or serial manner in the
DevOps pipeline UI, even if parallel and nested stages are part of freestyle pipelines in
Jenkins.
Jenkins pipeline with nested or parallel stages

Sample pipeline with nested or parallel stages
pipeline {
agent any
stages {
stage('Build') {
steps {
echo 'Building...'
// Your build steps here
}
}
stage('Test') {
parallel {
stage('Unit Tests') {
steps {
echo 'Running unit tests...'
// Your unit test steps here
}
}
stage('Integration Tests') {
steps {
echo 'Running integration tests...'
// Your integration test steps here
}
}
stage('Additional Tests') {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
steps {
script {
parallel(
'Nested Stage 1': {
echo 'Running nested
parallel stage 1...'
// Your nested parallel
stage 1 steps here
},
'Nested Stage 2': {
echo 'Running nested
parallel stage 2...'
// Your nested parallel
stage 2 steps here
}
)
}
}
}
}
}
stage('Deploy') {
steps {
echo 'Deploying...'
snDevOpsChange changeRequestDetails:
'{ "attributes": {"chg_model":
"e55d0bfec343101035ae3f52c1d3ae49","standard_change_template"="
563504cc47410200e90d87e8dee490e2"},"autoCloseChange":
false}',changeStepTimeOut: 18000, pollingInterval: 60
// Your deploy steps here
}
}
}
}

Change requests in nested and parallel stages
Change requests are created for all nested and parallel stages, once all upstream events (prior
to the change request) are received. In previous releases, nested or parallel stages in Jenkins
pipelines were not identified nor processed in ServiceNow DevOps. Only parent stages were
identified and processed in a linear or sequential manner. If change requests existed as part
of any nested and parallel stages, those change requests were ignored and a single change
request was processed as part of the parent stage. When you run a new pipeline after upgrading,
new steps and steps executions are created for nested stages.
Nested and parallel stages were not processed previously, and approval groups were mapped
only to the parent stage. Because nested and parallel stages are identified during processing,
you must verify that relevant approval groups are mapped to the appropriate nested or parallel
stage. If subsequent steps of the pipeline are dependent on the change request's being
approved, the pipeline execution is paused, and resumed when the change request is approved.

Upgrade Considerations
If you are already using Jenkins with nested and parallel pipelines as your orchestration tool,
consider the following while upgrading.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
• Upgrade during off-peak hours.
• Ensure that you do not have any pipeline executions that are currently in progress by
ServiceNow DevOps. If pipeline executions are being processed, step executions might not be
created as expected for the in-progress pipeline runs. Rerun the pipeline to create appropriate
step executions.
Jenkins log levels and Log Recorders
Set log levels in the Jenkins plugin for ServiceNow DevOps based on the extent of log detail you
need for debugging.

Base system Log Recorder in Jenkins logs
You can set the level of detail that your log messages capture. In previous versions of the plugin,
you could only enable or disable the Debug mode, which meant that you could either enable
or disable all Jenkins logs without the ability to select the level of information or detail you want
to save in your logs. Often, this leads to excessive information in your logs, used up more disk
space, and collected information that might not always be relevant or useful.
The flexibility to set log levels allows you to select the right log level information that is
appropriate for your organizational needs. You can select custom log levels based on the log
levels or categories that Jenkins currently supports.
The log level is turned off by default for first-time DevOps installations. Consider the following
items after successfully upgrading:
• if the Debug check box was previously selected, the log level is enabled and set to Info by
default.
• If the Debug check box was cleared previously, by default, log levels are tuned off.

Note:
The Jenkins log does not record log messages at a level lower than Info. The base system
ServiceNow DevOps log recorders are used to record this message.
You can select a custom level from the Jenkins plugin- ServiceNow DevOps Configuration form
> Log level list. A base system ServiceNow DevOps log recorder is created in the Jenkins Log
Recorders list. For more information, see Jenkins documentation on viewing logs .

Note: Do not modify the log recorder from the Jenkins > Log Recorders > Configure log
recorders. Editing the log recorder from Jenkins creates a duplicate entry for any changes
to the log levels that you make. Please use the list of log levels in the ServiceNow DevOps
Configuration form, to modify the log levels.

Argo CD integration with DevOps Change Velocity
Connect to your Argo CD instance to automate the deployment of applications from GitHub
repositories.

Argo CD integration overview
This integration enables the ServiceNow platform to manage the change request closure
process based on the sync status received from Argo CD for continuous deployment of
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
You must activate the DevOps Integration with Argo CD plugin (sn_devops_argocd) before
connecting your Argo CD instance in ServiceNow. For more information on activating a plugin,
see Activate a plugin .

Workflow
Here is the workflow of how the continuous deployment process works through Argo CD in
ServiceNow DevOps.
• Create an Argo CD tool connection in ServiceNow DevOps Change Velocity using the Classic
or Workspace UI.
• Create a webhook in Argo CD manually.
• Update your Config file in the GitHub repository for deployment. While updating the Config file,
specify the change request number in the commit tag (sn_devops_change-<change request
number>).

Note: The change request number specified in the commit tag must already be created
by the CI pipeline and in the implement state.
• Sync the required app associated with your Config file and repository in Argo CD.
• Once sync is successful, notifications are sent to ServiceNow DevOps and inbound events are
created.
• Change request number is retrieved from the inbound events and updated with the Argo CD
synchronization status.
• Change request is closed and based on the sync status, the close code, worknotes, and close
notes fields are updated in the change request.

Example
The following examples specify how changes made in Argo CD are notified to ServiceNow
DevOps through the webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
• The Config file is updated in GitHub with the following commit tag

format:
• Inbound events are created in ServiceNow when an app is synced in Argo

CD:
• If sync is successful, the change request is closed and the close
code, worknotes, and close notes fields are updated in the change

request:
Onboard Argo CD to DevOps Change Velocity – Workspace
Connect to your Argo CD instance using the DevOps Change Workspace playbook to automate
the deployment of applications from GitHub repositories.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Argo CD.
Option

Steps

a. Select the Connect tool widget
Homepage

b. On the Connect to a tool modal, select Argo CD from the Or­
chestration category.
a. Select Applications (

Applications module

).

b. Select an existing application, or create one. To create an appli­
cation, see Create an application - Classic.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select Argo CD from the Or­
chestration category.
a. Select Tools (

Tools module

).

b. From the Capability list, select Orchestration.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Argo CD.

2. Specify a name for the tool in the Tool name field, and select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
3. On the Argo CD instance details playbook activity:
a. Enter the URL of your Argo CD instance.
b. Enter the login credentials of the Argo CD instance.

Note: To generate a token for the user in Argo CD, go to Accounts. Ensure that the
user has the capability: apiKey. For more information, see Argo CD documentation

.

c. Optional: Select the MID Server option and enter its details if your Argo CD instance is
attached to a MID Server.
A MID server is required if your tool instance is hosted on-prem. For more information about
MID server, see MID Server selection .

4. Select Connect.
5. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

6. From the Summary page, select View tool record to review the details of the connected
instance.

Result

You’ve successfully onboarded your Argo CD tool to DevOps Change Velocity.
Onboard Argo CD to DevOps Change Velocity — Service Catalog
Connect your Sonar instance using the ServiceNow Service Catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your Argo CD integration.

Tool integration

Select Argo CD.

Tool URL

Argo CD instance URL.

Tool username/API ID

Username of your Argo CD instance.

Tool password/ Access token/API key

Argo CD user token or password.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

5. Select Order Now.
A request is created. When the request is approved, the tool is connected and discovered.
6. From the DevOps catalog items, select DevOps App Onboarding.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Enter the connected Argo CD tool name.

Pipelines

Select the pipelines for which you want to
configure webhooks and import historical
data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

Onboarding repositories

Leave empty.

Onboarding plans

Leave empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
8. Select Order Now.
A request is created. When the request is approved, the pipeline objects are associated to the
app record, which enables real-time tracking. Historical data is also imported for the selected
pipelines. The Track field is automatically enabled for imported pipelines.
Onboard Argo CD to DevOps Change Velocity — Classic
Connect your Argo CD instance using the Classic UI in DevOps Change Velocity.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to DevOps > Tools > Create New (legacy) and create a record.
2. Enter a Tool Name and fill in the tool details.
Create DevOps Tool form
Field

Tool integration
Tool URL

Description

Tool to integrate. In this case, select Argo CD.
URL of the existing Argo CD instance to
integrate.
For example:
https://argocd.k8s.sndevops.xyz/

Tool username

Username of your Argo CD instance.

Tool password

Password of your Argo CD instance.

3. Optional: Select MID Server for an on-premises tool that is attached to a MID Server.
Application is automatically set to DevOps and capability is set to REST.
4. Select Submit.
The tool is automatically Connected Successfully using a connection alias, and HTTP tool
connection (basic authentication credential).
Configure webhooks in Argo CD manually
Configure webhooks in Argo CD to send sync notifications to the DevOps Change Velocity
application.

Before you begin

Role required: Argo CD admin

About this task

The subscription to Argo CD application events can be defined using the
notifications.argoproj.io/subscribe.<trigger>.<service>:
<recipient> annotation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
Procedure
1. In Argo CD, update the ConfigMap: argocd-notifications-cm.yaml to set up the
notifications that are send to DevOps Change Velocity.
apiVersion: v1
kind: configMap
metadata:
name: argocd-notifications-cm
namespace: default
data:
context: |
argocdUrl: "https://<argocdURL>"
service.webhook.sn_devops_argocd: |
url:
https://<instance>.service-now.com/api/sn_devops/v2/devops/to
ol/orchestration?toolId=<toolId>
basicAuth: ✅optional username password
username: ""
password: ""
template.app-sync-succeeded: |
webhook:
sn_devops_argocd:
method: POST
body: |
{
"titleLink" :
"http://<argocdURL>/applications/{{.app.metadata.name}}",
"syncStatus" : "{{.app.status.sync.status}}",
"repo" : "{{.app.spec.source.repoURL}}",
"revision": "{{.app.status.sync.revision}}",
"path":
"/repos/{{call .repo.FullNameByRepoURL .app.spec.source.repoUR
L}}/statuses/{{.app.status.operationState.operation.sync.revisi
on}}",
"commitAuthor" :
"{{(call .repo.GetCommitMetadata .app.status.sync.revision).Au
thor}}",
"commitMessage" :
"{{(call .repo.GetCommitMetadata .app.status.sync.revision).Me
ssage}}",
"commitTags" :
"{{(call .repo.GetCommitMetadata .app.status.sync.revision).Ta
gs}}",
"startedAt" :
"{{.app.status.operationState.startedAt}}",
"finishedAt" :
"{{.app.status.operationState.finishedAt}}",
"message": "{{.app.metadata.name}} app is synced"
}
trigger.on-sync-status-unknown: |
- description: Application status is 'Unknown'
send:
- app-sync-status-unknown
when: app.status.sync.status == 'Unknown'
trigger.on-sync-succeeded: |
- description: Application syncing has succeeded
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
send:
- app-sync-succeeded
when: app.status.operationState.phase in ['Succeeded']
subscriptions: |
- recipients:
- sn_devops_argocd
triggers:
- on-sync-succeeded
- on-sync-status-unknown
2. Open the Argo CD app for which you are configuring webhooks.
3. Navigate to APP DETAILS > SUMMARY.
4. Add the notifications.argoproj.io/subscribe.<trigger>.<service>: <recipient> annotation with
the trigger condition to sync the change status for your instance.
For example, notifications.argoproj.io/subscribe.on-sync-

succeeded.sn_devops_argocd.

Jira integration with DevOps Change Velocity
Connect to your Jira server or cloud instance to discover plans and enable real-time notifications
for projects, issues, and releases.

Jira integration overview
When you connect and configure a Jira instance, all existing work items are imported through
plans, and a webhook is established to ensure updates are tracked real-time. You can then
associate these planning objects to application for end-to-end traceability.

Get started
Use one of the following options to onboard Jira. For a guided experience, use the workspace to
onboard a tool. Alternatively, you can use the Service Catalog or Classic experience.
Onboard Jira to DevOps Change Velocity — Workspace
Connect to your Jira Server or Jira Cloud instance from the DevOps Change Workspace to
discover available plans and register webhooks to track projects, stories, features, and epics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Jira.
Option

Steps

a. Select Connect a tool.
Homepage

b. On the Connect to a tool modal, select Jira from the Plan catego­
ry.
a. Select Applications (

Applications module

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select Jira from the Plan catego­
ry.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select Planning.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Jira.

Important: If you want to discover and track tool objects like plans while connecting to
the tool, you must connect your tool from the Application module.
2. Connect to your Jira Server or Jira Cloud instance.

a. From the Platform list, select Jira Server.
Jira Server

b. In the Tool name field, enter a name for the tool.
This name is used to identify your Jira instance from the list of
tools connected to DevOps Change Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


<!-- page 820 -->
a. From the Platform list, select Jira Cloud.
b. In the Tool name field, enter a name for the tool.
This name is used to identify your Jira instance from the list of
tools connected to DevOps Change Velocity.

Jira Cloud

3. Select Next.
The DevOps playbook page opens to help you complete the onboarding tasks.
4. Complete the connection to your Jira tool using the playbook.
a. Enter the connection details.

Jira Server

i. Enter your Jira server instance URL.
ii. From the Credential type list, select the authentication type
you want to use to connect with your Jira server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
▪ Basic Auth
1. Enter your Jira server username.

Note: The Jira user that you use here must have
the Jira Administrators permissions.
2. Enter the password or access token to access this
instance.

▪ API Key
Enter the API token to access the instance.

iii. If your Jira instance is attached to a MID Server, select the
MID Server option and enter its details.
For more information about MID server, see MID Server
selection
i. Enter your Jira Cloud instance URL.

Note: If you select the credential type as OAuth 2.0
with 3LO in the next step, you must enter your Jira
instance URL in the following format:
Jira Cloud

https://api.atlassian.com/ex/jira/<Cl
oud-ID>
For information on obtaining the value of Cloud ID, see
Obtain the value of Cloud ID .
ii. Select the credential type as Basic Auth or OAuth 2.0 with
3LO.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
Basic Auth
1. Enter your Jira Cloud username.

Note: The Jira user that you use here must have the
Jira Administrators permissions.
2. Enter the password or access token to access this instance.

OAuth 2.0 with 3LO
Pre-requisites:
▪ Create an OAuth 2.0 integration in Jira account
▪ Create an application registry in ServiceNow instance
▪ Create a credential record for Jira Cloud
Select an existing OAuth 2.0 credential record in the
Credential field, or select Create OAuth 2.0 credential record
to create a new record. For instructions on creating a new
credential record, see Create a credential record for Jira
Cloud .

Note:
▪ The option to create a new OAuth 2.0 will only be
available if you have the connection & OAuth admin
role.
▪ Only records that are not in use and configured for
Jira Cloud can be selected as an existing credential
record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
iii. If your Jira instance is attached to a MID Server, select the
MID Server option and enter its details.
For more information about MID server, see MID Server
selection
b. Select Connect.
If the connection is successful, the tool is created in the DevOps Change Velocity and
connected to your Jira instance.
c. Permission checks are run on the credentials that you entered.
Permissions required and permissions that are available are displayed. If you want to enter
credentials with better permissions, select Re-enter credentials. For detailed information on
all the required permissions, see Jira permissions in Permissions required for DevOps tools.
You can choose to continue with the tool connection even if you don't have all the required
permissions.

d. Select Next.
5. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

6. To send data in real time between DevOps and your Jira instance, select Configure.
This action does the following:
◦ Registers a webhook between your Jira and ServiceNow instances, and enables real-time
data transfer between the two.
◦ If you have connected your Jira tool using OAuth 2.0 based authentication, the webhooks
are created for the OAuth 2.0 integration app in Jira when you configure automatically,
whereas if you have connected using basic authentication, the webhooks are created for all
your projects in Jira. If you choose to configure the webhooks manually for a Jira tool created
using OAuth 2.0 based authentication, a duplicate webhook may get created.
All the discovered Jira projects are listed as Plans.
If you don’t choose to configure now, you can enable nightly polling later to fetch data for any
tracked plans by setting the Enable Polling system property to Yes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
To configure manually, select Configure manually. See Configure webhooks in Jira manually
for more information.

Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then plans available in your Jira
instance are discovered. You can track and import historical data from them.
7. Select the plans to track.
a. Select the plans for which you want to track updates and associate to the application.
After the tool onboarding is complete, the work items only for these selected plans are
automatically imported.
b. Select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


<!-- page 826 -->
c. If you want to import plan data, select the date range and select Submit.
You can import up to 90 days of data.

8. From the Summary page, select View tool record to review the details of the connected
instance and the plans discovered from it.

Result

You’ve successfully onboarded your Jira tool to DevOps Change Velocity.

What to do next

From the tool record page, you can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
• See the details and status of the tool.
• Discover plans and Configure webhooks.

Note:
◦ By default, projects are discovered in a set of 50 for Jira Cloud. 50 is the maximum
pagination limit supported by Jira. If you want to reduce this value, then you should edit
the respective constant in DevOpsCommonConstants script.
◦ Project and version data that are discovered aren't updated or tracked in real time.
• Assign groups to control access to the tool using the Maintained by field.
• Check credential permissions and update credentials for the tool. For more details, see Check
permissions and update credentials for tools — Workspace.
• From the Plans tab, select a plan to view its details such as imported work items, features, and
others.
• To import historical data from the plans, associate the plans with an application, and import the
data. For more information, see Associate tool objects to applications - Workspace.

Note: It is recommended not to update the project key for projects in Jira. If the project
key is updated, the updated object names will not reflect in DevOps Change Velocity. Only
when the object is updated in Jira, the new name will reflect in DevOps Change Velocity.
Related topics
Configure webhooks from the tool record
Onboard Jira to DevOps Change Velocity — Service Catalog
Create, connect, discover, and configure your Jira Server or Jira Cloud instance using the
ServiceNow Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from the Employee Center or Service
portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Jira Server

a. In the Tool name field, enter a name for the tool.
b. In the Tool integration field, search for and select Jira.
c. Enter your Jira server instance URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
d. From the Credential type list, select the authentication type
you want to use to connect with your Jira server.
▪ Basic Auth
i. Enter your Jira server username.

Note: The Jira user that you use here must have the
Jira Administrators permissions.
ii. Enter the password or access token to access this
instance.
▪ API Key
Enter the API token to access the instance.
e. If you want to configure webhooks for all the projects
discovered in your Jira instance, then select the option Do you
wish to configure webhook for the tool?
f. Select Use MidServer for an on-premises tool that is attached
to a MID Server. Application is automatically set to DevOps
and capability is set to REST.
a. In the Tool name field, enter a name for the tool.
b. In the Tool integration field, search for and select Jira Cloud.
c. in the Tool URL field, enter your Jira Cloud instance URL.
d. In the Credential type field, select Basic Auth or OAuth 2.0.
Basic Auth
i. Enter your Jira Cloud username.

Note: The Jira user that you use here must have the
Jira Administrators permissions.
Jira Cloud

ii. Enter the password or access token to access this instance.
OAuth 2.0
Pre-requisites:
▪ Create an OAuth 2.0 integration in Jira account
▪ Obtain the value of Cloud ID
▪ Create an application registry in ServiceNow instance
▪ Create credential record for Jira Cloud
In the Tool credential field, select an existing OAuth 2.0 tool
credential record.

Note: Only records that are not in use and configured
for Jira Cloud can be selected as an existing credential
record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
e. If you want to configure webhooks for all the projects
discovered in your Jira instance, then select the option Do you
wish to configure webhook for the tool?

Note: If you have connected your Jira tool using OAuth
2.0 based authentication, the webhooks are created for
the OAuth 2.0 integration app in Jira when you configure
automatically, whereas if you have connected using basic
authentication, the webhooks are created for all your
projects in Jira.
f. Select Use MidServer for an on-premises tool that is attached
to a MID Server. Application is automatically set to DevOps
and capability is set to REST.
For a list of all the permissions required on the credentials for connecting to Jira, see Jira
permissions in Permissions required for DevOps tools.
5. Select Order Now.
A request is created. When the request is approved, the tool is created, connected, configured,
and discovered.
6. From the DevOps catalog items, select DevOps App Onboarding and select Try it.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Leave empty.

Onboarding repositories

Leave empty.

Onboarding plans

Enter the connected Jira tool name.

Plans

Select the plans for which you want to import
historical data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

8. Select Order Now.
A request is created. When the request is approved, the plan objects are associated to the app
record, which enables real-time tracking. Historical data is also imported for the selected plans.
The Track field is automatically enabled for imported plans.
Onboard Jira to DevOps Change Velocity — Classic
Connect your Jira Server or Jira Cloud instance to discover, configure, and import projects and
work items such as stories, epics, and features.

Before you begin

Complete the tasks in Getting started with DevOps Change Velocity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


<!-- page 830 -->
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Connect to your Jira Server or Jira Cloud instance.
a. Navigate to DevOps > Tools > Create New (legacy).
b. Enter the details for connecting to your Jira instance.

i. In the Tool name field, enter a name for the tool.
ii. In the Tool integration field, search for and select Jira.
iii. Enter your Jira server instance URL.
iv. From the Credential type list, select the authentication type you
want to use to connect with your Jira server.

Jira Server

▪ Basic Auth
1. Enter your Jira server username.

Note: The Jira user that you use here must have the
Jira Administrators permissions.
2. Enter the password or access token to access this instance.
▪ API Key
Enter the API token to access the instance.
i. In the Tool name field, enter a name for the tool.
ii. In the Tool integration field, search for and select Jira Cloud.
iii. in the Tool URL field, enter your Jira Cloud instance URL.
iv. In the Credential type field, select Basic Auth or OAuth 2.0.
Basic Auth
1. Enter your Jira Cloud username.
Jira Cloud

Note: The Jira user that you use here must have the Jira
Administrators permissions.
2. Enter the password or access token to access this instance.
OAuth 2.0
Pre-requisites:
▪ Create an OAuth 2.0 integration in Jira account
▪ Obtain the value of Cloud ID

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
▪ Create an application registry in ServiceNow instance
▪ Create credential record for Jira Cloud
In the Tool credential field, select an existing OAuth 2.0 tool
credential record.

Note: Only records that are not in use and configured for
Jira Cloud can be selected as an existing credential record.
For a list of all the permissions required on the credentials for connecting to Jira, see Jira
permissions in Permissions required for DevOps tools.
c. Optional: If your Jira instance is attached to a MID Server, select the MID Server option and
enter its details.
(Optional) For more information about MID server, see MID Server selection
d. Select Submit.
The tool is automatically connected using a connection alias and HTTP tool connection (Basic
Auth credential).
On successful tool creation, you're taken to the tool record page.
2. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.

Role

Description

DevOps Tool Owner role

Can view and edit the tool.

DevOps App Owner role

Can view the tool and can associate, discover,
import historical data, and modify pipeline steps
(if applicable) of the tool's objects (such as plans,
repositories, and pipelines).

DevOps Administrator role

Can edit all tools.

Other DevOps roles

Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
3. Select Discover to discover all existing projects from Jira.

Note: By default, projects are discovered in a set of 50 for Jira Cloud. 50 is the
maximum pagination limit supported by Jira. If you want to reduce this value, then you
should edit the respective constant in DevOpsCommonConstants script.
4. Select Configure to configure webhooks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
This action does the following:
◦ Registers a webhook between your Jira and ServiceNow instances, and enables real-time
data transfer between the two.
◦ If you have connected your Jira tool using OAuth 2.0 based authentication, the webhooks
are created for the OAuth 2.0 integration app in Jira when you configure automatically,
whereas if you have connected using basic authentication, the webhooks are created for all
your projects in Jira.
All the discovered Jira projects are listed as Plans.
If you don’t choose to configure now, you can enable nightly polling later to fetch data for any
tracked plans by setting the Enable Polling system property to Yes.

Note: If you don’t have admin privileges for Jira to allow automatic configuration of the
webhook URL, request your Jira admin to configure it for you. This action would require
creating and configuring the webhook URL manually in your tool instance. After the
webhook is configured in the tool, select Enter Manual Configuration Mode to connect
to Jira manually, then exit the manual configuration mode.
5. Select the Import related link to import historical data from Jira projects.
Imported work items are added to the corresponding related lists.

Note: If the project key for a project is updated in Jira, the updated object names will
not reflect in DevOps Change Velocity. Only when the object is updated in Jira, the new
name will reflect in DevOps Change Velocity.
Configure webhooks in Jira manually
Configure webhooks in your Jira Server or Jira Cloud instance to send sync notifications to the
DevOps Change Velocity application.

Before you begin
Role required:

• sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity.
• Jira admin role in your Jira Server or Jira Cloud instance.

About this task

If you have connected your Jira tool using OAuth 2.0 based authentication, the webhooks are
created for the OAuth 2.0 integration app in Jira when you configure automatically, whereas if you
have connected using basic authentication, the webhooks are created for all your projects in Jira.
If you choose to configure the webhooks manually for a Jira tool created using OAuth 2.0 based
authentication, a duplicate webhook may get created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Procedure
1. In DevOps Change Velocity, in the Configure to send data playbook activity, select Configure
manually when configuring the tool instance to send data.

Note: You can also access manual configuration from the Jira tool record in DevOps
Change Velocity. From the tool record, select Configure > Configure manually.

2. Copy the Webhook URL field from the ServiceNow instance connection details for Jira.

Note: Select Copy in the appropriate field to copy the value to your clipboard. The field
label changes to Copied, but you can copy multiple times.

3. Navigate to:
◦ For Jira Server navigate to Administration > System > WebHooks.
◦ For Jira Cloud instance, navigate to Settings > System > WebHooks.
4. Select Create a WebHook.
5. Enter the details for the webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
Field

Description

Name

Enter a name for the webhook.

Status

Select Enabled.

URL

Paste the Webhook URL copied from DevOps Change Velocity.
◦ Modify the copied webhook URL to reflect the code capability.
For example, https://<your_instance>.servicenow.com/api/sn_devops/v2/devops/tool/code?
toolId=<your_toolID>?ni.nolog.token=<Secure
Token>
◦ Append the token to the end of the webhook URL.

Events

Select the events to be tracked.
For example:

6. Select Create.
If you want to test the webhook, see the section on Jira in Test webhooks manually.

Rally integration with DevOps Change Velocity
Connect to your Broadcom Rally instance to discover plans and configure real-time notifications
to enable change traceability and automation.

Rally integration overview
With this integration, you can configure and expose data like projects, user stories, and defects
from Rally. You can then associate these planning objects to an application for end-to-end
traceability.
Install Rally plugin
You must install the Rally application from ServiceNow Store

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
Note:
• The default object types configured for Rally are
"ObjectTypes"["HierarchicalRequirement","Defect","Feature"].
• The file script include Rally state mapping helper is editable. You can override this file
with your specific customization as required.
• Scheduledstate in Rally is used when mapping object state to internal ServiceNow work
item state.
• For tool mappings, see Tool mappings.

Get started
Use one of the following options to onboard Rally. For a guided experience, use the workspace to
onboard a tool. Alternatively, you can use the Service Catalog or Classic experience.
Onboard Rally to DevOps Change Velocity — Workspace
Connect to your Rally instance using the DevOps Change Workspace playbook to configure
webhooks and discover plans.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Rally.
Option

Steps

a. Select Connect a tool.
Homepage

b. On the Connect to a tool modal, select Rally from the Plan cate­
gory.
a. Select Applications (

Applications module

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select Rally from the Plan cate­
gory.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select Planning.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Rally.

Important: If you want to discover and track tool objects like plans while connecting to
the tool, you must connect your tool from the Application module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
2. Enter a tool name to identify your tool and select Next.
3. On the Enter Rally instance details playbook activity, enter the following details:
a. In the URL of the Rally project field, enter your Rally project URL.
b. In the Password or access token field, enter the API token for your Rally instance.
c. (Optional) If your Rally instance is attached to a MID Server, select the Use MID Server
option and enter its details.
A MID server is required if your tool instance is hosted on-prem. For more information about
MID server, see MID Server selection .
4. Select Connect.
On successful connection, the tool is created in ServiceNow and connected to your Rally
instance.

5. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


<!-- page 837 -->
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

6. Configure webhooks automatically in Rally to send real-time notifications.

Note: If you prefer not to configure webhooks, you can enable nightly polling to fetch
data for all tracked plans by selecting the Enable import polling check box in DevOps
properties.
a. Select the plans that you want to track.
b. Select Configure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


<!-- page 838 -->
Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then plans available in your
instance are discovered. You can track and import historical data from them.
7. If you want to import plan data, select the date range and select Submit.
You can import up to 90 days of data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
8. From the Summary tab, select View tool record to review the details of the connected
instance and the plans discovered from it.

Result

You’ve successfully onboarded your Rally tool to DevOps Change Velocity.

What to do next

From the tool record page, you can do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
• See the details and status of the tool.
• Discover plans and configure webhooks.
• Assign groups to control access to the tool using the Maintained by field.
• From the Plans tab, select a plan to view its details such as imported work items, features, and
others.
• To import historical data from the plans, associate the plans with an application, and import the
data. For more information, see Associate tool objects to applications - Workspace.
Related topics
Configure webhooks from the tool record
Onboard Rally to DevOps Change Velocity — Service Catalog
Create, connect, discover, and configure your Rally instance using the ServiceNow Service
Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your Rally integration.

Tool integration

Select Rally.

Tool URL

URL of your Rally instance to integrate.

Tool password/ Access token

Enter the API key for Rally.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

5. Select Order Now.
A request is created. When the request is approved, the tool is created, connected,
discovered, and configured.
6. From the DevOps catalog items, select DevOps App Onboarding and select Try it.
7. In the DevOps App Onboarding form, enter the details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Leave empty.

Onboarding repositories

Leave empty.

Onboarding plans

Enter the connected Rally tool name.

Plans

Select the plans for which you want to import
historical data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

8. Select Order Now.
A request is created. When the request is approved, the plan objects are associated to the app
record, which enables real-time tracking. Historical data is also imported for the selected plans.
The Track field is automatically enabled for imported plans.
Onboard Rally to DevOps Change Velocity — Classic
With this integration, you can configure and expose data like projects, user stories, and defects
from the Rally. You can then associate these planning objects to application for end-to-end
traceability.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > DevOps > Tools > Create New (legacy).
2. In the Create DevOps tool form, enter the tool details:

Tool name

Name for the tool you're integrating.

Tool integration

Tool to integrate. Select Rally.

Tool URL

URL of your Rally instance to integrate.

Tool password / Access token

Enter the API key for Rally.

Use MID Server

MID Server is optional. Select MID Server for
an on-premises tool that is attached to a MID
Server. The Application value is automatically
set to DevOps and the Capability value is
set to REST. For more information, see MID
Server selection .

3. Click Submit to connect to your Rally instance.
On successful tool creation, you’re taken to the tool record page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
4. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
5. Click Discover to import existing projects associated with Rally.
Plan records are added to the Plans related links.
6. To configure webhooks for Rally projects:
a. Click Configure.
b. Select the projects for which you want to configure webhooks and click Continue.
7. Optional: To import historical data, select a plan and click Import.
Select the dates to import historical data from the Rally project. You can see the imported data
under Work Items. Select a work item to see details including commits made.

Note: Scheduledstate in Rally is used when mapping object state to internal
ServiceNow work item state.
Formatted id is used for the work item NativeID, for associating work items and commits.
Configure webhooks for Rally manually
Configure webhooks for Rally to send sync notifications to the DevOps Change Velocity
application.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity.

About this task

To send inbound events to a ServiceNow instance for Rally, you must use the following API
endpoint structure: <instance_url>/api/sn_devops/v2/devops/tool/plan?
toolId=<toolId>&&ni.nolog.token=<token>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
Procedure
1. In DevOps Change Velocity, in the Configure to send data playbook activity, select Configure
manually when configuring the tool instance to send data.

Note: You can also access manual configuration from the Jira tool record in DevOps
Change Velocity. From the tool record, select Configure > Configure manually.
2. Select Copy in the appropriate field to copy the value to your clipboard.
The field label changes to Copied, but you can copy multiple times.
3. Use the following API endpoint structure to send inbound events to your ServiceNow
instance. <instance_url>/api/sn_devops/v2/devops/tool/plan?
toolId=<toolId>&&ni.nolog.token=<token>.
For more information, see Creation of webhooks to send inbound events to DevOps Change
Velocity using token.

Agile Development 2.0 integration with DevOps Change Velocity
Connect to your ServiceNow Agile Development 2.0 instance to track your products and the
stories, epics, and release versions associated with it.
For more details about Agile Development 2.0, see Agile Development 2.0

.

Get started
Use one of the following options to onboard Agile Development 2.0. For a guided experience,
use the workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard Agile Development 2.0 to DevOps Change Velocity — Workspace
Connect to your Agile Development 2.0 instance using the DevOps Change Workspace playbook
to enable tracking of stories and epics.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
Activate the Agile Development 2.0 plugin. For more information, see Activate Agile Development
2.0 .
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Agile Development 2.0.
Option

Steps

a. Select Connect a tool.
Homepage

b. On the Connect to a tool modal, select Agile Development 2.0
from the Plan category.
a. Select Applications (

Applications module

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select Agile Development 2.0
from the Plan category.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select Planning.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Agile Development 2.0.

Important: If you want to discover and track tool objects like plans while connecting to
the tool, you must connect your tool from the Application module.
2. In the Tool name field, enter a name for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
3. Select Next.
The DevOps playbook opens to help you complete the onboarding tasks.
4. Select Connect.

5. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then plans available in your project
are discovered. You can track and import historical data from them.
6. Select the plans for which you want to track updates and associate to the application, and
select Next.
If you don’t choose to select plans now, you can enable nightly polling later to fetch the data
for any tracked plans by setting the Enable Polling system property to Yes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
7. If you want to import plan data, select the date range and select Submit.
You can import up to 90 days of data.
8. From the Summary page, select View tool record to review the details of the connected
instance and the plans discovered from it.

Result

You’ve successfully onboarded your Agile Development 2.0 tool to DevOps Change Velocity.
Onboard Agile Development 2.0 to DevOps Change Velocity — Service Catalog
Create, connect, discover, and configure your Agile Development 2.0 instance using the
ServiceNow Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner
Jira cloud version is not supported.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from the Employee Center or Service
portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your Agile Development 2.0
integration.

Tool integration

Select Agile Development 2.0.

5. Select Order Now.
A request is created. When the request is approved, the tool is created, connected, configured,
and discovered.
6. From the DevOps catalog items, select DevOps App Onboarding and select Try it.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Leave empty.

Onboarding repositories

Leave empty.

Onboarding plans

Enter the connected Agile Development 2.0
tool name.

Plans

Select the plans for which you want to import
historical data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

8. Select Order Now.
A request is created. When the request is approved, the plan objects are associated to the app
record, which enables real-time tracking. Historical data is also imported for the selected plans.
The Track field is automatically enabled for imported plans.
Onboard Agile Development 2.0 to DevOps Change Velocity — Classic
Connect to Agile Development 2.0 and discover plans from it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Create a tool record in DevOps to automatically connect to Agile Development 2.0 and get the
webhook URL.
a. Navigate to DevOps > Tools > Create New (legacy).
b. On the form, fill in the fields.

Tool name

Name of your choice to identify the tool.

Tool Integration

Select Agile Development 2.0

c. Click Submit.
On successful tool creation, you're taken to the tool record page.
2. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
3. Click Discover to discover Products from Agile Development 2.0.
Discovered records are added to the Plans related list.
4. Import data for the discovered plans by clicking the Import related link from a plan's record.
Epics, stories, and release versions associated to this plan are listed in the respective related
lists.
◦ Work items related list shows stories and defects.
Native State and Native Type fields of the work item contain the original state and type
values from the source tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
◦ Plan Versions related list shows releases.
◦ Features related list shows epics.

Bitbucket integration with DevOps Change Velocity
Connect to your Bitbucket instance to track Bitbucket repositories, commits, branches, and pull
requests.

Bitbucket integration overview
DevOps Change Velocity supports the Code (Repository) capability for the Bitbucket tool.

Authentication methods
You can connect to Bitbucket Cloud using one of the following authentication methods:
Basic Auth
When you select the credential type as Basic Auth the repositories for all the
workspaces in the organization are discovered. You can get the user name and
password for Basic Auth from the settings of your Bitbucket account. To copy the
user name, navigate to Settings > General > Account settings, and copy the user
name from the Bitbucket profile settings section. To copy the password, navigate
to Settings > Personal Bitbucket settings > App passwords, and select Create
app password. Enter the necessary details and select the required permissions,
and then select Create, and copy the password. The following permissions must be
selected while creating the credentials:
• Account: Read
• Projects: Read
• Webhooks: Read and write
• Pull requests: Read

OAuth 2.0 - Authorization Code
You must create the OAuth consumer in the Bitbucket tool with
the required permissions before creating the OAuth record for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
Authorization Code. You can navigate to Workspace settings > OAuth
consumers > Add consumer in Bitbucket to add the OAuth consumer.

Select the following permissions for the OAuth consumer.
• Account: Read
• Projects: Read
• Webhooks: Read and write
• Pull requests: Read
Ensure that the This is a private consumer option isn’t selected. You must enter
your ServiceNow instance URL in the Callback URL field in the following format.
https://<instanceurl>/oauth_redirect.do

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
You can create an OAuth 2.0 - Authorization Code credential by performing the
steps specified in the Set up OAuth 2.0 Authorization Code for Bitbucket Cloud
procedure.

Note: When you select the credential type as Oauth 2.0 - Authorization Code
for Bitbucket Cloud, the repositories for all the workspaces are discovered.
This is a limitation from Bitbucket side
OAuth 2.0 - Client Credentials
You must create the OAuth consumer in the Bitbucket tool with the
required permissions before creating the OAuth record for Client
Credentials. You can navigate to Workspace settings > OAuth
consumers > Add consumer in Bitbucket to add the OAuth consumer.

Select the following permissions for the OAuth consumer.
• Account: Read
• Projects: Read
• Webhooks: Read and write
• Pull requests: Read
Ensure that the This is a private consumer option is selected as well. You must
enter your ServiceNow instance URL in the Callback URL field in the following
format.
https://<instanceurl>/oauth_redirect.do

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
You can create an OAuth 2.0 - Client Credential record in the workspace UI while
onboarding the tool. You need the Client Id and Client secret values of your
Bitbucket workspace. Client ID of your Bitbucket tool is available in the OAuth
consumers section of your workspace settings (Workspace settings > OAuth
consumers > Add consumer) in the Key field. Client secret of your Bitbucket
tool is available in the OAuth consumers section of your workspace settings
(Workspace settings > OAuth consumers > Add consumer) in the Secret field.

Access Token
You can create the access token by performing the steps specified in the Atlassian
documentation. Ensure that the following permissions are provided while creating
the access token:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
• Account: Read
• Projects: Read
• Webhooks: Read and write
• Pull requests: Read

You also need the workspace ID of your Bitbucket workspace. Copy it from the
Workspace ID field in the Workspace settings of your Bitbucket Cloud account.

Get started
Use one of the following options to onboard Bitbucket. For a guided experience, use the
workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard Bitbucket to DevOps Change Velocity — Workspace
Create, connect, discover, and configure your Bitbucket instance using the DevOps Change
Velocity workspace.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Bitbucket.
Option

Steps

a. Select Connect a tool.
Homepage

b. On the Connect to a tool modal, select Bitbucket from the Code
category.
a. Select Applications (

Applications module

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select Bitbucket from the Code
category.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select Coding.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Bitbucket.

Important: If you want to discover and track tool objects like repositories while
connecting to the tool, you must connect your tool from the Application module.
2. Select Bitbucket Cloud or BitBucket Server from the Platform drop-down, enter a name for the
tool in the Tool name field, and select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
3. On the Bitbucket instance details playbook activity, enter the following details.
Tool

Steps

a. Enter the URL of your Bitbucket instance.
b. Enter the login credentials of the global ad­
min for the Bitbucket instance.

Bitbucket Server

c. If your Bitbucket instance is attached to
a MID Server, select the MID Server op­
tion and enter its details. A MID server is
required if your tool instance is hosted onprem. For more information about MID serv­
er, see
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Tool

Steps

a. Select the credential type as one of the fol­
lowing:
▪ Basic Auth
▪ Access Token
▪ OAuth 2.0 - Authorization Code
▪ Oauth 2.0 - Client Credentials
b. Perform the following steps based on the
credential type you selected,
For Basic Auth,
i. Enter a value in the Bitbucket Cloud user­
name field.
ii. Enter a value in the Password field.

Note: For more information on cre­
ating basic auth credentials, see
Bitbucket integration with DevOps
Change Velocity.

Bitbucket Cloud

For Access Token,
i. Enter a value in the Access Token field.
ii. Enter the Unique identifier of your Bit­
bucket Cloud workspace in the Work­
space ID field.

For Oauth 2.0 - Authorization Code,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
Tool

Steps

i. If you have an existing credential record,
enter a value in the Credentials field.
ii. If not, create a credential by performing
the steps specified in the Set up OAuth
2.0 Authorization Code for Bitbucket
Cloud topic.

For Oauth 2.0 - Client Credentials,
i. If you already have an OAuth credential
record created, select the Use an exist­
ing OAuth credential record option, and
select the required credential record in
the Credential field. If not, proceed to the
next step.
ii. Enter a value in the Client Id and Client
secret fields.

Note: You can get the Client Id
and Client secret values from your
Bitbucket account. Client ID of your
Bitbucket tool is available in the
OAuth consumers section of your
workspace settings in the Key field
of Bitbucket cloud. Client secret of
your Bitbucket tool is available in
the OAuth consumers section of
your workspace settings in the Se­
cret field of Bitbucket cloud. For
more information, see Bitbucket inte­
gration with DevOps Change Veloci­
ty.

c. If your Bitbucket instance is attached to
a MID Server, select the MID Server op­
tion and enter its details. A MID server is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
Tool

Steps

required if your tool instance is hosted onprem. For more information about MID serv­
er, see
.
4. Select Connect.
5. Permission checks are run on the credentials that you entered.
Permissions required and permissions that are available are displayed. If you want to enter
credentials with better permissions, select Re-enter credentials. For detailed information on
all the required permissions, see Bitbucket permissions in Permissions required for DevOps
tools.
You can choose to continue with the tool connection even if you don't have all the required
permissions.
6. Select Next.
7. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
8. Select the repositories for which you want to configure webhooks automatically.
Real-time notifications are ideal to maintain the most up-to-date information particularly for
automating change requests.
You can also set up webhook by configuring it manually. Alternatively, you can choose to
enable nightly polling to fetch data system for any tracked repositories by setting the Enable
Polling property to Yes.
9. Select Configure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
To configure manually, select Configure manually. See Configure webhooks in Bitbucket
manually for more information.

Important:
◦ If you're connecting from the Home page or Tools module, the connection is complete
and you're taken to the Summary page.
◦ If you're connecting from the Applications module, then repositories available in your
instance are discovered. You can track and import historical data from them.
10. Select the repositories you want to associate to the application, and select Associate
repositories.
11. In the Import historical data step, select the date range in the Start date and End date fields
and select Import data.

Note: You can import up to 90 days of data.
Imported commits, branches, and pull request records from the repository are added to the
corresponding related lists.
12. Select Next.
13. From the Summary page, review the details of the successfully connected Bitbucket tool.
Select View tool record to review the details of the connected instance and the repositories
discovered from it.

Result

You’ve successfully onboarded your Bitbucket tool to DevOps Change Velocity.

Note: If your tool credential changes, you must also update the credentials in DevOps
Change. For more information, see Update third-party tool credentials in DevOps Change
Velocity.
Related topics
Configure webhooks from the tool record
Onboard Bitbucket to DevOps Change Velocity — Service Catalog
Create, connect, discover, and configure your Bitbucket instance using the ServiceNow Service
Catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your Bitbucket integration.

Tool integration

Select Bitbucket.

Tool URL

URL of your Bitbucket instance.

Credential type

Select the credential type as one of the
following:
◦ Basic Auth
◦ Access Token
◦ OAuth 2.0 - Authorization Code
◦ Oauth 2.0 - Client Credentials
For more information, see Bitbucket
integration with DevOps Change Velocity.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

For a list of all the permissions required on the credentials for connecting to Bitbucket, see
Bitbucket permissions in Permissions required for DevOps tools.
5. Select Order Now.
A request is created. When the request is approved, the tool is created, connected, and
discovered.
6. From the DevOps catalog items, select DevOps App Onboarding.
7. In the DevOps App Onboarding form, enter the details:

Are you creating a new app or adding to an
existing one?

Select from the options whether to create a
new app or use an existing app.

App

Enter the name for the app that you're
creating or using.

Onboarding pipelines

Leave empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
Onboarding repositories

Enter the connected Bitbucket tool name.

Repositories

Select the repositories for which you want
to configure webhooks and import historical
data.

Import from and Import to

Select the dates for which you want to import
the data. By default, the last 30 days are
selected. You can choose to import data for a
maximum of 90 days.

Do you wish to configure webhook for the
tool?

Select the check box if you want to configure
webhooks for the selected repositories.

Onboarding plans

Leave empty.

8. Select Order Now.
A request is created. When the request is approved, the repository objects are associated to
the app record and webhooks are configured for real-time tracking. Historical data is imported
for the selected repositories. The Track field is automatically enabled for imported repositories.
Onboard Bitbucket to DevOps Change Velocity — Classic
Create, connect, discover, and configure your Bitbucket instance using the Classic UI.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner
Complete the steps specified in the Getting started section before connecting to a tool.

About this task
• Connect by using your Bitbucket instance details.
• Discover repositories.
• Configure to create the webhook in the Bitbucket repository automatically.
• Import commits, branches, and pull request records.

Procedure
1. Enter the Bitbucket instance details to connect to DevOps Change Velocity by navigating to All
> DevOps > Tools > Create New (legacy).
2. Enter a value in the Tool Name field and fill in the tool details.
Create DevOps Tool form
Field

Tool integration

Tool URL

Tool username, Tool password / Access token

Description

Tool to integrate. In this case, select
Bitbucket.
URL of the existing Bitbucket instance to
integrate.
Login credentials of the existing Bitbucket
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
For a list of all the permissions required on the credentials for connecting to Bitbucket, see
Bitbucket permissions in Permissions required for DevOps tools.
3. Select MID Server for an on-premises tool that is attached to a MID Server.
Application is automatically set to DevOps and capability is set to REST.
4. Select Submit.
The tool is connected successfully.
On successful tool creation, you are taken to the tool record page.
5. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
6. Select Discover to discover existing repositories for the coding tool.
Repository records are added to the Repositories related list.
7. Automatically configure the webhook URL in a Bitbucket repository to send notifications to the
DevOps tool by selecting Configure.
Alternatively, you can choose to enable nightly polling to fetch data system for any tracked
repositories by setting the Enable Polling property to Yes.
8. Select Import to import historical data from the repository.

Note: If your tool credential has changed, you must update the credentials in your
ServiceNow instance. For more information, see Update third-party tool credentials in
DevOps Change Velocity.
Imported commits, branches, and pull request records from the repository are added to the
corresponding related lists.
9. In the App field, click the lookup list and select an App record to associate with the repository,
or click New to create one.
Set up OAuth 2.0 Authorization Code for Bitbucket Cloud
Set up OAuth 2.0 Authorization Code credentials for Bitbucket in DevOps Change Velocity to use
a more secure authentication method.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Before you begin

The OAuth consumer must be created in the Bitbucket tool with the required permissions
before creating the OAuth credential record. You can navigate to Workspace settings > OAuth
consumers > Add consumer in Bitbucket to add the OAuth consumer. The following permissions
must be selected when you create the credentials for OAuth 2.0.
• Account: Read
• Projects: Read
• Webhooks: Read and write
• Pull requests: Read
The This is a private consumer option must be deselected. You must enter your ServiceNow
instance URL in the Callback URL field in the following format.
https://<instanceurl>/oauth_redirect.do

You need the Client Id and Client secret values of your Bitbucket workspace. Client ID
of your Bitbucket tool is available in the OAuth consumers section of your workspace
settings (Workspace settings > OAuth consumers > Add consumer) in the Key field.
Client secret of your Bitbucket tool is available in the OAuth consumers section of your

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
workspace settings (Workspace settings > OAuth consumers > Add consumer) in the Secret

field.
Role required: admin

About this task

When you select the credential type as OAuth 2.0 - Authorization Code for Bitbucket Cloud, the
repositories for all the workspaces are discovered. This is a limitation from Bitbucket side.

Procedure
1. Navigate to All > System OAuth > Application Registry.
2. Select New.
The system displays the message What kind of OAuth application?
3. Select Connect to a third party OAuth Provider.
The system displays an empty Application Registries form.
4. Fill the following fields in the form.

Field

Value required

Name

Enter any name to uniquely identify the record.

Client ID

Client ID of your Bitbucket tool, which is available in the OAuth consumers
section of your workspace settings in the Key field of Bitbucket cloud.

Client Secret Client secret of your Bitbucket tool, which is available in the OAuth consumers
section of your workspace settings in the Secret field of Bitbucket cloud.
Default Grant Select Authorization Code.
type
Authorization
Enter https://bitbucket.org/site/oauth2/authorize
URL
Token URL

Enter https://bitbucket.org/site/oauth2/access_token

5. Leave the rest of the form fields as default.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
6. Select and hold (or right-click) the form header, and select Save.
◦ The system validates the OAuth credentials and populates the Redirect URL (Hint: It should
match the User authorization callback URL previously provided in your Bitbucket Cloud
configuration).
◦ The system populates OAuth Entity Profile with Grant Type as Authorization Code. For
example, OAuth Entity Profile is created with default Name, My Bitbucket App Provider
default_profile
7. Navigate to All > Connections & Credentials > Credentials.
8. Select New.
The system displays the message What type of Credentials would you like to create?.
9. Select OAuth 2.0 Credentials.
The pop-up window displays an empty OAuth 2.0 Credentials form.
10. Fill in these values.

Field

Value required

Name

Enter any name to uniquely identify the record.

Active

Enable

OAuth Entity
Profile

Select the default OAuth Entity profile that you created in step 6.

Applies to

Select the MID Servers that can use this credential. For example, select All
MID Servers.

Note: You must connect to your Bitbucket tool instance using MID
Server to use this credential.
Order

Select the order to apply this credential. For example, enter 100.

11. Save the record.
12. Select the Get OAuth Token related link to generate the OAuth token.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Configure webhooks in Bitbucket manually
Configure webhooks in Bitbucket to send sync notifications to the DevOps Change Velocity
application.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity, Bitbucket
admin

About this task

You can also access manual configuration from the Bitbucket tool record in DevOps Change
Velocity.

Procedure
1. In Bitbucket, navigate to Settings > Webhooks for the specified repo, and add a webhook.
2. In DevOps Change Velocity, choose Configure manually when configuring the tool instance to
send data.

3. In DevOps Change Velocity, copy the Webhook URL field from the ServiceNow instance
connection details for Bitbucket.

Note: Select Copy in the appropriate field to copy the value to your clipboard. The field
label changes to Copied, but you can copy multiple times.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
4. In Bitbucket, navigate to Repository settings > Webhooks > Edit webhook, and paste the
copied Webhook URL in the URL field.
5. Select the following triggers.
◦ Repository: Push
◦ Pull request: Created, Updated, Approved, Approval removed, Changes Request created,
Changes Request removed,Merged, Declined, Comment created, Comment updated,
Comment deleted, Comment resolved, Comment reopened.

6. Select Save.

JFrog integration with DevOps Change Velocity
Connect to your JFrog instance to track artifacts published to JFrog from pipeline executions in
Jenkins, GitHub Actions, Azure DevOps, and GitLab.
For Jenkins, you must activate the Jenkins Artifactory plugin in your Jenkins server to generate
the artifacts as part of your pipeline run and publish them in the JFrog artifact repositories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Note: Historical import of JFrog artifacts is not supported. You can import JFrog artifacts
that are built by Jenkins using the Service Catalog import historical data process. For more
information, see Importing historical data for DevOps tools. Discover and configure is also
not supported for JFrog.

Get started
Use one of the following options to onboard JFrog. For a guided experience, use the workspace
to onboard a tool. Alternatively, you can use the Service Catalog or Classic experience.
Onboard JFrog to DevOps Change Velocity — Workspace
Connect to your JFrog instance using the DevOps Change Workspace playbook to track artifact
repositories published to JFrog.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard JFrog.
Option

Steps

a. Select the Connect tool widget
Homepage

b. On the Connect to a tool modal, select JFrog from the Artifact
category.
a. Select Applications (

Applications module

).

b. Select an existing application, or create one. To create an appli­
cation, see Create an application - Classic.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select JFrog from the Artifact
category.
a. Select Tools (

Tools module

).

b. From the Capability list, select Artifact.
c. Select Connect a tool.
d. On the Connect to a tool modal, select JFrog.

2. Specify a name for the tool in the Tool name field, and select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
3. On the JFrog instance details playbook activity:
a. Enter the URL of your JFrog instance.
b. Enter the login credentials of the global admin for the JFrog instance.
c. Optional: Select the MID Server option and enter its details if your JFrog instance is
attached to a MID Server.
A MID server is required if your tool instance is hosted on-prem. For more information about
MID server, see MID Server selection .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
4. Select Connect.
5. Permission checks are run on the credentials that you entered.
Permissions required and permissions that are available are displayed. If you want to enter
credentials with better permissions, select Re-enter credentials. The credentials that you
specified must have the Administer Platform role in JFrog for seamless discovery and import
of tool objects. This is a limitation from JFrog. For detailed information on all the required
permissions, see Jira permissions in Permissions required for DevOps tools.
You can choose to continue with the tool connection even if you don't have all the required
permissions.

Note: If your tool credential has changed, you must update the credentials in your
ServiceNow instance. For more information, see Update third-party tool credentials in
DevOps Change Velocity.

6. Select Next.
7. Specify the access for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
▪ DevOps Tool Owner role: Can view and edit the tool.
▪ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
▪ DevOps Administrator role: Can edit all tools.
▪ Other DevOps roles: Can view the tool.

Note: If you don't select a group and skip this step, all users with the DevOps Tool
Owner role will be able to edit the tool.
b. If you choose to control access to the tool, the All App Owners can view and associate tool
objects to applications option becomes available for selection.
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
8. From the Summary page, select View tool record to review the details of the connected
instance.

Result

You’ve successfully onboarded your JFrog tool to DevOps Change Velocity.
Onboard JFrog to DevOps Change Velocity — Service Catalog
Connect your JFrog instance using the ServiceNow Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps App Onboarding and DevOps
Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your JFrog integration.

Tool integration

Select JFrog.

Tool URL

URL of your JFrog instance.

Tool username, password or access token

Login credentials of the global admin for the
existing JFrog instance.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
For a list of all the permissions required on the credentials for connecting to JFrog, see JFrog
permissions in Permissions required for DevOps tools.
5. Select Order Now.
A request is created. When the request is approved, the tool is connected.
Onboard JFrog to DevOps Change Velocity — Classic
Connect to an instance of the JFrog artifact tool to enable you to track artifacts published to
JFrog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner
Complete the steps specified in the Getting started section before connecting to a tool.

Procedure
1. Enter the JFrog instance details to connect to DevOps Change Velocity by navigating to All >
DevOps > Tools > Create New (legacy).
2. Enter a value in the Tool Name field and fill in the tool details.
Create DevOps Tool form
Field

Tool integration
Tool URL

Tool username, Tool password / Access token

Description

Tool to integrate. In this case, select JFrog.
URL of the existing JFrog instance to
integrate.
Login credentials of the global admin for the
existing JFrog instance.

For a list of all the permissions required on the credentials for connecting to JFrog, see JFrog
permissions in Permissions required for DevOps tools.
3. Select MID Server for an on-premises tool that is attached to a MID Server.
Application is automatically set to DevOps and capability is set to REST.
4. Click Submit.

Note: If your tool credential has changed, you must update the credentials in your
ServiceNow instance. For more information, see Update third-party tool credentials in
DevOps Change Velocity.
If the connection is successful, the tool is created in ServiceNow and connected to your JFrog
instance.
On successful tool creation, you're taken to the tool record page.
5. If you want to control access to the tool, add the groups that must be given access to the tool in
the Maintained by field on the Access tab.
The tasks the users in the groups can perform depends on the roles assigned to them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
◦ DevOps Tool Owner role: Can view and edit the tool.
◦ DevOps App Owner role: Can view the tool and can associate, discover, import historical
data, and modify pipeline steps (if applicable) of the tool's objects (such as plans,
repositories, and pipelines).
◦ DevOps Administrator role: Can edit all tools.
◦ Other DevOps roles: Can view the tool.

Note: Only groups containing users with DevOps roles are available for selection in the
Maintained by field.

The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.
Associate steps from GitHub, GitLab, and Azure DevOps with JFrog
JFrog Artifactory support for GitHub Actions, Azure DevOps, and GitLab in DevOps Change
Velocity enables you to import the artifact data published to JFrog Artifactory for the
corresponding pipeline executions. This can then be linked with all the DevOps data collected
in DevOps Change Velocity, like Work Items, Commits, Quality Summary, Test Runs, and so on,
which helps to trace and identify the root causes.
Before you begin
Role required: sn_devops.admin or sn_devops.tool_owner
Azure DevOps release pipelines are not supported.
Associate steps from GitHub, GitLab, and Azure DevOps to your JFrog tool. Before you can
associate steps, you must:
• Connect and configure your GitHub, GitLab, or Azure DevOps tools in DevOps Change
Velocity.
• Run the pipelines in the respective GitHub, GitLab, or Azure DevOps instances.
• Discover pipelines and steps in the respective tools in DevOps Change Velocity.
• Connect the JFrog tool in DevOps Change Velocity. The tool must be in the connected state.

Important:
• Build info must be published to JFrog along with the artifacts.
• Build info must contain the URL and modules or dependencies information.

Associate steps from pipelines
1. Open the tool record page of your GitHub, GitLab, or Azure DevOps tool and select the
Pipelines tab.
2. Select the pipelines that you want to associate with your JFrog tool.
3. Select Associate artifact tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
4. Select the JFrog tool to which you want the association.

Note: Only the connected JFrog tools are available for selection.

5. Select the pipeline steps that you want to associate with the selected JFrog tool and select
Associate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
Note: A step can only be associated with one tool.

The steps are associated with the JFrog tool. You can view the associated steps in your JFrog
tool record, under the Associated steps tab.
To disassociate a step, select it from the Associated steps tab in your JFrog tool record and
select Disassociate.

Associate steps from the Steps table
1. Open the tool record page of your GitHub, GitLab, or Azure DevOps tool and select the
pipeline whose steps you want to associate with your JFrog tool.
2. From the pipeline record, select the Steps with artifact association tab and select Associate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
3. From the list of connected JFrog tools, select the tool that you want the steps to be associated
with.

Note: Only the connected JFrog tools are available for selection.

4. From the list of steps in the pipeline, select the ones you want to associate with the selected
JFrog tool and select Associate.

Note: If you select a step, which is already associated with another JFrog tool, it is
disassociated from that tool and then associated with the current JFrog tool.

The selected steps are associated with the JFrog tool. To disassociate a step, select it and then
select Disassociate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
Associate step from the step record
For individual steps, you can associate with a connected JFrog tool directly from the step record.
1. Open the step record page of the step that you want to associate with your JFrog tool.
2. Select the Artifact tool tab and select Associate.

3. From the list of connected JFrog tools, select the tool that you want the step to be associated
with and select Associate.

Note: Only the connected JFrog tools are available for selection.

The step is associated with the selected JFrog tool. To disassociate the step, select it and then
select Disassociate.

Associate steps from the JFrog tool
You can associate steps directly from the JFrog tool.
1. Navigate to the connected JFrog tool.
2. Select the Associated steps tab and select Associate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
3. Select the pipelines whose steps you want to associate with the JFrog tool and select Next.

4. Select the steps from the pipelines that you want to associate with the JFrog tool and select
Associate.

Note: If you select a step, which is already associated with another JFrog tool, it is
disassociated from that tool and then associated with the current JFrog tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


<!-- page 882 -->
The selected steps are associated with the JFrog tool. To disassociate a step, select it and then
select Disassociate.
Configure Azure DevOps for JFrog
Configure your Azure DevOps instance to enable upload and download of JFrog artifacts.
The following settings are required in your Azure DevOps instance:
1. Install the plugin JFrog Artifactory

.

2. Select your project and navigate to Project settings > Pipelines > Service connections.
3. Select New service connection, search and select the installed JFrog Artifactory plugin, and
select Next.
4. Enter your JFrog instance details and create a service connection for JFrog.

Note: The Username and Password fields must contain the credentials to your JFrog
instance entered in the Server URL field.

Upload artifacts from Azure DevOps to JFrog
To upload artifacts:
1. Navigate to your project pipeline.
2. In your stage for uploading, add the task Artifactory Generic Upload for uploading artifacts.
3. For the Artifactory Generic Upload task:
a. Select the service connection you created for JFrog.
b. In the Spec field, entire your file spec.
c. Select the Collect build info check box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


