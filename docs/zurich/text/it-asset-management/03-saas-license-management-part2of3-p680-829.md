# Zurich IT Asset Management — SaaS License Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 680–829 of 2359 | Part 2 of 3

Sections: SaaS License Management (p530)

---

<!-- page 680 -->
Important: You must select the Software Asset Management integration with

Salesforce CRM check box for this integration while installing optional features on the
Application Manager
page. For more information about choosing the required SaaS
applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Salesforce CRM integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Salesforce CRM Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

Software Asset Workspace

c. Select Salesforce CRM from the dropdown list.
d. Select Continue.
The Playbook launches for Salesforce CRM
integration and the next steps aren't valid.
For more information, see Create a Sales­
force CRM integration.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display Name of the integration profile.
name
Enter a name that uniquely identifies the Salesforce organization for which you’re
creating this integration profile. For example, SFDC Org2.

Tip: Keep this name short to help it display better during reporting.
Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set to
Draft.
◦ If you have already published the integration profile, this field is automatically set
to Published.

Profile
type

Type of integration profile. This value is automatically set to Salesforce CRM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce CRM Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Salesforce
CRM Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
c. On the Download Consumption Subflow tab, verify that the Subflow field is set to
Salesforce CRM Download Consumption.
4. Select Save.

Note: The Calculate Activity subflow isn’t required for Salesforce CRM integrations
because these integrations use information about last user logins from the user records.
Your instance creates a draft integration profile. You can view consumption counts for the
specific consumption based Salesforce CRM application.
The Connection & Credential field appears and is automatically set to
sn_sforce_v2_spoke.Salesforce.
5. Select the preview icon ( ) next to the Connection & Credential field to open the connection
& credential aliases record.
6. Select Open Record in the record preview.
7. On the Connection & Credential Aliases form, create a child alias that can uniquely identify the
connection and credentials for this integration profile.
The first Salesforce CRM integration profile that you create uses the default (parent)
connection and credential alias for Salesforce. Each additional Salesforce CRM integration
profile that you create requires a unique child alias that helps differentiate the connection and
credentials between each integration profile.
a. Select the link under Child Aliases > Parentalias=*** to add child aliases.
b. Select New.
The Connection & Credential Aliases form for the child alias opens.
c. Enter a name for the child alias in the Name field.
d. Select and hold (or right-click) the form header and then select Save.
e. After the form reloads, select the Create New Connection & Credential related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


<!-- page 682 -->
f. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection information
Connection
Name

Name of the connection.

Connection
URL (Instance
URL)

URL of the Salesforce instance that you’re connecting to through this
integration.

Enter a name that uniquely identifies the Salesforce organization for which
you’re creating this connection and credential. For example, SFDC Org2.

Credential information
Grant type

The grant type for your application according to your authentication
needs. Possible values are:
▪ Authorization Code
▪ Client Credentials

OAuth Client
ID

Client ID (consumer key) that is assigned to your Salesforce application.

OAuth Client
Secret

Client secret (consumer secret) that is assigned to your Salesforce
application.

OAuth
Redirect URL

URL of the OAuth provider that users are redirected to after
authentication.
This is generally the URL of the ServiceNow instance that you specified in
Register a Salesforce application.

g. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
h. In the OAuth2 dialog box, log in to the same Salesforce admin account that you used to
register your Salesforce application.

Tip: If the dialog box doesn’t open automatically, check to make sure that pop-ups are
allowed on your browser.
If you have selected Client Credentials as the grant type, the OAuth2 dialog box
doesn't appear.
Your ServiceNow instance creates an OAuth token for Salesforce.
8. Return to your integration profile by navigating to SaaS License > Administration > Direct
Integration Profiles and then selecting the profile from the Integration Profiles list.
9. In the Connection & Credential field of the Integration Profile form, select the lookup icon to
locate and select the child alias that you created in step 7.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

682


<!-- page 683 -->
Selecting the child alias associates the alias with the integration profile. Your ServiceNow
instance uses this alias to identify the connection and credentials for this integration profile.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
11. After the connection is verified, select Publish.
12. In the Publish Confirmation dialog box, select OK.

Result

After you publish the integration profile, your ServiceNow instance begins retrieving data from
your Salesforce CRM services. For organizations with fewer than 100 users, this process typically
takes only a few minutes to complete. For organizations with 100-5000 users, this process can
take around 15 minutes to complete. For organizations with over 5000 users, this process can
take over one hour to complete.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

683


<!-- page 684 -->
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Salesforce Marketing Cloud
Integrating your Software Asset Management application with the Salesforce Marketing Cloud
service enables you to track your software subscriptions and to reclaim unused licenses.
®

Use either of the following authentication methods to integrate your ServiceNow instance with
Salesforce Marketing Cloud:
• Basic authentication
• OAuth 2.0
Integrate Salesforce Marketing Cloud using basic authentication
Integrate your ServiceNow instance with Salesforce Marketing Cloud by using basic
authentication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

684


<!-- page 685 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Required user role in the
Salesforce Marketing Cloud
application

• Email > Admin > API
Access > WebService API

Authentication scopes

None

• Administration > Users >
View
Pull user activity

• Email > Admin > API
Access > WebService API

None

• Administration > Users >
View
Reclaim subscription

• Email > Admin > API
Access > WebService API

None

• Administration > Users >
View
• Administration > Users >
Update
Download consumptions

• Email > Admin > API
Access > WebService API

None

• Email > Subscribers > Data
Extension > View
• Email > Subscribers > Data
Extension > Manage Data

Create a user for accessing the Salesforce Marketing Cloud SOAP API
Create a user with which you can access the Salesforce Marketing Cloud SOAP API. The SOAP
API enables you to retrieve records from your Salesforce Marketing Cloud data extensions and
get information about your Salesforce Marketing Cloud users.

Before you begin

Salesforce Marketing Cloud Role required: admin user with privileges to create users and roles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

685


<!-- page 686 -->
About this task

Note:

To use the web services, navigate to Setup Home > Settings > Security > Security
Settings. In the Username and Logins section, select the Enable Username and Password
for Web Services check box.
For accessing user licenses and data extension, the API user must be created within the
parent business unit. If the API user is created in a child business unit, it might not have
access to the parent business unit's data.

Procedure
1. From a web browser, go to your Salesforce Marketing Cloud instance.
2. Log in using your admin credentials.
3. On the page header of your instance, select your profile icon and then select Setup.
4. Create a Salesforce Marketing Cloud user.
a. Navigate to Administration > Users > Users.
b. Select Create.
c. On the form, fill in the fields.
General Settings form
Field

Description

Name

Name of the user.

Reply Email
Address

Email address that you want to send and reply to email messages from.
Salesforce Marketing Cloud also sends forgotten password requests to this
email address.
After you enter an email address, select Verify to verify the email address.

Add to
From Name
Dropdown

Option to send the reply email address through a domain verification
process before the email address populates in an email.

Notification
Email
Address

The email address that you want to send Salesforce Marketing Cloud
notifications to.

Username

User name for the user.

External Key

Key that uniquely identifies the user during API calls.

Time Zone

Time zone in which the user is located.

Culture
Code

Language that is used on the Salesforce Marketing Cloud user interface for
this user.

API User

The option indicating whether the user can access the Salesforce
Marketing Cloud SOAP API. Select the check box to enable this option.

Temporary
Password

A temporary password with which you can log in for the first time. You’re
prompted to change this password on the first login.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

686


<!-- page 687 -->
Field

Description

Verify
Password

Field to verify the temporary password.

d. Select Save.
5. Create a user role that enables assigned users to access the Salesforce Marketing Cloud
SOAP API and also manage users and data extensions.
a. Navigate to Administration > Users > Roles.
b. Select Create.
c. On the form, fill in the fields.
Properties form
Field

Description

Name

Name of the user role.

External Key

Key that uniquely identifies the user role.

Description

Description of the user role.

d. In the Permissions form section, expand the Email > Subscribers > Data Extension
permission category and then select the Allow check box for the View and Manage Data
access permissions.
e. Expand the Email > Admin > API Access permission category and then select the Allow
check box for the WebService API access permission.
f. Expand the Administration > Users permission category and then select the Allow check
box for the following access permissions:
▪ View
▪ Update
▪ Disable
g. Select Save.
6. Assign the user role to your Salesforce Marketing Cloud user.
a. Navigate to Administration > Users > Users.
b. From the list of available users, select the check box for the user that you created in step 4.
c. Select Manage Roles.
The Roles form for the selected user opens.
d. In the Roles form section, select Edit Roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

687


<!-- page 688 -->
e. When the list of available roles appears, select the check box for the user role that you
created in step 5.
f. Select Save.
Create a Contacts Counts report in Salesforce Marketing Cloud
Create a Contacts Counts report to retrieve and display the total number of billable contacts in
your Salesforce Marketing Cloud account.

Before you begin

Salesforce Marketing Cloud Role required: admin

Procedure
1. From a web browser, go to your Salesforce Marketing Cloud instance.
2. Log in using your admin credentials.
3. On the page header of your instance, select the business unit profile icon and then select the
top-level parent business unit so that your Contacts Counts report includes data for both the
parent business unit and all corresponding child business units.
4. From the list of available Salesforce Marketing Cloud applications, select the Analytics Builder
app icon and then select Reports.
The Reports app overview opens.
5. In the Report Catalog section, select View Catalog.
6. From the Reports Catalog, search for Contacts Counts and then select Create.
The Create Report dialog box opens.
7. In the dialog box, select the time period that you want to retrieve and display data for from the
Date Range list.
The default value is Last 30 Days.

Tip: To avoid performance issues during report generation, you should set this value to
Last 7 Days.

8. Select Submit.
Your Salesforce Marketing Cloud instance generates the report and displays the results on the
Results: Contacts Counts page.
9. On the Results: Contacts Counts page, select Save.
The Save Report dialog box opens.
10. In the dialog box, fill in the fields.
Save Report dialog box
Field

Description

Report Name

Name of the report.

Report Source

Source of the report. This field is automatically set to Contacts Counts.

Description

Description of the report.

11. Select Save.
12. Create a schedule to run the Contacts Counts report automatically.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

688


<!-- page 689 -->
a. On the page header of the Reports app, select the Overview tab to return to the Reports app
overview.
b. From your list of reports, open your newly created Contacts Counts report.
c. In the Schedule Options section, select Edit.
d. In the dialog box, fill in the fields.
Edit Schedule Options dialog box
Field

Description

Schedule Options
Start

The date and time from which you want to start running the report.

Time
Zone

Time zone in which the report is being scheduled.

Repeat

Frequency at which you want to run the report. Configure the report to run once
every week on Sundays.

End

Date on which you want to stop running the report.

Delivery Options
Format

File type and file extension in which you want to receive the report results. Select
Data File (.csv).

Location Location in which you want to save or share the report. Set this field to Save
report for FTP and then fill in the corresponding fields:
▪ Report Name: The file name of the report, excluding the file extension.
If you want to include date and time in the report name, add it in the
Reportname_YYYYMMDD_HHMMSS format.

Note: Take note of this file name for later use.
▪ Unique Option: Option to create a report record instead of replacing the
existing report record in SFTP. Leave this check box unselected.
▪ FTP Location: Location of your Salesforce Marketing Cloud FTP files. Select
ExactTarget Enhanced FTP so that the report is saved to your SFTP (SSH File
Transfer Protocol) Reports folder.

Note: You can set up an SFTP user account in Salesforce Marketing
Cloud to view the saved files at a specific FTP location. For more
information, see Setting up an SFTP user account in Salesforce
Marketing Cloud.
e. Select Save.
Create a data extension for your Contacts Counts report
Create a data extension to store your Contacts Counts report data on your Salesforce Marketing
Cloud instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

689


<!-- page 690 -->
Before you begin

Salesforce Marketing Cloud Role required: admin

About this task

Data extensions are tables that contain attributes representing your report data. When your
ServiceNow instance connects with the Salesforce Marketing Cloud service, it retrieves data
from this data extension.

Procedure
1. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon to
display the list of available Salesforce Marketing Cloud applications.
2. Select the Audience Builder app icon and then select Contact Builder.
The Contact Builder app opens.
3. Select the Data Extensions tab.
4. In the pop-up dialog box, select Get started and then select Create.
The Create New Data Extension dialog box opens.
5. In the Properties step, fill in the fields.
Properties fields
Field

Description

Creation
Method

Method in which you want to create the data extension.

Name

Name of the data extension.

Select Create from New.

External Key Optional key that uniquely identifies the data extension.
You can enter a key of your choice.
Description

Description of the data extension.

Type

Type of data extension.
This field is automatically set to Standard.

Location

Location in which you want to store the data extension.
This field is automatically set to Data Extensions. Select Change Location to
select a different location.

Is
Sendable?

Option to indicate whether the data extension can be sent to your subscribers.

6. Select Next.
7. In the Data Retention Policy step, set the Retention Setting field to Off.
8. Select Next.
9. In the Attributes step, add the attributes that you want to include in the data extension.
Attributes are used to map and import data from a report to a data extension. You must create
an attribute for each report column that you want to import data from. Each attribute name must
exactly match the corresponding report column name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

690


<!-- page 691 -->
For the Salesforce Marketing Cloud integration, attributes for the following Contacts Counts
report columns are required:
Attributes fields
Field

Description

Primary
Key

Option for the attribute to include a unique identifier for all records in the data
extension.
This option must be enabled for the Count_Date attribute.

Name

Name of the attribute.
This name must exactly match the corresponding report column name.

Data Type

Data type of the attribute.

Required

Option that indicates whether the attribute requires a value for each record in
the data extension.

Length

Maximum number of characters allowed in the attribute value.

Default
Value

Optional default value for the attribute.
For the Flag attribute, set the default value to 1.

Note: Don’t enter a default value for any attributes that are assigned as a
primary key.

Name

Data Type

Count_Date

Text

Total_Distinct_Contacts_Count

Text

Total_Distinct_Email_Addresses1

Text

Total_Distinct_Mobile_Addresses_Count

Text

Flag

Text

Note: You can add additional attributes and the name must be the same as the
Integration Attributes. For more information, see Create a Salesforce Marketing Cloud
integration profile using basic authentication or Create a Salesforce Marketing Cloud
integration profile using OAuth 2.0.
Attributes for all other Contacts Counts report columns are optional. Fill in the fields for each
attribute that you want to add.
10. Select Complete.
11. In the Data Extension Created dialog box, select OK.
Build an automation to import Contacts Counts report data in your data extension
Create an automation to automatically import Contacts Counts report data into your data
extension after the report is generated.

Before you begin

Salesforce Marketing Cloud Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

691


<!-- page 692 -->
Procedure
1. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon to
display the list of available Salesforce Marketing Cloud applications.
2. Select the Journey Builder app icon and then select Automation Studio.
The Automation Studio app overview opens.
3. Select New Automation.
The workflow for the new automation opens.
4. Create an automation schedule by dragging the Schedule icon from the Starting Sources
section of the left menu pane to the Starting Source section of the workflow canvas.
5. Define a schedule for the automation.
a. In the Starting Source section of the workflow canvas, select Configure.
b. In the dialog box, fill in the fields.
Define Schedule dialog box
Field

Description

Start
Date

The date from which you want to start running the automation.

Start
Time

The time from which you want to start running the automation.

Time
Zone

Time zone in which the automation is being scheduled.

Repeat The frequency at which you want to run the automation. Configure the automation
to run after the Contacts Counts report is generated.
Select the same frequency that you had selected while creating a Contacts
Counts report in Salesforce Marketing Cloud.

Tip: If you configure the automation to run on the same day that the report
is generated, select a start time that gives enough time for the report to finish
generating. ServiceNow recommends a start time of at least two hours after
the report start time.
End

Number of times that the automation can run until the automation schedule ends.
If you don’t want the automation schedule to end, set this field to Never.
This field doesn't appear only when None (run once) is selected from Repeat.

c. Select Done.
6. Add a script activity to execute the Server-Side JavaScript for all activities that require it.
a. In the Activities section of the left menu pane, drag the Script icon into the workflow canvas.
The script activity becomes the first step of the automation workflow.
b. Select Choose on the script activity step.
The Choose Script Activity dialog box opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

692


<!-- page 693 -->
c. Select Create New Script Activity.
The Create New Script Activity dialog box opens.
d. In the Properties step, fill in the fields.
Properties fields
Field

Description

Name

Name of the script activity.

External
Key

Optional key that uniquely identifies the script activity.

Folder
Location

The location in which you want to store your scripts. Select Choose... to
select a different location.

You can enter a key of your choice.

This field is automatically set to Scripts.
Description Description of the script activity.
e. Copy and paste the following Server-Side JavaScript into the Server-Side JavaScript text
box:
<script runat="server">
var rows =
Platform.Function.DeleteData('*<data-extension-name>*',['Fla
g'],['1']);
</script>
The *<data-extension-name>* must exactly match the file name of the Data
Extension that you created in Create a data extension for your Contacts Counts report.
f. Select Validate Syntax to verify that the Server-Side JavaScript syntax is valid.
g. Select Next.
h. In the Summary step, verify that the script activity configuration is correct and then select
Finish.
7. Add a data extract activity to copy the Contacts Counts report from the SFTP Reports folder to
the SFTP Import folder.
The Salesforce Marketing Cloud instance uses the SFTP Import folder to locate and import
report data into your data extensions. To enable your instance to import data from the Contacts
Counts report into the corresponding data extension, you must copy the report to the SFTP
Import folder.
a. In the Activities section of the left menu pane, drag the Data Extract icon into the workflow
canvas.
The data extract activity becomes the second step of the automation workflow.
b. Select Choose on the data extract activity step.
The Choose Data Extract Activity dialog box opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

693


<!-- page 694 -->
c. Select Create New Data Extract Activity.
The Create New Data Extract Activity dialog box opens.
d. In the Properties step, fill in the fields.
Properties fields
Field

Description

Name

Name of the data extract activity.

External
Key

Optional key that uniquely identifies the data extract activity.

File
Naming
Pattern

The file name of the Contacts Counts report that you want to extract data
from.

Extract
Type

Data extract method.

You can enter a key of your choice.

This name must exactly match the file name of the Contacts Counts report
that you created in Create a Contacts Counts report in Salesforce Marketing
Cloud, including the file extension.

Set this field to Enhanced FTP File Move and Copy.

Description Description of the data extract activity.
e. Select Next.
f. In the Configuration step, fill in the fields.
Configuration fields
Field

Description

Input
Location in which you’ve saved the Contacts Counts report. Enter \reports\.
Folder
Output Location that you want to copy the report to. Enter \Import\.
Folder
Copy Option to copy instead of move the report from the input folder to the output
To
folder. This option enables you to keep the report in both locations. Select the
Folder check box to enable this option.
g. Select Next.
h. In the Summary step, verify that the data extract activity configuration is correct and then
select Finish.
8. Add an import file activity to import the Contacts Counts report data into the data extension.
a. In the Activities section of the left menu pane, drag the Data Copy or Import icon into the
workflow canvas.
The Data Copy or Import activity becomes the third step of the automation workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

694


<!-- page 695 -->
b. Select Choose on the Data Copy or Import activity step.
The Choose Data Copy or Import dialog box opens.
c. Select Create New Copy or Import Definition.
The Create New Copy or Import Definition dialog box opens.
d. In the Activity Info step, fill in the fields.
Activity Info fields
Field

Description

Name

Name of the import file activity.

Description Description of the import file activity.
External
Key

Optional key that uniquely identifies the import file activity.
You can enter a key of your choice.

Send
The email address to which you want to send notifications when an import
notification completes.
email to
If you specify an email address, a notification email that contains the number
of inserted and updated rows is sent to that address on successful import.

Important: The notification email contains an Invalid Field
Count validation error due to the presence of empty lines in the
imported CSV file. These empty lines appear automatically when you
save the report to FTP. However, they have no impact on the integration.
e. Select Next.
f. In the Source step, select File Location in the Data Source header and fill in the fields.
Import File fields
Field

Description

File
Location of the Contacts Counts report that you want to import data from. Select
Location ExactTarget Enhanced FTP.
File
Naming
Pattern

The file name of the Contacts Counts report that you want to import data from.
If you want to include date and time in the report name, add it in the
Reportname_YYYYMMDD_HHMMSS format by selecting the Date variable and
Time variable fields.
This name must exactly match the file name of the Contacts Counts report that
you created in Create a Contacts Counts report in Salesforce Marketing Cloud,
including the file extension.

Date
Format

Format in which you want to display the date and time of the report data.

Delimiter Format in which you want to separate each report record. Select comma to
separate each record with a comma.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

695


<!-- page 696 -->
Field

Description

If you want to enable the use of double quotes to separate each record, enable
the Respect double quotes (") as a text delimiter option.
Bad
Option to skip rows with bad data. Select the check box to enable this option.
Data
Behavior
g. Select Next.
h. In the Destination step, search for and select the data extension that you created in Create a
data extension for your Contacts Counts report.
i. Select Next.
j. In the Mapping step, select the options Add and Update and Map by Ordinal in the Data
Action header.
k. When prompted, enable the Import file has column headers option and then map each data
extension attribute to the corresponding column number in the Contacts Counts report.

Note: Leave the Flag attribute unmapped.
l. Select Next.
m. In the Review step, verify that the import file activity configuration is correct and then select
Finish.
9. Select Save.
10. In the dialog box, fill in the fields.
Save Automation dialog box
Field

Description

Name

Name of the automation.

Description

Description of the automation.

External Key

Optional key that uniquely identifies the automation.

Location

Location in which you want to save the automation.

11. Select Save.
12. In the Starting Source section of the workflow canvas, select Active.
13. In the Activate Schedule Confirmation dialog box, select Activate to activate the automation
schedule.
Retrieve Contacts Counts report data manually
After you create the Contacts Counts report, data extension, and automation, you can retrieve
report data between your scheduled report and automation jobs by running these jobs manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

696


<!-- page 697 -->
Before you begin

Salesforce Marketing Cloud Role required: admin

About this task

Your Salesforce Marketing Cloud instance runs the report and automation jobs automatically
based on the schedules that you define. If you want to retrieve Contacts Counts report data
before the next scheduled report and automation jobs, you can run these jobs manually.

Procedure
1. Run your Contacts Counts report.
a. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon
to display the list of available Salesforce Marketing Cloud applications.
b. Select the Analytics Builder app icon and then select Reports.
The Reports app overview opens.
c. From your list of reports, select the Contacts Counts report that you created in Create a
Contacts Counts report in Salesforce Marketing Cloud.
d. Select Run.
Your Salesforce Marketing Cloud instance generates the report and displays the results on
the Results: <report-name> page.
e. On the Results: <report-name> page, select the Download Results icon (

).

f. In the dialog box, fill in the fields.
Download Results dialog box
Field

Description

Filename

The file name of the report, excluding the file extension.

Report
Source

Source of the report. This field is automatically set to Contacts Counts.

Format

File type and file extension in which you want to receive the report results.
Select Data File (.csv).

g. Select Save.
h. Save the file in your system.
2. Import the file in your Data Extension.
a. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon
to display the list of available Salesforce Marketing Cloud applications.
b. Select the Audience Builder app icon and then select Contact Builder.
c. Open the recently created Data Extension that you created while creating a data extension
for your Contacts Counts report.
d. Select Import.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

697


<!-- page 698 -->
e. In the Import Data Confirmation dialog box, select Import into Data Extension and then
select Ok.
f. In the Import into Data Extension step, choose the file that you downloaded in the previous
Step 1.
g. Select Delimiter as comma.
h. Select Import Type as Add and Update.
i. Select Import options as Skip rows in the import file with bad data.
j. Select Next.
k. In the Configure mapping dialog box, select Map Manually.
l. Match the available data extension columns with the imported report columns and leave the
Flag column empty.
m. Select Next.
n. In the Review and create dialog box, enter the email id on which you want notification when
import completes and select Finish.
o. In the Run Confirmation dialog box, select Done.

Result

The latest Contacts Counts report data is imported into the data extension.
Create a Salesforce Marketing Cloud integration profile using basic authentication
Create an integration profile by using basic authentication to track software subscriptions and
optimize stale licenses for the Salesforce Marketing Cloud service.

Before you begin

To create a Salesforce Marketing Cloud integration profile, request the Software Asset
Management - SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow
Store .

Tip: To avoid incurring additional subscription costs, install the plugin and build the
integration on a non-production instance.
ServiceNow Role required: sam_integrator or admin

Important: You must select the Software Asset Management integration with

Salesforce Marketing Cloud check box for this integration while installing optional features
on the Application Manager
page. For more information about choosing the required
SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Salesforce Marketing Cloud
integration profile in Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

698


<!-- page 699 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Salesforce Marketing Cloud Integra­
tion Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Salesforce Marketing Cloud from
the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the integration profile. For example, Salesforce Marketing
Cloud integration profile.

Authentication Type of authentication to access Salesforce Marketing Cloud APIs.
type
◦ Basic Auth: Select this value.
◦ OAuth 2.0

Note: For a new Salesforce Marketing Cloud profile, the
authentication type is set to Basic Auth by default.
Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically
set to Draft.
◦ If you have already published the integration profile, this field is
automatically set to Published.

Profile type

Type of integration profile.
This value is automatically set to Salesforce Marketing Cloud Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

699


<!-- page 700 -->
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Salesforce
Marketing Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
c. In the Download Consumption Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Contacts Consumption.
The Download Consumption check box is selected by default. If you don't want to download
the license consumptions, you can clear this check box.
4. In the Integration Attributes section, add or remove the attributes based on your requirements.
The name-value attributes such as Count Date, Contacts, Email Contacts, and Mobile
Contacts are automatically populated for the integration profile.

Note: The attribute name must match the report column header in Salesforce Marketing
Cloud instance. For more information, see Create a data extension for your Contacts
Counts report.
5. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_sforce_mc_spoke.SalesforceMarketingCloud.
6. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
7. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
8. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Please Enter the Connection Information
Connection Name of the connection.
Name
SOAP
URL of your SOAP Connection endpoint. Enter https://
Connection <subdomain>.soap.marketingcloudapis.com/Service.asmx,
URL
where <subdomain> is your Salesforce Marketing Cloud subdomain.
Please Enter the Credential Information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

700


<!-- page 701 -->
Field

Description

Username
Profile
Name

Name of your credentials.

Username

User name of the user that you can access the Salesforce Marketing Cloud
SOAP API with. Enter the user name of the user that you created in Create a
user for accessing the Salesforce Marketing Cloud SOAP API.

Password

Password of the user that you can access the Salesforce Marketing Cloud
SOAP API with. Enter the password of the user that you created in Create a user
for accessing the Salesforce Marketing Cloud SOAP API.

Please enter additional information used for post processing
Contacts
Counts
Data
Extension

Name of the data extension that you want to retrieve Contacts Counts report
data from. This name must exactly match the name of the data extension that
you created in Create a data extension for your Contacts Counts report.

9. Select Create.
10. On the Connection & Credential Aliases form header, select the Back button to return to the
Integration Profile form.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Download Consumption
APIs, but not the Reclaim Subscriptions APIs.
12. After the connection is verified, select Publish.
13. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

701


<!-- page 702 -->
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrate Salesforce Marketing Cloud using OAuth 2.0
Integrate your ServiceNow instance with Salesforce Marketing Cloud services by using OAuth
2.0.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Salesforce Marketing Cloud
application

Authentication scopes

Download subscriptions

User

Users : Read

Pull user activity

User

Users : Read

Reclaim subscription

User

Users : Write

Download consumptions

User

Data Extensions : Read,
Write

Create Salesforce Marketing Cloud OAuth 2.0 credentials
Create Salesforce Marketing Cloud OAuth 2.0 credentials to get access to Salesforce Marketing
Cloud APIs.

About this task

The credentials must be created in the Salesforce Marketing Cloud Spoke application scope.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

702


<!-- page 703 -->
Before you begin

Role required: Salesforce Marketing Cloud admin

About this task

For accessing user licenses and data extension, the connection configuration must be set up in
the parent business unit. If the configuration is set up in a child business unit, it might not be able
to access data from the parent business unit.

Procedure
1. Log in to the Salesforce Marketing Cloud tenant.
2. Navigate to Setup Home > Platform Tools > Apps > Installed Packages.
3. Select New to create a package.
4. In the New Package Details dialog box, fill in the Name and Description fields.
5. Select Save.
6. Select Add Component.
7. Select API Integration to integrate Salesforce Marketing Cloud APIs to your application.
8. Select Next.
9. Select Server-to-Server as the integration type.
10. Select Next.
11. Select the following scopes for your integration.
◦ Users : Read
◦ Users : Write
◦ Data Extensions : Read, Write
12. Select Save.
Your Client Id, Client Secret, and SOAP Base URI are displayed in your configuration summary.
Navigate to the Components section under SETUP > INSTALLED PACKAGES > DETAILS to
view the Client Id, Client Secret, and SOAP Base URI. Copy the values to use them later.

Note: Note: You must add /Service.asmx in the SOAP Base URI while passing it in
your ServiceNow instance.
13. Select the ACCESS tab and confirm that your business unit is enabled.
If your business unit is inactive, select and enable it, then select Save.
Create a Contacts Counts report in Salesforce Marketing Cloud
Create a Contacts Counts report to retrieve and display the total number of billable contacts in
your Salesforce Marketing Cloud account.

Before you begin

Salesforce Marketing Cloud Role required: admin

Procedure
1. From a web browser, go to your Salesforce Marketing Cloud instance.
2. Log in using your admin credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

703


<!-- page 704 -->
3. On the page header of your instance, select the business unit profile icon and then select the
top-level parent business unit so that your Contacts Counts report includes data for both the
parent business unit and all corresponding child business units.
4. From the list of available Salesforce Marketing Cloud applications, select the Analytics Builder
app icon and then select Reports.
The Reports app overview opens.
5. In the Report Catalog section, select View Catalog.
6. From the Reports Catalog, search for Contacts Counts and then select Create.
The Create Report dialog box opens.
7. In the dialog box, select the time period that you want to retrieve and display data for from the
Date Range list.
The default value is Last 30 Days.

Tip: To avoid performance issues during report generation, you should set this value to
Last 7 Days.

8. Select Submit.
Your Salesforce Marketing Cloud instance generates the report and displays the results on the
Results: Contacts Counts page.
9. On the Results: Contacts Counts page, select Save.
The Save Report dialog box opens.
10. In the dialog box, fill in the fields.
Save Report dialog box
Field

Description

Report Name

Name of the report.

Report Source

Source of the report. This field is automatically set to Contacts Counts.

Description

Description of the report.

11. Select Save.
12. Create a schedule to run the Contacts Counts report automatically.
a. On the page header of the Reports app, select the Overview tab to return to the Reports app
overview.
b. From your list of reports, open your newly created Contacts Counts report.
c. In the Schedule Options section, select Edit.
d. In the dialog box, fill in the fields.
Edit Schedule Options dialog box
Field

Description

Schedule Options
Start

The date and time from which you want to start running the report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

704


<!-- page 705 -->
Field

Description

Time
Zone

Time zone in which the report is being scheduled.

Repeat

Frequency at which you want to run the report. Configure the report to run once
every week on Sundays.

End

Date on which you want to stop running the report.

Delivery Options
Format

File type and file extension in which you want to receive the report results. Select
Data File (.csv).

Location Location in which you want to save or share the report. Set this field to Save
report for FTP and then fill in the corresponding fields:
▪ Report Name: The file name of the report, excluding the file extension.
If you want to include date and time in the report name, add it in the
Reportname_YYYYMMDD_HHMMSS format.

Note: Take note of this file name for later use.
▪ Unique Option: Option to create a report record instead of replacing the
existing report record in SFTP. Leave this check box unselected.
▪ FTP Location: Location of your Salesforce Marketing Cloud FTP files. Select
ExactTarget Enhanced FTP so that the report is saved to your SFTP (SSH File
Transfer Protocol) Reports folder.

Note: You can set up an SFTP user account in Salesforce Marketing
Cloud to view the saved files at a specific FTP location. For more
information, see Setting up an SFTP user account in Salesforce
Marketing Cloud.
e. Select Save.
Create a data extension for your Contacts Counts report
Create a data extension to store your Contacts Counts report data on your Salesforce Marketing
Cloud instance.

Before you begin

Salesforce Marketing Cloud Role required: admin

About this task

Data extensions are tables that contain attributes representing your report data. When your
ServiceNow instance connects with the Salesforce Marketing Cloud service, it retrieves data
from this data extension.

Procedure
1. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon to
display the list of available Salesforce Marketing Cloud applications.
2. Select the Audience Builder app icon and then select Contact Builder.
The Contact Builder app opens.
3. Select the Data Extensions tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

705


<!-- page 706 -->
4. In the pop-up dialog box, select Get started and then select Create.
The Create New Data Extension dialog box opens.
5. In the Properties step, fill in the fields.
Properties fields
Field

Description

Creation
Method

Method in which you want to create the data extension.

Name

Name of the data extension.

Select Create from New.

External Key Optional key that uniquely identifies the data extension.
You can enter a key of your choice.
Description

Description of the data extension.

Type

Type of data extension.
This field is automatically set to Standard.

Location

Location in which you want to store the data extension.
This field is automatically set to Data Extensions. Select Change Location to
select a different location.

Is
Sendable?

Option to indicate whether the data extension can be sent to your subscribers.

6. Select Next.
7. In the Data Retention Policy step, set the Retention Setting field to Off.
8. Select Next.
9. In the Attributes step, add the attributes that you want to include in the data extension.
Attributes are used to map and import data from a report to a data extension. You must create
an attribute for each report column that you want to import data from. Each attribute name must
exactly match the corresponding report column name.
For the Salesforce Marketing Cloud integration, attributes for the following Contacts Counts
report columns are required:
Attributes fields
Field

Description

Primary
Key

Option for the attribute to include a unique identifier for all records in the data
extension.
This option must be enabled for the Count_Date attribute.

Name

Name of the attribute.
This name must exactly match the corresponding report column name.

Data Type

Data type of the attribute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

706


<!-- page 707 -->
Field

Description

Required

Option that indicates whether the attribute requires a value for each record in
the data extension.

Length

Maximum number of characters allowed in the attribute value.

Default
Value

Optional default value for the attribute.
For the Flag attribute, set the default value to 1.

Note: Don’t enter a default value for any attributes that are assigned as a
primary key.

Name

Data Type

Count_Date

Text

Total_Distinct_Contacts_Count

Text

Total_Distinct_Email_Addresses1

Text

Total_Distinct_Mobile_Addresses_Count

Text

Flag

Text

Note: You can add additional attributes and the name must be the same as the
Integration Attributes. For more information, see Create a Salesforce Marketing Cloud
integration profile using basic authentication or Create a Salesforce Marketing Cloud
integration profile using OAuth 2.0.
Attributes for all other Contacts Counts report columns are optional. Fill in the fields for each
attribute that you want to add.
10. Select Complete.
11. In the Data Extension Created dialog box, select OK.
Build an automation to import Contacts Counts report data in your data extension
Create an automation to automatically import Contacts Counts report data into your data
extension after the report is generated.

Before you begin

Salesforce Marketing Cloud Role required: admin

Procedure
1. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon to
display the list of available Salesforce Marketing Cloud applications.
2. Select the Journey Builder app icon and then select Automation Studio.
The Automation Studio app overview opens.
3. Select New Automation.
The workflow for the new automation opens.
4. Create an automation schedule by dragging the Schedule icon from the Starting Sources
section of the left menu pane to the Starting Source section of the workflow canvas.
5. Define a schedule for the automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

707


<!-- page 708 -->
a. In the Starting Source section of the workflow canvas, select Configure.
b. In the dialog box, fill in the fields.
Define Schedule dialog box
Field

Description

Start
Date

The date from which you want to start running the automation.

Start
Time

The time from which you want to start running the automation.

Time
Zone

Time zone in which the automation is being scheduled.

Repeat The frequency at which you want to run the automation. Configure the automation
to run after the Contacts Counts report is generated.
Select the same frequency that you had selected while creating a Contacts
Counts report in Salesforce Marketing Cloud.

Tip: If you configure the automation to run on the same day that the report
is generated, select a start time that gives enough time for the report to finish
generating. ServiceNow recommends a start time of at least two hours after
the report start time.
End

Number of times that the automation can run until the automation schedule ends.
If you don’t want the automation schedule to end, set this field to Never.
This field doesn't appear only when None (run once) is selected from Repeat.

c. Select Done.
6. Add a script activity to execute the Server-Side JavaScript for all activities that require it.
a. In the Activities section of the left menu pane, drag the Script icon into the workflow canvas.
The script activity becomes the first step of the automation workflow.
b. Select Choose on the script activity step.
The Choose Script Activity dialog box opens.
c. Select Create New Script Activity.
The Create New Script Activity dialog box opens.
d. In the Properties step, fill in the fields.
Properties fields
Field

Description

Name

Name of the script activity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

708


<!-- page 709 -->
Field

Description

External
Key

Optional key that uniquely identifies the script activity.

Folder
Location

The location in which you want to store your scripts. Select Choose... to
select a different location.

You can enter a key of your choice.

This field is automatically set to Scripts.
Description Description of the script activity.
e. Copy and paste the following Server-Side JavaScript into the Server-Side JavaScript text
box:
<script runat="server">
var rows =
Platform.Function.DeleteData('*<data-extension-name>*',['Fla
g'],['1']);
</script>
The *<data-extension-name>* must exactly match the file name of the Data
Extension that you created in Create a data extension for your Contacts Counts report.
f. Select Validate Syntax to verify that the Server-Side JavaScript syntax is valid.
g. Select Next.
h. In the Summary step, verify that the script activity configuration is correct and then select
Finish.
7. Add a data extract activity to copy the Contacts Counts report from the SFTP Reports folder to
the SFTP Import folder.
The Salesforce Marketing Cloud instance uses the SFTP Import folder to locate and import
report data into your data extensions. To enable your instance to import data from the Contacts
Counts report into the corresponding data extension, you must copy the report to the SFTP
Import folder.
a. In the Activities section of the left menu pane, drag the Data Extract icon into the workflow
canvas.
The data extract activity becomes the second step of the automation workflow.
b. Select Choose on the data extract activity step.
The Choose Data Extract Activity dialog box opens.
c. Select Create New Data Extract Activity.
The Create New Data Extract Activity dialog box opens.
d. In the Properties step, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

709


<!-- page 710 -->
Properties fields
Field

Description

Name

Name of the data extract activity.

External
Key

Optional key that uniquely identifies the data extract activity.

File
Naming
Pattern

The file name of the Contacts Counts report that you want to extract data
from.

Extract
Type

Data extract method.

You can enter a key of your choice.

This name must exactly match the file name of the Contacts Counts report
that you created in Create a Contacts Counts report in Salesforce Marketing
Cloud, including the file extension.

Set this field to Enhanced FTP File Move and Copy.

Description Description of the data extract activity.
e. Select Next.
f. In the Configuration step, fill in the fields.
Configuration fields
Field

Description

Input
Location in which you’ve saved the Contacts Counts report. Enter \reports\.
Folder
Output Location that you want to copy the report to. Enter \Import\.
Folder
Copy Option to copy instead of move the report from the input folder to the output
To
folder. This option enables you to keep the report in both locations. Select the
Folder check box to enable this option.
g. Select Next.
h. In the Summary step, verify that the data extract activity configuration is correct and then
select Finish.
8. Add an import file activity to import the Contacts Counts report data into the data extension.
a. In the Activities section of the left menu pane, drag the Data Copy or Import icon into the
workflow canvas.
The Data Copy or Import activity becomes the third step of the automation workflow.
b. Select Choose on the Data Copy or Import activity step.
The Choose Data Copy or Import dialog box opens.
c. Select Create New Copy or Import Definition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

710


<!-- page 711 -->
The Create New Copy or Import Definition dialog box opens.
d. In the Activity Info step, fill in the fields.
Activity Info fields
Field

Description

Name

Name of the import file activity.

Description Description of the import file activity.
External
Key

Optional key that uniquely identifies the import file activity.
You can enter a key of your choice.

Send
The email address to which you want to send notifications when an import
notification completes.
email to
If you specify an email address, a notification email that contains the number
of inserted and updated rows is sent to that address on successful import.

Important: The notification email contains an Invalid Field
Count validation error due to the presence of empty lines in the
imported CSV file. These empty lines appear automatically when you
save the report to FTP. However, they have no impact on the integration.
e. Select Next.
f. In the Source step, select File Location in the Data Source header and fill in the fields.
Import File fields
Field

Description

File
Location of the Contacts Counts report that you want to import data from. Select
Location ExactTarget Enhanced FTP.
File
Naming
Pattern

The file name of the Contacts Counts report that you want to import data from.
If you want to include date and time in the report name, add it in the
Reportname_YYYYMMDD_HHMMSS format by selecting the Date variable and
Time variable fields.
This name must exactly match the file name of the Contacts Counts report that
you created in Create a Contacts Counts report in Salesforce Marketing Cloud,
including the file extension.

Date
Format

Format in which you want to display the date and time of the report data.

Delimiter Format in which you want to separate each report record. Select comma to
separate each record with a comma.
If you want to enable the use of double quotes to separate each record, enable
the Respect double quotes (") as a text delimiter option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

711


<!-- page 712 -->
Field

Description

Bad
Option to skip rows with bad data. Select the check box to enable this option.
Data
Behavior
g. Select Next.
h. In the Destination step, search for and select the data extension that you created in Create a
data extension for your Contacts Counts report.
i. Select Next.
j. In the Mapping step, select the options Add and Update and Map by Ordinal in the Data
Action header.
k. When prompted, enable the Import file has column headers option and then map each data
extension attribute to the corresponding column number in the Contacts Counts report.

Note: Leave the Flag attribute unmapped.
l. Select Next.
m. In the Review step, verify that the import file activity configuration is correct and then select
Finish.
9. Select Save.
10. In the dialog box, fill in the fields.
Save Automation dialog box
Field

Description

Name

Name of the automation.

Description

Description of the automation.

External Key

Optional key that uniquely identifies the automation.

Location

Location in which you want to save the automation.

11. Select Save.
12. In the Starting Source section of the workflow canvas, select Active.
13. In the Activate Schedule Confirmation dialog box, select Activate to activate the automation
schedule.
Retrieve Contacts Counts report data manually
After you create the Contacts Counts report, data extension, and automation, you can retrieve
report data between your scheduled report and automation jobs by running these jobs manually.

Before you begin

Salesforce Marketing Cloud Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

712


<!-- page 713 -->
About this task

Your Salesforce Marketing Cloud instance runs the report and automation jobs automatically
based on the schedules that you define. If you want to retrieve Contacts Counts report data
before the next scheduled report and automation jobs, you can run these jobs manually.

Procedure
1. Run your Contacts Counts report.
a. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon
to display the list of available Salesforce Marketing Cloud applications.
b. Select the Analytics Builder app icon and then select Reports.
The Reports app overview opens.
c. From your list of reports, select the Contacts Counts report that you created in Create a
Contacts Counts report in Salesforce Marketing Cloud.
d. Select Run.
Your Salesforce Marketing Cloud instance generates the report and displays the results on
the Results: <report-name> page.
e. On the Results: <report-name> page, select the Download Results icon (

).

f. In the dialog box, fill in the fields.
Download Results dialog box
Field

Description

Filename

The file name of the report, excluding the file extension.

Report
Source

Source of the report. This field is automatically set to Contacts Counts.

Format

File type and file extension in which you want to receive the report results.
Select Data File (.csv).

g. Select Save.
h. Save the file in your system.
2. Import the file in your Data Extension.
a. On the page header of your Salesforce Marketing Cloud instance, hover the Salesforce icon
to display the list of available Salesforce Marketing Cloud applications.
b. Select the Audience Builder app icon and then select Contact Builder.
c. Open the recently created Data Extension that you created while creating a data extension
for your Contacts Counts report.
d. Select Import.
e. In the Import Data Confirmation dialog box, select Import into Data Extension and then
select Ok.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

713


<!-- page 714 -->
f. In the Import into Data Extension step, choose the file that you downloaded in the previous
Step 1.
g. Select Delimiter as comma.
h. Select Import Type as Add and Update.
i. Select Import options as Skip rows in the import file with bad data.
j. Select Next.
k. In the Configure mapping dialog box, select Map Manually.
l. Match the available data extension columns with the imported report columns and leave the
Flag column empty.
m. Select Next.
n. In the Review and create dialog box, enter the email id on which you want notification when
import completes and select Finish.
o. In the Run Confirmation dialog box, select Done.

Result

The latest Contacts Counts report data is imported into the data extension.
Create a Salesforce Marketing Cloud integration profile using OAuth 2.0
Create a Salesforce Marketing Cloud integration profile by using OAuth 2.0 to track software
subscriptions and optimize stale licenses for the Salesforce Marketing Cloud service.

Before you begin

To create a Salesforce Marketing Cloud integration profile, request the Software Asset
Management - SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow
Store .

Tip: To avoid incurring additional subscription costs, install the plugin and build the
integration on a non-production instance.
ServiceNow Role required: sam_integrator or admin
Salesforce Marketing Cloud Role required: sn_sforce_mc_spoke.Salesforce Marketing Cloud
Admin

Important: You must select the Software Asset Management integration with

Salesforce Marketing Cloud check box for this integration while installing optional features
on the Application Manager
page. For more information about choosing the required
SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Salesforce Marketing Cloud
integration profile in Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

714


<!-- page 715 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Salesforce Marketing Cloud Integra­
tion Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Salesforce Marketing Cloud from
the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the integration profile. For example, Salesforce Marketing
Cloud integration profile.

Authentication Type of authentication to access Salesforce Marketing Cloud APIs.
type
◦ Basic Auth
◦ OAuth 2.0: Select this value.

Note: For a new Salesforce Marketing Cloud profile, the
authentication type is set to Basic Auth by default.
Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically
set to Draft.
◦ If you have already published the integration profile, this field is
automatically set to Published.

Profile type

Type of integration profile. This value is automatically set to Salesforce
Marketing Cloud Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

715


<!-- page 716 -->
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Salesforce
Marketing Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
c. In the Download Consumption Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Contacts Consumption.
4. In the Integration Attributes section, add or remove the attributes based on your requirements.
The name-value attributes such as Count Date, Contacts, Email Contacts, and Mobile
Contacts are automatically populated for the integration profile.

Note: The attribute name must match the report column header in Salesforce Marketing
Cloud instance. For more information, see Create a data extension for your Contacts
Counts report.
5. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_sforce_mc_spoke.SalesforceMarketingCloudSOAPConnection.
6. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
7. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
8. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Information
Connection Name of the connection. For example, SFMC SOAP Connection.
Name
SOAP
URL of your SOAP Connection endpoint. Enter https://
Connection <subdomain>.soap.marketingcloudapis.com/Service.asmx,
URL
where <subdomain> is your Salesforce Marketing Cloud subdomain.
Credential Information
OAuth
Client ID

Client ID that you generated while creating a Salesforce Marketing Cloud OAuth
credential.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

716


<!-- page 717 -->
Field

Description

OAuth
Client
Secret

Client Secret that you retrieved while creating a Salesforce Marketing Cloud
OAuth credential.

OAuth
Redirect
URL

https://<instance_name>/oauth_redirect.do, where the
instance name is the name of your ServiceNow instance.

Additional information used for post processing
Contacts
Counts
Data
Extension

Name of the data extension that you want to retrieve Contacts Counts report
data from. This name must exactly match the name of the data extension that
you created in Create a data extension for your Contacts Counts report.

9. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
10. Select Save.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Download Consumption
APIs, but not the Reclaim Subscriptions APIs.
12. After the connection is verified, select Publish.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

717


<!-- page 718 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Create additional Salesforce Marketing Cloud integration profiles
Create an integration profile for each additional Salesforce Marketing Cloud that you want to
track software subscriptions and optimize licensing for.

Before you begin

To create a Salesforce Marketing Cloud integration profile, request the Software Asset
Management - SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow
Store
Role required: sam_integrator or admin
Salesforce Marketing Cloud Role required: sn_sforce_mc_spoke.Salesforce Marketing Cloud
Admin

Important: You must select the Software Asset Management integration with

Salesforce Marketing Cloud check box for this integration while installing optional features
on the Application Manager
page. For more information about choosing the required
SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Salesforce Marketing Cloud
integration profile in Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

718


<!-- page 719 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Salesforce Marketing Cloud Integra­
tion Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Salesforce Marketing Cloud from
the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the integration profile. For example, Salesforce Marketing
Cloud integration profile.

Authentication Type of authentication to access Salesforce Marketing Cloud APIs.
type
◦ Basic Auth
◦ OAuth 2.0: Select this value.

Note: For a new Salesforce Marketing Cloud profile, the
authentication type is set to Basic Auth by default.
Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically
set to Draft.
◦ If you have already published the integration profile, this field is
automatically set to Published.

Profile type

Type of integration profile. This value is automatically set to Salesforce
Marketing Cloud Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

719


<!-- page 720 -->
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Salesforce
Marketing Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
c. In the Download Consumption Subflow section, verify that the Subflow field is set to
Salesforce Marketing Cloud Download Contacts Consumption.
The Download Consumption check box is selected by default. If you don't want to download
the license consumptions, you can clear this check box.
4. In the Integration Attributes section, add or remove the attributes based on your requirements.
The name-value attributes such as Count Date, Contacts, Email Contacts, and Mobile
Contacts are automatically populated for the integration profile.

Note: The attribute name must match the report column header in Salesforce Marketing
Cloud instance. For more information, see Create a data extension for your Contacts
Counts report.
5. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_sforce_mc_spoke.SalesforceMarketingCloudSOAPConnection.
6. Select the preview icon ( ) next to the Connection & Credential field to open the connection
& credential aliases record.
7. Select Open Record in the record preview.
8. On the Connection & Credential Aliases form, create a child alias that can uniquely identify the
connection and credentials for this integration profile.
The first Salesforce Marketing Cloud integration profile that you create uses the default
(parent) connection and credential alias for Salesforce. Each additional Salesforce Marketing
Cloud integration profile that you create requires a unique child alias that helps differentiate
the connection and credentials between each integration profile.
a. Select the link under Child Aliases > Parentalias=*** to add child aliases.
b. Select New.
The Connection & Credential Aliases form for the child alias opens.
c. Enter a name for the child alias in the Name field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

720


<!-- page 721 -->
d. Right-click the form header and then select Save.
e. After the form reloads, select the Create New Connection & Credential related link.
9. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Information
Connection Name of the connection. For example, SFMC SOAP Connection.
Name
SOAP
URL of your SOAP Connection endpoint. Enter https://
Connection <subdomain>.soap.marketingcloudapis.com/Service.asmx,
URL
where <subdomain> is your Salesforce Marketing Cloud subdomain.
Credential Information
OAuth
Client ID

Client ID that you generated while creating a Salesforce Marketing Cloud OAuth
credential.

OAuth
Client
Secret

Client Secret that you retrieved while creating a Salesforce Marketing Cloud
OAuth credential.

OAuth
Redirect
URL

https://<instance_name>/oauth_redirect.do, where the
instance name is the name of your ServiceNow instance.

Additional information used for post processing
Contacts
Counts
Data
Extension

Name of the data extension that you want to retrieve Contacts Counts report
data from. This name must exactly match the name of the data extension that
you created in Create a data extension for your Contacts Counts report.

10. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Download Consumption
APIs, but not the Reclaim Subscriptions APIs.
12. After the connection is verified, select Publish.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

721


<!-- page 722 -->
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Setting up an SFTP user account in Salesforce Marketing Cloud
Set up an SSH File Transfer Protocol (SFTP) user account to access your Salesforce Marketing
Cloud FTP files.
Creating an SFTP user account enables you to access the Contacts Counts reports that are
saved at an FTP location. The Contacts Counts report displays the total number of billable
contacts in your Salesforce Marketing Cloud account.
Create an SFTP User Account in Salesforce Marketing Cloud
Create user accounts for SFTP users in Salesforce Marketing Cloud to access the Contacts
Counts report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

722


<!-- page 723 -->
Before you begin

Salesforce Marketing Cloud Role required: admin with privileges to create users and roles

About this task

Note: You can create a limited number of active SFTP user accounts per member ID (MID).
For more information, see Salesforce documentation

.

Procedure
1. From a web browser, open your Salesforce Marketing Cloud instance.
2. Log in using your admin credentials.
3. On the page header of your instance, select your profile icon and then select Setup.
4. In the Quick Find box, enter ftp and then select FTP Accounts.
5. Select Create User.
6. Enter the email address and password for the new user.
7. In the Authentication Options window, select Select Password as the authentication method
for the user.
8. In the Permissions window, select the permissions to apply to each directory.

Important: Each directory inherits the permissions of its subdirectories. Select all
the permissions that provide you access to all the folders for viewing, downloading, and
managing files.
9. Permit SFTP connections only from a specific IP address by entering the address in the
Allowlist IPs field.
10. Select Add.
11. Repeat step 9 for each IP address that you want to permit.

Note: If you don't enter any IP addresses, SFTP connections can be opened from any IP
address.
12. In the Folders window, select a home directory for the user.
The user is allowed to access only the selected directory and its subdirectories. You can select
the Root folder to see all the directories and subdirectories.
13. Save your changes.
You can also exclude an SFTP user from password expiration. For more information, see
Salesforce documentation .
Set Up an External FTP File Location in Salesforce Marketing Cloud
Set up a file location to connect to an external FTP site when transferring files. The file location
contains the site URL, port, and login details that Salesforce Marketing Cloud uses to access your
site.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

723


<!-- page 724 -->
Procedure
1. In your Salesforce Marketing Cloud instance, navigate to Setup.
2. In the Quick Find box, enter file and then select File Locations.
3. Select Create.
4. In the Properties section, fill in the fields.
File location properties
Field

Description

Name

A unique name that you can recognize when
you create an activity in Salesforce Marketing
Cloud.

External Key

A unique key that identifies the file location
when using the API.

Description

Details to identify the file location when you
create an activity in Salesforce Marketing
Cloud.

5. Select Enhanced FTP Site Import Directory as the location type.
6. Save the file.
Related topics
Integrate Salesforce Marketing Cloud using basic authentication
Integrate Salesforce Marketing Cloud using OAuth 2.0
Integrating with SAP Ariba
Integrating your Software Asset Management application with the SAP Ariba application enables
you to track your software subscriptions and reclaim unused licenses.

Important:
This integration retrieves user subscription details, tracks last login date, and identifies lowusage for the following SAP Ariba applications:
• Ariba Sourcing
• Ariba Supplier Performance Management
• Ariba Contract Management
Download reports for SAP Ariba users consuming licenses
Before setting up an SAP Ariba integration profile, generate and download reports for all users
who are currently using SAP Ariba licenses.

Before you begin

Role required: SAP Ariba admin

About this task

For setting up an SAP Ariba integration profile, the following SAP Ariba reports are required.
• Sourcing - User Names and Permissions
• Contract Usage Reports
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

724


<!-- page 725 -->
• Number of Users Creating Projects
• Supplier Performance Managements (SPM) Project Report

Procedure
1. Log in to SAP Ariba portal

with your admin credentials.

2. On the home page, expand the Manage drop-down list.

3. Select Prepackaged Reports.

Tip: If you don’t find this menu item directly under the Manage drop-down list, select
More... and then select Prepackaged Reports from the Reports section.

4. Download the Sourcing - User Names and Permissions, Contract Usage Reports, and Number
of Users Creating Projects reports.
a. On the Prepackaged Reports page, search for and select System and Benchmark Usage
Reports and then select Open.
b. On the System and Benchmark Usage Reports page, select System Usage Reports and then
select Open.
The list of System Usage reports is displayed, where you can find Contract Usage Reports
and Sourcing Usage Reports.
c. Save and export the Sourcing - User Names and Permissions report.
i. On the System Usage Reports page, expand the Sourcing Usage Reports drop-down list.
The Sourcing-User and Permissions report is displayed.
ii. Scroll down and select Sourcing-User Names and Permissions and then select Open.
The Sourcing - User Names and Permissions report gets displayed.
iii. Select Save....
As the Sourcing - User Names and Permissions report is a default report, you must not edit
it.
iv. On the Save Report page, select the Current Project field as Personal Workspace.

Important: To change the file name when saving the report, provide the name in
the format Sourcing-User Names and Permissions. You might include
prefixes or suffixes as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

725


<!-- page 726 -->
v. Select Save.
vi. Export the saved report to your system in .csv format by selecting Export.
d. Save and export the Contract Usage Reports.
i. On the System Usage Reports page, search for and select All Contract Workspaces and
then select Open.
ii. On the All Contract Workspaces page, filter the report according to your requirements by
selecting Edit.
You can select a date range for the report you want to generate.
iii. Add a field or a hierarchy from the General Contract Workspace list in the report by
selecting the Pivot Layout step.
For example, if you want to add the User Type field data to Detail Fields, select and hold
(or right-click) it and then select Detail Field. You can add your required data to either Row
Fields, Column Fields, or Detail Fields.
iv. After your required fields are added, select Next.

Important: If the All Owners - User ID field isn't included in the report, you must
add it.
v. Select Done.
In the Pivot table tab, the Detail View section displays the fields you have added in a
tabular format.

Tip: If you can’t see the fields that you selected, verify that you have selected the
Detail View format.
vi. Select Save....
vii. On the Save Report page, select the Current Project field as Personal Workspace.

Important: To change the file name when saving the report, provide the name in
the format Contract Usage Reports. You might include prefixes or suffixes as
needed.
viii. Select Save.
ix. Export the saved report to your system in .csv format by selecting Export.
e. Save and export the Number of Users Creating Projects report.
i. On the System Usage Reports page, expand the Sourcing Usage Reports drop-down list
and then select Open.
The System Usage Reports are displayed.
ii. Expand Sourcing Usage Reports and scroll down.
You can view Number of Users Creating Projects.
iii. Select Number of Users Creating Projects and then select Open.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

726


<!-- page 727 -->
iv. On the Number of Users Creating Projects page, filter the report according to your
requirements by selecting Edit.
You can select a date range for the report you want to generate.
v. Add a field or a hierarchy from the Sourcing Project list in the report by selecting the Pivot
Layout step.
For example, if you want to add the Start Date field data, select and hold (or right-click) it
and then select Row Field. You can add your required data to either Row Fields, Column
Fields, or Detail Fields.
vi. After your required fields are added, select Next.

Important: If the All Owners - User ID field isn't included in the report, you must
add it.
vii. Select Done.
In the Pivot table tab, the Detail View section displays the fields you have added in a
tabular format.

Tip: If you can’t see the fields that you selected, verify that you have selected the
Detail View format.
viii. Select Save....
ix. On the Save Report page, select the Current Project field as Personal Workspace.

Important: To change the file name when saving the report, provide the name
in the format Number of Users Creating Projects. You might include
prefixes or suffixes as needed.
x. Select Save.
xi. Export the saved report to your system in .csv format by selecting Export.
5. Save and export the SPM Project Report.
a. On the Prepackaged Reports page, search for and select Supplier Performance
Management Reports and then select Open.
b. On the Supplier Performance Management Reports page, select SPM Project Report and
then select Open.
c. Select a date range for which you want the report and select View Report.

Tip: If you can’t see the fields that you selected, verify that you have selected the
Detail View format.

d. Filter the report according to your requirements by selecting Edit.
e. Add a field or a hierarchy from the SPM Project list in the report by selecting the Pivot Layout
step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

727


<!-- page 728 -->
For example, if you want the Calendar data in Column Fields, select and hold (or right-click) it
and then select Column Field. You can add your required data to Row Fields, Column Fields,
or Detail Fields.
f. After your required fields are added, select Next.

Important: If the All Owners - User ID field isn't included in the report, you must add
it.
g. Select Done.
In the Pivot table tab, the Detail View section displays the fields you have added in a tabular
format.

Tip: If you can’t see the fields that you selected, verify that you have selected the
Detail View format.
h. Select Save....
i. On the Save Report page, select the Current Project field as Personal Workspace.

Important: To change the file name when saving the report, provide the name in the
format SPM Project Report. You might include prefixes or suffixes as needed.
j. Select Save.
k. Export the saved report to your system in .csv format by selecting Export.
Create an SAP Ariba integration profile
Create an SAP Ariba integration profile to track software subscriptions and optimize licensing for
your SAP Ariba applications.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
For publishing the integration profile, change the application scope to Global.
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the SAP Ariba integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select SAP Ariba Integration Profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

728


<!-- page 729 -->
Interface

Action

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
Software Asset Workspace

b. Select New.
c. Select SAP Ariba from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the integration profile. For example,
Ariba Integration.

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

Profile type

Type of integration profile. This
field is automatically set to Ariba
Subscription.

3. View the required user roles or API permissions to minimize security risks and optimize SaaS
licenses.
In the Download Subscription Subflow section, verify that the Subflow field is set toSAP Ariba
Download Subscriptions. The Download subscriptions check box is selected by default and
you can't clear it.
4. Select Save.
5. After the integration profile is saved, upload the attachments by selecting the Attach icon ( ).
6. On the Attachments pane, drag or select the files in the .csv format that you want to upload
one by one or together.

Important: Upload the SAP Ariba reports regularly to view the most recent data.
After the files are uploaded successfully, the Subscription Stagings
[samp_subscription_staging] table gets populated with the uploaded data.
7. Select Publish.
After the integration profile is published, the files attached to the profile are deleted
automatically.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

729


<!-- page 730 -->
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with SAP S/4HANA Cloud Public Edition
Integrating your Software Asset Management application with the SAP S/4HANA Public Cloud
application enables you to track your software subscriptions and optimize licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

730


<!-- page 731 -->
Important:
You must request and install the following applications from ServiceNow Store

:

• SaaS License Management plugin (com.sn_sam_saas_int)
• Software Asset Management Professional for SAP plugin (com.sn_samp_sap)
• SAP S/4HANA Spoke plugin (sn_s4_hana_cld_spk)
• Software Asset Management integration with SAP S/4HANA plugin
(sn_sam_s4hanacloud)
Minimize security risks and protect information by granting access only to the necessary
user or API permissions.
Minimal user permissions
Process

Required user role in the SAP
S/4HANA application

Authentication scopes

Download subscriptions

Business user

users:read

Create a communication system and user for SAP S/4HANA Public Cloud
Create a communication system and an inbound user to enable access to the SAP S/4HANA
Public Cloud API and receive a user name and password for basic authentication.

Before you begin

The SAP S/4HANA Public Cloud Integration Hub spoke must be active. For more information, see
SAP S4 HANA Public Cloud Spoke .
SAP S/4HANA Role required: Business user

Procedure
1. Log in to the SAP Fiori launchpad using your business user credentials.
2. From the Communication Management catalog, select the Communication Systems
application.
3. Select New.
4. In the New Communication System window, enter a unique system ID in the System ID field.
For example, SAP S/4HANA Cloud source system.
5. Enter a unique name for the communication system in the System Name field.
For example, Integration_System_SNOW.
6. Select Create.
The system ID and system name that you created appear in the corresponding fields in the
General tab.
7. In the Technical Data section, enter the host name of the SAP S/4HANA Cloud source system
in the Host Name field.
For example, localhost.
8. Select the Users for Inbound Communication tab.
9. Create an inbound communication user, by selecting the + button.
10. In the New Inbound Communication User window, select User Name and Password in the
Authentication Method field.
11. Select New User.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

731


<!-- page 732 -->
12. In the Create Communication User window, enter the appropriate values in the User Name,
Description, and Password fields.
13. Select Create.
You’re redirected to the New Inbound Communication User window.
14. Select OK.
The new user appears in the list of Users for Inbound Communication.

Important: There are a few communication arrangements that require a user for
outbound communication even if you're using it for inbound communication only. You
can create a dummy user for outbound communication from the Users for Outbound
Communication tab.
15. Select Save.
Create a communication arrangement for SAP S/4HANA Public Cloud
Create a communication arrangement to enable access to the SAP S/4HANA Public Cloud API.

Before you begin

SAP S/4HANA Role required: Business user

Procedure
1. Log in to the SAP Fiori launchpad using your business user credentials.
2. From the Communication Management catalog, select the Communication Arrangements
application.
3. Select New.
4. In the New Communication Arrangement window, select SAP_COM_0889 as the
communication scenario.
For information on communication scenarios for the specific APIs, see SAP S/4HANA Public
Cloud APIs .
5. Enter a unique communication arrangement name in the Arrangement Name field.
6. Select Create.
7. In the Communication System field under the Common Data section, select the
communication system you created earlier.
For example, Integration_System_SNOW.
The User Name field for the selected communication system and the Authentication Method
field associated with the communication scenario get automatically populated.
8. Select Save.
Create an SAP S/4HANA integration profile
Create an SAP S/4HANA integration profile to track software subscriptions and optimize
licensing for your SAP S/4HANA applications.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
For publishing the integration profile, change the application scope to Global.
ServiceNow Role required: sam_integrator or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

732


<!-- page 733 -->
Important: You must select the Software Asset Management integration with SAP
S4Hana Cloud check box for this integration while installing optional features on the
Application Manager
page. For more information about choosing the required SaaS
applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the SAP S/4HANA integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select SAP S4Hana Cloud Integration Pro­
file.
a. Navigate to License operations > User Sub­
scription > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select SAP S4Hana Cloud from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile
Field

Description

Display name

Name of the integration profile. For example,
SAP S/4HANA Cloud.

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

Profile type

Type of integration profile. This field is
automatically set to SAP S4Hana Cloud
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.
For more information about the required roles and scopes, see Minimal user permissions
table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

733


<!-- page 734 -->
4. In the Download Subscription Subflow section, verify that the Subflow field is set to SAP
S4Hana Public Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
5. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_s4_hana_cld_spk.SAP_S4_HANA_Cloud.
6. Open the connection & credential aliases record by selecting the preview icon (
Connection & Credential field.

) beside the

7. Select Open Record in the record preview.
8. Select the Create New Connection & Credential related link.
9. On the form, fill in the fields.
Create Connection and Credential form
Field

Description

Connection Name

A unique name for the connection. For
example, SAP S4 HANA Cloud.

Connection URL

The URL to connect to the SAP S/4HANA
public cloud instance. For example,
https://demo.s4hana.cloud.sap.

User Name

User name for the credential record.

Password

Password for the credential record.

10. Select Create.
11. On the Integration Profile form, select Validate Connection to verify the connection and
credential details of this integration.
12. Select Publish.
13. In the Publish Confirmation dialog box, select OK.
After the integration profile is published, it appears in the Direct Integration Profiles list.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models
and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If all of the
following related lists aren't visible for an integration profile in the default view, you can select the
custom integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Integrating with SAP SuccessFactors
Integrating your Software Asset Management application with the SAP SuccessFactors
application enables you to track your software subscriptions and to reclaim unused licenses.

Important:
You must request and install the following applications from ServiceNow Store

:

• SaaS License Management
• SuccessFactors Spoke
• Software Asset Management integration with SuccessFactors
• If your installed SAP SuccessFactors spoke version is 3.1.5 or lower, follow these steps:
1. Set up basic authentication for SAP SuccessFactors
2. Create an SAP SuccessFactors connection
3. Create an SAP SuccessFactors integration profile
• If your installed SAP SuccessFactors spoke version is 4.0.0 or higher, follow these steps:
1. Register OAuth application in SuccessFactors
2. Upload the JKS certificate in your ServiceNow instance
3. Register SuccessFactors as an OAuth provider
4. Create the SAML2 assertion producer record
5. Create credential record for the OData API
6. Create connection record for the OData API
7. Create an SAP SuccessFactors integration profile

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the SAP
SuccessFactors application

Authentication scopes

Download subscriptions

admin

None

Pull user activity

admin

None

Reclaim subscription

admin

None

Set up basic authentication for SAP SuccessFactors
Set up basic authentication to enable access to the SAP SuccessFactors API.

Before you begin

SAP SuccessFactors Role required: admin

Procedure
1. Log in to the SAP SuccessFactors instance using your admin credentials.
2. On the page header of your instance, select Home > Admin Center.
3. Create a group to assign API access permissions to.

Tip: Include only non-admin users in this group, as admin users automatically have
access to the SuccessFactors API.
a. In the Tool Search field of the Admin Center, search for and select Manage Permission
Groups.
b. On the Permission Group dialog box, enter a name for the permission group in the Group
Name field.
c. In the Choose Group Members section, specify the users or user groups that you want to
include in this permission group by adding them to a People Pool.
People Pools allow you to specify the sets of users or user groups that you want to include or
exclude for a permission group. You can either include all users and user groups in a single
People Pool or group them into different People Pools. For example, you can create different
People Pools for each department or office location within your organization.
To add users or user groups to a People Pool, select an identification category, such as
Username, and then enter each user or user group in the corresponding text box. Each entry
must be separated by a comma.
You can apply multiple identification categories to a single People Pool by clicking Add
another category. You can also add additional People Pools by clicking Add another People
Pool.
d. Optional: In the Exclude these people from the group section, specify the users or user
groups that you want to exclude from this permission group by adding them to a People Pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
(Optional) To add users or user groups to a People Pool, select an identification category,
such as Username, and then enter each user or user group in the corresponding text box.
Each entry must be separated by a comma.
You can apply multiple identification categories to a single People Pool by clicking Add
another category. You can also add additional People Pools by clicking Add another People
Pool.
e. Select Done.
4. Configure API access permissions for your group.
a. In the Tool Search field of the Admin Center, search for and select Manage Permission
Roles.
b. Select Create New.
c. On the Permission Role Detail form, enter a name for the permission role in the Role Name
field.
d. Optional: Enter a description for the permission role in the Description field.
e. Under Permission settings, select Permission....
f. In the Permission settings dialog box, select Manage Integration Tools from the left
navigation pane.
g. Select the Allow Admin to Access OData API through Basic Authentication check box.
h. Select Employee Central API from the left navigation pane.
i. Select the Employee Central HRIS OData API (editable) check box.
j. Select Done.
The dialog box closes and you return to the Permission Role Detail form.
k. Under the Grant this role to... tab, select Add... to search for and select the permission
groups that you created in step 4.
Adding this permission group allows the associated users and user groups to access the
APIs that are enabled in this permission role.
l. Select Save Changes.
Create an SAP SuccessFactors connection
Create a connection between your SAP SuccessFactors OData API and your ServiceNow
instance.

Before you begin

ServiceNow Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


<!-- page 738 -->
Procedure
1. From your ServiceNow instance, navigate to Process Automation > Flow Designer.
The Flow Designer launches in a new tab.
2. Select the Connections tab.
3. Select View Details for your SuccessFactors_OData connection.
4. From the list of available connections, search for and select SuccessFactors_OData.
5. Select Configure.
6. In the Configure Connection dialog box, fill in the fields.
Configure Connection dialog box
Field

Description

Connection Name of the SuccessFactors_OData connection.
Name
Connection OData API URL of your SAP SuccessFactors instance.
URL
User name

Username for your SAP SuccessFactors admin account. Enter the same
username that you used to log in to your SAP SuccessFactors instance in Set
up basic authentication for SAP SuccessFactors.

Password

Password for your SAP SuccessFactors admin account. Enter the same
password that you used to log in to your SAP SuccessFactors instance in Set up
basic authentication for SAP SuccessFactors.

7. Select Configure Connection.
Register OAuth application in SuccessFactors
Enable client certificate authentication for the outbound communication from SAP Master Data
service by generating the keystore.jks and keystore.cer files.

Before you begin

Role required: admin

Procedure
1. Create a JKS certificate by using any one of the following methods:
◦ Follow the steps in the Creating Java Keystore(JKS) with Private Key and Certificate Chain
topic SAP Help Portal .
◦ Install Java JDK 8 and Open SSL and execute the following commands in the Terminal:
a. openssl genrsa -out private.key 2048
The private.key file is generated.
b. openssl rsa -in private.key -pubout -out public.key
Extract the public key from key pair type.
c. openssl req -new -x509 -key private.key -out publickey.cer
-days 365
Enter details of the Distinguished Name (DN). The publickey.cer file is generated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
d. openssl pkcs12 -export -in publickey.cer -inkey private.key
-out successfactors.p12 -name "successfactors"
You’re prompted for a password. The successfactors.p12 file is generated using the
private and public key created in step a and step b.
e. keytool -importkeystore -srckeystore successfactors.p12
-srcstoretype pkcs12 -destkeystore successfactors.jks
You’re prompted for the destination and source file password. The
successfactors.jks file is created using the successfactors.p12 file created
in step c.

Note: Confirm that you enter the same passwords in steps c and d. For example, if
you enter the password as 123456 in step c, you must enter 123456 as password in
step d too.
2. Log in to the SuccessFactors account as an admin.
3. Navigate to Admin Centre and select Company Settings.
4. Select Manage OAuth2 Client Applications.
5. Select Register Client Application.

6. In the X.509 Certificate field, provide the contents of the publickey.cer file (public key)
without the headers.
7. Select Submit.

Result

The API Key is generated and displayed.

What to do next

Copy the API key generated and record the value for later use.
Upload the JKS certificate in your ServiceNow instance
Enable client certificate authentication for the outbound communication by uploading the JKS
certificate in your ServiceNow instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
Before you begin

Role required: admin

Procedure
1. Log in to your ServiceNow instance as an admin.
2. Upload the JKS certificate to your ServiceNow instance.
For instructions to upload the JKS certificate, see Upload a certificate to an

instance

.

Register SuccessFactors as an OAuth provider
Use the API key generated during the client application configuration to register the application
as an OAuth provider.

Before you begin

Change the application scope to SuccessFactors spoke.
Role required: admin

Procedure
1. In your ServiceNow instance, navigate to System OAuth > Application Registry.
2. Select New.
3. In the form, fill in these fields.

Field

Description

Name

Unique name to identify the certificate. For
example, SuccessFactors SAML.

Client ID

Value of the API key you had copied after
registering the OAuth client application in
SuccessFactors.

Client Secret

Note: Client secret isn’t needed to
register the application as an OAuth
provider. You can provide any value for
this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
Field

Description

Default Grant Type

Default grant type used to establish the
token. Select SAML2 Bearer.

Token URL

SuccessFactors OAuth server
endpoint URL that includes the
Company ID in this format: https://
<SuccessFactors_Instance_Name>/
oauth/token?
company_id=<Company_ID>.
For example, https://
example.successfactors.eu/
oauth/token?
company_id=SFCPART123456.

4. Select Submit.
Create the SAML2 assertion producer record
Create a SAML2 assertion record to generate the SAML2 assertion and exchange the assertion
for the access tokens with the provider.

Before you begin

Change the application scope to SuccessFactors spoke.
Role required: admin

Procedure
1. Create a SAML2 assertion producer record in your instance.
a. Navigate to All > System OAuth > SAML2 Assertion Producers.
b. Select New.
c. On the form, fill these values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
Field

Description

Name

Unique name to identify the SAML2
assertion producer record. For example,
Successfactor SAML OAuth.

Issuer

Unique identifier for the assertion issuing
entity. Provide the ServiceNow instance URL.

Subject NameID

User name to log in to the SuccessFactors
instance. For example, sfadmin.

Audience

Intended audience for the assertion. Enter
the value, www.successfactors.com.

Recipient

Intended recipient for the assertion.
Enter URL in this format, https://
<SuccessFactors-InstanceName>/oauth/token.

d. Select and hold (or right-click) the form header and select Save.
e. Under the SAML2 Assertion Keystores tab, select New.
f. On the form, fill these values.

Field

Description

Name

Unique name to identify the SAML2
assertion keystore record. For example,
successfactors.

Signing Key Alias

Alias of key entry stored in the Keystore
used to sign the assertion. For example,
successfactors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
Field

Description

Signing Key Password

Password of the key entry stored in the
keystore used to sign the assertion.

Signing Keystore

Required X.509 certificate record. Select the
X.509 certificate record that you had earlier
created. For more information, seeUpload
the JKS certificate in your ServiceNow
instance.

g. Select Submit.
h. Navigate to All > System OAuth > SAML2 Assertion Producers.
i. Open the SAML2 assertion producer record that you had created.
For example, Successfactor SAML OAuth.
j. Under the SAML2 Assertion Attributes tab, select New.
k. On the form, fill these values.

Field

Description

Name

Name to identify the SAML2 assertion
attribute record. Enter api_key.

Type

Type of the Value field. Select String.

Value

API key generated after the OAuth client
application is created in SuccessFactors.

l. Select Submit.
2. Associate the SAML2 assertion producer with the application registry record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
a. Navigate to System OAuth > Application Registry.
b. Open the application registry record that you had created.
For example, SuccessFactors OAuth Reg. For more information about creating the
application registry, see Register SuccessFactors as an OAuth provider.
c. Under the OAuth Entity Profiles tab, open the default OAuth entity profile record.
For example, Successfactor SAML default_profile.
d. For the Assertion Producer field, select the SAML2 assertion producer record you had
created.
For example, Successfactor SAML

OAuth.
e. Select Update.
Create credential record for the OData API
Create a connection record for the OData API in SuccessFactors. The SuccessFactors spoke
connection and credential alias uses these connections to perform actions in SuccessFactors.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
The system displays the message What type of Credentials would you like to create?.
3. Select OAuth 2.0 Credentials.
An empty OAuth 2.0 Credentials form is displayed.
4. On the form, fill these values.

Field

Value required

Name

Name to uniquely identify the record. For example, enter
SAML_SuccessFactors_OData_Cred.

OAuth
Entity
Profile

OAuth entity profile record that is associated with the OAuth application registry
you had created. For example, Successfactor SAML default_profile.

Active

Option to actively use the credential record.

For more information about creating the application registry, see Register
SuccessFactors as an OAuth provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
Field

Value required

Order

Order to apply this credential. For example, enter 100.

5. Click Submit.

Result

The credential record to authorize actions using the OData API is created.
Create connection record for the OData API
Create a connection record for the OData API in SuccessFactors. The SuccessFactors spoke
connection and credential alias uses these connections to perform actions in SuccessFactors.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
2. Open for the record for SuccessFactors OData.
For example, SuccessFactors_OData.
3. From the Connections tab, click New.
The system displays an empty HTTP(s) Connection form.
4. On the form, fill these values.
HTTP(s) Connection form
Field

Description

Name

Name to uniquely identify
the record. For example,
SAML_SuccessFactors_OData_Conn.

Credential

Credential record you created
for the OData API. For example,
SAML_SuccessFactors_OData_Cred.

Connection URL

SuccessFactors service root
URL in this format: https://
<SuccessFactors_Instance_Name>/
odata/v2. For example, https://
apisalesdemo2.successfactors.eu/
odata/v2.

Active

Option to actively use the connection record.

5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
Result

The connection record for the OData API in SuccessFactors is created.
Create an SAP SuccessFactors integration profile
Create an SAP SuccessFactors integration profile to track software subscriptions and optimize
licensing for your SAP SuccessFactors applications.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
Change the application scope to Global.
ServiceNow Role required: sam_integrator or admin

Important: You must select the Software Asset Management integration with

SuccessFactors check box for this integration while installing optional features on the
Application Manager
page. For more information about choosing the required SaaS
applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the SuccessFactors integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select SuccessFactors Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select SuccessFactors from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
Name

Name of the integration profile. For example, SuccessFactors
Integration.

Status

Status of the integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
Field

Value

◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.
Profile
Type

Type of integration profile. This field is automatically set to SuccessFactors
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
SuccessFactors Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to
SuccessFactors Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
SuccessFactors Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_successfactors.SuccessFactors_OData.
5. Generate and add the SAP SuccessFactors user login report to your integration profile.
This report is required for retrieving the last activity date of your SAP SuccessFactors users.
You must generate and add the latest version of this report every time you want to update
the last activity date of your SAP SuccessFactors users in the Software Subscriptions
[samp_sw_subscription] table.
a. Log in to your SAP SuccessFactors instance using the admin credentials.
b. On the page header of your instance, select Home > Admin Center.
c. On the page header of the Admin Center, select Reporting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


<!-- page 748 -->
d. Select New to create a report.
e. When prompted to select the type of report that you want to create, select Report - Table >
Select.
f. Under How would you like your data to be structured?, select Single Domain.
g. Under What data would you like to start with?, select Login Data.
h. Click Select.
The Creating Login Data report page opens.
i. On the General Info tab, fill in the fields.
General Info tab
Field

Description

Domain

Domain from which you’re retrieving data. This field is automatically set to
Login Data.

Report Name Name of the report.
Description

Description of the report.

Report
Priority

Priority of the report.

Remove
Styling

Deselect this check box.

j. On the People tab, select Refine criteria.
k. In the Define Team dialog box, fill in the fields.
Define Team dialog box
Field

Description

Team
Manager

Manager of the team for which you want to create this report. Select Logged In
User.

Team
Type of report that you want to create for the team. Select Other Filters. When
Reporting you select this report type, you can define report scopes to filter the user
Type
groups that you want to include in the report. See step 14 for more details.
Include
inactive
users

Option to include all inactive team members in the report. Leave this option
unselected.

l. Select OK.
The dialog box closes and you return to the People tab.
m. Optional: In the Define Report Scope section of the People tab, select the Division,
Department, and Location report scopes to define filter criteria for the user groups that you
want to include in the report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


<!-- page 749 -->
By default, all filter criteria for these report scopes are enabled.
n. On the Columns tab, select + Select Columns to specify the data columns that you want to
include in the report.
You can sort, group, or rearrange the columns as needed.
o. Select the Last Login and User Sys ID check boxes so that the first column is Last Login and
the second column is User Sys ID on the report.
p. Optional: On the Configuration tab, specify whether you want your data columns to display
data in either the date only or the date and time format.
For each applicable data column, select either Date (date only) or Timestamp (date and
time). After you select the format for each data column, select OK.
q. On the Filters tab, select filters to refine the data that is displayed on the report.
r. Select Refine Criteria > Employee Login Detail > Last Login.
A pop-up displays with the Define last login filter.
s. Select the By Rule > Add rule tab.
t. From the drop-down list, select the Greater than option.
u. Enter the date from when you want to generate the report.
You must select a date not older than a couple of weeks to keep the file size within allowed
limits.
v. Select Done after you select the filters.
w. Select Generate.
x. In the Download section of the generated report, select Excel to export the report as an
Excel file.

Note: The Excel file must not be greater than 5 MB.
y. Return to your SAP SuccessFactors integration profile form.
z. On the Integration Profile form header, select the Manage Attachments icon (

).

aa. In the Attachments dialog box, select Choose file to locate and select your user login report.
ab. After the report uploads successfully, close the dialog box to return to the integration profile
form.
6. After the form reloads, select Validate Connection to verify the connection and credential
details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
7. After the connection is verified, select Publish.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
8. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.
By default, the activity job runs every one hour and deletes the file attached to the integration
profile as part of the clean-up. If the file isn't found, the activity job fails to indicate no new
attachment. The job failure has no impact on the already updated last activity.
If you plan to attach the file once everyday or once a week, you can update the run time of the
SAM - Refresh Success Factors Activity scheduled job accordingly. You can
also run this job on demand whenever you attach a file.
You must attach a file every time for the job to run because SAP SuccessFactors doesn’t have
an API for activity data pull.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If all of the
following related lists aren't visible for an integration profile in the default view, you can select the
custom integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.

Important: Child aliases and alias overrides aren't supported for the SuccessFactors

Update User Activity subflow because this subflow doesn't use REST steps directly where
aliases are required.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Slack
Integrating your Software Asset Management application with the Slack application enables you
to track your software subscriptions and reclaim unused licenses.
The ServiceNow Slack integration supports the Slack Enterprise Grid plan. This plan enables you
to connect multiple workspaces across your organization.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.

Process

Required user role in the Slack
application

Authentication scopes

Download subscriptions

Org Owner

admin

Pull user activity

Org Owner

admin

Reclaim subscription

Org Owner

admin

Create a Slack Enterprise Grid application
Create a Slack Enterprise Grid application to manage and connect multiple workspaces across
your organization.

Before you begin

Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, open Slack

.

2. Sign in using your Slack credentials.
3. Go to the Slack platform

.

4. On the page header of the Slack platform, select Your Apps.
5. On the Your Apps page, select Create New App.
6. Select From Scratch.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
The Name app and choose workspace dialog box opens.
7. In the dialog box, enter an application name in the App Name field.
8. From the Development Slack Workspace list, select the workspace that you want the
application to belong to.
9. Select Create App.
The Slack platform creates the application and then redirects you to the Basic Information
page. Use this page to view and configure application settings.
10. On the Basic Information page, expand the App Credentials section and then copy the values
in the Client ID and Client Secret fields.
Save them in a secure location for later use.
11. Expand the Add features and functionality section and then select Permissions.
12. On the OAuth & Permissions page, configure the permissions that enable the interactions
between the application and the Slack API.
a. In the Redirect URLs section, add the URL of the OAuth provider that you want to redirect
users to after authentication.
i. Select Add New Redirect URL.
ii. When prompted, enter https://<instance-name>/oauth_redirect.do,
where <instance-name> is the name of your ServiceNow instance.
iii. Select Add.
iv. Select Save URLs.
b. In the User Token Scopes section, add the admin OAuth scope to the application.
The OAuth scopes limit the level of access that the application has to your users, channels,
and workspaces. For more information on Slack OAuth scopes, see OAuth Permission
scopes .
i. Select Add an OAuth Scope.
ii. When prompted, select admin from the OAuth Scope list.
This OAuth scope enables the application to administer your workspace.

Note: The Description field for the OAuth scope populates automatically.
13. Activate your application.
a. From the left navigation pane, navigate to Settings > Manage Distribution.
b. Under Share Your App with Other Workspaces, expand the Remove Hard Coded Information
section.
c. Verify that your application doesn’t contain any hard-coded information, such as OAuth
tokens.
d. After verification, select the I've reviewed and removed any hard-coded information check
box.
e. Verify that you have completed all other sections.
f. Select Activate Public Distribution.
Create a Slack workspace application
Create a Slack application on each workspace that you want to track user activity on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
Before you begin

Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, open Slack

.

2. Sign in using your Slack credentials.
3. Go to the Slack platform

.

4. On the page header of the Slack platform, select Your Apps.
5. On the Your Apps page, select Create New App.
6. Select From Scratch.
The Name app and choose workspace dialog box opens.
7. In the dialog box, enter an application name in the App Name field.
8. From the Development Slack Workspace list, select the workspace that you want the
application to belong to.
9. Select Create App.
The Slack platform creates the application and then redirects you to the Basic Information
page. Use this page to view and configure application settings.
10. On the Basic Information page, expand the App Credentials section and then copy the values
in the Client ID and Client Secret fields.
Save them in a secure location for later use.
11. Expand the Add features and functionality section and then select Permissions.
12. On the OAuth & Permissions page, configure the permissions that enable interactions
between the application and the Slack API.
a. In the Redirect URLs section, add the URL of the OAuth provider that you want to redirect
users to after authentication.
i. Select Add New Redirect URL.
ii. When prompted, enter https://<instance-name>/oauth_redirect.do,
where <instance-name> is the name of your ServiceNow instance.
iii. Select Add.
iv. Select Save URLs.
b. In the User Token Scopes section, add the admin OAuth scope to the application.
The OAuth scopes limit the level of access that the application has to your users, channels,
and workspaces. For more information on Slack OAuth scopes, see OAuth Permission
scopes .
i. Select Add an OAuth Scope.
ii. When prompted, select admin from the OAuth Scope list.
This OAuth scope enables the application to administer your workspace.

Note: The Description field for the OAuth scope populates automatically.
13. In the OAuth Tokens & Redirect URLs section of the OAuth & Permissions page, select Install
App to Workspace.
14. Select Allow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
Slack creates the application for the specified workspace.
15. Repeat steps 4 through 13 for each workspace on which you want to create an application.
Create a Slack Enterprise connection
Create a connection between the Slack Enterprise Grid application and your ServiceNow
instance. This connection enables your instance to retrieve user data from your application.

Before you begin

Role required: sam_integrator or admin

Procedure
1. From your ServiceNow instance, navigate to Process Automation > Flow Designer.
The Workflow Studio launches in a new tab.
2. Select the Connections tab.
3. Select View Details for your Slack Enterprise connection.
4. From the list of available connections, locate Slack Enterprise and then select Configure.
5. In the Configure Connection dialog box, fill in or verify the following fields.
Configure Connection dialog box
Field

Value

Connection Name of the Slack Enterprise connection. This field populates automatically.
Name
Name

Name of your Slack Enterprise credentials. This field populates automatically.

OAuth
Client ID

Client ID that is assigned to your Slack Enterprise Grid application. Enter the
same client ID that you copied in Create a Slack Enterprise Grid application.

OAuth
Client
Secret

Client secret that is assigned to your Slack Enterprise Grid application. Enter
the same client secret that you copied in Create a Slack Enterprise Grid
application.

OAuth
Redirect
URL

Redirect URL for your Slack Enterprise Grid application. This field populates
automatically.

6. Select Configure and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
7. On the Authorize App dialog box, verify if the Enterprise Grid workspace is available on the
top-right list.
8. If the Enterprise Grid workspace is available, select the Enterprise Grid workspace.
9. If the Enterprise Grid workspace isn’t available,
a. Select Add another workspace.
b. Enter the Enterprise Grid workspace URL.
c. Select Continue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


<!-- page 755 -->
You get redirected to the Authorize App dialog box.
d. Select Allow.
The OAuth access token becomes available for authorizing your Enterprise connection.
Create a Slack workspace connection
Create a connection between your Slack workspaces and your ServiceNow instance. This
connection enables your instance to retrieve user data from your workspaces.

Before you begin

Role required: sam_integrator or admin

About this task

Create a separate connection for each of your Slack workspaces.

Procedure
1. From your ServiceNow instance, navigate to Process Automation > Flow Designer.
The Workflow Studio launches in a new tab.
2. Select the Connections tab.
3. Select Add Connection for your Slack Enterprise connection.
4. In the Create Connection dialog box, fill in or verify the following fields.
Create Connection dialog box
Field

Value

Connection Name of the Slack workspace connection. For example, SlackName
Workspace-1.
Name

Name of your Slack workspace credentials. For example, SlackWorkspace-1.

OAuth
Client ID

Client ID that is assigned to your Slack workspace application. Enter the same
client ID that you copied in Create a Slack workspace application.

OAuth
Client
Secret

Client secret that you assigned to your Slack workspace application. Enter the
same client secret that you copied in Create a Slack workspace application.

OAuth
Redirect
URL

Redirect URL for your Slack workspace application. This field populates
automatically.

5. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
6. In the Authorize App dialog box, select Allow.
The OAuth access token becomes available for authorizing your Slack workspace connection.
7. Repeat steps 3 through 6 for each workspace that which you want to connect.
8. Return to your ServiceNow instance to associate your Slack workspace connections with the
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
a. Navigate to Slack > Slack Workspace Tokens.
b. Select New.
c. On the Slack Workspace Tokens form, fill in the following fields.
Slack Workspace Tokens form
Field

Value

Connection Name of your Slack workspace connection. Enter the same connection name
Alias
that you entered in step 4.
Workspace The name of the workspace to which your Slack application belongs.
Name
Slack App

Name of your Slack workspace application. Enter the same application name
that you entered in Create a Slack workspace application.

d. Select Submit.
e. Repeat steps a through d for each workspace connection that you want to associate with
your instance.
Create a Slack integration profile
Create a Slack integration profile to track software subscriptions and optimize licensing for your
Slack applications.

Before you begin

To create a Slack integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Slack Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Slack integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Slack Enterprise Integration Profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
Interface

Action

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
Software Asset Workspace

b. Select New.
c. Select Slack Enterprise from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
Name

Name of the integration profile. For example, Slack Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile. This field is automatically set to Slack
Enterprise Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Slack
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Slack Update
User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Slack
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_slack_ah_v2.Slack_Enterprise.
5. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.

Important: If you encounter configuration issues while validating the integration profile
or retrieving subscriptions, refer to the knowledge base for troubleshooting guidance. For
more information, see knowledge base article KB2536373 .
6. After the connection is verified, select Publish.
7. In the dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.
8. Optional: To optimize memory and avoid performance issues in your Workfront flow, you can
turn off the flow engine reporting level.
a. Navigate to System Properties > All Properties.
b. Select the com.snc.process_flow.reporting.level system property.
c. On the System Property page, set the Value to OFF.
d. Select Update.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with SmartRecruiters
Integrating your Software Asset Management application with the SmartRecruiters application
enables you to track your software subscriptions and deactivate stale users. The reclamation
flow deactivates only the users’ access. The reclamation flow does not affect the subscription
cost because SmartRecruiters is not priced based on the number of users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.

Process

Required user role in the
SmartRecruiters application

Authentication scopes

Download subscriptions

admin

None

Pull user activity

admin

None

Reclaim subscription

admin

None

Generate a SmartRecruiters API key
Generate an API key for authenticating SmartRecruiters API requests.

Before you begin

SmartRecruiters Role required: admin

Procedure
1. Log in to SmartRecruiters

account by using your admin credentials to generate an API key.

2. On the page header of the SmartRecruiters portal, select your profile icon and then select
Settings/Admin.
3. Under Company Settings, locate the Administration section and then select Apps &
Integrations.
4. Select the CREDENTIALS tab and then select NEW CREDENTIAL.
5. When prompted to select the type of credential that you want to generate for your applications,
select API key.
6. Select Next.
7. Enter a name for your API key in the Credentials name field.
8. Enter a description for your API key in the Description field.
9. Select Generate.
SmartRecruiters automatically generates and displays your API key.
10. Copy your API key and save it in a secure location for later use.
Create a SmartRecruiters integration profile
Create a SmartRecruiters integration profile to track software subscriptions and usage. Identify
users that no longer require access to SmartRecruiters and deactivate their access.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the SmartRecruiters Spoke check box for this integration
while installing optional features on the Application Manager
page. For more information
about choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the SmartRecruiters integration
profile in Core UI is inactive.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select SmartRecruiters Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select SmartRecruiters from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, SmartRecruiters
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile. This field is automatically set to SmartRecruiters
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
SmartRecruiters Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to
SmartRecruiters Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
SmartRecruiters Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_smartrec_spoke.SmartRecruiters.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection dialog box
Field

Description

Connection Information
Connection
Name

Name of the SmartRecruiters connection.
This field populates automatically.

Connection URL URL for the connection.
This field is automatically set to https://
api.smartrecruiters.com.
Credential Information
API Key

API key for your SmartRecruiters applications.
Enter the same API key that you generated in Generate a SmartRecruiters
API key.

8. Select Create.
The dialog box closes and you automatically return to the integration profile form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Smartsheet
Integrating your Software Asset Management application with the Smartsheet application
enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Smartsheet application

Authentication scopes

Download subscriptions

admin

None

Pull user activity

admin

None

Reclaim subscription

admin

None

Create a Smartsheet API access token
Create an API access token for authenticating Smartsheet API requests.

Before you begin

Smartsheet Role required: admin

Procedure
1. From a web browser, open Smartsheet

.

2. Log in using your Smartsheet credentials.
3. On the side navigation bar, select the account icon (

) and then select Apps & Integrations.

4. In the Personal Settings dialog box, select API Access.
5. Under Manage API Access Tokens, select Generate new access token.
6. When prompted, enter a name for your API access token in the API Access Token Name field
and then select OK.
Smartsheet automatically generates and displays your API access token. For security
purposes, this API access token appears only once.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
7. Copy your API access token and save it in a secure location for later use.
8. Select OK.
Create a Smartsheet integration profile
Create a Smartsheet integration profile to track software subscriptions and optimize licensing for
your Smartsheet applications.

Before you begin

To create a Smartsheet integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Smartsheet Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Smartsheet integration profile
in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Smartsheet Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Smartsheet from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile.

Status

Status of the integration profile.

For example, Smartsheet Integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
Field

Description

◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.
Profile
Type

Type of integration profile.
This field is automatically set to Smartsheet Subscription.

3. View the required user roles or API permissions to minimize security risks and optimize SaaS
licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Smartsheet Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Smartsheet
Update User Activity.
The Download Activity check box is selected by default. If you clear it, the activity
scheduled job SAM - Refresh <displayname> Events isn't created.

Important: To enable detailed event tracking, procure an Event Reporting add-on
from Smartsheet.
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
Smartsheet Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save after completing all the required fields.
Your ServiceNow instance creates a draft integration profile. The integration profile uses
the Smartsheet Download Subscriptions, Smartsheet Update User Activity, and Smartsheet
Reclaim Subscription subflows to retrieve user data from the Smartsheet application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
The Connection & Credential field appears and is automatically set to
sn_smrtsheet_spoke.Smartsheet.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection.

Connection This field is automatically set to https://api.smartsheet.com.
URL
Note: Based on regions, replace the Connection URL with these
respective URLs:
◦ Smartsheet Gov: https://api.smartsheetgov.com/
◦ Smartsheet Regions Europe: https://api.smartsheet.eu/
◦ Smartsheet Regions Australia: https://api.smartsheet.au/
API Key

API key for your Smartsheet application.
Enter an API key in the api-access-token format, where <api-accesstoken> is the API access token that you created in Smartsheet.

8. Select Create.
You automatically return to the integration profile.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with SurveyMonkey
Integrating your Software Asset Management application with SurveyMonkey application
enables you to track your software subscriptions and to reclaim unused licenses.
The SaaS License Management SurveyMonkey integration supports the SurveyMonkey
Enterprise and Enterprise Platinum plans as API support is available for only these plans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
SurveyMonkey application

Download subscriptions

admin

Authentication scopes

• View Groups
• View Users

Pull user activity

admin

View Groups

Create a private SurveyMonkey application
Create a private SurveyMonkey application for creating, tracking, and analyzing surveys within
your organization.

Before you begin

SurveyMonkey Role required: Refer to the Minimal user permissions table.

About this task

Note:

To avoid rate-limiting issues, create a private SurveyMonkey application for each
ServiceNow instance.

Procedure
1. From a web browser, open the SurveyMonkey API Developer portal

.

2. Sign in using your admin credentials.
3. On the page header of the API Developer portal, select My Apps.
4. On the My Apps page, select Add a New App.
5. In the APP CREATION dialog box, enter a name for the application in the App Nickname field.
6. Under the Select an App Type section, select Private App.
7. Select Create App.
The dialog box closes and then the overview of the newly created application opens.
8. In the Details section of the application overview, copy the values in the Client ID and Secret
fields.
Save them in a secure location for later use.
9. Go to the application settings by selecting the SETTINGS tab.
10. In the Settings section of the application settings, enter the URL of the OAuth provider that
users are redirected to after authentication in the OAuth Redirect URL field.
Enter https://instance.service-now.com/oauth_redirect.do, where
<instance> is the name of your ServiceNow instance.
11. Select Submit Changes.
12. In the Scopes section of the application settings, select the View Groups and View Users
scopes to enable your application to access group and user information.
13. Select Update Scopes.
14. At the top of the application settings, select Deploy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
Create a SurveyMonkey integration profile
Create a SurveyMonkey integration profile to track software subscriptions and optimize licensing
for your SurveyMonkey applications.

Before you begin

To create a SurveyMonkey integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the SurveyMonkey Spoke check box for this integration
while installing optional features on the Application Manager
page. For more information
about choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the SurveyMonkey integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select SurveyMonkey Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select SurveyMonkey from the drop-down
list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, SurveyMonkey
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to SurveyMonkey Subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
SurveyMonkey Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to
SurveyMonkey Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_sv_monkey_spoke.surveyMonkey.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection.

OAuth
Client ID

Client ID that is assigned to your SurveyMonkey application.

OAuth
Client
Secret

Client secret that is assigned to your SurveyMonkey application.

OAuth
Redirect
URL

URL of the OAuth provider that users are redirected to after authentication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
Field

Description

This field populates automatically based on the OAuth redirect URL that you
specified in Create a private SurveyMonkey application.
8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. In the Authorize App dialog box, sign in using the same SurveyMonkey credentials that you
used to create your SurveyMonkey application.
10. Select Allow.
The dialog box closes and then you automatically return to the integration profile form.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
12. After the connection is verified, select Publish.
13. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Tableau Cloud
Integrating your Software Asset Management application with the Tableau Cloud application
enables you to track your software subscriptions and to reclaim stale licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Tableau Cloud application

Authentication scopes

Download subscriptions

site administrator

None

Pull user activity

site administrator

None

Reclaim subscription

site administrator

None

Register a Tableau Cloud application
Register a Tableau Cloud application through the Tableau Cloud admin portal.

Before you begin
• Activate the Tableau spoke. For more information, see Tableau spoke

.

• Tableau Cloud Role required: site administrator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
Procedure
Use one of the following authentication types to validate ServiceNow instance requests with
Tableau Cloud.
• Personal Access Token (PAT)
• JSON Web Token (JWT)
a. Validate ServiceNow instance requests with Tableau Cloud using the PAT authentication type.
i. Log in to the Tableau Cloud account using admin credentials.
ii. Select your profile icon.
iii. Select My Account Settings.
iv. Scroll down to the Personal Access Tokens section on your profile page.
v. In the text field, provide a token name.
For example, Test 1.
vi. Select Create Token.
The Personal Access Token is generated with a Token name and Secret.
vii. To copy the Personal Access Token Secret, select Copy Secret.

Important:
Keep the Personal Access Token Secret at a secure place. You would need it when you
create a connection record for Tableau.
b. Validate ServiceNow instance requests with Tableau Cloud using the JWT authentication type.
i. Log in to the Tableau Cloud account using admin credentials.
ii. Select your profile icon.
iii. From the left-pane, select Settings.
iv. Select the Connected Apps tab.
v. On the Connected Apps page, select the Direct Trust option from the New Connected Apps
drop-down list.
vi. In the Create Connected App dialog box, fill in the Connected app name, Access level, and
Domain allow list details.
vii. Select Create.
The Connected App that you created gets displayed on the Connected Apps page. By
default, the Connected App is inactive.
viii. To enable the Connected App, select the ellipsis icon (
and then select Enable.

) next to the Connected App name

The status of the Connected App shows as enabled.
ix. Select the Connected App name.
Keep the Secret ID and Secret value at a secure place. You would need it when you create a
connection record for Tableau.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
x. To copy the Client ID, select Copy Client ID.
Keep the Client ID at a secure place. You would need it when you create a connection record
for Tableau.
Create a Tableau Cloud integration profile
Create an integration profile to track software subscriptions and optimize licensing for the
Tableau Cloud service.

Before you begin

To create a Tableau Cloud integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: admin or sam_integrator

Important: You must select the Software Asset Management integration with

Tableau check box for this integration while installing optional features on the Application
Manager
page. For more information about choosing the required SaaS applications, see
Request SaaS License Management.

About this task

If you’re using the Software Asset Workspace, the option to create the integration profile in Core
UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Tableau Cloud.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Tableau Cloud from the drop-down
list.
d. Select Continue.

2. On the form, fill in the fields.
Integration profile form
Field

Value

Display name

Name of the integration profile. For example,
Tableau integration.

Status

Status of the integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
Field

Value

◦ If you haven't published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.
Profile type

Type of integration profile. This field
is automatically set to Tableau Cloud
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Tableau
Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Tableau
Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_tableau_spoke.TableauCloud.
5. Open the connection & credential aliases record by selecting the preview icon (
Connection & Credential field.

) beside the

6. Select Open Record in the record preview.
7. Select the Create New Connection & Credential related link.
8. On the form, fill in the fields.
Create Connection and Credential form
Field

Description

Please Enter the Connection Information
Connection Name

Name of the connection.
This field is automatically set to Tableau
Cloud Connection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
Field

Description

Connection URL

The URL used for connecting to the server on
which Tableau Cloud is installed.

Content URL

The permanent name of the site to sign in to.
The content URL appears in the URL path of
Tableau content in your browser address bar
after the Tableau Server URL.
mySite is the content URL in the following
example: http://<server or cloud
URL>/#/site/mySite/explore.

Please Enter the Credential Information
Select the Personal Access Token (PAT) or JSON Web Token (JWT) authentication type. The
fields change based on the authentication type that you select.
Fields for the PAT authentication type
Token Name

The Token name that you provided while
registering the Tableau Cloud application by
using the PAT authentication type.
For more information, see Register a Tableau
Cloud application.

Token Secret

The Token secret that you copied while
registering the Tableau Cloud application by
using the PAT authentication type.
For more information, see Register a Tableau
Cloud application.

Expiry Interval (sec)

Life span of the generated Personal Access
Token (PAT).
Default value: 14400 sec

Important: You mustn't modify the
value of this field.
Fields for the JWT authentication type
Secret ID

The Secret ID that you copied while
registering the Tableau Cloud application by
using the JWT authentication type.
For more information, see Register a Tableau
Cloud application.

Secret Value

The Secret value that you copied while
registering the Tableau Cloud application by
using the JWT authentication type.
For more information, see Register a Tableau
Cloud application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
Field

Description

Username

User name, that is, email address of the
authenticated Tableau Cloud user.

Client ID

The Client ID that you copied while
registering the Tableau Cloud application by
using the JWT authentication type.

Expiry Interval (sec)

Life span of the generated JSON Web Token
(JWT).
Default value: 3600 sec

Important: You mustn't modify the
value of this field.

9. Select Create.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
11. Select Publish.
12. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Trello
Integrating your Software Asset Management application with the Trello service enables you to
track your software subscriptions and to reclaim unused licenses.
For more information about the Trello service, see the Trello Developer guide

.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Trello
application

Authentication scopes

Download subscriptions

Product admin

None

Pull user activity

Product admin

None

Reclaim subscription

Product admin

None

Generate Trello API key and token
Generate a Trello API key and token to get access to the Trello portal.

Before you begin

Trello Role required: Refer to the Minimal user permissions table.
Verify that you have a managed user account and Atlassian admin access.

Procedure
1. Go to Trello

.

2. Log in as an enterprise admin.
3. Go to Developer API Keys

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
4. Copy the API key from Personal Key on the Developer API keys page.

5. In the following link, replace {YourAPIKey} with the API key that you copied in the last step and
open the link.
https://trello.com/1/authorize?
expiration=never&scope=read,write,account&response_type=token&name=ServerTok

For example, if your API key is 123xyz, then open the
following link- https://trello.com/1/authorize?
expiration=never&scope=read,write,account&response_type=token&name=ServerTok
The MyPersonalToken page appears and asks if you want to give access to your account.
6. Select Allow.
An API token is generated. Copy this API token and store it securely.
Create a Trello integration profile
Create an integration profile to track software subscriptions and optimize licensing for the Trello
service.

Before you begin

To create a Trello integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: admin or sam_integrator and sn_trello_spoke.trello_admin

Important: You must select the Trello Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Trello integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Trello Enterprise Integration Pro­
file.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Trello Enterprise from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
Integration Profile form
Field

Description

Display Name

Name of the integration profile.
For example, Trello Integration.

Status

Status of the integration profile.
◦ If you haven’t published the integration
profile, this field is automatically set to
Draft.
◦ If you’ve already published the integration
profile, this field is automatically set to
Published.

Profile Type

This field is automatically set to Trello
Enterprise Subscription.

3. Review the required user roles or API permissions to minimize security risks and optimize SaaS
licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Trello
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Trello
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_trello_spoke.Trello_Alias.
5. In the Download Subscription Subflow tab, select the preview icon (
) next to the
Connection & Credential field and then select Open Record in the record preview.
6. Select the Create New Connection & Credential related link.
7. On the form, fill in the fields.
Create Connection and Credential form
Field

Description

Connection Name

Name to identify the connection record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Field

Description

Connection URL

Enter the URL as https://
api.trello.com/.

API Key

The API key that you copied from the Trello
portal.

API Token

The API token that you copied from the Trello
portal.

8. Select Create.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
10. Select Publish.
11. In the Publish Confirmation dialog box, select OK

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Workday
Integrating your Software Asset Management application with the Workday applications enables
you to track your software subscriptions.
With this integration, you can track software subscriptions for the following Workday
applications:
• Workday Human Capital Management
• Workday Financial Management

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Required user role in the
Workday application

User having Worker Data:
Public Worker Reports
Domain Security Policy

Authentication scopes

None

Configure permissions in Workday
To set up the Workday integration successfully, perform this procedure in Workday.

Before you begin

Role required: Users having roles such as Security Admin, Integration Admin, Integration Auditor,
who can create Integration System Users and assign required security policies.

Procedure
1. Register an Integration System User.

Note: While filling out account information details, you must select the Do Not Allow UI
Sessions check box.

2. Create a security group and assign it to the Integration System User.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
a. In Action, navigate to Security Group > Maintain Domain Permissions for Security Group
and provide the following permission:
Domain security policy permissions
Operation

Domain Security Policy

Functional Areas

Get Only

Worker Data: Public Worker
Reports

Staffing

Get Only

Worker Data: Current Staffing Staffing
Information

Get Only

Worker Data: Workers

Staffing

Note: Confirm that the domain security policies are activated for the security group
using the active pending security policy changes.

Result

The new credentials for this Integration System User would be used to configure the connection
in the ServiceNow instance.
Create a Workday integration profile
Create a Workday integration profile to track software subscriptions and optimize licensing for
your Workday applications.

Before you begin

Role required: admin, sam_admin, sam_integrator
Install the latest Workday HR spoke. For more information about the latest version, see the Spoke
version section in Workday HR Spoke .

Important: You must select the Software Asset Management integration with

Workday check box for this integration while installing optional features on the Application
Manager
page. For more information about choosing the required SaaS applications, see
Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Workday integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Workday Integration Profile.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Interface

Action

c. Select Workday from the drop-down list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Description

Integration Profile
Display name

Name of the integration profile. For example,
Workday integration.

Status

Status of the integration profile.
◦ If you haven’t published the integration
profile, this field is automatically set to
Draft.
◦ If you’ve already published the integration
profile, this field is automatically set to
Published.

Profile type

Type of integration profile. This field is
automatically set to Workday Subscription.

Connection Setup
Connection Details

◦ If the connection details exist, this field is
already populated.
◦ If the connection details don't exist, you
must create them.

SOAP Username

User name of the Integration system user
created while configuring permissions in
Workday.

Important: Include the tenant
suffix in the username. For example,
username@<tenant>.
SOAP Password

Password of the Integration system user
created while configuring permissions in
Workday.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
In the Download Subscription Subflow section, verify that the Subflow field is set to Workday
Download Subscriptions. The Download subscriptions check box is selected by default and
you can't clear it.
4. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
5. If connection details don't exist, create the connection details.
Interface

Action

Core UI

In the Connection Details field, select the
search icon ( ).

Software Asset Workspace

Select the Connection details link.

a. Select New.
b. On the form, fill in the fields.
Connection Details
Field

Description

Base URL

Workday SOAP API URL with the tenant
name in the following format: https://
<workday_host_url>/ccx/
service/<workday_tenant_name>.

Version

The SOAP API version, for example, v33.2.

Webservice Type

Should be set to SOAP.

c. Select Submit.
A record is created and added in the Connection Details field.
d. Optional: Review the connection details by selecting the new integration profile and
selecting the lookup icon in the Connection details field.
6. Create a SOAP user name and password when you don't have these credentials automatically
populated.

Note: Only an admin role can create or update the SOAP user name and password.
Interface

Core UI

Action

a. Navigate to All > System Web Services >
SOAP Security Policies.
b. Select All in the top menu bar.
c. Select WorkdayHR.

Software Asset Workspace

Select the SOAP username profile link.

a. On the Soap Security Policy form, select the lookup icon
Profile field.

in the WS-Security Username

b. Select New.
c. On the WS-Security Username Profiles (Outbound) form, fill in the name, user name, and
password for the integration profile.
d. Select Submit.
7. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
8. Under the FSE worker calculation tab, activate the worker categories covered by your contract
by setting the value of Active to true and entering the FSE percentage.
9. Optional: If worker categories are listed in your contract but not available in the FSE worker
calculation tab, add a new worker category.
a. In the FSE worker calculation tab, select New.
b. On the form, fill in the fields.
Workday FSE worker calculation
Field

Description

Worker Category

The worker category listed in your contract.

FSE Percentage

The FSE percentage for the worker
category that you added. Full Service
Equivalent (FSE) is the method by which the
subscriptions are calculated.

Integration profile

The Workday integration profile that you
created.

Active

Option to make the worker category active.

c. Select Submit.
10. Define the mapping of the newly created worker category.
a. Select the Worker category tab and select New.
b. On the form, fill in the fields:
Workday worker category
Field

Description

Worker Type

The type of worker, either Employee or
Contingent.

Employee/Contingent worker type

The type of Employee or Contingent worker.

Time Type

Indicates whether the worker is full-time or
part-time.

Worker Category

The worker category that you created.

Integration profile

The Workday integration profile that you
created.

Active

Option to make the mapping active.

c. Select Submit.
11. Activate the list of modules that are defined in your contract.
a. Select the Modules tab.
b. Open the module record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
c. Set the Active field to True.
d. Select Save.
12. Verify that there is at least one active record in all the tabs for your contract: FSE worker
calculation, Worker category, and Modules, before publishing the connection.
13. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
14. After the connection is verified, select Publish.
15. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Workplace from Facebook
Integrating your Software Asset Management application with the Workplace from Facebook
application enables you to track your software subscriptions and reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Workplace from Facebook
application

Download subscriptions

System admin

Authentication scopes

• Read group membership
• Manage work profiles

Pull user activity

System admin

• Read group
• Read group membership
• Read group content
• Read All messages
• Read Knowledge Library
content

Reclaim subscription

System admin

Provision User Accounts

Create a Workplace from Facebook integration profile
Create an integration profile to track software subscriptions and optimize licensing for the
Workplace from Facebook application.

Before you begin

To create a Workplace from Facebook integration profile, request the Software Asset
Management - SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow
Store .
ServiceNow Role required: admin or sam_integrator

Important: You must select the Workplace from Facebook Spoke spoke check box
for this integration while installing optional features on the Application Manager
page.
For more information about choosing the required SaaS applications, see Request SaaS
License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Workplace from Facebook
integration profile in Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Workplace from Facebook Integra­
tion Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Workpace from Facebook from the
drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration profile form
Field

Value

Display name

Name of the integration profile.
For example, Workplace from Facebook
integration.

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

Profile type

Type of integration profile.
This field is automatically set to Workplace
from Facebook Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Workplace From Facebook Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Workplace
From Facebook Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
Workplace From Facebook Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_fb_wp_spoke.FB_Workplace_Alias.
5. Select the preview icon ( ) next to the Connection & Credential field and select Open Record
in the record preview to open the connection & credential aliases record.
6. On the Connection & Credential Aliases form, select FB_Workplace_Credentials under the
Credential column in the Connections list.
7. On the Workplace from Facebook Credentials form, select Install on your Workplace.
You get redirected to theWorkplace sign-up/sign-in

page.

8. Log in to your Workplace from Facebook account using your credentials.
The Add ServiceNow Spoke to Workplace pop-up window gets displayed.
9. Select Add to Workplace.
10. Select Done.
You are redirected back to your ServiceNow instance and the relevant fields are updated.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
12. After the connection is verified, select Publish.
13. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Zendesk
Integrating your Software Asset Management application with the Zendesk application enables
you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Zendesk application

Authentication scopes

Download subscriptions

Light Agent

None

Pull user activity

Light Agent

None

Reclaim subscription

admin

None

Create a Zendesk OAuth client
Create an OAuth client for authenticating Zendesk API requests.

Before you begin

Zendesk Role required: admin

Procedure
1. From a web browser, open Zendesk

.

2. Log in using your admin credentials.
3. On the left navigation menu of the Zendesk Agent Workspace, select the Admin icon (

).

4. Go to the Admin Center from the Admin page and from the Admin menu, navigate to Apps and
Integrations > API.
The Zendesk API page opens.
5. Select the OAuth Clients tab and then select Add OAuth client.
6. On the form, fill in the fields.
Create a new OAuth client form
Field

Description

Client
name

Name of the OAuth client.

Description Brief description of the OAuth client.
Company

Name of the company whose data the OAuth client grants access to through
the Zendesk API. The company name is displayed during authentication of your
Zendesk API requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
Field

Description

This field populates automatically based on the company that your Zendesk
account is associated with. However, you can modify the company name as
needed.
Logo

Logo that is displayed during authentication of your Zendesk API requests.
Select the green square to locate and select the logo that you want to display.

Unique
identifier

Unique identifier for the OAuth client. This field populates automatically based
on the OAuth client name that you specified in the Client name field. However,
you can modify the unique identifier as needed.

Note: The unique identifier is used only in the Zendesk code.
Client kind

This field must be set to Confidential. Confidential authentication clients run on
secure servers, where their credentials can be kept safe.

Redirect
URLs

URL of the OAuth provider that users are redirected to after authentication.
Enter https://instance.service-now.com/oauth_redirect.do,
where <instance> is the name of your ServiceNow instance.

7. Select Save.
8. On the dialog box, select OK.
The dialog box closes and the form reloads.
9. Copy the value from the Secret field.
Save the Secret value in a secure location for later use.
Create a Zendesk integration profile
Create a Zendesk integration profile to track software subscriptions and optimize licensing for
your Zendesk applications.

Before you begin

To create a Zendesk integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Zendesk Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Zendesk integration profile in
Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Zendesk Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Zendesk from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Zendesk Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to Zendesk Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Zendesk
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Zendesk
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_zendesk_spoke.Zendesk.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection dialog box
Field

Description

Connection Information
Connection
Name

Name of the Zendesk connection. This field populates automatically.

Connection
URL

URL for the connection.
Enter https://<subdomain>.zendesk.com, where <subdomain> is
your organization subdomain.

Credential Information
OAuth Client Unique identifier for your Zendesk OAuth client.
ID
Enter the same unique identifier that you specified in Create a Zendesk OAuth
client.
OAuth Client Secret that is assigned to your Zendesk OAuth client.
Secret
Enter the same secret that you copied in Create a Zendesk OAuth client.
OAuth
URL of the OAuth provider that users are redirected to after authentication.
Redirect URL
This field populates automatically based on the redirect URL that you
specified in Create a Zendesk OAuth client.
8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. On the Zendesk OAuth authorization dialog box, select Authorize.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
The OAuth access token becomes available for authorizing your Zendesk connection.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
11. After the connection is verified, select Publish.
12. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Zoom
Integrating your Software Asset Management application with the Zoom service enables you to
track your software subscriptions and to reclaim unused licenses.
With this integration, you can retrieve and analyze licensing information for the following Zoom
applications:
• Zoom Regular account (not a Master / Master-sub account) for Meetings
• Zoom Regular account (not a Master / Master-sub account) for Webinar
For additional information about Zoom, see Zoom Developer Documentation

.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Pull user activity

Reclaim subscription

Required user role in the Zoom
application

View or edit user information
(e.g. assigning licenses and
groups to users): View
View detailed usage reports
for the account: View

View or edit user information
(e.g. assigning licenses and
groups to users): Edit

Authentication scopes

• user:read:list_users:admin
• user:read:settings:admin

• meeting:read:list_meetings:admin
• webinar:read:list_webinars:admin

• user:update:settings:admin
• user:update:user:admin
• user:delete:user:admin

Create a Zoom application
Create an application in the Zoom App Marketplace.

Before you begin

Zoom Role required: Zoom for developers: Edit

Procedure
1. Navigate to Zoom App Marketplace

and sign in to your account.

2. Select Develop > Build App.
3. In the Select how the app is managed section on the Basic Information page, select the
Admin-managed option.
4. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
5. In the App Credentials section, obtain the Client ID and Client Secret.
Copy and save these values in a secure location for later use.

Note: Your Client ID and Client secret are sensitive. Don’t share them.
6. Enter https://instance.service-now.com/oauth_redirect.do in the OAuth
Redirect URL and OAuth Allow Lists fields, where instance is the name of your ServiceNow
instance.
7. Select the Scopes tab on the left navigation menu.
8. Add the following scopes for enabling the integration to get a list of users, track meeting and
webinar activity for users, and reclaim unused subscriptions.
◦ user:read:list_users:admin
◦ user:read:settings:admin
◦ meeting:read:list_meetings:admin
◦ webinar:read:list_webinars:admin
◦ user:update:settings:admin
◦ user:update:user:admin
◦ user:delete:user:admin
Create a Zoom integration profile
Create an integration profile to track software subscriptions and optimize licensing for the Zoom
service.

Before you begin

To create a Zoom integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the Zoom integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Zoom Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Zoom from the drop-down list.
d. Select Continue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of the integration profile. For example, Zoom Integration

Client Id Client ID for the OAuth 2.0 application created in the SaaS admin account in step
5.
Redirect This value is automatically populated.
url
Client
secret

Password related with the client ID created in the SaaS admin account in step 5.

Profile
type

Type of integration profile. This value is automatically set to Zoom
Subscription.

Analyze
user
activity
from

You can choose to start analyzing data from the current date or from up to 30 days
in the past. Choosing a date in the past enables you to detect stale subscriptions
without waiting in real time because you can see subscriptions that haven't been
used recently. Because choosing a date in the past increases the amount of data
that is analyzed, it could take several hours for you to be able to view the results.

3. In the Process configuration section, Review the required user roles or API permissions
specified in the Vendor configuration field for each process to minimize security risks and
optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, the activity
scheduled job SAM - Refresh <displayname> Events isn't created.
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit.
Your ServiceNow instance creates a draft integration profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
5. On the integration profile, select the Get OAuth Token related link and follow the steps to get
an OAuth token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
6. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.

Note: If you clear the Download Activity check box after the integration profile is
validated and scheduled jobs are created, you must revalidate the connections because
the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Events job gets deleted.

Result

You can view events performed by individual users up to one year prior to the current date. For
more information, see Review a software reclamation rule. Software Asset Management pulls
the events from the time that you start downloading user subscriptions irrespective of the profile
creation date.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.

Integrate with SSO providers
Integrate with a Single Sign-On (SSO) provider to view software usage for all connected SSO
applications.
Download a list of all your applications, users, and groups. Track user login data for all connected
applications and reclaim unused licenses. Leverage usage data to forecast future licensing
needs and cut back on unused licenses at renewal.
Integrating with Microsoft Entra ID
You can integrate your ServiceNow instance with Microsoft Entra ID to view software usage for all
connected SSO applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

• Download users

Required user role in the
Microsoft Entra ID application

Application developer

Authentication scopes

• User.Read.All

• Download groups

• GroupMember.Read.All

• Download group
memberships

• Application.Read.All

Download applications

Application developer

• User.Read.All
• GroupMember.Read.All
• Application.Read.All

• Connect applications
• Update connected
applications

Reclaim subscriptions

• Global reader/Reports
reader/ Security/
Administrator/Security
operator/Security reader

• AuditLog.Read.All

• Application developer

• Application.Read.All

User Administrator

User.ReadWrite.All

• User.Read.All
• GroupMember.Read.All

Create a Microsoft Entra ID application
Create an app in the Microsoft Entra ID portal to integrate with the ServiceNow AI Platform.

Before you begin

Microsoft Entra ID Role required: Refer to the Minimal users permission table.

Procedure
1. From the Azure portal, access Microsoft Entra ID.
2. Create a Microsoft Entra ID application.
See Create a Microsoft Entra ID application
configuring an application.

for detailed instructions on registering and

a. In the Redirect URI field, enter https://<instance-name>.service-now.com/
oauth_redirect.do, where <instance-name> is the name of your ServiceNow
instance.
b. Record the application (client) ID and directory (tenant) ID to register the app as a third-party
OAuth provider on your ServiceNow instance.
c. Create a client secret and save the correct value (not the Client secret ID) to register the app
as a third-party OAuth provider on your ServiceNow instance.
d. Add permissions to access the Microsoft Graph API.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
Permission

Type

AuditLog.Read.All

Delegated or Application

User.Read.All

Delegated or Application

User.ReadWrite.All

Delegated or Application

GroupMember.Read.All

Delegated or Application

Application.Read.All

Delegated or Application

For more information, see Add permissions to access web APIs

.

e. Grant admin consent to your application.
For more information, see Understanding API permissions and admin consent UI

.

Create a Microsoft Entra ID integration profile
Create a Microsoft Entra ID integration profile in your ServiceNow instance.

Before you begin

To create a Microsoft Entra ID integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Microsoft Entra ID Spoke check box for this integration
while installing optional features on the Application Manager
page. For more information
about choosing the required SaaS applications, see Request SaaS License Management.

About this task

Note: Starting with version 7.0.0 of Software Asset Management - SaaS License
Management and version 3.1.0 of the Microsoft Entra ID spoke, your ServiceNow instance
creates a separate Entra ID connection for each Microsoft Entra ID integration profile that
you create. Each connection runs independently of each other, enabling your instance to
support multiple independent Microsoft Entra ID integration profiles.

If you’re using Software Asset Workspace, the option to create the Microsoft Entra ID integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > SSO Integration Profiles.
Core UI

b. Select New.
c. Select Microsoft Entra ID Integration Pro­
file.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > SSO integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
Interface

Action

c. Select Microsoft Entra ID Integration Pro­
file from the drop-down list.
d. Select Continue.
2. In the Display name field, enter a name for the integration profile.
The remaining fields are automatically populated when you submit the form.

Note: The SSO integration is created using a directory integration. The directory
integration pulls SSO applications, users, and group data that are associated with your
SSO integrations. For more information, see Viewing SSO subscription information.
If you already have a Microsoft Entra ID directory integration, the SSO integration uses
your existing directory integration. Otherwise, a Microsoft Entra ID directory integration is
automatically created.
3. In the Process configuration section, view the required user roles or API permissions to
minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download applications, users, and groups check box is selected by default and you
can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, the last activity for
connected applications isn't pulled.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit.
The Connection & Credential field appears.
5. Select the Create New Connection & Credential related link.

Note: If you have installed Software Asset Workspace, open the Connection and

credential record and select the Create New Connection & Credential related link.
6. On the form, fill in the fields.
Create Connection and Credential form
Field

Value

Permission The type of permission for the integration profile to access data correctly and
type
securely.
Values include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
Field

Value

◦ Application Permissions: Enable the application to access any data without a
signed-in user.
◦ Delegated Permissions: Enable the application to act in place of a signed-in
user.
Auth URL

https://login.microsoftonline.com/<directory-id>/
oauth2/v2.0/authorize, where<directory-id> is the directory
(tenant) ID from the Azure portal.

Token URL https://login.microsoftonline.com/<directory-id>/
oauth2/v2.0/token, where<directory-id> is the directory (tenant) ID
from the Azure portal.
Revoke
token URL

https://login.microsoftonline.com/<directory-id>/
oauth2/v2.0/revoke, where<directory-id> is the directory (tenant)
ID from the Azure portal.

OAuth
Client ID

Application (client) ID for the application you created in the Azure portal.

OAuth
Client
Secret

Client secret for the application you created in the Azure portal.

OAuth
Redirect
URL

https://<instance-name>.service-now.com/
oauth_redirect.do, where <instance-name> is the name of your
ServiceNow instance. This value is automatically populated.

7. Select Create and Get OAuth Token.
You're redirected to the Azure portal. For the role required to perform this step, refer to the
Minimal users permission table.
8. In the pop-up window, sign in to your account with Microsoft Entra ID admin credentials.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.
If you clear the Download Activity check box after the integration profile is published, you
must revalidate the connections because the following events occur:
◦ The Validate connection button shows up on the form.
◦ The last activity for users of the connected applications isn't pulled anymore.
Scheduled jobs and directory jobs download a list of all your applications, users, and
groups. For more information, see Viewing SSO subscription information. View the status
of your jobs in the Scheduled Job Results and Directory Job Results related lists of the
integration profile. Software models are automatically created for applications with an
External Catalog ID that matches an Identifier in the Subscription Product Definitions
[samp_sw_subscription_product_definition] table.

Result

After you publish the integration profile and connect applications to the profile, you can
view events performed by individual users up to 60 days prior to the current date. For more
information, see Review a software reclamation rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
Connect SSO apps
Connect a Single Sign-On (SSO) app to view all users and groups with access to the app. Track
user login data and reclaim unused licenses.

Before you begin

Role required: sam_integrator or admin

About this task

Note: For Microsoft Entra ID, the Assignment required toggle button on the application
configuration page controls the access of the application by users.
• If the Assignment required toggle button is set to Yes, you must assign this application to
the Microsoft Entra ID users and related applications and services. After you assign the
application, Microsoft Entra ID users, associated applications, and services can access it.
• If the Assignment required toggle button is set to No, all users can log in to the
application. The associated applications and services can also obtain an access token to
this service.
SaaS License Management offers direct integrations with select applications. Direct integrations
provide the most robust usage data. For a list of available direct integrations, see Integrate with
SaaS applications. If you have a direct integration for an app, connecting the same app in an
SSO integration creates duplicate subscription records in your ServiceNow instance. If you
connect an SSO app and later decide to create a direct integration for that app, disconnect the
app before creating a direct integration.

Note: If you’re using Software Asset Workspace, the option to navigate to the SSO
application in the Core UI is inactive.

Procedure
1. Navigate to the application.
Interface

Action

Core UI

Navigate to All > Software Asset > SaaS Li­
cense > SSO Applications.

Software Asset Workspace

Navigate to License operations > User Sub­
scriptions > SSO integration profiles.

2. Select the application that you want to connect.
For Software Asset Workspace, select the SSO Applications tab.
3. If the Software model field is empty, add a software model for the app.
An app must have a software model before you can connect it. Software models are
automatically created for apps with an External Catalog ID that matches an Identifier in the
Subscription Product Definitions [samp_sw_subscription_product_definition] table. For all
other apps, you can create a software model manually. For more information, see Create
software models in Software Asset Management classic.
4. Optional: Select the Enable group based software model check box for mapping an SSO
group with a specific software model for the application.
(Optional) For example, if an application has multiple license models that are linked to specific
groups, then you can map a group to a software model to optimize license usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
Important: If you select this option, you must create a mapping for the SSO group
before connecting the application. After the mapping is complete, the SSO subscriptions
get automatically created or updated according to the mapped software model. For more
information, see Create an SSO group software model mapping.
5. Select a date for the Analyze last activity from field.
You can choose to start analyzing login data for individual users and applications from the
current date or from up to 60 days in the past. The default value is 30 days. Choosing a past
date enables you to detect stale subscriptions without waiting in real time because you can
see subscriptions that haven't been used recently. Because choosing a date in the past
increases the amount of data that is analyzed, it might take you longer to be able to view the
results.
6. Select Save.
7. Select Connect.

Tip: You can also connect multiple apps simultaneously from the SSO Applications list.
In the Core UI interface, select the apps using the check box on the side of the list. At the
bottom of the list, select the Actions on selected rows drop-down menu and then select
Connect. If some apps don't have a software model, the Connect action shows that not
all apps are connected. For example, Connect (1 of 4) shows that only 1 of the four apps
you selected are connected. Add software models to connect the remaining apps.

Result

After the SSO application connects, your ServiceNow instance automatically creates users,
groups, subscriptions, and reclamation rules that are refreshed daily.
• If the Assignment required toggle button is set to Yes for an application in the Microsoft Entra
ID portal, the subscription is created only for users assigned to that specific application.
• If the Assignment required toggle button is set to No for an application in the Microsoft Entra
ID portal, the subscription is created for all Microsoft Entra ID users.

What to do next

Review all automatically generated reclamation rules to meet your specifications for reclaiming
user subscriptions. For more information, see Review a software reclamation rule.
After connecting the SSO application, view information about the SSO profile in the Software
Asset Workspace by navigating to License operations > User subscription > SSO integration
profiles. You can select an integration profile to view the following related lists:
• SSO Applications
• Directory Users
• Scheduled Jobs
• Scheduled Job Results
• Directory Jobs
• Directory Job Results
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
Create software entitlements for the automatically generated software models to track used
software against owned software. For more information on creating software entitlements in
the Software Asset Management classic application, see Create entitlements in Software Asset
Management classic. For more information on creating software entitlements in the Software
Asset Workspace, see Create entitlements in workspace. For more information on creating
software entitlements using the Software Asset Management Playbook, see Create entitlements
using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance. For more
information on running reconciliation in the Software Asset Management classic application,
see Run software reconciliation in Software Asset Management classic. For more information on
running reconciliation in the Software Asset Workspace, see Run software reconciliation in the
workspace.
Integrating with Okta
You can integrate your ServiceNow instance with Okta to view software usage for all connected
SSO applications.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Okta
application

Authentication scopes

Download users

Read-only administrator

okta.users.read

Read-only administrator

okta.groups.read

• Download groups
• Download group
memberships
Download applications

Read-only administrator

• okta.apps.read
• okta.logs.read

Connect applications

Read-only administrator

Update connected
applications

Read-only administrator

Reclaim subscriptions

Application administrator

okta.logs.read
• okta.apps.read
• okta.logs.read
okta.apps.manage

Create an Okta application
Create an Okta application that you can integrate with the ServiceNow AI Platform.

Before you begin

Okta Role required: Refer the Minimal user permissions table.
See Administrator roles and permissions
for more details on Okta admin roles and Scopes and
supported endpoints
for more details on Okta OAuth scopes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
Procedure
1. From a web browser, log in to the Okta administrator console

.

2. Create an Okta application with OAuth 2.0 functionality.
See Create an OAuth 2.0 app for Okta

for detailed instructions.

Keep the following points in mind when you’re creating your Okta application:
◦ In the Login redirect URI and Logout redirect URI fields, enter https://<instancename>.service-now.com/oauth_redirect.do, where <instance-name> is the
name of your ServiceNow instance.
◦ Copy the values in the Client ID and Client Secret fields. Save them in a secure location for
later use.
◦ Grant the following scopes to your Okta OAuth 2.0 application:
▪ okta.groups.read
▪ okta.apps.read
▪ okta.users.read
▪ okta.logs.read
▪ okta.apps.manage
◦ Select the Refresh Token check box under the Client acting on behalf of a user Grant type
on the Okta portal.
Create an Okta integration profile
Create an Okta integration profile in your ServiceNow instance.

Before you begin

To create an Okta integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Okta Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

Note: Starting with version 7.0.0 of Software Asset Management - SaaS License
Management and version 4.1.2 of the Okta spoke, your ServiceNow instance creates
a separate Okta connection for each Okta integration profile that you create. Each
connection runs independently of each other, which enables your instance to support
multiple independent Okta integration profiles.

If you’re using Software Asset Workspace, the option to create the Okta integration profile in Core
UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > SSO Integration Profiles.

Core UI

b. Select New.
c. Select Okta Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > SSO integration profiles.

Software Asset Workspace

b. Select New.
c. Select Okta from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
SSO Integration Profile form
Field

Description

Display name Name of the integration profile. For example, Okta Integration.
Status

Status of the integration profile.
◦ If you haven’t published the integration profile, this field is automatically set
to Draft.
◦ If you’ve already published the integration profile, this field is automatically
set to Published.

Directory
integration

A reference to the directory integration profile, which is used to pull the active
directory users, groups, and group memberships of an organization.
◦ If a directory integration record for Okta exists, you can select the existing
record.
◦ If a directory integration record for Okta doesn't exist, a new record is
created when you save or submit this form.

Profile type

Type of the integration profile.
This field is automatically set to Okta.

Connection
& Credential

Reference to the connection and credential alias that is used in the directory
and SSO integration.
◦ If a directory integration record exists and you select it in the directory
integration field, this field is automatically set to the connection and
credential alias of the directory integration record.
◦ If a directory integration value doesn't exist, this field is automatically
populated.

Create Okta Option for creating a direct integration profile to view Okta subscriptions after
subscriptions this integration profile is published.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
Field

Description

Default value: False
3. In the Process configuration section, view the required user roles or API permissions to
minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download applications, users, and groups check box is selected by default and you
can't clear it.
◦ The Download Activity check box is selected by default. If you clear it,the last activity for
connected applications isn't pulled.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit.
The Connection & Credential field is automatically set to
sn_okta_spoke.<okta_profile_name>_apps_users_groups_activity_and_reclaim.

Note: The automatically populated value in the Connection & credential field changes
based on the selection in the Download activity and Reclaim subscriptions check
boxes.

Automatically populated Connection & credential values based on the selection
Selection

Connection & credential value

Both Download activity and Reclaim
subscriptions are selected.

sn_okta_spoke.<okta_profile_name>_apps_users_groups_ac

Only Download activity is selected.

sn_okta_spoke.<okta_profile_name>_apps_users_groups_ac

Only Reclaim subscriptions is selected.

sn_okta_spoke.<okta_profile_name>_apps_users_groups_ac

Both Download activity and Reclaim
subscriptions aren’t selected.

sn_okta_spoke.<okta_profile_name>_apps_users_groups_ac

5. Open the Create Connection and Credential dialog box.
Interface

Action

Core UI

Select the Create New Connection & Creden­
tial related link on the SSO integration profile
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
Interface

Action

a. Selecting the preview icon ( ) next to the
Connection & Credential field
Software Asset Workspace

b. Select Open Record in the record preview.
c. On the Connection & Credential Aliases
form, select the Create New Connection &
Credential related link.

6. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection. For example, Okta Connection.

Connection
URL

URL for the connection. Enter https://<yourOktaDomain>.com, where
<yourOktaDomain> is your organization domain.

Authorization URL of the OAuth authorization endpoint. Enter https://
URL
<yourOktaDomain>.com/oauth2/v1/authorize, where
<yourOktaDomain> is your organization domain.
Token URL

URL of the OAuth endpoint that retrieves and refreshes access tokens. Enter
https://<yourOktaDomain>.com/oauth2/v1/token, where
<yourOktaDomain> is your organization domain.

Token
Revocation
URL

URL of the OAuth endpoint that revokes access tokens. Enter https://
<yourOktaDomain>.com/oauth2/v1/revoke, where
<yourOktaDomain> is your organization domain.

OAuth Client Client ID that is assigned to your Okta application.
ID
OAuth Client Client secret that is assigned to your Okta application.
Secret
OAuth
URL of the OAuth provider that users are redirected to after authentication.
Redirect URL This field is automatically set to https://<instance-name>.service-now.com/
oauth_redirect.do, where <instance-name> is the name of your
ServiceNow instance.
7. Select Create and Get OAuth Token.

Note: You must sign in using the same credentials as the user with the required role. For
the role required to perform this step, refer to the Minimal user permissions table.
8. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
9. After the connection is verified, select Publish.
10. In the Publish Confirmation dialog box, select OK.
If you clear the Download Activity check box after the integration profile is published, you
must revalidate the connections because the following events occur:
◦ The Validate connection button shows up on the form.
◦ The last activity for users of the connected applications isn't pulled anymore.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
Result

Both scheduled jobs and directory jobs download a list of all applications, users, groups,
and software subscriptions that are associated with your Okta application. View the status of
your job in the Scheduled Jobs Results and Directory Job Results tabs of your integration
profile. Software Asset Management automatically creates software models for applications
with an external catalog ID that matches an Identifier in the Subscription Product Definitions
[samp_sw_subscription_product-definition] table.

What to do next

If you’ve selected the Create Okta subscriptions check box and this integration profile is
published, a direct integration profile for Okta gets created. You can navigate to the direct
integration profile by selecting the Direct integration profile link in the information message.
After you’ve navigated to the direct integration profile, you can view Okta subscriptions by
selecting the Software Subscriptions tab. For more information, see Okta SSO direct integration
profile.

Warning:
When your OAuth token expires, your Okta integration profile displays an error message
indicating that you must get a new OAuth token. Select the link in the error message to get
the new OAuth token.
Don’t delete the OAuth 2.0 credential record that is associated with the connection record
for your Okta integration profile. If you delete the OAuth 2.0 credential record, you won’t be
able to get a new OAuth token after your current OAuth token expires.
After you publish the integration profile and connect applications to the profile, you can
view events performed by individual users up to 60 days prior to the current date. For more
information, see Review a software reclamation rule.
Okta SSO direct integration profile
Okta SSO direct integration profile helps you manage Okta user licenses by creating
subscriptions for Okta users while setting up an Okta SSO integration.
OKTA SSO Direct Integration Profile
Field

Description

Display name

Name of the integration profile.

Status

Status of the integration profile.
This field is automatically set to Published.

Profile type

Type of integration profile.
This field is automatically set to Okta
Subscription.

Download Subscription Subflow
Subflow

This field is automatically set to Okta
Download Subscriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
Connect SSO applications
Connect an SSO application to monitor all the users and groups who have access to that
application. While SSO integration provides a summary of application usage and activity, direct
integration offers detailed insights into these metrics.

Before you begin

ServiceNow Role required: sam_integrator or admin

About this task
®

ServiceNow SaaS License Management offers direct integrations with some applications.
Direct integrations provide the most comprehensive usage data. For a list of available direct
integrations, see Integrate with SaaS applications.
If you have already created a direct integration for an application, then connecting the same
application in an SSO integration creates duplicate subscription records in your ServiceNow
instance. You should only use the direct integration. If you connect an application in an SSO
integration, but you later want to create a direct integration for that application, then disconnect
the application before creating the direct integration.

Procedure
1. Navigate to All > SaaS License > SSO Applications.
2. Select the application that you want to connect.
3. If the Software model field is empty, add a software model for the application.
Before you can connect an application, it must be associated with a software model.
®
ServiceNow Software Asset Management automatically creates software models for
applications with an external catalog ID that matches an Identifier in the Subscription Product
Definitions [samp_sw_subscription_product_definition] table. For all other applications, you
can create a software model manually. For detailed instructions, see Create software models in
Software Asset Management classic.
4. Optional: Select the Enable group based software model check box for mapping an SSO
group with a specific software model for the application.
(Optional) For example, if an application has multiple license models that are linked to specific
groups, then you can map a group to a software model to optimize license usage.

Important: If you select this option, you must create a mapping for the SSO group
before connecting the application. After the mapping is complete, the SSO subscriptions
get automatically created or updated according to the mapped software model. For more
information, see Create an SSO group software model mapping.
5. Select the date that you want to analyze the last activity from in the Analyze last activity from
field.
You can start analyzing login data for individual users and applications from the current date
or from up to 60 days earlier. The default value is 30 days. If you select a date prior to the
current date, it may take longer for results to appear due to the amount of data that you want to
analyze.
After you submit a value in the Analyze last activity from field, the field becomes read only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
6. Select Connect.

Tip: To connect multiple applications simultaneously, select the check box for each
application that you want to connect in the SSO Applications list. Select the Actions on
the selected row menu and then select Connect. If any applications aren’t associated
with a software model, the name of the Connect menu item is updated to indicate that
only some of the applications are connected. For example, a Connect (1 of 4) menu item
indicates that only 1 of the four apps that you selected are connected. Add software
models to the remaining applications to proceed with the connections.

What to do next

After the SSO application connects, your ServiceNow instance automatically creates users,
groups, subscriptions, and reclamation rules that are refreshed daily. If you delete a user,
application, group, or group membership from the Okta Developer Console, the changes are
reflected on your ServiceNow instance.
Review all automatically generated reclamation rules to confirm that they meet your
specifications for reclaiming user subscriptions. For more information, see Review a software
reclamation rule.
After connecting the SSO application, view information about the SSO profile in the Software
Asset Workspace by navigating to License operations > User subscription > SSO integration
profiles. You can select an integration profile to view the following related lists.
• SSO Applications
• Directory Users
• Scheduled Jobs
• Scheduled Job Results
• Directory Jobs
• Directory Job Results
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
Create software entitlements for the automatically generated software models to track used
software against owned software. For more information on creating software entitlements in
the Software Asset Management classic application, see Create entitlements in Software Asset
Management classic. For more information on creating software entitlements in the Software
Asset Workspace, see Create entitlements in workspace. For more information on creating
software entitlements using the Software Asset Management Playbook, see Create entitlements
using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance. For more
information on running reconciliation in the Software Asset Management classic application,
see Run software reconciliation in Software Asset Management classic. For more information on
running reconciliation in the Software Asset Workspace, see Run software reconciliation in the
workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
Playbook for SaaS integrations
The SaaS playbook provides step-by-step guidance for integrating an SaaS application. It takes
you in a phased way through each stage of the integration process, from initiation to completion.
The SaaS playbook includes multiple lanes that consist of:
• A list of tasks that you must perform within a lane
• Status indicators that display the current state of each task
Once you mark a task as complete, you move to the next task. You can save a task at any time
and return to the playbook later.
Complete all the tasks in a lane to move to the next lane. As you keep completing tasks and
lanes, the status gets reflected in the left-hand panel. Once you complete all the tasks, review
the details you entered in all the lanes.
Related topics
Interact with Playbook
Create a Salesforce CRM integration
Integrate your ServiceNow instance with the Salesforce customer relationship management
(CRM) services to track your software subscriptions and to reclaim unused licenses by using the
guided walk-through playbook.

Before you begin

Role required: Salesforce admin, sam_admin
• Create the Salesforce CRM integration only in the Global scope.

About this task

Note: The Client Credentials grant type is supported in Software Asset Management SaaS License Management (sn_sam_saas_int) 16.1.0, Salesforce CRM application 2.0.2, and
Salesforce CRM Spoke 2.4.0 version onwards.

Procedure
1. From your ServiceNow instance, navigate to Software Asset Workspace > Software asset
analytics.
2. Select Create direct integration.
3. In the list of supported integrations, select Salesforce CRM.
4. Register the Salesforce application through the Salesforce admin portal.
For more information, see Register a Salesforce application.
a. Select Register a Salesforce application in the side pane.
b. Complete the tasks in the Salesforce application.
Select each check box as you complete each step.
c. Select Mark Complete.
5. Create an integration profile to track software subscriptions and optimize licensing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
a. Select Profile details in the left pane.
b. On the form, fill in the fields,
Profile Details
Field

Description

Display name

Name of the integration profile to identify
uniquely the organization for which you’re
creating the profile.

Status

Status of the integration profile. If you have
not published the integration profile, this
field is automatically set to Draft. If you have
already published the integration profile,
this field is automatically set to Published.

Profile type

Type of integration profile. This value is
automatically set to Salesforce CRM.

Download subscription subflow

The value must be set to Salesforce CRM
Download Subscriptions.

Reclaim subscription subflow

The value must be set to Salesforce CRM
Reclaim Subscription.

c. Save your data.
▪ To save your data without continuing the integration, select Save.
▪ To save your data and continue the integration, select Mark Complete.
6. Create a connection and credential in the ServiceNow Classic interface.
a. Select Connection and credential in the left pane.
b. Open the connection & credential aliases record by selecting the preview icon (
the Connection & Credential field.

) next to

c. Select Continue.
d. Select the Create New Connection & Credential link.
e. On the form, fill in the fields.
Create Connection and Credential
Field

Description

Connection information
Connection
Name

Name of the connection to identify uniquely the Salesforce organization
for which you’re creating this connection and credential.

Connection URL
(Instance URL)

URL that displays after logging in to Salesforce, which is the custom
domain URL of Salesforce.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
Field

Description

Credential information
Grant type

The grant type for your application according to your authentication
needs. Possible values are:
▪ Authorization Code
▪ Client Credentials

OAuth Client ID

Client ID (consumer key) assigned to your Salesforce application.

OAuth Client
Secret

Client secret (consumer secret) assigned to your Salesforce application.

OAuth Redirect
URL

URL of the OAuth provider that users are redirected to after
authentication.
This is generally the URL of the ServiceNow instance that you specified
while registering a Salesforce application in Step 4.

f. Select Create and Get OAuth Token.
g. In the OAuth2 authentication dialog box, log in to the same Salesforce admin account that
you used to create your Salesforce application.
If you have selected Client Credentials as the grant type, the OAuth2 dialog box doesn't
appear.
Your ServiceNow instance creates an OAuth token for Salesforce.
h. Select Mark Complete.
The integration profile uses the Salesforce CRM Download Subscriptions and Salesforce CRM
Reclaim Subscription subflows to retrieve user data from your Salesforce CRM services.
7. Optional: Create a child alias and an extra integration profile.
(Optional) The child alias uniquely identifies the connection and credentials for this additional
integration profile.
The first Salesforce CRM integration profile that you create uses the default (parent)
connection and credential alias for Salesforce. Each additional Salesforce CRM integration
profile that you create requires a unique child alias that helps differentiate the connection and
credentials between each integration profile.

Note: The application scope must be set to Salesforce Spoke.
a. Select Connect to additional Salesforce org (Optional) in the left pane.
b. Open the connection & credential aliases record by selecting the preview icon ( ) next to
the Connection & Credential field.
The display redirects to the ServiceNow Classic interface where you can configure the child
alias.
c. In the Child Aliases tab, select New.
d. Enter a name for the child alias in the Connection and Credential Aliases form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


<!-- page 820 -->
e. Select Submit.
After the form reloads, you can see the newly created child alias in the Child Aliases list.
f. Select the Create New Connection & Credential related link to create multiple connections.
Follow the same steps as for creating the parent connection.
g. Select Mark Complete after you have completed the steps and select all the check boxes in
the Playbook view.
8. Review the required fields before publishing the integration profile.
a. Select Review and Publish in the left pane.
b. Review the details of the integration profile.
c. Optional: In the Connection & Credential field, select the preview icon ( ) to locate and
select the child alias that you created in Step 7.
Selecting the child alias associates the additional integration profile with the child alias.
Your ServiceNow instance uses this alias to identify the connection and credentials for this
integration profile.
d. Review the required user roles or API permissions specified in the Vendor configuration
field for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
i. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce CRM Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
ii. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
Salesforce CRM Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't
want to reclaim subscriptions, you can clear this check box. If you clear it, the
removal candidates are created but the reclaim subscription subflow isn't triggered
or the reclamation process isn't initiated.
e. Select Save.
f. Select Validate Connection.
9. Select Publish to publish the integration profile.
10. Optional: Verify whether the status of all scheduled job results is complete.

Result

After the integration is published successfully, you’re redirected to the record page. You can
view the details of the integration profile, associated software models, triggered scheduled jobs,
scheduled job results, and unrecognized subscription identifier.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
SaaS License Connections
Creating a custom integration helps you connect the Software Asset Management application
with a SaaS application that doesn't have an existing integration in SaaS License Management.
®

®

The low-code framework uses ServiceNow Integration Hub and ServiceNow Flow Designer to
connect with a SaaS provider’s API endpoints. You can perform the following actions:
• Download a list of all users, view meaningful usage data, and optimize your SaaS spend by
reclaiming unused subscriptions.
• Manage your custom SaaS connections along with the base system SaaS connections using
Software Asset Management software models and reporting.

Custom integrations
Install Integration Hub Starter, Standard, Professional, or Enterprise to create a custom
integration. For more information about Integration Hub, see Request IntegrationHub .
There’s no charge to install Integration Hub plugins on a non-production instance. You can build
a custom integration on a non-production instance that has Integration Hub installed, then bring
it into your production environment using an update set. For more information about update sets,
see System update sets . This way, you can validate your custom integrations before putting
them in production and you're not charged for an Integration Hub subscription.

Important: You can create custom integrations for subscription-based models using
User Subscription as the license metric, and for consumption-based models using SaaS
Consumption as the license metric.
Some SaaS applications have existing Integration Hub spokes that you can use to create your
custom integration. If there's an existing spoke for the SaaS application that you're integrating
with, skip the step to create a custom spoke. If you use an existing spoke, you can use some of its
data stream actions. Find out what actions are included with the spoke before creating your own
actions. For a list of applications that have Integration Hub spokes, see IntegrationHub available
spokes .
Building a custom integration with SaaS License Connections requires you to track many
different values. Use the SaaS License Connections Worksheet
while researching the SaaS API
and building your data stream actions to make sure that you have all the information you need.
Create a custom spoke
To set up a custom integration in SaaS License Management, create a spoke to connect with a
SaaS application.

Before you begin

Role required: admin

About this task
®

• Use ServiceNow Studio to create a spoke. For more information about Studio, see
ServiceNow Studio .
• If a spoke exists for the SaaS application that you're integrating with, you can use the existing
®
spoke instead of creating one. For a list of applications that have ServiceNow Integration Hub
spokes, see IntegrationHub available spokes .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
Procedure
1. Navigate to All > System Applications > Studio.
2. Select Create Application.
3. Give your app a name that includes the name of the SaaS application that you're integrating
with and a description.
Keep the auto-filled value for the Scope field.
4. Select Create.
5. Add the following roles and then select Continue.
◦ admin
◦ sam_developer
◦ delegated_developer
6. Select the Classic format, then select Continue.
7. Select Done with tables.
8. To close the session and create your app, select X.

Tip: Refresh the page to view the spoke app that you created in the list of apps.
What to do next

As you continue building your custom integration, use the spoke to save the following items.
• Connection & Credential alias
• Data stream actions to get users and user activity
• Action to reclaim a user
If you’re publishing your custom spoke application on the ServiceNow Store, also use the spoke
to save your subflows.
Create a custom integration profile to track software subscriptions and optimize stale licenses for
any SaaS application. For more information, see Create a custom integration profile.
Create a custom integration profile
Create a custom integration profile to track software subscriptions and optimize stale licenses for
any SaaS application.

Before you begin

Before you create a custom integration profile in your ServiceNow instance, set up a method
of authentication in the SaaS application admin or developer account. For example, create an
OAuth application or an API token.
• If you create an OAuth application, confirm that you enable the appropriate scopes. The app
needs scopes to read users, read user activity, and to modify or delete users. These scopes
enable the integration to get a list of users, get user activity, and reclaim unused subscriptions.
Record the Client ID and Client secret for the OAuth application. You input these values in your
ServiceNow instance.
• If you create an API token, record the value for the API token. You input this value in your
ServiceNow instance.
Role required: sam_integrator or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
About this task

If you’re using Software Asset Workspace, the option to create the custom integration profile in
the Core UI is inactive.

Procedure
1. Navigate to the custom integration profile.
Interface

Action

Core UI

a. Navigate to All > SaaS License > Adminis­
tration > Create New Profile.
b. Select Custom Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles > .

Software Asset Workspace

b. Select New.
c. Select Custom from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Custom Integration Profile form
Field

Value

Display
name

Name of the custom integration profile.
For example, the name of the SaaS application that you're integrating with.

Connection
a. Select the lookup icon (
&
Credential b. Select New.

).

c. On the Connection and Credential Aliases form, fill in the fields:
▪ Name: Name of your choice. For example, app_alias, where app is the
name of the SaaS application that you're integrating with.
▪ Application: Spoke for connecting with the SaaS application. This spoke
can be an existing Integration Hub spoke or a new spoke that you created.
You can change the application in the Developer section of the System
Settings

.

▪ Type: Connection and Credential.
▪ Connection Type: HTTP.
▪ Support Multiple Active Connections: Not selected.
▪ Default Retry Policy: Default HTTP Retry Policy.
▪ Configuration Template: If you're using the OAuth authorization code grant
type, OAuth Authorization Code. If you're using an API token, Basic Auth
with API Key. If you're using another authentication method, create a
configuration template. For more information, see Create a configuration
template
and Configure a template for OAuth JWT Bearer grant type .
d. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
Field

Value

Status

Status of the integration profile. The options are Draft and Published. This
value is automatically populated.

Profile type Custom Integration. This value is automatically populated.
3. Select Save.
4. Open the Connection & Credential alias record by selecting the preview icon (
selecting Open Record.

) and then

5. Select the Create New Connection & Credential related link.
◦ If you're using the OAuth Authorization Code configuration template, fill in the fields.
Create Connection and Credential form
Field

Value

Connection
URL

Base URL for the API.

Authorization
URL

OAuth authorization code endpoint.

Token URL

OAuth endpoint to retrieve and refresh access tokens.

Token
Revocation
URL

OAuth endpoint to revoke access tokens.

OAuth
Redirect URL

https://instance.service-now.com/oauth_redirect.do,
where instance is the name of your ServiceNow instance.

Refresh Token
Lifespan

8640000.

OAuth Client
ID

Client ID that you created in the SaaS application admin or developer
account.

OAuth Client
Secret

Client secret that you created in the SaaS application admin or developer
account.

OAuth Scopes Scopes that you enabled for your OAuth application in the SaaS
application admin or developer account.
◦ If you're using the Basic Auth with API Key configuration template, fill in the fields.
Create Connection and Credential form
Field

Value

Connection URL for your SaaS account.
URL
User Name

Email address of the admin user that created the API token in the SaaS
application admin or developer account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
Field

Value

API Key

API token created in the SaaS application admin or developer account.

◦ If you're using a different method of authentication, the available fields are determined by
the configuration template that you created.
6. Select Create and grant access for the integration.

Tip: Log in to your SaaS application admin account in a new browser tab to verify that
the integration connects to the correct account.
◦ If the connection is successful, a connection record is created in the Connections related list
on the Connection & Credential Alias record.
◦ If the connection fails, you must delete the connection record, credential record, and
application registry record that were created during the attempted connection.
a. To delete the connection record, navigate to Connections & Credentials > Connections
and delete the record for the SaaS application.
b. To delete the credential record, navigate to Connections & Credentials > Credentials and
delete the record for the SaaS application.
c. To delete the application registry record, navigate to System OAuth > Application
Registry and delete the record for the SaaS application.
d. Return to the Connection & Credential Alias record for the SaaS application and select the
Create New Connection & Credential related link to reattempt the connection.

What to do next

Create a data stream action to get users and view SaaS related analytics on SaaS overview
dashboard.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
Create a data stream action to get users
Create a data stream action to get a list of user subscriptions from the SaaS application.

Before you begin

®

If you're using an existing ServiceNow Integration Hub spoke, find out if it has a data stream
action to get a list of users that you can use instead of creating one. For more information about
data stream actions, see Data Stream actions .
Role required: flow_designer or admin

Procedure
1. Navigate to All > Flow Designer > Designer.
2. Select New.
3. Select Data Stream.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


<!-- page 826 -->
Action Properties form
Field

Value

Name

Name of your choice.
For example, Get Users.

Accessible
From

All application scopes.

Category

Leave this field empty.

Protection

None.

Application

Spoke app to integrate with the SaaS application.
This spoke app can be an existing Integration Hub spoke or a new spoke
that you created.

In-Flow
Annotation

Leave this field empty.

Description

Description of your choice.

5. Select Submit.
6. If the API that you're working with requires user authentication for requests, select Inputs in
the Action Outline and add inputs for authentication.
Examples of common user authentication inputs are admin user id and site name.
See the documentation for your chosen API to learn about the requirements for user
authentication in your specific case. If the API requires an access token, a Credential
Value variable is automatically created later. You don't need to add an access token as an
input.
When you use your completed data stream action in a subflow, you define what values to pass
as these inputs.
7. Select Request in the Action Outline.
8. On the form, fill in the fields.
Request form
Field

Value

How will you get data

Choose either REST Step or SOAP step.
Your choice depends on the API for the SaaS application that
you're integrating with.

Enable pagination

Selected.

Run a script before each
request

Not selected.

9. Select Pagination Setup step in the Action Outline.
10. Define pagination variables based on the query parameters used by the SaaS API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
If you're using offset-based pagination, use the Limit/Offset pagination template to preload the
pagination configuration.

Note: The value of the reserved getNextPage variable determines whether to

request another page of results. As long as the getNextPage variable is true, the
action continues to send requests for the next page.
11. Write a Pagination Variables script to update the pagination variables.
The script runs on each request. If you're using a pagination template, adjust the preloaded
script as needed.
The following image shows an example of the pagination setup step completion. This example
is from the Get Users data stream action used in the Webex Download Subscriptions subflow.

Note: Pagination variables only support the string data type. To perform math
operations, you must convert the value to an integer, perform any required operations,
then convert it back to a string.
12. Select SOAP step or REST step in the Action Outline to receive data.
◦ If you selected SOAP step, fill in the details.
SOAP step form
Field

Value

Connection Details
Connection Use Connection Alias.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
Field

Value

Connection Connection alias that you created when you created the integration profile.
Alias
If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Endpoint

This value is automatically populated when you select the connection alias.
This value is set to the Connection URL from the HTTPs Connection record
linked to the alias.

Request Details
Build
Envelope

Manually.

SOAP
Action

API request to get a list of all users. See the documentation for your chosen
API to select the appropriate request.

SOAP
Envelope

XML request message to get a list of all users. See the documentation for
your chosen API to learn how to write an XML request message. In general,
the header should have your input variables for user authentication as
well as the Credential Value variable as the access token. The body
should include the request to get a list of all users and your variables from the
pagination setup step.

Note: For an example of a SOAP envelope, see the Get Users data
stream action used in the Webex Download Subscriptions subflow.

◦ If you selected REST step, fill in the details.
REST step form
Field

Value

Connection Details
Connection Use Connection Alias.
Connection Connection alias that you created when you created the integration profile.
Alias
If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Base URL

This value is automatically populated when you select the connection alias.
It's set to the Connection URL from the HTTP(s) Connection record linked to
the alias.

Request Details
Build
Request

Manually.

Resource
Path

Path to the resource. This value gets appended to the Base URL. See the
documentation for the API that you're working with to learn how to construct
the resource path.

HTTP
Method

GET.

Query
Add parameters for pagination. Set the values as the variables that you
Parameters created in the pagination setup step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
The following image shows a completed example of the REST step. This example is from the
Get Jira Users data stream action used in the Jira Download Subscriptions subflow.

13. Select Parsing in the Action Outline.
14. On the form, fill in the fields.
Parsing form
Field

Value

How will you identify each record

JSON/XML Splitter

How will you parse each item into an object

Script Parser

15. Select Splitter step in the Action Outline.
16. On the form, fill in the fields.
Splitter step
Field

Value

Source Select XML or JSON, depending on the format returned by the API response.
Format
Item
Path

Absolute path to a user element in the response message. See the documentation
for the API that you're working with for information about the format of the response
message.
◦ Example XML item path: /message/body/user
◦ Example JSON item path: $.data.user

17. Select Outputs in the Action Outline.
18. Select Create Output and edit the variable as shown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


