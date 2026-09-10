# Zurich Customer Service Management — Major issue management overview

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1359–1368 of 2452

Sections: Major issue management overview (p1359)

---

<!-- page 1359 -->
As a case gets blocked and unblocked by a customer or an internal user, the metric definition
tracks the duration of the case with each of these actors.
The metrics include:
• Case number
• Metric definition
• Value
◦ Needs attention
◦ Blocked by customer
◦ Blocked internally and by customer
• Start and end times
• Duration
To access the Case Actor Duration metric definition, navigate to All > Metrics > Definitions and
select the definition from the list. For more information about metric definitions, see the following
topics:
• Metrics
• Define a metric

Major issue management overview
Major issue management enables customer communication for issues that impact a wider
audience. Use this feature to proactively identify impacted customers, provide information to
these customers, and manage the resolution process.
This feature enables you to efficiently manage the communication and resolution process for
issues that impact multiple customers. With major issue management, you can identify impacted
customers who have not yet reported an issue and proactively create cases for these customers.
Major issue management introduces the concept of a major case which contains the details
about a particular issue. Child cases can easily be created for a major case, with one child
case created for each customer affected by the issue. These child cases contain the customerspecific information.
Identify affected customers by creating a recipients list of accounts or consumers and attaching
it to the major case. Create this list using the Targeted Communications application. Build
a recipients list by identifying dynamic conditions, running a script, or importing customer
information into a template. Once attached to a major case, use the recipients list to create a
child case for each customer included in the list.
A major case is created in one of two ways:
• A customer service manager can create a major case.
• A customer service manager or major issue manager can promote a major case candidate.
Major case candidates are created either by promoting an existing customer service case (for
customer reported issues) or by creating a candidate case directly (for non-customer reported
issues). Candidate cases require approval before being promoted to major cases.
Major issue management also provides properties that enable automatic synchronization from a
major case to the associated child cases. Use these properties to enable synchronization and to
identify the synchronized fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


<!-- page 1360 -->
Major Issue Management menu can be used in the ServiceNow AI Platform interface and in the
Agent Workspace interface.

Identifying issues and creating major cases
Customer service agents, managers, and major issue managers can use the following process to
identify potential issues, create major cases, and identify impacted customers.
1. Create a major case candidate or flag an existing customer service case as a major case
candidate.
2. Review the major case candidate and either approve it as a major case or reject it.
◦ If approved, the candidate case becomes a child case of the major case.
◦ If rejected, the candidate case returns to a normal case.
3. Associate other cases reported for the same issue as child cases of the major case.
4. Identify other customers impacted by the issue by creating a recipients list and attaching it to
the major case.
5. Create child cases for the customers included in the recipients list.
6. Manage the issue to resolution using the major case.
◦ Update the major case as needed, which automatically updates the child cases.
◦ Close the major case when the issue is resolved. Closing the major case automatically
closes all the child cases.

Major, candidate, and child cases
Major issue management uses major case candidates to identify potential issues that impact
multiple customers. With approval, candidate cases are promoted to major cases, which you can
use to manage issues to resolution. Child cases are created for customers impacted by an issue
and are associated with the corresponding major case.

Major cases
A major case contains information about a specific issue that impacts multiple customers. It is
not associated with any accounts, contacts, or consumers. This customer-specific information
resides in the child cases associated with the major case.
The recipients list associated with the major case identifies customers impacted by the issue.
Select a list in the Affected Customers field in the Major Case Information form section of the
Major Case form. After adding the list, you can automatically create child cases for all customers
on the list. These cases are added to the Child Cases related list on the Major Case form.
With synchronization enabled, updates to the parent major case are automatically synchronized
to the associated child cases. When the major case is closed, the associated child cases in the
following states are also closed: New, Open, Awaiting Customer Info.
To identify major cases in the list view, check the value in the Major case state field.
• Major cases have a state of Accepted.
• Major case candidates have a state of either Proposed or Rejected.
• Regular cases have a blank value.
In the form view, major cases and major case candidates display the Major Case Information
form section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
Note: Related links on a major case form do not synchronize to associated child cases.
Major case candidates
A customer service agent uses a major case candidate, or candidate case, to flag an issue
that could be a wider issue impacting multiple customers. An agent can create a major case
candidate in the following ways:
• By promoting an existing customer service case with a reported issue to a major case
candidate.
• By creating a new major case candidate.
A major case candidate requires the approval of the customer service manager or major case
manager before being promoted to a major case.
• If a major case candidate was promoted from an existing case, a new major case is created
and the candidate case becomes a child case of that major case.
• If a new major case candidate was created directly, that same case becomes the major case.
If a major case candidate is rejected, it reverts to a regular case.

Child cases
Child cases are associated with a major case. One child case is created for each account
(B2B) or consumer (B2C) impacted by the major case issue. Child cases are created from the
recipients list on the major case and can also be added manually by the major issue manager.
When child cases are created, the short description from the major case is copied to each of the
child cases. Duplicate child cases are not created. If a child case already exists for an account or
consumer, it is not created again.
As child cases are created, you can enter text in a pop-up window that is added to the Additional
comments field on the child case form. These comments are added only to the newly created
child cases. The major case and any existing associated child cases are not updated.
The primary contact for an account is the contact on the child case and is automatically added to
the child case watchlist.

Synchronization between major cases and associated child cases
The system administrator can set system properties that enable or disable the synchronization
between the major case and associated child cases and also define the fields to synchronize.
Synchronization occurs from the major case to the child cases. If the state of a child case is
Resolved, Closed, or Canceled, the synchronization does not take place.
A major case and the associated child cases maintain synchronization on the fields identified
by the sn_customerservice.case_fields_to_sync property. This property specifies the list of
fields to synchronize from the major case to the associated child cases. By default, these fields
include:
• Priority
• State
• Comments
• Work notes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
• Close notes
• Resolution code
If the State field is synchronized from the major case to the child cases, the Close notes and
Resolution code fields must also be synchronized.

Note: Child cases can be manually added to a major case at any time. There is no
retroactive synchronization for newly added child cases.
When synchronization is enabled, saving changes to a major case results in a pop-up window.
Verify the update by clicking OK.

Note: In the base system, parent-child case synchronization is available only for the Case
table (sn_customerservice_case). This feature must be configured for tables that extend the
Case table.

Recipients lists
Use recipients lists that contain account or consumer information to create the child cases for a
major case.
Major issue managers and customer service managers can select the desired list in the Affected
Customers field on the Major Case form. Selecting Create Child Cases then creates a child case
for each account or consumer in the recipients list.
Managers can change the recipients list before child cases are created. After child cases are
created, the Affected Customers field becomes read only.

Creating recipients lists
Recipients lists are created using the Targeted Communications application. With this
application, managers can select the type of list to create and the method used to create the list:
by uploading files, selecting dynamic conditions, or using scripts.
The Targeted Communications application creates several types of recipients lists, including
accounts, contacts, consumers, and internal users. The recipients list for a major case must be
of type accounts or consumers. Recipients lists are limited to one specific type and can’t contain
mixed types, for example accounts and consumers.

Note: The Major Issue Management plugin is dependent on the Targeted
Communications plugin. If Targeted Communications is active, recipients lists can be
created for internal users. If Targeted Communications and Customer Service Management
are both active, recipients lists can also be created for accounts, contacts, and consumers.

Manually editing a recipients list
Major issue managers and customer service managers can manually add or remove accounts
or consumers from a recipients list by navigating to the Recipients List form, selecting Edit in the
Recipients related list, and then using the arrows to add or remove records.
The Recipients related list includes the Dynamically Added column which displays either True
or False, depending on how a record was added:
• True for records that are dynamically generated, either by using the condition builder or by
running a script.
• False for records that are added manually, either by using the Edit button on the Recipients
related list or by file upload.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
The Active Communication column is set to True by default for both dynamically and manually
added records. This field indicates whether the recipient requires active communication.

Refreshing a recipients list
Refresh a recipients list by selecting Refresh Recipient List on the Recipients List form. For
major issue management, the following guidelines apply to refreshing a recipients list:
• Refreshing a recipients list doesn’t impact manually created records.
• If you remove a manually created record from a recipients list, it doesn’t reappear when the list
is refreshed unless it meets the dynamic conditions used to filter the list.
• If you remove a dynamically generated record from a recipients list, it may reappear when the
list is refreshed if it meets the dynamic conditions used to filter the list.
• If the Active Communication field is set to false for a record, this setting doesn’t change when
a recipients list is refreshed.
• If created using the Upload File method, you don’t need to refresh the recipients list.
Related topics
Create a recipients list

Major Case form view
Major issue management provides the Major Case form view, which includes the Major Case
Information form section and the Child Cases related list.
The Major Case form view does not display account-related information because a major case
is not linked to a specific account, contact, or consumer. This information is stored in the child
cases associated with a major case.

Major Case Information form section
Major cases and major case candidates include the Major Case Information form section which
includes the following fields.
Major Case Information form
Field

Description

Major case state

A major case can be in one of these states:
• Proposed: the initial state when a candidate
case is created or proposed by an agent or
manager.
• Accepted: the Initial state when a major
case is created by a manager or when a
candidate case is promoted by a manager.
• Rejected: the candidate case is rejected by
a manager.
• Cancelled: the case is cancelled.

Business impact

The business impact of the issue identified in
the major case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
Major Case Information form (continued)
Field

Description

Probable cause

The probable cause of the issue identified in
the major case.

Affected Customers

The recipients list selected for the major case.
Child cases are created for the accounts or
consumers included in the recipients list. This
field is only visible when the major case state
is Accepted.

Customer service agents can update the Business impact and Probable cause fields as well as
add work notes. Major issue managers can update the Business Impact and Probable Cause
fields and attach a recipients list. The Affected Customers field is only visible when the major
case state is Accepted.
The Work notes field on the major case form is updated when a major case is proposed or a
candidate case is created manually. The Work notes field on associated child cases is updated
when a major case is accepted.
When a major issue manager rejects a candidate case, the Major Case State field is set to
Rejected and the Work notes field is updated with the case state. The candidate case reverts to
a regular case.

Child Cases related list
Major issue management adds the Child Cases related list to the Customer Service Case form.
All child cases associated with a major case are added to this list. Child cases are created
automatically from the recipients list and can also be added or removed manually.

Propose a case as a major case candidate
A customer service agent role can propose an existing customer service case as a major case
candidate.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

Cases in these states can be proposed as a major case candidate:
• New
• Open
• Awaiting Info
Cases that are Resolved, Closed, or Canceled can’t be proposed as a major case candidate.
When proposing a case as a major case candidate, agents can specify the reason or justification
for the case in the Propose Major Case pop-up window. Information provided in the Work notes
and Business Impact fields are added to the Case form.
The major issue manager role receives a notification email when a case is proposed as a major
case candidate. These users can select the link in the notification email to open the major case
candidate in the platform interface.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
Note: You can also propose a case as a major case on Agent Workspace.
Procedure
1. Navigate to the desired customer service case.
2. Select Propose Major Case in the Additional Actions menu on the Case form.
3. In the Propose Major Case pop-up window, enter a reason for the proposal in the Work notes
field.
If desired, enter the business impact of the selected case in the Business Impact field.
This information is added in the Case form in the Work notes field and the Business Impact
field in the Major Case Information section.
4. Select Propose.
An entry is added to the Work notes on the Case form that the case was proposed as a major
case candidate. The information entered in the Propose Major Case pop-up window is also
added to the Case form.

Create a major case candidate
Users with the customer service agent role can create a major case candidate.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

Users with the major issue manager role receive a notification email when a major case
candidate is created. These users can click the link in the notification email to open the major
case candidate in the platform interface.
Note: All major case candidates are automatically created as proactive cases as they
are created internally and on behalf of the customer. To leverage the full capabilities of
Proactive Customer Service Operations, install the Proactive Operations Management
(com.snc.proactive_cs_ops) plugin.
You can also create a major case candidate from Agent Workspace.

Procedure
1. Navigate to All > Major Issue Management > Create Major Case Candidate.
2. Enter a description in the Short description field.
3. In the Major Case Information form section, enter the relevant information in the Business
impact and Probable cause fields.
4. Click Submit.

Approve or reject a major case candidate
Users with the major issue manager role can approve or reject a major case candidate.

Before you begin

Role required: sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

You can also approve or reject a major case candidate from Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
Procedure
1. Navigate to All > Major Issue Management > Candidates.
2. Select the desired candidate case.
3. Select one of the following from the Case form context menu.
Option

Description

Approves the current major case candidate
as a major case.
Upon approval:
Approve Major Case Candidate

◦ If the candidate case was proposed from
an existing case, a major case is created
and the candidate case becomes a child
case of that major case.
◦ If the candidate case was created direct­
ly, the candidate case becomes the major
case.
Rejects the current major case candidate as a
major case.

Reject Major Case Candidate

If rejected, provide a reason for rejecting the
case in the Rejection Reason pop-up window.
This information is added to the Work notes
on the Case form.

4. Click Update.

Create a major case
Users with the customer service manager role can create a major case.

Before you begin

Role required: sn_customerservice_manager

Procedure
1. Navigate to All > Major Issue Management > Create Major Case.
2. Fill in the fields on the Case form.
3. In the Major Case Information form section, fill in the Business impact and Probable case
fields.
4. Click Submit.

What to do next

You can view all cases by navigating to Customer Service > Cases > Proactive.

Create child cases for a major case
Users with the customer service manager role can create a child case for each of the customers
included in the major case recipients list.

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager, sn_customerservice_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
About this task

The Create Child Cases button on the Major Case form creates a child case for each account
or consumer in the recipients list selected in the Affected Customers field. If a child case for an
account or consumer exists, the system doesn’t create a duplicate child case.

Note: Use caution when selecting the recipients list for a major case. Selecting the wrong
recipients list can have a serious impact by creating a large number of cases for incorrect
accounts or consumers. Verify that you have selected the correct recipients list before
selecting Create Child Cases.
You can also create child cases for a major case from Agent Workspace.
Once child cases have been created, you can’t change the recipients list. Any additional
recipients must be added manually. After manually adding recipients to the list, select Create
Child Cases again to create child cases for these new recipients.
Creating child cases copies information from the major case to each of the child
cases. The field values that are copied to the child cases are identified by the
sn_customerservice.case_fields_to_sync system property.

Procedure
1. Open the desired major case.
2. In the Major Issue Management form section, select a recipients list in the Affected
Customers field.
3. Select Update.
4. Select Create Child Cases.
5. In the Create Child Cases pop-up window, enter information about the major case.
This information is added as additional comments to each of the newly created child cases. If
child cases for this major case exist, these child cases aren’t updated.
6. Select Continue.
The child cases are created and added to the Child Cases related list.
Related topics
Recipients lists

Add an existing case as a child to a major case
A customer service manager can add an existing customer service case as a child to a major
case.

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager, sn_customerservice_manager

About this task

Identify and narrow a list of cases, then select the desired case or cases to add to the major
case.
• Filter and narrow down the child case list.
• Select one or more cases and add as child to the major case.
• Add work notes/activity log when a parent is added or removed
Messages on the pop-up window:
You can also create child cases for a major case from Agent Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
Procedure
1. Open the desired major case.
2. In the Child Cases related list, select Add to display the Added Child Cases pop-up window.
The Add Child Cases pop-up window displays a list of customer service cases that aren’t
major cases.
3. Optional: Use the filters to narrow the list of cases displayed in the window.
4. Select the cases to add to the major case by enabling the check box for each case.
5. Select Submit.
The system evaluates the selected cases and adds none, some, or all cases to the Child
Cases related list. A message on the major case form informs you of the results by displaying
one of the following:
◦ No selected cases were added as child cases.
◦ (x) of (y) selected cases were added as child cases.
◦ All (y) selected cases were added as child cases.
A work note is added to the Activities field for each child case added to the major case.
Related topics
Recipients lists

Components installed with Major Issue Management
Several types of components are installed with the major issue management feature.
Roles installed with Major Issue Management
Major Issue Management provides these roles.

Role

Description

Major issue manager

Users with this role can:

[sn_majorissue_mgt.major_issue_manager]

• Create major cases
• Approve or reject major case
candidates
• Add or remove child cases
from major cases

Contains Roles

• sn_customerservice_agent

• sn_customerservice_consumer_

• sn_publications_recipients_use

• sn_publications_recipients_list_

• Add or remove impacted
accounts (B2B) or
consumers (B2C)
The customer
service manager role
[sn_customerservice_manager]
contains the major issue
manager role.
Properties installed with Major Issue Management
Major Issue Management provides these properties.
To access these properties, navigate to Customer Service > Administration > Properties.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


