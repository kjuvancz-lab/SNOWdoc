# Zurich IT Service Management — Pre-built actionable notifications

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2091–2113 of 3857

Sections: Pre-built actionable notifications (p2091)

---

<!-- page 2091 -->
Zoom Meeting Actions topic block input and output parameters (continued)
Name

Description

Action

Zoom action for the meeting. Values are:
• Schedule
• Reschedule
• Cancel

User ID

Account user's ID or email address.

Start date
time

Current start date and time of the meeting in UTC.

Duration

Duration of the meeting in minutes. Values increment by 15 minute segments,
from 15 to 1440 (1 day).

Meeting
subject

Subject of the meeting.

Agenda

Meeting agenda.

Meeting ID

Unique Zoom ID assigned to the virtual meeting.

Output parameters
output_status Returns the status for the meeting.
status_code

Returns one of the following status codes for the meeting:
• SCHEDULE_ACTION_SUCCESSFUL
• RESCHEDULE_ACTION_SUCCESSFUL
• CANCEL_ACTION_SUCCESSFUL
• SCHEDULE_ACTION_FAILED
• RESCHEDULE_ACTION_FAILED
• CANCEL_ACTION_FAILED
• INVALID_PAYLOAD
• INVALID_EMAIL
• MEETING_ID_MISSING

meeting_url

Join URL for the virtual meeting.

ITSM Virtual Agent pre-built actionable notifications
Send interactive messages to an employee through Virtual Agent, based on pending tasks or
alerts. Deflect some of the most common ITSM incidents to ITSM Virtual Agent, reduce incident
volume to Service Desk, and help employees discover ITSM Virtual Agent as a resolution
channel.

Actionable notifications
Actionable notifications are interactive messages that Virtual Agent sends to the end user when
the user takes certain actions on non-conversational service channels. These notifications
have buttons that enable the recipient to perform certain actions, such as adding a comment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2091


<!-- page 2092 -->
or requesting a live agent. When you create an actionable notification, you associate an action
with a published Virtual Agent topic, a scriptable action, or a flow action that handles the action
to be performed. For example, Virtual Agent can send a notification when an employee submits
®
an incident through email or the ServiceNow Service Portal, if there are any updates or actions
needed from the employee. Employees can resolve the incident directly in the Virtual Agent
conversation, without involving a live agent.
Admin or Virtual Agent admin (virtual_agent_admin) users activate notifications and the ITSM
Virtual Agent Conversation topics.
To create your own custom notifications, see Configuring Virtual Agent notifications

.

Pre-built ITSM actionable notifications
The following pre-built notifications are available for ITSM Virtual Agent. You must activate these
notifications in Workflow Studio before you can use them. For details, see Set up actionable
notifications for ITSM Virtual Agent.

I want to

Pre-built notifications

Notify users of changes to their incidents

Actionable notifications for incidents in
ITSM Virtual Agent

Notify users of changes to their Service Catalog
requests

Actionable notifications for Service Catalog
requests in ITSM Virtual Agent

Notify users of approvals for change requests or
KB articles

Actionable notifications for approvals in
ITSM Virtual Agent

Notify users when their password is about to
expire

Actionable notifications for Password Reset
for Virtual Agent

Notify users of changes to virtual machines

Actionable notifications for virtual machines
in ITSM Virtual Agent

Notify users when Virtual Agent finds a topic that Actionable notifications for Issue Auto
can resolve the end user's issue
Resolution in ITSM Virtual Agent
Related topics
Issue Auto Resolution for ITSM Virtual Agent
Using Issue Auto Resolution for Virtual Agent

Actionable notifications for incidents in ITSM Virtual Agent
Notify employees of pending tasks and incident alerts with notifications from ITSM Virtual Agent.
You must activate notifications in Workflow Studio in order to use them. For details, see Set up
actionable notifications for ITSM Virtual Agent.

Incident commented
End users are notified whenever someone adds a comment to their incident. The end user can
choose to view comments, resolve the incident, or skip the notification.
If the end user selects View Comments, Virtual Agent displays the three most recent comments
on the incident.
After viewing the most recent comments, the end user can choose to add their own comments
and images.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2092


<!-- page 2093 -->
Incident on behalf of caller
End users receive this notification whenever someone opens an incident on their behalf.
The end user can choose to add a comment to the incident, resolve the incident, or skip the
notification.
If the end user selects Add Comment, Virtual Agent provides a URL to the incident and the end
user can enter comments directly into the chat.
If the end user selects Resolve Incident, Virtual Agent resolves the incident and provides the
incident URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2093


<!-- page 2094 -->
Incident resolved
End users receive this notification whenever someone other than the end user resolves one of
their incidents. The end user can choose to close the incident, mark the incident unresolved, or
skip the notification.
If the end user chooses to mark the incident unresolved, Virtual Agent offers to add comments
from the end user directly through the chat and reopens the incident.
If the end user chooses to close the incident, Virtual Agent closes the incident and provides the
incident URL.

Incident Update
End users receive this notification whenever someone updates their incident. The end user can
choose to add a comment to the incident, resolve the incident, or skip the notification.

KB attached to incident (deprecated)
End users receive this notification from Virtual Agent when a Knowledge Base article is attached
to their incident. The end user can choose to view the article, resolve the incident, or skip the
notification.
If the end user chooses to view the article, Virtual Agent displays a snippet and a link to the
complete article.
The end user can also give feedback and add comments to the incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2094


<!-- page 2095 -->
Actionable notifications for Service Catalog requests in ITSM Virtual Agent
Notify employees of Service Catalog tasks and alerts with notifications from ITSM Virtual Agent.
You must activate these notifications in Workflow Studio. For details, see Set up actionable
notifications for ITSM Virtual Agent.

Citrix provision notification
End users are notified whenever a change occurs to a Citrix session or application. For
information about pre-built topics for Citrix, see Citrix session pre-built topics for ITSM Virtual
Agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2095


<!-- page 2096 -->
Request approved or rejected
Virtual Agent sends a notification to the requester of a generic Service Catalog request. The
requester can choose to view the details or skip the notification.

Requested Item approval reminder
Virtual Agent sends a notification to the approver of a Service Catalog request. The approver can
choose to view the request details or skip the notification.
Approvers can approve or reject the request directly in the chat. Approvers can also add
comments to rejected requests directly in the chat.

Requested item commented
Virtual Agent sends a notification to employees who have requested Service Catalog items when
a new comment is added to the request. Requesters can choose to view the comment or skip the
notification.
If the requester selects View Comment, Virtual Agent displays the three most recent comments
and the requester can choose to add their own comment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2096


<!-- page 2097 -->
The requester enters a comment and Virtual Agent adds the new comment directly from the chat.

Requested item on behalf of requester
Virtual Agent sends a notification to an end user when a Service Catalog request is opened on
the end user's behalf. The requester can choose to view request details, add comments directly
in the chat, or skip the notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2097


<!-- page 2098 -->
Requested Item Update
Virtual Agent sends a notification to the requester of a Service Catalog request any time the state
changes. The requester can choose to view the details or skip the notification.

Software Installation
End users (requesters) can submit a request for software from the Software Catalog by selecting
the link displayed under Use the link below to submit your request.

When the submitted request is approved, Virtual Agent sends an actionable notification to the
end user letting them know that the software has been assigned and will be available soon.

Note: End users must be using Client Software Distribution

.

The requester can do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2098


<!-- page 2099 -->
• See details about the software request by selecting Take me to the software center.
• See a list of relevant Knowledge Base (KB) articles, if any, by selecting OK, I'm done.
By default, Virtual Agent displays the articles included in the sc_2_kb table.
An admin can define which table is used by changing the value of the
sn_itsm_va.cat_item_related_kb system property.

Actionable notifications for approvals in ITSM Virtual Agent
Notify employees of approvals for requests with notifications from ITSM Virtual Agent.
You must activate notifications in Workflow Studio in order to use them. For details, see Set up
actionable notifications for ITSM Virtual Agent.
Some of the default actionable notifications in ITSM Virtual Agent that need approvals are as
follows:

Approval request for requested items
Virtual Agent sends a notification to the approver of a Service Catalog item request. The approver
can choose to view the request details or skip the notification.
Approvers can approve or reject the request directly in the chat. Approvers can also add
comments to rejected requests directly in the chat.

Approval request for requests
When an approval for a change is requested, Virtual Agent sends a notification to the end user
who made the change request. The end user can be either the requester or the approver. Virtual
Agent sends the notification to the end user, as applicable, who can then approve or reject the
request, see details, or skip the notification.

The fields shown below are the default fields for any task table (the Show Details field is not
configured for the Task extended table).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2099


<!-- page 2100 -->
The fields below are the fields configured in the _show_approval_details_ topic (the Show
Details field is configured for the Task extended table). Admin users can configure these fields by
duplicating the topic and editing the approval_default_task_fields script variable within the topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2100


<!-- page 2101 -->
KB request approved or rejected
Virtual Agent sends a notification when an approval for a knowledge article is requested. End
users approve or reject the request, see details, or skip the notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2101


<!-- page 2102 -->
The fields shown here are the fields configured in the _show_approval_details_ topic.​
Admin users can configure these fields by duplicating the topic and editing the
approval_default_task_fields script variable within the topic.

For non-task tables, when no fields are configured in the _show_approval_details_ topic, a
message displays with a link to the record being reviewed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2102


<!-- page 2103 -->
Other approval
Virtual Agent sends a notification to the approver when a non-task record (such as a Knowledge
Base article) needs approval. The approver can choose to view the request details or skip the
notification.

Request approval reminder
Virtual Agent sends a notification to remind the approver of a pending Service Catalog request.
The approver can choose to view the request details or skip the notification.

Request approved or rejected
Virtual Agent sends a notification to the requester of a Service Catalog item when their request
has been approved or rejected. The requester can choose to view the request details or skip the
notification.

Task approval
Virtual Agent notifies the approver about a newly created task that needs review and approval.
This notification is not applicable for tasks such as Change or Standard Change. It is also not
applicable to Requests (sc_requests) and Requested Items (sc_req_item).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2103


<!-- page 2104 -->
Actionable notifications for Password Reset for Virtual Agent
Use Virtual Agent to notify employees when their password is about to expire.
You must activate this notification in Workflow Studio. For details, see Set up actionable
notifications for ITSM Virtual Agent.

Password Expiration Reminder
Virtual Agent notifies the user when their password is about to expire. Users can reset passwords
and unlock accounts even if they are not logged in. When users are logged in, they can perform
all actions, such as changing passwords. After changing or resetting a password, the user can’t
change or reset the password for the next 24 hours.
For more information about configuring password expiration, see Configure password expiration
reminder .

Actionable notifications for virtual machines in ITSM Virtual Agent
Notify users when a change is made to a virtual machine (VM) instance.
You must activate notifications in Workflow Studio in order to use them. For details, see Set up
actionable notifications for ITSM Virtual Agent.

Start VM failure
End users are notified when a change made to a virtual machine instance has failed. For
example, the virtual machine failed to start or stop. For information about pre-built topics for
virtual machines, see Virtual machine pre-built topics for ITSM Virtual Agent.

Start VM Success
End users are notified when a change made to a virtual machine instance has been successful.
For example, the virtual machine successfully started or stopped. For information about pre-built
topics for virtual machines, see Virtual machine pre-built topics for ITSM Virtual Agent.

Actionable notifications for Issue Auto Resolution in ITSM Virtual Agent
Notify employees when Virtual Agent finds a topic that matches the end user's intent.
Issue Auto Resolution sends actionable notifications through Virtual Agent directly to the
end user on their preferred chat channel when the machine-learning model finds a topic that
matches the end user's intent. Issue Auto Resolution must be enabled, and the end user must be
subscribed to notifications.
Actionable notifications contain buttons that the end user can select. Each button is mapped to
a topic that is enabled for Issue Auto Resolution. Based on the end user's selections, different
aspects of Issue Auto Resolution execute, according to the logic of the matched topic.
For more information about Issue Auto Resolution, see Using Issue Auto Resolution
Auto Resolution for ITSM Virtual Agent.

and Issue

Note: You must activate notifications in Workflow Studio in order to use them. For details,
see Set up actionable notifications for ITSM Virtual Agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2104


<!-- page 2105 -->
Issue Auto Resolution
End users receive this notification when an incident is created and the incident short description
relates to an existing Issue Auto Resolution topic intent. The end user can choose to accept the
Virtual Agent assistance, wait for a human agent, or skip the notification.

If the end user accepts the Virtual Agent assistance, the matched Issue Auto Resolution topic
runs and Virtual Agent provides suggestions to resolve the issue.
After Virtual Agent provides suggestions to resolve the issue, the end user can indicate if these
suggestions were successful and can choose to close the ticket or to leave it open. If the end
user chooses to leave the ticket open, Virtual Agent assigns the ticket to a live agent.

Issue Auto Resolution Reminder
End users receive this notification to remind them that virtual assistance has been found to help
them. The end user can choose to accept the Virtual Agent assistance, wait for a human agent, or
skip the notification.

Issue Auto Resolution for ITSM Virtual Agent
Proactively deflect common ITSM incidents to ITSM Virtual Agent. Initiate a conversation with
an end user after they submit an incident through a non-conversational service channel, if an
existing ITSM Virtual Agent conversation can resolve the issue.

Understanding Issue Auto Resolution
Issue Auto Resolution uses ITSM Virtual Agent to proactively resolve incidents through a
conversation on the user's preferred chat channel. The Issue Auto Resolution flow follows these
steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2105


<!-- page 2106 -->
• When an end user creates an incident through a non-conversation service channel, such
®
as ServiceNow Service Portal or email, the Natural Language Understanding (NLU) model
checks for a matching intent that has Issue Auto Resolution enabled.
• If a matching intent and topic are found, Issue Auto Resolution sends an actionable notification
to the end user on their existing chat channel. The user can accept or decline assistance.
• If the end user accepts the assistance, Issue Auto Resolution invokes the matched ITSM
Virtual Agent conversation to resolve the incident.
• When the conversation completes, the user can indicate if the conversation resolved the
incident and can choose to keep the ticket open or to close it.
• When there are no matching Issue Auto Resolution intents found, AI Search is enabled as
fallback along with added intents. For more information, see Enabling AI Search in Issue Auto
Resolution.

When an incident is unassigned from Issue Auto Resolution
An incident is unassigned from Issue Auto Resolution and is routed to an agent when any of the
following conditions apply:
• The matched intent doesn't have a matching topic in the same domain as that of the incident.
• The matched topic doesn't have Issue Auto Resolution enabled.
• The end user has not subscribed to notifications.
• The end user declines, ignores, or abandons the Virtual Agent conversation.
• The matched topic didn't resolve the issue.

When an incident is assigned from Issue Auto Resolution
An incident is assigned from Issue Auto Resolution and is routed to a Virtual Agent when an
intent to topic is matched for the incident.
You must ensure that you check the SLAs and Notifications to see if they trigger the Assigned to
is EMPTY condition to avoid issues with SLAs and Notifications setup on the instance against
the incident table.
Update your SLAs and Notifications trigger condition either to Assigned to is EMPTY or ensure
that the Assigned to field is set to Virtual Agent.

Issue Auto Resolution dashboard
The Issue Auto Resolution dashboard provides metrics for the effectiveness of incident
deflection, based on Virtual Agent conversations. This dashboard is only accessible to users with
the admin role, the virtual_agent_admin role, the chat_analytics_viewer role, or the iar_admin
role. The dashboard tracks both the usage of Issue Auto Resolution and the rate of successful
incident resolutions. Users can see which tasks are deflected to Issue Auto Resolution and
®
the overall success of Issue Auto Resolution through the following ServiceNow Performance
Analytics KPIs:
• Number of tasks solved by Issue Auto Resolution
• Number of notifications ignored by requester.
• Number of tasks not solved by Issue Auto Resolution to which the requester responded.
To view the dashboard, navigate to All > Conversational Interfaces > Conversational Analytics
> Virtual Agent Dashboard. Select the Issue Auto-Resolution tab to view analytics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2106


<!-- page 2107 -->
This tab also provides detailed visualizations on intent and topic matching performed for autoresolution. For more information, see Issue Auto Resolution tab.

Issue Auto Resolution Intent Analytics dashboard
The Intent Analytics dashboard provides reports on intent prediction efficiency and other metrics
that occur before launching the Issue Auto Resolution topic. This dashboard is accessible only
to users with the admin, virtual_agent_admin, or iar_admin role. Intent Analytics and Reports are
based on context records and are generated from the context data to do the following:
• Measure the efficiency of the Machine Learning API (NLU).​
• Measure if Issue Auto Resolution successfully resolved the task.
To view the dashboard, navigate to All > Conversational Interfaces > Incident Auto-Resolution >
Intent Analytics.

Natural Language Understanding and Issue Auto Resolution
Issue Auto Resolution uses NLU to identify Virtual Agent topics that match intents submitted by
users. Intent matching is determined by the incident Description and Short Description fields.
Intents must meet the required minimum confidence threshold to be considered a match.
Issue Auto Resolution NLU integration

To view, train, or retrain the NLU model, see Train and test your model in Virtual Agent Designer

.

Note: Issue Auto Resolution must be activated and ITSM Virtual Agent must be installed
to access the NLU models. To learn more, see Set up Issue Auto Resolution for ITSM Virtual
Agent.

About actionable notifications
Actionable notifications are interactive messages that Virtual Agent sends to the end user on
their preferred chat channel. Issue Auto Resolution sends an actionable notification when the
machine learning model finds a topic that matches the user's intent and the user is subscribed
to notifications. Actionable notifications contain buttons that the user can select. Each button is
mapped to an Issue Auto Resolution topic. Based on the user's selections, different aspects of
Issue Auto Resolution execute, according to the logic of the matched topic. For more information
on how actionable notifications work and how they're delivered to recipients, see Configuring
Virtual Agent notifications .

ITSM Virtual Agent topics for Issue Auto Resolution
Users with the admin or virtual_agent_admin role can choose a subset of pre-built topics to be
available for Issue Auto Resolution. The following ITSM Virtual Agent intents are supported by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2107


<!-- page 2108 -->
Issue Auto Resolution by default and some of the IAR intents are mapped to ITSM topics by
default.
Intent to topic mappings supported by IAR
Intents

Mapped topics

CollaborationSoftwareIssues

n/a

HardwareRequest

n/a

HardwareIssues

Hardware Issues (Template)

LocalAdminAccess

Local Admin Access (Template)

SoftwareAccessRequest

n/a

SoftwareInstall

n/a

RSAToken

n/a

VPNConnectivity

VPN Connectivity (Template)

EmailIssues

Email Issues (Template)

RepositoryAccess

Repository Access (Template)

PrinterIssues

Printer Issues (Template)

ManageDistributionList

n/a

ResetPassword

Reset Password (Template)

MACHINE_GENERATED

n/a

The default intents and matched topics are listed in the Auto Resolution Intent Topic Maps tab.
Users with the admin or virtual_agent_admin role can create their own custom topics to use,
instead of the included pre-built topics. These custom topics must be mapped to a supported
intent in the Auto Resolution Intent Topic Maps for Auto Resolution Configuration.

Issue Auto-resolution tuning
Tune the default IAR intents in the NLU Workbench before returning to the Issue Auto Resolution
Admin Console and publish them. For more information, see Issue Auto Resolution Tuning in
NLU .
Related topics
Using Virtual Agent for Issue Auto Resolution
Enabling AI Search in Issue Auto Resolution
You can enable AI Search as a fallback mechanism in Issue Auto Resolution when there are no
matching intents found for the incident.

Applying AI Search for Issue Auto Resolution Configuration
When there are no intent matches found for Issue Auto Resolution, AI Search can be applied for
the fallback capability. To use AI Search as fallback:
• Open the Auto-Resolution Configuration record.
• Navigate to the AI Search tab.
• Select the Apply AI Search check box to enable fallback.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2108


<!-- page 2109 -->
You can see the following AI Search settings from the IAR configuration record which will be used
when there are no intent matches for the topic.
• EVAM definition: The entity view action mapper definition is set to Virtual Agent Search by
default.
• Search application: The default application for AI Search fallback is set to Service Portal
default Search Application.
• AI Search display topic: The AI Search display topic that is provided by default is the IAR - AI
Search topic.
• Search results portal: The default portal for AI Search fallback is set to the Service Portal.
To support AI Search fallback, ITSM Virtual Agent provides the following intent to topic mappings.
Intent to Topic Maps
Auto-resolution intent

Matched topic

RepositoryAccess

Repository Access (Template)

Emailissues

Email Issues (Template)

RSAToken

RSA Token (Template)

LocalAdminAccess

Local Admin Access (Template)

CollaborationSoftwareIssues

Collaboration Applications (Template)

Whenever you try to create an incident using Email or Self-service as the channel that triggers
IAR, you will receive the relevant recommendations.
There are three types for recommendations, KBs, Catalogs, and VA Topics. For example,
if you create an incident and check for its email notifications, you will be shown various

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2109


<!-- page 2110 -->
recommendations (including KBs and Catalogs) for the incident resolution from Issue Auto

Resolution.
In case there is a matched VA topic from the intent to topic mapping, in that
case, you will not receive the KB and Catalog recommendations, but the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2110


<!-- page 2111 -->
VA topic name, such as "VA Topic: Printer Issues (Template)" in the email

notification.
Once you click View recommendations from your email notification, you will be directed to the
Service Portal incident which now has a Recommendations tab from where you can read the KB
and mark the recommendation as helpful and resolve it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2111


<!-- page 2112 -->
Note: In case the recommendations have a catalog item as the recommended
option and you create the catalog request from the Recommendations tab,
an email notification is triggered and the incident gets auto-closed in 24

hours.

Tracking deflections in ITSM Virtual Agent
You can use the pre-built deflection topics and topic blocks in Virtual Agent conversations to
track the incidents that ITSM Virtual Agent helped to resolve.
A deflection happens when ITSM Virtual Agent resolves an issue for you. By asking you relevant
questions, ITSM Virtual Agent can create an incident in the correct assignment group. As a result,
you might not need to create an incident, or need the assistance of a live agent.
Deflection tracking uses the topics and topic blocks created in Virtual Agent Designer and
is enabled by default. For more information, see Tracking deflections using deflection topic
blocks .
By default, ITSM Virtual Agent includes pre-built deflection configurations in the base system.
You can use the deflection configurations in the base system or customize them, as needed. For
more information, see Create deflection configurations and patterns .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2112


<!-- page 2113 -->
The pre-built deflection patterns in the base system are described in the following table.

Deflection pattern name

Description

Outcome

ITSM VA-Self-Resolving

Virtual Agent completes a task Confirmed deflection
with or without filing a task
record for ITSM. For example,
Virtual Agent adds a user to a
distribution list.

ITSM VA-Triage & Created

Virtual Agent filed and created Confirmed deflection
a task record based on enduser input. Creating this task
record shortens the time to
resolution.

ITSM VA-KB-Resolve

User resolved the issue by
using the Knowledge Base
(KB) articles displayed.

Confirmed deflection

ITSM VA-Intercept & Resolved

Virtual Agent intercepted an
end user-created incident,
and helped to resolve and
close it. For example, Virtual
Agent resolves and closes
the incident with Issue AutoResolution (IAR).

Confirmed deflection

ITSM VA-Search-served

Virtual Agent shows the
search results based on the
user's IT service needs.

Potential deflection

ITSM VA-AI-Search

Virtual Agent uses the AI
Search results to provide
support.

Confirmed deflection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2113


