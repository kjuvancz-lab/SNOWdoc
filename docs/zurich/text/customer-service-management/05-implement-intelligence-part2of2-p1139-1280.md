# Zurich Customer Service Management — Implement Intelligence

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1139–1280 of 2452 | Part 2 of 2

Sections: Implement Intelligence (p989); Set up self-service (p1182)

---

<!-- page 1139 -->
Test your model
Choose the cases to use to test the model.

Selecting this information tells the model which records to use for testing. When the model is
deployed, it predicts the language on all records in the table that match the selected conditions.
1. Use conditions to choose a set of records for testing.
2. Select Launch testing.

Assess your model
Assess the results from the testing and view sample results for past cases.

Reviewing the results gives you a preview of how your model will perform after being deployed.
1. Select View all test results to see a list of results.
2. Select Save & continue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1139


<!-- page 1140 -->
Set your preferences
Tell the model how you want to use the language predictions.

1. Use predictions in new cases.
a. Add the predicted language in the Language field in cases.
b. Use the language prediction as a skill to assist with case routing (add the language skill to
the Task Skills table for the case record).
2. If desired, you can run the model in the background only.
With this option, the system makes the language predictions and stores the information in the
Predictions History but does not add any information to the case records.
3. Select Save & continue.

Deploy your model
Review your selections from the previous pages. Then you can select Deploy to deploy the
model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1140


<!-- page 1141 -->
Create a Document Intelligence use case
Create a use case that identifies the information to extract from email and case attachments and
determines how users with CSM agent roles interact with the extracted values in the Document
Intelligence workspace.
Before you begin
Role required: sn_csm_ml_task.ti_analyst, sn_csm_ml_task.ti_admin
About this task
A use case contains the list of fields to extract from attachments and a mapping
of those fields to fields in the Case table or a case type table. It also contains an
extraction mode that controls how the values for the extracted fields are added to
the case.
Use cases include the following information.
Use case form fields and descriptions
Use case information

Description

Fields

Configure the list of fields to predict for a use case. A
field is a single piece of information to extract from a
document. For example, the date on a document.

Document tasks

Create a document task and include attachments that
are used to train the Document Intelligence model to
identify the correct information.

Integrations

Select conditions for a use case that tell the
Document Intelligence feature when to run.

Prerequisite
• Activate Task Intelligence for Customer Service (com.snc.csm_ml_task).
• Activate Document Intelligence Admin (com.snc.docintel_admin).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1141


<!-- page 1142 -->
For more information, see Configure Document Intelligence for Customer Service.

Access the DocIntel Admin experience
1. Navigate to All > Task Intelligence for Customer Service > Setup to open the Task Intelligence
Admin Console.
2. In the Explore related applications section of the console, select Open DocIntel in the
Document Intelligence card to open the DocIntel Admin experience.

Create a use case
Create a use case to identify a document or set of documents to be processed together in
Document Intelligence. With Document Intelligence for Customer Service, the Use Cases list in
the DocIntel Admin experience uses a default filter with an OR condition to show use cases for:
• Application = Task Intelligence for Customer service -or• MLUC ID = MLUC CSM-00003
To create a use case:
1. Select Use Cases in the DocIntel Admin header.
2. Select New use case in the Use Cases list.
3. In the Define a new use case pop-up window, enter the following information.
Define a new use case pop-up window
Field

Definition

Name

The name of the use case.

Location for the extracted data

The table that contains the records to be
automatically populated with data extracted
from attachments.
Set this field to the case or case type that is
relevant to your use case.

Extraction mode set by default

The extraction mode determines how
the results are displayed to agents in the
Document Intelligence workspace.
The DocIntel Admin starts by showing
the results for each use case as
recommendations.

4. Select Save to add the use case to the Use Cases list.

Define the fields to extract
After creating a use case, select the fields that you want to extract. You can select one or more
fields for a use case. These fields can be of the text or Boolean type.

Note: The fields to be extracted should already exist in the use case target table. If the
fields do not exist in the target table, add them to the table and then complete this step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1142


<!-- page 1143 -->
1. Select a use case in the Use Cases list.
2. Select the Fields tab.
This tab lists the fields that have been selected for extraction for the use case.
3. Select Define your fields.
If you have already defined one or more fields and you want to add another field, select New
field.
4. Fill in the fields in the Define a new field pop-up window.
Define a new field pop-up window
Field

Definition

Use case

[Read only] The use case associated with this
field record.

Field Name

The display name of the field to extract as
it appears in the Document Intelligence
workspace.

Field Type

The type of field (for example, a text field or a
check box option).
Field type is read-only if you add this field
to a field group. The field type is whatever is
designated for the group.
Some field types convert the extracted
value into a standard format. See Data
normalization .

Is field required

[Text and number fields only] Required fields
can’t be left empty or unreviewed.

Add field

Select the field group that you want to add
the field to.

Target Table

[Read only] The table that stores the
document processing results for this use
case.

Target Field

Field on the target table you want to align this
field with. Used for interation.

Note: You must select a use case with
a target table.
Define multiple fields

If you’re adding more than one field to the
use case, enable this check box to keep the
pop-up window displayed on the screen.

5. Select Add field.
The system adds the field definition to the Fields list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1143


<!-- page 1144 -->
Create a document task
Document tasks include attached documents that are used to train the model to identify and
extract the correct information.
1. Select a use case in the Use Cases list.
2. Select the Document tasks tab.
This tab lists the tasks that have been created for the use case.
3. Select Create a document task.
If you have already created one or more tasks and you want to add another task, select New
document task.
4. In the Create the document task pop-up window, enter a Document task name.
5. Select +Add File to add one or more attachments.
6. Select the file and then select Open.
7. In the Upload a file pop-up window, select Upload.
8. In the Create the document task pop-up window, select Add Extraction.
The system adds the task to the Document Tasks list and Document Intelligence begins the
data extraction process, which can take a short time to complete.
◦ When the extraction process is complete, the Is Processed field is set to true.
◦ When the values have been extracted from the document, the Status field is set to Done.
9. Open the task and select Open in Document Intelligence to view the task in the Document
Intelligence Workspace .
10. Train the extracted fields to identify the correct values.
a. If a field value is correct: put your cursor in the field and press Return to confirm the value.
b. If a field value is missing: select the value from the list and press Return to confirm the value.
c. If a field value is incorrect: delete the incorrect value and type the first few characters of the
correct value. When the correct value appears in the list, select it and then press Return.
d. If a field value is incorrect and the correct value does not appear on the image, select
Missing in the document from the list.
e. Select Submit.

Create an integration
Select conditions for a use case that tell the Document Intelligence feature when to run.
You can create one or more integrations for a use case. If a use case has more than one
Integration, the system uses the latest one at run time.

Note: When creating an integration, make sure that the Create Flow check box remains
unchecked.
1. Select a use case in the Use Cases list.
2. Select the Integrations tab.
This tab lists the integrations that have been created for the use case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1144


<!-- page 1145 -->
3. Select Set up your first integration.
If you have already created one or more integrations, select Add integration.
4. In the Create Integration pop-up window, enter a name for the integration.
5. Use the condition builder to select conditions that tell the Document Intelligence feature when
to predict values.
At run time, the system identifies the right task definition based on these filters. The first active
task definition that matches the filters for the case or case type is selected.
6. Select Save.

Set general Document Intelligence features
General settings determine how the Document Intelligence feature displays information to
agents. General settings apply to all use cases.
1. Select Settings in the DocIntel Admin header.
2. Enable or disable the Exact match option. When enabled, Document Intelligence displays
only the candidate values that exactly match what the agent types.
3. Enable or disable the Candidate score to display confidence scores for each
recommendation.
4. Select a layout for the Side panels.
5. Set the Default width of the extraction panel.
6. Set the Default width of the thumbnail panel.
7. Select the Default document fit for the image panel.
For more information about the general settings, see Configure Document Intelligence

.

Configure the data extraction mode
The extraction mode determines how the Document Intelligence workspace handles the
extracted values. Two extraction modes are available: Recommendation and Autofill.
• Recommendation mode provides recommendations for the extracted fields in the Document
Intelligence workspace. Agents can choose the recommended value for a field or manually
enter a value.
• Autofill mode adds values to the fields in the Document Intelligence workspace if the extraction
confidence is higher than the Autofill Threshold value.
1. Select Settings in the DocIntel Admin header.
2. In the left column of the Settings page, expand the Use Cases list and select a use case.
3. Select Extraction Mode.
4. To use the Recommendation mode, enable Mode 1: Recommendation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1145


<!-- page 1146 -->
5. To use the Autofill mode, enable Mode 2: Autofill.
a. Enter a percentage value in the Set the Autofill Threshold field.
b. Enter a percentage value in the Set the Warning Threshold field.

Configure the agent verification setting
By default, agents review and verify the fields with values that are extracted from attached
documents. You can enable Straight Through Processing to automatically populate these fields
with extracted values. When enabled, agents only review and verify the extraction tasks if the
confidence score of all field values is below the set threshold.
1. In the left column of the Settings page, expand the Use Cases list and select a use case.
2. Select Agent Verification.

3. If desired, enable Straight Through Processing.
4. Enter a percentage value in the Set Straight Through Processing Threshold field.
Create a model to predict similar open incidents
Use the Task Intelligence for CSM to create and train a machine learning model that identifies
similar open incidents. The model analyzes similar open incidents data to suggest relevant
incident records when working on a current open incident, helping agents resolve issues faster.
The plugin includes a ready-to-train model for predicting similar cases and also lets you create
custom models tailored to your specific use cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1146


<!-- page 1147 -->
Before you begin
• Ensure that the Task Intelligence for Customer Service plugin is installed.
• Ensure that your instance contains sufficient open incident records (minimum 10,000
recommended) for meaningful training.
• Role required: ml_admin, ti_admin

Set up the prediction model
Procedure
1. Navigate to All > Task Intelligence for Customer Service > Setup.
The Task Intelligence Admin Console displays.
2. On the Similar Open Incidents card, select Ready to train.
The model opens in a guided setup flow. The Define the purpose screen appears.
3. Define the purpose:
a. Review the pre-filled Model name.
b. The Prediction table and Training table are pre-selected as Cases and Incidents,
respectively.
These values are fixed and cannot be edited.
c. Select Save & Continue.
The Train your model screen appears.
4. Train your model:
a. The Model name and Prediction table fields are pre-filled and cannot be edited.
b. Optional: Apply Conditions to filter the training data.
c. In the Prediction table field, select fields such as Description and Short description that the
model should use to identify similarities.
d. In the Training table section, select matching or relevant fields that help the model compare
open incidents.
e. Choose the language for training.
f. Set the Update frequency.
g. Review the Number of records.
If needed, select the Load records icon to reload.
h. Optional: Enable Auto-retrain to allow retraining the model on a set schedule.
i. Select Launch training.
j. Once training starts, select View current results to preview sample outputs.
The Assess and define screen appears.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1147


<!-- page 1148 -->
5. Assess and define:
a. Review the Estimated number of records used for training.
b. In Prediction preference, select one of the following options:
▪ Recommendations – Recommends similar open incidents (selected by default).
▪ Monitor only – Runs the model in the background without displaying recommendations.
You can analyze the logged data before enabling recommendations.
▪ Turn off predictions – Disables all predictions for this model.
c. Select Save & Continue.
The Deploy your model screen appears.
6. Deploy your model:
a. Review your setup and training summary and then select Deploy to activate the model.
A confirmation message appears when deployment is complete.
Result
Once deployed, similar open incidents are displayed in the Recommended Actions section
under the Suggested Actions tab when an agent opens a case that helps them resolve cases
faster using related issues and prior solutions.
Create a model to predict similar knowledge articles
Use the Task Intelligence for CSM to create and train a machine learning model that
recommends relevant knowledge articles based on the context of open incidents. The model
analyzes existing data to display relevant articles when working on a current case, helping
agents find useful information faster. The plugin includes a ready-to-train model for predicting
similar articles and also enables you to create custom models tailored to your data.

Before you begin
• Ensure that the Task Intelligence for Customer Service plugin is installed.
• Ensure that your instance contains sufficient case and knowledge data (minimum 10,000
recommended) for meaningful training.
• Role required: ml_admin, ti_admin

Set up the prediction model
Procedure
1. Navigate to All > Task Intelligence for Customer Service > Setup.
The Task Intelligence Admin Console displays.
2. On the Similar Knowledge Articles card, select Ready to train.
The model opens in a guided setup flow. The Define the purpose screen appears.
3. Define the purpose:
a. The Prediction table and Training table are pre-selected as Cases and Knowledge,
respectively.
These values are fixed and can’t be edited.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1148


<!-- page 1149 -->
b. Select Save & Continue.
The Train your model screen appears.
4. Train your model:
a. The Model name and Prediction table fields are pre-filled and can’t be edited.
b. Optional: Apply Conditions to filter the training data.
c. In the Prediction fields field, select Short description that the model uses to identify
similarities.

d.

Note: The options selected here are defaults. You can modify the options in the
Prediction fields and Training fields based on your requirements.

In the Training fields field, select Article body and Short description of the Knowledge
training table.
e. Choose the language for training.
f. Set the Update frequency.
g. Review the Number of records.
If needed, select the Load records icon to reload.
h. Optional: Enable Auto-retrain to enable retraining the model on a set schedule.
i. Select Launch training.
j. Once training starts, select View current results to preview sample outputs.
The Assess and define screen appears.
5. Assess and define:
a. Review the Estimated number of records used for training.
b. In Similar Knowledge preference, select one of the following options:
▪ Recommendations – Recommends similar records based on training and prediction fields
(selected by default).
▪ Monitor only – Runs the model in the background without displaying recommendations.
You can analyze the logged data before enabling recommendations.
▪ Turn off predictions – Disables all predictions for this model.
c. Select Save & Continue.
The Deploy your model screen appears.
6. Deploy your model:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1149


<!-- page 1150 -->
a. Review your setup and training summary and then select Deploy to activate the model.
A confirmation message appears when deployment is complete.
Result
Once deployed, similar knowledge articles appear in the Recommended Actions section
under the Suggested Actions tab when an agent opens a case, helping them resolve cases
faster.
Create a model to predict similar cases
Test and edit the pre-trained similar cases model for predicting similarity in customer service
cases and create a model for custom cases.
Pre-requisites
Role required: ml_admin, ti_admin
About this task
Base system models: Task Intelligence for Customer Service includes three base
system models for predicting similar records for cases:
• Major Case identifier
• Similar Open Cases
• Similar Resolved Cases
To get recommendations for a major case identifier that includes propose major
cases and similar major cases, install the Major Issue Management plugin
plugin and activate the feature as needed to get recommendations. When you
install the Task Intelligence for CSM plugin in your production instance, the plugin
automatically installs and trains the similar open cases, similar resolved cases, and
major case identifier models using your data. These models are then auto-deployed.
The similar open case and similar resolved case models show predictions on
recommended actions on case form. However, recommendations aren’t enabled for
the major case identifier model in the base system.

Steps to activate Major Case identifier recommendation
1. Navigate to All > Recommended Actions > Recommendations.
2. Select Propose major issue under the Application scope Task Intelligence for Customer
Service.
3. Check the Active check box.
4. Select Update.
Repeat the steps for Similar major cases.

Note:
Propose major issue and similar major cases are inactive in the base system.

Enable Suggested Actions on the front line case page record
Before you begin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1150


<!-- page 1151 -->
Role required: workspace_admin, ui_builder_admin, ti_admin,
next_best_action_author
Recommended Actions component should be added to the specific record page.
(Front line or CSM default record page)
About this task
To enable Suggested Actions tab, the admin should activate the Recommended
actions feature on two specific pages: Front line case page and CSM default
record page. Once activated, agents can view the recommendations on these
pages.

Note: For CSM default record page, first wire Recommended actions on this
CSM default record page first, and then enable the Suggested Actions tab in
UIB via the component property.

To enable Suggested Actions feature in the Recommended Actions component, follow the
following steps:
1. Navigate to All> Now Experience Framework >Experiences.
2. Select the UX application CSM/FSM Configurable Workspace.
3. Select Open in UI Builder.
4. Navigate to Record under Pages and variants.
5. Select Front-line Case page.

Note: Verify that you are in the accurate scope to be able to edit.
6. Select Recommended Actions 1 under the Tabs.
7. In the Configure tab, turn off the toggle for Hide recommended actions.
8. Select Save.
By following these steps, you successfully activate the Recommended Actions feature, enabling
agents to view suggestions under Recommendations in the CSM/FSM Configurable Workspace.
When you open a case, you find the recommendations section with two tabs: Search and
Suggested Actions. The recommendations are displayed under Suggested Actions.

Enable Recommended actions in the CSM default record page
1. Navigate to All.
2. In the search box, enter sys_ux_screen_condition.list and press enter.
3. Select the filter icon, enter [Screen] [contains] [Recommeded Actions default] and
[Application] [is] [Recommeded Actions], and select Run.
4. Select the true link under Active.
5. On the UX Screen Condition page in the Script, replace the return value with true.
6. Select Update.
Result: On opening a case, the recommendations section with two tabs: Search and Suggested
Actions is displayed. The recommendations are displayed under Suggested Actions.
Find out how to Create a custom similar case model, Edit a model, and Export a model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1151


<!-- page 1152 -->
Edit a model
Edit the case models that have already been trained and deployed. Change the model
configurations, view the updated training results, and redeploy the model.

Before you begin

Role required: ti_admin
A prediction model must already be created, trained, and deployed.

About this task

You have two options for editing your model: view the current training results or retrain the model.
The first time you edit a model, a pop-up appears to ask you which option you would like to take.
Resetting your prediction preferences enables you to change how visible the predictions are
for agents. Retraining your model enables you to select new data for training, which changes
the prediction capabilities of the model. While you can retest your prediction model, it doesn’t
change the prediction skills.

Procedure
1. Navigate to All > Task Intelligence for Customer Service > Setup.
2. From the Models list, select the menu icon of the model you want to edit, and then select Edit
Model.
3. Modify the fields to get the required predictions.
4. Select Launch training.
A warning message appears asking if you want to update and train the model.
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
Your updated model is deployed.

What to do next

See how to Export a model
Export a model
Export a Task Intelligence model to another instance.

Before you begin

Role required: ti_admin or tia_admin

Procedure
1. Navigate to All > Task Intelligence for Customer Service > Setup, depending on which
application and context you want to export for.
2. In the Models list, select the more options menu of the model you want to export.
3. Select Export model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1152


<!-- page 1153 -->
A new tab opens with authentication steps.
4. Select Allow.
Your browser screen goes blank. To check that the download was successful, look at the
bottom left of your browser and also check your download location to see if you have the
exported model on your computer. Repeat this process for any other Task Intelligence models
that you want to move to the target instance.

Result

The browser downloads the XML file to your system.

What to do next

You can use the XML file to transfer the model to another instance using update sets. To learn
more, see System update sets . Find out How to move your trained Task Intelligence Models to a
different instance .
Create a custom similar case model
Set up a training model to help it recognize similarities between two types of tables by comparing
their fields.
The model looks at the prediction fields of a prediction table and the training fields of a training
table. It uses the similarities in these fields to predict similar records.
Before you begin
Role required: ml_admin, ti_admin
About this task
The case similarity model is pre-trained with a large data set to learn communication
patterns. You select a set of records to test the model and then view the results
before deploying.

Set up similar cases prediction model
Use Task Intelligence for CSM to set up similar case prediction model and train it with your data
to make predictions. Access your model's performance results, set the prediction preferences
and behavior, and deploy your model.
1. Navigate to All > Task Intelligence for Customer Service > Setup to access the Task
Intelligence Admin Console.
2. On the Suggest similar case to reduce resolution time card, select Set up model.
This action opens the model and displays the introductory pages. Each page in the model asks
you questions and helps you select the information needed to build an effective model.

Train the similarity model
Train your similar case model with training data to predict the similar records by recognizing
similarities between fields of Case table and training tables. When you train a machine learning
model, the model looks at the prediction fields of a prediction table and the training fields of a
training table. It uses the similarities in these fields to predict similar records.
You can select the table and fields that you want to predict, such as the Prediction table and
Predictions fields. Also, you can select the tables and fields that you want the model to use to
predict the similar records, such as the Training table and Training fields. Select this information
to tell the model what to look for during training.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1153


<!-- page 1154 -->
Note: You can either use the recommended settings or customize the settings to fit your
needs.
1. Enter a name for the model.
2. Select the Prediction table you want the model to predict.
3. Select Conditions to choose a set of records to use for training.

Note: These conditions provide the requirements that a record must meet to make the
predictions. However, this functionality is currently not supported.
4. Select the Prediction fields which will be used to predict similar records.
5. Select the Training table in the training data that you want the model to use to make
predictions.
6. Select Conditions to choose a set of records to use for training.
7. Select the Training fields that you want the model to use to make predictions.
8. Select the Language in which training takes place.
9. Select the Update Frequency to decide how frequently the training should occur.
10. Review the resulting Number of records in the training data based on the selected conditions.
The records that are counted include the number of fields, parameters, and data that the
model uses to train. Based on the provided information and the set conditions, the number
or records gets updated automatically. The model needs a minimum of 10,000 records
for effective training. If this minimum number hasn't been reached, try selecting different
conditions. You can also click the refresh icon to refresh the number.
11. Select to retain a model manually or set it to auto retrain.
12. Select Launch training.

Assess the similarity model
Assess the results from the model training and view sample results to see the similar records
predicted for cases. Reviewing the results gives you a preview of how your model will perform
after being deployed. Based on the sample results, select the prediction preference. The model
has flexible options. Based on the sensitivity and requirements of each case record, you can do
the following actions:
• Recommend similar records for the cases.
• Monitor and run the prediction model for the cases in the background only. Admin can track
the predictions made by model by going to All > Task Intelligence for Customer Service >
History.
• Turn off the predictions for the cases.
Steps in Assess the similarity model:
1. View the number value in the Estimated number of records used for training section.
2. Select View sample results to see the similar records predicted for each case.
3. Choose one of the following options from the Prediction preference drop-down list for each
field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
Options

Description

Recommendations

Shows the top recommendations based on
the similarity patterns. Agents can choose
to accept or reject the recommendation. You
can configure the number of recommended
values using Advanced Recommended
actions for CSM. For more information, see
Configuring the Recommended Actions
application.

Turn off predictions

Stops the model from performing any
predictions.

Monitor only

Monitors and runs the model in the
background only without making any
predictions on the case form.

4. Select Save & continue.

Deploy the similarity model
Deploy the Similar cases model to predict the similar records for the cases.
1. Review your choices from the previous pages and information about how the model was
trained.
2. Select Deploy to deploy the model.
A pop-up appears confirming that your model was deployed.
Predictive Intelligence for CSM solution definitions
Use your instance records to build Customer Service Management specific solutions.

Solution definitions
These solution definitions are available as templates on instances where both Predictive
Intelligence and Customer Service Management are active. Create your own solution definition
records to customize the behavior.
Solution Definitions for Customer Service Management
Solution Definition

Solution Type

Description

CSM Case Assignment

Classification

Predicts the Assignment
group field from the Short
description.

CSM Case Categorization

Classification

Predicts the Category field
from the Short description.

CSM Case Prioritization

Classification

Predicts the Priority field from
the Short description.

Grouping of Cases into Topics Clustering

Clusters similar cases into
topics based on the Short
description.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
Solution Definitions for Customer Service Management (continued)
Solution Definition

Solution Type

Description

All Similar Cases

Similarity

Recommends similar
cases based on the Short
description that can help
customer service agents
with case investigation and
resolution processes.

Recommended Open Cases

Similarity

Recommends similar open
cases based on the Short
description.

Recommended Resolved
Cases

Similarity

Recommends similar resolved
cases based on the Short
description.

Major Issue Detector

Similarity

Provides recommendations
for major issues based on the
Short description.
• Recommends one or more
major cases, if available.
• Otherwise, recommends
similar cases that are not
linked as child cases to a
major case.

Similar Knowledge Articles

Similarity

Recommends similar
knowledge articles by
comparing the Text, Short
description, and Description
fields of knowledge articles to
the Short description of the
customer service case.

Similar Knowledge Articles All

Similarity

Recommends similar
knowledge articles
by comparing fields
in the Knowledge
View database view
[sn_customerservice_knowledge_view]
with the Short description of
the customer service case.

Note: This solution
definition is used in the
Auto-Responder feature.
For more information,
see Train the similarity
solution for finding AutoResponder notification
content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
Business rules for classification solutions
These business rules apply only to the CSM Case Assignment, CSM Case Categorization, and
CSM Case Prioritization solution definitions. The rules are available only on instances where
both Predictive Intelligence and Customer Service Management are active. Create your own
business rules on the Case [sn_customerservice_case] table to customize prediction and
reporting behaviors.
Business rules for Customer Service Management
Business rule

Table

Description

Default Case Based Prediction Case
[sn_customerservice_case]

Generates prediction results
from the active Customer
Service Management
solutions. Runs when a case
record is inserted.

Update Prediction Results

Updates the solution precision
and coverage statistics. Runs
when a case record is closed.

Case
[sn_customerservice_case]

Upgrade Information
If your instance is running on the Kingston release and you are upgrading to the Zurich release:
• Use the Default Case Based Prediction business rule template to create a new business
rule. This rule includes a Solution variable that gets all active solutions retrieved by the
findActiveSolution(solutionName) method.
• In a global domain environment, use the solutionNames array variable which requires that you
explicitly provide the solutions that are called by the business rule.
• In a domain-separated environment, such as an MSP environment, refer to the commented
code in the business rule template for easy customization.
• The business rule template calls the applyPredictionForSolution() method to predict
regardless of any changes to the default value.
Maintaining prediction accuracy
You can manage prediction drift by retraining, modifying, or creating solutions to reflect changes
in your business conditions. Test and modify your business rule over time to verify it works as
desired across multiple consumption points and user personas.
Related topics
Similar case/recommendation
Trending case topics
Resolve cases more efficiently and proactively using Predictive Intelligence to identify clusters
of cases with similar issues and pinpoint factors that drive up case volume. Each cluster of cases
represents a trending case topic.
Using trending case topics has the following benefits:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


<!-- page 1158 -->
• Increase manager productivity: Quickly identify clusters of cases that point to similar
underlying issues and act to resolve them.
• Improve customer experience: Proactively resolve issues by analyzing patterns in customer
service data.​
• Enhance operational excellence: Reduce the backlog of open cases by resolving similar cases
at once.​
System administrators train solution definitions to cluster similar cases and identify similar major
cases for the clustering.
Major issue managers use trending case topic lists to analyze the backlog of cases. Using the
lists, they can quickly identify any existing major cases that the backlog could be linked to or
create a new major case.

Activation information
The trending case topics feature requires the Predictive Intelligence for CSM (com.snc.csm_ml)
plugin and the Major Issue Management (com.sn_majorissue_mgt) plugin.
Related topics
Configure trending case topics
View trending case topics
Add trending case topics to existing major cases
Create major cases for trending case topics
Configure trending case topics
Train solution definitions to identify clusters of cases that point to similar underlying issues and
find any related major cases for the clusters.

Before you begin

Role required: admin

About this task

Access the menus and use the modules to train the solution definitions to identify trending case
topics. For more details, see Trending case topics.

Procedure
1. Navigate to Predictive Intelligence and then either All > Similarity > Solution Definitions or
Clustering > Solution Definitions.
2. Complete the following tasks to train the solution definitions for trending case topics.
Solution definitions field description
Task

Description

Train the clustering solution definition to
automatically group similar cases into topics

Configure a clustering solution definition to
cluster similar cases into groups.

Train the similarity solution definition to find
similar existing major cases

Configure a similarity solution definition to
find similar major cases for the clusters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
Train the clustering solution definition to automatically group similar cases into topics
To enable clustering of similar cases into topics, you must first update and train the clustering
solution definition.

Before you begin

Role required: admin
Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).

About this task

By default, a clustering solution definition for clustering groups of cases into topics is already
available. A clustering solution definition groups similar records into clusters so you can address
them collectively or identify patterns.
You can modify the fields, filters, update frequency, and training frequency.

Procedure
1. Navigate to All > Predictive Intelligence > Clustering > Solution Definitions.
2. In the Clustering Definitions list, search for and select the Grouping of Cases into Topics
solution definition (ml_sn_sn_csm_ml_global_grouping_of_cases_into_topics).
3. On the Clustering Definition form, verify the default field values.
4. Change the fields and filters, as required.
5. To change the frequency with which the model for clustering solution definition must be rebuilt,
edit the Update Frequency field.
6. To change the frequency with which to include new records in the model for the clustering
solution definition, edit the Training Frequency field.
7. In the Training Request Schedule related list, view the schedule for training the Grouping of
Cases into Topics solution definition.
8. Click Update & Retrain.
9. Open the Grouping of Cases into Topics solution definition.
10. In the ML Solutions related list, view the training solution progress in the Progress column.

Note: Alternatively, you can click the link for the solution in the Active column. On the
ML Solution form, click the Show training progress related link to check the training
solution progress.

11. Click the Cluster Visualization tab.
The clusters that were formed for the given solution are displayed in a tree map in descending
order of size from top left to bottom right. Each node is colored from red to green depending on
the cluster quality.
Train the similarity solution definition to find similar existing major cases
To enable finding related major cases in a cluster, you must first update and train the similarity
solution definition.

Before you begin

Role required: admin
Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
About this task

By default, a similarity solution definition for finding similar existing major cases in a cluster is
already available. A similarity solution definition collects and compares your existing records to
new similar records.
You can modify the fields, filters, update frequency, and training frequency.

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. In the Similarity Definitions list, search for and select the Major Issue Detector solution
definition (ml_sn_global_major_issue_detector).
3. On the Similarity Definition form, verify the default field values.
For more information about the Similarity Definition form fields, see Create and train a similarity
solution .
4. Change the fields and filters, as required.
5. To change the frequency with which the model for similarity solution definition must be rebuilt,
edit the Update Frequency field.
6. To change the frequency with which to include new records in the model for the similarity
solution definition, edit the Training Frequency field.
7. In the Training Request Schedule related list, view the schedule for training the Major Issue
Detector solution definition.
8. Click Update & Retrain.
9. Open the Major Issue Detector solution definition.
10. In the ML Solutions related list, view the training solution progress in the Progress column.

Note: Alternatively, you can click the link for the solution in the Active column. On the
ML Solution form, click the Show training progress related link to check the training
solution progress.
Similar case recommendations
The similar case recommendation feature enables customer service agents to easily find similar
cases that can provide helpful information about a current case. This feature can also provide
recommendations about cases that may be related to major issues.
The similar case recommendation feature uses the following components:
Additional search resources for contextual search
Additional search resources are provided for contextual search. These additional
resources enable customer service agents to search open or resolved cases for
information related to the current case.
Predictive Intelligence similarity solution definitions
Several of the additional search resources have an associated Machine Learning
(ML) similarity solution definition. These additional resources perform a contextual
search based on the case short description and return a list of similar records.
Predictive Intelligence in Agent Workspace
Predictive Intelligence can provide agents with a list of cases that are similar to
the current case. These similar cases may provide helpful details or resolution
information for the current case. Predictive Intelligence can also provide
recommendations about potential major issues and major cases.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
With the similar case/recommendation feature, customer service agents can:
• Find cases that are similar to the current case.
• Copy resolution notes and codes from resolved cases to the current case.
• Link the current case to a similar case.
• View a list of open cases similar to the current case and submit the current case as a major
case candidate.
• View one or more similar major cases and link the current case as a child to a major case.
Major issue managers can search for cases that are similar to a major case and add them as
child cases.

Using the feature in Agent Workspace and in the platform interface
With Agent Workspace, agents can:
• Perform a search in Predictive Intelligence using the additional search resources.
• Create a link from the current case to a selected case in the search results.
• Copy resolution information from a selected case to the current case. This includes the
resolution code and the resolution notes (the agent must then save the case).
• View a list of similar cases that do not include major cases. This is a way to see that the current
case might be a major case candidate.
• View a list of similar cases that include one or more major cases. The major cases are
displayed first in the list of results. Agents can use an available action to add the current case
as a child of a major case.
With the platform interface, agents can:
• Perform a search in the Related Search Results section on the Case form using the additional
search resources. Agents can select these additional resources from a list by the Related
Search field.
• Create a link from the current case to a selected case in the search results.

Plugins
The configuration for the similar case/recommendation feature is included with the Customer
Service plugin (com.sn_customerservice).
The similar case/recommendation feature has a dependency on the Contextual Search plugin
(com.snc.contextual_search). Activate the Contextual Search plugin to use contextual search and
the additional search resources.
To use similar case/recommendation with the following features, activate the associated plugins:
• Major Issue Management – activate the Major Issue Management plugin
(com.sn_majorissue_mgt)
• Predictive Intelligence – activate the Predictive Intelligence plugin (com.glide.platform_ml)
• Problem Management – activate the Problem Management Best Practice – Madrid – State
Model (com.snc.best_practice.problem.madrid.state_model)
Related topics
Machine learning solutions for Customer Service Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
Additional search resources
The similar case recommendation feature uses additional search resources, which are
configured using the Contextual Search application.
Navigate to Contextual Search > Additional Resources to view the Search Resources (Additional
Resources view) list. Two types of additional search resources are available: Table and Predictive
Intelligence Similarity.

Table resources
Additional search resources of the type Table are based on a selected table and have specific
conditions that must be met for a record to be included in the search results.
The following Table additional search resources are included with the Customer Service plugin:
• Resolved Cases
• Open Major Issues
The following Table additional search resources are included with the Problem Management
Best Practice - Madrid - State Model plugin:
• Open Problems
• Resolved Problems
Table type additional search resources
Additional Resource

Table

Description

Resolved Cases

Case

Returns a list of cases created in the last six
months that have a state of resolved or closed
and the resolution code is one of the following:
• Solved - Fixed by support/Guidance
provided
• Fixed by closing related PRB
• Workaround provided based on open PRB
Actions available:
• Link to Case: the current case becomes a
child of the case selected from the search
results.
• Copy Resolution Information: copies the
resolution notes and resolution code from
the selected case to the current case.

Open Major Issues

Case

Returns a list of open major cases.
Actions available:
Link to Case: the current case becomes a
child of the case selected from the search
results.

Open Problems

Problem

Returns a list of open problems.
Actions available:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
Table type additional search resources (continued)
Additional Resource

Table

Description

Link to Case: adds the selected record as the
Problem reference on the current case.
Resolved Problems

Problem

Returns a list of problems that have a state of
Resolved or Closed.
Actions available:
Link to Case: adds the selected record as the
Problem reference on the current case.

Predictive Intelligence Similarity resources
Additional search resources of the type Predictive Intelligence Similarity are associated with a
Machine Learning (ML) similarity solution definition. Search resources of this type require the
Predictive Intelligence plugin (com.glide.platform_ml). The resources listed in the following table
are included with the Predictive Intelligence plugin.
In addition to the associated similarity solution definition, Predictive Intelligence Similarity
resources can have configured properties. These properties identify conditions that must be met
for cases to be included in the search results.
Predictive Intelligence Similarity type additional search resources
Additional Resource

Table

Description

Recommended Resolved
Cases

Case

Returns a list of resolved
similar cases created in the
last six months.
Associated with the
Recommended Resolved
Cases similarity solution
definition.

Recommended Open Cases

Case

Returns a list of open similar
cases created in the last six
months.
Associated with the
Recommended Open Cases
similarity solution definition.

All Similar Cases

Case

Returns a list of all similar
cases created in the last six
months.
Associated with the All Similar
Cases similarity solution
definition.

Major case agent assist recommendations
The Major Case agent assist recommendations is used for recommending major cases.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
The agent assist provides a recommendation for each of the two major case scenarios:
• Major case found: returns a list with one or more major cases created in the time-frame
indicated in the solution definition that are similar to the current case. Cases are listed by
similarity score. The default time-frame is set to the start of yesterday.
• No major case found: returns a recommendation based on the number of cases created in
the time-frame indicated in the solution definition that is similar to the current case (does not
include any major cases). The default time-frame is set to the start of yesterday.
To configure the time-frame for the solution definition threshold, see Update your similarity score
threshold .
If the Major Case agent assist recommendations find one or more major cases similar to the
current case, the Predictive Intelligence tab displays these cases ranked by similarity score. The
case with the highest score is highlighted with a white box and the title Major Case and includes
a user action to link the current case to the major case.
Predictive Intelligence major case recommendation

If the Major Case agent assist recommendations find cases similar to the current case, but no
major cases, the Predictive Intelligence tab displays a recommendation highlighted with a blue
box. It includes the option to propose the current case as a major case candidate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
Predictive Intelligence tab similar case recommendation

The Major Case agent assist recommendations:
• Uses the Major Case agent assist recommendations ML solution definition.
• Includes some properties that provide customers with customization options, such as the
recommendation title and message that appears in the Predictive Intelligence tab.
• Includes the Potential Major Case trend definition.
This definition sets the threshold for:
◦ Finding the number of distinct accounts that cases must belong to for a major issue
recommendation. The default value is 3.
◦ The number of similar cases that must be returned by the solution definition for a major issue
recommendation using a script. The default value is 10.
Similarity solution definitions
The similar case recommendation feature uses several Predictive Intelligence solution
definitions for similarity models.
Navigate to Predictive Intelligence > Similarity > Solution Definitions. The following solution
definitions are provided with the similar case/recommendation feature.
• All Similar Cases (ml_sn_global_all_similar_cases)
• Recommended Resolved Cases (ml_sn_global_recommended_resolved_cases)
• Recommended Open Cases (ml_sn_global_recommended_open_cases)
• Major Issue Detector (ml_sn_global_major_issue_detector)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
Several of the additional contextual search resources used by the similar case/recommendation
feature are associated with these solution definitions. Agents can select these search resources
and access the cases returned by these similarity solution definitions.
Related topics
Create and train a similarity solution
Similar case user actions
Customer service agents and major issue managers can use the similar case recommendation
feature to link cases, copy resolution information, propose major case candidates, and add
cases to existing major cases.
User actions and results
User Action

Customer service
agent can link the
current case to a
similar case

Description

• Agent Workspace:
The Predictive
Intelligence tab
shows a list of
similar cases
ordered by the
similarity score.
• Platform: The
Related Search
Results section
of the case form
shows a list of
similar cases
ordered by the
similarity score.

Customer service
agent can copy
resolution information
from a resolved case
to the current case

Agent Workspace:
The Predictive
Intelligence tab shows
a list of resolved
similar cases ordered
by the similarity score.

UI Action

Result

The current case is
• Agent Workspace:
linked as a child of the
Select the More UI
similar case.
actions menu and
select Link to Case.
• Platform: Select the
desired case in the
search results list,
then select Link to
Case.

Agent Workspace:
Select the More
UI Actions menu
and select Copy
Resolution.

Copies the resolution
code and resolution
notes from the similar
case to the current
case.

Note: Be sure
to save the
current case
record.

Customer service
agent can propose a
major case candidate

Agent Workspace:
The Predictive
Intelligence tab
shows a major issue
recommendation

Agent Workspace:
Select the Propose
Major Case link.

The current case is
proposed as a major
issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
User actions and results (continued)
User Action

Note: The
Major Issue
Detector
similarity
solution
definition must
be active.

Major issue manager
can associate the
current case to a
major case

Note: The
Major Issue
Detector
similarity
solution
definition must
be active.

Description

UI Action

Result

Agent Workspace:
Select the More UI
Actions menu and
select Link to this
major issue.

The current case is
added as a child to
the major case.

with the following
message:
"We noticed that (x)
similar cases have
been created for (y)
different accounts
in the last (z) hours.
Propose this as a
major issue?"
Agent Workspace:
the Predictive
Intelligence tab lists
one or more major
cases similar to the
current case, ranked
by similarity score.

Related topics
Similarity solutions
Estimated time to resolve a case
Machine learning in Customer Service Management helps with case resolution by predicting the
estimated time to resolve a case.
Machine learning predicts the estimated time to resolve a case (ETTR) based on attributes of a
case such as its short description, category, priority, and assignment group. For more information
about configuring the machine learning regression definition for ETTR, see Configure the default
estimated resolution time.

Activation
This feature is available with activation of the Predictive Intelligence for Customer Service
Management plugin (com.sn_csm_ml). For more information, see Install Predictive Intelligence

.

Agents must activate the Time to resolve ribbon component, which displays the ETTR, to view it
in the CSM Agent Workspace or in the CSM Configurable Workspace. For more information, see
Display the time to resolve ribbon component and Estimated time to resolve.
Configure settings for estimated time to resolve values
After upgrading, configure some settings to view the Time to Resolve Numeric Value column in
the case report for older cases and determine the information that is displayed.

Before you begin

You must have a trained default estimated time to resolve a case regression solution. For more
information, see Configure the default estimated resolution time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
Role required: admin

Procedure
1. Navigate to All > System Definition > Fix Script.
2. Select the Populate Numeric TTR values fix script.
3. Optional: Modify the default parameter values.
◦ LookBackPeriodInMonths: The number of past months of cases to examine. The
default value is 15 months.
◦ report.setLimit: The maximum number of records to examine. The default value is
150,000.
4. Click Run Fix Script to populate the estimated time values taken to resolve older cases.
5. Either run the script on screen or run it in the background.
◦ To display the script running on the screen, click Proceed.
◦ To run the script in the background, click Proceed in Background.
Configure the default estimated resolution time
The Estimated Time to Resolve a Case regression definition is available by default. You can
modify the default values of case fields, the case timeline, and the training frequency.

Before you begin

Role required: admin, ml_admin

About this task

The Estimated Time to Resolve a Case definition is available by default. You can train this
available definition to complete a solution and make predictions. You can change some of the
default settings such as the fields, a filter, and the training frequency. For more information on
creating and training a solution, see the following.
Create and train a regression solution.

Procedure
1. Navigate to All > Predictive Intelligence > Regression > Solution Definitions.
2. Click Estimated Time to Resolve a Case.
In the Regression Definition screen, the Table field is autopopulated with the Case Report
[sn_customerservice_case_report] table. The Output Field field is autopopulated with the time
taken to resolve a case in seconds.

Note: If you have upgraded, you have to run a fix script in order to show the Time to

Resolve Numeric Value column to display values for older cases. For more information,
see Configure settings for estimated time to resolve values.
3. To edit, add, or delete case attributes, modify the default values in the Fields field.
The default case attributes are Short Description, Category, Assignment group, Assigned to,
Priority, Product, Channel, Account, Service, Contact, Contract, and Description. These details
are taken from the case record.
4. Edit the Filter field if you want to modify the number of past months of cases to examine.
The default value is 15 months.
5. Edit the Training Frequency field if you want to modify the frequency of training.
The default value is every 30 days.
6. Either update the changes you made or update and retrain the solution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
◦ To update the changes you made, click Update.
◦ To update and retrain the solution, click Update and Retrain.
Display the time to resolve ribbon component
Activate the ETTR Experience Card so that you can display the time to resolve ribbon
component in your CSM workspaces.

Before you begin

Role required: admin

About this task

The Time to resolve ribbon component is available by default and can be displayed in both CSM
Agent Workspace and CSM Configurable Workspace. You must activate the component in CSM
Agent Workspace before you activate it in CSM Configurable Workspace.

Procedure
1. Navigate to All > Workspace Experience > Forms > Workspace Ribbon Settings.
2. Select any record that has the table value Case [sn_customerservice_case].
3. Increase or decrease the values in the width column to make the total combined width of all
the components to 12 or less.

Note: If the total is already exceeding 12, decrease the values for the other components
before modifying the value of ETTR Experience Card.
4. Select ETTR Experience Card.
5. Select Active.
6. In the Ribbon Component Attributes form section, modify components such as the Card title
and Info message as required.

Note:
◦ You can see that the Solution name is pre-filled with the default name.
◦ The same procedure applies to activate the ETTR Experience Card in the CSM
Configurable Workspace. You must activate the ETTR Experience Card in the CSM
Agent Workspace before activating it in the CSM Configurable Workspace. Navigate
to User Experience Framework > Ribbon Configuration Settings and activate. The
Ribbon Component Attributes section is not available for modifying.
Predictive Intelligence for case management
Assist agents with case creation by requiring a minimum of information, such as the short
description, and predicting values for the category, priority, and assignment group.
From either Agent Workspace or the platform interface, agents can use this feature when
creating cases by providing the short description. Based on the information entered in the
Short description field, the Predictive Intelligence
feature predicts the category, priority, and
assignment group, and routes the case to the correct queue.

Plugin
The Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml) provides
Predictive Intelligence capabilities for Customer Service Management. This plugin enables

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
customers to leverage machine learning algorithms for searching related cases in CSM. This
plugin requires:
• Customer Service (com.sn_customerservice)
• Predictive Intelligence for Contextual Search (com.snc.contextual_search_ml)
The Predictive Intelligence for Customer Service Management plugin is activated automatically
for new Orlando customers. Existing customers upgrading to the Orlando release must manually
activate this plugin.

Solution definitions
Predictive Intelligence includes the following solution definitions for case management:
• CSM Case Categorization
• CSM Case Assignment
• CSM Case Prioritization
A solution definition predicts one or more output fields based on a configured input field. At
least one solution definition must be active to use Predictive Intelligence with Customer Service
Management.
For more information, see Predictive Intelligence for CSM solution definitions.

Business rules
Predictive Intelligence also includes business rules for Customer Service Management:
• Default Case Based Prediction
• Update Prediction Results
For more information, see Predictive Intelligence for CSM solution definitions.

Extension points
The Predictive Intelligence feature for Customer Service Management includes the
CSMPredictionService extension point. This extension point contains a method that returns the
following information:
• The list of solution definitions that are used to predict field values during case creation.
• The treatment of the predicted fields based on the values of the input fields.
The system administrator can use this extension point to customize the solution definitions.
Configure Predictive Intelligence for case management
Activate the Predictive Intelligence plugin and enable the related system property and client
script to use Predictive Intelligence with Customer Service Management.

Before you begin

Role required: admin

Procedure
1. Activate the Predictive Intelligence plugin (com.glide.platform_ml).
2. Enable the Enable/Disable the prediction for case property
(sn_customerservice.case.mlpredictor.enable).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


<!-- page 1171 -->
a. Navigate to Customer Service > Administration > Properties.
b. Enable the Enable/Disable the prediction for case check box.
c. Click Save.
3. Enable the Predict Case Values client script.
a. Navigate to System Definition > Client Scripts.
b. Click Predict Case Values in the Client Scripts list.
c. Enable the Active check box.
d. Click Update.
Use Predictive Intelligence for case management
Agents can use Predictive Intelligence to predict values for configured fields when creating a
customer service case.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

When you create a case, the Predictive Intelligence feature predicts values for the configured
fields based on the short description.

Note: If you update the case, the values for these fields are not predicted again.
Procedure
1. Create a case.
2. Enter information in the Short description field and then tab to the next field.
Based on this information, the system predicts the values for the Priority, Assignment group,
and Category fields.

Note: If the system can't predict values based on the short description, these fields
remain empty.
3. Optional: Change the values in the predicted fields if needed or enter values for fields where
Predictive Intelligence has skipped the prediction.
The system doesn't overwrite user-entered values for the predicted fields.
Update cases with missing field predictions
View the list of open cases for which the prediction of category, priority, or assignment group was
skipped by the Predictive Intelligence feature.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager or admin

About this task

In the event that Predictive Intelligence cannot predict one or more case attributes for a case,
customer service agents and administrators can update this information after a case is created.
For example, the short description might not include enough detail to make a prediction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
Procedure
1. Navigate to All > Customer Service > Cases > Cases Skipped by Predictive Intelligence.
2. Select a case from the list.
3. Provide the missing information and click Update.
Configure Auto-Responder notifications
Configure the Auto-Responder feature for sharing relevant content in email notifications for
deflecting cases.

Before you begin

Role required: admin
Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).
For more information, see Activate a plugin
and Predictive Intelligence for CSM solution
definitions.

About this task

When you install and activate the Predictive Intelligence for Customer Service Management
plugin (com.snc.csm_ml), the following related plugins are also activated:
• Customer Service plugin (com.sn_customerservice)
• Predictive Intelligence for Contextual Search plugin (com.snc.contextual_search_ml)
• Email Notification Script for Contextual Search Results plugin
(com.snc.adv_cxs_results_email_script)
You can also configure the Auto-Responder feature for tasks other than customer service cases.
For more information, see Configure Auto-Responder for tasks other than cases.

Procedure
1. Follow the steps in this link: Enable Auto-Responder.
2. Follow the steps in this link: Train the similarity solution for finding Auto-Responder notification
content.
3. Optional: Follow the steps in this link: Configure the search context for Auto-Responder.
4. Optional: Follow the steps in this link: Limit the number of articles in Auto-Responder
notifications for cases.
5. Optional: Follow the steps in this link: Include advanced contextual search results in AutoResponder notifications.

Note: By default, any knowledge articles viewed in the last 30 days by the user are not
included in the email notification. You can use the getViewedContent extension
point to modify the filter out by the duration of the last viewed content.
6. Optional: Follow the steps in this link: Enable text search recommendations in AutoResponder notifications.
7. Optional: Follow the steps in this link: Include cases logged using specified communication
channels in Auto-Responder notifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
8. Optional: Follow the steps in this link: Include knowledge articles from custom portals in AutoResponder notifications.

Note: When you configure the Auto-Responder feature to use a custom portal, the
default configuration for the customer service portal and consumer service portal are not
used. Ensure that you use this configuration when you have your own custom portal and
don't want to use the customer service portal or consumer service portal.
Related topics
Using Auto-Responder for case deflections
Enable Auto-Responder
Enable the Auto-Responder feature to include content suggested for deflecting cases in email
notifications.

Before you begin

Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).
For more information, see Activate a plugin
and Predictive Intelligence for CSM solution
definitions.
Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Properties.
2. In the Auto-Responder Recommendations section, select the check
box for the Enable auto-responder recommendations property
(sn_customerservice.case.autoresponder.enable).
3. Click Save.
Train the similarity solution for finding Auto-Responder notification content
Update and train a similarity solution definition to enable the Auto-Responder feature to suggest
content by comparing the short description of a customer service case with those of existing
knowledge articles.

Before you begin

Role required: admin
Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).
For more information, see Activate a plugin
and Predictive Intelligence for CSM solution
definitions.

About this task

A similarity solution definition collects and compares your existing records to new similar
records. The Similar Knowledge Articles All similarity solution selects knowledge articles for
customer service cases from the predefined knowledge bases in the consumer service portal
and customer service portal. To select knowledge articles from any custom knowledge base in a
portal or from a knowledge base in any custom portal, you must modify this similarity solution.
For a similarity solution to work correctly, the Knowledge [kb_knowledge] table in the Knowledge
View [sn_customerservice_knowledge_view] database view must have at least the required
number of records set in the configuration of your ServiceNow instance. The default minimum
number required is 10,000.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
If the Knowledge Management Advanced plugin (com.snc.knowledge_advanced) is activated,
the tables for knowledge article templates (such as FAQ, How to, What Is, KCS Article) are also
added to the Knowledge View [sn_customerservice_knowledge_view] database view. For a
similarity solution to show results from each template type, each of the tables for the template
type must have at least the required number of records. If a table doesn’t have the required
number of records, you might not see the results from that table. For more information, see
Database View support for Predictive Intelligence .

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. In the Similarity Definitions list, search for and select the Similar Knowledge Articles All solution
definition (ml_sn_sn_customerservice_global_similar_knowledge_view_articles).
3. On the Similarity Definition form, verify the default field values for knowledge articles.

Note: If the application scope isn't set to Customer Service application, you cannot edit
the form and a warning message appears. To make the form editable, click the word here
at the end of the message.
Similarity Definition form
Field

Description

Label

Unique name for your similarity solution.

Word
Corpus

Defines which knowledge articles and cases are selected.
By default, the All Articles and Cases word corpus is available to search for
knowledge articles similar to a customer service case short description.

Note: Modify the word corpus to use the knowledge base defined for
your portal. If you have defined custom tables for knowledge articles and
article templates, you must include their fields in the word corpus content.
For more information about the word corpus and word corpus content, see
Create a word corpus .
Table

Table or database view that contains the knowledge article records. Set the
value to the Knowledge View [sn_customerservice_knowledge_view] database
view unless you use a different table or database view for storing knowledge
articles. This database view joins the Knowledge [kb_knowledge], What Is
[kb_template_what_is], How To [kb_template_how_to], FAQ [kb_template_faq],
and KCS Article [kb_template_kcs] tables for viewing all fields in a knowledge
article.
After you assign a table value, the number of records that match the filter
conditions is displayed as a link.

Note: The What Is [kb_template_what_is], How To [kb_template_how_to],
FAQ [kb_template_faq], and KCS Article [kb_template_kcs] tables are
available only if the Knowledge Management Advanced plugin is activated.
For more information, see Activate the Knowledge Management Advanced
plugin .
Fields

Fields from the Knowledge View [sn_customerservice_knowledge_view]
database view selected for similarity comparison with the case short
description. The fields must be the same as the fields you define for the Word
corpus content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
Field

Filter

Description

Filter conditions applied on the database view to filter knowledge article records
for Auto-Responder recommendations.
Click Add Filter Condition to apply conditions to the Field records you're using
as a base to retrieve your similarity results. For example, for the customer
service portal, you would set a [Workflow] [is] [Published] AND [Knowledge
base] is [Customer Service] filter condition.
For a custom portal, you select the knowledge base of the custom portal in the
[Knowledge base] condition.

Test Table

Table that contains the case records that you want to compare with knowledge
article records. Set the value to the Case [sn_customerservice_case] table
unless you use a different table for storing case records.

Test Fields Fields from the case selected for similarity matching with knowledge article
fields. By default, the short description field of a customer service case is used
for the similarity match with knowledge article fields.
Processing Dominant language of the dataset you're training on the solution definition. By
Language default, English processing is applied to all datasets. For example, if you select
Italian, the system processes the data in both English and Italian.

Note: The term "processing" indicates some of the language-specific
steps used as part of training a solution. These steps might include
tokenizing words, removing stop words, and stemming.
Stopwords Common terms in the processing language that are excluded from the search,
for example, prepositions.
When you select your processing language, the system automatically adds a
Stopwords list that uses the same language. For example, if your processing
language is Italian, the Default Italian Stopwords list appears. The Default
English Stopwords list appears by default.
Training
Frequency with which the model for the similarity solution definition must be
Frequency retrained.
Update
Frequency with which to include new records in the model for the similarity
Frequency solution definition.
For more information, see Create and train a similarity solution

.

4. Optional: In the Training Request Schedule related list, update the schedule for training the
Similar Knowledge Articles All solution definition.
By default, the training request schedule is Periodically and runs after every 30 days.
5. Click Update & Retrain.
6. Open the Similar Knowledge Articles All solution definition
(ml_sn_sn_customerservice_global_similar_knowledge_view_articles) and in the ML Solutions
related list, view the training solution progress in the Progress column.
When Progress is 100%, in the ML Solutions related list, you can include more useful content
in the Auto-Responder notification by reviewing the similarity examples based on the similarity
score and updating the similarity score threshold value.
7. Optional: Update the similarity score threshold.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
a. In the Active column, click the link for the solution.
b. Review the similarity examples by clicking the Similarity Examples related link on the ML
Solution form.
For more information, see Review solution similarity examples .
c. In the Solution Statistics related list on the ML Solution form, enter the required value in the
Similarity Score Threshold field, right-click the ML Solution form, and then click Save.
For more information, see Update your similarity score threshold .

Result

When the solution is complete, the knowledge articles similar to the fields selected for a
customer service case are sent as Auto-Responder recommendations.
Related topics
Knowledge article templates
Configuring the search context for Auto-Responder
You can configure the predefined search context for customer service cases to include relevant
search resources in Auto-Responder email notifications.
The Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml) includes
the predefined Case Email Autoresponder KB search search context for customer service
cases configured for use in the Auto-Responder feature. This search context uses the predefined
Search Knowledge Articles searcher that provides knowledge articles as search results.
By default, the Case Email Autoresponder KB search search context includes contextual
search results based on Predictive Intelligence. You can edit this search context to include any
additional resources. For more information, see Define a search context .

Note: To provide other relevant recommendations to resolve a customer service case
when Predictive Intelligence results are insufficient or unavailable, you can also enable
the text search recommendations in the Auto-Responder email notification. For more
information, see Enable text search recommendations in Auto-Responder notifications.
Limit the number of articles in Auto-Responder notifications for cases
Send the most relevant knowledge articles in Auto-Responder notifications for customer service
cases by limiting the number of knowledge articles that are included.

Before you begin
• Activate the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml). For more information, see Activate a plugin
and Predictive Intelligence for
CSM solution definitions.
• Set the application scope to Customer Service using the application picker. For more
information, see Application picker .
Role required: admin

Procedure
1. Navigate to All > Contextual Search > Table Configuration.
2. Search for Case [sn_customerservice_case].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
3. Click the Case [sn_customerservice_case] link in the Name column corresponding to the row
containing the Case Email Autoresponder KB Search search context.
4. In the Email Configurations related list, double-click the value in the Limit column for the Case
auto-responder recommendations row.
5. Enter the maximum number of knowledge articles you want to include in the Auto-Responder
email notifications for customer service cases and click the save icon ( ).
The maximum allowed limit value is 20. If you enter a limit value of more than 20, the AutoResponder email notification includes up to 20 articles only.
6. On the Table Configuration form, click Update.
Include advanced contextual search results in Auto-Responder notifications
Use scripted extension points to include the advanced contextual search results in email
notifications for content suggested by the Auto-Responder feature.

Before you begin

Role required: admin
• Activate the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml). For more information, see Activate a plugin
and Predictive Intelligence for
CSM solution definitions.
• Set the application scope to Email Notification Script for Contextual Search Results. For more
information, see Application picker .

About this task

The Email Notification Script for Contextual Search Results plugin
(com.snc.adv_cxs_results_email_script) installs the csm_AdvancedEmailSearchResults
script, CSMAdvancedEmailSearchResults script include and
CSMAdvancedEmailSearchResultsExtensionPoint extension points.
The csm_AdvancedEmailSearchResults script is preconfigured for the customer service
portal and consumer service portal.
Using extension points makes it easier to integrate customizations without actually altering the
base code. You can extend standard base functionality using customized scripts. For more
information, see Using extension points to extend application functionality .
An implementation is available in the base system for scripted extension points. You can modify
the data and add additional fields.

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. In the API Name column, search for and click
sn_adv_emailscript.CSMAdvancedEmailSearchResultsExtensionPoint.
3. On the Extension Point form, select a script include to use the

CSMAdvancedEmailSearchResultsExtensionPoint extension points.

◦ Modify the existing script by going to the Implementations related list and clicking
CaseAutoresponder.
◦ Create and register a custom script include.
For more information, see Registering custom script includes against the scripted extension
points.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1177


<!-- page 1178 -->
4. Modify the script to use the extension points available through the
CSMAdvancedEmailSearchResults script include.
You can create multiple implementations for each extension point and provide an order
number for each implementation. The implementation that has the lowest order number is
executed first.
Configuration for different extension points implementation
Configuration

Implementation

Include a custom portal and search for
knowledge articles from the knowledge
base associated with the custom portal.

Modify the updateSearchRequestConfig
extension point to include the custom portal for
your tasks other than customer service cases.

Note: Applies only to tasks other
than customer service cases.
Filter out the content by the duration of
the last viewed content.

Modify the getViewedContent extension
point by entering the last viewed content duration
in days.

Note: By default, any knowledge articles
viewed in the last 30 days by the user are
not included in the email notification.
Define the layout of the email
notifications.

Modify the printSearchResults extension
point to specify a custom layout for the AutoResponder email notifications.

5. On the Extension Point form, click Update.
Registering custom script includes against the scripted extension points
Register custom script includes against a selected scripted extension point in the application
code.
By registering the custom script, you create an extension instance record that links the scripted
extension point definition to its implementation in the custom script include.
Enable text search recommendations in Auto-Responder notifications
Configure the Auto-Responder feature to send recommendations that match a text search of a
case short description to resolve a customer service case when Predictive Intelligence results
are insufficient or unavailable.

Before you begin
• Activate the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml). For more information, see Activate a plugin
and Predictive Intelligence for
CSM solution definitions.
• Set the application scope to Email Notification Script for Contextual Search Results using the
application picker. For more information, see Application picker .
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
About this task

By default, the Auto-Responder feature is configured to send contextual search results based
on Predictive Intelligence. Knowledge articles that have significant text similarity with the short
description of a case are sent as Auto-Responder recommendations.
You can configure the Auto-Responder feature to send knowledge article recommendations that
match a text search of the case short description when the recommendations sent through the
Predictive Intelligence feature aren't sufficient or the feature is disabled.

Procedure
1. In the navigation filter, enter sys_properties.list.
2. Search for the sn_adv_emailscript.textsearch.enable property.
3. In the Value field, enter true.
4. Click Update.
Include cases logged using specified communication channels in Auto-Responder
notifications
Send Auto-Responder email notifications for customer service cases logged using a
communication channel.

Before you begin

Role required: admin
Perform the following tasks.
• Activate the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml). For more information, see Activate a plugin
and Predictive Intelligence for
CSM solution definitions.
• Set the application scope to Customer Service using the application picker. For more
information, see Application picker .
• Ensure that the required channel is already set up for use. For more information, see Configure
communication channels.

About this task

By default, the Case auto-responder recommendations notification is configured to send AutoResponder email notifications for customer service cases logged using emails. You can configure
it to include other communication channels such as web, phone, chat, social, community, alert,
and virtual agent.

Procedure
1. Navigate to All > System Notification > Notifications.
2. Search for Case auto-responder recommendations.
3. In the Name column, click the Case auto-responder recommendations link.
4. In the Conditions field, click Add Filter Condition or Add "Or" Clause to set the filter condition
for a communication channel.

Note: The default filter condition is [Channel] [is] [Email] AND [Active] [is] [true].
For example, to send Auto-Responder notifications for customer service cases logged using
a mobile phone in addition to email, you would click Add Filter Condition and create the
condition [Channel] [is] [Phone] AND [Active] [is] [true].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


<!-- page 1180 -->
Include knowledge articles from custom portals in Auto-Responder notifications
Configure the Auto-Responder feature to suggest knowledge articles from a custom portal.

Before you begin

Role required: admin
Activate the Predictive Intelligence for Customer Service Management plugin (com.snc.csm_ml).
For more information, see Activate a plugin
and Predictive Intelligence for CSM solution
definitions.

About this task

By default, the Auto-Responder feature is configured to suggest knowledge articles from
customer service portal and consumer service portal. Use this procedure only when you have
your own custom portal and don't want to use the default customer service portal or consumer
service portal.

Procedure
1. Navigate to All > Customer Service > Administration > Properties.
2. In the text box for the Custom portal URL containing the knowledge article parameter
property (sn_customerservice.case.autoresponder.customportal), enter
your custom portal URL containing a knowledge article parameter such as sys_kb_id or
kb_number.
Example format: https://<instance-name>.service-now.com/csm?
id=kb_article_view&sys_kb_id=<sys_kb_id>
3. Click Save.

What to do next

After you configure the sn_customerservice.case.autoresponder.customportal
property, you must configure the Similar Knowledge Articles All similarity solution definition
to use the knowledge base of the custom portal. For more information, see Train the similarity
solution for finding Auto-Responder notification content.
Configure Auto-Responder for tasks other than cases
Configure the Auto-Responder feature to send helpful resources for tasks other than customer
service cases.

Before you begin

Role required: admin
Perform the following tasks.
• Activate the Email Notification Script for Contextual Search Results plugin
(com.snc.adv_cxs_results_email_script). For more information, see Activate a plugin

.

• Set the application scope to the scope of your task table using the application picker. For more
information, see Application picker .
• Verify that you have defined a search context for your task to include recommended resources
in the Auto-Responder email notifications. For more information, see Define a search context .
• Verify that you have configured a table for the search context associated with your task. For
more information, see Configure table for a contextual search .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1180


<!-- page 1181 -->
Procedure
1. Configure the Notification [sysevent_email_action] table for your task to use the
csm_AdvancedEmailSearchResults script.
a. Navigate to System Notification > Notifications.
b. Select the Notification [sysevent_email_action] table for your task.
c. In the What will it contain related list, enter
${mail_script:csm_AdvancedEmailSearchResults} in the Message HTML
field.
d. Optional: Verify that notifications aren’t sent if there are no search results by entering the
hasResults() function in the Advanced condition field of the When to send related list.
The hasResults() function checks whether search results exist. You can use the return
value of the function to avoid the system from sending an email notification if there are no
search results. For more information, see Advanced conditions for email notifications .

Tip: Refer to the Case auto-responder recommendations notification that uses the
hasResults() function for returning the search results value. To view a notification,
navigate to System Notification > Notifications.
e. Select Update.
2. Map your task table configuration with the email notification for your task.
a. Navigate to Contextual Search > Table Configuration.
b. Select the task table configuration link in the Name column corresponding to the row
containing the search context for your task.
For the table that you’re configuring, be sure to do the following:
▪ Train the similarity solution for the table. For more information, see Train the similarity
solution for finding Auto-Responder notification content.
▪ Add the similarity solution in the Additional Resource Configurations tab on the Search
Context form.
c. In the Email Configurations related list, link your task table configuration with the Notification
[sysevent_email_action] table.
▪ To create another email configuration for a user field, select New.
▪ To edit an existing email configuration, select the preview email configuration for email
notification icon (

), and then in the Email Configuration window, select Open Record.

d. On the Email Configuration form, verify the default field values for your task, or fill in the
values for a custom configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1181


<!-- page 1182 -->
Email Configuration form
Field

Description

Email
Select the email notification for your task.
notification
User field

Reference field that helps narrow down the search results sent as
recommended resources in Auto-Responder email notifications. For example,
if you select Caller for the Incident [incident] table, the resources associated
only with callers are added to the Auto-Responder email notifications.

Note: This is a mandatory field for Auto-Responder. This field must be a
reference field of the User table (sys_user) or tables that extend the User
table.
Limit

Maximum number of resources you want to include in the Auto-Responder
email notifications for your task.
The maximum allowed limit value is 20. If you enter a value more than 20, the
Auto-Responder email notification includes up to 20 resources only.

e. Update or submit the Email Configuration form.
▪ For a new configuration, select Submit.
▪ For an existing configuration, select Update.
3. Optional: Enable contextual search results based on text searches in addition to search
results based on Predictive Intelligence to be included in Auto-Responder notifications.
For more information, see Enable text search recommendations in Auto-Responder
notifications.
4. Optional: Configure a custom portal and include advanced contextual search results in email
notifications.
For more information, see Include advanced contextual search results in Auto-Responder
notifications.

Set up self-service
Creating a self-service portal helps customers resolve issues independently. You can integrate
features like knowledge bases, chatbots, and appointment booking for easy access to
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1182


<!-- page 1183 -->
Customer and Consumer
Service Portals

Walk-up Experience

Conversational
Appointment Booking

Set up the Customer and
Consumer Service Portals
to provide information and
support to your customers.

Set up Walk-up Experience
to configure a contact
channel to support
both online checkin and onsite checkin to a service center.

Communities

Knowledge Management

Service catalog

Use Communities to
interact, learn, share
knowledge, troubleshoot
issues, and stay
informed about the
latest developments
and innovations within
the Customer Service
Management ecosystem.

Create and share
knowledge bases
containing articles
that provide users with
information such as selfhelp, troubleshooting,
and task resolution.

Create service catalogs to
provide your customers
with self-service
opportunities to request
items such as service
and product offerings.

Set up Conversational
Appointment Booking to
enable customers to book,
reschedule, and cancel
appointments from Virtual
Agent conversations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1183


<!-- page 1184 -->
Self-service overview

Customer and Consumer Service Portals
Create and enable self-service portals for your customers to support their needs
efficiently. Integrate these portals with knowledge bases, communities, service
catalogs, and chatbots. Additionally, provide features like walk-up experiences and
appointment booking to enhance their self-service options.
Walk-up Experience
Set up Walk-up Experience to support both online and onsite check-ins at your
service center. Configure the experience to fit the needs of your organization.
Conversational Appointment Booking
Install and set up the Conversational Appointment Booking application to enable
customers to book, reschedule, or cancel appointments through Virtual Agent
conversations.
Communities
With the Communities application, you can engage with your employees,
customers, partners, and prospects. Share knowledge and troubleshoot issues, and
stay informed about the latest developments in the Customer Service Management
ecosystem. Get quick responses by posting questions, reviewing blogs or videos,
and searching previous discussions.
Knowledge Management
Create and share knowledge bases using the Knowledge Management application.
Use the knowledge base to share articles that provide your users with information
such as self-help, problem-solving, and task resolution.
Service Catalog
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1184


<!-- page 1185 -->
Use the Service Catalog application to create and customize service catalogs so
that your customers can request items such as services and product offerings.
Additionally, you can standardize request fulfillment to maintain the accuracy and
availability of the items in the catalogs.

Configure the Customer and Consumer Service Portals
Configure the Customer and Consumer Service Portals to provide information and support for
your customers.

Before you begin

Role required: admin

About this task

The Customer and Consumer Service Portals are self-service web portals based on the
ServiceNow Service Portal application.
The Customer Service Portal supports your business-to-business (B2B) customers and the
Consumer Service Portal supports your business-to-consumer (B2C) customers.
Use the portals to provide information and support for your customers. The portals provide a
basic format that customers can use to search for information or request assistance from a
customer service agent. They include the following features:
• A header with links for different customer activities.
• A search feature that customers can use to search for information from several repositories.
• Links to information sources such as the knowledge base, the user community, and customer
support.

Note: The Customer Service Portal is automatically installed when you activate the
Customer Service plugin.
To activate the Consumer Service Portal, activate the Consumer Service plugin.
https://player.vimeo.com/video/1090650733?
h=0d29c5ff48&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479%22

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started.
3. In the Customer Service Portal (B2B) or the Consumer Service Portal (B2C) category, view the
list of tasks to configure the feature.
Customer and Consumer Service Portal configuration tasks
Task

Description

Customize the Customer Service Portal

Customize the Customer Service Portal to
meet your needs.

Activate the Consumer Service Portal

Activate the Consumer Service Portal plugin.

Customize the Consumer Service Portal

Customize the Customer Service Portal to
meet your needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1185


<!-- page 1186 -->
4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Service Portal
Activate the Consumer and Customer Service Portals
Activate the portal plugins to use the Consumer and Customer Service Portals.

Before you begin

Role required: admin

Procedure
1. Navigate to the ServiceNow store application
CSM application.

or All > System Definitions > Plugins in the

2. Install any one of the following plugins.
Plugin name

Plugin.

Customer Service Portal

com.snc.customer_service_portal

Consumer Service Portal

com.snc.consumer_service_portal

3. Select Activate.
Setup the Customer and Consumer Service Portals
Customize the Customer and Consumer Service Portals to meet your needs.

Before you begin

Role required: admin

Procedure
Navigate to All > Service Portal > Service Portal Configuration.
Some of the components that you can customize include:
• Branding: Configure the portal branding
to give your Customer Service Portal its own look
and feel. The default theme for Customer and Consumer Service portals is the Coral theme.
• Menus: Configure the portal header menu
navigation controls for your users.
• Homepage: Assign a homepage to the portal
• Widgets: Use Service Portal widgets
• Roles: Configure page security by role
or to filter them by user role.

to set up the main menu, one of the main
.

to define the content in your portal.
to either set up pages to be public (no login required)

Configure AI Search for the Customer and Consumer Service Portals
You must configure the Customer and Consumer Service Portals to use AI Search.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1186


<!-- page 1187 -->
Before you begin

You must install a CSM or CSP portal and AI Search integration for CSM and CSP Portals.
Role required: admin, sp_admin

About this task

AI Search is inactive by default and you must enable it by updating the portal record.

Procedure
1. Navigate to All > Service Portal > Portals and open a portal record.
2. Select Customer Support for csm portal or select Customer Service for CSP portal.
3. Select the Enable AI Search check box.
4. In the Search Application field, search and select either CSM Portal Default Search
Application or CSP Portal Default Search Application for CSM and CSP portals respectively.
A search application configuration defines search experience settings, such as the search
engine, search results limit, and suggestions limit. A search application configuration is
selected by default, but you can select a different configuration if needed.

Note: You might have to configure the form layout to add Search Application field on
the form. For more information about adding fields to a form, see Configuring the form
layout .
5. In the Search Results Configuration field, search and select either CSM Portal Search or CSP
Portal Search.
A search result configuration defines how search results are displayed. A search result
configuration is selected by default, but you can select a different configuration if needed.

Note: You might have to configure the form layout to add Search Results Configuration
field on the form. For more information about adding fields to a form, see Configuring the
form layout .
6. Select Update.
7. Navigate to Page Route Maps and enable the CSM AI Search Home Page route map for CSM
and CSP AI Search Home Page for CSP as they’re inactive by default.
Enable AI search in the Customer and Consumer Service Portals for unauthenticated users
An administrator activates the AI search widgets so that guest users logging in to the Customer
and Consumer Service Portals can use the AI search feature.

Before you begin

Role required: admin
You must configure AI Search for the Customer and Consumer Service Portals. For more
information, see Enable and configure AI Search in Service Portal .

Procedure
1. Navigate to All > Service Portal > Widgets.
2. Search for Typeahead Search.
3. Click Typeahead Search.
4. Select the Public check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1187


<!-- page 1188 -->
5. Click Update.
6. Repeat the steps for the AI Search Assist widget.
Enabling guest users to submit a catalog item on the Customer Service Portal
Configure customer service portal to enable guest users to access and submit catalog item.
Guest users or logged out users can’t access catalog items by default. You must change the
accesses for the catalog items and its related services to make a catalog item available for guest
users.

Changes required to enable guest user access
Make the following items public to enable logged out users to request catalog items:
Items that must be made public for guest user access
Item

Required changes

Portal pages and widgets

Enable public access for those portal pages
and widgets that are used to display the
following:
• list of catalog items
• catalog item form
• Home page or browse catalog page to which
the users are redirected to after submitting
the catalog item
For details, see Enable public access on a
service portal page and Enable public access
on widgets.

Catalog categories

Enable public access for those catalog
categories that enables the guest users to
browse the list of items on the widget.
For details, see Enable public access for
categories for the catalog items.
It is optional to make these items public

Catalog items

Enable public access for the catalog items and
their forms that must be displayed to the guest
users.
For details, see Enable public access for a
catalog item.

Note: Configure the catalog item
script to display post submission
confirmation message and redirection
to an appropriate page. For details, see
Configure catalog item script to display
confirmation message and redirect the
guest user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1188


<!-- page 1189 -->
Items that must be made public for guest user access (continued)
Item

Required changes

Catalog item variables and variable sets

Enable public access for the catalog item
variables and variable sets that should be
displayed on the submit form for guests.
For details, see Enable public access for a
catalog item variable and variable set.

Catalog item APIs

Enable public access for the catalog item APIs
to allow submitting the form.
For details, see Enable public access on REST
APIs.

Note: Introduce rate limits on the public
REST APIs to avoid excessive use or
abuse of publicly available catalog items.
For details, see Apply rate limit on REST
APIs.
Enable public access on a service portal page
Configure service portal pages used to display the catalog item to enable public access.

Before you begin

Role required: admin, catalog_admin

About this task

Enable public access to the pages that are used to display the following:
• list of catalog items
• catalog item form
• redirect page displayed after users submit the catalog item

Procedure
1. Navigate to All > Service Portal > Pages.
2. Search and select the pages used to display catalog items on the portal.
For example, you can search for the following out-of-the-box pages:
For portals:
◦ csm_sc_category (browse page)
◦ sc_category (browse page)
◦ sc_cat_item (form page)
◦ csm_sc_cat_item (form page)
For Engagement Messenger:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1189


<!-- page 1190 -->
◦ cwf_sc_category (browse page)
◦ sc_cat_item (form page)
◦ sc_cat_item (form page)
3. Select the Public check box.

4. Select Update.

Result

The pages used to display the catalog items are made public.
Enable public access on widgets
Configure service portal widgets to enable public access.

Before you begin

Role required: admin, catalog_admin

About this task

Enable public access to the widgets that are used to display the following:
• list of catalog items
• catalog item form

Procedure
1. Navigate to All > Service Portal > Widgets.
2. Search and select the widgets used to display catalog items on the portal.
For example, you can search for the following out-of-the-box widgets:
◦ SC Catalog Item
◦ SC Order Guide
◦ Catalog Checkout Widget (if two-step checkout is enabled)
◦ SC Order Status
3. Select the Public check box.

4. Select Update.

Result

The widgets used to display the catalog items are made public.
Enable public access for categories for the catalog items
Configure categories of a catalog item to enable access for guest user. This is only when you
want to provide browsing experience to the guest users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1190


<!-- page 1191 -->
Before you begin

Role required: admin, catalog_admin

About this task

Enable public access for categories that should be made available for guest users to browse the
list of items on the widget.

Procedure
1. Find the catalog items.
a. Navigate to All > Service Catalog > Catalog Definitions > Maintain Categories.
b. Search and select the required category.
2. Make the categories available for guest user.
a. Select the Categories related list.
b. Select the available Catalog Category item.
c. Select the Available for related list.
d. Select Edit.
e. Search and move Guest user from Collection to Available for List.

f. Select Save.
g. Select Update.
3. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1191


<!-- page 1192 -->
Result

The required categories are made public. Guest users can now view items under these
categories.
Enable public access for a catalog item
Configure a catalog item to enable public access.

Before you begin

Role required: admin, catalog_admin

Procedure
1. Find the catalog items.
a. Navigate to All > Service Catalog > Catalog Builder.
b. Select Catalog items.
c. Search and select the required item.
2. Edit the catalog item.
a. Select Edit.
b. Select the more actions icon (

) and select Edit in advanced view.

c. Select the Available for related list.
d. Select Edit.
e. Search and move Guest User from Collection to Service Category Request.
3. Select Save.
4. Select Update.
Configure catalog item script to display confirmation message and redirect the guest user
Configure the catalog item script to display a confirmation message and redirect the guest user
to homepage or browse catalog page.

Before you begin

Role required: admin, catalog_admin

Procedure
1. Find the catalog items.
a. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items.
b. Search and select the required item.
2. Make changes to the script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1192


<!-- page 1193 -->
a. Select the What it will contain tab and scroll down to the Script section.

b. Paste the following code and update it as per your requirement
gs.addInfoMessage("Your case has been submitted"); // Info
message to be displayed
producer.portal_redirect =
"csm?id=csm_sc_category&catalog_id=-1"; // portal page to
redirect to
3. Select Update.

Result

The catalog item script is configured to display a confirmation message and redirect guest users.
Enable public access for a catalog item variable and variable set
Configure input variables and variable sets to be displayed on the submit form. Enable guest
users to access these items.

Before you begin

Role required: admin, catalog_admin

About this task

The following video demonstrates the process of enabling public access for a catalog item
variable and variable set.
https://player.vimeo.com/video/1132209911?
h=7138aa4c44&amp;badge=0&amp;autopause=0&amp;%85

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1193


<!-- page 1194 -->
Procedure
1. Find the catalog items.
a. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items.
b. Search and select the required item.
2. Make all available catalog item variables public.
a. Select the Variable related list.
b. Open a variable.
c. Select Permission.
d. Select the pencil icon (

) for Create roles.

e. In the Create Roles pop-up window, search and move public from Available to Selected.
f. Select Done.
g. Select Update.
A single catalog item variable is public. Repeat these steps to make other catalog item
variables public.
3. Make catalog item variable sets public.
a. Select the Variable Sets related list.
For more information about variable sets, see Service catalog variable sets

.

b. Open a variable set.
The Variable Set page opens.
c. From the Variables tab, open a variable.
d. Select Permissions.
e. Select the pencil icon (

) for Create roles.

f. In the Create Roles pop-up window, search and move public from Available to Selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1194


<!-- page 1195 -->
g. Select Done.
h. Select Update.
A single catalog item variable set is public. Repeat these steps to make other catalog item
variable sets public.
4. Select Update.

Result

The variables and variable sets used to display catalog item fields are made public.
Enable public access on REST APIs
Configure Scripted REST APIs to enable public access.

Before you begin

Role required: admin, catalog_admin, web_service_admin

Procedure
1. Navigate to All > System Web Services > Scripted Web Services > Scripted REST APIs.
2. Search and select for the type of API that you want to edit.
You can search for the following types of REST APIs:
◦ Service Catalog API
◦ Submit a Record Producer
◦ Validate Variable Regex (If the item consists of a variable which requires Regex Validation)
◦ Checkout Order Guide
◦ Variable display value
◦ Check requested for delegation on item
3. Select theResources related list.
4. Search and select Buy Item in Resources.
5. Scroll down and clear the Requires authentication check box under Security.
6. Select Update.
Apply rate limit on REST APIs
Apply rate limit to REST APIs to avoid excessive use or abuse of publicly available catalog items.

Before you begin

Role required: admin, catalog_admin, web_service_admin

About this task

Rate limit restricts the uncontrolled creation of publicly available catalog items, mitigating risks
associated with malicious actors and automated bots.

Procedure
1. Navigate to All > System Web Services > Rate Limit Rules.
2. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1195


<!-- page 1196 -->
3. On the REST API Rate Limit Rule form, fill in the fields.
For a description of the field values, see Rate limit rule form for guest user access to catalog
items.
4. Select Submit.

Result

A rate limit is applied to the publicly available APIs.
Related topics
Create an inbound REST API rate limit
AI Search Assist for authenticated external users
Enable AI Search Assist in the Customer and Consumer Service Portals for authenticated
external users with the snc_external role.
Configure AI Search Assist Actions for authenticated external users
Enable the AI Search Assist Actions to search knowledge articles in the Customer and Consumer
Service Portals. It applies for authenticated external users with the snc_external role.

Before you begin

Activate Customer Service Management
You must configure AI Search for the Customer and Consumer Service Portals. For more
information, see Enable and configure AI Search in Service Portal .
You must enable the Typeahead Search and AI Search Assist for the authenticated external
users to use the AI search feature. For more information on the widgets, see Typeahead Search
widget
and AI Search Assist widget .
Role required: admin

Procedure
1. Navigate to All > System Web Services > Scripted Web Services > Scripted REST APIs.
2. On the Scripted REST APIs page, search and select AI Search Assist Action (Internal API).
3. On the AI Search Assist Actions (Internal API) page, in the Resources related list, select Order
[sc_cat_item].
4. On the Order [sc_cat_item] page, in the Security tab, do the following:
a. Select the Requires authentication to turn on the authentication.
b. Clear the Requires SNC Internal checkbox to turn off the feature.
c. Select Update.
5. On the AI Search Assist Actions (Internal API) page, in the Resources related list, select
Resolves my issue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1196


<!-- page 1197 -->
6. On the Resolves my issue page, do the following:
a. Select the Requires authentication to turn on the authentication to access resource.
b. Clear the Requires SNC Internal check box.
c. Select Update.
7. Select Update.
Configure AI Search Assist in the Customer and Consumer Service Portals for authenticated
external users
Enable the AI Search Assist to search knowledge articles in the Customer and Consumer Service
Portals. It applies for authenticated external users with snc_external role.

Before you begin

Activate Customer Service Management
You must configure AI Search for the Customer and Consumer Service Portals. For more
information, see Enable and configure AI Search in Service Portal .
You must enable the Typeahead Search and AI Search Assist for the authenticated external
users to use the AI Search feature. For more information on the widgets, see Typeahead Search
widget
and AI Search Assist widget .
Role required: admin

Procedure
1. Navigate to All > System Web Services > Scripted Web Services > Scripted REST APIs.
2. On the Scripted REST APIs page, search and select AI Search Assist (Internal API).
3. On the AI Search Assist (Internal API) page, in the Resources related list, select search.
4. On the search page, in the Security tab, do the following:
◦ Select the Requires authentication to turn on the authentication to access resource.
◦ Clear the Requires SNC Internal check box.
◦ Select Update.
5. Select Update.
Activate the standard ticket page for upgrade customers
If you have upgraded your instance, redirect the ticket page to the standard_ticket page in the
Service Portal and view requests on the standard ticket page.

Before you begin

Role required: admin or sp_admin

About this task

For new customers, the standard ticket page is enabled by default. For upgrade customers, you
must enable it.

Procedure
1. Navigate to All > Service Portal > Page Route Maps.
2. Search for Customer Service Management ticket route maps.
3. Set the value to true in the Active column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1197


<!-- page 1198 -->
4. Click the name of the page route map.
5. Click here to edit the record.
6. Select the Active check-box.
7. Click Update.
Related topics
Standard ticket page
Configure the standard ticket page for cases
You can configure the standard ticket page for customer service cases from where users can
view the details of a case in the Service Portal.

Before you begin

Role required: admin
or sp_admin

Procedure
1. Navigate to All > Standard Ticket > Standard Ticket Configuration.
2. Click sn_customerservice_case, csm_order case, sn_customerservice_task, or
customer_project_task which is available by default.

Note: You can add your own case types and add new configurations for the required
tables. For more information, see Configure the standard ticket page

.

3. Click here to edit the record.
4. Edit the fields on the Ticket Configuration form as required.
For example, you can add tabs to the existing Activity and Attachments tabs in the Info fields
field under the Info Region tab.
5. Click Update.
Related topics
Configure the standard ticket page
Activate the sitemap configuration and definition records for the Consumer Service Portal
Include knowledge articles and catalogs in your sitemap by activating the sitemap configuration
and definition records.

Before you begin
• Activate Sitemap Generator
• Verify that an unauthenticated user can access the knowledge base article and catalogs by
accessing it as a guest user.
• Verify that the Public option is selected on the Knowledge Article form or Service Catalog page
form.
Role required: admin

About this task

Beginning with the Zurich release, the Sitemap Generator configuration is available with the base
system and is inactive by default.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1198


<!-- page 1199 -->
Procedure
1. Navigate to All > Sitemap Generator > Sitemap Configuration.
2. In the UX Sitemap Configurations [sys_ux_seo_sitemap_config] table, select the
sitemap_config_CSP record.
3. Enable the generation of sitemaps.
a. On the form, select the Active check box.
b. In the Sitemap Config Definition related list, double-click the Type field and select the true
option from the list.
c. Select the Save icon (

).

4. Select Update.

Result

All active sitemaps regenerate once in a day and include content from any of their active sitemap
definitions.
Limit access to product model data on the Customer Service Portal
Use a system property to limit customer access to data in the Product Models table.
From the Customer Service Portal, product model data can be accessed by
external users with the sn_esm_user role. System administrators can use the
csm_cmdb_model.customer_visible_flag system property and the Customer Visible
field on the Product Models table (cmdb_model) and child tables to limit this access.
The csm_cmdb_model.customer_visible_flag system property enables the
Customer Visible field for the tables listed below. By default, this property is set to false. When
set to true, the system uses the setting in the Customer Visible field to determine access to
product model data on the Customer Service Portal.
• Product Models table (cmdb_model)
• Software Models table (cmdb_software_product_model)
• Application Models table (cmdb_application_product_model)
• Consumable Models table (cmdb_consumable_product_model)
• Facility Models table (cmdb_facility_product_model)
• Hardware Models table (cmdb_hardware_product_model)
The Model Categories table (cmdb_model_category) does not have a Customer Visible field.
Access to model categories data is restricted by using the Customer Visible field on the Product
Model table. Only the categories for the products which are visible in the Product Model table
will be visible in the Model Categories table.
For upgrades from Jakarta to madrid, the Customer Visible field is added to each record in the
Product Models table and set to false.
To limit access:
1. Set the csm_cmdb_model.customer_visible_flag system property to true.
2. Customize the Product Models table (cmdb_model) and add the Customer Visible column.
3. Set the value of the Customer Visible field to true for the product models that should be visible
to external customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1199


<!-- page 1200 -->
External users can see these product using these product models if the products are linked to
the customer account.
View the number of portal bot-based sessions
Ensure customers are not incorrectly billed by viewing the number of bot-based sessions. CSM
portal usage sessions are billable to customers but sometimes customers are unnecessarily
charged for sessions generated due to bots, crawlers, and DDOS attacks.

Before you begin

Role required: admin, usage_admin

About this task

For all new portals you create, bot sessions are captured in the Service Portal Bot Sessions
[ua_sp_bot_session] table and all session types are captured in the Service Portal Usage
[ua_sp_usage] table.

Procedure
1. Navigate to All > Reports > View/Run.
2. Enter customer portal usage in the Search field.
3. Select the Customer Portal Usage report from the drop-down list.
The report shows the session count for all sessions and a separate count of sessions
generated due to bots, crawlers, and DDoS attacks.
Approve a registration request with an invalid registration code
Approve a registration request from a user that was submitted from the Customer Service Portal
with an invalid registration code.

Before you begin

Role required: sn_customerservice.customer_admin

Procedure
1. Navigate to All > Customer Service > Administration > Pending Registration Requests.
2. Select a registration request with a state of Pending.
3. Select an Account for the requester.
4. Click Update.
The registration request is sent to the customer administrator of the assigned account.
Multi-factor authentication for Customer and Consumer Service Portals
Multi-factor authentication, also known as two-step verification, is a security requirement that
asserts a user enter more than one set of credentials.
Enable multi-factor authentication for Customer and Consumer Service Portal users so that
access to the self-service web portals is more secure from potential vulnerabilities. For more
information, see Multifactor authentication (MFA) .

Multi-factor authentication properties
Use properties to enable role-based multi-factor authentication criteria and configure the
behavior.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1200


<!-- page 1201 -->
Properties for multi-factor authentication
Property

Description

Enable Multi-factor authentication

Select this check box to enable users and
administrators to use this feature.

[glide.authenticate.multifactor]

• Type: enabled | disabled
• Default value: enabled
• Location: Multi-factor Authentication >
Properties

Number of times a user can bypass setting up
multi-factor authentication

Enter a number that represents how many
times a user can skip the additional passcode
requirement, allowing them to log in even
[glide.authenticate.multifactor.setup.bypass.count]
without their mobile device. If you disable
this feature and then re-enable it, the counter
starts over again.
• Type: string
• Default value: 3
• Location: Multi-factor Authentication >
Properties
The time in minutes, the one-time code sent to Enter a number in minutes that specifies how
user's email address is valid for
long the reset code is valid. See Log on with
multi-factor authentication .
[glide.multifactor.onetime.code.validity]
• Type: string
• Default value: 10
• Location: Multi-factor Authentication >
Properties
Additional time in seconds for which the code
will be valid to accommodate for the clock
skew. Max value is 60 seconds.
[glide.authenticate.multifactor.clock_skew]

Enter a number in seconds with a maximum of
60.
By default, the instance validates the code
entered by you against the single appgenerated code generated at whatever the
current time is. You can skew the time
window with this property and allow one or
more codes generated during a time window
to be considered valid.
The property's value is used in the following
calculation: current time - x/2 and
current time + x/2, where 'x' is the
value of this property. If you use the value
of 10, for example, the instance considers
any codes generated by the app between
the time range [the current time 5 seconds] and [current time + 5
seconds] to be valid.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1201


<!-- page 1202 -->
Properties for multi-factor authentication (continued)
Property

Description

Use this property to help prevent log in issues
where you’re unable to enter the correct code
in the default time allotted.

Configure roles for multi-factor authentication
Add the following external roles to the multi-factor roles:
• sn_customerservice.customer
• sn_customerservice.consumer
Users with these roles are required to use multi-factor authentication. For more information, see
Configure user-based multi-factor criteria .

Configure Business Portal
Configure the business portal to provide information and support for your customers.

Before you begin

Role required: admin

About this task

The Business Portal is a self-service web portals based on the Service Portal application.
The Business Portal supports your business-to-business (B2B) customers.
https://player.vimeo.com/video/1083575309?
h=447472a1c0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Use the portals to provide information and support for your customers. The portals provides
ready to use features that require minimal setup. These include:
• Header and footer with links for different customer activities.
• Home page provides a summary of essential items to the logged-in user.
• Hierarchical menu to systematically navigate to different portal pages.
• Unified browse experience for knowledge and catalog through taxonomy topics.
• List pages to browse, search, and filter through records of cases, products, orders, and others.
• Record view pages to view key information, related actions, related lists, and quick links of a
record.
You can add additional self-service capabilities such as order management by installing the
respective plugin.

Note: The Business Portal Store app is automatically installed when you install the
Customer Service Portal store app (from version 24.0.0 and above). For details, see Activate
the Consumer and Customer Service Portals.

Procedure
1. Navigate to All > Service Portal > Portals.
2. On the Service Portals page, in the Title column, enter *business portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1202


<!-- page 1203 -->
3. Select Business Portal.
A page opens in your instance where you can configure the Business Portal.
4. Clear Inactive check box.

Note: The business portal is inactive by default.
5. Select Update.
You can access the business portal using the URL, <servicenow instance URL>/
business_portal.
Related topics
Service Portal
Setup the Business Portal
Customize the business portal to meet your needs.

Before you begin

Role required: admin

Procedure
Navigate to All > Service Portal > Service Portal Configuration.
Some of the components that you can customize include:
• Branding: Configure the portal branding
to give your business portal its own look and feel.
The Coral Theme is available for the business portal.
• Menus: Update the base system menu or add a new one. For details, see Configure the portal
header menu .
• Home page: Update the default home page by updating the widget configuration or assign a
custom home page. For details, see Assign a homepage to the portal .
• Widgets: Use configurable portal widgets to define the content in your portal. For details, see
Configurable Portal widget library.
• Header: Update the header configuration according to your need. For details, see Configure
the Portal Polaris Header widget for your portal
• Footer: Customize information at the bottom of the page. For details, see Configure the Portal
Polaris Footer widget.
• Taxonomy: Configure a taxonomy on Business Portal to define topics relevant to your users.
• List pages: Browse, search & filter through records of cases, products, orders, and others. For
details, see Add and configure the Portal Data List widget
• Roles: Configure page security by role
or to filter them by user role.

to either set up pages to be public (no login required)

• Search sources: Configure a search source for the portal to describe the behavior and source
of searchable data. For details, see Define a search source .
• Knowledge base: Configure a knowledge base for the portal to view the associated knowledge
articles. For details, see Configure knowledge bases for a portal .
• Catalog: Configure a catalog for business portal. For details, see Configure a catalog in Service
Portal .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1203


<!-- page 1204 -->
Setup the theme for Business Portal
Customize the theme of the business portal to add font and theme style sheets.

Before you begin

Role required: admin

About this task

The default theme for the business portal is the Coral Theme. You can use your own theme
according to your branding.
You must customize your theme to add font or theme size-related style sheets.

Procedure
1. Navigate to All > Service Portal > Themes.
2. Search and select the required theme.
3. Add font and theme style sheets.
a. On the theme record, select the CSS Includes in the related list.
b. Select Edit.
c. Add the following style sheets from the Collection list to the CSS Includes list:
Edit CSS includes list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1204


<!-- page 1205 -->
▪ portal-polaris-set-base-font
▪ portal-polaris-rem-px-theme
▪ portal-polaris-kb-rem-px-theme
d. Select Save.
4. Hover over the style sheet and select the preview icon (
order of added style sheets.

) then select Open Record to set the

a. Set the order of portal-polaris-set-base-font as the lowest.
b. Set the order of portal-polaris-rem-px-theme as second highest.
c. Set the order of portal-polaris-kb-rem-px-theme as the highest.

Note: Convert any font or theme size from rems to pixel in the CSS with a conversion
factor of 10. For example, 10 rems should be changed to 100 pixel.
5. Select Update.
Configure a taxonomy on Business Portal to define topics relevant to your users
Configure and manage the taxonomy on the Business portal to meet your needs.

Before you begin

Role required: admin or sp_admin

About this task

Add or edit taxonomy and child topics to the business portal. Taxonomy enables you to define
topics which are relevant to your users.
For example, topics relevant to an e-commerce site can be orders, returns, payments, and
others. Your users can find the relevant topic and then use available articles and catalog items of
that topic.

Procedure
1. Navigate to All > Service Portal > Portals.
2. Search and select *business portal in the Title column on the Service Portals page.
3. Select Business Portal.
If a message appears about the application scope, select here to be able to edit the record.
4. In Related Lists, select Taxonomy.
5. Select Edit.
6. On the Edit Members page, move the required taxonomy from Collection to the Taxonomy
List.
You can also create a taxonomy. For more information, see Create taxonomy .

Note: Only one taxonomy can be associated with a portal.
7. Select Save.

What to do next

Create and associate topics to the new taxonomy and associate catalog items and knowledge
articles to the topics created. For details, see Associate connected content to a topic .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1205


<!-- page 1206 -->
Related topics
Create and associate topics
Configure AI Search for Business Portal
Configure Business Portal to use AI Search.

Before you begin

Role required: admin, sp_admin

About this task

AI Search is disabled by default. You can enable it by updating the portal record.

Procedure
1. Navigate to All > Service Portal > Portals and open a portal record.
2. Select Business Portal.
3. Select the Enable AI Search check box.
4. In the Search Application field, search and select the required search application.
A search application configuration defines search experience settings, such as the search
engine, search results limit, and suggestions limit. A search application configuration is
selected by default, but you can select a different configuration if needed.
You can modify existing search application configurations such as CSM Portal Default Search
Application, or create and configure your own search application configurations with AI Search
specified as the search engine. For details, see Create a search application configuration for AI
Search .

Note: You may need to configure the form layout to add Search Application field on
the form. For more information about adding fields to a form, see Configuring the form
layout .
5. In the Search Results Configuration field, search and select the required search results
configuration.
A search result configuration defines how search results are displayed. A search result
configuration is selected by default, but you can select a different configuration if needed.
You can modify existing search results configuration record such as CSM Search or create and
configure your own search results configuration.

Note: You may need to configure the form layout to add Search Results Configuration
field on the form. For more information about adding fields to a form, see Configuring the
form layout .
6. Select Update.
Configure the standard ticket page for cases
Configure the standard ticket page for cases from where users can view the details of a case in
the Business portal.

Before you begin

Role required: admin or sp_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1206


<!-- page 1207 -->
Procedure
1. Navigate to All > Standard Ticket > Standard Ticket Configuration.
2. Select sn_customerservice_case, or sn_customerservice_task which is available by default.

Note: You can add your own case types and add new configurations for the required
tables. For more information, see Configure the standard ticket page

.

3. Select here to edit the record.
4. Edit the fields on the Ticket Configuration form as required.
For example, you can add tabs to the existing Activity and Attachments tabs in the Info fields
field under the Info Region tab.
5. Select Update.
Related topics
Configure the standard ticket page
Enable AI search in the Business Portals for unauthenticated users
Activate the AI search widgets to allow guest users logging in to the Business portal to use the AI
search feature.

Before you begin

Role required: admin
You must configure AI Search for the business portal. For more information, see Enable and
configure AI Search in Service Portal .

Procedure
1. Navigate to All > Service Portal > Widgets.
2. Search for Typeahead Search.
3. Select Typeahead Search.
4. Select the Public check box.
5. Select Update.
6. Repeat the steps for the AI Search Assist widget.
AI Search Assist for authenticated external users
Enable AI Search Assist in the business portal for authenticated external users with the
snc_external role.
Configure AI Search Assist Actions for authenticated external users in Business Portal
Enable the AI Search Assist Actions to search knowledge articles in the business portal. It
applies for authenticated external users with the snc_external role.

Before you begin

You must configure AI Search for the business portal. For more information, see Enable and
configure AI Search in Service Portal .
You must enable the Typeahead Search and AI Search Assist for the authenticated external
users to use the AI search feature. For more information on the widgets, see Typeahead Search
widget
and AI Search Assist widget .
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1207


<!-- page 1208 -->
About this task

https://player.vimeo.com/video/1102476331?
h=777fd80fa4&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > System Web Services > Scripted Web Services > Scripted REST APIs.
2. On the Scripted REST APIs page, search and select AI Search Assist Action (Internal API).
3. On the AI Search Assist Actions (Internal API) page, in the Resources related list, select Order
[sc_cat_item].
4. On the Order [sc_cat_item] page, in the Security tab, do the following:
a. Select the Requires authentication to turn on the authentication.
b. Clear the Requires SNC Internal checkbox to turn off the feature.
c. Select Update.
5. On the AI Search Assist Actions (Internal API) page, in the Resources related list, select
Resolves my issue.
6. On the Resolves my issue page, do the following:
a. Select the Requires authentication to turn on the authentication to access resource.
b. Clear the Requires SNC Internal check box.
c. Select Update.
7. Select Update.
Configure AI Search Assist for authenticated external users in the Business Portal
Enable the AI Search Assist to search knowledge articles in the Business Portal.

Before you begin

Role required: Authenticated external users with snc_external role
Activate Customer Service Management
You must configure AI Search for the Business Portal. For more information, see Enable and
configure AI Search in Service Portal .
You must enable the Typeahead Search and AI Search Assist for the authenticated external
users to use the AI Search feature. For more information on the widgets, see Typeahead Search
widget
and AI Search Assist widget .
Role required: admin

Procedure
1. Navigate to All > System Web Services > Scripted Web Services > Scripted REST APIs.
2. On the Scripted REST APIs page, search and select AI Search Assist (Internal API).
3. On the AI Search Assist (Internal API) page, in the Resources related list, select search.
4. On the search page, in the Security tab, do the following:
◦ Select the Requires authentication to turn on the authentication to access resource.
◦ Clear the Requires SNC Internal check box.
◦ Select Update.
5. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1208


<!-- page 1209 -->
Limit access to product model data on the Business Portal
Use a system property to limit customer access to data in the Product Models table.
External users can access the product model data from the Business
Portal with the sn_esm_user role. System administrators can use the
csm_cmdb_model.customer_visible_flag system property and the Customer Visible
field on the Product Models table (cmdb_model) and child tables to limit this access.
The csm_cmdb_model.customer_visible_flag system property enables the
Customer Visible field for the tables listed below. By default, this property is set to false. When
set to true, the system uses the setting in the Customer Visible field to determine access to
product model data on the Business Portal.
• Product Models table (cmdb_model)
• Software Models table (cmdb_software_product_model)
• Application Models table (cmdb_application_product_model)
• Consumable Models table (cmdb_consumable_product_model)
• Facility Models table (cmdb_facility_product_model)
• Hardware Models table (cmdb_hardware_product_model)
The Model Categories table (cmdb_model_category) does not have a Customer Visible field.
Access to model categories data is restricted by using the Customer Visible field on the Product
Model table. Only the categories for the products which are visible in the Product Model table
will be visible in the Model Categories table.
For upgrades from Jakarta to madrid, the Customer Visible field is added to each record in the
Product Models table and set to false.
To limit access:
1. Set the csm_cmdb_model.customer_visible_flag system property to true.
2. Customize the Product Models table (cmdb_model) and add the Customer Visible column.
3. Set the value of the Customer Visible field to true for the product models that should be visible
to external customers.
External users can see these product using these product models if the products are linked to
the customer account.
Multi-factor authentication for Business Portal
Enable multi-factor authentication for business portal users so that access to the self-service
web portals is more secure from potential vulnerabilities.
Multi-factor authentication, also known as two-step verification, is a security requirement that
asserts a user enter more than one set of credentials. For more information, see Multi-factor
authentication .

Multi-factor authentication properties
Use properties to enable role-based multi-factor authentication criteria and configure the
behavior.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1209


<!-- page 1210 -->
Properties for multi-factor authentication
Property

Description

Enable Multi-factor authentication

Select this check box to allow users and
administrators to use this feature.

[glide.authenticate.multifactor]

• Type: enabled | disabled
• Default value: enabled
• Location: Multi-factor Authentication >
Properties

Number of times a user can bypass setting up
multi-factor authentication

Enter a number that represents how many
times a user can choose to skip the additional
passcode requirement. This gives your users
[glide.authenticate.multifactor.setup.bypass.count]
the ability to still log in the instance if they do
not have their mobile device with them. If you
disable this feature and then re-enable it, the
counter starts over again.
• Type: string
• Default value: 3
• Location: Multi-factor Authentication >
Properties
The time in minutes, the one time code sent to Enter a number in minutes that specifies how
user's email address is valid for
long the reset code is valid. See Log on with
multi-factor authentication .
[glide.multifactor.onetime.code.validity]
• Type: string
• Default value: 10
• Location: Multi-factor Authentication >
Properties
Additional time in seconds for which the code
will be valid to accommodate for the clock
skew. Max value is 60 seconds.
[glide.authenticate.multifactor.clock_skew]

Enter a number in seconds with a maximum of
60.
By default, the instance validates the code
entered by the user against the single appgenerated code generated at whatever the
current time is. You can skew the time
window with this property and allow one or
more codes generated during a time window
to be considered valid.
The property's value is used in the following
calculation: current time - x/2 and
current time + x/2, where 'x' is the
value of this property. If you use the value
of 10, for example, the instance considers
any codes generated by the app between
the time range [the current time 5 seconds] and [current time + 5
seconds] to be valid.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1210


<!-- page 1211 -->
Properties for multi-factor authentication (continued)
Property

Description

Use this property to prevent log in issues
where the user is unable to enter the correct
code in the default time allotted.

Configure roles for multi-factor authentication
Add the external role sn_customerservice.customer to the multi-factor roles.
Users with this role is required to use multi-factor authentication. For more information, see
Configure user-based multi-factor criteria .

Configure Walk-up Experience for Customer Service Management
Configure various aspects of Walk-up Experience based on the specific requirements of your
organization. Walk-up Experience users with the sn_csm_walkup.walkup_admin role and
administrators can activate and configure the application to meet specific requirements.

Before you begin

Role required: admin

About this task

There is a sequence of tasks that enable you to configure CSM Walk-up Experience. Perform
these tasks based on the plugin you activated.
You can configure appointments, decide when to send notifications to users, establish and
configure physical queue locations and operating schedules, integrate with CSAT surveys, and
associate stockrooms with queue locations. You can also customize your Walk-up Experience
portal with a unique logo and branding.
To configure CSM Walk-up Experience, use the configuration tasks listed in the table below
which takes you through the entire configuration process.

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration.
2. Complete the following tasks to configure the CSM Walk-up Experience feature.
CSM Walk-up Experience configuration tasks
Task

Description

Activate CSM Walk-up Experience.

Activate the Walk-up for CSM plugin
(com.snc.walkup_for_csm).

Note: This plugin includes demo data.
Click Walk-up Locations for configuring
locations.

Create walk-up location queues with custom
schedules, assignment groups, average wait
time, and more. For more information about
configuring locations, see Configure Walk-up
Experience locations.

Click Schedules.

View, create, or modify walk-up venue
schedules, such as 8-5 weekdays, and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1211


<!-- page 1212 -->
Task

Description

associate them to the walk-up location
queues. For more information about
configuring schedules, see Configure Walkup Experience schedules.
Click Appointment Configurations for
configuring appointments.

Click Portal Configurations for configuring a
portal.

Create service configurations for individual
walk-up queue locations. You can configure
schedules, number of appointments allowed
per day, how far in the future users can
book appointments, and more. For more
information about configuring appointments,
see Configure appointment booking.
Create and modify custom Walk-up
Experience online and on-site service
portals. For more information about
configuring the portal, see Configure the
Walk-up Experience portal.

Click Notifications for configuring
notifications.

Access and configure alerts that keep
users and fulfillers informed of events that
concern them. For more information about
configuring notifications, see Configure Walkup Experience notifications.

Surveys

Access customer satisfaction surveys and
enable public access to the surveys, set
survey trigger conditions, and view user
responses. For more information about
configuring schedules, see CSM Walk-up
Experience customer satisfaction surveys.

Walk-up Experience for Customer Service Management
®

The ServiceNow Walk-up Experience for Customer Service Management application enables
you to set up a contact channel to support both online check-in and onsite check-in to a preestablished walk-up service center.
Walk-up Experience aims to support users and significantly improve their satisfaction through a
fast in-person support. Employees and business guests can get real-time, in-person help with
their issues.
User personas and roles are defined as follows:
Requesters
Users access the Walk-up Experience application in several ways.
• Online:
◦ Quickly check in online to the nearest available walk-up venue using the Walkup Check In option on the Service Portal using your computer.

Note: Walk-up Experience application automatically routes you to the
nearest walk-up queue using the IP address of your computer. You can
change the location, if desired.
◦ Join the queue and view your queue position.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1212


<!-- page 1213 -->
◦ Schedule appointments for support and receive appointment reminders, as
well as cancel or reschedule appointments from links in the reminder or from
the online check-in interface.
◦ Schedule only one appointment per walk-up location queue at a time.

Note: Even with a scheduled appointment, you can still check into a
walk-up location queue online or in person onsite.
◦ Receive email notifications when your request is assigned to a technician when
your position in the queue is close to being served and when your walk-up
request has been closed or abandoned, should you decide not to attend the
queue.
• Onsite at the Walk-up Experience location:
◦ Check into a queue at the physical walk-up location by manually entering your
name, email, and contact details.
◦ Observe queue activities on a large monitor that displays both walk-in
requesters and those with appointments.
◦ View the monitor displaying how many people are currently in the queue, guest
positions in the queue, who is being served, and estimated wait times.
◦ Answer an available single-question survey which captures your user sentiment
after a visit.
Technicians or Agents
Customer support uses Walk-up Experience application to meet the demand of
urgent issues or requests from the requesters.
• Walk-up Experience technicians manage daily operations at the walk-up queue
locations. They resolve customer service issues.
• Technicans can accept and close Walk-up Experience interactions through
the Agent Workspace interface. Agent Workspace contains a personal inbox
where walk-up interactions, if configured in Advanced Work Assignment, are
automatically pushed for assignment.
• Agents can manage all aspects of Walk-up Experience fulfillment using Agent
Workspace. Based on their capacity, and if records are on-hold, they can work on
multiple transactions at the same time and promote interactions to cases.
• Technicians can view and accept scheduled appointments in their Agent
Workspace personal inbox. Appointments are routed to the inbox according
to agent availability. Alternatively, agents can pick and choose appointments
manually.
• If necessary, technicians can work with anyone in the queue at any time.
Technicians can manually assign themselves to a walk-up interaction, by
accepting the interaction from a list of unassigned interactions in Agent
Workspace.
Managers
Managers supervise the walk-up location technicians and oversee daily operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1213


<!-- page 1214 -->
• Walk-up managers can observe and capture operational and performance data
by monitoring the walk-up dashboard.
• Walk-up managers can use the application to increase customer satisfaction,
provide customer service in a timely manner, and report performance data to
upper management.
Administrators
Configure and maintain walk-up related systems, such as the walk-up location
branding and text, queue locations and schedules, appointments, advanced work
assignments, and notifications, and CSAT surveys.
Walk-up Experience User Roles
Role Name

Role

Description

sn_walkup.walkup_login

Store representative

A user with this role helps
requesters check in at the
walk-up location.

sn_csm_walkup.walkup_technician
CSM walk-up technician

A user with this role fulfills
user demands at the CSM
walk-up location.

sn_csm_walkup.walkup_manager
CSM walk-up manager

A user with this role manages
the team at the walk-up
location.

sn_csm_walkup.walkup_admin CSM walk-up administrator

A user with this role
administers walk-up
interactions, location queues,
and walk-up reasons.

Configuring Walk-up Experience for Customer Service Management
To get started with Walk-up Experience for Customer Service Management, see Configure Walkup Experience for Customer Service Management.
Walk-up Experience for guest users
The Walk-up Experience application can enable guest users to manage walk-up appointments
online from the Consumer Service Portal or Customer Service Portal home page.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Requirements to use Walk-up Experience for guest users
Note the following requirements for guest users to be able to use Walk-up Experience:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1214


<!-- page 1215 -->
• The Guest Walk-up Experience for Customer Service store app must be installed. For more
information on installing the store application, see Install a ServiceNow Store application .
• The com.snc.walkup_for_csm plugin must be activated. For more information on activating a
plugin, see Activate a plugin .
• The Walk-up Check-in widget must be configured. For more information, see Add a Walk-up
Experience online check-in link on the Service Portal home page.
Domain separation and the CSM Walk-up Experience application
This section is an overview of domain separation as it pertains to the CSM Walk-up Experience
application and how it relates to Service Portal pages, interaction queues, and configurations.
Domain separation enables you to separate data, processes, and administrative tasks into
logical groupings called domains. You can control several aspects of this separation, including
which users can see and access data.

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

Overview
Domain separation in the CSM Walk-up Experience application is supported at the Basic level.
However, the application depends on the Service Portal, which is not supported for domain
separation. Domain separation pertains to the CSM Walk-up Experience application in the
following ways:
• Walk-up location queues support domain separation to define which end users can access
each location queue.
• The Interaction table supports standard domain separation for data security. Interaction tickets
are opened for a specific domain.
• Walk-up location queues and interactions support domain separation. Therefore, fulfillers also
work within a domain-separated environment when addressing interaction tickets associated
with a location queue.
• Management and administration configurations reside in the walk-up location queue records.
Therefore, those configurations are available to the respective domain managers and admins.
• While the Service Portal pages are not domain separated, the CSM Walk-up Experience
application's portal pages retrieve data within the user’s specific domain. Therefore, those
pages can be reused across different service portals designed and configured for separate
domains. The admins must build each portal themselves.
• The Domain field is available on the wu_location_queue table. Setting domain here ensures
users only see queues that are part of their domains during online check-in.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1215


<!-- page 1216 -->
• For Advanced Work Assignment routing to operate, each wu_location_queue must include a
work item routing condition. This condition explicitly adds a reference to the domain the queue
is part of.

Note: The appointment booking feature is not domain separated. Since Appointment
[itil_appointment] table data is not domain separated, list views could reveal data across
domains.

How domain separation works in the CSM Walk-up Experience application
For this application to be the most effective, walk-up administrators should configure walk-up
locations accordingly. Configure the wu_location_queue record to meet a user need, which
affects the requester experience. Each domain configured to the location queue record has its
own set of rules. The same applies to other tables within the Walk-up application as well.

Note: Elements of the Service Portal platform such as settings, portals, and widgets
cannot be domain separated. However, the data within the widgets displays based on how
the domain is configured. The recommended approach is to set up separate portals for
each MSP customer.
Elements of the Service Portal that are used as part of the walk-up experience are as follows:
• Portal (Walk-up)
• Pages ( walkup_online_checkin, walkup_queue_on_site, walkup_home,
walkup_survey, walkup_check_in )
• Theme (Walk-up theme)
• Widgets (Online check-in experience, walk-up queue on site, walk-up check-in, walk-up exit
survey, walk-up home, walk-up schedule)
To learn more, see Domain separation and Service Portal

.

For data separation, the CSM Walk-up Experience application uses the walk-up user (Requester/
Walkup login user) domain to determine in which domain the requester data should be placed.
• Requesters can check in only in locations for which they have visibility.
• Requesters are able to select the Reasons that belong only to their own domain.
• Interaction records are created in the Requester’s domain.
For the Fulfiller side, the application uses the domain of the walk-up user (walk-up technician/
manager/ admin) to determine which records are visible.
• By domain separation rules, Fulfillers can work only on interactions that are visible to them.
• Fulfillers are able to configure only walk-up location records that belong to their domain, are in
the global domain, or have the parent-child hierarchy.
• The same visibility rules apply for the Many to Many
[wu_m2m_location_queue_reason]tables that control the mapping between a
location and reason.
• The walk-up context records also have domain separation support. This support ensures
technicians to view detailed requester information only for the records that are visible by
domain separation rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1216


<!-- page 1217 -->
Domain-separated tables
As part of the CSM Walk-up Experience, records in the following tables can be domain
separated.
• Walk-up location queues [wu_location_queue]
• Walk-up reasons for visit [wu_reason]
• Walk-up reasons [wu_m2m_location_queue_reason]
• Walk-up contexts [wu_context]
• Interactions [interaction]
CSM Walk-up Experience portal security and access
Security is built into the application to help prevent end-user facing devices at the Walk-up
Experience onsite portal from offering elevated role privileges to users. The Walk-up Experience
onsite portal is accessed by an account containing only the sn_walkup.walkup_login role. The
sn_walkup.walkup_login role contains the snc_external role.

Understanding Walk-up Experience portal security
Accessing the onsite Walk-up Experience portal requires the singularly assigned
sn_walkup.walkup_login role. The user record with this role cannot contain any other roles.
Because most user records contain multiple roles, the sn_walkup.walkup_login role is assigned
to a user record account, not a human user. The security feature helps prevent the onsite portal
check-in device from permitting users who might try accessing the portal with an elevated
privilege role.
The sn_walkup.walkup_login role is granted to a user record for an account used to log in to
the check-in device. Typically, the device at the onsite Walk-up Experience portal is a tablet. It
is not an actual human being with an assigned role, but an account with a role. For example, a
technician opening the onsite Walk-up portal for business logs in to the check-in device using
the user record that contains the sn_walkup.walkup_login role. Again, the portal can only be
accessed by a user record that contains this role only. A user cannot access the portal with the
admin role or if the user record contains roles other than the sn_walkup.walkup_login role.

Access to Walk-up Experience
Technicians opening up the onsite Walk-up location for business, or joining the support
team during operation hours, access the user record account. Technicians with
sn_walkup.walkup_login role can log in to the Walk-up Experience portal. Internal and external
users can access the onsite Walk-up Experience portal via a check-in device, typically a tablet,
to enter a queue. Internal, authenticated users can also access an online queue check-in via
desktop.
Configure the Walk-up Experience portal
Create engaging walk-up center service portals featuring your logo, portal theme, desired
catalog, links to a knowledge base and social community, and more.

Before you begin

Role required: admin or sn_walkup.walkup_admin
Walk-up Experience includes a complete base-system Walk-up Portal with theme. The Walkup Portal pages are meant to be used as built. You can create custom portal pages to meet your
needs by copying the portal pages and associated widgets and making changes to the copies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1217


<!-- page 1218 -->
You can configure both an online check-in portal and a physical check-in portal for your walk-up
locations.
There are several ways to configure the Walk-up service portal:
• Service Portal application: Modular user interface framework for quick and easy building and
customization of application portals.
• Service Portal Walk-up form: Requires CSS and HTML experience.

Procedure
1. To configure the Walk-up service portal using the Service Portal application, navigate to
Service Portal > Service Portal Configuration.
The Service Portal configuration page opens.
2. To customize the base-system walk-up portal with your unique branding, title, logo, theme
colors, layout, properties, widgets, and more, or to create a new walk-up portal, refer to Service
Portal
for detailed information.
3. Alternatively, to configure the Walk-up service portal using the Service Portal Walk-up form,
navigate to CSM Walk-up Experience > Administration > Portal Configurations.
The Service Portals list opens.
4. In the Service Portals list, click Walk-up or search for it in the list header search box.
5. Click the Form menu icon
The form designer opens.

and select Configure > Form Design.

6. In the form designer header drop-down list select or search for any of the configurable walk-up
forms to customize your portal appearance.
Option

Description

Walk-up context [wu_context]

Configure an online check-in channel for
users to join a walk-up queue before physical­
ly arriving at the walk-up location. Identifies a
walk-up user and the description of the asso­
ciated interaction.

Walk-up Location Queue [wu_location_­
queue]

Configure the physical walk-up location in­
teraction queue to manage and administer
the service center. You can establish walk-up
locations, set hours of operation, enable on­
line check-in, determine assignment groups,
associate stockrooms, as well as design the
queue time display and position notification
system.

Walk-up Reason [wu_m2m_location_­
queue_reason]

Define various common reasons why a user
needs walk-up support.

Walk-up Reason for Visit [wu_reason]

Specify the order in which reasons for a visit
should be prioritized at a walk-up location.

To modify form content to meet your portal requirements, refer to Form configuration
detailed information.

for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1218


<!-- page 1219 -->
Configure Walk-up Experience service channel
Configure the Walk-up Experience service channel to meet the needs of your walk-up agents.
You can configure the way the tasks are assigned and manage interactions in the Agent
Workspace.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

The Walk-up Experience service channel is viewed and configured through Advanced Work
Assignment. You can modify default values and conditions as required.

Procedure
1. Navigate to All > Advanced Work Assignment > Service Channels.
The Service Channels list displays.
2. Select Walk-up to open the Walk-up Experience service channel.
for detailed information regarding the Service
3. Refer to Create or configure a service channel
Channel Walk-up form values and conditions.
For more information regarding Advanced Work Assignment service channels configuring
capacity and utilization, inbox layout, and overriding agent capacity for selected agents, see
Service channels .
Configure Walk-up Experience notifications
As an administrator, you can create and use notifications to notify requesters about events
that impact them while they’re getting their issue addressed through a walk-up experience.
Requesters are notified of online appointments that they’ve taken or when their issue is assigned
to a store representative by email.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

Walk-up Experience includes several base system notifications that you can use or customize to
notify walk-up visitors about specific information and interactions.
Walk-up Experience notifications
Notification

Description

Walk-up Abandoned

Notifies when a walk-up interaction is closed.

Walk-up Threshold Notification

Notifies visitors when they’re close to being
next in line for support.

Walk-up Assigned

Notifies when an interaction is assigned to a
technician.

Walk-up Closed

Notifies when an interaction is closed.

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration > Notifications.
2. Select an available walk-up notification to view basic properties, as well as information about
when to send it, who receives it, and what the notification contains.
3. To modify a walk-up notification, edit any of the form fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1219


<!-- page 1220 -->
4. To create a walk-up email or push notification, select New.
For more information, refer to the following topics:
◦ Create an email notification
◦ Create a push message
For complete information regarding using the System Notification application, refer to
Notifications .
Configure Walk-up Experience schedules
Once you know the hours of operation for your Walk-up Experience location, you can either
access the base system default schedules or create schedules to associate with your walk-up
location.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration > Schedules.
The Schedules list opens. You can view all available base-system default schedules, such as
8-5 weekdays excluding holidays.
2. To modify an existing base system schedule, select the schedule name, otherwise select New
to create a schedule if none of the default schedules apply for your walk-up location.
3. Complete the Schedule New record form or modify fields on an existing form.
To complete this process and for detailed information on creating, modifying, and using
schedules in the system, including a definition of all form fields, refer to Schedules .
Walk-up Experience appointment booking
With the CSM Walk-up Experience appointment booking feature, walk-up users can view
available appointment windows. The users can also select and book an appointment for a walkup location using the online Walk-up Check-in feature.
Create time windows for walk-up queue locations enabling requesters to book service
appointments.
The Appointment Booking plugin (com.snc.appointment_booking) must be activated to use
the application. Appointment booking adds the Appointment Booking menu to the application
navigator and the following modules:
• Appointment Booking Configuration: Use this module to create an appointment booking.
Configure an application and then configure each service within that application.
• Appointment Bookings: Use this module to view a list of appointments that have been booked
for services. This list includes the work orders associated with each appointment.
Appointment booking requires configuration at both the application level, in this case, Walk-up
Experience, and at the walk-up queue service level, represented by the actual location of the
walk-up queue.
The Walk-up Experience application configuration contains settings that apply to all the service
locations within the application that support appointment booking.
A service configuration is required for each of the walk-up queue locations within the application
that offer scheduled appointments. A service configuration includes settings that apply only to
that specific walk-up queue service location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1220


<!-- page 1221 -->
Note: Both the application configuration and the service configuration must be active to
book appointments.
For detailed information about the Appointment Booking application, see Managing
appointments .
Configure appointment booking
Create or modify appointment booking configurations for Walk-up Experience services. A service
is defined as the actual physical location of a walk-up queue. The information stored in the Walkup Experience application configuration applies to all services or queue locations within the
application.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration > Appointment Configurations.
2. Click New to create a new service configuration.
Alternatively, you can click an existing service configuration to modify data.
3. In the Appointment Booking Service Configuration form, fill in the following fields as needed.
Appointment Booking Service Configuration form
Field

Description

Name

The name of the service configuration.

Active

Activates appointment booking for the service.

Note: If deactivated, customers cannot schedule appointments for
the service but can still create work orders.
General Information
Configuration

The name of the appointment booking configuration to which this service
belongs.

Availability
table

The table calculates appointment availability. For Walk-up Experience,
choose Walk-up Appointment [wu_appointment].

Enable
advanced
configurations
Holiday
Schedule

The holiday schedule to use when determining availability. Appointment
booking evaluates the holiday schedule when determining the number of
available appointments and excludes any day in the schedule that is set to
Exclude. Click the lookup icon and select a schedule from the Schedules list.

Note: Holiday schedules are useful when you set the assignment
method for tasks to manually, which does not consider agent
schedules.
Catalog Information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1221


<!-- page 1222 -->
Field

Catalog item

Description

The service in the service catalog for which you are creating this
appointment booking configuration. Click the lookup icon and select the
associated service from the Record Producers list.
You must create a record producer for each walk-up service location.

Note: The catalog item must exist in the service catalog.
If you are using appointment booking with work orders, create a work order
template before you configure appointment booking.
Location

The field on the record provider that determines the appointment location.

Note: Ensure the Location field on both this form and the Walk-up
Location Queue (wu_location_queue) form are configured in alignment.
Walk-up Experience contains the location reference variable, which
is a Location (cmn_location) record. Selecting Location from the search
list
icon ensures you are aligning with the same time zone as the
walk-up location you are configuring for. When you select Location,
the online appointment scheduling calendar displays in the user time
zone. If you leave this field empty or if you have not configured the
user preference for the instance to have an associated time zone, the
appointment scheduling calendar defaults to display in the user time
zone.
If a user in Europe has User preferences for Time zone configured for
Europe/Brussels and the Appointment Booking Configuration for the
Location field is set to a cmn_location with the time zone US/Pacific,
then the appointment scheduling calendar displays in the US/Pacific
time zone.
When a user creates an appointment, the system defaults to
use the schedule associated with the Walk-up Location Queue
(wu_location_queue), regardless of the Location field value of this
record producer.
Appointment
is mandatory

Enable this check box if it is required for a customer to create an
appointment when requesting this service.
◦ If enabled, the Appointment field appears on the record producer and the
user must select an available appointment before submitting the service
request.
◦ If disabled, the user can submit the service request without selecting an
appointment.

User contact

The field on the record producer that determines for whom the appointment
was created. Set this field to Contact. This is a reference field that looks for a
sys_user variable on the record producer.

Booking
Appointments The number of available appointments for each configured appointment
per window
time slot. This number determines the number of available appointments
displayed on the Select Appointment window. Enter a number in this field
if the assignment method for tasks is set to manually. If set to either using
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1222


<!-- page 1223 -->
Field

Description

auto-assignment or using dynamic scheduling, this setting does not apply,
unless a location is not provided. Then the configuration defaults to the
number of appointments per window.
Lead time

The number of hours or days from the current time after which you have
booked an appointment for this service. Define the lead time in hours or
days. The default is 4 hours.

Future
The number of days after the current day for which an appointment can be
bookable max booked for this service. The default is 14 days.
days
Reschedule/
Cancel by
time

The number of hours or days prior to an appointment start time that are
required for cancelling an appointment or rescheduled. If a user attempts
to cancel or reschedule an appointment within this number of hours, the
Cancel button is not available. Define the time in hours or days. The default is
4 hours.

Appointments
Appointment
window

The length or duration of the appointment window.

Note: Allow enough time to start and complete the work within this
window.

Work duration The amount of time required to complete all tasks created by the record
producer. You set the duration for a task when it is created which is used to
determine availability. The default is 1 hour.
Travel
duration
(round trip)

An estimated value of the average travel time required (round trip) for the
agent performing the task. Set the value to 0 since the work is performed
onsite and travel time is not needed.

Daily Schedule
Bookable
days

The days of the week for which appointments can be booked. The default
is Monday through Friday. Bookable days should reflect the appointment
schedule.

Note: Appointment schedules are separate from the walk-up queue
location schedule but should be the same days and hours as the walkup queue location schedule.
Daily start
time

The start of the work day and the earliest start time for an appointment
window. The default is 9:00.

Daily end time The end of the work day and the latest end time for an appointment window.
The default is 18:00 PM.
Include daily
break

Enable this check box to schedule a break for each bookable day, then
select the break start and end times. Can define one break which applies to
all days.

Appointment
booking
preview

Provides a preview of the appointment windows and times based on the
selected start and end times, break time, and appointment window.

4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1223


<!-- page 1224 -->
Walk-up Experience appointment booking administration
Create or modify and enable the CSM Walk-up Experience application configuration and the
individual service location configurations for the Appointment Booking feature.
Administrators can create, modify, and enable the Walk-up Experience application configuration.
Appointment booking administrators (appointment_booking_admin) can create, modify, and
enable configurations for service locations within the Walk-up Experience application.
Walk-up Experience is an application level configuration provided with the base system
appointment booking feature. You can include as many service level configurations as needed.
The service level configurations apply to the individual walk-up queue locations that exist.
Administrators can modify these configurations as needed or use them as examples to create
new configurations.
For detailed information on appointment booking administration, refer to Configure appointment
booking.
Enable Walk-up Experience appointment-booking
Enable or disable the appointment booking feature for Walk-up Experience as well as for the
individual walk-up service locations available to customers.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

The Appointment Booking plugin (com.snc.appointment_booking) must be activated to use the
application.
When you enable appointment booking, the Schedule an appointment tab appears on the
online check-in page. Users choose a reason for the appointment and select a date a time from
the available appointments.

Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. Click Walk-up Experience.
The Walk-up Experience configuration is provided with the base system Appointment
Booking feature.
3. Click Active to enable appointment booking for the Walk-up Experience application.
Alternatively, if the feature is active you can deactivate it by clicking Active.
4. In the Appointment Booking Service Configuration related list, click the name of a service.
For Walk-up Experience, the physical location of a walk-up queue defines a service. Every walkup queue associated with your application is a service that you must configure for appointment
booking.
The Appointment Booking Service Configuration form for the selected service opens.
5. Click Active to set the field to true.
6. Click Update.
Walk-up Experience appointment booking configuration
Create or modify appointment booking configurations for the Walk-up Experience. You can view
or modify the Walk-up Experience application appointment booking configuration and create or
modify related service appointment configurations.
The base system Walk-up Experience application includes a default appointment booking
configuration that can be modified. By default, the information stored in the Walk-up Experience
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1224


<!-- page 1225 -->
application appointment booking configuration applies to all services within that application.
Services within the Walk-up Experience application are defined as the actual walk-up queue
locations. You can create new appointment booking service configurations for the Walk-up
Experience application or modify existing configurations.
For example, you may want to configure one walk-up queue to accept appointment booking
every day from Monday to Friday, but for another queue, you only want appointment booking
available on Monday, Wednesday, and Friday. By configuring appointment booking at the service
level, you can achieve this goal.
Specific Walk-up Experience set-up criteria for appointment booking include the following
configurations:
• Define different appointment schedules and time windows per queue location.
• Define the time window in which you want to support appointments. For example, 15 minutes v.
30 minutes.
• Define the time window capacity. For example, the maximum number of appointments per time
window.
View or modify a Walk-up Experience appointment booking configuration
View the base system default appointment booking configuration to determine if the criteria
meets your walk-up appointment booking requirement. You can modify the configuration to
manage appointment booking. The information stored in the Walk-up Experience appointment
booking configuration applies to all the services within the application.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

The Walk-up Experience configuration is provided with the Appointment Booking feature.

Procedure
1. Navigate to All > Appointment Booking > Appointment Configurations.
2. To view the Walk-up Experience configuration, click the configuration name.
3. In the Appointment Booking Configuration form, view or modify the following fields as needed.
Appointment booking application configuration fields
Field

Description

Name

The name of the application configuration.

Task Table

Appointments are created for the tasks in the selected table. The Walk-up
Appointment [wu_appointment] table is the default table for the Walk-up
Experience configuration.

Availability
Method

Use one of two methods to determine appointment availability.
◦ Number of appointments per slot: Define a specific number of appointments
per time slot. Use this method if the task assignment is set to manually which
is the default setting.
◦ Scripted: Use this configuration setting to determine availability if the task
assignment method is set to using auto assignment or dynamic scheduling.

Active

Activates the application configuration and enables appointment booking.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1225


<!-- page 1226 -->
Field

Description

Auto
If the application configuration setting for Process lifecycle is set to taskacceptance driven, an agent must accept or reject an assigned task. Enable the Auto
acceptance check box to override this configuration setting for appointment
booking.
Portal View

Display available appointments for a single day or for a week on the online Self
Service Walk-up Check-in portal or from the Service Portal.

4. Click Submit.
Create a Walk-up Experience appointment booking configuration for a service
Create or modify appointment booking configurations for Walk-up Experience services. A service
is defined as the actual physical location of a walk-up queue. The information stored in the Walkup Experience application configuration applies to all services,or queue locations, within the
application.

Before you begin

Role required: admin or sn_apptmnt_booking.appointment_booking_admin

About this task

To use the appointment booking feature, administrators must create a configuration for each
service, or queue location, that is available to walk-up customers. Service configurations are
created within the Walk-up Experience application configuration, as part of the Appointment
Booking application.

Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. Click Walk-up Experience.
3. In the Appointment Booking Service Configuration related list, click New to create a new
service configuration.
Alternatively, you can click an existing service configuration to modify data.
4. In the Appointment Booking Service Configuration form, fill in the following fields as needed.
Appointment booking service configuration fields
Field

Description

Active

Activates appointment booking for the service.

Note: If deactivated, customers cannot schedule appointments for
the service but can still create work orders.
General Information
Name

The name of the service configuration.

Configuration The name of the appointment booking configuration to which this service
belongs.
Availability
table

The table that is used to calculate appointment availability. For Walk-up
Experience, choose Walk-up Appointment [wu_appointment].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1226


<!-- page 1227 -->
Field

Description

Holiday
Schedule

The holiday schedule to use when determining availability. Appointment
booking evaluates the holiday schedule when determining the number of
available appointments and excludes any day in the schedule that is set to
Exclude. Click the lookup icon and select a schedule from the Schedules list.

Note: Holiday schedules are useful when the assignment method for
tasks is set to manually, which does not consider agent schedules.
Catalog Information
Catalog Item

The service in the service catalog for which this appointment booking
configuration is being created. Click the lookup icon and select a service
from the Record Producers list.

Note: The catalog item must exist in the service catalog.
If you are using appointment booking with work orders, create a work order
template before you configure appointment booking.
Location

The field on the record provider that determines the appointment location.

Appointment
is mandatory

Enable this check box if it is mandatory that a customer create an
appointment when requesting this service.
◦ If enabled, the Appointment field appears on the record producer and
the user must select an available appointment on the Select Appointment
window
before submitting the service request.
◦ If disabled, the user can submit the service request without selecting an
appointment.

User contact

The field on the record provider that determines who the appointment is
being created for. This is a reference field that looks for a sys_user variable
on the record producer, for example, Contact.

Timezone

The appointment window based on the Timezone field specified in the
user contact record or the location where the appointment for the task is
scheduled.

Booking
Appointments The number of available appointments for each configured appointment
per window
time slot. This number determines the number of available appointments
that are displayed on the Select Appointment window. Enter a number in this
field if the assignment method for tasks is set to manually. If set to either
using auto-assignment or using dynamic scheduling, this setting does not
apply, unless a location is not provided. Then the configuration defaults to
the number of appointments per window.
Lead time

The number of hours or days from the current time after which an
appointment can be booked for this service. Define the lead time in hours or
days. The default is 4 hours.

Future
The number of days in advance of the current day for which an appointment
bookable max can be booked for this service. The default is 14 days.
days

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1227


<!-- page 1228 -->
Field

Description

Reschedule /
Cancel by
time

The number of hours or days prior to an appointment start time that are
required for an appointment to be canceled or rescheduled. If a user
attempts to cancel or reschedule an appointment within this number of
hours, the Cancel button is not available. Define the time in hours or days.
The default is 4 hours.

Appointments
Appointment
window

The length or duration of the appointment window.

Note: Allow enough time for the work to be started and completed
within this window.

Work duration The amount of time required to complete all tasks created by the record
producer. This duration is set for a task when it is created. Used to determine
availability. The default is 1 hour.
Travel
duration
(round trip)

An estimated value of the average travel time required (round trip) for the
agent performing the task. Set the value to 0 since the work is performed
onsite and travel time is not needed.

Daily Schedule
Bookable
days

The days of the week for which appointments can be booked. The default
is Monday through Friday. Bookable days should reflect the appointment
schedule.

Note: Appointment schedules are separate from the walk-up queue
location schedule but should be the same days and hours as the walkup queue location schedule.
Daily start
time

The start of the work day and the earliest start time for an appointment
window. The default is 9:00.

Daily end
time

The end of the work day and the latest end time for an appointment window.
The default is 18:00 PM.

Include daily
break

Enable this check box to schedule a break for each bookable day, then select
the break start and end times. Can define one break which applies to all
days.

Appointment
booking
preview

Provides a preview of the appointment windows and times based on the
selected start and end times, break time, and appointment window.

5. Click Submit.
Configure daily schedules for Walk-up Experience service appointment booking
Specify different daily hours of operation for your Walk-up Experience location appointment
booking.

Before you begin

Role required: admin or sn_apptmnt_booking.appointment_booking_admin

About this task

Create a unique appointment booking schedule for each day of the week or for specific days of
the week. For example, you can set the appointment booking availability schedule to run all day,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1228


<!-- page 1229 -->
from 9:00am to 5:00pm, Monday, Wednesday, and Friday. Tuesday and Thursday appointment
availability schedule can run from 9:00am to 12:00pm. You can completely remove appointment
booking for a specific day of the week, for example, Friday.
Note: To specify unique daily booking schedules, while using your associated
appointment booking configuration, create new Schedule Entries to exclude the hours
appointment booking is not available.

Procedure
1. To configure, for example, Tuesday and Thursday appointment availability schedule from
9:00am to 12:00pm, navigate to Walk-up Experience > Schedules.
2. Select the schedule you use, for example, the 8-5 weekdays excluding holidays schedule.
3. In the Schedule Entries related list, click New to display the Schedule Entry New record form.
4. Name the new record Excludes and fill in the form to create a unique daily booking schedule
for Tuesday and Thursday appointments.
Schedule Entry Excludes configuration fields
Field

Description

Name

Name the record. For example, name the record Excludes to indicate the hours
excluded from appointment booking.

Type

Choose Excluded as the type.

Show
as

Choose Busy as the reason for the exclusion.

When

Indicate the date to begin using this booking availability schedule. Also indicate
the time to exclude booking availability for this date. For example, the hours of
12:00pm through 5:00pm.

Repeats Indicate the recurrence for this availability schedule. For example, Weekly on Tue
and Thu.
Repeat
until

Specify how long you want this availability schedule to run by selecting an end
date.

5. Click Submit.
6. To verify that Tuesday and Thursday appointment booking is only available from 9:00am to
12:00am, navigate to your online Walk-up Check-in application.
If configured for view, You can access the online Walk-up Check-in application from the
Service Portal Home page or under Self-Service in the left navigation bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1229


<!-- page 1230 -->
7. Select the walk-up location for which you are verifying the schedule.
8. Click Schedule an appointment and select a reason for the visit.
9. Select a date for the appointment.
The Select Appointment window displays the first available appointment, by week and day.
10. Determine that appointments are only available on Tuesdays and Thursdays from 9:00am to
12:00pm.

Activate and configure appointment booking reminders for Walk-up Experience
Configure scheduled appointment reminders for Walk-up Experience users. Reminders ensure
that users attend appointments in a timely manner, and if they can't attend then reschedule or
cancel an appointment.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

For using appointment booking reminders, you must activate the Appointment Booking
Reminders Scheduled Job, which is not active by default. In addition, the Appointment
reminder field doesn't appear on the Appointment Booking Service Configuration form by
default. You must add it to the form and configure reminders. Reminders are inactive unless a
configuration is set.

Procedure
1. To activate the Appointment Booking Reminders Scheduled Job, navigate to System
Definition > Scheduled Jobs.
2. Search for Appointment Booking Reminders by name and click to open.
3. Click the Active field to activate the scheduled job.
4. Click Update.
5. To add the Appointment reminder field to the Appointment Booking Service Configuration
form, navigate to Walk-up Experience > Administration > Appointment Configurations.
6. Select a Walk-up Experience service configuration from the list.
The system opens an Appointment Booking Service Configuration form.
7. Click the menu button (

) and scroll to Configure > Form Layout.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1230


<!-- page 1231 -->
8. Select Appointment reminder from the Available list and move it to the Selected list using the
add button.
9. Click Save.
The Appointment Booking Service Configuration form displays with the Appointment
reminder field.
10. To configure an appointment reminder, choose an amount of time, in hours, from the
Appointment reminder field drop-down list.
The hour/hours you choose represents the amount of time before a scheduled appointment
that you want to send a reminder for. For example, two hours before a scheduled appointment.
11. Click Update to add the appointment reminder configuration.
Configure Walk-up Experience locations
Administrators define walk-up locations while setting up the walk-up experience for an
organization. Requesters see this information when they schedule appointments or check in at a
service location.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

Administrators can configure the following for locations:
• Create or modify walk-up location queues or mark locations as inactive.
• Allocate schedules for appointments, AWA conditions.
• Set conditions to automatically route work items.
• Location unavailable temporarily.
• Location address and picture.
• Specify reasons-for-visit options.
• Configure how interactions display for each walk-up location.

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration > Walk-up Locations.
2. Select New.
3. Complete the form.
Fields

Description

Name

Provide a detailed name for the location, such
as the city or building.

Description

Provide a description of the location, if de­
sired.

Schedule

Select a schedule for operation days and
hours.

Appointment Booking

Add and configure an appointment booking
schedule for the walk-up location.

Service Channel

Search for and choose the Walk-up service
channel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1231


<!-- page 1232 -->
Fields

Description

Define condition here

Select whether to route work items to this
queue automatically using a condition.

Condition mode

Choose either Simple mode or Advanced
mode to route work to the queue automati­
cally. Simple mode is the default. With sim­
ple mode, you can select from prebuilt con­
ditions. For example, select Location is X
[search and select location]. With advanced
mode, you can provide your own scripting
and code.

Work item routing condition

Configure and specify who would provide cus­
tomer support at a walk-up location. Location
is determined by physical address.

Active

Check to make this queue location active.

Enable away state

Check to allow an away state.

Away message

Specify a display message for when the lo­
cation is temporarily closed. Specify this for
hours other than the scheduled closed times.

Stockroom

Select a stockroom to supply assets for the lo­
cation.

Location

Select the physical address of your location.

Location image

Click to add an image of your location. For ex­
ample, the image of the city or building where
the walk-up location is located.
Image types include .gif, .jpg/.jpeg, or .png.
For more information, see Image field type

Access Type

.

Select external or both types of users so that
the appropriate walk-up locations are visible
to users.

4. Select the Management tab to complete the Management form section.
Fields

Description

Position notification

Select the queue position that triggers a notifi­
cation to visitors when they're close to being
assisted at the location. For example, when a
visitor is third in line to be assisted.

Last check-in

Specify the last available check-in time in min­
utes. For example, 30 minutes before closing.

Enable online check-in

Allow visitors to check in to the location re­
motely from a laptop or mobile phone.

Enable appointment delegation

Enable users to book an appointment for
someone or else.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1232


<!-- page 1233 -->
Fields

Description

Note: When you enable appointment

delegation, the Appointment delega­
tion group field appears. Select a group
to allow appointment delegation. Add
a new group of users if an appropriate
group doesn't exist. Only users in this
group would have the choice of schedul­
ing for themselves or another user when
they book an appointment.

Name configuration

Select a name configuration to display visitor
information on the onsite queue TV monitor
and online check-in screen. The first name dis­
plays. However, you can show first and last
name, first name with last name initial only, or
first name only.

Appointment routing time

Specify the amount of time, in minutes, to
route the work item to an agent prior to an ap­
pointment time.

Hold time

Enter an amount of time, in minutes, that you
want to put an interaction on hold before at­
tempting to route it again to a technician. For
example, entering 5 would put the interaction
on hold for five minutes before rerouting.
Enable the estimated wait time to show for
walk-up queues.

Note: The wait time is calculated from
the average wait time of the queue and
how many users are currently in the
queue. All estimated wait times are
rounded to the nearest whole minute.

Show estimated wait time

The estimated wait time calculation re­
quires the use of Service Owner Work­
space to calculate the average wait time.
Service Owner Workspace uses the Ad­
vanced Work Assignment queueing sys­
tem to obtain the average wait time.
Estimated wait times are displayed in
the following places:
◦ Online check-in.
◦ Onsite check-in and onsite queue
screen (TV).
◦ Status widget on the Service Portal

Audio Playback

Specify when the audio confirmation plays,
for example, when a requester checks into an
onsite queue, when a requester checks in on­
line, or both. The default mode is None.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1233


<!-- page 1234 -->
Fields

Description

Specify an audio file to play when a requester
checks into a queue. The base system default
file is walkup_checkin.mp3.
Audio File

Note: Only mp3 file formats are sup­
ported across all browsers.
You may have to provide additional
browser permissions to use an audio file
on the Safari browser.

5. Select the Administration tab to complete the administration section of the form.

Queue time display

Choose from None, Check-in time, or Time
waited to be displayed on the location wall
monitor.

Queue message

Specify a welcome message for your location
wall monitor.

Check-in greeting

Create a check-in message to guide visitors
to sign into the queue at the designated
check-in monitor.

Closed message

Create a message to alert visitors that it is out­
side the hours of operation and the location is
closed.

Closed phone number

Select your country from the drop-down
menu to display the Customer Support phone
number.

Closed record producer

Search for and select a record producer to dis­
play and link to during closed hours, such as
Create incident.

Closed image

Click to add an image indicating the walk-up
location is closed. The image displays on the
wall monitor to alert walk-in visitors that the lo­
cation is closed.

Max search results

Specify how many search results to provide
for contextual searches.

Contextual search config

Configure which search context would pro­
vide results at the location.
Option to set the type of appointment the re­
questers can book for the location. The follow­
ing options are available.

Appointment type

◦ In-person
◦ Remote
◦ Both

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1234


<!-- page 1235 -->
Note: This field is not a default field.
You can configure the form layout to add
this field.

Enable unregistered user entry

Check to allow users who don't have a user
name in the system to check in to the location
for support. For example, guests visiting the
location (opposed to employees).

Enable lookup user entry

Check so users can see and select their
names from a list as they begin typing their
names.

Enable technician info

Check to allow the display of available techni­
cian names on the location wall monitor.

Enable technician avatar

Check to allow the display of technician
avatars on the location wall monitor.

Header logo

Click to add a header logo. The header logo is
location-specific. If no logo is specified, by de­
fault, the Walk-up Portal logo is used.

Queue logo

Click to add a logo for the designated walkup location wall monitor. Design this logo to
work correctly with a black background. If no
logo is specified for the queue, by default, the
Header logo is used. If no Header logo is spec­
ified, the Walk-up Portal logo is used.

6. Right-click in the form header and select Save.
Several tabs appear.
◦ Interactions
◦ Walk-up Appointments
◦ Reasons for Visit
◦ Assignment Eligibility
◦ Work Item Sort Order
7. Click the Interactions tab to view interactions or configure how the walk-up Interactions list
should display.
You can use the filter icon (

) and the personalize list icon (

) to modify.

8. Click the Walk-up Appointments tab to view appointments or configure how the Walk-up
Appointments list should display.
You can use the filter icon (

) and the personalize list icon (

) to modify.

9. Click the Reasons for Visit tab to view, modify, or create a reason for visit option.
The base system includes three active reasons:
◦ I need something
◦ Something is not working
◦ Laptop refresh
◦ Other

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1235


<!-- page 1236 -->
10. Click the Assignment Eligibility tab to view, modify, or create an assignment rule for your walkup queue locations.
Assignment rules are configured in the Advanced Work Assignment product.
11. Click the Work Item Sort Order tab to view, modify, or create a Work Item Sort Orders for your
walk-up queue locations.
12. Click Update to save the new or modified location queue.
Configure Walk-up Experience locations for guest users
Configure walk-up locations for guest-users so they can select a location while making
appointments.

Before you begin

Role required: admin

Procedure
1. Navigate to All > CSM Walk-up Experience > Administration > Appointment Configurations.
2. Select a location that the guest user needs access to.
3. Click the Preview this record icon (

) next to the Catalog item field.

4. In the Record Producer window, click Open Record.
5. Under Related Links, click the Available For tab.
6. Click Edit.
7. Move Any Guest User from the Collection list to the Available For list and click Save.
8. Under Related Links, click the Variable Sets tab.
9. Select sn_appointment_variable_set and set permissions for each of its variables.
a. In the notice at the top of the form about the current application, click here to access the
CSM Walkup Experience application record.
b. Select the sn_appointment variable.
c. Click the Permission tab.
d. For the Read roles and Write roles, move the public, snc_internal, and snc_external roles
from the Available list to the Selected list.

Note: Create roles is also required for the correct auto-population of the information
in the guest records.
e. Click Done.
f. Repeat these actions for the sn_appointment_macro variable.
10. Repeat step 9 to set permissions for the sn_walkup_variable_set variable set.

Result

The configured walk-up locations are now available for guest users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1236


<!-- page 1237 -->
Remove a Walk-up Experience location
If you permanently close down a physical Walk-up Experience location, you can also remove the
location from the Walk-up Location Queues table.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

Procedure
1. Navigate to All > CSM Walk-up Experience > > Administration > Walk-up Locations.
2. Click the name of the walk-up location you want to remove to open the location queue record.
3. Click Delete in the form header.
A confirmation pop-up appears ensuring you want to delete the record.
4. Click Delete.
The Walk-up Experience location queue is removed from the application.
CSM Walk-up Experience customer satisfaction surveys
With Walk-up Experience surveys, you can rate your satisfaction with walk-up location
interactions, providing management with feedback to improve the walk-up experience.
The Walk-up Experience application includes two base-system predefined surveys.
Walk-up CSAT survey
This survey is an onsite, one-click sentiment analysis survey where you can quickly
rate service based on a 1–3 scale, where 1 is a negative experience and 3 is a
positive experience. The survey uses an image scale of three faces with different
sentiments: sad, neutral, and smiling.
Walk-up sentiment analysis survey

Walk-up experience satisfaction survey
You can access this survey from a link enclosed in an email. The link is sent
when walk-up interactions are closed. This survey uses sentiment analysis for
the overall experience, wait-time experience, technician experience, technician
professionalism, and additional comments. This survey is based on a 1–5 numeric
rating scale, where 1 is very unsatisfied and 5 is very satisfied.
Walk-up administrators and managers can modify these surveys and the associated trigger
conditions. Managers and administrators can review responses by question and see a scorecard
for each survey on the Walk-up Experience Dashboard module. User comments provide
feedback that is used to improve the performance of walk-up interactions.
For more detailed information about working with surveys, sentiment analysis, trigger conditions,
and survey questions, see Assessments and Surveys .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1237


<!-- page 1238 -->
Configure Walk-up Experience surveys
Define surveys so that requesters can provide feedback on their satisfaction with the service
quality received at a location.

Before you begin

Role required: admin or sn_csm_walkup.walkup_admin

About this task

Creating a customer satisfaction survey requires that you first define a new survey and then use
the Survey Designer to design, configure, and make it available to users.

Procedure
1. To view and use a base system predefined survey in the Walk-up Experience application,
navigate to CSM Walk-up Experience > Administration > Surveys.
The Assessment Metric Types list opens displaying the available walk-up surveys.
2. To modify an existing walk-up survey, select the survey name, otherwise navigate to Survey >
View Surveys and select New to define a new survey if none of the base system surveys are
optimal for your walk-up location.
3. To modify or complete the form, refer to modify a survey definition

.

System properties for configuring Walk-up Experience for guest users
System properties enable you to configure the Walk-up Experience for guest users so they
can access the Walk-up Check-in widget from the Service Portal Home Page and schedule
appointments online.

Properties to configure Walk-up Experience application
As an admin, in your instance, enter sys_properties.list in the filter navigator and add
the following properties. The default values are listed in the following table.
Walk-up Experience properties
Property

Default Value

Description

sn_guest_walkup_cs.guest_user_walkup_enabled
true
Enables or disables Walk-up Experience for
(true/false)
guest user.
sn_guest_walkup_cs.captcha.enabled
true
(true/false)

Enables or disables the CAPTCHA
validation from the welcome page.

sn_guest_walkup_cs.max_confirmation_validity_in_minutes
15 mins
The time to confirm the appointment
(integer)
booking.
sn_guest_walkup_cs.max_otp_validity_in_minutes
5 mins
The time that the one-time password the
(integer)
user receives to modify or cancel the
appointment is valid.
sn_guest_walkup_cs.max_guest_appointments_per_location
0
The number of appointments the guest
user can book per location.
sn_guest_walkup_cs.captcha.timeout
10 mins

The time after which the CAPTCHA
vaidation on the welcome page times out.

Add a Walk-up Experience online check-in link on the Service Portal home page
Configure a Walk-up Experience link to enable guest users to check in online to a walk-up
location via Service Portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1238


<!-- page 1239 -->
Before you begin

Role required: admin and sp_admin
Service Portal for Enterprise Service Management (com.glide.service-portal.esm) and Walk-up for
CSM (com.snc.walkup_for_csm) plugins must be activated.

Procedure
1. Navigate to All > Service Portal > Pages.
2. Select ID from the Search drop-down list and enter csm_index in the Search field.
3. Select csm_index to display the Customer Service Portal page.
4. Scroll down and select the Open in Designer related link.
5. Select the Walk-up Check-In widget from the Widgets list in the left pane and drag it to the
desired location on the Customer Service Portal page where you want the link to appear.
Related topics
System properties for configuring Walk-up Experience for guest users

Configure Conversational Appointment Booking
Install and set up the Conversational Appointment Booking application to enable customers to
book, reschedule, or cancel an appointment with a Virtual Agent.

Before you begin

Role required: va_admin

About this task

This procedure provides general steps to set up the Conversational Appointment Booking
application so that your customers can book appointments on your ServiceNow instance with a
Virtual Agent.

Procedure
1. Install the Conversational Appointment Booking application.
For more information, see Install Conversational Appointment Booking.
2. Navigate to Virtual Agent > Designer.
3. Publish the following topics:
◦ Schedule a Walk-up Appointment
◦ Reschedule a Walk-up Appointment
◦ Cancel a Walk-up Appointment
For more information, see Publish a Virtual Agent topic

.

These topics are read-only by default. To add custom controls.
duplicate the topics

.

Note: Translation for custom controls is currently unavailable. You can manually add the
®

translation in the ServiceNow Walk-up Experience appointment booking application.
See Walk-up Experience appointment booking configuration for more information.
4. Confirm that the Appointment Booking custom control is published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1239


<!-- page 1240 -->
5. Confirm that the Book or Update Appointment and Get Walk-up Location topic blocks are
published.
6. Test the topics.
See Test Virtual Agent topics

for more information.

Conversational Appointment Booking
®

Book, reschedule, and cancel appointments from Virtual Agent conversations. The ServiceNow
Conversational Appointment Booking application uses Natural Language Understanding (NLU) to
communicate with customers.

Booking an appointment
The appointment booking flow works as follows:
• The logged-in user contacts your business via your portal.
• The user enters the appointment booking request into the chat, and the Virtual Agent uses
Natural Language Understanding (NLU) to understand the request.
• The Virtual Agent asks the user to share their location. If the user shares their location, the
available appointment locations are displayed.
• The user chooses a location.
• The user chooses the purpose of the appointment.
• The user chooses a date and time slot for the appointment.
• The appointment booking is complete.
The following image illustrates the appointment booking flow.
Booking an appointment

Rescheduling an appointment
The appointment rescheduling flow works as follows:
• The logged-in user contacts your business via your portal.
• The user enters the appointment booking request into the chat, and the Virtual Agent uses
Natural Language Understanding (NLU) to understand the request.
• The user chooses an appointment to reschedule, and enters an email ID if needed.
• The user chooses the date and time for the rescheduled appointment.
• The appointment rescheduling is complete.
The following image illustrates the appointment rescheduling flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1240


<!-- page 1241 -->
Rescheduling an appointment

Cancelling an appointment
The appointment cancellation flow works as follows:
• The logged-in user contacts your business via your portal.
• The user enters the appointment booking request into the chat, and the Virtual Agent uses
Natural Language Understanding (NLU) to understand the request.
• The user chooses an appointment to cancel.
• The appointment cancellation is complete.
The following image illustrates the appointment cancellation flow.
Cancelling an appointment

Related topics
Configure Conversational Appointment Booking
Using Conversational Appointment Booking
Install Conversational Appointment Booking
Install the Conversational Appointment Booking application (sn_va_appt_schedul) if you have
®
the admin role. The application installs related ServiceNow Store applications and plugins if
they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: admin

About this task

Conversational Appointment Booking requires the following plugins. Ensure that these plugins
are activated before you install Conversational Appointment Booking.
Required ServiceNow plugins
Walk-Up for CSM (com.snc.walkup_for_csm)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1241


<!-- page 1242 -->
Note: Conversational Appointment Booking can be used
without the Walk-Up for CSM plugin. However, custom control and
Virtual Agent topic blocks shown in Configure Conversational
Appointment Booking cannot be used without this plugin.
The following items are installed with this plugin:
• NLU model for Conversational Appointment Booking.

Note: In order to use the NLU model, you need to train and
publish the model. See Natural Language Understanding
more information.

for

• Virtual Agent topics: Schedule a Walk-up appointment, Reschedule a
Walk-up appointment, and Cancel a Walk-up appointment.
• Virtual Agent topic blocks: Get Walk-up location and Walk-up
appointment scheduling.
Appointment Booking (com.snc.appointment_booking)
Enables the appointment booking feature for Walk-up Experience.
Glide Virtual Agent (com.glide.cs.chatbot)
Activates the Virtual Agent platform. Virtual Agent requires additional
licensing. See Virtual Agent
for more information.
NLU Workbench (com.snc.nlu_studio)
Enables the creation of custom ServiceNow Natural Language
Understanding models used by Virtual Agent.
Studio (com.glide.dev-studio)
Used for adding and updating application files.
For information about plugin activation, see Activate a plugin

.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Conversational Appointment Booking application ( sn_va_appt_schedul ) using
the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install Conversational Appointment Booking.
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1242


<!-- page 1243 -->
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.

Set up Configurable Portal widgets
Configurable Portal widgets provide you with the ability to configure the behavior, content, and
layout of a portal by configuring instance options.
By using configurable widgets, you can configure widget behavior, visual appearance, and
content to update the information presented on the widgets. Configurable widgets also reduce
the amount of work required to implement and maintain widgets for your users.

Configurable Portal widget benefits
Configurable Portal widgets offer the following benefits:
• Configurable behavior: Configure widget instance options to achieve behavioral variations
tailored to your business environment.
• Reusability: The ability to update instance options enables you to reconfigure widgets having
to create new widgets from scratch.
• Visual experience: Improve the usability and aesthetics of widgets and their conformance to
your organization's look and feel by configuring visual aspects including colors, alignment, and
styles.
• Content modification: Control the data sources or content that you want to display on the
portal by mapping the widgets to data sets and configuring filters or parameters to control the
information presented.
• No code or low code configuration: Update the data, behavior, and presentation of the widgets
with minimal code or by updating the instance options.
For more information on using configurable widgets in your customer portals, see Using portal
widgets .

Widget instances
You can use widget instances to configure the location, properties, and CSS specific to that
instance. For more information, see Configure widget instances .
The following are Configurable Portal widgets that enable you to configure the portal homepage.

Widget

Description

Portal Polaris Header
widget

Display access key features and pages from any place in portal. It
shows logo, search, profile, and others on level 1 of the header, and
menu items on level 2 of the header.
The appearance of menu items in level 2 of the header is
determined by the Portal Mega Menu widget selected.

Portal Mega Menu widget

The menu on the header of the portal home page to navigate to
different pages. It displays topics in a menu format organized
hierarchically.

Portal Browse Taxonomy
widget

Display taxonomy topics along with the articles and catalog items
related to them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1243


<!-- page 1244 -->
Widget

Description

Portal Banner widget

Banner to display the announcements, new product or feature
highlights, and important information on the top of the page.

Portal Banner Carousel
widget

Displays multiple banners in a carousel to display information on
multiple announcements, features, and products.

Portal Quick Links widget

Display different links for quick access including links to a
knowledge article, a catalog item, a custom page, or an external
URL. You can also select different layouts for quick links cards.

Portal Knowledge Quick
Links widget

Display a list of articles for quick access. Articles can be selected
based on featured articles, most viewed articles and more criteria
or can be selected manually.

Portal Catalog Quick
Links widget

Displays catalog items for important request items based on the
criteria.

Portal Case Cards widget

Displays case records according to the filter criteria. You can
display case details such as state, update, date, and more in a card
format.

Portal Data List widget

Displays a list of cases, appointments, work orders, or other records
from any ServiceNow table in list or card format.

Portal FAQ widget

Displays a list of frequently asked articles from a selected
knowledge table that are categorized based on knowledge article
category or related product.

Portal Polaris Footer
widget

Display important information at the bottom of each page. The
information includes company information and logo, site links,
external links, and social media links.

Portal Object widget

Display key information of a record from the tables available on
®
ServiceNow table. Your users can also take related actions on the
selected record.

Portal Taxonomy Topic
widget

Displays topics as cards on your portal page enabling your users
to access knowledge articles and catalog items related to a topic
displayed on your portal in a Portal Browse Taxonomy widget.

Activate the UI Components for Customer Portals plugin
You can activate the UI Components for Customer Portals plugin (sn_ciwf_ui_cmpnt) to enable
Configurable Portal widgets. The application installs related plugins if they aren’t already
installed.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1244


<!-- page 1245 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Create a page for Configurable Portal widgets
Create a page into which you can add Configurable Portal widgets.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
Role required: ap_admin or admin

Procedure
1. Navigate to All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, select Add a new Page.
4. Enter the text for the page title.
5. Enter an ID for the page that does not include spaces or any special character except for an
underscore.
6. Select Submit.

Result

The page is created in the Service Portal Designer.
Portal Polaris Header widget
The Portal Polaris Header widget enables your users to quickly access key features, pages, and
links from any place in the portal. You can select the Portal Polaris Header widget in the theme
record, which is mapped to your portal.
You can display the logo, search, profile, and others on level 1 and menu items on level 2 of the
header. The appearance of the menu items in level 2 of the header is determined by the widget
selected in the menu record mapped to the portal. To enable a multi-level hierarchy for your
menu items, you must select the Portal Mega Menu widget. For more information, Portal Mega
Menu widget.
The following items that appear on level 1 and level 2 of the header menu and are configured on
the portal record and menu record associated with the portal.
• Level 1 header consists of logo, search, language selector, profile, tours, notification approvals,
surveys, wish list, and cart.
• Level 2 header consists of Main menu and sub menu items.
Portal Polaris Header widget - Desktop view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1245


<!-- page 1246 -->
Additionally, in the mobile view, you can access all the menu items that are grouped by
categories. Currently, the mobile view support isn’t available for guided tours and language
selector menu items.
Portal Polaris Header widget - Mobile view

Configure the Portal Polaris Header widget for your portal
Associate the Portal Polaris Header widget as your header for the selected theme on your portal.

Before you begin

Role required: sp_admin or admin

About this task

Unlike other widgets in the Configurable Portal widgets, the Portal Polaris Header widget can’t
be dragged onto a page. Instead, you must configure it by associating the header menu with the
selected theme for your portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1246


<!-- page 1247 -->
Procedure
1. Navigate to All > Service Portal > Portal.
2. On the Service Portal page, search and select Customer Support in the Title column.
3. On the Customer Support page, in the Theme field, select the Preview this record icon (

).

4. Select Open Record on the Theme pop-up window.
5. On the Portal Next Experience Theme page, in the Header field, select the Lookup using list
icon (

).

Note: If a message appears about the application scope, select here to be able to edit
the record.
6. On the Header | Footers page, search and select Portal Polaris Header.
7. Select Update.

Result

The Portal Polaris Header is set as a header for the Portal Next Experience theme.
Configure company logo on your portal header
Display your company logo on the header of your portal.

Before you begin

Role required: sp_admin or admin

Procedure
1. Navigate to All > Service Portal > Portal.
2. On the Service Portal page, search and select Customer Support in the Title column.
3. On the Customer Support page, add an image in the Logo field.
4. Select Update.

Result

Your company logo appears on the left side of the header of your portal.
Configure the search option for your portal header
Configure search feature to display search option on you portal.

Before you begin

Role required: sp_admin or admin

Procedure
1. Navigate to All > Service Portal > Portal.
2. On the Service Portal page, search and select Customer Support in the Title column.
3. On the Customer Support page, in the Quick start config field, modify the JSON as shown.
"headerSearch": {
"display_search": true,
"search_placeholder_text": "Search articles and request items",
"exclude_search_for_pages": "csm_home_new"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1247


<!-- page 1248 -->
Note: You can also modify the placeholder text. The default text is Search
articles and request items.
4. Modify the placeholder text.
The default text is Search articles and request items.
5. Select Update.
Configure a wishlist and cart for your portal header
Display a wishlist and cart on your portal header.

Before you begin

Role required: sp_admin or admin

Procedure
1. Modify JSON.
a. Navigate to All > Service Portal > Portal.
b. On the Service Portal page, search and select Customer Support in the Title column.
c. On the Customer Support page, in the Main menu field, select the Preview this record icon
( ).
d. Select Open Record on the Instance with Menu pop-up window.
e. On the Portal revamp demo menu page, in the Additional options, JSON format field,
modify the JSON as shown.
{
"enable_cart": {
"displayValue" : "true",
"value": false
},
"enable_wishlist": {
"displayValue" : "true",
"value": false
}
}
f. Select Update.
2. Enable wish list.
a. Navigate to Service Catalog > Maintain Catalogs.
b. Open Customer Service record.
c. Select Enable Wish List check-box.
d. Select Update.
Configure notification, approval, and survey for your portal header
Display menu items like notification, approval, and survey on your portal header.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1248


<!-- page 1249 -->
Before you begin

Role required: sp_admin or admin

Procedure
1. Navigate to All > Service Portal > Portal.
2. On the Service Portal page, search and select Customer Support in the Title column.
3. On the Customer Support page, in the Main menu field, select the Preview this record icon
( ).
4. Select Open Record on the Instance with Menu pop-up window.
5. On the Portal revamp demo menu page, select New in the related list and create notifications,
approvals, and surveys.
6. Create a notification item on the header.
a. On the form, fill in the fields.
For a description of the field values, see Portal Header notification, approval, and survey
form.
b. Select Submit.
7. Create an approval item on the header.
a. On the form, fill the fields.
For a description of the field values, see Portal Header notification, approval, and survey
form.
b. Select Submit.
8. Create a survey item on the header.
a. On the form, fill the fields.
For a description of the field values, see Portal Header notification, approval, and survey
form.
b. Select Submit.
Portal Mega Menu widget
The Portal Mega Menu widget displays a hierarchical menu on the header of the portal home
page to enable navigation to different pages. You can also display a cart, wish list, guided tour,
and scripted list such as notification, approval, and survey on the header of your portal.
Portal Mega Menu widget

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1249


<!-- page 1250 -->
For more information about how to configure the Portal Mega Menu widget, see Configure the
category of a Portal Mega Menu widget.
Configure the category of a Portal Mega Menu widget
Configure a Portal Mega Menu widget to define a menu category and associate pages to it to be
able to navigate easily to different pages from the portal page.

Before you begin

The UI Components for Customer Portals plugin must be installed. For more information, see
Activate the UI Components for Customer Portals plugin.
Role required: sp_admin or admin

Procedure
1. Navigate to All > Service Portal > Portals.
2. On the Service Portals page, in the Title column, enter Customer Service.
3. Select Customer Service.
4. On the Customer Service form, in the Main menu field, select the Preview this record icon ( ).
If a message appears about the application scope, select here to be able to edit the record.
5. On the Instance with Menu form, select Open Record.
6. On the CSP Header Menu form, if Portal Mega Menu doesn’t appear in the Widget field,
search for and select it.
7. Select Update.
8. On the CSP Header Menu page, in the Related Links section, select the category that you want
to update.
9. On the Menu item form, fill in the fields.
For a description of the field values, see Menu Item form

.

10. Select Update.
Portal Browse Taxonomy widget
The Portal Browse Taxonomy widget displays hierarchical taxonomy topics that enable your
users to navigate to knowledge articles and catalog items through the widget's navigation pane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1250


<!-- page 1251 -->
Portal Browse Taxonomy widget

For more information about how to configure the Portal Browse Taxonomy widget using the
instance options, see Add and configure the Portal Browse Taxonomy widget.
Add and configure the Portal Browse Taxonomy widget
Add the Portal Browse Taxonomy widget to your portal and modify its behavior. The widget
displays taxonomy topics along with the articles and catalog items related to them.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
You must have the following setup in order to add, update, and use this widget:
• The page to which you want to add the widget. For more information, see Create a page for
Configurable Portal widgets
• A taxonomy to map your content. For more information, see Create taxonomy

.

• At least one taxonomy associated with your portal. For more information, see Add a taxonomy
to your portal.
• At least one topic associated with the taxonomy. For more information, see Create and
associate topics .
• Topics associated with knowledge categories and catalog categories. For more information,
see Associate content categories to topics
and Associate content from catalog categories to
a topic .
Role required: admin or sp_admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1251


<!-- page 1252 -->
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the Widgets pane, in the Filter Widget field, enter Portal Browse Taxonomy.
7. Drag the Portal Browse Taxonomy widget onto the container layout.
8. In the Edit page, select a Portal Browse Taxonomy widget.
9. Select the Pencil icon (

).

10. On the Instance form, fill in the fields.
For a description of the field values, see Portal Browse Taxonomy widget instance options
form.
Add a taxonomy to your portal
Create a taxonomy to organise knowledge articles and catalog items under topics which are
relevant to your user. Associate a taxonomy to your portal to display the relevant topics on the
widgets.

Before you begin

Role required: admin or sp_admin

Procedure
1. Navigate to All > Service Portal > Portals.
2. On the Service Portal page, search Customer Support in the Title column.
You can select any portals and a taxonomy to it.
3. On the Customer Support page, in the related list, select the Taxonomy tab.
4. In the Taxonomy tab, move any taxonomy from the Collection to the Taxonomy list.
Portal Banner widget
You can use the Portal Banner widget to display announcements, new product or feature
highlights, and important information on the portal page.
Portal Banner widget

For information about how to configure instance options for the Portal Banner widget, see Add
and configure the Portal Banner widget.
Add and configure the Portal Banner widget
Add a Portal Banner widget to your portal and modify its appearance and behavior. You can use
the Portal Banner widget to display announcements, new product or feature highlights, and
important information on the portal page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1252


<!-- page 1253 -->
Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

About this task
https://player.vimeo.com/video/1086566146?
h=4550386275&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Add container.
a. Select the Widgets tab.
b. In the Layouts section, drag the Container layout onto the portal edit page.
c. On the container, select the Pencil icon (

).

d. In the Width field, select Fluid.
e. Select Save.
5. Add columns to container.
a. On the container, add a set of columns by selecting the plus button (
b. In the column, select the Edit page properties icon (

).

).

Note: Verify that Column is selected in the breadcrumbs

navigation.
c. Select the Edit page properties icon (

) in the banner in Service Portal Designer.

d. On the Page window, in the Page Specific CSS field, paste the following CSS code.
.col-md-12{
padding-left: 0;
padding-right: 0;
}
.padding-top {

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1253


<!-- page 1254 -->
padding-top: 0;
}
If a message appears about the application scope, select here to be able to edit the record.
e. Select Save.
6. Add portal banner widget.
a. On the Widgets pane, in the Filter Widget field, enter Portal Banner.
b. Drag the widget onto the container.
c. In the Edit page, select the Portal Banner widget.
d. Select the Pencil icon (

).

e. On the Instance form, in the Presentation field, paste the following JSON code into the
Search Placeholder Text field.
{
"title": "enter the title",
"size": "enter the size of search bar",
"color": "enter color"
}
For more information about each parameter, see Script parameters for the search option in
the Portal Banner widget.
f. On the Instance form, fill in the fields.
For a description of the field values, see Portal Banner widget instance options form.
g. Select Save.
Provide web page link buttons to display on the Portal Banner widget
Provide a link to a web page that you want to display by defining primary or secondary buttons on
the Portal Banner widget. The widget displays these buttons by default.

Before you begin

The UI Components for Customer Portals plugin must be installed. For more information, see
Activate the UI Components for Customer Portals plugin.
Role required: sp_admin or admin

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. On the Extension Points page, in the API Name column, enter *banner.
3. Select sn_ciwf_ui_cmpnt.BannerButtonsConditionScript in the API Name column.
If a message appears about the application scope, select here to be able to edit the record.
4. On the BannerButtonsConditionScript page, in the Related links section, select Create
Implementation.
If a message appears about the application scope, select here to be able to edit the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1254


<!-- page 1255 -->
5. On the BannerButtonsConditionScript page, in the Script field, define the primary and
secondary buttons by pasting the following CSS code and then customizing it.
var BannerButtonsConditionScript = Class.create();
BannerButtonsConditionScript.prototype = {
initialize: function() {
},
showPrimaryButton: function() {
// add your condition here
return true;
},
showSecondaryButton: function() {
// add your condition here
return true;
},
type: 'BannerButtonsConditionScript'
};
6. Copy the name of the condition script from the Name field.
7. Select Update.
8. Navigate to your portal home page.
9. On the Edit page, select the Portal Banner widget.
10. Press Control+right-click.
11. Select Instance Options.
12. In the Behavior section, paste the name that you copied into the Button Condition Script field.
13. Select the condition script from the list.
14. Select Save.
Add a widget in the Portal Banner widget
Add a widget for additional functionality to the Portal Banner widget and configure it. For
example, you could add the Portal Quick Links widget to enable users to access knowledge
articles, external URLs, catalog items, or custom pages from the Portal Banner widget.

Before you begin

The UI Components for Customer Portals plugin must be installed. For more information, see
Activate the UI Components for Customer Portals plugin.
Role required: admin or sp_admin

Procedure
1. Navigate to your portal home page.
2. On the widget you want to add, press Control+right-click.
3. In the context menu, select Instance in Page Editor.
4. In the Edit section, select the Portal Quick Links widget from the flowchart.
The Portal Quick Links widget has been considered as an example.
5. Select the Instance 2.
6. Copy the JSON code from the Additional options, JSON format field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1255


<!-- page 1256 -->
7. On your portal home page, press Control+right-click on the Portal Banner widget.
8. Select Instance Options.
9. In the Behavior section, paste the JSON code into the Widget Option Schema field.
10. In the Widget Option Schema field, modify the JSON code to update the configuration of the
widget that you've added.
For more information on each JSON parameters of the Portal Quick Links widget, see Portal
Banner widget JSON parameters.
11. Select Save.
Configure localization for Portal Banner heading
Configure the portal banner heading instance option to support localization and personalize the
portal experience for different users.

Before you begin

Role required: admin

About this task

The portal banner widget enables you to customize the heading text displayed to users on the
business portal. You can modify the heading text from the instance options and then create a
translation record in the sys_ui_message table. This setup lets you personalize user experience
across different regions and languages.

Procedure
1. Configure the instance option.
a. Navigate to the page/portal where the widget is configured.
b. Press Control+right-click on the Portal Banner widget and select Instance Options.
c. In Heading, enter the desired text.
For details on filling the Heading field, see Portal Banner widget instance options form.
2. Create a translation record (for localization).
a. Navigate to All > System Localization > Messages.
b. Select New.
c. On the Message New Record form, fill in the fields.
Message New Record form
Field

Key

Description

Exact text as configured in the instance
option.
Pass the parameters, if you have used
variables in the heading field:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1256


<!-- page 1257 -->
Field

Description

▪ <user>: {firstName} {lastName}
▪ <title>: {title}
Language

Target language

Code

sn_ciwf_ui_cmpnt

Message

Translation of text entered in the Key field.

d. Select Submit.

Result

A new translation record is created which supports localization.
Portal Banner Carousel widget
A carousel in your home page banner can display multiple announcements and highlight brief
information on features and products.
Portal Banner Carousel widget
The following image shows a sample carousel widget on a portal home page.

For more information, see Add and configure the Portal Banner Carousel widget
Add and configure the Portal Banner Carousel widget
Add a Portal Banner Carousel widget to the portal and modify its presentation and behavior.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1257


<!-- page 1258 -->
6. On the container, select the Pencil icon (

).

7. In the Width field, select Fluid.
8. Select Save.
9. On the container, add a set of columns by selecting the plus button (
10. In the column, select the Edit page properties icon (

).

) in the Service Portal Designer banner.

Note: Verify that Column is selected in the breadcrumbs

navigation.
11. On the Page window, in the Page Specific CSS field, paste the following CSS code:
.col-md-12{
padding-left: 0;
padding-right: 0;
}
.padding-top {
padding-top: 0;
}
If a message appears about the application scope, select here to be able to edit the record.
12. Select Save.
13. On the Widgets pane, in the Filter Widget field, enter Portal Banner Carousel.
14. Drag the widget onto the container.
15. In the Edit page, select the Portal Banner Carousel widget.
16. Select the Pencil icon (

).

17. On the Instance form, fill in the fields.
For a description of the field values, see Portal Banner Carousel widget instance options form.
18. Select Save.
Create a slide for the Portal Banner Carousel widget
Create a slide to include images in the Portal Banner Carousel widget that a user can scroll
through.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
Role required: sp_admin or admin

Procedure
1. Select All.
2. In the filter navigator, enter sp_carousel_slide.list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1258


<!-- page 1259 -->
3. On the Carousel Slides page, select New.
4. On the Carousel slides form, fill in the fields.
Carousel slides form
Field

Description

Name

Name of the carousel slide.

HREF/URL

The URL that opens an internal web page or a portal page in the same tab and
an external page or a portal in a new tab.

Note: For more information about linking to a page within a portal, see
Page navigation in Service Portal by URL
Application

.

The application that contains this configuration record. This field is
automatically set to Global.

Background Image to appear as the background of the slides in the carousel.
The recommended dimension is 1022x300 pixels
5. Select Submit.

Result

The slide is created and appears on the Carousel Slides (sp_carousel_slide) page.
Portal Case Cards widget
The Portal Case Cards widget displays cards for cases that you define. By default, the displayed
cases are those awaiting information or are resolved. You can choose to define different criteria.
The following illustration shows the default card view with cases that are currently in the awaiting
info and resolved states.
Portal Case Cards widget

For more information about how to configure the instance options for the Portal Case Cards
widget, see Add and configure the Portal Case Cards widget.
Add and configure the Portal Case Cards widget
Add a Portal Case Cards widget to your portal and modify its data, presentation, and behavior.
You can use the Portal Case Cards widget to display status, priority, and other relevant details
related to your cases.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1259


<!-- page 1260 -->
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

).

7. On the Widgets pane, in the Filter Widget field, enter Portal Case Cards.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Case Cards widget.
10. Select the Pencil icon (

).

11. If you want to use configured background and text colors to indicate the state of the cases
displayed in the widget, enter JSON code in the following format in the State Highlight Color
field and modify it with your desired colors.
The default text color for all case states is ‑181A1F (black). If you create a state, the default
highlight color is ‑CBE9FC (light blue) and the text color is ‑181A1F (black). For more
information about the default color values, see Default highlight color for different case states.
[
{
"value": "1",
"background_colour": "#CBE9FC",
"text_colour": "#181A1F"
},
{
"value": "10",
"background_colour": "#D1D2EE",
"text_colour": "#181A1F"
},
{
"value": "18",
"background_colour": "#FBF7BF",
"text_colour": "#181A1F"
},
{
"value": "6",
"background_colour": "#D2EABC",
"text_colour": "#181A1F"
},
{
"value": "3",
"background_colour": "#C2C4CA",
"text_colour": "#181A1F"
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1260


<!-- page 1261 -->
{
"value": "7",
"background_colour": "#FFCCD2",
"text_colour": "#181A1F"
}
]
For <value>, enter an integer value of the case state for which you want to change the colors.
For more information about finding this value, see Display the integer values of all case states.
12. On the Instance form, fill in the fields.
For a description of the field values, see Portal Case Cards widget instance options form.
13. Select Save.
Display the integer values of all case states
Display the integer values of all of the states associated with cases.

Before you begin

Role required: sp_admin or admin

Procedure
1. Navigate to All > System Definitions > Choice Lists.
2. On the Choices page, in the Table column, enter *sn_customerservice_case.
3. In the Element column, enter state.

Result

The Value column on the Choices page displays the integer values of all the states related to a
case.
Portal Quick Links widget
The Portal Quick Links widget displays a variety of links to internal and external resources on the
portal for quick access.
The quick links in the portal widget enable your users to quickly access content on the portal.
These quick links can be related to different types of information: knowledge articles, external
URLs, catalog items, or custom pages.
The following types of Portal Quick Links widgets display quick links related to a single type of
information: knowledge articles or catalog items:
• Portal Knowledge Quick Links widget: Displays quick links in the widget associated with
relevant knowledge articles. For more information, see Portal Knowledge Quick Links widget.
• Portal Catalog Quick Links widget: Displays quick links in the widget associated with relevant
catalog items. For more information, see Portal Catalog Quick Links widget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1261


<!-- page 1262 -->
Portal Quick Links widget

For more information, see Add and configure the Portal Quick Links widget.
Add and configure the Portal Quick Links widget
Add a Portal Quick Links widget to the portal and modify its presentation and behavior. You can
use the Portal Quick Links widget to display knowledge articles, external URLs, catalog items, or
custom pages on your portal.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
seeActivate the UI Components for Customer Portals plugin.
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designers.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

)

7. On the Widgets pane, in the Filter Widget field, enter Portal Quick Links.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Quick Links widget.
10. Select the Pencil icon (

).

11. On the Instance form, fill in the fields.
For a description of the field values, see Portal Quick Links widget instance options form.
12. Select Save.
Portal Knowledge Quick Links widget
The Portal Knowledge Quick Links widget displays a list of relevant knowledge articles for quick
access on the portal. The card displays article details such as the title, preview, author, view
count, rating, and updated date in the widget.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1262


<!-- page 1263 -->
Portal Knowledge Quick Links widget

For more information, see Add and configure the Portal Knowledge Quick Links widget.
Add and configure the Portal Knowledge Quick Links widget
Add a Portal Knowledge Quick Links widget to the portal and modify its data, presentation, and
behavior.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
seeActivate the UI Components for Customer Portals plugin
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

)

7. On the Widgets pane, in the Filter Widget field, enter Portal Knowledge Quick Links
.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Knowledge Quick Links widget.
10. Select the Pencil icon (

).

11. On the Instance form, fill in the fields.
For a description of the field values, see Portal Knowledge Quick Links widget instance options
form.
12. Select Save.

Result

The Portal Knowledge Quick Links widget appears in the widget according to the configured
instance options.
Portal Catalog Quick Links widget
The Portal Catalog Quick Links widget displays catalog items according to filter criteria, enabling
you to include an image, icon, name, and description on the card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1263


<!-- page 1264 -->
Portal Catalog Quick Links widget

For more information about how to configure the instance options for Portal Catalog Quick Links,
see Add and configure the Portal Catalog Quick Links widget.
Add and configure the Portal Catalog Quick Links widget
Add a Portal Catalog Quick Links widget on your portal and modify its data, presentation, and
behavior. You can use the Portal Catalog Quick Links widget to display frequently accessed
catalog items on your portal.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
seeActivate the UI Components for Customer Portals plugin
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

)

7. On the Widgets pane, in the Filter Widget field, enter Portal Catalog Quick Links.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Catalog Quick Links widget.
10. Select the Pencil icon (

).

11. On the Instance form, fill in the fields.
For a description of the field values, see Portal Catalog Quick Links widget instance options
form.
12. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1264


<!-- page 1265 -->
Portal Data List widget
The Portal Data List widget displays data related to cases from selected case tables in either a
list or card format.
The list view displays a columnar list of cases and their information. You can also display the data
list without the category on the left and pin the first column.
Portal Data List widget list view

The card view displays case information in stacked cards.
Portal Data List widget card view

Portal Data List widget without categories

Each row in the widget represents a record. You can search, view, sort, and interact with the
information presented.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1265


<!-- page 1266 -->
For more information about how to configure the instance options for the Portal Data List widget,
see Add and configure the Portal Data List widget.
The Data List portal widget can be used in the following scenarios:
• Dynamic data list: Enables you to display records dynamically based on the configuration
provided in the URL parameters. It avoids the need to create duplicate list pages. You can use
a common page to display records from any table by passing the following URL parameters:
table, filter, sort order, view, and target view page.
• Static data list: Ability to display records from one or more tables specified in the widget
instance options. It enables you to personalize the data list experience for a particular entity or
table, such as cases, products, contacts, and so on.
• Related data list: Enables you to display records associated with an entity on the record
view page. The data list is configured to identify the entity specified in the URL and filters the
records accordingly.
Add and configure the Portal Data List widget
Add a Portal Data List widget to your portal and modify its data, appearance, and behavior. You
can use the Portal Data List widget to display different case-related data in a card or list format on
your portal.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

).

7. On the Widgets pane, in the Filter Widget field, enter Portal Data List.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Data List widget.
10. Select the Pencil icon (

).

11. On the instance options page, in the Data field, paste and update the following JSON code to
configure the lists.
[
{
"category": "All Cases",
"ID": "all_cases",
"table": "sn_customerservice_case",
"view": "csp",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
"card_view_primary_column": "number",
"card_view_secondary_column": "short_description",
"card_view_additional_columns":
"product|contact|account|priority",
"target_page_id": "standard_ticket",
"guest_view": "connect"
"role_based_views":{
"field_service_agent_view":"snc_field_technician",
"agent_case_view":["snc_customer_service_agent","snc_manager"]
},
"sub_categories": [
{
"sub_category": "Open",
"sub_category_query": "active=true"
},
{
"sub_category": "Closed",
"sub_category_query": "active=false"
}
],
"run_time_filters": [
{
"column": "product",
"selection_type": "multi_select"
},
{
"column": "contact",
"selection_type": "multi_select"
},
{
"column": "account",
"selection_type": "multi_select"
},
{
"column": "priority",
"selection_type": "multi_select"
},
{
"column": "state",
"selection_type": "multi_select"
},
{
"column": "sys_updated_on",
"selection_type": "single_select",
"ranges": [
{
"label": "Last 30 days",
"query":
"sys_updated_on<=javascript:gs.endOfToday()^sys_updated_onRELA
TIVEGT@dayofweek@ago@30"
},
{
"label": "Last 60 days",
"query":
"sys_updated_on<=javascript:gs.endOfToday()^sys_updated_onRELA
TIVEGT@dayofweek@ago@60"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
},
{
"label": "Last 90 days",
"query":
"sys_updated_on<=javascript:gs.endOfToday()^sys_updated_onRELA
TIVEGT@dayofweek@ago@90"
},
{
"label": "Before 90 days",
"query":
"sys_updated_onRELATIVELT@dayofweek@ago@90"
}
]
}
]
},
{
"category": "Actions Needed",
"table": "sn_customerservice_case",
"view": "Case",
"card_view_primary_column": "number",
"card_view_secondary_column": "short_description",
"card_view_additional_columns":
"product|priority|state|contact",
"filter": "stateIN6,18",
"glyph": "check",
"target_page_id": "csm_ticket"
},
{
"category": "Work Orders",
"table": "wm_order",
"card_view_primary_column": "number",
"card_view_secondary_column": "short_description",
"card_view_additional_columns": "priority|state",
"glyph": "briefcase"
}
]
For more information, see Portal Data List widget JSON parameters.
Each category in the widget displays a list of filtered records from a selected table. The default
table is the Case [sn_customerservice_case] table. In a category, you can further filter the
records and display them in tabs using the pre_defined_filters parameter. You can
also configure the filter options displayed in the filter icon using the run_time_filters
parameter.
12. On the Instance form, fill in the fields.
For a description of the field values, see Portal Data List widget instance options form.
13. Select Save.
Configure public access on the Portal Data List widget
Configure the Portal Data List widget and page content for public access to enable guest users to
view data without authentication.

Before you begin

Role required: sp_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
Procedure
1. Make Portal Data List Widget public
a. Navigate to All > Service Portal > Widgets.
b. Search and select Portal data list in the Name column.
c. Select the Public check box.
d. Select Update.
2. Make pages containing the Portal Data List widget public (For example, cases and tasks page).
a. Navigate to All > Service Portal > Pages.
b. Search and select the page containing the Portal Data List widget in the Title column (For
example, cases and tasks page).
c. Select the Public check box.
d. Save the page.
e. Select Instance for the Portal Data List widget from Page Content.

The widget instance page opens.
f. Select Roles.
g. Search and move public from Available to Selected List.
h. Select Done.
i. Select Update.
3. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
Hide or show categories in the Data List widget
Create a condition script to hide or show a category in the Portal Data List widget.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
Role required: admin or sp_admin

Procedure
1. Navigate to All > System Extensions Points > Scripted Extensions Points.
2. On the Extension Points page, in the API Name column search field, enter *datalist.
3. Select the sn_ciwf_ui_cmpnt.DatalistCategoryConditionScript in the API Name column.
If a message appears about the application scope, select here to be able to edit the record.
4. On the DatalistCategoryConditionScript page, in the Related links, select Create
implementation.
5. In the Script field, paste the following CSS code:
showCategory: function(category_id, params) {
/*
if(category_id=="cases_category"){
return true;
}
*/
return true;
}
Function parameters
Parameters

Description

category_id

Portal Data List category id.

params

JSON containing url_params and
related_table. For example,
{
"url_params": {
"table":
"customer_contact",
"sys_id":
"60beb5e7d7600200e5982cf65e6
103ad",
"view": "sp"
},
"related_table":
"sn_customerservice_case"
}

6. Copy the name of a condition script from the Name field.
7. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
8. Navigate to your portal home page.
9. On the Data List widget, press Control+right-click.
10. Select Instance Options.
11. In the Behavior section, paste the name that you copied into the Data List condition script
field.
12. Select the condition script from the list.
13. Select Save.
Modify view in the Data List widget
Create a condition script to modify views in the Portal Data List widget.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
Role required: sp_admin

About this task
Priority order for how the Data List widget determines the view
Priority

Source

Description

1 (Highest)

Script

If a Views Condition Script is configured
and returns a view name, that view is used.
Scripts have the most flexibility since
they can apply custom logic using the
parameters - categoryId, params.

2

role_based_views /
guest_view

If no script is configured or the script
doesn’t return a view, the system checks the
JSON instance options.
• For logged-in users, it checks
role_based_views to find a view
matching the user's roles.
• For non-logged-in users, it uses
guest_view
.

3

view

The widget uses the view JSON instance
option if the script or role based view/guest
view mappings doesn’t apply.

4 (Lowest)

Default View on Platform

If no other configuration applies, the widget
uses the platform’s default view for the
table.

Procedure
1. Navigate to All > System Extensions Points > Scripted Extensions Points.
2. On the Extension Points page, in the API Name column search field, enter *datalist.
3. Select the sn_ciwf_ui_cmpnt.DatalistCategoryConditionScript in the API Name column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
If a message appears about the application scope, select here to be able to edit the record.
4. On the DatalistCategoryConditionScript page, in the Related links, select Create
implementation.
5. In the Script field, paste the following CSS code:
getView: function(category_id, params) {
return "case"; // view
}
Function parameters
Parameters

Description

category_id

Portal Data list category id.

params

JSON containing url_params and
related_table. For example,
{
"url_params": {
"table":
"customer_contact",
"sys_id":
"60beb5e7d7600200e5982cf65e6
103ad",
"view": "sp"
},
"related_table":
"sn_customerservice_case"
}

6. Copy the name of a condition script from the Name field.
7. Select Update.
8. Navigate to your portal home page.
9. On the Data List widget, press Control+right-click.
10. Select Instance Options.
11. In the Behavior section, paste the name that you copied into the Data List condition script
field.
12. Select the condition script from the list.
13. Select Save.
Filter records in the Data List widget
Create a condition script to filter records in the Portal Data List widget.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
Role required: sp_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
Procedure
1. Navigate to All > System Extensions Points > Scripted Extensions Points.
2. On the Extension Points page, in the API Name column search field, enter *datalist.
3. Select the sn_ciwf_ui_cmpnt.DatalistCategoryConditionScript in the API Name column.
If a message appears about the application scope, select here to be able to edit the record.
4. On the DatalistCategoryConditionScript page, in the Related links, select Create
implementation.
5. In the Script field, paste the following CSS code:
getQuery: function(category_id, params) {
return “query”; // filter query
}
Function parameters
Parameters

Description

category_id

Portal Data List category id.

params

JSON containing url_params and
related_table. For example,
{
"url_params": {
"table":
"customer_contact",
"sys_id":
"60beb5e7d7600200e5982cf65e6
103ad",
"view": "sp"
},
"related_table":
"sn_customerservice_case"
}

6. Copy the name of a condition script from the Name field.
7. Select Update.
8. Navigate to your portal home page.
9. On the Data List widget, press Control+right-click.
10. Select Instance Options.
11. In the Behavior section, paste the name that you copied into the Data List condition script
field.
12. Select the condition script from the list.
13. Select Save.
Portal FAQ widget
The Portal FAQ widget displays a frequently asked questions list (FAQ) from the selected
knowledge table in the widget on the portal. It enables your users to find answers to their queries
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
without the need to contact customer support or navigate through multiple knowledge article
pages. You can filter the FAQs using options in the main navigation.
The following illustration shows five FAQs as the default view.
Portal FAQ widget

For more information, see Add and configure the Portal FAQ widget.
Add and configure the Portal FAQ widget
Add the Portal FAQ widget to your portal and modify its data, presentation, and behavior. You can
use the Portal FAQ widget to display a frequently asked questions list (FAQ) from a knowledge
table on the portal.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin.
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: sp_admin or admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

)

7. On the Widgets pane, in the Filter Widget field, enter Portal FAQ.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal FAQ widget.
10. Select the Pencil icon (

).

11. On the Instance form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
For a description of the fields values, see Portal FAQ widget instance options form
12. Select Save.
Portal Polaris Footer widget
The Portal Polaris Footer widget displays contact information, social media links, and other
common links at the bottom of the portal page.
Include the Portal Footer widget on your portal page to display information about your company.
The items you can display are:
• Organization logo on top-left corner of footer
• Organization address under the logo
• Sitemap links under different categories at the center of the footer
• Footer links at the bottom right of the footer
• Social media at the bottom right of the footer
• Copyright text on the bottom-right corner of the footer
Portal Polaris Footer widget

For more information, see Configure the Portal Polaris Footer widget.
Configure the Portal Polaris Footer widget
Configure the Portal Polaris Footer widget to display your company’s corporate office address,
email address, and more on the portal page.

Before you begin

The Portal Next Experience theme application should have been activated.
Role required: sp_admin

About this task
Procedure
1. Navigate to All > Service Portal > Portals.
2. On the Service Portal page, in the Title column, enter *customer support.
3. Select Customer Support.
4. On the Customer Support form, in the Quick start config field, paste the following JSON code
and update it.
[{
"footer": {
"org_info": [
"<line #1>",
"<line #2>",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
"<line #3>"
],
"copyright": "<copyright text>",
"logo_img_name": "<image name from db_image table>",
"sitemap_links_menu_sys_id": "<enter the sys_id>",
"footer_links_menu_sys_id": "<enter the sys_id>",
"social_links_menu_sys_id": "<enter the sys_id>"
}
}]
For more information about the parameters, see Portal Footer widget JSON parameters.
5. Select a theme for your portal.
Note that the predefined La Jolla theme, used as an example, is active by default.
a. In the Theme field, select the Lookup using list icon (

)

b. On the Themes page, in the Name column, search for and select the La Jolla theme.
The La Jolla theme is set as your portal theme.
6. Select the Portal Footer as the footer for your portal theme.
a. In the Theme field, select the Preview this record icon (

).

b. On the Theme form, select Open Record.
c. On the La Jolla form, in the Footer field, select the Lookup using list icon (

).

d. On the Header | Footers window, in the Name column, search for and select Portal
Footer.
e. Select Update.

What to do next

Configure links to appear in the Portal Footer widget:
• To add pages or sections of your website in a sitemap, see Configure sitemap links for the
Portal Polaris Footer widget
• To add the social media accounts of your organization, see Configure social media links in the
Portal Polaris Footer widget
• To include a link to a site on a portal page, see Add related links in the Portal Polaris Footer
widget.
Configure sitemap links for the Portal Polaris Footer widget
Display links to various important pages or sections of your website in a sitemap. Sitemaps help
users explore the site's content.

Before you begin

The Portal Next Experience theme should have been activated.
The Portal Polaris Footer widget must have been configured. For more information, see Configure
the Portal Polaris Footer widget
Role required: admin or sp_admin

Procedure
1. Navigate to All > Service Portal > Menus.
2. On the Instances with Menu page, in the Title column, enter Portal Footer Sitemap
Links.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
Note: You can create a new menu record by selecting New. After the record is created,
update the Quick start config field with the new record's sys_id.
3. Select the entry in the Updated column.
4. On the Portal Footer Sitemap Links page, in the Related Links, select the category that you
want to configure.
5. On the Category page, in the Related links, select a sitemap link from the Label column.
6. On the Menu item form, fill in the fields.
For a description of the field values, see Menu Item form

.

If a message appears about the application scope, select here to be able to edit the record.
7. Select Update.

Result

The sitemap links are configured and enabled.
Configure social media links in the Portal Polaris Footer widget
Configure links to your organization's social media accounts in the footer of the portal page.

Before you begin

The Portal Next Experience theme should have been activated.
The Portal Poalris Footer widget must have been configured. For more information, see Configure
the Portal Polaris Footer widget.
Role required: admin or sp_admin

Procedure
1. Navigate to All > Service Portal > Menus.
2. On the Instances with Menu page, in the Title column, enter Portal Footer Social
Links.

Note: You can create a new menu record by selecting New. After the record is created,
update the Quick start config field with the new record's sys_id.
3. Select the entry in the Updated column.
4. On the Portal Footer Social Links page, in the Related Links, select any social link from the
Label column.
5. On the Menu item form, fill in the fields.
For a description of the field values, see Menu Item form

.

If a message appears about the application scope, select here to be able to edit the record.
6. Repeat these steps for any social media account for which you want a link in the portal footer.
7. Select Update.
Add related links in the Portal Polaris Footer widget
Configure the footer link to include a link to a site you want your users to be able to access from
your portal page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
Before you begin

The Portal Next Experience theme should have been activated.
The Portal Polaris Footer widget must have been configured. For more information, see Configure
the Portal Polaris Footer widget
Role required: admin or sp_admin

Procedure
1. Navigate to All > Service Portal > Menus.
2. On the Instances with Menu page, in the Title column, enter Portal Footer Links.
3. Select the entry shown in the Updated column.
4. On the Portal Footer Links page, in the Related Links, select any category from the Label
column.
5. On the Menu item form, fill in the fields.
For a description of the field values, see Menu Item form

.

Note: If a message appears about the application scope, select here to be able to edit
the record.
6. Select Update.

Result

The link is included in the portal footer and opens a web page when accessed.
Portal Object widget
The Portal Object widget displays key information of a record from the tables available on your
®
ServiceNow instance. Additionally, your users can take related actions on the selected record.
The Portal Object widget enables you to display information from a specified table as cards
®
on your portal. You can select any table from the ServiceNow instance. The widget displays
information based on the sys_id of the record. It also displays a list of actions your user can take
on the selected record.
The Portal Object widget currently supports both desktop and mobile versions.
Portal Object widget

For more information about how to configure the Portal Object widget, see Add and configure the
Portal Object widget.
Add and configure the Portal Object widget
Add a Portal Object widget to your portal and modify its data and behavior. You can use the
Portal Object widget to display important information and actions related to records from a
defined table on your portal homepage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
If you haven’t already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: admin or sp_admin

About this task

The Portal Object widget displays the information based on the sy_id entered in the widget
instance options. If no sys_id is provided in the instance options, the widget uses the sys_id
parameter provided in the URL.

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

).

7. On the Widgets pane, in the Filter Widget field, enter Portal Object.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Object widget.
10. Enable editing of the widget by selecting the Pencil icon (

).

11. On the Instance form, fill in the fields.
For a description of the field values, see Portal Object widget instance options form.
12. Select Save.
Portal Taxonomy Topic widget
The Portal Taxonomy Topic widget displays topics as cards on your portal page. It enables your
users to access knowledge articles and catalog items related to a topic displayed on your portal
in a Portal Browse Taxonomy widget.
Display topic-related information to your users through cards displayed on your portal page that
are defined through the Portal Browse Taxonomy widget. When a topic is selected on a card,
your user is automatically redirected to a portal page that is defined when you configure a Portal
Browse Taxonomy widget. This widget displays knowledge articles and catalog items related to
the selected topic. You can display up to eight topics as cards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
Portal Taxonomy Topic widget

For more information, see Add and configure the Portal Taxonomy Topic widget.
Add and configure the Portal Taxonomy Topic widget
Add a Portal Taxonomy Topic widget to your portal to display topics that your users can get more
information about and modify its presentation and behavior. Once a topic card is selected, users
are redirected to relevant knowledge articles and catalog items configured through the Portal
Browse Taxonomy widget.

Before you begin

The UI Components for Customer Portals plugin must have been activated. For more information,
see Activate the UI Components for Customer Portals plugin
If you have not already created the page to which you want to add the widget, see Create a page
for Configurable Portal widgets.
Role required: admin or sp_admin

Procedure
1. Navigate to the All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. On the Service Portal Designer page, search for and select the page to which you want to add
the widget.
4. Select the Widgets tab.
5. In the Layouts section, drag the Container layout onto the portal edit page.
6. On the container, add a set of columns by selecting the plus button (

).

7. On the Widgets pane, in the Filter Widget field, enter Portal Taxonomy Topic.
8. Drag the widget onto the container.
9. In the Edit page, select the Portal Taxonomy Topic widget.
10. Enable editing the widget by selecting the Pencil icon (

).

11. On the Instance form, fill in the fields.
For a description of the field values, see Portal Taxonomy Topic widget instance options form.
12. Select Save.

What to do next

Configure a Portal Browse Taxonomy widget to work with the Portal Taxonomy Topic widget

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


