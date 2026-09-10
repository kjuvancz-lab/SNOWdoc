# Zurich IT Service Management — Expense Line / View an expense / Expense lines and expense allocations +1 more

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 883–1022 of 3857 | Part 3 of 3

Sections: Expense Line (p583); Components installed with Expense Line (p584); View an expense (p586); Expense lines and expense allocations (p586); Domain separation and Expense Line (p591); DevOps Change Velocity (p591); Explore (p592); Configure (p599); Integrate (p612)

---

<!-- page 883 -->
d. The Build number field should contain the BuildId parameter.
e. Select Add.

4. Add the task Artifactory Publish Build Info for publishing build info.
5. For the Artifactory Publish Build Info task:
a. Select the service connection you created for JFrog.
b. The Build number field should contain the BuildId parameter.
c. Select Add.

Sample pipeline to upload artifacts from Azure DevOps to JFrog
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


<!-- page 884 -->
trigger:
- none
pool:
vmImage: ubuntu-latest

variables:
- group: Variable Group
stages:
- stage: upload_artifact
jobs:
- job: 'upload'
steps:
- script: echo Hello, world!
displayName: 'Run a one-line script'
- task: ArtifactoryGenericUpload@2
inputs:
artifactoryService: 'JFrogCloud'
specSource: 'taskConfiguration'
fileSpec: |
{
"files": [
{
"pattern": "servicenow-app-devops.zip",
"target": "local-repo"
}
]
}
collectBuildInfo: true
buildName: '$(Build.DefinitionName)'
buildNumber: '$(Build.BuildId)'
failNoOp: true'
- task: ArtifactoryPublishBuildInfo@1
inputs:
artifactoryService: 'JFrogCloud'
buildName: '$(Build.DefinitionName)'
buildNumber: '$(Build.BuildId)'

Download artifacts from JFrog to Azure DevOps
To download artifacts:
1. Navigate to your project pipeline.
2. In your stage for downloading, add the task Artifactory Generic Download for downloading
artifacts.
3. For the Artifactory Generic Download task:
a. Select the service connection you created for JFrog.
b. In the Spec field, entire your file spec.
c. Select the Collect build info check box.
d. The Build number field should contain the BuildId parameter.
e. Select Add.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
4. Add the task Artifactory Publish Build Info for publishing build info.
5. For the Artifactory Publish Build Info task:
a. Select the service connection you created for JFrog.
b. The Build number field should contain the BuildId parameter.
c. Select Add.
Sample pipeline to download artifacts from Azure DevOps to JFrog

trigger:
- none
pool:
vmImage: ubuntu-latest

variables:
- group: Variable Group
stages:
- stage: download_artifact
jobs:
- job: 'download'
steps:
- task: ArtifactoryGenericDownload@3
inputs:
connection: 'JFrogCloud'
specSource: 'taskConfiguration'
fileSpec: |
{
"files": [
{
"pattern":
"local-repo/servicenow-app-devops.zip",
"target": "/tmp/"
}
]
}
collectBuildInfo: true
buildName: '$(Build.DefinitionName)'
buildNumber: '$(Build.BuildId)'
failNoOp: true
- task: ArtifactoryPublishBuildInfo@1
inputs:
artifactoryService: 'JFrogCloud'
buildName: '$(Build.DefinitionName)'
buildNumber: '$(Build.BuildId)'
Sample pipeline to upload and download artifacts for GitHub
Pipeline samples for GitHub containing steps to upload and download artifacts for GitHub.

Upload artifacts from GitHub to JFrog
name: JFrogUploadArtifact
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
on:
push:
branches:
- main
jobs:
upload_to_jfrog:
runs-on: ubuntu-latest
defaults:
run:
working-directory: "${{ github.workspace }}"
steps:
- name: Checkout code
uses: actions/checkout@v2
- name: Set up JFrog CLI
uses: jfrog/setup-jfrog-cli@v3
with:
version: latest
env:
JF_URL: ${{ secrets.JFROG_URL }}
JF_USER: ${{ secrets.JFROG_USER }}
JF_PASSWORD: ${{ secrets.JFROG_PASSWORD }}
- name: Upload Artifact to Jfrog
run: |
export JFROG_CLI_HOME="${{ github.workspace }}"
✅upload artifacts
jf rt u "servicenow-app-devops.zip" "local_repo"
✅ Publish build info
jf rt bp

Download artifacts from JFrog to GitHub
name: JFrogDownloadArtifact
on:
push:
branches:
- main
jobs:
download_from_jfrog:
runs-on: ubuntu-latest
defaults:
run:
working-directory: "${{ github.workspace }}"
steps:
- name: Checkout code
uses: actions/checkout@v2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
- name: Set up JFrog CLI
uses: jfrog/setup-jfrog-cli@v3
with:
version: latest
env:
JF_URL: ${{ secrets.JFROG_URL }}
JF_USER: ${{ secrets.JFROG_USER }}
JF_PASSWORD: ${{ secrets.JFROG_PASSWORD }}
- name: download artifacts from jfrog
run: |
export JFROG_CLI_HOME="${{ github.workspace }}"
✅ download artifact from jfrog
jf rt dl "local_repo/servicenow-app-devops.zip" ./
✅ Publish build info
jf rt bp
Sample pipeline to upload and download artifacts for GitLab
Pipeline samples for GitLab containing steps to upload and download artifacts for GitHub.
To upload and download artifacts from GitLab to JFrog, the parameters JFROG_URL,
JFROG_USER, and JFROG_PASSWORD must be set as CI/CD variables in your GitLab instance.
1. Navigate to your project, then go to Settings > CI/CD > Variables.
2. Select Add variable.
3. Enter the parameter in the Key field and enter the value for the parameter in the Value field.
4. Select Add variable to save.
Create a CI/CD variable for the following 3 parameters:
• JFROG_URL
• JFROG_USER
• JFROG_PASSWORD

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
Sample pipeline to upload artifacts from GitLab to JFrog
stages:
- upload
variables:
JFROG_CLI_HOME: ${CI_PROJECT_DIR}
JFROG_ARTIFACTORY_URL: ${JFROG_URL}
JFROG_ARTIFACTORY_REPO: "local_repo/gitlab"
JFROG_ARTIFACTORY_USERNAME: ${JFROG_USER}
JFROG_ARTIFACTORY_PASSWORD: ${JFROG_PASSWORD}
ARTIFACT_PATH: "/"
ARTIFACT_NAME: "servicenow-app-devops.zip"
BUILD_NAME: "${CI_PROJECT_NAME}"
BUILD_NUMBER: "${CI_PIPELINE_ID}"
JFROG_CLI_BUILD_URL:
${CI_SERVER_URL}/$CI_PROJECT_PATH/-/pipelines/$CI_PIPELINE_ID
upload:
stage: upload
script:
- export
BUILD_URL=${CI_SERVER_URL}/$CI_PROJECT_PATH/pipelines/$CI_PIPEL
INE_ID
✅ upload artifact
- jfrog rt u "servicenow-app-devops.zip"
"${JFROG_ARTIFACTORY_REPO}" --build-name=$CI_PROJECT_NAME
--build-number=$CI_PIPELINE_ID
✅ publish build-info
- jfrog rt bp "${CI_PROJECT_NAME}" "${CI_PIPELINE_ID}"
before_script:
- mkdir -p ${JFROG_CLI_HOME}
- export PATH=$PATH:${JFROG_CLI_HOME}
- curl -fL https://getcli.jfrog.io | sh
- jfrog config add artifactory-server
--artifactory-url=${JFROG_ARTIFACTORY_URL}
--user=${JFROG_ARTIFACTORY_USERNAME}
--password=${JFROG_ARTIFACTORY_PASSWORD}

Sample pipeline to download artifacts from JFrog to GitLab
stages:
- download
variables:
JFROG_CLI_HOME: ${CI_PROJECT_DIR}
JFROG_ARTIFACTORY_URL: ${JFROG_URL}
JFROG_ARTIFACTORY_REPO: "local_repo/gitlab"
JFROG_ARTIFACTORY_USERNAME: ${JFROG_USER}
JFROG_ARTIFACTORY_PASSWORD: ${JFROG_PASSWORD}
ARTIFACT_PATH: "/"
ARTIFACT_NAME: "servicenow-app-devops.zip"
BUILD_NAME: "${CI_PROJECT_NAME}"
BUILD_NUMBER: "${CI_PIPELINE_ID}"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


<!-- page 889 -->
JFROG_CLI_BUILD_URL:
${CI_SERVER_URL}/$CI_PROJECT_PATH/-/pipelines/$CI_PIPELINE_ID
download:
stage: download
script:
✅ download artifact
- jfrog rt dl
${JFROG_ARTIFACTORY_REPO}/servicenow-app-devops.zip
--include-dirs --build-name=$CI_PROJECT_NAME
--build-number=$CI_PIPELINE_ID
✅ publish build-info
- jfrog rt bp ${CI_PROJECT_NAME} ${CI_PIPELINE_ID}
before_script:
- mkdir -p ${JFROG_CLI_HOME}
- export PATH=$PATH:${JFROG_CLI_HOME}
- curl -fL https://getcli.jfrog.io | sh
- jfrog config add artifactory-server
--artifactory-url=${JFROG_ARTIFACTORY_URL}
--user=${JFROG_ARTIFACTORY_USERNAME}
--password=${JFROG_ARTIFACTORY_PASSWORD}

SonarQube integration with DevOps Change Velocity
Connect to your SonarQube instance that is integrated with your CI/CD pipelines to retrieve
code quality and code security results.

SonarQube integration overview
Sonar scans that are configured on GitHub Actions, Jenkins, and Azure DevOps pipelines are
supported in DevOps Change Velocity. Both SonarCloud and SonarQube (on-premises) are
supported.
You can view the code quality and code security summary results either in the related list of a
Change Request or the Task Execution of the pipeline in your ServiceNow instance. You can also
use code quality and code security results in defining change policies and conditions for change
automation.
DevOps Change Velocity captures both overall and new code metrics.

Get started
You can onboard your Sonar instance using an admin or a non-admin Sonar PAT. To enable a
non-admin user for onboarding, perform the following steps.
1. Navigate to All > DevOps > Administration > Properties.
2. Enable the DevOps Non-Admin Software Quality Summary Flag property by selecting the
Yes option.
On the SonarQube side, the following permissions are required.
Admin PAT
Project-level access to your SonarQube instance to configure scans for all your
projects.
Non-admin PAT

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
• Browse permission for GitHub, GitLab, and Azure DevOps pipelines, and Execute
Analysis permission for Jenkins for the projects (both private and public) on
which the scan is run.
• A branch must be created in SonarQube before a non-admin user retrieves data
into ServiceNow. For more information, see Branch Analysis .

Note: You can set up branch analysis to enable SonarCloud to analyze
branches in your projects apart from the main branch. You can’t set up
or perform branch analysis on SonarQube community edition licenses.
Upgrade to SonarQube Developer or Enterprise editions to set up branch
analysis on SonarQube on-premises implementations.
Sonar custom action and extension are available in the GitHub and Azure DevOps marketplace
respectively. For Jenkins, the Sonar scan results are retrieved using ServiceNow Jenkins plugin.
For more information on the scan results captured in ServiceNow, see Software Quality Results.
Use one of the following options to onboard SonarQube. For a guided experience, use
the workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard SonarQube to DevOps Change Velocity — Workspace
Connect to your Sonar instance using the DevOps Change Workspace playbook.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard SonarQube.
Option

Steps

a. Select the Connect tool widget
Homepage

b. On the Connect to a tool modal, select SonarQube from the
Software quality category.
a. Select Applications (

Applications module

).

b. Select an existing application, or create one. To create an appli­
cation, see Create an application - Classic.
c. From the Recommended actions pane, select the Connect a
tool card.
d. On the Connect to a tool modal, select SonarQube from the
Software quality category.
a. Select Tools (

Tools module

).

b. From the Capability list, select Software quality.
c. Select Connect a tool.
d. On the Connect to a tool modal, select SonarQube.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
2. Enter a name to identify your tool and click Next.
3. On the Enter Sonar instance details playbook activity section, enter the following details:
a. In the URL of the SonarQube instance field, enter the SonarQube or SonarCloud instance
URL.
For example, https://sonarcloud.io.
b. In the SonarQube username field, enter the user name for your Sonar account.
c. In the Password or access token field, enter the token generated in Sonar.
d. If your Sonar instance is attached to a MID Server, select the Use MID Server option and
enter its details.
A MID server is required if your tool instance is hosted on-prem. For more information about
MID server, see MID Server selection .
4. Click Connect and review the details of the successfully connected Sonar instance.

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

891


<!-- page 892 -->
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

6. From the Summary page, select View tool record to review the details of the connected
instance.

Result

You’ve successfully onboarded your SonarQube tool to DevOps Change Velocity.
Onboard SonarQube to DevOps Change Velocity — Service Catalog
Connect your Sonar instance using the ServiceNow Service Catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
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

Name for your Sonar integration.

Tool integration

Select SonarQube.

Tool URL

SonarQube/SonarCloud instance URL.
For example,https://sonarcloud.io.

Tool password/ Access token

SonarQube user token.

Use MidServer

Optional. Select MID Server for an onpremises tool that is attached to a MID
Server. Application is automatically set to
DevOps and capability is set to REST.

5. Select Order Now.
A request is created. When the request is approved, the tool is connected.
Onboard SonarQube to DevOps Change Velocity — Classic
Connect to your Sonar instance to retrieve scan results.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > DevOps > Tools > Create New (legacy).
2. In the Create DevOps tool form, enter the tool details:

Tool name

Name for the tool you're integrating.

Tool integration

Tool to integrate. Select SonarQube.

Tool URL

SonarQube/SonarCloud instance URL.
For example,https://sonarcloud.io

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


<!-- page 894 -->
Note: Don’t enter the slash (/)
character at the end of your Sonar tool
URL.
Tool password / Access token

SonarQube user token

Use MID Server

MID Server is optional. Select MID Server for
an on-premises tool that is attached to a MID
Server. The Application value is automatically
set to DevOps and the Capability value is
set to REST. For more information, see MID
Server selection .

3. Click Submit to connect to your Sonar instance.
On successful tool creation, you're taken to the tool record page.
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

What to do next
• Configure SonarQube scans on Azure DevOps pipelines
• Configure SonarQube scans on Jenkins pipelines

Split.io integration with DevOps Change Velocity
Connect to your Split.io instance to manage feature flags requests directly from you ServiceNow
instance.

Split integration overview
Feature flags are used to turn code off and on in your production environment.
This integration extends the ServiceNow platform to manage the CHG approval process for
feature flags and segments of Split. This capability enables managing updates to feature flags
from DevOps Change Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


<!-- page 895 -->
• Split.io feature flag tool integration support enables discovery of workspaces, environments,
segments, and feature flags.
• Users can set CHG request fields to enable Split.io for CHG control.
• Upon approval/rejection of a CHG request, the callback URL in Split.io for the split or segment
is invoked to resume implementation of the update to the split and segment.
Enable integration with ServiceNow DevOps in Split tool
Enable integration with ServiceNow DevOps in Split tool and restrict approvers to only the
enabled integration for your environment.

Before you begin

Role required: admin in Split organization

Procedure
1. In Split tool marketplace, navigate to Admin Settings > Integrations.
2. Add ServiceNow DevOps in the Integration Name field, and select

Save.
A token is generated, which must be used while onboarding the Split.io tool.
3. Navigate to Admin Settings > Workspaces > Choose the required workspace > Edit the
Environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
4. In the Change permissions field, select Require approvals for changes > Restrict who can
approve.
5. Select Integrations from the drop-down and select the integration configured in step 2 as, and
select

Save.
Onboard Split to DevOps Change Velocity — Classic
Create a Split tool record to connect and discover workspaces, environments, segments, and
feature flags from the connected Split tool.

Before you begin

Role required: sn_devops.admin

Procedure
1. Create a tool record in DevOps to automatically connect to Split and get the webhook URL.
a. Navigate to DevOps > Tools > Create New (legacy) and create a record.
b. Enter a Tool Name and fill in the tool details.

Tool Integration
Tool URL

Split
Split tool URL.
For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
https://api.split.io
Tool Username

Split username

Tool Password / Access Token

Split password or access token. For
information on creating a Split token, see
Enable integration with ServiceNow DevOps
in Split tool.

MID Server is optional. Select MID Server for an on-premises tool that is attached to a MID
Server. Application is automatically set to DevOps and capability is set to REST.
c. Select Submit.
The tool is automatically Connected Successfully using a connection alias, and HTTP tool
connection (basic authentication credential).

Note: If you do not have global admin privileges for your tool (to allow automatic
configuration of the webhook URL), you may need to have the tool admin user
configure it for you (cut and paste the webhook URL into the tool configuration). Once
the webhook is configured in the tool, Enter Manual Configuration Mode to connect to
the tool manually, then exit.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


<!-- page 898 -->
3. Discover workspaces, environments, segments, and
feature flags from the connected Split tool by selecting

Discover.
4. Automatically configure the webhook URL in Split tool by selecting Configure.
ServiceNow Integration will be activated on Split. Webhooks
are auto-configured and notifications are sent from Split tool to

DevOps.

Example:

The following example specifies how changes made in the Split tool are notified to ServiceNow
DevOps through the webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
• Inbound events are created in ServiceNow for status
(Requested, Approved, Rejected or Withdrawn) of the

event.
• Feature Flag requests (DevOps > Feature Flag > Feature
Flag Requests) are created or updated based on the

status.
• A change request is created for every Feature Flag request, and work notes
on the change request is updated with basic change details on the feature

flag.

Veracode integration with DevOps Change Velocity
Connect to your Veracode instance that is integrated with your CI/CD pipelines to retrieve
security scan results. This helps you determine how vulnerable your code is.

Veracode integration overview
Veracode scans that are configured on GitHub Actions, Jenkins, Azure DevOps, GitLab, and
Harness pipelines are supported in DevOps Change Velocity.
Ensure that your Veracode credentials have the following API roles.
• Upload and Scan
• Results
For more information, see Veracode documentation

.

You can configure Veracode scans on any stage of the pipeline and the scan details are retrieved
from the corresponding stage to DevOps Change Velocity. If you’re using Azure DevOps or
GitHub Actions orchestration tools, then you must add the custom action code in your pipeline
always. If you’re using Jenkins, and your pipeline already has a Veracode security scan step, you
don’t have to add the custom action code in your pipeline. Ensure that your Veracode security
scan step has waitForScan: true. This is required for the system to retrieve the scan information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
If you want to configure Veracode for the GitLab tool, you can either use the generic Docker
container image to add the Veracode security step or perform the steps specified in the Integrate
security tools with GitLab topic.
For Harness pipelines, you can configure Veracode scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
You can view the security scan results either in the related list of a Change Request, or the Task
Execution of the pipeline, or in the Pipeline UI in your ServiceNow instance. You can also use
security results in defining change policies and conditions for change automation.

Get started
You must install the DevOps Vulnerability Integrations (sn_devops_vul_ints) and Vulnerability
Response Integration with Veracode (sn_vul_veracode) plugins before connecting your
Veracode instance to ServiceNow. For more information on activating a plugin, see Install a
ServiceNow Store application .

Note:
• The sn_vul.app_sec_manager role is added to the DevOps Tool Owner
[sn_devops.tool_owner] role when the DevOps Vulnerability Integrations plugin
(sn_devops_vul_ints) is installed.
• The sn_vul_veracode.configure_integration role is added to the DevOps Tool Owner
[sn_devops.tool_owner] role when the Vulnerability Response Integration with Veracode
plugin (sn_vul_veracode) is installed.
For more information on the scan results captured in ServiceNow, see Security scan results.
Use one of the following options to onboard Veracode. For a guided experience, use the
workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard Veracode to DevOps Change Velocity - Workspace
Connect to your Veracode instance using the DevOps Change Workspace playbook.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Veracode.
Option

Steps

a. Select the Connect tools widget
Homepage

b. On the Connect to a tool modal, select Ver­
acode from the Security category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
Option

Steps

a. Select Applications (

Applications module

).

b. Select an existing application, or create
one. To create an application, see Create
an application - Classic.
c. From the Recommended actions pane, se­
lect the Connect a tool card.
d. On the Connect to a tool modal, select Ver­
acode from the Security category.
a. Select Tools (

Tools module

).

b. From the Capability list, select Security.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Ver­
acode.

2. Enter a name to identify your tool and select

Next.
3. On the Enter Veracode instance details playbook activity section, enter the following
credentials:
a. In the API id field, enter the API ID of your Veracode instance.
b. In the API key field, enter the API key of your Veracode instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
Note: Ensure that your Veracode credentials have the following API roles.
◦ Upload and Scan
◦ Results
For more information, see https://docs.veracode.com/r/c_API_roles_details

.

4. Select Connect and review the details of the successfully connected Veracode instance.

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
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
6. If this isn’t the first instance of the security tool you’re onboarding, select the orchestration tool
to associate with your security tool instance from the Associate orchestration tool instances
playbook activity.
This activity isn’t displayed if this is the first security tool instance you’re onboarding.

Note: This playbook activity is required only if you’re onboarding more than one
security tool instances. When multiple security tool instances are onboarded in
ServiceNow, you must associate only one of the security tool instances to the same
orchestration tool or pipeline record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
7. From the Add custom action to pipelines playbook activity section, copy the required custom
action code and add it as a step in your pipeline.
◦ If only one security instance is onboarded in ServiceNow, the pipelines will be automatically
associated with Veracode when the pipeline is run.
◦ If this is the first security tool instance you’re onboarding, the custom action codes for the
orchestration tool that you’ve onboarded in ServiceNow will be available to copy.
▪ If you are using Azure DevOps or GitHub Actions orchestration tools, then you must add
the custom action code in your pipeline always.
▪ If you’re using Jenkins, and your pipeline already has a Veracode security scan step, you
don’t have to add the custom action code in your pipeline. Ensure that your Veracode
security scan step has waitForScan: true. This is required for the system to retrieve the
scan information.
◦ If this is the not the first security tool instance you’re onboarding, the respective custom
action codes for orchestration tools that you’ve selected in step 6 will be available to copy. If
you’re using Jenkins, and your pipeline already has a Veracode security scan step, you don’t
have to add the custom action code in your pipeline. Ensure that your Veracode security
scan step has waitForScan: true. This is mandatory for the system to retrieve the scan
information.
◦ If you want to configure Veracode for the GitLab tool, you can either use the generic Docker
container image to add the Veracode security step or perform the steps specified in the
Integrate security tools with GitLab topic.
◦ For Harness pipelines, you can configure Veracode scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
◦ Alternatively, you can associate pipeline with security tool instance by adding security tool
ID to the custom action code. This will override any previously associated security tool
instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
For information on configuring the Veracode scans on your pipeline, see Configure Veracode
scans on your pipeline
8. Mark the activity as complete.
9. From the Summary page, select View tool record to review the details of the connected
instance.

What to do next

Configure Veracode scans on your pipeline
Onboard Veracode to DevOps Change Velocity - Service Catalog
Connect your Veracode instance using the ServiceNow Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details:

Field

Description

Tool name

Name for your Veracode integration.

Tool integration

Select Veracode.

Tool username/ API ID

API ID of your Veracode instance.

Tool password/ Access token / API Key

API key of your Veracode instance.

Note: You must have the Results and Upload and scan API roles for your Veracode
credentials. For more information, see https://docs.veracode.com/r/c_API_roles_details
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
5. Select Order Now.
A request is created. When the request is approved, the tool is connected.

What to do next

Configure Veracode scans on your pipeline
Onboard Veracode to DevOps Change Velocity - Classic
Connect to your Veracode instance to retrieve scan results.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > DevOps > Tools > Create New (legacy).
2. In the Create DevOps tool form, enter the tool details:

Field

Description

Tool name

Name for your Veracode integration.

Tool integration

Select Veracode.

Tool username/ API ID

API ID of your Veracode instance.

Tool password/ Access token / API Key

API key of your Veracode instance.

Note: You must have the Results and Upload and scan API roles for your Veracode
credentials. For more information, see https://docs.veracode.com/r/c_API_roles_details
3. Click Submit to connect to your Veracode instance.
On successful tool creation, you're taken to the tool record page.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
What to do next

Configure Veracode scans on your pipeline
Configure Veracode scans on your pipeline
Configure Veracode scans on your Azure DevOps, Jenkins, GitHub, GitLab, or Harness pipelines.
You can configure Veracode scans on any stage of the pipeline and the scan details are retrieved
from the corresponding stage to DevOps Change Velocity. If you are using Azure DevOps or
GitHub Actions orchestration tools then you need to add the custom action code in your pipeline
always. If you are using Jenkins, and your pipeline already has a Veracode security scan step,
you do not have to add the custom action code in your pipeline. Ensure that your Veracode
security scan step has waitForScan: true. This is required for the system to retrieve the scan
information.
If you want to configure Veracode for the GitLab tool, you can either use the generic Docker
container image to add the Veracode security step or perform the steps specified in the Integrate
security tools with GitLab topic.
For Harness pipelines, you can configure Veracode scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
1. Navigate to the step in your pipeline and add the custom action.

Azure DevOps

a. Navigate to your pipeline .yml file.
b. In the Tasks section on the right side,
search for the ServiceNow DevOps
Security Results extension task.
c. Enter the ServiceNow endpoint.
d. Enter the Security results attributes as the
following.
{
"scanner":
"Veracode",
"applicationName": "",
"buildVersion": "",
"securityToolId": ""
}
// scanner: Scanning tool and is required
e.g. Veracode.
// applicationName: Name of your Veracode
application and is required. This attribute is
applicable only for Veracode.
// buildVersion: Veracode Scan name /
build version and is optional. This attribute
is applicable only for Veracode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
// securityToolId: Security tool onboarded
in ServiceNow (sys_id of the onboarded
security tool) and is optional.
e. Select Add to add the custom action code
to your pipeline.
Jenkins

a. Navigate to the Pipeline Syntax from a
configured pipeline.
b. Select the snDevOpsSecurityResult step
from the Sample Step list, and update the
values for the security scan attributes in the
step.
c. Select Generate Pipeline Script to create
a snippet. You can copy and paste the
snippet into the pipeline.
snDevOpsSecurityResult {
securityResultAttributes:{"s
canner":"Veracode",
"applicationName": "",
"buildVersion": "",
"securityToolId": ""}}
// scanner: Scanning tool and is required
e.g. Veracode.
// applicationName: Name of your Veracode
application and is required. This attribute is
applicable only for Veracode.
// buildVersion: Veracode Scan name /
build version and is optional. This attribute
is applicable only for Veracode.
// securityToolId: Security tool onboarded
in ServiceNow (sys_id of the onboarded
security tool) and is optional.

GitHub Actions

a. Navigate to your workflow .yml file.
b. In the Marketplace section on the right
side, search for the ServiceNow DevOps
Security Results custom action.
c. Add the following snippet into your .yml file.
SecurityScanResults:
needs: build
runs-on:
ubuntu-latest
name: Servicenow
Security Scan Results
steps:
- name: ServiceNow
DevOps Security Results

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


<!-- page 910 -->
uses:
ServiceNow/servicenow-devo
ps-security-result@v1.39.0
with:
devops-integration-user-na
me:
${{ secrets.SN_DEVOPS_USE
R }}
devops-integration-user-pas
sword:
${{ secrets.SN_DEVOPS_PASSW
ORD }}
instance-url:
${{ secrets.SN_INSTANCE_UR
L }}
tool-id:
${{ secrets.SN_ORCHESTRATIO
N_TOOL_ID }}
context-github:
${{ toJSON(github) }}
job-name:
'Servicenow Security Scan
Results'
security-result-attributes:
'{ "scanner": "Veracode",
"applicationName": "",
"buildVersion": "",
"securityToolId": ""}
// scanner: Scanning tool and is required
e.g. Veracode.
// applicationName: Name of your Veracode
application and is required. This attribute is
applicable only for Veracode.
// buildVersion: Veracode Scan name /
build version and is optional. This attribute
is applicable only for Veracode.
// securityToolId: Security tool onboarded
in ServiceNow (sys_id of the onboarded
security tool) and is optional.
For more information, see GitHub
marketplace .
Harness

Run the generic Docker Container Image to
use the following script. For more information,
see Implement custom actions for pipelines
using a generic Docker container image.
- stage:
name: ServiceNow DevOps
Security Result
identifier: Security

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
description: ""
type: Custom
spec:
execution:
steps:
- stepGroup:
name: Security
identifier:
Security
steps:
- step:
type: Run
name:
ServiceNow DevOps Security
Result
identifier:
ServiceNow_DevOps_Security_R
esult
spec:
connectorRef:
docker_hub_connector_for_har
ness
image:
servicenowdocker/sndevops:5.
0.0
shell:
Sh
command: |sndevopscli create
securityScan -p

"{"pipelineInfo":{
"buildNumber":"<+stage.nodeE
xecutionId>",
"taskExecutionUrl":"<+pipeli
ne.executionUrl>?stage=<+stag
e.nodeExecutionId>",
"orchestrationPipeline":"<+o
rg.identifier>/<
+project.identifier>/<
+pipeline.name>"
},
"securityResultAttributes":{
"scanner":"Veracode",
"applicationName":"",
"buildVersion":"",
"securityToolId":""
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

911


<!-- page 912 -->
}"
envVariables:
SNOW_URL:
<+variable.SNOW_URL>
SNOW_TOOLID:
<+variable.SNOW_TOOLID>
SNOW_TOKEN:
<+variable.SNOW_TOKEN>
stepGroupInfra:
type:
KubernetesDirect
spec:
connectorRef:
kubernates_connector
namespace:
harness-delegate-ng
tags: {}

2. Run the pipeline to retrieve the security scan results.
Associate orchestration tool from Veracode tool record and vice-versa
You can associate orchestration tool from the Veracode tool record and associate the Veracode
tool record from the orchestration or pipeline record.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces >DevOps Change Workspace > Tools > Security tools.
2. From the Security tools list, select the tool with which you want to associate an orchestration
tool.
3. In the Security tool record, navigate to the Orchestration tools tab.
4. Select Associate orchestration tools.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
5. In the Select tool dialog box, select the orchestration tools you want to
associate with your security tool, and select Associate orchestration tools.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
6. In the Add custom action dialog box, copy the required custom action
code for your orchestration tool, and add it as a step in your pipelines.

7. Select Done.

Note: In a similar way, you can associate a security tool instance with an orchestration
tool or pipeline record. You can navigate to the orchestration tool or pipeline record, and
from the Security tools tab, you can select Associate security tool. In the dialog boxes
that are displayed, you can select the security tool instances to associate and then copy
the custom action to add it in the corresponding pipeline step.
Additional info - Veracode
Additional information on Veracode such as association of orchestration tool from security tool,
security scan results, and change policies based on security summary tables.
Security scan results
Security scan results display scan details from security scans configured on your GitHub Actions,
Jenkins, Azure DevOps, GitLab, or Harness pipelines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
You can configure security scans in your GitHub Actions, Jenkins, Azure DevOps, GitLab, and
Harness pipelines to retrieve the scan results in DevOps Change Velocity. Security inbound
events will be created in ServiceNow from the corresponding pipeline run that are then
processed to store the scan results. You can view the scan results for each scan that was part of
your build or release pipeline executions.

Note: If you want to configure Veracode for the GitLab tool, you can either use the generic
Docker container image to add the Veracode security step or perform the steps specified in
the Integrate security tools with GitLab topic.
The retrieved scan summaries are stored in the following tables:
Application Vulnerability Scan Summary (sn_vul_app_vul_scan_summary)
Column name

Description

Source

Source application vulnerability scanner for this application record.

Detected Flaw Count

Total number of new detected flaws in the scan.

Last scan date

Date of the most recent scan.

Last scan rating

Rating assigned by the scanner based on the detected items of the
most recent scans.

Last static scan date

Date of the most recent static scan.

Last static scan rating

Rating assigned by the scanner based on the detected items of the
most recent static scan.

Last dynamic scan date

Date of the most recent dynamic scan.

Last dynamic scan rating Rating assigned by the scanner based on the detected items of the
most recent dynamic scan.
Last interactive scan
date

Date of the most recent interactive scan.

Last interactive scan
rating

Rating assigned by the scanner based on the detected items of the
most recent interactive scan.

Application Vulnerability Scan Summary Details (sn_vul_app_vul_scan_summary_details)
Column name

Description

Category name

Name of the vulnerability category.

Severity

Severity of the flaws in the scan report.

Count

Number of flaws in the category for a severity.

Change policies based on security summary tables
You can use the security conditions that are available in the base system or customize them
based on your requirement.
The vulnerability severity conditions are present in the Fetch Risk
Sonar Security and Incident data action in the DevOps Gather Change

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
Policy Data subflow of the DevOps Default Change Request flow.

If the severity condition is classified as HIGH or VERY HIGH from Veracode or Checkmarx, then
the change request is automatically rejected.
If you are an upgrading customer and you want to customize the conditions with any
additional security data or change the existing conditions, you must update the script in
the Fetch Risk Sonar Security and Incident data action in the change flow. Ensure that
you are referring to the Application Vulnerability Scan Summary Details
(sn_vul_app_vul_scan_summary_details) table in the script when you customize.
For more information, see Security scan results.

Checkmarx integration with DevOps Change Velocity
Connect to your Checkmarx instance that is integrated with your CI/CD pipelines to retrieve
security scan results. This helps you determine how vulnerable your code is.

Checkmarx integration overview
Checkmarx scans that are configured on GitHub Actions, Jenkins, Azure DevOps, GitLab, and
Harness pipelines are supported in DevOps Change Velocity.
Two Checkmarx tools can be integrated with DevOps Change Velocity, which are Checkmarx
One and Checkmarx SAST. For more information, see Checkmarx One
and Checkmarx SAST
documentation.
Ensure that your Checkmarx SAST user has a role that has permissions to read Project and Scan
Results to get summary details. For more information, see Checkmarx documentation . Ensure
that your Checkmarx One user has the create-scan and manage-project roles to access Scan
summary details. For more information, see Checkmarx documentation .

Note: If you are integrating with Checkmarx One, you can retrieve only Static Application
Security Testing (SAST) scans but not Software Composition Analysis (SCA) scans.
You can configure Checkmarx scans on any stage of the pipeline and the scan details are
retrieved from the corresponding stage to DevOps Change Velocity. If you’re using Azure
DevOps or GitHub Actions orchestration tools, then you must add the custom action code in
your pipeline always. If you’re using Jenkins, and your pipeline already has a Checkmarx One
security scan (checkmarxASTScanner) step, you don’t have to add the custom action code in
your pipeline. For Checkmarx SAST, the custom action code must be added in your pipeline even
if it has the security scan step (checkmarxASTScanner).
If you want to configure Checkmarx for the GitLab tool, you can either use the generic Docker
container image to add the Checkmarx security step or perform the steps specified in the
Integrate security tools with GitLab topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
For Harness pipelines, you can configure Checkmarx scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
You can view the security scan results either in the related list of a Change Request, or the Task
Execution of the pipeline, or in the Pipeline UI in your ServiceNow instance. You can also use
security results in defining change policies and conditions for change automation.

Get started
You must install the DevOps Vulnerability Integrations (sn_devops_vul_ints) and Checkmarx
One Vulnerability Integration (x_chec3_chexone) or Checkmarx CxSAST Vulnerability Integration
(x_chec3_cxsast) plugins before connecting your Checkmarx instance to ServiceNow. For more
information on activating a plugin, see Install a ServiceNow Store application .

Note: The sn_vul.app_sec_manager role is added to the DevOps Tool Owner
[sn_devops.tool_owner] role when the DevOps Vulnerability Integrations plugin
(sn_devops_vul_ints) is installed.
For more information on the scan results captured in ServiceNow, see Security scan results.
Use one of the following options to onboard Checkmarx. For a guided experience, use
the workspace to onboard a tool. Alternatively, you can use the Service Catalog or Classic
experience.
Onboard Checkmarx to DevOps Change Velocity - Workspace
Connect to your Checkmarx instance using the DevOps Change Workspace playbook.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

About this task

Checkmarx has two types of tools - Checkmarx SAST and Checkmarx One.

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Checkmarx.
Option

Steps

a. Select the Connect tools widget
Homepage

b. On the Connect to a tool modal, select
Checkmarx One or Checkmarx SAST from
the Security category.
a. Select Applications (

Applications module

).

b. Select an existing application, or create
one. To create an application, see Create
an application - Classic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


<!-- page 918 -->
Option

Steps

c. From the Recommended actions pane, se­
lect the Connect a tool card.
d. On the Connect to a tool modal, select
Checkmarx One or Checkmarx SAST from
the Security category.
a. Select Tools (
Tools module

).

b. From the Capability list, select Security.
c. Select Connect a tool.
d. On the Connect to a tool modal, select
Checkmarx One or Checkmarx SAST.

2. Enter a name to identify your tool and select Next.

3. On the instance details playbook activity section, enter the following credentials based on
whether you are connecting to Checkmarx One or Checkmarx SAST.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

918


<!-- page 919 -->
Tool

Steps

a. In the Server URL field, enter the server
URL of the Checkmarx SAST instance.

Checkmarx SAST

b. In the API id field, enter the API ID of your
Checkmarx SAST instance.
c. In the API key field, enter the API key of
your Checkmarx SAST instance.
a. In the CheckmarxOne Access Con­
trol Base URL field, enter the Check­
marx One Access Control Base URL
of your Checkmarx One instance.

Checkmarx One
b. In the CheckmarxOne API Base URL field,
enter the API base URL of your Checkmarx
One instance.
c. In the Tenant field, enter the name of the
tenant of your Checkmarx SAST instance.
d. In the Client Id field, enter the client ID of
your Checkmarx SAST instance.
e. In the Client Secret field, enter the client se­
cret of your Checkmarx SAST instance.
Ensure that your Checkmarx SAST user has a role that has permissions to read Project and
Scan Results to get summary details. For more information, see Checkmarx documentation
Ensure that your Checkmarx One user has the create-scan and manage-project roles to
access Scan summary details. For more information, see Checkmarx documentation .

.

4. Select Connect and review the details of the successfully connected Checkmarx instance.
5. Specify the access for the tool.
a. If you want to control access to the tool, add the groups that must be given access to the tool
in the Maintained by field.
The tasks these users in the groups can perform depends on the role assigned to them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

919


<!-- page 920 -->
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

6. If this isn’t the first instance of the security tool you’re onboarding, select the orchestration tool
to associate with your security tool instance from the Associate orchestration tool instances
playbook activity.
This activity isn’t displayed if this is the first security tool instance you’re onboarding.

Note: This playbook activity is required only if you’re onboarding more than one
security tool instances. When multiple security tool instances are onboarded in
ServiceNow, you must associate only one of the security tool instances to the same
orchestration tool or pipeline record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
7. From the Add custom action to pipelines playbook activity section, copy the required custom
action code and add it as a step in your pipeline.
◦ If only one security instance is onboarded in ServiceNow, the pipelines will be automatically
associated with Checkmarx when the pipeline is run.
◦ If this is the first security tool instance you’re onboarding, the custom action codes for the
orchestration tool that you’ve onboarded in ServiceNow will be available to copy.
▪ If you are using Azure DevOps or GitHub Actions orchestration tools, then you must add
the custom action code in your pipeline always.
▪ You can configure Checkmarx scans on any stage of the pipeline and the scan details are
retrieved from the corresponding stage to DevOps Change Velocity. If you’re using Azure
DevOps or GitHub Actions orchestration tools, then you must add the custom action code
in your pipeline always. If you’re using Jenkins, and your pipeline already has a Checkmarx
One security scan (checkmarxASTScanner) step, you don’t have to add the custom action
code in your pipeline. For Checkmarx SAST, the custom action code must be added in
your pipeline even if it has the security scan step (checkmarxASTScanner).
◦ If this is the not the first security tool instance you’re onboarding, the respective custom
action codes for orchestration tools that you’ve selected in step 6 will be available to
copy. If you’re using Jenkins, and your pipeline already has a Checkmarx One security
scan (checkmarxASTScanner) step, you don’t have to add the custom action code in your
pipeline.
◦ If you want to configure Checkmarx for the GitLab tool, you can either use the generic Docker
container image to add the Checkmarx security step or perform the steps specified in the
Integrate security tools with GitLab topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
◦ For Harness pipelines, you can configure Checkmarx scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image
◦ Alternatively, you can associate pipeline with security tool instance by adding security tool
ID to the custom action code. This will override any previously associated security tool
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
8. Mark the activity as complete.
9. From the Summary page, select View tool record to review the details of the connected
instance.

What to do next

Configure Checkmarx scans on your pipeline
Onboard Checkmarx to DevOps Change Velocity - Service Catalog
Connect your Checkmarx instance using the ServiceNow Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.

Note: You can also access the service catalog from Employee Center or Service portal.
2. From the DevOps catalog items, select and activate DevOps Tool Onboarding.
3. After activating, select DevOps Tool Onboarding and select Try it.
4. In the DevOps Tool Onboarding form, enter the tool details based on whether you are
onboarding Checkmarx SAST or Checkmarx One.
Checkmarx SAST
Field

Description

Tool name

Name for your Checkmarx integration.

Tool integration

Checkmarx SAST.

Server URL

Base URL of your Checkmarx One intance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
Field

Description

Tool username/ API ID

API ID of your Checkmarx instance.

Tool password/ Access token / API Key

API key of your Checkmarx instance.

MID server

MID server associated with the Checkmarx
One instance.

Checkmarx One
Field

Description

Tool name

Name for your Checkmarx integration.

Tool integration

Checkmarx One.

CheckmarxOne Access Control Base URL

Access Control Base URL of your Checkmarx
One instance.

CheckmarxOne API Base URL.

API Base URL of your Checkmarx One
instance.

Tenant

Name of your Checkmarx One tenant
account.

Client Id

Name you used to store your Checkmarx
Client ID in your repository.

Client Secret

Name you used to store your Checkmarx
Secret in your repository.

Ensure that your Checkmarx SAST user has a role that has permissions to read Project and
Scan Results to get summary details. For more information, see Checkmarx documentation
Ensure that your Checkmarx One user has the create-scan and manage-project roles to
access Scan summary details. For more information, see Checkmarx documentation .

.

5. Select Order Now.
A request is created. When the request is approved, the tool is connected.

What to do next

Configure Checkmarx scans on your pipeline
Onboard Checkmarx to DevOps Change Velocity - Classic
Connect to your Checkmarx instance to retrieve scan results.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to All > DevOps > Tools > Create New (legacy).
2. In the Create DevOps tool form, enter the tool details based on whether you are onboarding
Checkmarx SAST or Checkmarx One.
Checkmarx SAST
Field

Description

Tool name

Name for your Checkmarx integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
Field

Description

Tool integration

Checkmarx SAST.

Server URL

Base URL of your Checkmarx One intance.

Tool username/ API ID

API ID of your Checkmarx instance.

Tool password/ Access token / API Key

API key of your Checkmarx instance.

MID server

MID server associated with the Checkmarx
One instance.

Checkmarx One
Field

Description

Tool name

Name for your Checkmarx integration.

Tool integration

Checkmarx One.

CheckmarxOne Access Control Base URL

Access Control Base URL of your Checkmarx
One instance.

CheckmarxOne API Base URL.

API Base URL of your Checkmarx One
instance.

Tenant

Name of your Checkmarx One tenant
account.

Client Id

Name you used to store your Checkmarx
Client ID in your repository.

Client Secret

Name you used to store your Checkmarx
Secret in your repository.

Ensure that your Checkmarx SAST user has a role that has permissions to read Project and
Scan Results to get summary details. For more information, see Checkmarx documentation
Ensure that your Checkmarx One user has the create-scan and manage-project roles to
access Scan summary details. For more information, see Checkmarx documentation .

.

3. Click Submit to connect to your Checkmarx instance.
On successful tool creation, you're taken to the tool record page.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
The All App Owners can view and associate tool objects to applications option becomes
available for selection if you choose to restrict access to the tool. This option enables all users
having the DevOps App Owner role to access the tool. If selected, they’ll be able to view,
associate, discover, import historical data, and modify pipeline steps (if applicable) of the tool's
objects.

What to do next

Configure Checkmarx scans on your pipeline
Configure Checkmarx scans on your pipeline
Configure Checkmarx scans on your Azure DevOps, Jenkins, GitHub, GitLab, or Harness
pipelines.
You can configure Checkmarx scans on any stage of the pipeline and the scan details are
retrieved from the corresponding stage to DevOps Change Velocity. If you’re using Azure
DevOps or GitHub Actions orchestration tools, then you must add the custom action code in
your pipeline always. If you’re using Jenkins, and your pipeline already has a Checkmarx One
security scan (checkmarxASTScanner) step, you don’t have to add the custom action code in
your pipeline. For Checkmarx SAST, the custom action code must be added in your pipeline even
if it has the security scan step (checkmarxASTScanner).
If you want to configure Checkmarx for the GitLab tool, you can either use the generic Docker
container image to add the Checkmarx security step or perform the steps specified in the
Integrate security tools with GitLab topic.
For Harness pipelines, you can configure Checkmarx scans only through the generic Docker
Container Image. For more information, see Implement custom actions for pipelines using a
generic Docker container image.
1. Navigate to the step in your pipeline and add the custom action.

Azure DevOps

a. Navigate to your pipeline .yml file.
b. In the Tasks section on the right side,
search for the ServiceNow DevOps
Security Results extension task.
c. Enter the ServiceNow endpoint.
d. Enter the Security results attributes as the
following.
▪ Checkmarx SAST
- task:
ServiceNow-DevOps-Build-S
ecurity-Results@1
inputs:
connectedServiceName:
"" ✅ ServiceNow DevOps
Change Velocity Service
Connection
securityResultAttributes:
|

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
{"scanner":
"Checkmarx SAST",
"projectId": "",
"securityToolId": ""}
✅ scanner: Scanning
tool and is required e.g.
Checkmarx SAST.
✅ projectId:
Id of your Checkmarx
SAST project and is
required. This attribute
is applicable only for
Checkmarx SAST.
✅ securityToolId:
Security tool onboarded
in ServiceNow (sys_id of
the onboarded security
tool) and is optional.
▪ Checkmarx One
- task:
ServiceNow-DevOps-Build-S
ecurity-Results@1
inputs:
connectedServiceName:
"" ✅ ServiceNow DevOps
Change Velocity Service
Connection
securityResultAttributes:
|
{"scanner":
"Checkmarx One",
"projectName":
"", "projectId":
"", "scanId": "",
"securityToolId": ""}
✅ scanner: Scanning
tool and is required e.g.
Checkmarx One.
✅ projectName:
Name of your Checkmarx
One project and is
required. This attribute
is applicable only for
Checkmarx One.
✅ projectId: Id
of your Checkmarx One
project and can be used
instead of projectName
field. This attribute
is applicable only for
Checkmarx One.
✅ scanId: Checkmarx
One scan id and is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
optional. This attribute
is applicable only for
Checkmarx One.
✅ securityToolId:
Security tool onboarded
in ServiceNow (sys_id of
the onboarded security
tool) and is optional.
e. Select Add to add the custom action code
to your pipeline.
Jenkins

a. Navigate to the Pipeline Syntax from a
configured pipeline.
b. Select the snDevOpsSecurityResult step
from the Sample Step list, and update the
values for the security scan attributes in the
step.
c. Select Generate Pipeline Script to create
a snippet. You can copy and paste the
snippet into the pipeline.
▪ Checkmarx SAST
snDevOpsSecurityResult
securityResultAttributes:
'{"scanner": "Checkmarx
SAST", "projectId": "",
"securityToolId": ""}'
// scanner: Scanning tool
and is required e.g.
Checkmarx SAST.
// projectId: Id of your
Checkmarx SAST project
and is required. This
attribute is applicable
only for Checkmarx SAST.
// securityToolId:
Security tool onboarded
in ServiceNow (sys_id of
the onboarded security
tool) and is optional.
▪ Checkmarx One
snDevOpsSecurityResult
securityResultAttributes:
'{"scanner": "Checkmarx
One", "projectName":
"", "projectId":
"", "scanId": "",
"securityToolId": ""}'
// scanner: Scanning tool
and is required e.g.
Checkmarx One.
// projectName/projectId:
Name/Id of your Checkmarx

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
One project and is
required. This attribute
is applicable only for
Checkmarx One.
// scanId: Checkmarx
One scan id and is
optional. This attribute
is applicable only for
Checkmarx One.
// securityToolId:
Security tool onboarded
in ServiceNow (sys_id of
the onboarded security
tool) and is optional.
GitHub Actions

a. Navigate to your workflow .yml file.
b. In the Marketplace section on the right
side, search for the ServiceNow DevOps
Security Results custom action.
c. Add the following snippet into your .yml file.
▪ Checkmarx SAST
ServiceNowSecurityScanResu
lts:
✅ jobs that must
complete successfully
before this job will run
needs: build
✅ type of machine to
run the job on
runs-on: ubuntu-latest
name: ServiceNow
Security Scan Results
steps:
- name: ServiceNow
DevOps Security Results
uses:
ServiceNow/servicenow-dev
ops-security-result@v3.0.0
with:
✅ Devops
Integration User Name
devops-integration-user-n
ame:
${{ secrets.SN_DEVOPS_USE
R }}
✅ Devops
Integration User Password
devops-integration-user-p
assword:
${{ secrets.SN_DEVOPS_PAS
SWORD }}
✅ ServiceNow
Instance URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
instance-url:
${{ secrets.SN_INSTANCE_U
RL }}
✅
Orchestration Tool Id
tool-id:
${{ secrets.SN_ORCHESTRAT
ION_TOOL_ID }}
✅ GitHub
Context
context-github:
${{ toJSON(github) }}
✅ Display Name
of the Job
job-name:
'ServiceNow Security Scan
Results'
security-result-attribut
es: '{"scanner":
"Checkmarx SAST",
"projectId": "",
"securityToolId": ""}'
✅ scanner:
Scanning tool and is
required e.g. Checkmarx
SAST.
✅ projectId:
Id of your Checkmarx
SAST project and is
required. This attribute
is applicable only for
Checkmarx SAST.
✅
securityToolId: Security
tool onboarded in
ServiceNow (sys_id of the
onboarded security tool)
and is optional.
▪ Checkmarx One
ServiceNowSecurityScanResu
lts:
✅ jobs that must
complete successfully
before this job will run
needs: build
✅ type of machine to
run the job on
runs-on: ubuntu-latest
name: ServiceNow
Security Scan Results
steps:
- name: ServiceNow
DevOps Security Results
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
uses:
ServiceNow/servicenow-dev
ops-security-result@v3.0.0
with:
✅ Devops
Integration User Name
devops-integration-user-n
ame:
${{ secrets.SN_DEVOPS_USE
R }}
✅ Devops
Integration User Password
devops-integration-user-p
assword:
${{ secrets.SN_DEVOPS_PAS
SWORD }}
✅ ServiceNow
Instance URL
instance-url:
${{ secrets.SN_INSTANCE_U
RL }}
✅
Orchestration Tool Id
tool-id:
${{ secrets.SN_ORCHESTRAT
ION_TOOL_ID }}
✅ GitHub
Context
context-github:
${{ toJSON(github) }}
✅ Display Name
of the Job
job-name:
'ServiceNow Security Scan
Results'
security-result-attribut
es: '{"scanner":
"Checkmarx One",
"projectName":
"", "projectId":
"", "scanId": "",
"securityToolId": ""}'
✅ scanner:
Scanning tool and is
required e.g. Checkmarx
One.
✅
projectName/projectId:
Name/Id of your Checkmarx
One project and is
required. This attribute
is applicable only for
Checkmarx One.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
✅ scanId:
Checkmarx One scan id
and is optional. This
attribute is applicable
only for Checkmarx One.
✅
securityToolId: Security
tool onboarded in
ServiceNow (sys_id of the
onboarded security tool)
and is optional.
For more information, see GitHub
marketplace .
Harness

Run the generic Docker Container Image to
use the following script. For more information,
see Implement custom actions for pipelines
using a generic Docker container image.
- stage:
name: ServiceNow DevOps
Security Result
identifier: Security
description: ""
type: Custom
spec:
execution:
steps:
- stepGroup:
name: Security
identifier:
Security
steps:
- step:
type: Run
name:
ServiceNow DevOps Security
Result
identifier:
ServiceNow_DevOps_Security_R
esult
spec:
connectorRef:
docker_hub_connector_for_har
ness
image:
servicenowdocker/sndevops:5.
0.0
shell:
Sh
command: |sndevopscli create
securityScan -p

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
"{"pipelineInfo":{
"buildNumber":"<+stage.nodeE
xecutionId>",
"taskExecutionUrl":"<+pipeli
ne.executionUrl>?stage=<+stag
e.nodeExecutionId>",
"orchestrationPipeline":"<+o
rg.identifier>/<
+project.identifier>/<
+pipeline.name>"
},
"securityResultAttributes":{
"scanner":"Veracode",
"applicationName":"",
"buildVersion":"",
"securityToolId":""
}
}"
envVariables:
SNOW_URL:
<+variable.SNOW_URL>
SNOW_TOOLID:
<+variable.SNOW_TOOLID>
SNOW_TOKEN:
<+variable.SNOW_TOKEN>
stepGroupInfra:
type:
KubernetesDirect
spec:
connectorRef:
kubernates_connector
namespace:
harness-delegate-ng
tags: {}

2. Run the pipeline to retrieve the security scan results.
Associate orchestration tool from Checkmarx tool record and vice-versa
You can associate orchestration tool from the Checkmarx tool record and associate the
Checkmarx tool record from the orchestration or pipeline record.

Before you begin

Role required: sn_devops.admin or sn_devops.tool_owner
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
Procedure
1. Navigate to Workspaces >DevOps Change Workspace > Tools > Security tools.
2. From the Security tools list, select the tool with which you want to associate an orchestration
tool.
3. In the Security tool record, navigate to the Orchestration tools tab.
4. Select Associate.
5. In the Select tool dialog box, select the orchestration tools you
want to associate with your security tool, and select Associate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
6. In the Add custom action dialog box, copy the required custom action
code for your orchestration tool, and add it as a step in your pipelines.

7. Select Done.

Note: In a similar way, you can associate a security tool instance with an orchestration
tool or pipeline record. You can navigate to the orchestration tool or pipeline record,
and from the Security tools tab, you can select Associate. In the dialog boxes that are
displayed, you can select the security tool instances to associate and then copy the
custom action to add it in the corresponding pipeline step.

Harness integration with DevOps Change Velocity
Connect to your Harness instance to discover pipeline definitions and configure real-time
notifications or polling to enable change traceability and automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
Get started
Use the workspace to onboard the Harness tool. Configure webhooks manually in Harness to
send pipeline notifications to DevOps Change Velocity.
Onboard Harness to DevOps Change Velocity - Workspace
Connect to your Harness instance using the DevOps Change Workspace playbook to discover
pipelines.

Before you begin

Complete the tasks specified in the Getting started with DevOps Change Velocity topic.
Role required: sn_devops.admin or sn_devops.tool_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace and use one of the following options
to open the Playbook to onboard Harness.
Option

Steps

a. Select Connect a tool.
Homepage

b. From the Connect to a tool modal, select the tool from the appro­
priate category. For example, if you want to connect to Harness
as orchestration tool, you'd select Harness under the Orchestra­
tion category.
a. Select Applications (

) from the primary navigation.

b. Select an existing application, or create one. To create an applica­
tion, see Create an application - Workspace.
Applications module

c. From the Recommended actions pane, select the Connect a
tool card.
d. From the Connect to a tool modal, select the tool from the appro­
priate category. For example, if you want to connect to Harness
as orchestration tool, you'd select Harness under the Orchestra­
tion category.
a. Select Tools (

Tools module

) from the primary navigation.

b. From the Capability list, select the appropriate category. For ex­
ample, if you want to connect to Harness as orchestration tool,
you'd select the Orchestration category.
c. Select Connect a tool.
d. On the Connect to a tool modal, select Harness.

Important: If you want to discover and track tool objects like pipelines while
connecting to the tool, you must connect your tool from the Application module. The
steps for associating tool objects in this procedure are only applicable when you connect
your tool from the Application module.
2. In the Tool name field, enter a name for the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
3. Select Next.
The DevOps playbook opens to help you complete the onboarding tasks.
4. Enter your Harness instance details.
a. Enter your password or access token for Harness.
b. Enter a value in the Account Identifier field.

Note: Account Identifier is the unique identifier for your account in the Harness
platform. Copy it from Account Settings of your Harness account.
c. If your Harness instance is attached to a MID Server, select the MID Server option and enter
its details.
For more information about MID server, see MID Server selection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


<!-- page 939 -->
d. Select Connect.

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
This option enables all users having the DevOps App Owner role to access the tool. If
selected, they’ll be able to view, associate, discover, import historical data, and modify
pipeline steps (if applicable) of the tool's objects.
c. Select Assign.
6. In the Configure webhooks manually screen, copy the ServiceNow instance connection details
for Harness.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
See
Configure webhooks in Harness manually for more information.
7. Select the pipelines that you want to track and associate to the application, and select
Associate pipelines.
For each selected pipeline, all steps are imported for the last successful execution.
8. Optional: In the Assign services to pipeline steps activity, specify Step type and Service for
each pipeline step.
(Optional) Completing this step as part of tool onboarding enables the DevOps Insights
dashboards to show more meaningful data immediately.
9. In the Import historical data step, select the date range in the Start date and End date fields
and select Import data.

Note: You can import up to 90 days of data.
10. Select Next.
11. From the Summary page, review the details of the successfully connected Harness tool.
Select View tool record to review the details of the connected instance.

Result

You’ve successfully onboarded your Harness tool to DevOps Change Velocity.

Note: If your tool credential changes, you must also update the credentials in DevOps
Change. For more information, see Update third-party tool credentials in DevOps Change
Velocity.
Configure webhooks in Harness manually
Configure webhooks manually in Harness to send pipeline notifications to DevOps Change
Velocity.

Before you begin
Role required:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
• sn_devops.admin or sn_devops.tool_owner in DevOps Change Velocity
• Harness admin

Procedure
1. In DevOps Change Velocity, choose Configure manually when configuring the tool instance to
send data.

Note: You can also access manual configuration from the Harness tool record in
DevOps Change Velocity. From the tool record, select Configure manually.

2. Copy the Webhook URL and the other field values from DevOps Change Velocity connection
details for Harness.

Note: Select Copy in the appropriate field to copy the value to your clipboard. The field
label changes to Copied, but you can copy multiple times.

3. Modify the copied Webhook URL to reflect your tool details.
https://<your instance>.service-now.com/api/sn_devops/
v2/devops/tool/{code | plan | artifact | orchestration | test |
softwarequality }?toolId=<your ToolId>
a. In <your instance>, enter the copied ServiceNow instance URL.
b. Select one of the tool capabilities {code | plan | artifact | orchestration
| test | softwarequality } to match your tool.
For example:
https://demoinstance.service-now.com/api/sn_devops/v2/devops/
tool/orchestration?toolId=<your ToolId>
c. In <your ToolId>, enter the copied tool ID.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
For example:
https://demoinstance.service-now.com/api/sn_devops/v2/devops/
tool/orchestration?toolId=ac0cif1a1b7696107940a864gjhgbcb58
d. Add the "&ni.nolog.token=<copied secret token>" parameter in the URL to pass the secret
token.
For example:
https://demoinstance.service-now.com/api/
sn_devops/v2/devops/tool/orchestration?
toolId=ac0cdf1a1b7696107940a864gjhgbcb58&ni.nolog.token=brl1jhab63nn56
e. Add "&projectId=<project_sys_id>" in the URL to add the account identifier.

Note: Project Id or Account Id is the unique identifier for your account in the Harness
platform. Copy it from Account Settings of your Harness account.
For example:

https://demoinstance.service-now.com/api/
sn_devops/v2/devops/tool/orchestration?
toolId=ac0cdf1a1b7696107940a864gjhgbcb58&ni.nolog.token=brl1jhab63nn56&pro
4. In your Harness tool, select your pipeline, and then select the Notify option.

5. Select +Notifications to create a new notification record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
6. Enter a name for the notification, and select Continue.

7. Select the following pipeline events, and then select Continue.

◦ Pipeline End
◦ Stage Failed
◦ Stage Success
◦ Stage Start
◦ Step Failed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
8. Select the channel type as Webhook, and enter the URL to be configured (created in step3).

9. Select Finish.

User-created integrations in DevOps Change Velocity
User-created integrations are for integrating additional planning, coding, and test tools that are
not available by default in the DevOps Change Velocity application.
The DevOps Change Velocity application includes tool definitions for integrating some common
planning, coding, and DevOps test tool integration, but you can also set up user-created
integrations for additional tools in your DevOps environment.

Integration objects
DevOps tool integration consists of these objects.

Tool capability actions
• Connect action:
When connecting, the subflow for the specific tool is called and the connection state is
updated. The connection status message is shown on the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
See Connect capability subflow for more details.
• Discover action:
When discovering, an import request record is created and the subflow for the specific tool is
called (as defined in the Integration Capability record). Detail and Status fields in the Import
Request record are updated with the number of items discovered, updated, and failed.
The transformed payload consists of an array of objects as a JSON string. Elements vary
depending on the tool type.
See Discover capability subflow for more details.
• Import action:
Import action does not support historical import functionality.
• Lookup action:
The Lookup main flow is provided to support artifact tool type in a subflow created by your
integration developer.
• Notification (webhook) action:
The source tool is configured manually (by your integration developer) to send raw data to the
ServiceNow instance. The raw payload is then transformed into a standard JSON object using
a subflow.
See the Notification capability subflow and the DevOps - POST /devops/tool/{capability}
endpoint of the DevOps API
for more details.

Note: If a subflow is not specified, default handling of notifications occurs (original
payload is automatically copied to transformed payload).

This behavior is useful when the transactional data of the tool is supported by
ServiceNow DevOps as is.
See the expected standard payloads in the Notification capability subflow for more
details.

DevOps integration configuration overview
Tool integration configuration can be completed by your integration developer and your DevOps
admin.
Integration developer
• Create a tool integration record in DevOps to define the tool you are integrating
(source tool).
• Create a Workflow Studio subflow to collect and transform data from the tool you
are integrating (source tool).
• Create a tool capability mapping record in DevOps to map the tool integration
record to the tool type capability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
Note: Notifications (webhook) capability is supported. Connect and
discover capabilities are also supported.
• Create an integration capability record in DevOps to specify the action for the tool
type capability.
DevOps admin
• Create a (planning, coding, or test) tool record in DevOps to connect to the tool
you are integrating (source tool).

Note: The tool integration record must be specified in the Tool field of the
tool record.
• Configure the source tool with the webhook and credentials.

Inbound events
An inbound event serves as a staging area for the notifications flow that supports reprocessing
of failed payloads. Meaning, a record in an error state from a failed integration or transformation
can be retried.
If an Inbound Event record is in the Error state, the flow was not able to insert the record
successfully into the core DevOps tables.
Common errors can be resolved with these actions.
Inbound event error states
Error

Missing required fields

Action

The transformed payload does not match the
standard payload.
Refer to the standard and JSON payloads
provided.

Repository not marked for tracking

The commit cannot be inserted.
The DevOps admin needs to track the
repository.

[Subflow] has not been published within
application scope [app_scope]
Timeout exception

The subflow is created but not published yet.

The subflow takes more time
than the value set in the property:

com.glide.hub.flow_api.default_execution_tim
See FlowAPI - executeSubflowQuick(String
name, Map inputs, Number timeout)
for more
details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
Inbound event error states (continued)
Error

Action

Note: The execution of the subflow

exceeds the value set in the Timeout
field in the Integration Capability record.
Did not find a matching subflow for notification
The flow was not able to find the matching
capability and [tool_integration_sys_id] tool
subflow.
integration
Verify the integration setup procedure.
Payload does not match the expected
capability.

The Original payload (payload being sent) is
a different Capability type than the tool type
capability configured in your tool capability
mapping.
The payload type must match the tool type
capability configured in your tool integration.

Note: An inbound event record is not created when any of the following conditions occur:
• Source tool has not passed the tool ID as a query parameter.
• Source tool has passed on a tool ID, but there is no matching tool ID in the instance.

Tool mappings
A tool can be mapped to multiple capabilities.

Tool Integration

Tool Type Capability

• Agile Development
2.0

• Plan

• Azure DevOps
• Bitbucket
• GitHub
• GitHub Enterprise
• GitLab
• Jenkins
• Jira
• Rally

• Code
• Orchestration
• Artifact
• Test

Tool Capability Mapping

Plan
• Agile Development 2.0 - Plan
• Azure DevOps - Plan
• Jira - Plan
• Rally - Plan
Code
• Azure DevOps - Code
• Bitbucket - Code
• GitHub - Code
• GitHub Enterprise - Code
• GitLab - Code
Orchestration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Tool Integration

Tool Type Capability

Tool Capability Mapping

• Azure DevOps - Orchestration
• Jenkins - Orchestration
• GitLab - Orchestration
Test
• Azure DevOps - Test
• Jenkins - Test
A tool capability mapping can be mapped to multiple actions.

Tool Capability Mapping Tool Action

Integration Capability

Agile Development 2.0
• Agile Development
2.0 - Plan
• Azure DevOps Plan
• Azure DevOps Code
• Azure DevOps Orchestration
• Bitbucket - Code
• GitHub - Code
• GitHub Enterprise Code
• GitLab - Code
• GitLab Orchestration
• Jenkins Orchestration
• Jira - Plan
• Rally - Plan

• Connect
• Discover
• Import
• Lookup
• Notification

• Agile Development 2.0 - Plan - Connect
• Agile Development 2.0 - Plan - Discover
• Agile Development 2.0 - Plan - Import
• Agile Development 2.0 - Plan - Notification
Azure DevOps
• Azure DevOps - Plan - Connect
• Azure DevOps - Plan - Discover
• Azure DevOps - Plan - Notification
• Azure DevOps - Code - Discover
• Azure DevOps - Code - Notification
• Azure DevOps - Orchestration - Discover
• Azure DevOps - Orchestration - Notification
Bitbucket
• Bitbucket - Code - Connect
• Bitbucket - Code - Discover
• Bitbucket - Code - Import
• Bitbucket - Code - Notification
GitHub
• GitHub - Code - Connect
• GitHub - Code - Discover
• GitHub - Code - Import
• GitHub - Code - Notification
GitHub Enterprise

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
Tool Capability Mapping Tool Action

Integration Capability

• GitHub - Code - Connect
• GitHub - Code - Discover
• GitHub - Code - Import
• GitHub - Code - Notification
GitLab
• GitLab - Code - Connect
• GitLab - Code - Discover
• GitLab - Code - Notification
• GitLab - Orchestration - Notification
Jenkins
• Jenkins - Orchestration - Connect
• Jenkins - Orchestration - Discover
• Jenkins - Orchestration - Import
• Jenkins - Orchestration - Notification
Jira
• Jira - Plan - Connect
• Jira - Plan - Discover
• Jira - Plan - Import
• Jira - Plan - Notification
Rally
• Rally - Plan - Discover
• Rally - Plan - Import
• Rally - Plan - Notification
• Rally - Plan - Connect
• Rally - Plan - Validate
Multiple test types can be mapped to each tool integration.

Test Type

Tool Integration

Test Type Mapping

Unit: JUnit, XUnit, NUnit, Unit
test

• Azure DevOps

Azure DevOps

• Jenkins

• Azure DevOps - JUnit

Functional:

• GitLab

• Azure DevOps Nunit

• Integration

• GitHub

• Azure DevOps Xunit

• Regression

• GitHub Enterprise

• Azure DevOps Unit test

• Smoke

• Azure DevOps - Integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
Test Type

Tool Integration

Test Type Mapping

• System

• Azure DevOps - Regression

• User Acceptance

• Azure DevOps - Smoke

Performance: Load

• Azure DevOps - System
• Azure DevOps - User
Acceptance
• Azure DevOps - Load
Jenkins
• Jenkins - JUnit
• Jenkins - Integration
• Jenkins - Regression
• Jenkins - Smoke
• Jenkins - System
• Jenkins - User Acceptance
• Jenkins - Load
GitLab
• GitLab - JUnit
• GitLab - Integration
• GitLab - Regression
• GitLab - Smoke
• GitLab - System
• GitLab - User Acceptance
• GitLab - Load
GitHub and GitHub Enterprise
• GitHub - JUnit
• GitHub Nunit
• GitHub Xunit
• GitHub Unit test
• GitHub - Integration
• GitHub - Regression
• GitHub - Smoke
• GitHub - System
• GitHub - User Acceptance
• GitHub - Load

DevOps test tool integration
Test tool integration lets you view test results in DevOps for Jenkins, Azure DevOps, GitHub,
GitHub Enterprise, and GitLab unit, functional, and performance tests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
For GitLab and Jenkins, only JUnit test type integration is supported.

Note: For other test types, use the DevOps - POST /devops/tool/{capability}
the DevOps API

endpoint of

.

• Selenium tests run and published using TestNG are reported by the Jenkins plugin for
ServiceNow DevOps.
• Test type categorization is supported.
• Additional tests results reported by tools, such as Apache JMeter, can be processed in
DevOps using custom Workflow Studio subflows (no pipeline changes required).

Category

Unit

Test type

JUnit (default)
NUnit
XUnit
Unit test

Note:
• For GitLab and Jenkins, only the JUnit
test type integration is supported.
• For ADO, GitHub, and GitHub
Enterprise, the JUnit, NUnit, XUnit,
and Unit test type integrations are
supported.
You can change the default
test type by modifying the

[sn_devops.default_test_type]
DevOps property.
Functional

• Integration
• Regression
• Smoke
• System
• User Acceptance

Performance

Load

Test type mapping
The test type mapping connects the test type and entity being tested with the DevOps tool
(DevOps > Integrations > Test Type Mappings module.)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
An accurate test type mapping ensures that the test type always appears as intended in the test
summary results.

Field

Description

Test type
• JUnit
• Nunit
• Xunit
• Unit test

Note:
◦ For GitLab and
Jenkins, only the
JUnit test type
integration is
supported.
◦ For ADO, GitHub,
and GitHub
Enterprise, the
JUnit, NUnit, XUnit,
and Unit test type
integrations are
supported.
• Integration
• Regression
• Smoke
• System
• User Acceptance
• Load
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
Field

DevOps Entity Id

Description

Table name

DevOps table name that
contains the entity linked to
the test results (in the test
report payload).
• Step [sn_devops_step]
• Pipeline
[sn_devops_pipeline]

Note: Only DevOps
Step and Pipeline tables
are supported.
Document

Name of the entity specified in
the selected table.
For example, the name of
the step, pipeline, artifact, or
package.

Test File Paths
(Jenkins tests only)

Path to the generated test
result file on the Jenkins
server.
This is useful so test reports
with attributes that don't
conform to JUnit or TestNG
implementation, such as
JMeter for example, can still
be leveraged by DevOps.
Separate multiple files by a
comma.

Note: You must use a
Workflow Studio subflow
to transform a raw test
payload.
Tool integration
DevOps Table

Tool that's running the test.
DevOps table that
corresponds to the table
name in the DevOps Entity Id
setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
DevOps test type mapping

Example yaml file of ADO unit test

Example yaml file of GitHub unit test

Transforming a raw test payload
You can transform a raw test report (a report containing attributes that do not conform to JUnit or
TestNG implementation), such as JMeter for example, by configuring the DevOps Test Subflow
Policy decision table to call a custom subflow (Decision Tables > Decision Tables module).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
Note: You must create the custom Workflow Studio subflow that transforms the raw test
payload.
If there is more than one test type in a performance stage, you can use the DevOps Test Type
Policy decision table to configure the test type for each test so the test result payloads are
transformed correctly.
DevOps decision tables

DevOps decision tables
Decision table

DevOps Test Subflow Policy

Purpose

Configuration

To automatically call a custom
subflow that transforms the
raw payload received by the
tool.

Create a decision that
specifies the custom subflow
to call when the raw payload is
received.

Decision inputs:

Set the conditions to contain
fields that would be included
in the raw payload.

• Test Result Payload
• Test Type

For example, to call Jenkins
BZ Performance Test custom
subflow:
Conditions:
• Test Type is Load
(Load is the test type
configured for performance
tests)
• Test Result Payload
contains throughput
• Test Result
Payload contains
concurrency
Answer: FLow: Jenkins BZ
Performance Test

DevOps Test Type Policy

To automatically set test
types when more than one
type of test is configured in a
performance test stage.

Create a decision for
each type of test in the
performance test stage to set
the test type.
Load test:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
DevOps decision tables (continued)
Decision table

Purpose

This is necessary so the
results for the second test
type get transformed correctly.
For example, when both a
Load performance test and
a JUnit performance test are
mapped in the same DevOps
step, the JUnit test results
won't get formatted correctly
unless a decision is created.
Decision inputs:
• Step
• Test Result Payload
• Tool Integration
• Pipeline

Configuration

• Conditions:
◦ Step is Perf
Tests
◦ Test Result
Payload contains
throughput
◦ Test Result
Payload contains
concurrency
• Answer: TestType:
Load
JUnit test:
• Conditions:
◦ Step is Perf
Tests
◦ Test Result
Payload does
not contain
throughput
◦ Test Result
Payload does
not contain
concurrency
• Answer: TestType:
JUnit

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
DevOps multiple performance test types

DevOps multiple test type mappings

DevOps decision table decision

Test summary results
You can view test summary results these ways.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
• DevOps > Test Results module (Test Summaries and Performance Test Summaries).
• DevOps change request - Test Results related list.
• DevOps Pipeline UI - Quality tile.
DevOps performance test summary example

Expected standard JSON Notification capability payload - Test tool
Functional:
{
"name": "CorpSite-selenium✅55",
"duration": 78.802,
"passedTests": 4,
"failedTests": 0,
"skippedTests": 0,
"blockedTests": 0,
"totalTests": 4,
"startTime": "2020-06-30T18:12:31Z",
"finishTime": "2020-06-30T18:12:31Z",
"passingPercent": 100,

// Use Artifact OR Package OR Build + Stage + PipelineName
Attributes
Send only one Attribute combination. For example, send
Attributes of either Artifact or Package, or the combination
of Build + Stage + PipelineName.
If you send more than one Attribute, priority is given in
the following order and the low priory one is ignored. For
example, if you send attribute for both packages and artifacts,
then attribute of package is considered and the attribute of
artifacts is ignored.
1.packages
2.artifcats
3.buildNumber + stageName + pipelineName
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
"packages": [{"name": "CorpSite-pkg1"}],
"artifacts": [{"name": "CorpSite-artifact", "version":
"1.0.0"}],
"buildNumber": "55",
"stageName": "test",
"pipelineName": "CorpSite-selenium",
}
Notes:
- The pipelineName attribute value must be same as the value in
the Orchestration pipeline field of the Pipeline [sn_devops_pipeline]
table.
- The stageName attribute value must be same as the value in
the Orchestration stage field of the Step [sn_devops_step] table.
Performance:
{
"name": "Performance Tests",
"url": "http://abc.com",
"startTime": "2020-06-30T18:12:31Z",
"finishTime": "2020-06-30T18:12:31Z",
"duration": 78.802,
"maximumVirtualUsers": "",
"throughput": "",
"maximumTime": "",
"minimumTime": "",
"averageTime": "",
"ninetyPercent": "",
"standardDeviation": "",
// Use Artifact OR Package OR Build + Stage + PipelineName
Attributes
Send only one Attribute combination. For example, send
Attributes of either Artifact or Package, or the combination
of Build + Stage + PipelineName.
If you send more than one Attribute, priority is given in
the following order and the low priory one is ignored. For
example, if you send attribute for both packages and artifacts,
then attribute of package is considered and the attribute of
artifacts is ignored.
1.packages
2.artifcats
3.buildNumber + stageName + pipelineName
"packages": [{"name": "CorpSite-pkg1"}],
"artifacts": [{"name": "CorpSite-artifact", "version":
"1.0.0"}],
"buildNumber": "55",
"stageName": "test",
"pipelineName": "CorpSite-Performance",
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
Notes:
- The pipelineName attribute value must be same as the value in
the Orchestration pipeline field of the Pipeline [sn_devops_pipeline]
table.
- The stageName attribute value must be same as the value in
the Orchestration stage field of the Step [sn_devops_step] table.
Configure a test tool in DevOps
Configure a test tool in DevOps to view unit, functional, and performance test results.

Before you begin

Role required: sn_devops.admin

Procedure
1. Navigate to All > DevOps > Integrations > Test Type Mappings and create a record to map the
test type to the integration tool.
2. In the Test Type Mapping record, use the search icon (
integration field values.

) to select Test type and Tool

DevOps test type mapping

3. Click the search icon (

) in the DevOps Entity Id field, and fill in the test details.

Table name

Document

DevOps table name that contains the entity
linked to the test results.
Name of the entity specified in the selected
table.

DevOps test mapping entity ID

See the Test type mapping section for more details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
4. Optional: To capture the raw test payload of non-JUnit or -TestNG tests, enter an .xml filename
and path (comma separate multiple files).
(Optional) You can transform a raw payload using decision tables and a custom Workflow
Studio subflow.

Note: You must create the custom subflow that transforms the raw payload.
See the Transforming a raw test payload section for more details on configuring decision
tables.
5. Run the test and view test results by navigating to DevOps > Test Results (Test Summaries and
Performance Test Summaries).
DevOps Test Summaries example

Example:
Scripted pipeline example with test configuration

Add test results to change requests using test API
Add test results to DevOps change requests using the test capability of the DevOps - POST /
devops/tool/{capability} API. The API is available for all test types for various tools connected to
DevOps Change Velocity.
For more information about the API, see DevOps - POST /devops/tool/{capability} . To use the
API in Azure DevOps, GitHub, and Jenkins, you must use the format mentioned in the respective
sections below.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
Prerequisites
Role required: sn_devops.admin
You must make sure that the test type you want to use in the API is available as a test type in
DevOps Change Velocity and that it is mapped with the respective orchestration tool.
1. Navigate to DevOps Change Workspace > Administration > Integrations > Test types.
You can also use the classic UI navigation DevOps > Integrations > Test Types.
2. Verify if the test type is available in the Test types table.

3. For custom test types, select New and add the test type to the list.
a. In the Test type field, enter a name for your test type.
b. From the Test category list, select the category of your test type.
c. Select Save.
4. Navigate to DevOps Change Workspace > Administration > Integrations > Test type
mappings.
You can also use the classic UI navigation DevOps > Integrations > Test Type Mappings.
5. Verify if the test type is mapped to your orchestration tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
6. If the mapping is not available, then select New and create the mapping.
a. From the Test type list, select the test type that you want to map.
b. From the Tool integration list, select your orchestration tool.
c. Select Save.

Azure DevOps
For Azure DevOps pipelines, use the format given here to add test results to change requests for
various test types.
Format for URL suffix and parameters:
/api/sn_devops/v1/devops/tool/test?toolId=<devops_ToolID>&testTy
pe=<test_type>
• The parameter toolId must be a valid Tool Id from a connected and configured tool in
DevOps Change Velocity.
• The parameter testType should have a test type mapping in DevOps Change Velocity.
Within the Body, you must pass the parameters based on the test type.

Note: For the generic connection, use the following:
• username: devops.integration.user
• password: <devops.integration.user password>
Pipeline configuration for performance tests
Sample parameters for the body:
{
"name": "Perf. tests DEMO5",
"duration": 0,
"maximumVirtualUsers": 10,
"throughput": "5/min",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
"maximumTime": 10000,
"minimumTime": 5000,
"averageTime": 7000,
"ninetyPercent": 8000,
"standardDeviation": 2,
"startTime": "2023-12-14T23:31:31z",
"finishTime": "2023-12-14T23:40:32z",
"buildNumber": $(Build.BuildNumber),
"stageName": "Test API Job",
"pipelineName": "TEST-CI-PIPELINE"
}

Performance test summary in your Now instance:

Test summary attached to your DevOps change request:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
Pipeline configuration for other functional and unit tests
Sample parameters for the body:
{
"name":" Smoke Test summary",
"duration":0.0,
"passedTests":1,
"failedTests":1,
"skippedTests":1,
"blockedTests":1,
"totalTests":4,
"startTime": "2023-12-14T23:31:31z",
"finishTime": "2023-12-15T23:31:31z",
"buildNumber": $(Build. BuildNumber),
"stageName": "Test API Job",
"pipelineName": "TEST-CI-PIPELINE"
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Test summary attached to your DevOps change request:

Azure DevOps YAML pipeline
Sample pipeline:
stages:
- stage: BashScript
jobs:
- job: 'bash'
steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
- script: echo Hello, world!
displayName: 'BashScript'

- stage: TestAPI
dependsOn: BashScript
jobs:
- job: 'RESTTestAPI'
✅ dependsOn: BashScript
pool: server
steps:
- task: InvokeRESTAPI@1
displayName: 'Invoke REST API: POST'
inputs:
connectionType: 'connectedServiceName'
serviceConnection: 'v01 - generic connection'
method: 'POST'
body: |
{
"name": "Performance test summary
kl2",
"duration": 0,
"maximumVirtualUsers": 10,
"throughput": "5/min",
"maximumTime": 10000,
"minimumTime": 5000,
"averageTime": 7000,
"ninetyPercent": 8000,
"standardDeviation": 2,
"startTime": "2023-12-14T23:31:31z",
"finishTime":
"2023-12-14T23:40:32z",
"buildNumber": $(Build.BuildId),
"stageName": "TestAPI/RestTestAPI",
"pipelineName": "TESTYMLPipeline"
}
urlSuffix:
'/api/sn_devops/v1/devops/tool/test?toolId=<devops_ToolID>&test
Type=<test_type>'
waitForCompletion: 'false'

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
Release pipeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
GitHub
For GitHub pipelines, use the format given here to add test results to change requests for various
test types.
Pipeline configuration for performance tests
Sample pipeline:
name: Test API Call Perf
on:
workflow_dispatch:
jobs:
post_api_call_perf:
runs-on: ubuntu-latest
steps:
- name: Checkout Repository
uses: actions/checkout@v2
- name: post_api_call_perf
run: |
apiUrl="https://
<your_instance>.service-now.com/api/sn_devops/v1/devops/tool/te
st?toolId=<devops_ToolId>&testType=<performance_test_type>"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
requestBody='{"toolId": "<devops_ToolId>",
"buildNumber": '${{ github.run_number }}' , "workflow": "Test
API Call Perf", "repository": "<your_GitHub_repository>",
"stageName":"post_api_call_perf","pipelineName":"Test
API Call Perf", "testType": "Load", "buildNumber":
'${{ github.run_number }}', "buildId": '${{ github.run_id }}' ,
"attemptNumber" : '${{ github.run_attempt }}', "name":
"GitHub Test Summary - Performance 1.0","duration":
0.0,"maximumVirtualUsers": 10,"throughput":
"5/min","maximumTime": 1000,"minimumTime": 5000,"averageTime":
7000,"startTime": "2023-12-14T23:31:31z","finishTime":
"2023-12-14T23:31:31z","ninetyPercent": 8000,
"standardDeviation": 2.0 }'
auth="devops.integration.user:<password> in base64
encoded"
authHeader="Basic $auth"
response=$(curl -X POST -H "Content-Type:
application/json" -H "Authorization: $authHeader" -d
"$requestBody" $apiUrl)
exitCode=$?
if [ $exitCode -eq 0 ]; then
echo "API call successful!"
echo "Response: $response"
else
echo "API call failed!"
echo "Response: $response"
exit 1
fi

Pipeline configuration for other functional and unit tests
Sample pipeline:
name: Test API Call
on:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
workflow_dispatch:
jobs:
post_api_call:
runs-on: ubuntu-latest
steps:
- name: Checkout Repository
uses: actions/checkout@v2
- name: post_api_call
run: |
apiUrl="https://
<your_instance>.service-now.com/api/sn_devops/v1/devops/tool/te
st?toolId=<devops_ToolID>&testType=<test_type>"
requestBody='{"toolId": "<devops_ToolID>",
"buildNumber": '${{ github.run_number }}' , "workflow":
"Test API Call", "repository": "<your_GitHub_repository>",
"stageName":"post_api_call","pipelineName":"TestAPICall",
"testType": "Smoke", "buildNumber":
'${{ github.run_number }}', "buildId": '${{ github.run_id }}' ,
"attemptNumber" : '${{ github.run_attempt }}',
"testSummaries": [{"name": "GitHub Test Summary smoke","passedTests": 1,"failedTests": 1,"skippedTests":
1,"ignoredTests": 0,"blockedTests": 1,"totalTests":
4,"startTime": "2023-12-14T23:31:31z","endTime":
"2023-12-14T23:31:31z","duration": 0.0,"testType": "Smoke",
"suites": []}] }'
auth="devops.integration.user:<password> in base64
encoded"
authHeader="Basic $auth"
response=$(curl -X POST -H "Content-Type:
application/json" -H "Authorization: $authHeader" -d
"$requestBody" $apiUrl)
exitCode=$?
if [ $exitCode -eq 0 ]; then
echo "API call successful!"
echo "Response: $response"
else
echo "API call failed!"
echo "Response: $response"
exit 1
fi

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Jenkins
For Jenkins pipelines, use the format given here to add test results to change requests for
various test types.
Pipeline configuration for performance tests
Sample pipeline:
pipeline {
agent any
stages {
stage('POST API Call') {
steps {
script {
def apiUrl =
'https://<your_instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/test?toolId=<devops_ToolID>&testType=<performance_test_t
ype>'
def requestBody = [
name: "Performance Load tests jenkins",
duration: 0.0,
maximumVirtualUsers: 10,
throughput: "6/min",
maximumTime: 1000,
minimumTime: 300,
averageTime: 700,
ninetyPercent: 600,
standardDeviation: 2.0,
startTime: "2023-12-14T23:31:31z",
finishTime: "2023-12-14T23:40:32z",
buildNumber: env.BUILD_NUMBER,
stageName: "POST API Call",
pipelineName:
"KLPerformanceTestPipeline"
]
def auth = "<password>" //
devops.integration.user:<password> in base64 encoded.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
def authHeader = "Basic " + auth
def response = httpRequest(
contentType: 'APPLICATION_JSON',
httpMode: 'POST',
requestBody:
groovy.json.JsonOutput.toJson(requestBody),
url: apiUrl,
customHeaders: [[name: 'Authorization',
value: authHeader]]
)
if (response.status == 200 ||
response.status == 201) {
echo "API call successful!"
echo "Response: ${response.content}"
} else {
error "API call failed with status
${response.status}"
}
}
}
}
}
}

Pipeline configuration for other functional and unit tests
Sample pipeline:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
pipeline {
agent any
stages {
stage('POST API Call') {
steps {
script {
def apiUrl =
'https://<your_instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/test?toolId=<devops_ToolID>&testType=<test_type>'
def requestBody = [
name: "Smoke tests",
duration: 0.0,
passedTests: 1,
failedTests: 1,
skippedTests: 1,
blockedTests: 1,
totalTests: 4,
startTime: "2023-12-14T23:31:31z",
finishTime: "2023-12-15T23:31:31z",
buildNumber: env.BUILD_NUMBER,
stageName: "POST API Call",
pipelineName: "TestPipelineKL"
]
def auth = "<password>" //
devops.integration.user:<password> in base64 encoded.
def authHeader = "Basic " + auth
def response = httpRequest(
contentType: 'APPLICATION_JSON',
httpMode: 'POST',
requestBody:
groovy.json.JsonOutput.toJson(requestBody),
url: apiUrl,
customHeaders: [[name: 'Authorization',
value: authHeader]]
)
if (response.status == 200 ||
response.status == 201) {
echo "API call successful!"
echo "Response: ${response.content}"
} else {
error "API call failed with status
${response.status}"
}
}
}
}
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
Limitations of the test API
• Waiting logic will not be taken care of.
• Re-run scenarios cannot be handled.
Add attachments to change requests using attachment API
Add test report xmls as attachments to DevOps change requests using the attachment API.
For more information about the API, see Attachment - POST /now/attachment/file

.

The attachment API URL is:
https://<your_instance>.service-now.com/api/now/
attachment/file?table_name=change_request&table_sys_id=
$(getServerChange.sys_id)&file_name=<attached_filename.xml>, where
• table_name = 'change_request'
• table_sys_id = <chg record sys_id>
• file_name = Any name for the attachment

Azure DevOps
Prerequisites

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
• Create an active user with the option Web service access only selected. For information on
how to create a user, see Create a user .
• Assign the role sn_change_write to the user. For information on how to assign the role, see
Assign a role to a user .

• The system property sn_devops.enable_ado_generic_connection must be enabled.
• While configuring your Azure DevOps project, to upload to chg. table, the generic connection
used should have a user having the role sn_change_write.
For Azure DevOps pipelines, use the format given here to add attachments to change requests.
Sample pipeline:
stage: PostDeploy
jobs:
- job: 'pd1'
pool: server
steps:
- task: ServiceNow-DevOps-Server-Get-Change@1
inputs:
connectedServiceName: 'v01-Software Quality
Scans-ServiceNow DevOps Service Connection'
projectName: '$(system.teamProject)'
pipelineName: '$(build.definitionName)'
stageName: 'Deploy'
jobName: 'd1'
buildNumber: '$(build.buildId)'
branchName: '$(Build.SourceBranchName)'
name: getServerChange
- task: InvokeRESTAPI@1
inputs:
connectionType: 'connectedServiceName'
serviceConnection: 'v01 - new'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
method: 'POST'
body:
'<root><name>john2</name><age>34</age></root>'
urlSuffix:
'api/now/attachment/file?table_name=change_request&table_sys_
id=$(getServerChange.changeSysId)&file_name=test3.xml'
waitForCompletion: 'false'

GitHub
For GitHub pipelines, use the format given here to add attachments to change requests.
Sample pipeline:

Attachment in the Change Request form in Now instance:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Jenkins
For Jenkins pipelines, use the format given here to add attachments to change requests.
Sample pipeline:
pipeline {
agent any
stages {
stage('POST API Call') {
steps {
script {
def apiUrl =
'https://<your_instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/test?toolId=<devops_ToolId>&testType=Smoke'
def requestBody = [
name: "Smoke tests",
duration: 0.0,
passedTests: 1,
failedTests: 1,
skippedTests: 1,
blockedTests: 1,
totalTests: 4,
startTime: "2023-12-14T23:31:31z",
finishTime: "2023-12-15T23:31:31z",
buildNumber: env.BUILD_NUMBER,
stageName: "POST API Call",
pipelineName: "TestPipelineKL"
]
def auth = "<password>" //
devops.integration.user:<password> in base64 encoded.
def authHeader = "Basic " + auth
def response = httpRequest(
contentType: 'APPLICATION_JSON',
httpMode: 'POST',
requestBody:
groovy.json.JsonOutput.toJson(requestBody),
url: apiUrl,
customHeaders: [[name: 'Authorization',
value: authHeader]]
)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
if (response.status == 200 ||
response.status == 201) {
echo "API call successful!"
echo "Response: ${response.content}"
} else {
error "API call failed with status
${response.status}"
}
}
}
}
stage('UAT deploy') {
steps {
script {
def chg_output = snDevOpsChange()
def changeRequestNumber
= snDevOpsGetChangeNumber(changeDetails:
"""{"build_number":"${env.BUILD_NUMBER}", "pipeline_name":
"TestPipelineKL", "stage_name": "UAT deploy"}""")
echo "${changeRequestNumber}"
echo "Output of snDevOpsChange():
${chg_output}"
}
}
}
stage('Example') {
steps {
script {
def API_URL =
'https://<your_instance>.service-now.com/api/sn_devops/devops/o
rchestration/changeInfo?pipelineName=TestPipelineKL&toolId=<devo
ps_ToolId>&buildNumber=' + env.BUILD_NUMBER +
'&stageName=UAT%20deploy'
def AUTH = 'Basic <password>'
// Call the API
def response = sh(script: "curl -X GET -H
'Authorization: ${AUTH}' -H 'Content-Type: application/json'
'${API_URL}'", returnStdout: true).trim()
echo "Response: ${response}"
// Store the JSON response into a variable
def slurper = new groovy.json.JsonSlurper()
def jsonResponse =
slurper.parseText(response)
echo "Stored JSON Response: ${jsonResponse}"
// Store the specific field value from JSON
response into a variable
def changeId = jsonResponse.result.sys_id
echo "Change ID: ${changeId}"
// Call the second API to post attachment
def xmlData =
'<root><name>john2</name><age>34</age></root>'
def AUTH2 = 'Basic <password>='
def postResponse = sh(script:
"curl -X POST -H 'Authorization: ${AUTH2}' -H
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
'Content-Type: application/xml' -d '${xmlData}'
'https://<your_instance>.service-now.com/api/now/attachment/fi
le?table_name=change_request&table_sys_id=${changeId}&file_name=
test10111.xml'", returnStdout: true).trim()
}
}
}
}
}

Limitations of the attachment API
• The attachment xml file’s text size should be acceptable to the orchestration tool.
• For Azure DevOps, sn_change_write role is needed for authentication of attachment API,
to upload the file to the change record.
DevOps user-created security tool integration
You can integrate additional security tools that are not supported in the base system in DevOps
Change Velocity.
Configure user-created security tool
Connect your custom security tool that is integrated with your CI/CD pipelines to DevOps
Change Velocity to retrieve security scan results.

Before you begin

You must create the application vulnerability integration by following the step-by-step
instructions in the Configure DevOps with Application Vulnerability Response for better visibility
into CI/CD pipeline [KB1441741]
enablement guide. This is a required pre-requisite setup to
onboard your custom security tool from DevOps Change Velocity.
Role required:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
• Developer role for the scoped app
• DevOps admin role

Note: When creating an integration as a scoped app, the system admin must assign
these roles to the integration developer, so the integration developer is able to create tool
integration and integration capability records for the specific scope.

Procedure
1. Navigate to DevOps > Integrations > Tool Integrations and create a record to define the tool
you are integrating.
2. Select Create manually, and enter the following values in the form fields.
Field

Value

Tool label

Name of the tool integration.

Integration version

Version of the tool integration.

3. Select Submit.
4. Open the newly created tool integration and navigate to the Tool Integration Capability
Mappings related list.
5. Select New, and enter the following values in the form fields.
Field

Value

Tool integration

Sample tool

Tool type capability

Security

6. Select Submit.
7. Navigate to the Integration Capabilities related list, and select New.
8. Create the Connect and Validate records by entering the following values in the form fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
Field

Value

Tool integration

Sample Code Tool

Capability mapping

Capability mapping record created in step 6.

Action

Connect

Note: Do not edit tool action records.
Active

Selected

Timeout (ms)

Timeout for the corresponding subflow.
If execution of the subflow exceeds this
value, a timeout exception occurs. Value is
in milliseconds (ms). Default is 45,000 (45
seconds).

Subflow name

◦ For Connect:
sn_devops_vul_ints.security_tool_connect
◦ For Validate:
sn_devops_vul_ints.security_tool_validate

Domain

global

9. Open the newly created tool integration record and add the SecOps source integration and
Integration handler name fields to the form by navigating to Configure > Form layout.
In the tool integration form, enter the following values for these fields.
◦ SecOps source integration: Select the source integration that is created in the Third Party
Integrations (sn_sec_int_integration) table as described in the Configuration page > Steps
to create a configuration section in the Configure DevOps with Application Vulnerability
Response for better visibility into CI/CD pipeline [KB1441741]
enablement guide.
◦ Integration handler name: sn_devops_vul_ints.DevOpsSecurityToolIntegrationHandler
10. Ensure that "Tool Integration name" DevOps Integration (example: Veracode DevOps
Integration) is created in the Application Vulnerability Integration (sn_vul_app_integration)
table and mapped to the source integration that is created in the Third Party Integrations
(sn_sec_int_integration) table as described in the Configuration page > Steps to create a
configuration section in the Configure DevOps with Application Vulnerability Response for
better visibility into CI/CD pipeline [KB1441741]
enablement guide.

What to do next

By default, when you onboard your tool from workspace, you have to enter the mandatory
fields as defined in the Configuration Page section in the Configure DevOps with Application
Vulnerability Response for better visibility into CI/CD pipeline [KB1441741]
enablement guide.
Not all the mandatory fields are credential fields. In the base system, all the mandatory fields are
displayed while updating credentials. If you want to update the credentials for this tool when the
credentials have expired, you may not want to enter all the mandatory fields. To configure the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
mandatory fields that you want to show in the Update credentials page, perform the following
steps.
1. Navigate to Now Experience Framework > Experiences.
2. Select DevOps Change Workspace.
3. On the UX Page Properties related list, select securityToolsUIConfig.
4. Add the following entry to the JSON.
<tool_integration_sys_id> : {
"CREDENTIAL_PAGE": {
"FIELDS_TO_SHOW": [
"<parameter_1>",
"<parameter_2>"
]
}
}

Integrate security tools with GitLab
Configure security tool for GitLab which is not supported in the base system.

Before you begin

Role required: sn_devops.admin

Procedure
1. Navigate to DevOps > Integrations > Tool Integrations and open the GitLab orchestration tool
integration record.
2. Navigate to the Tool Integration Capability Mappings related list.
3. Select New, and enter the following values in the form fields.
Field

Value

Tool integration

GitLab

Tool type capability

Security

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
4. Select Submit.
5. Navigate to the Integration Capabilities related list, and select New.
6. Enter the following values in the form fields.
Field

Value

Tool integration

GitLab

Capability mapping

Capability mapping record created in step 4.

Action

Notification

Note: Do not edit tool action records.
Active

Selected

Timeout (ms)

Timeout for the corresponding subflow.
If execution of the subflow exceeds this
value, a timeout exception occurs. Value is
in milliseconds (ms). Default is 45,000 (45
seconds).

Subflow name

sn_devops_vul_ints.devops_security_notification

Domain

global

Note: Deactivate the BR Seeded tool integrations not editable
business rule to integrate security tools with GitLab.
7. Modify the sn_devops_ints.DevOpsGitLabIntegrationHandler script
include by navigating to System definitions > Script include, and searching for the
DevOpsGitLabIntegrationHandler script.
a. Modify the handleEvent method to process the security scan results from the GitLab
pipeline. Ensure that your security stage name in your GitLab pipeline is same as the
name you update in the VERACODE_STAGE_NAME, CMARX_ONE_STAGE_NAME, or
CMARX_SAST_STAGE_NAME variable in the handleEvent method. Replace the handleEvent
method code with the following code snippet.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
handleEvent: function(eventGr) {
try {
var renameHandler = new
sn_devops.DevOpsPipelineRenameHandler(this.refTable,
this.appContext, this.relatedRecord);
renameHandler.handlePipelineRename(eventGr);
var payload =
JSON.parse(eventGr.getValue("original_payload"));
this._logger.debug("typeof payload >>" + typeof
payload);
if (!gs.nil(payload) && typeof payload === 'object')
{
var status =
this.getTaskExecutionStatus(payload);
this._logger.debug("Task Execution status -> " +
status);
if (gs.nil(status))
this.updateInboundEvent(eventGr, {
processing_details: gs.getMessage('Task
execution status [{0}] is not handled',
payload.build_status),
state:
sn_devops.DevOpsCommonConstants.INBOUND_EVENT_STATE_IGNORED
});
else {
// create fake start event for cancelled job
if (status == 'cancelled') {
this.createFakeEvent(eventGr, payload,
'running');
}
var normalizedObject = {};
normalizedObject.taskExecution =
this.getTaskExecutionObject(eventGr, payload, status);
normalizedObject.orchestrationTask =
this.getOrchestrationTaskObject(normalizedObject.taskExecuti
on, payload);
normalizedObject.callback =
this.getCallbackObject(normalizedObject.taskExecution,
payload);
var devopsUtil = new
sn_devops.DevOpsUtil(this.refTable, this.appContext,
this.relatedRecord);
normalizedObject =
devopsUtil.schemaValidationForTransformedPayload(normalizedO
bject);
var VERACODE_STAGE_NAME = 'SN_VERACODE';
var CMARX_ONE_STAGE_NAME =
'SN_CMARX_ONE_STAGE_NAME';
var CMARX_SAST_STAGE_NAME =
'SN_CMARX_SAST_STAGE_NAME';
if (!gs.nil(payload.build_stage) &&
(
payload.build_stage ==
VERACODE_STAGE_NAME ||
payload.build_stage ==
CMARX_ONE_STAGE_NAME ||
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
payload.build_stage ==
CMARX_SAST_STAGE_NAME
)
&&
this.isCompleted(normalizedObject.taskExecution)) {
var queryParams =
sn_devops.DevOpsQueryParamsHelper.convertToSingular(JSON.par
se(eventGr.getValue('query_params')));
if
(gs.nil(normalizedObject.taskExecution.securityScan)) {
normalizedObject.taskExecution.securityScan = {
securityScanSummaryCount: 0
};
}
normalizedObject.taskExecution.securityScan.securityScanSumm
aryCount += 1;
}
this._logger.debug("Normalized Object: " +
JSON.stringify(normalizedObject));
return JSON.stringify(normalizedObject);
}
} else
this.updateInboundEvent(eventGr, {
processing_details: gs.getMessage('Payload is
missing or invalid'),
state:
sn_devops.DevOpsCommonConstants.INBOUND_EVENT_STATE_ERROR
});
} catch (error) {
throw
sn_devops.DevOpsErrorHelper.createDevOpsScriptIncludeError(e
rror,
sn_devops_ints.DevOpsIntegrationsCommonMessages.GITLAB_INBOU
ND_EVENT_PROCESS_ISSUE,
"DevOpsGitLabIntegrationHandler.handleEvent",
"handleEvent");
}
},
In the following examples the GitLab pipeline shows that the security stage name
is same as the VERACODE_STAGE_NAME, CMARX_ONE_STAGE_NAME, or
CMARX_SAST_STAGE_NAME variables respectively in the handleEvent method.
VERACODE_STAGE_NAME is for Veracode.
image: maven:latest
stages:
- build
- SN_VERACODE
- Deploy
build_1:
stage: build
tags:
- local-runner1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
script:
- echo "build"
security_test:
stage: SN_VERACODE
tags:
- local-runner1
script:
- |
curl
"https://<instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/security?toolId=<gitlab_tool_sys_id> " \
--request POST \
--header "Accept:application/json" \
--header "Content-Type:application/json" \
--data "{
\"pipelineInfo\": {
\"buildNumber\": \"${CI_JOB_ID}\",
\"taskExecutionUrl\": \"${CI_JOB_URL}/\"
},
\"securityResultAttributes\": {
\"scanner\": \"Veracode\",
\"applicationName\": \"Application\"
}
}" \
--user 'devops.system':’password’

CMARX_ONE_STAGE_NAME is for Checkmarx One.
image: maven:latest
stages:
- build
- SN_CMARX_ONE_STAGE_NAME
- Deploy
build_1:
stage: build
tags:
- local-runner1
script:
- echo "build"
security_test:
stage: SN_CMARX_ONE_STAGE_NAME
tags:
- local-runner1
script:
- |
curl
"https://<instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/security?toolId=<gitlab_tool_sys_id> " \
--request POST \
--header "Accept:application/json" \
--header "Content-Type:application/json" \
--data "{
\"pipelineInfo\": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
\"buildNumber\": \"${CI_JOB_ID}\",
\"taskExecutionUrl\": \"${CI_JOB_URL}/\"
},
\"securityResultAttributes\": {
\"scanner\": \"Checkmarx One\",
\"projectId\": \"projectId\",
\"scanId\": \"scanId\",
}
}" \
--user 'devops.system':’password’
CMARX_SAST_STAGE_NAME is for Checkmarx SAST.
image: maven:latest
stages:
- build
- SN_CMARX_SAST_STAGE_NAME
- Deploy
build_1:
stage: build
tags:
- local-runner1
script:
- echo "build"
security_test:
stage: SN_CMARX_SAST_STAGE_NAME
tags:
- local-runner1
script:
- |
curl
"https://<instance>.service-now.com/api/sn_devops/v1/devo
ps/tool/security?toolId=<gitlab_tool_sys_id> " \
--request POST \
--header "Accept:application/json" \
--header "Content-Type:application/json" \
--data "{
\"pipelineInfo\": {
\"buildNumber\": \"${CI_JOB_ID}\",
\"taskExecutionUrl\": \"${CI_JOB_URL}/\"
},
\"securityResultAttributes\": {
\"scanner\": \"Checkmarx\",
\"projectId\": \"projectId\"
}
}" \
--user 'devops.system':’password’
b. Add the getPipelineWithSecurityEventPayload method to the
DevOpsGitLabIntegrationHandler script.
getPipelineWithSecurityEventPayload: function(payload) {
var gr = new
GlideRecordSecure('sn_devops_task_execution');
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


<!-- page 989 -->
gr.addEncodedQuery("execution_url=" +
payload.pipelineInfo.taskExecutionUrl);
gr.query();
var task = null;
if (gr.next()) {
task = gr;
}
if (gs.nil(task) || gs.nil(task.orchestration_task)
|| gs.nil(task.orchestration_task.step)) {
throw "Pipeline Info not found";
}
var step =
task.orchestration_task.step.getRefRecord();
var pipelineDAO = new sn_devops.DevOpsPipelineDAO();
var query = 'sys_id=' + step.pipeline;
var pipeline =
pipelineDAO.getLimitedRecordsByEncodedQuery(query);
return pipeline;
},
DevOps user-created orchestration tool integration
Integrate DevOps Change Velocity with any orchestration tool that is not supported in the base
system.
If the orchestration tool your organization uses isn’t provided in the base system, you can create
an orchestration tool integration on your own. There are two ways in which you can create the
integration.
• Using transform scripts manually. See the Now Support Knowledge Base [KB1794252
for more information.

] article

• Using the DevOps Change Workspace by performing the steps specified in Create a tool
integration from the DevOps Change Workspace.
Create a DevOps tool integration
To create a DevOps tool integration, your integration developer configures DevOps tool
integration settings, and a Workflow Studio subflow to collect and transform data from the source
tool. Then your DevOps admin configures your DevOps tool connections.

Before you begin

Note: When creating an integration as a scoped app, the system admin must assign
these roles to the integration developer so the integration developer is able to create tool
integration and integration capability records for the specific scope.
• Developer role for the scoped app
• DevOps admin role
Role required: sn_devops.admin

About this task

Creating a DevOps tool integration procedure involves configuration by both your integration
developer and your DevOps admin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
• Your integration developer creates a tool integration record in DevOps, a Workflow Studio
subflow, a tool capability mapping, and an integration capability record in DevOps to map the
capabilities and actions together.

Note: Notification, connect, and discover capabilities are supported.
• Your DevOps admin sets up DevOps connections (planning or coding tool), and configures the
source tool with the webhook and credentials.
This procedure provides detailed steps to create your DevOps tool integration.

Procedure
1. Integration developer:
Configure the source tool integration capabilities and actions, and a subflow.
a. Navigate to DevOps > Integrations > Tool Integrations and create a record to define the tool
you are integrating (source tool).

Note: Do not edit the tool integration records provided with the DevOps application.
DevOps tool integration
Tool label

Sample Code Tool

Table

Code Tool [sn_devops_tool]

Use packageable integrations

Selected

Integration version

1.0

Active

Selected

b. Navigate to Flow Designer > Designer and create a subflow to collect and transform data
from the tool you are integrating (source tool).

Note: The Run As field must be set to System User, and the Inputs label must be set
to current variable.
Notification subflow properties
Name

Code Tool Notification

Application

Sample Integration App

Accessible From

All application scopes

Description

Code tool for integration app

Run As

System User

The subflow must contain Get More Data via API calls, and/or transform the original payload.
Copy the transformed payload into the inbound events record.

Note: Do not edit the DevOps main flow.
c. Navigate to DevOps > Integrations > Tool Capability Mappings and create a record to map
the tool integration record to the tool type capability.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
DevOps tool capability mapping
Tool integration

Sample tool

Tool type capability

Code

d. Navigate to DevOps > Integrations > Integration Capabilities and create a record to specify
the action for the tool capability mapping.

Note: Do not edit the integration capability records provided with the DevOps
application.
DevOps integration capability
Tool integration
Capability mapping

Sample Code Tool
Sample Code Tool-Code

Note: Do not edit tool type capability
records.
Action

Notification

Note: Do not edit tool action records.
Active
Timeout (ms)

Selected
Timeout for the corresponding subflow. If
execution of the subflow exceeds this value,
a timeout exception occurs.
Value is in milliseconds (ms). Default is
45,000 (45 seconds).

Subflow name

x_snc_sample_integ.code_tool_notification
The name is prefixed by the scope name
and a dot (.) before the actual subflow name.
For example, given:
▪ connect_code_tool subflow
▪ my_app_scope scope
The value for this field is
my_app_scope.connect_code_tool.

Note: If the Subflow name field is
left blank for a Notification capability,
default handling of notifications
occurs.
See Notification tool capability action.
Domain

global

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
2. DevOps admin:
Configure the connection from DevOps to the source tool.
a. The tool record must contain:
▪ Reference to the tool integration record created by the integration developer (in the Tool
field)
▪ Tool label
▪ Connection alias (connection and credential)
b. Copy the notification (webhook) created on the DevOps planning tool to the source tool
service hook of the notification endpoint and set the credentials to devops.integration.user.
You can view the state of integration events in the Inbound Event list (DevOps >
Administration > Inbound Events).
The inbound event record state is set to Processed once the object has been inserted into the
DevOps Core table. Event states include New, In Progress, Processed, Unmatched, and Error.
3. If the tool integration record and the subflow are created in a different scope, the DevOps
admin must create two new Cross scope privileges records to allow the app to access the
inbound events table.
Navigate to System Applications > Application Cross-Scope Access and create read and
write cross scope privileges records to allow your app to access the inbound events table.

Field

Read

Write

Source Scope

Auto populated based on the current application

Target Scope

DevOps

Target Name

sn_devops_inbound_event

Target Type

Table

Operation

Read

Status

Allowed

Write

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
Example:
DevOps tool integration

Workflow Studio subflow properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
Workflow Studio subflow

Workflow Studio DevOps Integration - Notification flow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
DevOps tool capability mapping

Integration capability

Planning tool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
Cross scope access records (read and write)

Creating DevOps subflows
For user-created integrations, create a DevOps Workflow Studio subflow to collect and transform
data from the tool you are integrating.
ServiceNow Flow Designer
is a ServiceNow AI Platform feature your integration developer can
use to automate processes using a sequence of actions. Trigger conditions start the flow, and
variables pass information between actions.
See Flow Designer

Subflows

for information on how to create a subflow.

Notification capability subflow
Item

Expected value

Inputs

Label: current
Type: Reference.Inbound Event

Outputs

N/A

Transform the original payload, and save the final payload in the transformed_payload field.
Expected standard JSON Notification capability payload - Planning tool

Note: The version attribute in the JSON payload is optional. Even if you do
not provide the version attribute, the payload is processed successfully.
{
"id": "STR1234",
"type": "Story",
"shortDescription": "Planning API Spec",
"state": "In-progress",
"createdDateTime": "1970-01-01T08:15:30-05:00",
"assignedTo": {
"name": "Leo Neo",
"userName": "lenn",
"id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
"email": "lenn@smithworksinc.com"
},
// The Version attribute is optional
"version": {
"id": "REL1234",
"shortDescription": "APIs Release",
"createdDateTime": "1970-01-01T08:15:30-05:00",
"app": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
"id": "PRODUCT1234",
"shortDescription": "Mobile UI",
"createdDateTime":
"1970-01-01T08:15:30-05:00",
"url":
"https://jira.com/mycompany/browse/PRODUCT-125"
},
"url":
"https://jira.com/mycompany/browse/REL-125"
},
"app": {
"id": "PRODUCT1234",
"shortDescription": "Mobile UI",
"createdDateTime": "1970-01-01T08:15:30-05:00",
"url":
"https://jira.com/mycompany/browse/PRODUCT-125"
},
"url": "https://jira.com/mycompany/browse/HALOKEY-25"
}
Expected standard JSON Notification capability payload - Coding tool
{
"id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
"url":
"https://github.com/mycompany/mobileplatform/commit/3f
a85f6457174562b3fc2c963f66afa6",
"committedDate": "1970-01-01T08:15:30-05:00",
"repository": {
"name": "Platform-Mobile",
"url":
"https://github.com/mycompany/mobileplatform"
},
"branch": {
"name": "master",
"path": "refs/heads/master"
},
"committer": {
"email": "lenn@smithworksinc.com"
},
"details": [
{
"additions": 0,
"deletions": 0,
"totalChanges": 0,
"file":
"src/test/java/com/mycompany/app/App.java",
"action": "modified",
"changes":
"%40%40%20-30%2C6%20%2B30%2C18%20%40%40%20public%20v
oid%20testAppConstructor%28%29%20%7B%0A
%20%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%7D%0A
%20%0A%2B%20%20%20%20%40Test%0A%2B
%20%20%20%20public%20void%20testDatabase%28%29%0A%2B
%20%20%20%20%7B%0A%2B
%09%2F%2FThis%20is%20a%20test%20function%0A%2B
%20%20%20%20%20%20%20%20App.main%28null%29%3B%0A%2B
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
%20%20%20%20%20%20%20%20try%20%7B%0A%2B
%20%20%20%20%20%20%20%20%20%20%20%20assertEquals%28%22H
ello%20World%21%22%20%2B%20System.getProperty%28%22line
.separator%22%29%2C%20outContent.toString%28%29%29
%3B%0A%2B
%20%20%20%20%20%20%20%20%7D%20catch%20%28AssertionEr
ror%20e%29%20%7B%0A%2B
%20%20%20%20%20%20%20%20%20%20%20%20fail%28%22%22mess
age%22%20is%20not%20%22Hello%20World%21%22%22%29%3B%0A
%2B%20%20%20%20%20%20%20%20%7D%0A%2B%20%20%20%20%7D%0A
%2B%0A%20%20%20%20%20%40Test%0A
%20%20%20%20%20public%20void%20testAppMain%28%29%0A%20%
20%20%20%20%7B"
}
]
}
Expected standard JSON Notification capability payload - Orchestration tool
{
"toolId": "bc1d9454dbdb0810ae77f3c61d9619d1",
"buildNumber": "100",
"nativeId": "HILR/Prod ✅100",
"name": "HILR/Prod",
"id": "HILR/Prod ✅100",
"url":
"https://dev.azure.com/lenn/CorpSite-ADO/_build/resul
ts?buildId=100✅Prod/",
"isMultiBranch": "false",
"orchestrationTaskUrl":
"https://dev.azure.com/lenn/CorpSite-ADO/_build?name=H
ILR✅Prod",
"orchestrationTaskName": "CorpSite-ADO/HILR✅Prod",
"upstreamTaskUrl":
"https://dev.azure.com/lenn/CorpSite-ADO/_build/resul
ts?buildId=100✅UAT/",
"upstreamId": "CorpSite-ADO/HILR✅UAT",
"result": "building",
"startDateTime": "2020-03-20 22:59:27"
}
Expected standard JSON Notification capability payload - Test tool
Functional:
{
"name": "CorpSite-selenium✅55",
"duration": 78.802,
"passedTests": 4,
"failedTests": 0,
"skippedTests": 0,
"blockedTests": 0,
"totalTests": 4,
"startTime": "2020-06-30T18:12:31Z",
"finishTime": "2020-06-30T18:12:31Z",
"passingPercent": 100,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
// Use Artifact OR Package OR Build + Stage +
PipelineName Attributes
"packages": [{"name": "CorpSite-pkg1"}],
"artifacts": [{"name": "CorpSite-artifact", "version":
"1.0.0"}],
"buildNumber": "55",
"stageName": "test",
"pipelineName": "CorpSite-selenium",
}
Performance:
{
"name": "Performance Tests",
"url": "http://abc.com",
"startTime": "2020-06-30T18:12:31Z",
"finishTime": "2020-06-30T18:12:31Z",
"duration": 78.802,
"maximumVirtualUsers": "",
"throughput": "",
"maximumTime": "",
"minimumTime": "",
"averageTime": "",
"ninetyPercent": "",
"standardDeviation": "",
// Use Artifact OR Package OR Build + Stage +
PipelineName Attributes
"packages": [{"name": "CorpSite-pkg1"}],
"artifacts": [{"name": "CorpSite-artifact", "version":
"1.0.0"}],
"buildNumber": "55",
"stageName": "test",
"pipelineName": "CorpSite-Performance",
}
Expected standard JSON Notification capability payload - Artifact tool
Pipelines:
{
"artifacts": [
{
"name": "acm.jar",
"version": "1.82",
"semanticVersion": "1.82.0",
"repositoryName": "acm-repo"
}
],
"pipelineName": "testMultiBranch/master",
"taskExecutionNumber": "82",
"stageName": "buildmbmaster",
"branchName": "master"
}
Jenkins Freestyle/Maven Project:
{
"artifacts": [
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
{
"name": "mav1.jar",
"version": "1.11",
"semanticVersion": "1.11.0",
"repositoryName": "mav-repo"
}
],
"projectName": "maven-test-proj",
"taskExecutionNumber": "11"
}
DevOps Notification capability flow diagram example - Coding tool

Connect capability subflow
The Connect capability is supported.

Item

Inputs

Expected value

Label: current
Type: Reference.DevOps Tool
Tool record for which the Connect button
action is clicked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
Item

Expected value

Outputs

• Label: connected

See subflow outputs

.

Flag indicating the success or failure of the
connection made to the target tool (true/
false).
• Label: errormessage
String message displayed on the form for
connection failure. The variable is an empty
string if the connection is successful.

Connect errors shown on the DevOps tool form:
Connection failed
Subflow was executed successfully but the connection could not be made.
Error: Failed to get failure details from the tool specific connect flow
Subflow execution failed for an unknown reason.
Error updating the tool connect status
The connection_state attribute could not be updated for an unknown reason.
DevOps Connect capability flow diagram example - Orchestration tool

Discover capability subflow
The Discover capability is supported.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
Item

Expected value

Inputs

Label: current
Type: Reference.DevOps Tool

Outputs
See subflow outputs

Without pagination:
.

Label: discoverpayload
Type: Array of objects as JSON string.
(JSON.stringify([{},{}]))
Planning tool without pagination:
[
{
"id":"REL1234567",
"name": "REL NUMBERS",
"url":"https://
jira.com/vult/browse/REL123456
7",
"nativeId":
"1790e6cc-085b-4529-9cb8-47f3
93182226"
},
{
"id":"TOR67",
"name": "TOR 67",
"url":"https://
jira.com/welp/browse/TOR67",
"nativeId":
"482ce864-085b-4529-9cb8-47f3
93767eb2"
}
]
Coding tool without pagination:
[
{
"name": "nvm_repo",
"url":
"https://github.com/nvm_rep
o/"
},
{
"name": "golang_util",
"url":
"https://github.com/golang_ut
il/"
}
];

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
Item

Expected value

Orchestration tool without pagination:
{
"orchestrationTasks": [
{
"name": "Build_APC_1",
"url":
"https://jenkins.wsf.xyz/j
ob/Build_APC_1",
"projectName":
"Build_APC_1"
},
{
"name": "CI_CD_Jenkins",
"url":
"https://pt1.jenkins.com/j
ob/CI_CD_Jenkins",
"projectName":
"CI_CD_Jenkins"
},
{
"name": "CI_deploy",
"url":
"https://pt2.jenkins.com/j
ob/CI_deploy",
"projectName":
"CI_deploy"
}
],
"pipelines": [
{
"name": "Build_APC_1",
"url":
"https://jenkins.wsf.xyz/j
ob/Build_APC_1",
"projectName":
"Build_APC_1"
},
{
"name": "CI_CD_Jenkins",
"url":
"https://pt1.jenkins.com/j
ob/CI_CD_Jenkins",
"projectName":
"CI_CD_Jenkins"
},
{
"name": "CI_deploy",
"url":
"https://pt2.jenkins.com/j
ob/CI_deploy",
"projectName":
"CI_deploy"
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
Item

Expected value

]
}
With pagination:
Label: discoverpayload
Type: Array of objects as JSON string.
(JSON.stringify([{},{}]))
Sample JSON format:
"pageInfo" : {
"isLastPage" : true,
"discoverPayload" : {},
“pageDetails” : {}
}
Planning tool with pagination:
{
"pageInfo": {
"isLastPage": false,
"discoverPayload": [
{
"id":"REL1234567",
"name": "REL
NUMBERS",
"url":"https://
jira.com/vult/browse/REL123456
7",
"nativeId":
"1790e6cc-085b-4529-9cb8-47f3
93182226"
},
{
"id":"TOR67",
"name": "TOR
67",
"url":"https://
jira.com/welp/browse/TOR67",
"nativeId":
"482ce864-085b-4529-9cb8-47f3
93767eb2"
}
],
"pageDetails": {
"curPage" : 1,
"nextPage": 2
}
}
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Item

Expected value

Coding tool with pagination:
{
"pageInfo": {
"isLastPage": false,
"discoverPayload": [
{
"name":
"nvm_repo",
"url":
"https://github.com/nvm_rep
o/"
},
{
"name":
"golang_util",
"url":
"https://github.com/golang_ut
il/"
}
],
"pageDetails": {
"curPage" : 1,
"nextPage": 2
}
}
}
Orchestration tool with pagination:
{
"pageInfo": {
"isLastPage": false,
"discoverPayload": {
"orchestrationTasks": [
{
"name":
"Build_APC_1",
"url":
"https://jenkins.wsf.xyz/j
ob/Build_APC_1",
"projectName":
"Build_APC_1"
},
{
"name":
"CI_CD_Jenkins",
"url":
"https://pt1.jenkins.com/j
ob/CI_CD_Jenkins",
"projectName":
"CI_CD_Jenkins"
}
],
"pipelines": [
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
Item

Expected value

{
"name":
"Build_APC_1",
"url":
"https://jenkins.wsf.xyz/j
ob/Build_APC_1",
"projectName":
"Build_APC_1"
}
]
},
"pageDetails": {
"curPage" : 1,
"nextPage": 2
}
}
}
The Discover main flow is triggered during import request record creation. An import request has
these states and messages.

State

Message

Requested

--

Processing

--

Completed

Updated <number> object(s)
Found <number> objects with invalid toolId
Found <number> objects failed validation

Error

• Unable to parse payload string from Subflow
• discoverpayload is expected to be an array
of objects
• ImportRequest record does not have
reference to tool table

Paused

--

Canceled

--

Unmatched

--

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
DevOps Discover capability flow diagram example - Planning tool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
DevOps Discover capability with pagination support flow diagram

Update Import Request Workflow Studio action
You can use the Update Import Request action in your Discover subflow to modify the Import
Request record state, if desired.

Input label

current
state

Type

Reference.Import Request
(String)
• requested
• processing

Note: Flow execution is stopped
(once the return is received from
the subflow) when the state is set to
processing.
• completed
• error
• paused
• canceled
• unmatched
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Input label

Type

details

(String)

Add custom fields for a planning tool integration
Add custom fields into your planning tool integration to improve configurability and access
business-specific information, which facilitates more informed decision-making.

Before you begin

Role required: sn_devops.admin

About this task

You can add custom fields to a planning tool integration by using record transformers. Create
record transformers for each tool action, and add record transformer rules to map fields in your
tool to fields in the DevOps data model. For example, consider a scenario where the Azure
DevOps work item Id is defined as "adoid" during the import process. If you want to align it
with the ServiceNow work item Id, you can achieve this by creating a record transformer for the
import action. Within this transformer, you must establish rules to map the "adoid" field to the
corresponding ServiceNow work item Id field. After the field mapping is created, every time an
inbound event is received from Azure DevOps to bring in work items, the data will be processed
through the configured transformer into the transformed payload.

Note: This feature is available only for the base system plan type tool integrations except
for ServiceNow Agile Development 2.0.

Procedure
1. Navigate to Workspaces > DevOps Change Workspace > Administration.
2. Select Integrations > Tool integrations from the Lists tab.
3. Select the planning tool integration for which you want to
add custom fields, and then select Edit field mappings.

Note: Verify that the application scope is selected as DevOps Integrations.
4. In the Edit field mappings page, select the Create a record transformer button in the Planning
capability transformation section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
Note: You must create a record transformer for each tool action. In this procedure, a
record transformer is created for the Import action.
a. On the Create New Record Transformer page, select Create transformer sequence.

b. In the Create New Record Transformer Rule Sequence page, enter the name of the
rule sequence in the Name field, and select the type of sequence in the Type field.

c. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
5. Navigate to the transformer record page, and select the
Record Transformer Rules tab, and then select New.

6. In the Create New Record Transformer Rule page, fill in the following fields.

Create New Record Transformer Rule
Field

Description

Name

Name of the rule in the sequence.

Symbol

Name of the field in the transformed payload
to where the custom field value is extracted
to.

Path

Payload path from where the custom field
value is retrieved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
Field

Description

Order

Order in which the rule must be run in the
sequence.

Description

Text explaining the rule.

Note: Multiple rules can also be added to a custom column from the JSON payload
and more fields can be mapped. All the transformations added are considered in the
transformed payload.
7. Select Save.
8. Navigate to the Details section of the transformer record, and fill in the following fields.
Record Transformer
Field

Description

Name

Name of the record transformer.

Base Path

Path to read from for the incoming payload.

Description

Text explaining the record transformer.

Record Path

Path to write to for the transformed payload.

Record Transformer Rule Sequence

Rule sequence that you want to associate
with this record transformer.

Active

Option to make the record transformer active.

9. Select Save.
10. Navigate to the Edit field mappings page and select Add mapping.

a. Select the record transformer for the tool action.
b. Set the sequence in which the mapping of the record is processed in the Order field.
c. Select a symbol if you want to map the record transformer to different entities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
Note: The Symbol field here is different from the Symbol field in the Create New
Record Transformer Rule form in step 6.
d. Select Save.

Note: You can add multiple field mappings for an action as per your requirement.
Related topics
Transformer - Scoped, Global
Create a tool integration from the DevOps Change Workspace
Create a tool integration from the DevOps Change Workspace for integrating additional
orchestration, planning, and coding tools that are not available by default in the DevOps Change
Velocity application.

Before you begin

Complete the tasks specified in Getting started with DevOps Change Velocity.
Role required: sn_devops.admin or sn_devops.tool_owner
Set the application scope to the custom application.

About this task

Watch this video to understand how to create a tool integration from the DevOps Change
Workspace.
https://player.vimeo.com/video/1085044419?
h=ee7cb2545b&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to Workspaces > DevOps Change Workspace.
2. In the DevOps workspace, navigate to Administration > Integrations > Tool integrations.
3. Select New.
Alternatively, you can open an existing tool integration record, and then select Edit (for a
custom tool integration that is not supported in the base system).

Note: For planning tools that are not supported in the base system, you can select

Edit in the tool integration record to navigate to the Transformation step, where you can
add any additional field. For planning tools that are supported in the base system, you
can select Edit field mappings to add any additional field. For information on adding
additional fields for supported planning tools, see Add custom fields for a planning tool
integration.
The Details step is displayed.
4. In the Tool details step, fill in the following:
Details step fields
Field

Description

Tool label

Name of the tool integration.

Integration version

API version of the tool integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
5. Optional: Add an image of the tool’s logo by selecting +Add file.
6. In the Tool type capabilities section, select the capability that your tool supports in the
Capabilities field.
Capability

Description

Orchestration

Tool that automated and coordinates the exe­
cution of complex processes in the software
development life cycle.

Plan

Tool that helps plan and manage the software
development life cycle.

Code

Tool that helps programmers write, edit, and
manage code.

Note: A tool can be mapped to multiple tool type capabilities. Tool integration is
supported for orchestration, plan, and code capabilities.
7. Select Next.
A tool integration record is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
8. In the Actions step, select the required actions for the tool capabilities selected in the previous
step.

Note: Tool capability actions are defined processes that enables the DevOps Data
Model to communicate with and import data from the tool integration. Each tool type
capability needs its own set of actions.
9. Select Next.
Integration capability records for the selected actions are created with default values.
10. In the Configurations step, add any additional configurations that are needed for your tool by
selecting Add field.

The fields configured here will be displayed as parameters for the playbook whenever you are
onboarding a tool.
11. Fill in the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Configurations
Field

Description

Field name

Name of the configuration.

Order

Sequence in which this configuration is
processed.

Label

Label of the configuration.

Mandatory

If marked true, this will appear as a
connection detail when connecting an
instance of this tool integration.

Field type

Type of the field, which can be string or
password

Default value

Default value of this configuration.

Help text

If this configuration is mandatory, then the
help text appears for this field in connection
details when connecting an instance of this
tool.

12. Select Next.
A tool integration configuration record is created for the additional field.
13. In the Transformation step, review the transformation for each tool capability action, and add
any custom field to the tool integration.
A generic transform script is provided for each tool action. You can extend the generic
script which calls the transformer-based mapping or create record transformers and
manually map it to the fields. To extend, you can create a new script by extending the
DevOpsGenericIntegrationHandlerSNC class to override the required method, and use this
newly created script in the transform script.
◦ Enter the resource path API endpoint in the Resource path field if you use the generic script.

◦ If not already available, create a record transformer for the Notification, Discover,
and Import actions for each of the capabilities by selecting the Create a record
transformer, and add record transformer rules to map fields in your tool to fields

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
in the DevOps Data Model. For information on creating a record transformer and
manually mapping it to the field, see Add custom fields for a planning tool integration.

14. In Next steps, you can validate your tool integration by connecting to an instance of the
tool through the playbook experience, and you can also view the tool integration record.

Note: On selecting the Connect to a tool button, you will see the newly created tool
integration in the list of tools available to connect.

What to do next

Creation of webhooks to send inbound events to DevOps Change Velocity using token
Creation of webhooks to send inbound events to DevOps Change Velocity using token
You must create webhooks to send inbound events to DevOps Change Velocity using token
based authentication.
To send inbound events to a ServiceNow instance, you must use the following API endpoint
structure:
<instance_url>/api/sn_devops/v2/devops/tool/{capability}?toolId=
<toolId>
where capability can be plan, code, or orchestration.
You can copy the details like the tool Id, instance URL, and so on by selecting Configure
manually from the tool record or in the configure step while onboarding the tool. You can
then select Copy in the appropriate field to copy the value to your clipboard. The field label
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


<!-- page 1018 -->
changes to Copied, but you can copy multiple times. The following image displays the
page from where the values can be copied for the GitHub tool in DevOps Change Velocity.

For token authentication, you must pass the token as part of the authorization header or query
parameters as the endpoints are secured. You can use one of the following methods:
• Pass the token as a header by using the following format: Header Name:
Authorization Header Value: sn_devops.DevOpsToken
<ToolId>:<Token>, where <ToolId> is the ID of the tool, and <Token> is the authentication
token copied from the Tool Record page.
• Pass the token as a query parameter in the URL: <instance_url>/
api/sn_devops/v2/devops/tool/{capability}?
toolId=<toolId>&ni.nolog.token=<Token>, where <ToolId> is the ID of the tool,
and <Token> is the authentication token copied from the Tool Record page.
For Basic authentication, you can use the following V1 endpoint: https://
user:password@<instance_url>/api/sn_devops/v1/devops/tool/
{capability}?toolId=<toolId>, replace user and password with your ServiceNow
credentials.
If you have a custom tool or a different authentication method, you can implement your own
authentication logic. For example, you can implement an authenticateToken function in your
handler class. The function should verify the token and ensure proper authentication. You must
have the admin role in ServiceNow to implement your own authentication logic.

Update third-party tool credentials in DevOps Change Velocity
If your tool credential has changed, you must update the credentials in your ServiceNow
instance to avoid getting disconnected.

Before you begin

Role required: sn_devops.admin

Procedure
Update your tool credentials using one of the following methods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
Option

Steps

a. Navigate to Workspaces > DevOps Change
Workspace > Tools > <tool type>.
b. Select the tool for which you want to update
your credentials.
c. In the tool record, select More Actions(
> Update credentials.

)

d. Select the Credential type.
◦ If the credential type is Basic Auth, enter
the new password or access token.
◦ If the credential type is OAuth, enter the
new credential.

Note: This step is only applicable for
tools which support OAuth 2.0 based
authentication.

From Workspace

e. Enter the updated credentials in the corre­
sponding field.

Note: You can change your pass­
word/token, username, or authentica­
tion type.
f. Select Check permissions to verify if the re­
quired permissions are available.

Note: If you are connecting to GitHub,
for OAuth 2.0 and GitHub App creden­
tial, the GitHub app slug name is re­
quired to check permissions. If it is not
provided, tool credentials will be updat­
ed without checking permissions.
g. Select Update credentials to update the cre­
dentials. The tool will be in the disconnected
state.
h. Select Connect to establish the connection.

a. Navigate to All > DevOps > Tools > <tool
type>.
From Classic

b. Select the tool for which you want to update
your credentials.
c. From the Tool connections related list, select
the credential record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
Option

Steps

d. Enter the updated credentials in the corre­
sponding field, and select Save. The tool will
be in the disconnected state.
e. Select Connect to establish the connection.

Notifications on tool credential expiration
Notifications are sent to tool users on expiration of tool credentials to alert them. Notifications are
also sent proactively before the expiration of tool credentials for GitHub tools created with basic
authentication. This enables tool users with the sn_devops.tool_owner or sn_devops.admin roles
to update the tool credentials and prevent any loss of data.
A universal task is created and assigned to users with the sn_devops.tool_owner role
who are part of any user group specified in the Maintained by field, and any user with the
sn_devops.admin role. They will be notified of the universal task through notification (in the bell
icon), email, and an open task in the workspace home page.

Notifications are also displayed in the tool record in the form of a banner message to any user
with access to the tool when the tool credentials expire. But the credentials can be updated only
by users with the sn_devops.tool_owner or sn_devops.admin role.
The credentials expiration check happens in the system every one hour. If your tool credentials
have expired, it might take a maximum of one hour for the system to send notifications.
For GitHub tools created with basic auth, notifications are also sent proactively before the
expiration of tool credentials. Apart from the universal task and banner notification, a field
message is also displayed in the case of proactive expiration notifications. You can set the
number of days before which expiration notifications must be sent in the Number of days before
tool credential expiry to assign a universal task and notify (if applicable) property. By default,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
it is set to 3 days. To stop sending proactive notifications, select 0 as the value for this property.

If you want to stop sending notifications for expired credentials after expiry, disable the Assign

a universal task and notify to update tool credentials when
expired property. For more information, see DevOps Change Velocity properties.
The following types of notifications are sent:
Universal task
A universal task is created and notifications are sent to users with the
sn_devops.tool_owner role who are part of any user group specified in the
Maintained by field, and any user with the sn_devops.admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


