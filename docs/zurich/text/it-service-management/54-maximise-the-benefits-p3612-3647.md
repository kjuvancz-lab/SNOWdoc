# Zurich IT Service Management — Maximise the benefits / Task Outage / Add the Outage UI action to another task form +3 more

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3612–3647 of 3857

Sections: Maximise the benefits (p3612); Reference (p3617); Task Outage (p3617); Activate Task-Outage Relationship (p3617); Add the Outage UI action to another task form (p3618); Associate a task with an outage (p3619); Create an outage from a task (p3619); Domain separation and task outage (p3620); Task Intelligence for ITSM (p3621); Explore (p3622); Configure (p3624); Manage (p3625); Monitoring and Analytics (p3644); Reference (p3645)

---

<!-- page 3612 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Open the UpdateFormulasSD list from the list.
3. Select Execute Now.

Note: UpdateFormulasSD is a scheduled job that executes once in 24 hours.
Identify the automation opportunities on ITSM Success Dashboard
Identify the automation opportunities for ITSM Success Dashboard to implement or improve
automation solutions for Virtual Agent (VA).

Before you begin

Role required: sn_sd.success_dashboard_details_read

Procedure
1. Navigate to All > Success Dashboard > Success Dashboard.
2. Select the Performance overview tab.
3. Select the Self solved - percentage indicator.
4. Select Insights (

) on the contextual side panel.

5. Select View in Automation Discovery.
For more information on Automation Discovery, refer Automation Discovery

.

Maximise the benefits of using the ITSM Success Dashboard
indicators
Use the ITSM Success Dashboard indicators to measure the performance of your ITSM
implementation using the Key Performance Indicators (KPIs) defined.

Monitoring the KPIs of your ITSM implementation
View and monitor the ITSM Success Dashboard indicators to measure the performance of your
ITSM implementation using the Key Performance Indicators (KPIs) defined by ServiceNow.
You can access the aggregated KPI data in the ITSM Success Dashboard indicators
by navigating to All> > Success Dashboard > Success Dashboard if you have
the sn_sd.success_dashboard_admin, sn_sd.success_dashboard_read, or
sn_sd.success_dashboard_details_read role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3612


<!-- page 3613 -->
You can monitor data by any of the following time aggregations.
• Monthly: Shows the data aggregated monthly. For counts, this data is the monthly sum of the
daily values. For percentages, this data is the monthly average of the daily percentages.
• Quarterly: Shows the data aggregated quarterly. For counts, this data is the quarterly sum of
the daily values. For percentages, this data is the quarterly average of the daily percentages.
• Yearly: Shows the data aggregated yearly. For counts, this data is the yearly sum of the daily
values. For percentages, this data is the yearly average of the daily percentages.
Once the time aggregation is set, all the score-cards show the data for that period.
For more information on the dashboard components, see HR Success Dashboard indicators
components .
For more information on the KPI definitions and formulas, see HR Success Dashboard indicators
KPI definitions and formulae .

Share the Success Dashboard indicators
Share the Success Dashboard indicators with your respective leadership teams, ITSM or HR to
view the dashboard and measure the performance of their respective implementations.

Before you begin

Role required: sn_sd.success_dashboard_admin, or sn_sd.success_dashboard_read, or
sn_sd.success_dashboard_details_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3613


<!-- page 3614 -->
Procedure
1. Navigate to All> > Success Dashboard > Success Dashboard.
2. Select Share dashboard.
3. In the Share dashboard dialog box, select the recipients with
whom you want to share the dashboard from the Select recipients

list.
4. Optional: Modify the default message that is sent to the recipients in the Message field.
5. Optional: Select the KPI details option to add the KPI information in the message.
6. Select Email to send the email to the selected recipients.
7. Optional: Select Copy URL to copy a link to the dashboard and send it through different
means.

Benchmarks for Success Dashboard indicators
You can view the global benchmark score for the Success Dashboard KPIs and trends along with
comparative insight relative to the customers using Success Dashboard.
You must enable the Benchmarks and allowed to share the organization’s indicators data. For
more information on Success Dashboards KPIs, refer Benchmark KPIs.

Estimated Cost Savings for Success Dashboard indicators
Estimated Cost Savings provides the data to measure the success of the product by calculating
the total amount saved by the agents for Virtual Agent, Knowledge, and Service Catalog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3614


<!-- page 3615 -->
View the total estimated cost saved and its breakdowns to measure benefits from the product
capabilities:
®

• Overall estimated cost saved by specific ServiceNow product capabilities ITSM Success
Dashboard
• Contribution by individual channels like Virtual Agent conversations, Knowledge articles, and
Service Catalog submissions
• Formulas and definitions of the data presented on the dashboard
• Data trending monthly, quarterly, and yearly

Key features
This dashboard provides the following features:
• Centralized view with prescribed KPIs, computing cost savings for the overall cost saved that
includes Self-solved, Call deflection, Structured tickets completed, and Successful predictions
• Monthly, quarterly and yearly aggregation of the KPIs
• Contextual help explaining a selected KPI and its formula
• Ability to configure persona groups, the hourly salary for each persona group, and the time
saving for each persona group per indicator
• Ability to view the cost saved for individual components on the dashboard

Viewing the dashboard
To view the dashboard, you must have the sn_sd.success_dashboard_admin,
sn_sd.success_dashboard_read, or sn_sd.success_dashboard_details_read role. Navigate to All
> Success Dashboard > Success Dashboard.

View metrics for selected period in ITSM Success Dashboard indicators
View the Key Performance Indicators (KPIs) metrics on the ITSM Success Dashboard for a
selected period to analyze the performance.

Before you begin
Role required: user

Procedure
1. Navigate to All > Success Dashboard > Success Dashboard.
2. Select Performance Overview tab.
3. Select Show calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3615


<!-- page 3616 -->
4. Select the year, and the month.
5. Select OK.

Note:
The values of all the KPIs including the contributing KPIs for the selected criteria is
displayed on the dashboard. The data is refreshed for each selected criteria.

Create target for the KPI in the Success Dashboard
Create a target for a KPI to be on par with the benchmark score or the organizational targets.

Before you begin
Role required: user

Procedure
1. Navigate to All > Success Dashboard > Success Dashboard.
2. Select Performance Quality tab.
3. Select Targets.
4. Select Create Target (+) icon.

5. On the form, fill in the fields.
KPI targets
Field

Description

New value

Option to enter the target value for your KPI.

Target start date

Option to select the target start date.

Target review date

Option to select the date to review the target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3616


<!-- page 3617 -->
6. Select Save.

Note: Select Refresh to view the target set on the trendline.

ITSM Success Dashboard indicators reference
Reference topics provide additional information about components installed with ServiceNow
ITSM Success Dashboard indicators.

Success Dashboard indicators user roles and responsibilities
Leaders and process owners of both ITSM and HR can configure and use the Success
Dashboard indicators to measure the success of the implementation.
The Success Dashboard indicators roles and the tasks are uniform across Service groups; ITSM
or HR. The following are the user roles and responsibilities:

User role and responsibilities

Required role

As a dashboard admin, you can:

sn_sd.success_dashboard_admin

• Configure the dashboard settings
• Manage KPIs by adding or removing a
contributing indicator.
• Share the dashboard
As an IT leader or process owner, you can

sn_sd.success_dashboard_read

• View the dashboard and KPIs
• View the breakdowns at a high level
• Share the dashboard
As a process owner, you can

sn_sd.success_dashboard_details_read

• View the dashboard and KPIs
• View the breakdowns at record-level
• Share the dashboard

Task Outage
CI unavailability, or outage, is the actual down time of a CI. Whenever there is an outage for any
of the CI items, the outage information is stored in the Outage [cmdb_ci_outage] table. The TaskOutage table [task_outage] maintains the mapping between the Task [task] table and the Outage
[cmdb_ci_outage] table.

Activate Task-Outage Relationship
Activate the Task-Outage Relationship plugin (com.snc.task_outage) to track outage duration.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3617


<!-- page 3618 -->
About this task

The Task-Outage Relationship plugin creates a many-to-many relationship between the Task
[task] table and the Outage [cmdb_ci_outage] table.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)

Components installed with Task-Outage Relationship
The Task Outage table is installed with activation of the Task-Outage Relationship plugin
(com.snc.task_outage).

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Table installed
Table

Description

Task Outage

A many-to-many table that stores references to the
Task [task] and Outage [cmdb_ci_outage] tables.

[task_outage]

Add the Outage UI action to another task form
By default, the Create Outage UI action is available on the incident and problem forms,
and can be added to other task forms. For new instances from Jakarta only, this feature is also
available on the change request form.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > UI Actions.
2. Select the UI Action Create Outage on the Task [task] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3618


<!-- page 3619 -->
By default, the condition is:
current.getRecordClassName() == 'incident' ||
current.getRecordClassName() == 'problem'
3. Modify the Conditions field as described in the following examples.
Option

Description

To add this UI action to the Ticket [ticket] ta­
ble

current.getRecordClassName()
== 'incident' ||
current.getRecordClassName()
== 'problem' ||
current.getRecordClassName() ==
'ticket'

To use the UI action on only the Problem
[problem] table

current.getRecordClassName() ==
'problem'

4. Click Update.

Associate a task with an outage
You can associate multiple tasks with a defined outage.

Before you begin
Role required: itil

About this task

The administrator must configure the Outage form to include the Tasks related list.

Procedure
1. Navigate to the outage record.
2. Click Edit in the Tasks related list.
All incident and problem tasks are listed. For new instances in Jakarta, change requests are
also listed.
3. Use the filter or the search field above the Collection box to locate the task to associate to the
outage.
Example
For example, filter for the same configuration item or business service, or look for tasks created
on the same day as the outage.
4. Move the associated tasks to the Task List box on the right.
5. Click Save.

Create an outage from a task
Create an outage from a task record to understand the down time of a configuration item.

Before you begin

Role required: itil or admin

About this task

The Create Outage UI action is added for the Task [task] table. When the Task-Outage
Relationship plugin (com.snc.task_outage) is activated, the Outages related list is added to the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3619


<!-- page 3620 -->
related list of the task forms such as Incident, Problem, or Change. If you have the admin role,
you can assign multiple tasks to an outage by configuring the Tasks related list to appear on the
Outages form.

Procedure
1. Open the task record.
2. Right-click the header form and select Create Outage.
3. On the form, fill in the fields.

Field

Entry

Number

Unique number that identifies the outage.

Configuration Look up icon
Item

to select configuration item from the list.

Type

Type of the outage.

Begin

The date and time when the outage starts. You can click the Begin Outage
Now related link to populate the field with the current date and time.

End

The date and time when the outage ends. When the outage ends, open the
record and enter the date and time manually. You can also click the End
Outage Now related link to populate the field with the current date and time.

Duration

Duration of the outage in days and hours.

Task number

The parent task record number from which you have created the outage.

Short
description

A brief description of the outage.

4. Click Submit.

Domain separation and task outage
Domain separation is supported in task outage. Domain separation enables you to separate data,
processes, and administrative tasks into logical groupings called domains. You can then control
several aspects of this separation, including which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3620


<!-- page 3621 -->
Task Outage overview
Task-Outage Relationship [cmdb_ci_outage] is domain separated. Outages are now data
separated, meaning they can be exposed to the appropriate personas without risk of data
exposure. Fulfillers can view any Task-Outage Relationship records regardless of the domain
that the records belong to. The Task-Outage Relationship table is installed when administrator
activates the optional Task-Outage Relationship plugin.
Related topics
Domain separation for service providers

Task Intelligence for ITSM
®

ServiceNow Task Intelligence for ITSM uses machine learning to set up, deploy, and track
solution-based models to achieve important business outcomes.

Get started

Explore

Configure

Manage

Learn about Task
Intelligence for ITSM
concepts and features.

Configure environment,
tools, and user access.

Learn how you can use
Task Intelligence for ITSM.

Monitor

Reference

.

Learn about monitoring
and analyzing
Task Intelligence
for ITSM models

Get details about
Task Intelligence for
ITSM components,
such as roles and
dependent applications.

Troubleshoot and get help
• Ask or answer questions in the Task Intelligence for ITSM community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3621


<!-- page 3622 -->
Exploring Task Intelligence for ITSM
With Task Intelligence for ITSM, you can set up and deploy machine learning models to predict
field-level recommendations and identify similar records for incidents, which will appear as
actionable recommendations in the side panel.

Task Intelligence for ITSM overview
Task Intelligence for ITSM enables you to create, configure, and deploy solution models to
predict incident fields information and similar records for incidents.
Task Intelligence for ITSM provides the following types of prediction models:
• Incident Categorization model - Predicts incident field information to categorize incidents and
applications such as Service Operations Workspace. For more information, see Create an
incident prediction model in Task Intelligence for ITSM.
• Similar Incidents model: Predicts similar incidents by recognizing similarities between two
types of tables by comparing their fields.
• Similar open Change Requests for Incidents model: Predicts change requests by recognizing
the similarities between the incident table and change request table, by comparing their fields.
• Similar open Problems for Incidents model: Predicts problems by recognizing the similarities
between the incident table and problem table, by comparing their fields.

Note: To know more about similarity based models, see Create a similar records
prediction model in Task Intelligence for ITSM
The prediction models enable the agents to focus more on incident resolution reducing the time
spent filling in field information or searching for similar records. These models can help lower the
meantime to resolve (MTTR) of tasks. You can also track and monitor how the solution models are
performing and modify the parameters of the model accordingly.
Task Intelligence for ITSM enables the agents to do the following:
• Solve issues faster for better service and experiences
• Focus on meaningful, high-value work
• Reduce error rates and drive down costs
• Improve time to value with intuitive experiences
The Admin Console for Task Intelligence for ITSM provides the admin a no-code experience for
deploying Task Intelligence solution models. Using machine-learning models, the application
enables you to automate and optimize incident prediction and incident categorizations. The
models use statistics to predict future data by training with your past data.
Task Intelligence for ITSM supports Utah patch 5 and later releases.

Task Intelligence for ITSM workflow
The workflow for Task Intelligence for ITSM includes the following:
1. Task Intelligence for ITSM: Use this application to set up and configure an incident prediction
model to predict and recommend incident fields on the incident form. To configure and use a
model, you must do the following:
a. Set up an incident prediction model: Set up a model using the default template available
with the base system.
b. Train your model: Train the model with your data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3622


<!-- page 3623 -->
c. Set your preferences: Set the prediction preferences and behavior for the model.
d. Deploy the model: Deploy the model to predict incident field information.
e. Monitor and analysis: Monitor how the model is performing and analyze the performance
result data.
f. Edit your model: Based on the analysis of the performance results, edit your model and
deploy it again.
2. Go to the Advanced Recommended actions for ITSM application configuration to configure
where, how, and when the model must be implemented in the Service Operations Workspace
application. For more information, see Recommended Actions for ITSM in Service Operations
Workspace.
3. Get incident predictions and recommendations in the incident form of Service Operations
Workspace.

Task Intelligence for ITSM benefits
Task Intelligence for ITSM provides the following benefits:
Feature Benefits based on role
Benefit

Feature

User

Create and deploy solutionbased incident prediction
models to predict incidents
fields for new IT service
incidents. This helps in
incident categorization

Create an incident prediction
model in Task Intelligence for
ITSM

Administrator

Create and deploy similaritybased model to predict
similar records for IT service
incidents which appear as
actionable recommendations.

Create a similar records
prediction model in Task
Intelligence for ITSM

Administrator

Export an incident prediction
model in Task Intelligence
for ITSM to another instance
so you can use the model in
the other instance without
recreating the model from
scratch.

Export an incident prediction
model

Administrator

Monitor the performance
results of the model.

Monitoring and Analytics for
Task Intelligence for ITSM

Analyst

Edit the incident prediction
model based on the
performance results and
deploy again.

Edit an incident prediction
model in Task Intelligence for
ITSM

Administrator

Task Intelligence for ITSM Admin Console
Admin Console for Task Intelligence for ITSM provides you with an interface to create, train,
access, set preferences, deploy, and monitor predictive models used for incident predictions
and similar patterns recognition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3623


<!-- page 3624 -->
®

ServiceNow Task Intelligence for ITSM admin console supports the following features:
• Train the required model with your data, and deploy it to predict incident fields or identify
similar records for incidents, which will appear as actionable recommendations in the side
panel.
• Use the incident field information to help categorize incidents or recognize similar records and
reduce the incident handle time for agents.
• Track and monitor the performance of the deployed model.
• Edit the deployed model based on its performance results, then train and deploy the model
again.

Configuring Task Intelligence for ITSM
Configure Task Intelligence for ITSM so agents can use the application to get the field level
predictions and similar records on incidents as actionable recommendations in Service
Operations Workspace.

Configuration overview
Configuring Task Intelligence for ITSM involves installing the application from ServiceNow
Store.

®

Install Task Intelligence for ITSM
You can install the Task Intelligence for ITSM application (com.snc.itsm_ml_task) if you have the
®
admin role. The application installs related ServiceNow Store applications and plugins if they
aren't already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Task Intelligence for ITSM
application listing in the ServiceNow Store for
information on dependencies, licensing and subscription requirements, and release
compatibility.
• Installing Task Intelligence for ITSM requires the ITSM Pro Package subscription.
Role required: admin

About this task

The following items are installed with Task Intelligence for ITSM:
• Store applications
• Roles
• Tables
For more information on what is installed, see Components installed with Task Intelligence for
ITSM.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Task Intelligence for ITSM application (com.snc.itsm_ml_task) using the filter criteria
and search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3624


<!-- page 3625 -->
You can search for the application by its name or ID. If you can't find the application, you might
have to request it from the ServiceNow Store.
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

Managing Task Intelligence for ITSM models
Use the machine learning capabilities of Task Intelligence for ITSM to predict field level
recommendations and similar records on the incidents which appear as actionable
recommendations in the side panel.
Managing Task Intelligence for ITSM involves the following tasks.

Creating a prediction model
You can create and deploy solution-based prediction models to predict incidents fields and
actionable real-time recommendations based on the similarities between two types of tables by
comparing their fields for IT service incidents.
Task Intelligence for ITSM provides the following types of prediction models:
• Incident Categorization: This model predicts incidents fields for new IT service incidents.
• Similar Incidents: The model looks at the prediction fields of a prediction table and the training
fields of a training table. It uses the similarities in these fields to predict similar records for
incidents.
• Major Incident Recommendation: The model recommends similar active major incidents which
the current incident can be linked to, and recommends you propose similar incidents as a
major incident.
• Similar open Change Requests for Incident: The model looks at the incident fields of an
incident table and the change request fields of a change request table. It uses the similarities
in these fields to predict similar change requests for incidents.
• Similar open Problems for Incident: The model looks at the incident fields of an incident table
and the problem fields of a problem table. It uses the similarities in these fields to predict
similar problems for incidents.
Creating a model involves the following steps:
• Set up a model: Set up a prediction model using a template available in the base system.
• Define a model: Specify the purpose of the model by selecting the training table and
prediction table which will be used for training the model further.
• Train a model: Train a model to make predictions using your data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3625


<!-- page 3626 -->
• Assess your model: Assess the results from the model training, view sample results for the
predictions, and select the prediction preferences and behavior for your model.
• Deploy your model: Deploy your model to predict incident fields on incident forms.

Editing a prediction model
Edit a prediction model that has already been trained and deployed. Change the model
configurations, view the updated training results, and redeploy the model.

Exporting a prediction model
Export a prediction model in Task Intelligence for ITSM to another instance so you can use the
model in the other instance without recreating the model from scratch.

Create an incident prediction model in Task Intelligence for ITSM
Create and deploy solution-based incident categorization prediction models to predict incidents
fields for new IT service incidents.
With an incident field prediction model, you can choose what the model uses to predict
information. If you're an admin, you can decide when you want it to make predictions, what
you want it to predict, and what data to use for those predictions. You can select the following
information:
• Output fields: The fields that the model predicts
• Input fields: The fields used to predict the output fields
• Conditions that choose the set of records to train the model
• The prediction behavior: auto-fill, recommend, or Monitor only (run in the background) or turn
off predictions.
After customizing your model, you can view the test results and deploy the model.
The model uses previous case records to train. You can see how the model would have predicted
fields for past cases, providing you with an estimate of how the model performs when deployed.

Base system model
Task Intelligence for ITSM comes with a base system which has following models based on
similarity:
• Similar Incidents: For predicting the similar incidents for incidents table.
• Similar open Change Requests for Incident: For predicting the similar change requests for
incident table.
• Similar open Problems for Incident: For predicting the similar problems for incident table.
• Major Incident Recommendation: For recommending similar active major incidents which the
current incident can be linked to, and for recommending that you propose similar incidents as
a major incident.
When you install the Task Intelligence for ITSM plugin in your production instance, the model is
installed and is trained on your data automatically. This model is auto-deployed. The model starts
predicting data in the background and doesn’t impact the Incident form.
The prediction data is then stored in the prediction tables. You can navigate to All > Task
Intelligence for ITSM > Monitoring to view the performance results of this model. Based on
these results, you can edit the model to show the predictions in Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3626


<!-- page 3627 -->
You can configure the model to use the predictions to either auto-fill or give recommendations for
the output fields on an incident form.
To edit and redeploy the base system model, you can navigate to the Setup page. From the
model list, select the required similarity model and edit the model. For more information on how
to edit the model, see Edit an incident prediction model in Task Intelligence for ITSM.
This model is linked with a base system rule in the Recommended Actions for ITSM
configuration. An admin isn't required to go to the Recommended Actions for ITSM application to
configure any rules for this model.
To set up a new model using a template, see Set up your incident prediction model.
Set up your incident prediction model
Use Task Intelligence for ITSM to set up your incident prediction model and train it with your data
to make predictions. Access your model's performance results, set the prediction preferences
and behavior, and deploy your model.

Before you begin

Role required: sn_ti_admin.tia_admin or sn_itsm_ml_task.ti_admin

Procedure
1. Navigate to All > Task Intelligence for ITSM > Setup to access the Task Intelligence Admin
Console.
2. On the Predict incident field choices to reduce handle time card, select Set up model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3627


<!-- page 3628 -->
This action opens the model and displays the introductory pages. Each page in the model asks
you questions and helps you select the information needed to build an effective model.
Train your model
Train your incident prediction model with data to predict the incident fields.

Before you begin

You can set up a task intelligence model or use the base system template that is shipped with
Task Intelligence for ITSM. For more information on setting up a new model, see Set up your
incident prediction model.
Role required: sn_ti_admin.tia_admin or admin

About this task

When you train a machine learning model, the model learns patterns from past data to make
predictions about new data. Models are trained using large amounts of data so that they can
learn patterns. A large data set makes the learned patterns statistically significant. As you answer
questions about your information systems, business process, and service operations, the system
actively learns from your responses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3628


<!-- page 3629 -->
You can select the table and fields that you want to predict, such as the Output table and Output
fields. Also, you can select the tables and fields that you want the model to use to predict the
incident information, such as the Input table and Input fields.
Select this information to tell the model what to look for during training.

Note: You can either use the recommended settings or customize the settings to fit your
needs.

Procedure
1. Enter a name for the model.
2. Select the Output table you want the model to predict.
3. Select Conditions to choose a set of records to use for training.
The selected conditions determine how the model is trained. These conditions provide the
requirements that a record must meet to make the predictions.
4. Select the Output fields you want the model to predict.

5. Select the Input table in the training data that you want the model to use to make predictions.
6. Select the Input fields that you want the model to use to make predictions.

7. Review the resulting Number of records in the training data based on the selected conditions.
The records that are counted include the number of fields, parameters, and data that the
model uses to train. Based on the provided information and the set conditions, the number
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3629


<!-- page 3630 -->
or records gets updated automatically. The model needs a minimum of 10,000 records
for effective training. If this minimum number hasn't been reached, try selecting different
conditions. You can also click the refresh icon (

) to refresh the number.

8. Select Launch training.

Result

If you’re training the model on a large amount of data, training can take some time. You can
request that the system sends you an email when the training is done.
Assess your model
Assess the results from the model training and view sample results for the predicted fields.
Reviewing the results gives you a preview of how your model will perform after being deployed.
Based on the sample results, select the prediction preference and behavior for each field.

Before you begin

You must train your model with various data. For more information on how to train your model,
see Train your model.
Role required: sn_ti_admin.tia_admin or admin

About this task

The model has flexible options. Based on the sensitivity and requirements of each incident field
on the Incident form, you can do the following actions:
• Auto-fill the predicted value in the incident field.
• Recommend the predicted value in the incident field.
• Monitor and run the prediction model for the incident field in the background only.
• Turn off the predictions for the incident field.

Procedure
1. View the number value in the Estimated number of autofilled fields section.
The number helps you predict how your model performs when deployed.
2. Select View sample results to see the sample results for each predicted field.
3. Select the Comparison button to see the details for a selected result.
4. Choose one of the following options from the Prediction preference drop-down list for each
field.
Options

Description

Autofill

Adds the best predicted value to the field on
the Incident form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3630


<!-- page 3631 -->
Options

Description

Recommendations

Shows the top recommended values for a
field. Agents can choose to accept or reject
the recommendation. You can configure the
number of recommended values using Ad­
vanced Recommended actions for ITSM. For
more information, see Recommended Ac­
tions for ITSM in Service Operations Work­
space.

Turn off predictions

Stops the model from performing any predic­
tions.

Monitor only

Monitors and runs the model in the back­
ground only without making any predictions
on the incident form.

5. Select Save & continue.
Deploy your model
Deploy the incident prediction model to predict the incident field information.

Before you begin

You must access the model and set the preferences for your model. For more information on
setting model preferences, see Assess your model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3631


<!-- page 3632 -->
Role required: sn_ti_admin.tia_admin or admin

Procedure
1. Review your choices from the previous pages and information about how the model was
trained.

2. Select Deploy to deploy the model.

Result

A pop-up appears confirming that your model was deployed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3632


<!-- page 3633 -->
What to do next

Select Configure Recommended Actions to configure the implementation of the incident
prediction model in the incident fields. For more information, see Recommended Actions for
ITSM in Service Operations Workspace.

Create a similar records prediction model in Task Intelligence for ITSM
Set up a training model to help it recognize similarities between two types of tables by comparing
their fields.
The model looks at the prediction fields of a prediction table and the training fields of a training
table. It uses the similarities in these fields to predict similar records.
For example, the prediction fields might be the short description and description of an incident
record, while the training fields could be the short description and title of a knowledge base (KB)
article. The model compares these fields to find KB articles that are similar to the current incident.
This makes it easier for agents to find relevant information and resolve incidents quickly.
If you're an admin, you can decide when you want it to make predictions, what you want it to
predict, and what data to use for those predictions.
You can select the following information:
• Prediction fields that are used to predict similar records for the model.
• Training fields that have the similarities to the prediction fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3633


<!-- page 3634 -->
• Conditions used to choose the set of records to train the model.
• The prediction behavior: Recommendation, Monitor only (run in the background) or turn off
predictions.
After customizing your model, you can view the test results and deploy the model.
The model uses previous case records to train. You can see how the model would have predicted
similar records for past cases, providing you with an estimate of how the model performs when
deployed.

Base system model
Task Intelligence for ITSM comes with a base system which has following models based on
similarity:
• Similar Incidents: For predicting the similar incidents for incidents table.
• Similar open Change Requests for Incident: For predicting the similar change requests for
incident table.
• Similar open Problems for Incident: For predicting the similar problems for incident table.
• Major Incident Recommendation: For recommending similar active major incidents which the
current incident can be linked to, and for recommending that you propose similar incidents as
a major incident.
When you install the Task Intelligence for ITSM plugin in your production instance, the model is
installed and is trained on your data automatically. This model is auto-deployed. The model starts
predicting data in the background and doesn’t impact the Incident form.

Note: As an admin user, you should receive an email within four weeks with a link to your
analytics dashboard.
The prediction data is then stored in the prediction tables. You can navigate to All > Task
Intelligence for ITSM > Monitoring to view the performance results of this model. Based on
these results, you can edit the model to show the predictions in Service Operations Workspace.
To edit and redeploy the base system model, you can navigate to the Setup page. From the
model list, select the required similarity model(For example, Similar Incidents) and edit the
model. For more information on how to edit the model, see Edit an incident prediction model in
Task Intelligence for ITSM.
This model is linked with a base system rule in the Recommended Actions for ITSM
configuration. An admin isn't required to go to the Recommended Actions for ITSM application to
configure any rules for this model.
To set up a new model using a template, see Set up similar records prediction model.
Set up similar records prediction model
Use Task Intelligence for ITSM to set up similar records prediction model, define the purpose
of the model, and train it with your data to make predictions. Access your model's performance
results, set the prediction preferences and behavior, and deploy your model.

Before you begin

Role required: sn_ti_admin.tia_admin or sn_itsm_ml_task.ti_admin

About this task

You can configure any of the following similarity-based models:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3634


<!-- page 3635 -->
• Similar Incidents: For predicting the similar incidents for incidents table.
• Similar open Change Requests for Incident: For predicting the similar change requests for
incident table.
• Similar open Problems for Incident: For predicting the similar problems for incident table.
• Major Incident Recommendation: For recommending similar active major incidents which the
current incident can be linked to, and for recommending that you propose similar incidents as
a major incident.

Procedure
1. Navigate to All > Task Intelligence for ITSM > Setup to access the Task Intelligence Admin
Console.
2. On the Surface similar records to reduce resolution time card, select Set up model.

This action opens the model and displays the introductory pages. Each page in the model asks
you questions and helps you select the information needed to build an effective model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3635


<!-- page 3636 -->
Define the purpose
Specify the purpose of the similar records model. You can select the prediction table for which
predictions will be generated. Then, select the training table (Incidents, Problems, or Change
Requests) which will appear as predictions based on similarities between their selected fields.

Before you begin

Role required: admin

Procedure
1. Select the prediction table.
2. Select any of the following training tables.
◦ Incident
◦ Problem
◦ Change request

3. Select Save & continue.

Result

Now that the purpose of the model is defined, you can start training it. For more information, see
Train the similarity model.
Train the similarity model
Train your similar record models with training data to predict the similar records by recognizing
similarities between fields of Incident table and training tables.

Before you begin

You can set up a task intelligence model or use the base system template that is shipped with
Task Intelligence for ITSM. For more information on setting up a new model, see Set up similar
records prediction model
Role required: sn_ti_admin.tia_admin or sn_itsm_ml_task.ti_admin

About this task

When you train a machine learning model, the model looks at the prediction fields of a prediction
table and the training fields of a training table. It uses the similarities in these fields to predict
similar records.
You can select the table and fields that you want to predict, such as the Prediction table and
Predictions fields. Also, you can select the tables and fields that you want the model to use to
predict the similar records, such as the Training table and Training fields. Select this information
to tell the model what to look for during training .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3636


<!-- page 3637 -->
Note: You can either use the recommended settings or customize the settings to fit your
needs.

Procedure
1. Enter a name for the model.
2. Select the Prediction table you want the model to predict.
3. Select Conditions to choose a set of records to use for training.
The selected conditions determine how the model is trained. These conditions provide the
requirements that a record must meet to make the predictions.
4. Select the Prediction fields which will be used to predict similar records.

5. Choose the set of records used for training the similar records model by selecting the
conditions on the training tables and training fields for training the similarity models.

Note: This field appears only when you select Problem or Change Requests training

table in the Define your Purpose page. If you select the prediction table and training
table as Incident, the conditions selected in Step 3 is applied on both prediction and
training tables (In this case both are incident tables) to generate training records that are
used for prediction.
6. Select the Training table in the training data that you want the model to use to make
predictions.
7. Select the Training fields that you want the model to use to make predictions.
8. Select the Language in which training takes place.
9. Select the Update Frequency to decide how frequently the training should occur.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3637


<!-- page 3638 -->
10. Review the resulting Number of records in the training data based on the selected conditions.
The records that are counted include the number of fields, parameters, and data that
the model uses to train. Based on the provided information and the set conditions,
the number or records gets updated automatically. The model needs a minimum of
10,000 records for effective training. If this minimum number hasn't been reached, try
selecting different conditions. You can also click the refresh icon (

) to refresh the

number.
11. Set a Training Frequencyto define how often the model automatically retrains.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3638


<!-- page 3639 -->
12. Select Launch training.

Result

If you’re training the model on a large amount of data, training can take some time. You can
request that the system sends you an email when the training is done.
Assess the similarity model
Assess the results from the model training and view sample results to see the similar records
predicted for incidents. Reviewing the results gives you a preview of how your model will perform
after being deployed. Based on the sample results, select the prediction preference.

Before you begin

You must train your model with various data. For more information on how to train your model,
see Train the similarity model
Role required: sn_ti_admin.tia_admin or admin

About this task

The model has flexible options. Based on the sensitivity and requirements of each incident
record, you can do the following actions:
• Recommend the similar records for the incidents.
• Monitor and run the prediction model for the incidents in the background only.
• Turn off the predictions for the incidents.

Procedure
1. View the number value in the Estimated number of records used for training section.
The number helps you predict how your model performs when deployed.
2. Select View sample results to see the similar records predicted for each incident.
3. Choose one of the following options from the Prediction preference drop-down list for each
field.
Options

Description

Recommendations

hows the top recommendations based on the
similarity patterns. Agents can choose to ac­
cept or reject the recommendation. You can
configure the number of recommended val­
ues using Advanced Recommended actions
for ITSM. For more information, see Recom­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3639


<!-- page 3640 -->
Options

Description

mended Actions for ITSM in Service Opera­
tions Workspace.
Turn off predictions

Stops the model from performing any predic­
tions.

Monitor only

Monitors and runs the model in the back­
ground only without making any predictions
on the incident form.

4. Select Save & continue.
Deploy the similarity model
Deploy the Similar incidents model to predict the similar records for the incidents.

Before you begin

You must access the model and set the preferences for your model. For more information on
setting model preferences, see Assess the similarity model.
Role required: sn_ti_admin.tia_admin or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3640


<!-- page 3641 -->
Procedure
1. Review your choices from the previous pages and information about how the model was
trained.

2. Select Deploy to deploy the model.

Result

A pop-up appears confirming that your model was deployed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3641


<!-- page 3642 -->
Edit an incident prediction model in Task Intelligence for ITSM
Edit either the Similar Incidents or Incident Categorization model that has already been trained
and deployed. Change the model configurations, view the updated training results, and redeploy
the model.

Before you begin

A prediction model must already be created, trained, and deployed. For more information on how
to create a model, see Managing Task Intelligence for ITSM models.
Role required: sn_ti_admin.tia_admin or sn_itsm_ml_task.ti_admin

About this task

You have two options for editing your model: view the current training results or retrain the model.
The first time you edit a model, a pop-up appears to ask you which option you would like to take.

Resetting your prediction preferences enables you to change how visible the predictions are for
agents. Retraining your model enables you to select new data for training, which changes the
prediction capabilities of the model.
While you can retest your prediction model, it doesn’t change the prediction skills. Edit your
prediction model to reset your prediction preferences. Edit your prediction models to retrain the
models with new data, predict different fields, or change the prediction preferences.
Changes aren’t saved until you redeploy the model. The updated model replaces the previous
model.

Procedure
1. Navigate to All > Task Intelligence for ITSM > Setup.
2. From the Models list, select the menu (
Edit Model.

) icon of the model you want to edit, and then select

3. Modify the fields to get the required predictions.
4. Select Launch training.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3642


<!-- page 3643 -->
A warning message appears.

5. Select Retrain.
The new training results page loads.
6. Select the Compare models results button to show both the previous results and the new
results.
7. Select Save & continue.
8. Set your preferences for displaying the predictions or running them in the background.
9. Select Save & continue.
The Deploy your model screen loads and shows the changes that you made indicated in
yellow. If you don't want to deploy the changes, select Discard changes.

10. Review the model and select Redeploy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3643


<!-- page 3644 -->
Result

Your updated model is deployed.

Export an incident prediction model
Export either the Similar Incidents or Incident Categorization model model in Task Intelligence for
ITSM to another instance so you can use the model in the other instance without recreating the
model from scratch.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Task Intelligence for ITSM > Setup.
2. In the Models list, select the menu ( ) icon of the model you want to export, and then select
Export model.
A new tab opens with authentication steps.
3. Select Allow.

Result

The XML file of your model downloads to your browser.

What to do next

You can use the XML file to transfer the model to another instance using update sets. For more
information update sets, see System update sets .

Monitoring and Analytics for Task Intelligence for ITSM
You can view the impacts of your trained incident prediction models. Monitor model performance
overtime, track business value, and view what predictions your agents did and didn't use.
To access the Task Intelligence Analytics dashboard, navigate to All > Task Intelligence for ITSM
> Monitoring.
Use the Model drop-down list to select a model. Select Apply to open the model's configuration.
The Analytics dashboard contains the following sections:
• Get an overview
• See how your trained model is doing

Get an overview
The Analytics dashboard uses visuals to represent the performance overview of the model.
Number of predictions
The line graph shows the number of fields that the Incident categorization and
Similar Incidents models predicted over time. As the model continues to learn, it can
increase the number of predictions.
Incident Mean time to resolve (MTTR)
The line graph shows the average amount of time that it takes to resolve incidents
over time. As the model makes more predictions, the MTTR must decrease as the
predictions help agents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3644


<!-- page 3645 -->
See how your trained model is doing
The Analytics dashboard uses visuals to track how the model used predictions over time.
Predictions agents accepted
The widget shows the correct predictions that your agents used during case
management over time. If this number is trending downward, you can look to retrain
your model. For more information on editing a trained model, see Edit an incident
prediction model in Task Intelligence for ITSM.
Predictions agents replaced
The widget shows the incorrect predictions that your agents removed during case
management over time. If this number is trending upward, you can look to retrain
your model. For more information on editing a trained model, see Edit an incident
prediction model in Task Intelligence for ITSM.
Predictions the model skipped
The widget shows the number of predictions that were skipped by the model based
on the model, output field, and date range selection. For more information on
editing a trained model, see Edit an incident prediction model in Task Intelligence
for ITSM.
Performance overview
The performance overview table shows the mean percentage values for correct,
incorrect, and skipped data for each combination of model and output field.
Track usage of individual field predictions over time
The bar chart tracks the usage of the individual field predictions over time. Each
bar in the chart shows three components, which are the predictions accepted,
the predictions replaced, and the predictions that were skipped by the model.
A red outline around each bar represents the total number of records for each
day. To compare specific components, navigate to the legends and deselect the
ones that you don't want to include so that you can have a more customized and
focused comparison based on user preferences. By default, the view displays the
number of predictions. However, you have the option to switch to the percentage
view by toggling the Show Percentage option. In the percentage view, you can also
access the information about the baseline that was replaced and accepted, which
is derived from the training data. This option enables you to gain insights into the
performance of the model with the baseline.

Task Intelligence for ITSM reference
Reference topics provide additional information about components installed with Task
Intelligence for ITSM.

Components installed with Task Intelligence for ITSM
Several types of components are installed with the activation of the Task Intelligence for ITSM
application plugin (com.snc.itsm_ml_task), including tables, user roles, and ServiceNow store
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3645


<!-- page 3646 -->
Roles installed
Role description
Role title [name]

Description

Admin user with rights to all actions
in the application. Creates, edits,
and monitors all Task Intelligence
[sn_itsm_ml_task.ti_admin]
models.
Task Intelligence Admin

Views and monitors Task
Intelligence models through the
[sn_itsm_ml_task.ti_analyst] Analytics dashboard.
Task Intelligence Analyst

Task Intelligence User
[sn_itsm_ml_task.ti_user]

View-only access to the ITSM Task
Intelligence Monitoring Dashboard.
No ability to perform administrative
actions, modify configurations, or
manage models.

Contains roles

• sn_incident_read
• sn_ti_admin.tia_admin

• sn_incident_read
• sn_ti_admin.tia_analyst

• sn_incident_read
• sn_ti_admin.tia_user

Tables installed
Table description
Description

Table

Task Intelligence Admin Template
[sn_ti_admin_template]
Task Intelligence Admin Help
[sn_ti_admin_help]
Task Intelligence Admin Feature
[sn_ti_admin_feature]
Task Intelligence Admin Statistic

Contains template records, which are inserted by
other applications, that specify the defaults for model
training settings, implementation plans, and UI display
information.
Contains help records that are displayed in a
collapsible panel inside the application. Contents are
filtered by the chosen template and setup page.
High-level business unit feature for incident
categorization and incident field detection.
Groups statistic cards to a template and UI page.

[sn_ti_admin_statistic]
Task Intelligence Admin Page
[sn_ti_admin_page]
Task Intelligence
Admin Statistic Card

Records of URL page fragments that are referenced in
the help table.
Stores the statistic card’s three-line scriptable content
and its card description used in a card flip or tooltip.

[sn_ti_admin_statistic_card]
Task Intelligence Admin Solution
[sn_ti_admin_solution]

Stores how the state of each ML model set progresses
for the solution types, such as incident categorization
and classification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3646


<!-- page 3647 -->
Table description (continued)
Description

Table

Task Intelligence Admin
Model Prediction

Stores the model test prediction for prebuilt models.

[sn_ti_admin_model_prediction]
Task Intelligence Admin Tag
[sn_ti_admin_tag]

Contains the tags provided by other business units
and a created solution by an admin. Tags help
business unit partners search the models.

Contains implementation options specified by
business units, which are listed as options for a
chosen template. When an Admin Console user role
[sn_ti_admin_implementation_detail] chooses an implementation plan, the business unit
decides how to display model results for end users.
Task Intelligence Admin
Implementation Detail

Task Intelligence Admin Model
[sn_ti_admin_model]
Task Intelligence Admin Context
[sn_ti_admin_context]
Task Intelligence Admin
Application Page

Stores the snapshot configuration view of the
production and staging models for a solution.
Contains context-specific data from monitoring graphs
that show different model performance.
Contains data related to the application page, fields,
and forms.

[sn_ti_admin_application_page]
Task Intelligence
Admin Landing Card
[sn_ti_admin_landing_card]
Task Intelligence
Admin Landing Page

Contains data related to the information cards
displayed on the landing page of Task Intelligence for
ITSM.
Contains information related to the landing page of the
admin console.

[sn_ti_admin_landing_page]

Store applications installed
Store application description
Store application

Advanced Recommended
actions for ITSM
[com.snc.uib.sow_itsm_ra_advanced]
Task Intelligence Admin Console
[com.sn_ti_admin]

Description

Enables you to configure and display relevant actions
to agents based on record context. Agents can follow
the actions to help customers and resolve issues.
Enables you to setup, manage, and monitor incident
prediction models that help categorize incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3647


