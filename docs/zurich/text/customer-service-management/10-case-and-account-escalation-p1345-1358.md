# Zurich Customer Service Management — Case and account escalation

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1345–1358 of 2452

Sections: Case and account escalation (p1345); Administering case action status (p1354)

---

<!-- page 1345 -->
• Front-line case page
• CSM default record page
In addition to these pages, the action is also available on records from the following tables:
• Account
• Asset
• Contact
• Incident
• Product model
• Work order task

Expiring special handling notes
The Deactivate Special Handling Notes scheduled job, which runs daily at midnight, checks the
dates in the Effective on and Expires on fields for each note.
• If a special handling note has reached its Effective on date, the scheduled job sets the status
of the note to Active.
• If a special handling note has reached its Expires on date, the scheduled job sets the status of
the note to Expired.

Domain separation for Special Handling Notes
The Special Handling Notes application supports domain separation as a process-separated
table.
When inserting or updating a special handling note, the picker domain scope takes precedence
by design with the Overrides [sys_overrides] field on process-separated tables. For more
information, see Process administration .
Related topics
Configure special handling notes
Manage special handling notes

Case and account escalation
Use the escalation feature to highlight specific cases or accounts and raise awareness of
important customer issues.
Escalating a case or an account provides the following benefits:
• Increases attention about a customer issue.
• Facilitates communication about that issue.
• Provides a way to track progress toward a resolution.
Users with the escalation requester role can escalate a case or an account by selecting the
Escalate Case related link on the case or account form.

Case and account escalation differences
While the escalation process is similar for cases and accounts, there are some important
differences to note.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
• Case escalations: A customer service agent typically manages a case escalation and works
directly with the escalated case to resolve the issue.
• Account escalations: An escalation manager typically manages an account escalation, which
can include multiple associated cases, and records details in the escalation record.
For more information, see Case and account escalation differences.

Configuring case and account escalation
The following table includes an overview of case and account escalation configuration tasks.
Users with the system administrator role can perform these tasks.
Case and account escalation configuration tasks
Task

Description

Configure escalation management

Configure case and account escalation using
Customer Service Management guided setup.

Create a case or account escalation template

Escalation templates determine how an
escalation request is processed, including the
type of escalation and an optional approval
process.

Create a case or account escalation severity

Create definitions for different levels of
escalation severity and select color indicators
to highlight escalated cases and accounts in
the user interface.

Using case and account escalation
The following table includes an overview of case and account escalation user tasks.
Case and account escalation user tasks
Task

Description

Escalate a case or an account

Escalate cases or accounts, either on behalf of
customers or for internal purposes. Escalating
a case or account creates an associated
escalation record.
Role required: escalation requester

Manage an escalated case or account

Manage a case or account through the
escalation process using the escalation
record. The system identifies cases and
accounts on lists and forms with color
indicators that correspond to the escalation
severity: red (high) or orange (medium).
Role required:
• Customer service agent
• Escalation manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
Case and account escalation user tasks (continued)
Task

Description

De-escalate a case or an account

De-escalate cases or accounts when the
cause of the escalation is resolved.
Role required: de-escalation requester

Use an optional escalation approval process

Include an optional approval step for
approvers to review a request and either
approve or reject an escalation.
When using the optional approval step, the
system creates the escalation record upon
approval and associates it with the case or
account.

Case and account escalation differences
An overview of the differences between case escalations and account escalations.
• Case escalations: A customer service agent typically manages a case escalation and
performs most of the problem resolution work, which is recorded in the case record. For
case escalations, the escalation record is used primarily for status reporting purposes. The
escalation SLA is also associated with the case record rather than the escalation record
because that is where the agent provides regular updates.
• Account escalations: An account escalation manager typically manages an account
escalation because it is associated with multiple underlying cases. An account manager works
with multiple case owners to resolve the customer escalation and uses the escalation record
to consolidate the status of the associated cases and provide regular updates. Therefore, the
SLA is associated with the escalation record.
Case and account escalation differences
Feature

Case Escalation

Account Escalation

Relationships

Corresponds one-to-one to a
case.

Corresponds one-to-one
to an account. Users can
link specific cases to the
escalation record to indicate
which cases are causing the
escalation.

Templates

Uses case escalation
templates.

Uses account escalation
templates.

Note: When you
select Case Escalation
in the Type field, an
additional checkbox
field appears for Add
Case Assignment Group
Manager to Approvers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


<!-- page 1348 -->
Case and account escalation differences (continued)
Feature

Case Escalation

Account Escalation

Approval workflow

Includes an option to
automatically add the
manager of the case
assignment group to the
approver list when using the
default approval workflow.

Does not include an option
to automatically add the
manager of the case
assignment group to the
approver list because an
account escalation can be
associated with multiple
cases.

Escalation assignment

Does not include a separate
assignment. A case escalation
corresponds to an individual
case and the customer
service agent manages the
escalation.

Includes a separate
assignment. An account
escalation can have multiple
associated cases that are
assigned to different agents
so the escalation record
includes an Assigned to
field. An account escalation
is typically assigned to an
escalation manager because
account escalations are
typically more serious than
case escalations.

Watch list

Does not include an option to
automatically add an account
team to the escalation watch
list.

Includes an option to
automatically add an account
team to the escalation watch
list.

Escalation updates added to
case

Updates to the escalation
record are also added to
the Work notes field on the
corresponding case record.

Updates to the escalation
record are not added to the
account record.

SLAs

The case escalation SLAs
provided with the escalation
feature are attached to the
case.

The account escalation SLAs
provided with the escalation
feature are attached to the
account.

Case and account escalation process
The case and account escalation process follows several steps from request to completion.
1. Your users with the escalation requester role request an escalation for a case or account. As
part of the request, you can provide the following information:
◦ The reason for the request
◦ Justification for the escalation
◦ The escalation severity
◦ The escalation template
◦ The watch list for the escalation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
2. If approval is required for an escalation request, approvers from the selected approval group
review and approve or reject the escalation request. The chosen approval subflow then
updates the approval status accordingly.
3. Following approval, the agent manages the escalation as it progresses using the escalation
form. For example, the agent can add users to the watch list and update the escalation trend.

Note: Updates to the escalation form send email notifications to the current user and to
users on the watch list.
4. When the issue has been resolved, your users with the de-escalation requester role can deescalate a case or an account.

Case and account escalation components
The roles, modules, and tables installed with the case and account escalation feature.

Roles
Roles included with the case and account escalation feature.
Different roles with the case and account escalation feature
Role

Description

Escalation requester

Can request an escalation for a case or
account.

(sn_customerservice.escalation_requester)
De-escalation requester
(sn_customerservice.deescalation_requester)

Can de-escalate a case or
account. This role contains the
sn_customerservice.escalation_requester role.

Escalation modules
The case and account escalation feature adds the Escalations module to the Customer Service
menu:
• All: lists all escalation records for cases and accounts.
• Escalation Templates: lists the case and account escalation templates.
• Escalation Severity: lists the types of escalation severity.
This feature also adds a list of escalated cases to the Customer Service menu: Customer
Service > Cases > Escalated

Tables
Tables included with the case and account escalation feature:
Different tables with the case and account escalation feature
Table

Description

Escalation Templates

Stores escalation template records.

[sn_customerservice_escalation_template]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
Different tables with the case and account escalation feature (continued)
Table

Description

Escalations

Stores records created for escalated cases
and accounts.

[sn_customerservice_escalation]
Escalation Severities

Stores escalation severity definition records.

[sn_customerservice_escalation_severity]

Case and account escalation form
Customer service agents use the Escalation form to manage escalations for cases and accounts.
The Escalation form includes information about the escalation, such as the associated case or
account, and the reason and justification for the escalation. It also includes information about the
escalation as it progresses, including the trend and notes about the work being done to resolve
the issue.
An escalation record can contain one or more associated cases. When updating escalation
records, customer service agents can enter comments or work notes. For case escalations,
updates are replicated to the case activity history as work notes so they aren’t visible to the
customer.
The Escalation form has a Related Cases related list that includes the related cases for account
escalations. The user can associate specific cases using this related list to indicate which cases
are causing the escalation. The Escalation form also includes Task SLAs and Approvers related
lists.
Escalation form fields
Field

Description

Number

The number automatically assigned to the escalation request.

Source
Record

The case or account for which escalation is requested.

Note: The case or account form for the source record includes an
Escalations related list.

State

The current state of the escalation:
• Requested: An agent with the escalation requester role has requested an
escalation for the case or account.
• Escalated: The escalation request has been approved.
• Declined: The escalation request hasn’t been approved.
• Closed: The reason for the escalation has been resolved and the escalation
has been closed.

Request
Source

The source of the case escalation request:
• Customer requested
• Internally requested

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Escalation form fields (continued)
Field

Description

Reason

The reason for requesting the case escalation:
• Inactivity
• Lack of Progress
• Customer Imposed Deadline

Watch List

The watch list for this particular escalation record. For account escalations, you
can Add account team members to watch list.
Users added to the watch list for a case, account, or escalation record receive
email notification when the case or account has been escalated and when
updates are made to the escalation record.

Assignment For account escalations, the assignment group for this account.
group
Assigned to For account escalations, the customer service agent assigned to this account.
Request By The user who requested the escalation.
Approved
By

If approved, the user who approved the escalation request.

Declined By If declined, the user who declined the escalation request.
Deescalated
By

The user who de-escalated the case or account escalation.

Escalation
Type

The escalation type selected by the user who requested the escalation.

Escalation
Severity

The escalation severity associated with this escalation, which defines the
severity level for the escalation and the color used to highlight the escalated
record in the user interface.
• High Severity: Escalated records are highlighted in red.
• Medium Severity: Escalated records are highlighted in orange.

Escalation
Trend

The current state of the escalation:
• Improving
• Same
• Declining

Escalation Additional information that explains why this escalation is needed.
Justification

Administering case and account escalation
Create escalation templates and escalation severity definitions to control the escalation process
for cases and accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
Escalation templates
An escalation template determines how an escalation request is processed by defining the
following information:
• The type of escalation (case or account)
• If approval is required:
◦ If no, the escalation request is automatically approved.
◦ If yes, provide the approver list required by the default approval subflow or provide a
different approval subflow.
• The escalation watch list. Users added to the watch list receive email notifications when an
escalation record is updated.
The escalation feature provides two standard escalation templates, one for case escalation and
one for account escalation. If needed, users with the system administrator role can modify these
templates or create templates.

Escalation severity
An escalation severity record defines the severity level for the escalation and the color that
is used to highlight the escalated case or account record in the user interface. This assigned
severity enables agents to easily identify escalated cases and accounts on lists and forms. The
escalation feature provides two escalation severity definitions:
• High Severity: Escalated records are highlighted in red.
• Medium Severity: Escalated records are highlighted in orange.
The user interface determines which fields are highlighted for escalated cases and accounts.
User interface indicators to identify escalated cases and accounts
User interface

Description

CSM Agent Workspace

Field indicators and field highlights appear on
the Short description field for escalated cases
and on the Name field for escalated accounts.

Note: You can move indicators and
highlights to any field that is not a
hyperlinked field.
Platform interface

Escalated case and account numbers are
indicated with a colored dot on a list and a
colored background on a form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
CSM Agent Workspace case list with escalated cases

The CSM Agent Workspace case list shows these escalation details:
• Number: Automatically generated case number.
• Short description: Describes the case.
• Action status: Indicates the status of the case.
• Contact: Shows the contact person for the case.
In addition to defining the field indicator and field highlight of an escalated case or account,
the severity can be used when configuring SLAs. To configure additional escalation severity
definitions, the system administrator must configure a new style with the desired color. For more
information, see Highlight list fields .

Escalation SLAs
Escalation SLAs are typically used to govern the frequency of updates required for different
types and severities of escalations. An escalation SLA is associated with an escalation severity
in the SLA definition. When a user creates an escalation request, the selection in the Escalation
Severity field determines the SLA for the escalation record. The escalation feature provides the
following case and account escalation SLAs. The following table provides information about the
escalation SLAs and their descriptions.
Case and Account Escalation SLAs
Escalation SLAs

Description

Case escalation SLAs

On case escalations, because the escalation corresponds
one-to-one with a case, the default SLAs are associated with
the case:
• Escalated case response - 4 hours: De-escalate the case
within four hours.
• Escalated case response - 8 hours: De-escalate the case
within eight hours.
For case escalation, update the SLA reset condition to
`complete the old SLA and start a new one when the case has
new comments`

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
Case and Account Escalation SLAs (continued)
Escalation SLAs

Description

Account escalation SLAs

On account escalations, because the escalation corresponds
to an account which typically doesn’t support SLAs, the SLAs
are associated with the escalation.
• Escalated account response - 4 hours: De-escalate the
account within four hours.
• Escalated account response - 8 hours: De-escalate the
account within eight hours.

Users with the system administrator role can configure case and account escalation SLAs that
are based on escalation attributes such as the escalation type, severity, and trend. Escalation
SLAs are stored in the following locations:
• For account records, on the Escalation form in the Task SLAs related list.
• For case records, on the Case form in the Task SLAs related list.

Administering case action status
The case action status feature displays the status of cases in the Case list. With this feature,
customer service agents can easily identify cases that need attention.
The case action status feature provides visual indicators in the Action status column on the
My Cases and My Open lists to highlight case status. In addition to the colored indicators, the
Action status column also displays a brief status message.
Action status column on the Case list

Actionable case flows
The case action status feature uses actionable case flows to automatically determine the action
status for customer service cases. These flows create and resolve blocking tasks for different
case-related actions and automatically update the action status indicators. Certain agent actions
trigger these case flows, which in turn create and resolve the blocking tasks.
Customer service agents and managers can also manually set the action status for cases by
enabling the Needs Attention field on the Case form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
Blocking tasks
A blocking task is something that prevents an agent from making progress toward case
resolution. For example, a case might have one or more open related case task records or be
waiting for customer feedback.
Certain agent actions trigger case flows that create and resolve blocking tasks for customer
service cases. These tasks determine the case action status. Additionally, there are actions that
resolve these blocking tasks, such as the customer responding to an agent’s question or an
internal user resolving a problem task. For more information, see .
Related topics
Case action status
Configure case action status
Activate Case Action Status

Actionable case flows
Actionable case flows contain predefined user actions that automatically create and resolve
blocking tasks for customer service cases.
The Case Action Status plugin provides several actionable case flows that create and resolve
blocking tasks for different case-related actions. These flows are enabled by default. If you don't
want to create blocking tasks for a specific action, disable the associated flow.
To view these flows, navigate to Customer Service > Administration > Actionable Case Flows.

Flow Designer actions
Case flows use the following predefined Flow Designer actions:
• Add Blocking Task
• Inactivate Blocking Task
• Set Needs Attention Flag

Flows for customer service cases
The case action status feature provides the following flows for customer service cases.
• Create blocked by record if case needs customer information
• Create blocked by record if Case Task is associated with case
• Create blocked by record if Change Request is associated with case
• Create blocked by record if SC Request is associated with case
• Create blocked by record if Work Order is associated with case
• Create blocked by record if Incident is associated with case
• Create blocked by record if Problem is associated with case
• Resolve blocked by record if Case Task is closed
• Resolve blocked by record if Change Request is closed
• Resolve blocked by record if Incident is closed
• Resolve blocked by record if Problem is closed or Fix is communicated
• Resolve blocked by record if Problem is closed or Fix/Workaround is communicated
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
• Resolve blocked by record if SC Request is closed
• Resolve blocked by record if user information is provided for case
• Resolve blocked by record if Work Order is closed or cancelled
• Set Needs Attention if additional comments are added by others
• Update case when blocked by record is created
• Update case when Needs attention field is toggled

Flows for customer service orders
The case action status feature provides the following flows for customer service orders.
• Create blocked by record if order case needs customer information
• Resolve blocked by record if user information is provided for order case
• Set Needs Attention if additional comments are added by others on order case
• Update order case when Needs attention field is toggled

Flows for problem records associated with a case
If a problem is associated with a case with the Need task resolution blocking reason, a case
flow is provided to resolve the blocking task when a fix is communicated or the problem record is
closed or cancelled.
If a problem is associated with a case with the Need PRB workaround blocking reason, a case
flow is provided to resolve the blocking task when a workaround is provided or the problem
record is closed or cancelled.

Blocking tasks
Certain agent actions trigger case flows which create and resolve the blocking tasks for
customer service cases. These tasks determine the case action status.
When an agent performs certain actions, such as asking a customer for more information or
associating a problem with a case, the system:
• Adds a blocking task to the case. This task appears on the Case form in the Blocked by form
section.
• Updates the Action Status field on the Case form and Case list.

Note: A blocking task is something that prevents an agent from making progress toward
case resolution. For example, a case might have one or more open related task records or
be waiting for customer feedback.
Additionally, there are actions that resolve these blocking tasks, such as the customer
responding to an agent’s question or an internal user resolving a problem task. When one of
these actions occur, the system:
• Updates the status of the blocking task on the Case form.
• Updates the Action Status field on the Case form and Case list.
• Enables the Needs Attention field on the Case form.

Actions that create blocking tasks
The following actions create blocking task for customer service cases:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
• The agent sets the state of the case to Needs More Information.
• The agent associates one of the following to the case:
◦ Problem
◦ Request
◦ Change
◦ Incident
◦ Case task
◦ Work order

Actions that resolve blocking tasks
The following actions resolve the blocking tasks for customer service cases:
• A customer provides the requested information.
• A fix or a workaround is associated with a related problem record.
• A related problem, request, change, or incident record is resolved.
• A related case task or work order is closed or cancelled.

Needs attention field
When the Needs attention field on the Case form is enabled, the Action Status column on the
Case list displays a blue indicator.
The Needs attention field is enabled automatically when:
• A blocking task for a case is resolved.
• A customer or someone other than the case owner comments on a case.
• A work note is added to a case that is a child of a major case.
Customer service agents and managers can manually enable the Needs attention field if
information is required from customers or internal users. This field can be disabled only by the
agent assigned to the case or by the customer service manager or admin.

Requesting additional information from a customer
When an agent requests additional information from a customer, the system enables the Needs
attention field and sets the Action status field to Needs attention.
If an agent needs to request additional information from a customer for a second time on the
same case, be sure to clear the Needs attention field on the Case form before requesting the
information. This ensures that the status updates correctly.

Case action status and major issue management
When using the case action status feature with major issue management, the following actions
enable the Needs attention field for a major case:
• A customer provides comments for a case that is a child of a major case.
• An agent adds a work note to a case that is a child of a major case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
Blocked by related list
Blocking tasks that are created for a case are added to the Blocked by related list. Each blocking
task is assigned one of the following blocking reasons:
• Need information from the customer
• Need task resolution
• Need PRB workaround
• Other

Note: When a problem is associated with a case and a blocking task is created, the

blocking reason is set to Need task resolution. If necessary, the agent can change this
reason to Need PRB workaround.
When a blocking task is resolved:
• The Unblocked By field displays the user who performed the unblocking action.
• The Unblocked On field displays the date that the blocking task was resolved.

Blocking Tasks table
Records that have the blocking tasks are stored in the Blocked By table
[sn_action_status_blocked_by]. Records are periodically removed from this table. Six months
after a blocked record is closed, the entries in the Blocked By table related to the blocked record
are removed.

Case action status analytics
The Customer Service Manager dashboard displays the percentage of the case backlog that is
waiting for an agent response, customer input, or a response for other users.
The dashboard includes the Open Backlog - Blocked widget which breaks down the remaining
work to show cases that are with the following users:
• Agent
• Customer
• Other Internal Stakeholder
As blocking tasks for a case get created and resolved, this dashboard widget tracks the case
time spent with each of these users. The breakdown is set for:
• Blocked internally
• Blocked by customer
• Blocked internally and by customer

Case action status logging
Logging for the case action status feature uses a metric definition to view information about
blocking tasks associated with customer service cases.
Defined metrics can track how long a specific field holds a certain value. The Case Actor
Duration metric definition logs the events related to case blocking tasks.
When a case blocking task is created or resolved, the system logs the information. This
information can be used to report on the duration of the case with the customer, the agent, or
other internal stakeholders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


