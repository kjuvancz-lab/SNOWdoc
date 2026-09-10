# Zurich IT Service Management — Applications

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1023–1034 of 3857

Sections: Applications (p1023)

---

<!-- page 1023 -->
Banner message
A banner message is displayed on the tool record to all users with access to the tool
record.

Field message
A field message is displayed on the Credentials expiration field in the tool record
for a GitHub tool created with basic auth.

When the credentials of your tool expire, the tool gets disconnected. You can select the Update
credentials link in the notifications, and update your tool credentials. After the credentials are
updated, connect to the tool again to start receiving data. For information on updating tool
credentials, see Update third-party tool credentials in DevOps Change Velocity.

Applications in DevOps Change Velocity
In DevOps Change Velocity, an application collects all the up-to-date data that connected tools
send about plans, repositories, and pipelines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
An application is needed to group plans, repositories, and pipelines together which enable
tracking automatically and provide associations for DevOps data such as commits linked to work
items. You can link the application with other ServiceNow products, including DevOps Config.
You must create an application to enable traceability for user stories, commits, test results, and
more. Associating plans, repositories, and pipelines to an application also enables pipeline
modeling, change governance, and metric reporting. In the DevOps Change, this procedure
generates a single DevOps application record (sn_devops_app) that is used by both DevOps
and DevOps Config (if installed).
When DevOps Config is installed, the DevOps application record is also linked to a CDM
application record (sn_cdm_application). The CSDM application model (name, owner,
manufacturer) functions as the link between ServiceNow DevOps products.

Create an application - Workspace
Create applications using the DevOps Change Workspace and associate pipelines, plans, and
repositories to it.

Before you begin

Role required: sn_devops.admin or sn_devops.app_owner

Procedure
1. Navigate to Workspaces > DevOps Change Workspace.
2. You can create an application using any of the following options:
◦ Select Create an application from the Home page.
◦ Select the Applications (

) module and select New.

3. In the Create an application modal, in the Application name field, enter the name for your
application.

You can either create a new application, which will create a new application model with the
same name, or select an existing application model, which will create an application with the
same name as the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
Type

Result

New application

◦ The system generates a new DevOps application, a new
application model, and a new SDLC component (SDLC-C) in the
CMDB.
◦ The SDLC-C is assigned the same name as the new application.
◦ If the DevOps Config application is installed, then DevOps
associates the application to the CDM application.

Existing application
model

The system generates a new DevOps application from that
application model.
◦ The application is given the same name as the application model.
◦ If an SDLC component exists for the application model, then
DevOps associates the SDLC-C to the new application.
◦ If an SDLC component doesn’t exist for the application model,
then DevOps generates a new SDLC-C with the same name as the
application model.
◦ If DevOps Config is installed, then DevOps creates a CDM
application and associates the SDLC-C to the application.

The Create an Application playbook activity opens.
4. In the Enter application details playbook activity:
a. Select the Business app in CMDB that you want linked to your application.
b. (Optional) Add user groups to the Maintained by field to control access to the application.
You can select any group that has at least one user with DevOps roles. When user groups
are added:
▪ Users with DevOps App Owner role or DevOps Administrator role can edit the application.
▪ Users having other DevOps roles can view the application.
▪ Users having DevOps roles, but aren’t part of the groups added can't view the application.
c. Select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
5. In the Associate pipelines playbook activity:
a. Add the orchestration tools whose pipelines you want to associate with the app to the Tools
field.

Note: You can skip this step if you haven't connected to an orchestration tool, or if you
don't want to associate pipelines.
b. Select the pipelines that you want to associate with the app.
c. Select Associate pipelines.

6. In the Assign services to pipeline steps playbook activity:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
a. For each selected pipeline, all steps or stages are imported for the last successful execution.
You can select the following for each pipeline step:

i. Pipeline step type: Select a step type for which you want to assign a service.

Tip: Specify at least the Prod deploy step type for steps that represents the
production deployment to enable DevOps to identify successful pipeline executions
as production deployments.

ii. Service: Select the CMDB application service that the pipeline step maps to.
Application service maps approximately to the environment. If you use the same pipeline
step to deploy to different environments, leave the field empty. Service information
enables DevOps to identify and report on operational metrics such as incidents, outages,
and so on.
b. Select Assign services.

Note: You can skip this step if your pipeline doesn’t have any steps or if you haven't
associated pipelines.

7. In the Associate plans playbook activity:
a. Add the planning tools whose plans you want to associate with the app to the Tools field.

Note: You can skip this step if you haven't connected to a planning tool, or if you don't
want to associate plans.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
b. Select the plans that you want to associate with the app.
c. Select Associate plans.

8. In the Associate repositories playbook activity:
a. Add the coding tools whose repositories you want to associate with the app to the Tools
field.

Note: You can skip this step if you haven't connected to a coding tool, or if you don't
want to associate repositories.
b. Select the repositories that you want to associate with the app.
c. Select Associate repositories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
9. In the Import historical data playbook activity:
a. Select the start and end dates for import. You can import up to 90 days of data.

Note: You can skip this step if you don't want to import any data from the select
pipelines, plans, and repositories.
b. Select Import data.

Note: If your import request could not be completed due to an error, you can select
Restart Import in the corresponding Import Request record to retry the import.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
10. From the Summary page, select View application to review the details of the created
application.

If you skipped associating objects to the application or if you want to associate other objects,
see Associate tool objects to applications - Workspace.

Associate tool objects to applications - Workspace
After creating an application, you can associate plans, repositories, and pipelines with it.
Applications group plans, repositories, and pipelines from DevOps tools, which provides
traceability to user stories, commits, test results, and so on.

Before you begin

Role required: sn_devops.admin or sn_devops.app_owner

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
Procedure
1. Navigate to Workspaces > DevOps Change Workspace > Applications.
2. Select the application.
3. From the application record page, select the tab for the object type that you want to associate.
Object type

Steps

a. Select the Pipelines tab.
b. Select Associate pipelines.
c. From the list of pipelines available in DevOps, select the pipelines
to track and associate with the application.
d. Select Associate pipelines.
e. Assign services to the pipeline steps.
For each selected pipeline, all steps or stages are imported for the
last successful execution. You can select the following for each
pipeline step:
i. Pipeline step type: Select a step type for which you want to as­
sign a service.

Tip: Specify at least the Prod deploy step type for

Pipelines

steps that represents the production deployment to en­
able DevOps to identify successful pipeline executions as
production deployments.

ii. Service: Select the CMDB application service that the pipeline
step maps to.
Application service maps approximately to the environment. If
you use the same pipeline step to deploy to different environ­
ments, leave the field blank. Service information enables Dev­
Ops to identify and report on operational metrics such as inci­
dents, outages, and so on.
f. If you want to import historical data for the pipelines, select the
start and end dates and select Import data.
You can import up to 90 days of data.
g. To import data after associating the pipelines, select the required
pipelines from the Pipelines tab and select Import data. Select
the start and end dates and select Import data.

Note: While associating a pipeline with an app, the pipeline
steps are also fetched during import.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
Object type

Steps

Note: When the property Enable automatic

association of repos to apps on pipeline
execution is enabled, if a repository is already associated to
an application, then the corresponding unassigned pipelines
are automatically assigned to the same app.
a. Select the Plans tab.
b. Select Associate plans.
c. From the list of plans available in DevOps, select the plans to track
and associate with the application.
d. Select Associate plans.
Plans

e. If you want to import historical data for the plans, select the start
and end dates and select Import data.
You can import up to 90 days of data.
f. To import data after associating the plans, select the required
plans from the Plans tab and select Import data. Select the start
and end dates and select Import data.

Note: Historical import of plans data is not supported for
GitHub Issues.
a. Select the Repositories tab.
b. Select Associate repositories.
c. From the list of repositories available in DevOps, select the reposi­
tories to track and associate with the application.
d. Select Associate repositories.
e. If you want to import historical data for the repositories, select the
start and end dates and select Import data.
Repositories

You can import up to 90 days of data.
f. To import data after associating the repositories, select the re­
quired repositories from the Repositories tab and select Import
data. Select the start and end dates and select Import data.

Note: When the property Enable automatic

association of repos to apps on pipeline
execution is enabled, repositories are automatically as­
signed to applications when a pipeline associated with an app
identifies commits of a repository that is not yet associated.
4. Select Save.

Create an application - Classic
Create applications using the Classic UI or the Service Catalog.

Before you begin

Role required: sn_devops.admin or sn_devops.app_owner
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
Procedure
1. You can create applications using the Classic UI, or the Service Catalog.
◦ Classic UI: Navigate to All > DevOps > Apps & Pipelines > Create App (legacy).
◦ Service Catalog: Navigate to All > Service Catalog > Catalog Definitions > Maintatin Items >
Create DevOps Application > Try It.
2. On the Create DevOps Application form, choose whether to create a new application and new
application model or to base the application on an existing application model.
Choice

Actions

Enter a name for the new application.

New application

◦ The system generates a new DevOps application, a new applica­
tion model, and a new SDLC component (SDLC-C) in the CMDB.
◦ The SDLC-C is assigned the same name as the new application.
◦ If the DevOps Config application is installed, then DevOps asso­
ciates the application to the CDM application.
Select the application model from the list.
The system generates a new DevOps application from that applica­
tion model.
◦ The application is given the same name as the application model.

Existing application
model

◦ If an SDLC component exists for the application model, then Dev­
Ops associates the SDLC-C to the new application.
◦ If an SDLC component doesn’t exist for the application model,
then DevOps generates a new SDLC-C with the same name as
the application model.
◦ If DevOps Config is installed, then DevOps creates a CDM appli­
cation and associates the SDLC-C to the application.

3. Select Submit.

What to do next

You can view the list of all the applications from the Apps page in the Classic UI. Navigate to All >
DevOps > Apps & Pipelines > Apps and select your application.
For each application, you can:
• Update details such as Business app, State (Active), and Log Level. Applications marked as
Active are polled daily for updates to associated plans, repositories, and pipelines.
• Control access to the application by adding user groups to the Maintained by field. You can
select any group that has at least one user with DevOps roles.
When user groups are added:
◦ Users with DevOps App Owner role or DevOps Administrator role can edit and associate
objects with the application.
◦ Users having other DevOps roles can view the application.
◦ Users having DevOps roles, but aren’t part of the groups added can't view the application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
Note: DevOps admins can always see and edit everything in DevOps.
• View and associate plans, repositories, pipelines, and artifact repositories. Associate the
appropriate tool objects to the application to ensure that all the DevOps data is grouped and
tracked. For more information, see Associate tool objects to applications – Classic.
• Delete the application record.

Associate tool objects to applications – Classic
After creating an application, you can associate plans, repositories, pipelines, and artifacts with
it.

Before you begin

Role required: sn_devops.admin or sn_devops.app_owner

Procedure
1. Navigate to All > DevOps > Apps & Pipelines > Apps.
2. Select the application.
3. From the application record page, select the related list for the object type that you want to
associate.
Object type

Steps

a. Select the Plans related list.
b. Select Edit.
Plans

c. From the list of plans available in DevOps, select the plans
to track and associate with the application.
d. Select Save.
a. Select the Repositories related list.
b. Select Edit.
c. From the list of repositories available in DevOps, select the
repositories to track and associate with the application.

Repositories

d. Select Save.

Note: When the property Enable automatic

association of repos to apps on
pipeline execution is enabled, repositories are
automatically assigned to applications when a pipeline
associated with an app identifies commits of a reposito­
ry that is not yet associated.
a. Select the Pipelines related list.
b. Select Edit.
Pipelines

c. From the list of pipelines available in DevOps, select the
pipelines to track and associate with the application.
d. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


