# Zurich IT Service Management — ITSM Virtual Agent

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2024–2090 of 3857

Sections: ITSM Virtual Agent (p2024); Explore (p2026); Set up (p2029); Use pre-built topics (p2033)

---

<!-- page 2024 -->
Enterprise portfolio

Domain separation and Digital Portfolio Management
Domain separation is supported in Digital Portfolio Management. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level Standard
• Includes Basic level support.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

The Digital Portfolio Management application uses Performance Analytics to collect data and
provides domain separation support.

Request Digital Portfolio Management Domain Separation
The Domain Support - Domain Extensions Installer plugin
(com.glide.domain.msp_extensions.installer) must be activated by ServiceNow personnel. After
this plugin has been activated, as an administrator, you can activate the Performance Analytics Domain Support plugin (com.snc.pa.domain_support).
The Performance Analytics - Domain Support plugin (com.snc.pa.domain_support) must be
activated to enable the features for Digital Portfolio Management.

ITSM Virtual Agent
You can use ITSM Virtual Agent to support and scale your IT organization. With ITSM Virtual
Agent, your technicians can address more challenging IT-related user requests and incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2024


<!-- page 2025 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

About ITSM Virtual Agent
ITSM Virtual Agent helps you automate employee workflows by addressing common IT-related
queries immediately. At any time during a virtual conversation, a user can request to interact with
a live IT technician.
ITSM Virtual Agent includes pre-built topic conversations that cover common IT interactions.
These conversations run in the web chat client and are also available in supported ITSM Virtual
Agent messaging integrations.

Conversations between Virtual Agent and the user accomplish an IT goal. The information
exchanged during the conversation flow, such as user inputs and Virtual Agent responses,
enables Virtual Agent to fulfill a request or help complete a task.
®

ITSM Virtual Agent integrates with ServiceNow Integration Hub
topics may require specific spokes to be installed.

and Flow Designer

For more information about Virtual Agent features, see Virtual Agent

. Some

.

Languages supported for NLU services on the ITSM Virtual Agent
In addition to English, ITSM Virtual Agent supports the following languages for NLU:
• German
• French
• French (Canadian)
• Korean
• Spanish
• Brazilian Portuguese
• Japanese
• Italian
• Dutch
• Chinese (Simplified)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2025


<!-- page 2026 -->
For details about NLU, see Natural Language Understanding in Virtual Agent

.

The ITSM Virtual Agent topics re-factored with gs.getMessageLang() provide you the
improved operations on the ITSM Virtual Agent by utilizing and displaying all the messages in
the bot conversations in your preferred language. The gs.getMessageLang method checks
the UI Message table [sys_ui_message] for the translated version of the text in the language
provided using the vaContext.getRequesterLang() variable.

Edge Encryption for ITSM Virtual Agent
Edge encryption provides you with direct control over your data security. Encryption and key
®
management are performed on your intranet between your browser and your ServiceNow
instance. For details about edge encryption, see Edge Encryption for ITSM Virtual Agent within
ITSM.

Exploring ITSM Virtual Agent
The ServiceNow ITSM Virtual Agent provides assistance through conversations within an
intelligent messaging interface.

ITSM Virtual Agent overview
Empower your IT technicians to concentrate on more challenging, demanding user requests and
incidents by deflecting the most common, simpler incidents to a virtual agent. ITSM Virtual Agent
enhances both the IT technician experience and the employee experience by addressing ITrelated queries immediately.

Virtual Agent benefits
User satisfaction
Provide better self-service by helping users and customers
get what they need quickly with always-on, omni-channel
experiences. Enable your users to get immediate help, day
or night. Boost user and customer satisfaction by offering
a personalized Virtual Agent experience, whereby user
information is remembered and applied during the conversation.

User
Satisfaction

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2026


<!-- page 2027 -->
Increased productivity
Deliver great experiences for your users, as well as your
agents and technicians, by deflecting tickets and reducing
call volumes. Drive productivity by providing a virtual agent on
familiar channels, such as Slack, Microsoft Teams, Facebook
Messenger, and Workplace.

Automation support
Scale your support organizations and free your agents
and technicians to focus on more complex user issues by
automating common support tasks.

Empowered service owners
Enable service owners to deliver and refine AI capabilities
quickly without data science expertise.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2027


<!-- page 2028 -->
Components
Natural Language Understanding
You can use Natural Language Understanding (NLU) for all your ITSM Virtual
Agent topic conversation flows. ITSM Virtual Agent uses NLU to comprehend word
meanings, recognize word contexts, and infer user or system actions.
You can decide whether you want ITSM Virtual Agent to use only keywords, which
result in quicker time-to-value in the short term. Or you can choose to use NLU,
which results in a better employee experience in the long term.
ITSM Virtual Agent and the ITSM NLU Model for Virtual Agent Conversations are
available from the ServiceNow Store. Visit the ServiceNow Store
website to view
all the available apps and for information about submitting requests to the store.
For cumulative release notes information for all released apps, see the ServiceNow
Store version history release notes .
The ITSM NLU Model for Virtual Agent Conversations provides pre-built NLU
entities, intents, and utterances. Some of the provided intents and utterances
include:
• Escalate Ticket topic:
◦ Raise incident INC0010023 ticket priority to higher level
◦ Raise the priority on my open ticket
• Check Outages and Service Degradations topics:
◦ Are there currently any reported company-wide issues?
◦ Is there an outage?
• Email Setup topic
◦ I want to set up email on my mobile device
◦ How do I set up company email on my phone?
Enable NLU on the ITSM Virtual Agent application and republish your existing
conversations to optimize user experience with the NLU feature.
ITSM Virtual Agent automatic notifications
Virtual Agent proactively informs you about the status of your incidents and
requests. Managers are alerted when they have approvals.
ITSM Virtual Agent notification defined on the Task [task] table
These notifications are used by fulfillers and employees. The Task type
filter on the Task table enables automatic status notification when the
value is Incident or Requested item. When the state of the incident or
requested item task changes, a Virtual Agent message is sent to the
user.
ITSM Virtual Agent notification defined on the Approval
[sysapproval_approver] table
These notifications are used by request management or knowledge
management. When an approval is submitted, an automatic Virtual
Agent message is sent to the approver alerting them of the approval
request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2028


<!-- page 2029 -->
Setting up ITSM Virtual Agent
Set up the ITSM Virtual Agent features and components that you need to provide support to your
employees, IT teams, and customers.
ITSM Virtual Agent topics must be activated and published before your employees can use them.
By default, the base system provides topics as inactive and unpublished. To view, duplicate,
preview, or publish ITSM topics in the Virtual Agent Designer, see Getting started with Virtual
Agent Designer .

Set up ITSM Virtual Agent
You can create and publish conversation topics in Virtual Agent Designer if you have
administrator roles.

Before you begin

Role required: admin

About this task
Virtual Agent
must be activated before you can use the ITSM Virtual Agent topic conversations.
Users with the admin roles can activate Glide Virtual Agent [com.glide.cs.chatbot].
Install ITSM Virtual Agent and the ITSM NLU Model for Virtual Agent Conversations by requesting
them from the ServiceNow Store. Visit the ServiceNow Store
website to view all the available
apps and for information about submitting requests to the store. For cumulative release notes
information for all released apps, see the ServiceNow Store version history release notes .
Topics must be activated and published before your employees can use them. By default, the
base system provides topics as inactive and unpublished. To view, duplicate, preview, or publish
ITSM topics in the Virtual Agent Designer, see Getting started with Virtual Agent Designer .

Procedure
1. Activate the Glide Virtual Agent plugin (com.glide.cs.chatbot).
2. Install ITSM Virtual Agent by requesting it from the ServiceNow Store.
3. Review the ITSM-related conversation topics in Virtual Agent Designer.
4. Configure Natural Language Understanding (NLU) in Virtual Agent

.

ITSM Virtual Agent topics use ServiceNow NLU models. The English NLU models are activated
by default. If you are using other languages, you must activate those NLU models manually. For
details, see Multilingual model management .
5. Publish the ITSM Virtual Agent topics and their corresponding NLU models in Virtual Agent
Designer.
Publishing them in Virtual Agent Designer lets users run the conversations in your Virtual
Agent support client.

Note: You can't edit the provided topics. You can duplicate a provided topic and then
edit it. You can also create additional topics. For complete details about activating and
publishing conversation topics, see Getting started with Virtual Agent Designer .
6. To test an active, published conversation topic, select the topic to test in Virtual Agent
Designer and select Test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2029


<!-- page 2030 -->
Set up the Local Admin Access topic
Administrators and users with the Virtual_agent_admin role can install and activate the Agent
Client Collector Spoke plugin. Developers can update scripts and configure commands as
needed for their organization.

Before you begin

Role required: virtual_agent_admin or admin

Procedure
1. Install the Agent Client Collector Spoke plugin on the instance according to the Agent Client
Collector installation
instructions.
2. Update the sudoers file of the macOS devices with the following entry.
This process allows the ServiceNow user to run the grant_admin_access script in sudo mode
and bypass password requirements.
_servicenow ALL=
SETENV: /
Library/Caches/servicenow/agent-client-collector/admin-access-m
ac/bin/grant_admin_access.sh *
Defaults:_servicenow !requiretty
Defaults exempt_group += _servicenow
3. Activate the Agent Client Collector plugin (admin-access-mac), after validating the attached
payload with your internal IT team.
4. Configure the following commands as needed for your organization.
ACC Check Definition: check-admin-access, grant-admin-access
5. Duplicate and activate the Local Admin Access topic in the ITSM scope.
To view, duplicate, preview, or publish IT Service Management topics in the Virtual Agent
Designer, see Getting started with Virtual Agent Designer .

Set up actionable notifications for ITSM Virtual Agent
Administrators and users with the virtual_agent_admin role can enable system notifications,
trigger Workflow Studio flows for actionable notifications topics, and activate notifications in
Virtual Agent.

Before you begin

Role required: admin or virtual_agent_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2030


<!-- page 2031 -->
Procedure
1. Enable system notifications.
a. Navigate to All > System Notification > Provider > Notifications.
b. Set the Active property to true for the conversations you want to activate.

2. Activate Workflow Studio flows for specific actionable notifications ITSM Virtual Agent
conversations.
These topics are inactive by default. For complete details about activating flows, refer to
Activate a flow .
The following flows for actionable notifications must be activated if you want to use them with
Actionable Notifications:
◦ ITSM Actionable Notifications trigger flow - Approval Reminder
◦ ITSM Actionable Notifications trigger flow - Incident commented
◦ ITSM Actionable Notifications trigger flow - Software Installation
a. Select the flow you would like to activate in Workflow Studio.
b. Select Activate.
3. Enable notifications in Virtual Agent.
Related topics
Notifications in messaging applications
Setting up Virtual Agent notifications

Set up Issue Auto Resolution for ITSM Virtual Agent
Users with the virtual_agent_admin or admin role can configure Virtual Agent settings to indicate
discoverable topics, set business rules, and more.

Before you begin

Role required: admin or virtual_agent_admin
• Activate Virtual Agent

to use Virtual Agent as a response channel.

• Set up ITSM Virtual Agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2031


<!-- page 2032 -->
Install the ITSM Virtual Agent Conversations app, which includes the ITSM NLU Model for
Virtual Agent Conversations. Request this app from the ServiceNow Store. Visit the ServiceNow
Store
website to view all the available apps and for information about submitting requests to
the store. For cumulative release notes information for all released apps, see the ServiceNow
Store version history release notes .

About this task

Most of the Issue Auto Resolution functionality is included with the Glide Virtual Agent
(com.glide.cs.chatbot) plugin. More functionality is available in the ITSM Virtual Agent
Conversations Store App. Issue Auto Resolution is automatically enabled.

Procedure
1. Train the Machine Learning model.
Train the Issue Auto Resolution Machine Learning model before activating the Auto Resolution
Configuration record.

Note: The query on the Incident table must have the minimum number of records that

you specify in the glide.platform_ml.api.min_agent_zero_records
system property to train the model. The default value of this property is 300000 and
should not be increased because training the model can fail with more than 300,000
records. Ensure that the conditions that you specify in the Auto Resolution configuration
record return less than 300,000 records before you click Train. For more information
about predictive intelligence properties, see Predictive Intelligence properties .
a. Navigate to All > Conversational Interfaces > Settings > Virtual Agent.
b. Under ITSM Virtual Agent (IAR), click View Settings.
c. Select the target table.
d. Under the Details tab, go to the Machine Learning Model section.
e. Click Train.
The Training Progress field displays the percentage of training complete and updates
whenever the form is refreshed.
f. When the Training Status field displays Solution Complete, select the Active
property.
g. Optional: Set a Retrain Frequency to define how often the Machine Learning model
automatically retrains.
Users with the admin or virtual_agent_admin role can also manually retrain the model at any
time.
2. Optional: Change any mappings for Issue Auto Resolution intents to matched ITSM Virtual
Agent topics.
a. Navigate to All > Conversational Interfaces > Settings > Virtual Agent.
b. Under Issue Auto Resolution (IAR), select View Settings.
c. Select the target table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2032


<!-- page 2033 -->
d. Under the Auto Resolution Intent Topic Maps tab, view the default mappings for the intents
and matched topics and select the topic to change.
You can modify mappings, but only supported Issue Auto Resolution intents and active
Virtual Agent topics are available for mapping.
These records are inactive by default. To use them, duplicate the template topics to create
and publish them. After associating the intent to the topic of choice, make the intent topic
map active.
e. For a given Issue Auto Resolution intent, double-click the corresponding Matched topic,
select a different topic, and select Save.

Enabling dialog intelligence
Enable support for dialog intelligence in ITSM Virtual Agent to let the Virtual Agent dynamically
react to user utterances and modifications during your conversation.
The IT Service Management topics leverage the latest platform Dialog Acts enhancements by
changing the toggle from node-level to the topic-level. The Dialog Acts enhancement is enabled
for all the topics available in Virtual Agent and Virtual Machine applications.
For more information about Dialog Acts enhancements on the ServiceNow AI Platform, see
Dialog Acts for Virtual Agent .

Using ITSM Virtual Agent pre-built topics
ITSM Virtual Agent includes several pre-built topic conversations designed to help your users
complete common IT-related tasks, such as resetting a password and creating an incident.
Once installed, ITSM Virtual Agent pre-built topics are read only and have (Template) after the
name. To use them, duplicate the topic in the ITSM Virtual Agent conversation scope and rename
it according to your company's naming conventions. Natural Language Understanding (NLU)
models are used to identify and trigger the action that a user wants to perform.
The ITSM Virtual Agent pre-built topic conversations are organized in several topic categories.
Use the following table to find the topics that fit your needs.

Note: Some pre-built topics require additional paid plugins.

I want to

Using this ITSM topic
category

Resolve issues as an ITSM professional with the itil ITSM Fulfiller
role

Available prebuilt topics

• Create
Change
Request
• Create
Problem
• Identify
Available
Change
Windows
• Identify
Scheduled
Changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2033


<!-- page 2034 -->
I want to

Using this ITSM topic
category

Available prebuilt topics

• Resolve
Incident
• Update
Assigned
Task
• Update
Change
Request
Automate common IT-related issues, such as email ITSM IT Issues
setup, VPN connectivity, and conference room
problems

• Collaboration
Applications
• Email Issues
• Email Setup
• Guest WiFi
Access
• Hardware
Issues
• Local Admin
Access
• Meeting
Room Issues
• Printer
Issues
• Repository
Access
• RSA Token
• Troubleshoot
Slow
Computer
• VPN
Connectivity

Give users to access IT-related information,
such as IT ticket management, verify assigned
equipment, and service disruptions

ITSM Self-Service

• Book
Conference
Room EXO
• Book
Conference
Room
OnPrem
• Check IT
Ticket Status
• Check Ticket
and Support
Status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2034


<!-- page 2035 -->
I want to

Using this ITSM topic
category

Available prebuilt topics

• Escalate IT
Ticket
• Get
Password
Reset Link
• Get Zoom
Meeting
Recording
• My Assigned
Equipment
• Open IT
Ticket
• Open IT
Ticket 2.0
• Process
Approval
• Report IT
Issue
• Service
Disruptions
• Set OOO
reply
Exchange
Online
• Set OOO
reply
Exchange
Server
• Submit a
request
• Walk-up
Check-in
• Windows
365 Cloud
PC
Automate Citrix connections

ITSM Self-Service (with
Citrix integration)

• Reset Citrix
Sessions
• Provision
Citrix
Desktop/
Apps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2035


<!-- page 2036 -->
I want to

Automate user password management

Using this ITSM topic
category

Password Reset for
Virtual Agent application

Available prebuilt topics

• Change
Password
• Reset
Password
• Unlock
Account

Manage Microsoft Office 365 groups

ITSM Self-Service (with
Microsoft Office 365
integration)

• Add Owner
to Office 365
Group
• Add User to
Office 365
Group
• Create Office
365 Group
• Get Office
365 Group
Details
• Remove
Office 365
group Owner
• Remove
Office 365
group Users

Manage Microsoft Active Directory groups

ITSM Self-Service
(with Microsoft Active
Directory integration)

• Add User to
AD Group
• Create AD
Distribution
Group
• Remove
User from AD
Group
• Show My
AD Group
Membership

Automate meeting invitations in Microsoft
Exchange Online

ITSM Self-Service (with
Microsoft Exchange
Online integration)

• Manage
Meetings
EXO v1.0
• Manage
Meetings
EXO

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2036


<!-- page 2037 -->
Using this ITSM topic
category

Available prebuilt topics

Automate meeting invitations in Microsoft
Exchange Server

ITSM Self-Service (with
Microsoft Exchange
Server integration)

Manage
Meetings EXS

Manage virtual machines

Cloud VMs

I want to

• Describe
Virtual
Machine
• Manage
Virtual
Machine
• Provision
Virtual
Machine
• Start Virtual
Machine
• Start Virtual
Machine CAI
• Stop Virtual
Machine
• Stop Virtual
Machine CAI

Create a standard welcome greeting and a
Setup Topics
conversation closing, as well as user feedback and
surveys

Dynamic
Greeting Topic

IT Issues pre-built topics for ITSM Virtual Agent
IT Issues topic conversations are designed to automate common IT-related issues, such as email
setup, VPN connectivity, and conference room problems.

Collaboration Applications
Users can use Virtual Agent to troubleshoot common issues with collaboration software, such as
Cisco Webex, Zoom, and Microsoft Teams. This topic uses topic blocks that can be customized
for your environment. If the user isn't satisfied with the static help content for the issue they're
facing, they can perform an AI search or Contextual search. The type of search is dictated by the
system property sn_itsm_va.fallback_search_option.​
This topic uses the following topic blocks:
• Contextual Search
• Create Incident
• Troubleshoot Cisco Webex
• Troubleshoot Microsoft Teams
• Troubleshoot Zoom

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2037


<!-- page 2038 -->
Email Issues
Users can request help with email problems, such as issues sending and receiving email or
problems with the email client.

Email Setup
Users can request help with email access or setting up an email account accessible by computer
or phone. Users can also request help with configuring email or setting up web mail.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2038


<!-- page 2039 -->
Guest WiFi Access
Guests to your company can obtain WiFi access.

Hardware Issues
Users can troubleshoot specific hardware issues.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident

Local Admin Access
Users can request and gain admin rights and permission to install or access software and other
admin-related items within your system.
Virtual Agent grants admin access and removes the access for all users on the device after the
designated time period (except users listed in DEFAULT_ADMIN_USERS).
When the user requests help with admin access, Virtual Agent asks the user to select the device
they would like admin privileges for.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2039


<!-- page 2040 -->
Requirements:
• Agent Client Collector spoke

(com.sn.acc.spoke)

• Applies to macOS users only
If the user selects another operating system, Virtual Agent provides relevant KB articles.

To set up and use the Local Admin Access topic, refer to Set up the Local Admin Access topic.

Meeting Room Issues
Users can request help with meeting room issues, such as conferencing problems, sound issues,
display, connectivity, sharing, and more.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident

Printer Issues
Users can request help with issues associated with a printer, such as no ink, printer not working,
or connectivity problems. This topic can be used with Issue Auto Resolution.
This topic uses the following topic blocks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2040


<!-- page 2041 -->
• Contextual Search
• Create Incident

Repository Access
Users can request and gain access to a data repository manually, or choose from preloaded
available repositories.
This topic uses the Create Incident topic block.

RSA Token
Users can request an RSA token or report a problem with an RSA token. Users can also request
help with the setup of an RSA token.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2041


<!-- page 2042 -->
Troubleshoot Slow Computer
Users can request help associated with a slow computer, such as low RAM.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident

VPN Connectivity
Users can request help with connecting to VPN or setting up VPN to access business systems
from remote locations.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2042


<!-- page 2043 -->
Self-Service pre-built topics for ITSM Virtual Agent
Self-Service topic conversations are designed to give users to access IT-related information,
such as open or check IT ticket status, verify assigned equipment, and Knowledge Base search.

Book Conference Room EXO
Users can book a conference room in Microsoft Exchange Online using Virtual Agent.
Requirement: Microsoft Exchange Online spoke

(sn_ex_online_spke)

This topic uses the Create Incident topic block.
Basic flow:
1. User selects a city for the meeting.
The city must be configured as a room resource.
2. User selects number of attendees and start date and time.
3. User selects meeting duration.
By default, the minimum duration is 30 minutes.
4. Virtual Agent provides a list of available rooms.
Room availability lookup is done in batches of 10 rooms. Five rooms are displayed at a time,
with pagination through the lookup results.
5. User provides a meeting subject and can send the invitation to attendees if the user provides
email addresses.
6. User confirms meeting details, and the request is submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2043


<!-- page 2044 -->
Book Conference Room OnPrem
Users can book a conference room in on-premises Microsoft Exchange Server using Virtual
Agent.
Requirement: Microsoft Exchange Server spoke (sn_exchange_spoke)
This topic uses the Create Incident topic block.
Basic flow:
1. User selects a city for the meeting.
The city must be configured as a room resource.
2. User selects number of attendees and start date and time.
3. User selects meeting duration.
By default, the minimum duration is 30 minutes.
4. Virtual Agent provides a list of available rooms.
Room availability lookup is done in batches of 50 rooms. Five rooms are displayed at a time,
with pagination through the lookup results.
5. User provides a meeting subject and can send the invitation to attendees if the user provides
email addresses.
6. User confirms meeting details, and the request is submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2044


<!-- page 2045 -->
Check IT Ticket Status
Users can check the status of active IT tickets (incidents or requests). When a user asks about
a ticket status, Virtual Agent responds with a list of all active tickets for that user. Each ticket
includes a link to the incident or request, the item, the status (Stage), and when it was updated.
Users can add comments and also ask to chat with a live agent.

Check Ticket and Support Status
Users can search for an incident, a customer case, or an HR ticket by the ticket number, short
description, or description. A search using the short description or description shows the ticket
updated within the past month.

Escalate IT Ticket
Users can raise the urgency of an IT ticket for a faster resolution. Escalating a ticket priority
requires choosing the incident and verifying the escalation. Users must provide a justification to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2045


<!-- page 2046 -->
escalate the incident. Virtual Agent escalates the incident to the next urgency level, for example,
from low to medium, or from medium to high. If an incident is already at high-level urgency, Virtual
Agent alerts the user to this and asks if the user would like to add a comment to help expedite
resolution.

Get Password Reset Link (deprecated)
This topic is deprecated. Use Reset Password instead.
Users can access a password reset link when system lockout occurs or when passwords are
forgotten. When a user enters keywords related to password reset, Virtual Agent provides a link
to the password reset process. If a user is not authenticated in the system, Virtual Agent requests
the user's email address. If a user is not enrolled in Password Reset, Virtual Agent provides a link
to Password Enrollment.

Note: An admin must properly configure the password reset process with a valid
verification type for this topic to work as described. For details, see Configure your
Password Reset process .

Get Zoom Meeting Recording
Users can get a recording of a Zoom meeting that they hosted in Microsoft Exchange Online.
Requirements:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2046


<!-- page 2047 -->
• Microsoft Exchange Online spoke

(com.sn.msexchange.spoke)

• Zoom spoke (com.sn.zoom.spoke)
• User email address must be configured in the User [sys_user] table
• User email address must match the address in Microsoft Exchange Online and Zoom
This topic uses the Create Incident topic block.
Basic flow:
1. User enters when the meeting took place.
2. Virtual Agent returns a list of possible meetings.
3. User selects the desired meeting.
4. Virtual Agent sends a link to the recording.
If the recording has a passcode enabled, the email includes the passcode.
The user can also share the recording with the meeting invitees or to a list of emails. If the host
shares the meeting link, recipients receive an email notification.

My Assigned Equipment
Users can view a list of all assigned equipment, such as laptops, mobile phones, and monitors.
Clicking an item link provides additional details about the asset. Users can also create an assetrelated incident directly within the conversation. Opening an incident from this conversation
initiates the Open IT Ticket conversation topic by using the Create Incident topic block.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2047


<!-- page 2048 -->
Open IT Ticket (deprecated)
This topic is deprecated. Use Open IT Ticket 2.0 instead.

Note: This conversation topic is refactored to use the Create Incident topic block.
Users can open an incident or access relevant knowledge base articles to resolve an issue. After
typing keywords, such as open ticket or incident, Virtual Agent prompts the user to enter
a short description of the issue. Virtual Agent returns links to relevant knowledge base articles
and asks if an article resolved the issue. If it did not, Virtual Agent asks for the urgency of the
issue and creates an incident, providing a link to the actual incident.
This topic uses the following topic blocks:
• Contextual Search
• Create Incident
When creating an incident, if you also want to create an associated Universal Request and
display the Universal Request card in Virtual Agent instead of the incident, the Universal Request
plugin
(com.snc.universal_request) must be active, and the Create Universal Request with
incident system property (com.snc.create_universal_request_with_incident)
must be set to Yes (the default is Yes).

Note: Locate the property within the Incident Properties module, in the Incident VA

Conversation category. Users with the itil_admin role have read and write permissions.

Open IT Ticket 2.0
This topic is recommended to create an IT incident. Users can leverage machine-learning
algorithms with application logic for predicting similar open tickets. Prevent users from opening
duplicate incidents by finding similar incidents and asking if the user wants to add comments to
the similar incident.
Requirement: Predictive Intelligence for Incident plugin (com.snc.incident.ml)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2048


<!-- page 2049 -->
This topic uses the following topic blocks:
• Add Comments-Similar Incident
• Contextual Search
• Create Incident
This topic was formerly called Intelligent Open IT Ticket. Both the Open IT Ticket and Report IT
issue topics have been deprecated and replaced with this topic. If you have been using any of
these three topics directly prior to the ITSM Virtual Agent Conversations version 5.6 release,
the deprecated topic name will display in the portal and must be updated. To update to the new
template, navigate to All > Conversational Interfaces > Virtual Agent > Designer. Duplicate the
Open IT Ticket 2.0 topic, save it, and then select Publish.

Process Approval
Users with the approver_user role can access active approval requests. Virtual Agent returns all
active approvals as a list. Users click an approval to access the actual approval record to approve
or reject.

Service Disruptions
Users can access all known outage information. When a user asks if a particular system is down,
Virtual Agent returns a list of links displaying planned or unplanned outages and any system
degradations. Users can click the links for more detailed information about a specific outage or
degradation, as well as click Show more when additional outages are known.

Set OOO reply Exchange Server
Users can set an automatic out-of-office reply for Microsoft Exchange Server using Virtual Agent.
The user selects the start and end time using their current local time zone. This topic recognizes
date-range entities and intents. The message is hard-coded and is the same for internal and
external recipients.
Requirement: Microsoft Exchange Server spoke (sn_exchange_spoke)
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2049


<!-- page 2050 -->
Submit a request (deprecated)

Note: While you can use the Submit a request topic to search for and request catalog
items, the recommended method is to use the Fallback setup topic

.

Users can submit a request by choosing from all available options. For example, when a user is
requesting an item, the Virtual Agent prompts the user to enter a search keyword. After the user
enters the keyword, Virtual Agent responds with available choices in a carousel view.
This topic uses the following Service Catalog topic blocks

:

• Request Catalog Item
• Search Catalog Item
When the user selects the required item, the following scenarios are possible:
• A user can submit a request in the conversation mode (by answering the questions in line).
After the request submission, a requested item card is displayed with the request number as a

link to the request page.

Note: In Now® Mobile, the URL opens the native screen.
• A user can submit a request in a popup or a window.
◦ In case of a popup, Virtual Agent provides a link for the user to submit the request in a popup
without navigating to a new tab. A non-conversational catalog item can be rendered as a
popup only if it does not have any Custom, Custom with label, or UI Page variables. For more
information, see Service Catalog topic blocks in Virtual Agent .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2050


<!-- page 2051 -->
◦ In case of a window, Virtual Agent provides a link for the user
to submit the request in the Service Portal defined in the

sn_itsm_va.com.snc.itsm.virtualagent.portal_url property. A nonconversational item will be rendered as a window it has a Custom, Custom with label, or UI
Page variable. For more information, see Service Catalog topic blocks in Virtual Agent .

Note: Now Mobile opens the item in Mobile Employee Service Portal (mesp).

Walk-up Check-in
®

Users can check into a ServiceNow Walk-up Experience location and secure a place in the
queue, or they can schedule an appointment at a walk-up location for themselves. Users can also
schedule an appointment on behalf of someone else.
Requirement: Walk-up Experience plugin (com.snc.walkup)
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2051


<!-- page 2052 -->
Virtual Agent Academy: Get service faster with Virtual Agent and Walk-Up Experience
from the Virtual Agent Academy)

(video

Windows 365 Cloud PC
Users can request a Microsoft 365 Cloud PC for themselves through a Virtual Agent
conversation. The provisioning is reviewed by the user's manager.
Requirements:
• Microsoft Azure Active Directory spoke

(com.sn.azure_ad.spoke)
®

• Integration with the Microsoft service via ServiceNow Integration Hub and Workflow Studio
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2052


<!-- page 2053 -->
Citrix session pre-built topics for ITSM Virtual Agent
Users can reset any Citrix desktop or application session using Virtual Agent conversation flows.
Users can also provision a Citrix desktop or application.
Natural Language Understanding (NLU) is used to identify and trigger the Citrix action that a user
wants to perform.
Requirement: Citrix IT Service Management Connector

(x_cion_citrix_it_s)

Learn how the Citrix ITSM plug-in for ServiceNow can help your team easily deliver a first class
experience to your end users, provide a new level of end user self-service, and free up valuable
time for your IT team to focus on higher impact work.

Provision Citrix Desktop/Apps
Virtual Agent can provision a Citrix desktop or an application directly from a conversation. The
user selects the session type. When requesting a desktop, Virtual Agent asks for the OS and
returns the requested item details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2053


<!-- page 2054 -->
When requesting an application, Virtual Agent sends a link to the Service Portal, where the user
can submit the request.

Virtual Agent sends an actionable notification to the user to inform them once the desktop or
application has been provisioned, or if the provisioning was unsuccessful.
This topic uses the Request Catalog Item Service Catalog topic block

.

Reset Citrix Sessions
Virtual Agent provides a list of possible sessions to reset, and the user can choose to reset an
individual session or all sessions at once.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2054


<!-- page 2055 -->
If the user does not have any sessions available to reset, Virtual Agent can open an Incident on
behalf of the user.

This topic uses the Create Incident topic block.

Password management topics for ITSM Virtual Agent
End users can perform password reset, password change, and account unlock actions using
Virtual Agent conversations.
End users can initiate a password management conversation with Virtual Agent by entering the
keywords Reset, Change, Unlock, or Password.
Users who are not logged in can perform the Reset Password and Unlock Account actions. Users
who are logged in can perform the Change Password, Reset Password, and Unlock Password
actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2055


<!-- page 2056 -->
Requirements:
• Password Reset (com.glideapp.password_reset) plugin
• Password Reset Virtual Agent Conversations (com.snc.password_reset.virtual_agent) plugin

Note: In order for the password reset process to be available in Virtual Agent, ensure

that you selected the Enabled on Virtual Agent check box in the Password Reset process
configuration page.
For more information about the password reset process, see Password Reset for Virtual Agent

.

Verification options for password reset in Virtual Agent conversations
The following identity verification options are supported in Virtual Agent conversations. Custom
verifications are not supported in Virtual Agent.
• Personal data verification: User provides specific pieces of personal data.
• Google Authenticator verification: User enters the generated code from the Google service
Authenticator mobile app.
• SMS code verification: User enters the code received via mobile text message.
• Email code verification: User enters the code received via email.
• Security question verification: User enters the configured security question answers.
For more information, see Configure your Password Reset process

.

Change Password
Users can request to change their user password.
This topic uses the Display Password Reset URLs topic block.
Basic flow:
1. Virtual Agent asks the user to input their current password.
2. If the current password matches, the user can enter a new password.
3. Virtual Agent displays the password rules.
4. If the user provides a password that meets the password requirements, Virtual Agent updates
the password.
5. If the user does not enter a valid password, the user must reenter the password.​

Reset Password
Users can request to reset their user password.
This topic uses the Display Password Reset URLs topic block.
Basic flow:
1. Virtual Agent sends identity verification information to the end user, based on the password
reset process configuration.
2. If the user successfully verifies their identity with the given inputs, Virtual Agent provides the
reset steps.
3. Virtual Agent displays the password rules.
4. The user enters a new password, adhering to the password rules.​
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2056


<!-- page 2057 -->
5. If the password does not meet the criteria, Virtual Agent prompts the user to reenter the
password.
6. Once the password meets the criteria, Virtual Agent resets the password.

Unlock Account
Users can request to verify their locked user account.
This topic uses the Display Password Reset URLs topic block.
Basic flow:
1. Virtual Agent sends identity verification information to the end user, based on the password
reset process configuration.
2. If the user successfully verifies their identity with the given inputs, Virtual Agent provides the
verification information.
3. Once the user has been identified and verified, Virtual Agent unlocks the user's account.

Microsoft Office 365 Group pre-built topics for ITSM Virtual Agent
ITSM Virtual Agent helps you manage Microsoft Office 365 Groups using actions in conversation
flows.
Natural Language Understanding (NLU) is used to identify and trigger the Microsoft Office 365
Group action that a user wants to perform.
Requirement: Microsoft Azure AD spoke

(com.sn.azure_ad.spoke) plugin

Note: If the Microsoft Office 365 topics are duplicated in a different scope than ITSM VA
Conversations, script logic can be affected and cause errors.

Add Owner to Office 365 Group
Group Owners can add other users as Group Owners by providing the group name and the user
email addresses to add.
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2057


<!-- page 2058 -->
Add User to Office 365 Group
Group owners can add themselves or other users to a Microsoft Office 365 group by providing
the group name and the email address of one or more users to add.
This topic uses the Create Incident topic block.

Create Office 365 Group
Users can create a group in Microsoft Office 365 by providing the following information:
• Group privacy
• Group email alias
• Outlook display name
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2058


<!-- page 2059 -->
• Group description
• Owners and members (optional)
The current user is automatically added as the Group Owner, along with any other specified
users.
This topic uses the Create Incident topic block.

Get Office 365 Group Details
Group members can get group details by providing the name or email of the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2059


<!-- page 2060 -->
Remove Office 365 group Owner
Group Owners can remove themselves or other Group Owners by providing the group name and
the user email addresses to remove.
This topic uses the Create Incident topic block.

Remove Office 365 group Users
Users can remove themselves from a Microsoft Entra ID group. Group owners can remove other
users from a group. Provide the group name and user email addresses to remove.
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2060


<!-- page 2061 -->
Microsoft Active Directory pre-built topics for ITSM Virtual Agent
ITSM Virtual Agent helps you manage Microsoft Active Directory distribution lists using actions
in conversation flows.
Natural Language Understanding (NLU) is used to identify and trigger the Microsoft Active
Directory Group action that a user wants to perform.
Requirement: Microsoft AD spoke

for Integration Hub (com.sn.ad.spoke) plugin

Note: If the Microsoft Active Directory topics are duplicated in a different scope than ITSM
Virtual Agent conversations, script logic can be affected and cause errors.

Add User to AD Group
Group owners can add themselves or other users to a Microsoft Active Directory Group
distribution list by providing the group name and the email address or username of one or more
users to add.
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2061


<!-- page 2062 -->
Create AD Distribution Group
Users can create a Microsoft Active Directory distribution list by providing the following
information:
• Group name
• Group description
• Members (optional)
The current user is automatically added as the group owner. Distribution lists are always public.
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2062


<!-- page 2063 -->
Remove User from AD Group
Users can remove themselves from a Microsoft Active Directory Group distribution list. Group
owners can remove other users from a group. Provide the group name and username or email
addresses to remove.
This topic uses the Create Incident topic block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2063


<!-- page 2064 -->
Show My AD Group Membership
Group members can see a list of the Microsoft Active Directory distribution lists of which they are
currently a member or manager.​
This topic uses the Create Incident topic block.

Microsoft Exchange Online meeting management pre-built topic for ITSM
Virtual Agent
ITSM Virtual Agent helps you manage meetings in Microsoft Exchange Online. Using the
Manage Meetings EXO topic, you can schedule, reschedule, and cancel a meeting.

Manage Meetings EXO v1.0
Natural Language Understanding (NLU) is used to identify and trigger the meeting action that a
user wants to perform. Users can schedule, reschedule, or cancel a meeting.
Requirements:
• Microsoft Exchange Online spoke

(sn_ex_online_spke)

• Email addresses for meeting attendees must be configured in the User [sys_user] table to be
added to meeting invites
• Some actions can use the Microsoft Teams Communication spoke
to send meeting links to Microsoft Teams
• Some actions can use the Cisco Webex Teams spoke

(sn_msteams_com_spk)

(sn_cisco_teams_spk)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2064


<!-- page 2065 -->
• Some actions can use the Zoom spoke(com.sn.zoom.spoke) to add meeting links
• This topic uses the Employee Experience VA topic blocks

Note: If this topic is duplicated in a different scope than ITSM Virtual Agent
Conversations, script logic can be affected and cause errors. This topic must be duplicated
in the ITSM Virtual Agent Conversations scope.
Basic flow for scheduling a meeting:
1. User enters the email addresses for all attendees, the meeting time, and the meeting duration.
2. Virtual Agent provides a list of available meeting times, based on the calendars of the invitees.
3. User enters the meeting subject and description.
4. User can choose the type of meeting: virtual/online, conference room, or hybrid.
If the spokes are enabled on the instance, the user can add a meeting link for Microsoft Teams,
Webex, or Zoom.
5. Virtual Agent returns the meeting link (if applicable) and the meeting details.
6. User confirms that Virtual Agent should schedule the meeting.
7. Once the user confirms, Virtual Agent sends the email invitations and schedules the meeting.

Note: The user can also schedule a meeting through Virtual Agent using the Microsoft
Teams service.
Basic flow for canceling a meeting:
1. User enters the start and end date and time of the original meeting.
2. Virtual Agent returns a list of potential meetings to cancel.
3. User selects the desired meeting or can choose to cancel all meetings during the specified
duration.
4. Virtual Agent cancels all specified meetings and sends the user a confirmation email.
Basic flow for rescheduling a meeting:
1. User enters the original meeting date.
2. Virtual Agent returns a list of potential meetings to reschedule.
3. User selects the desired meeting.
4. User enters a new meeting time.
5. Virtual Agent confirms that the meeting has been rescheduled.
6. User can reschedule additional meetings, if desired.

Manage Meetings EXO (deprecated)
This topic is deprecated. Use Manage Meetings EXO v1.0 instead.
Requirements:
• Microsoft Exchange Online spoke
• Email addresses for meeting attendees must be configured in the User [sys_user] table to be
added to meeting invites

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2065


<!-- page 2066 -->
• Some actions can use the Zoom spoke(com.sn.zoom.spoke) to add meeting links
• Some actions can use the Microsoft Teams Communication spoke
to send meeting links to Microsoft Teams

(sn_msteams_com_spk)

Note: If this topic is duplicated in a different scope than ITSM Virtual Agent
Conversations, script logic can be affected and cause errors. This topic must be duplicated
in the ITSM Virtual Agent Conversations scope.
Basic flow for scheduling a meeting:
1. User enters the email addresses for all attendees, the meeting time, and the meeting duration.
2. Virtual Agent provides a list of available meeting times, based on the calendars of the invitees.
3. User enters the meeting subject and description.
4. If the admin configured the script variable default_collaboration_software and the
appropriate spoke is enabled on the instance, the user can add a Zoom link or a Microsoft
Teams link.
5. Virtual Agent returns the meeting link (if applicable) and the meeting details.
6. User confirms that Virtual Agent should schedule the meeting.
7. Once the user confirms, Virtual Agent sends the email invitations and schedules the meeting.

Note: The user can also schedule a meeting through Virtual Agent using the Microsoft
Teams service.
Basic flow for canceling a meeting:
1. User enters the start and end date and time of the original meeting.
2. Virtual Agent returns a list of potential meetings to cancel.
3. User selects the desired meeting or can choose to cancel all meetings during the specified
duration.
4. Virtual Agent cancels all specified meetings and sends the user a confirmation email.
Basic flow for rescheduling a meeting:
1. User enters the original meeting date.
2. Virtual Agent returns a list of potential meetings to reschedule.
3. User selects the desired meeting.
4. User enters a new meeting time.
5. Virtual Agent confirms that the meeting has been rescheduled.
6. User can reschedule additional meetings, if desired.

Microsoft Exchange Server meeting management pre-built topics for ITSM
Virtual Agent
ITSM Virtual Agent helps you manage meetings in Microsoft Exchange Server. Using the Manage
Meetings EXS topic, you can schedule, reschedule, and cancel a meeting.

Manage Meetings EXS
Natural Language Understanding (NLU) is used to identify and trigger the meeting action that a
user wants to perform. Users can schedule, reschedule, or cancel a meeting.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2066


<!-- page 2067 -->
Requirements:
• Microsoft Exchange Server spoke (sn_exchange_spoke)
• Email addresses for meeting attendees must be configured in the User [sys_user] table to be
added to meeting invites
• Some topics can use the Zoom spoke to add meeting links

Note: If these topics are duplicated in a different scope than ITSM Virtual Agent
Conversations, script logic can be affected and cause errors. This topic must be duplicated
in the ITSM Virtual Agent Conversations scope.

Manage Meetings EXS: Cancel a meeting
Users can send a message to Virtual Agent requesting to cancel a meeting, or users can select
the desired template and select Cancel Meeting.
Basic flow:
1. User enters the start and end date and time of the original meeting.
2. Virtual Agent returns a list of potential meetings to cancel.
3. User selects the desired meeting or can choose to cancel all meetings during the specified
duration.
4. Virtual Agent cancels the meetings, sends an email to all attendees, and updates the calendar.

Manage Meetings EXS: Reschedule a meeting
Users can send a message to Virtual Agent requesting to reschedule a meeting, or the user can
select the desired template and select Reschedule Meeting.
Basic flow:
1. User enters the original meeting date.
2. Virtual Agent returns a list of potential meetings to reschedule.
3. User selects the desired meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2067


<!-- page 2068 -->
4. User enters a new meeting time.
5. Virtual Agent reschedules the meeting, emails the attendees, and updates the calendar.
Virtual Agent reschedules the meeting, emails the attendees, and updates the calendar.

Manage Meetings EXS: Schedule a meeting
Users can send a message to Virtual Agent requesting to schedule a meeting, or the user can
select the desired template and select Set up Meeting.
Basic flow:
1. User enters the email addresses for all attendees, the meeting time, and the meeting duration.
2. Virtual Agent provides a list of available meeting times, based on the calendars of the invitees.
3. User enters the meeting subject and description.
4. Virtual Agent returns the meeting details.
5. User confirms that Virtual Agent should schedule the meeting.
6. Once the user confirms, Virtual Agent sends the email invitations and schedules the meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2068


<!-- page 2069 -->
Virtual machine pre-built topics for ITSM Virtual Agent
ITSM Virtual Agent helps you manage a virtual machine (VM) using conversation flows. With this
conversation flow, you can start, stop, terminate, describe, and provision a virtual machine.
There are two categories of virtual machine management topics:
Topics that support AWS and Azure providers
Topics that are labeled CAI use the Cloud Access Interface to take action
on virtual machines provisioned on AWS and Azure. The user must have the
sn_managevm_va.cai_vm_user role to perform these actions. The Virtual Agent
admin can set the script variable max_records (default value=100) to denote
the number of records to be fetched from Azure in a single REST API call. The script
variable carousel_entries_threshold denotes the number of records the
carousel input shows. If the number of records are greater than the specified value,
a reference choice list is shown to the user.
Cloud Provisioning and Governance is not required to describe, start, stop, and
terminate a VM for AWS and Azure. You can perform the following actions with the
Cloud Access Interface (CAI) topics for Virtual Agent:
• Start a Virtual Machine CAI
• Stop a Virtual Machine CAI
• Terminate a Virtual Machine CAI
• Describe a Virtual Machine CAI
Topics that use the Cloud Provisioning and Governance plugin

(com.snc.cloud.mgmt)

The following topics integrate with Cloud Provisioning and Governance (required):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2069


<!-- page 2070 -->
• Manage Virtual Machine
• Provision Virtual Machine

Describe Virtual Machine CAI
Users can see details of any assigned VM instance associated with the credential set up by
the system administrator. If AWS encounters an error, Virtual Agent asks the user to create an
incident for further investigation.
Returned details include Provider, Region, and Instance ID. The user can specify which VM to
describe, or Virtual Agent can provide a list of available VM instances and the user can select the
desired VM to describe.
Requirement: User must have the sn_managevm_va.cai_vm_user role to perform these actions.
This topic uses the following topic blocks:
• Virtual Machine Operation AWS
• Virtual Machine Operation Azure

Manage Virtual Machine
This topic calls the appropriate topic block (describe, start, stop, and terminate) to complete an
end-to-end fulfillment of the request.
This topic calls the appropriate topic block (describe, start, stop, and terminate) to complete an
end-to-end fulfillment of the request. This pre-built topic is read-only. Duplicate the topic in the
Virtual Machine Management for Virtual Agent scope and activate it to use the conversation flow.
Requirement: Cloud Provisioning and Governance plugin

(com.snc.cloud.mgmt)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2070


<!-- page 2071 -->
This topic uses the following topic blocks:
• Describe Virtual Machine
• Start Virtual Machine
• Stop Virtual Machine
• Terminate Virtual Machine

Provision Virtual Machine
Users can request a new VM in a Virtual Agent conversation. Virtual Agent sends a link to the
Cloud User Portal to submit the catalog item.
Requirement: Cloud Provisioning and Governance plugin

(com.snc.cloud.mgmt)

Basic flow:
1. User requests a virtual machine.
2. Virtual Agent does one of the following:
◦ Provides a link to the Cloud User Portal
the catalog.

, along with instructions for requesting a VM from

◦ Displays items in the VM catalog that are assigned to the user.
If the user can't find the desired catalog item, the user can either go directly to the Cloud
User Portal or end the conversation.

Start Virtual Machine CAI
Users can start any assigned virtual machine instance associated with their credentials set up
by the system administrator. If AWS encounters an error, Virtual Agent asks the user to create an
incident for further investigation.
Requirement: User must have the sn_managevm_va.cai_vm_user role to perform these actions.
This topic uses the following topic blocks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2071


<!-- page 2072 -->
• Virtual Machine Operation AWS
• Virtual Machine Operation Azure
Basic flow:
1. User specifies which VM to start, or Virtual Agent provides a list of available VM instances for
the user to choose from.
2. Virtual Agent sends the user an actionable notification when the requested VM starts.
3. User can choose to see details, request additional instructions to log in to the virtual machine,
or skip the notification.
Virtual Agent also notifies the user if the operation was unsuccessful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2072


<!-- page 2073 -->
Stop Virtual Machine CAI
Users can stop any assigned VM instance associated with the credentials set up by the system
administrator. If AWS encounters an error, Virtual Agent asks the user to create an incident for
further investigation.
Requirement: User must have the sn_managevm_va.cai_vm_user role to perform these actions.
This topic uses the following topic blocks:
• Virtual Machine Operation AWS
• Virtual Machine Operation Azure
Basic flow:
1. User specifies which VM to stop, or Virtual Agent provides a list of available VM instances for
the user to choose from.
2. Virtual Agent sends the user an actionable notification when the requested VM stops.
3. User can choose to see details, request additional instructions to log in to the virtual machine,
or skip the notification.
Virtual Agent also notifies the user if the operation was unsuccessful.

Terminate Virtual Machine CAI
Users can terminate any assigned virtual machine instance associated with the credential set up
by the system administrator. Because termination is a permanent action, Virtual Agent displays
the VM details and asks for confirmation. If AWS encounters an error, Virtual Agent asks the user
to create an incident for further investigation.
Requirement: User must have the sn_managevm_va.cai_vm_user role to perform these actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2073


<!-- page 2074 -->
This topic uses the following topic blocks:
• Virtual Machine Operation AWS
• Virtual Machine Operation Azure

Pre-built setup topics for Virtual Agent
Use pre-built setup topics to create a standard welcome greeting and a conversation closing. In
addition, setup topics can provide user feedback and surveys, as well as error handling.
For more information about setup topics, see Setting up chat experiences for Virtual Agent
users .
For a complete list of setup topics that are included with Virtual Agent, see Working with setup
topics .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2074


<!-- page 2075 -->
Dynamic Greeting Topic
Users receive a dynamic, time-based greeting at the beginning of a conversation from a virtual
agent. The greeting includes addressing the user by first name with the time of day, referencing
any incident or request the user may have open, and mentioning outage information if an outage
is occurring or planned. For example:
"Good morning, John. You currently have [x] incidents and [x] requests open. We are aware of
[outage] with [service] that began at [start time]".
When the end time is known, the virtual agent includes the message:
"The [outage] is planned to end at [end time]".

Note: If there are no incidents, requests, or outages these messages do not display.
The dynamic greeting is followed by the standard greeting, which asks the user to enter
information.
For more information about configuring the greeting setup topic, see Change the Virtual Agent
greeting messages in the Greeting setup topic .

Fulfiller pre-built topics for ITSM Virtual Agent
Fulfiller topic conversations are designed specifically for ITSM professionals with the itil role.
These pre-built topics include resolving an incident, creating a problem, and updating data in the
system.

Create Change Request
Users with the itil role can create change requests using their client of choice, such as Slack.
Users indicate the type of change request (Normal, Standard, or Emergency). Change type
definitions are provided by the virtual agent.
For normal and emergency change requests, Virtual Agent prompts the user to enter the
following criteria:
• Short description
• Justification
• Configuration item
• Assignment group
• Planned start date
• Planned end date
For standard change requests, Virtual Agent sends a carousel link to a catalog of standard
change items. After the user selects an item, Virtual Agent provides a link to open the associated
category page to request the change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2075


<!-- page 2076 -->
Create Problem
Users with the itil role can create problem records. Users provide a description of the problem
and specify the urgency and the impact of the problem. Users must know and enter the
associated problematic configuration item as well.

Identify Available Change Windows
Users with the itil role can check the next available change window for a configuration item. For
example, you can determine the next available change window for a specific asset assigned to a
user, regarding maintenance or black-out calendars. Users must enter the configuration item to
check, such as PROmonitor, and then select a planned start and end date and time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2076


<!-- page 2077 -->
Identify Scheduled Changes
Users with the itil role can find upcoming change requests for a specific configuration item (CI).
To see the change requests, users must type in the name of the configuration item that contains
the changes.

Resolve Incident
Users with the itil role can resolve an incident through support chat by providing a close code, for
example, Solved (Permanently) or Solved (Workaround), and resolution notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2077


<!-- page 2078 -->
Update Assigned Task
Users with the itil role can update comments or work notes in assigned tasks. When a user wants
to update a task, the virtual agent returns a list of all assigned tasks and asks which task the user
wants to update. Users can select a single listed task to update or select All to load and update
all assigned tasks. The virtual agent then asks if the user wants to add a comment, a work note,
or both. Optionally, users can cancel the update.

Update Change Request
Users with the itil role can update the actual start and end time of a change, as well as move it to
work in progress or closed states.

Reusable ITSM Virtual Agent pre-built topic blocks
Reuse topic blocks to perform common functions in ITSM Virtual Agent conversations, such as
creating an incident or performing a search.
Use the Type list on the Topics page in Virtual Agent Designer to sort by Topic Blocks. For
detailed information about topic blocks, see Maximizing code reuse with topic blocks .
ITSM Virtual Agent provides the following pre-built topic blocks and templates.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2078


<!-- page 2079 -->
Note: Many of these topic blocks are available with the Service Management Virtual
Agent Topic Blocks plugin (com.glideapp.cs.sm_topic_blocks). For more information about
plugins, see ServiceNow Plugins

Contextual Search
Contextual Search topic block input and output parameters
Name

Description

Input parameters
context

The sys_id of a Search Context (cxs_context_config) record. Defines
what sources are included in the search. For example, sources can
include the knowledge base or community.

query

The search keyword entered by a user during a virtual agent
conversation.

portal

The portal from which the conversation initiated, such as a service portal
or human resources portal.
This portal is the URL suffix, such as sp, esc, csm, and hr, from which the
search results open.

kb_knowledge_base The sys_id of a Knowledge Base (kb_knowledge_base) record.
Within context, search only these knowledge base articles.
Output parameters
results_returned

True if search results are found, otherwise false.

results_helpful

True if user responds that search results are helpful, otherwise false.

Create Incident
This topic block initiates the Open IT Ticket conversation topic.
Create Incident topic block input and output parameters
Name

Description

Input parameters
caller

The name of the user creating an Incident (incident) record.

short_description

The short description entered in the Incident (incident) record.

urgency

The urgency level indicated in the Incident (incident) record.

description

The description entered in the Incident (incident) record.

cmdb_ci

CMDB configuration item.

Output parameters
created_incident_sys_id

The return sys_id of a newly created incident.

Create MS Teams Meeting Link (deprecated)
This topic block is deprecated. Use Get MS Teams Meeting Link instead.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2079


<!-- page 2080 -->
Users can request a Microsoft Teams meeting link using Virtual Agent. This topic block can
be included in other topics. By default, this topic block runs in silent mode, and the output
messages are not displayed.
Requirement: Microsoft Teams Communication spoke

(sn_msteams_com_spk) plugin

Create Zoom Meeting Link
For more actions, the Zoom Meeting Actions topic block is also available.
Users can request a Zoom meeting link using Virtual Agent. This topic block can be included in
other topics. By default, this topic block runs in silent mode, and the output messages are not
displayed.
Requirement: Zoom spoke(com.sn.zoom.spoke) plugin

Describe Virtual Machine
Users can get details on any assigned virtual machine (VM) instance using the Manage Virtual
Machine topic in Virtual Agent. Details include Provider, Region, Instance ID, and so forth.
Basic flow:
1. User specifies which VM to describe, or Virtual Agent provides a list of available VM instances
for the user to choose from.
2. Virtual Agent provides the requested virtual machine details.
3. To get additional details, users can select the link provided, which redirects them to the Cloud
User Portal .

Describe Virtual Machine topic block input and output parameters
Name

Description

Input parameter:

Name of the virtual machine instance.

vm_name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2080


<!-- page 2081 -->
Describe Virtual Machine topic block input and output parameters (continued)
Name

Description

Input parameter:

Sys ID of the virtual machine instance in the cmdb_ci_vm_instance
table.

vm_sys_id
Output parameter:

Short description for the Incident record, if one is recorded.

incident_short_description

Display Password Reset URLs
If Password Reset is enabled on Virtual Agent, and the user has been authenticated, this topic
block returns a password reset link. If Password Reset is not enabled, the user is directed to the
service desk.
This topic block as one input parameter: unlock_account. If the user has been
authenticated, the value is true. Otherwise, the value is false.
For more information, see Password Reset for Virtual Agent

.

This topic block has one input parameter: unlock_account. If the user has been
authenticated, the value is true. Otherwise, the value is false.

Request Catalog Item
For information about this topic block, see Service Catalog topic blocks in Virtual Agent

.

Search Catalog Item
For information about this topic block, see Service Catalog topic blocks in Virtual Agent

.

Start Virtual Machine
Users can start any assigned VM instance using the Manage Virtual Machine topic. If the VM is
already on or in a state where it cannot be started, Virtual Agent notifies the user.
Basic flow:
1. User specifies which VM to start, or Virtual Agent provides a list of available VM instances for
the user to choose from.
2. Virtual Agent sends the user an actionable notification when the requested VM starts.
Virtual Agent also notifies the user if the operation was unsuccessful.
3. User can choose to see details, request additional instructions to log in to the virtual machine,
or skip the notification.
4. If the user requests additional login instructions, Virtual Agent provides these instructions and
the user can confirm if the login was successful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2081


<!-- page 2082 -->
Start Virtual Machine topic block input and output parameters
Name

Description

Input parameter:

Name of the virtual machine instance.

vm_name
Output parameter:

Short description for the Incident record, if one is recorded.

incident_short_description

Stop Virtual Machine
Users can stop any assigned VM instance using the Manage Virtual Machine topic. If the VM is
already off or is in a state where it cannot be stopped, Virtual Agent notifies the user.
Basic flow:
1. User specifies which VM to stop, or Virtual Agent provides a list of available VM instances for
the user to choose from.
2. Virtual Agent sends the user an actionable notification when the requested VM has stopped.
Virtual Agent also notifies the user if the operation was unsuccessful.
3. User can choose to see details or skip the notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2082


<!-- page 2083 -->
Stop Virtual Machine topic block input and output parameters
Name

Description

Input parameter:

Name of the virtual machine instance.

vm_name
Output parameter:

Short description for the Incident record, if one is recorded.

incident_short_description

Terminate Virtual Machine
Users can terminate any assigned virtual machine (VM) instance using the Manage Virtual
Machine topic. If the VM is already terminated or is in a state where it cannot be terminated,
Virtual Agent notifies the user.
Basic flow:
1. User specifies which VM to terminate, or Virtual Agent provides a list of available VM instances
for the user to choose from.
2. Virtual Agent provides the details of the requested VM to terminate.
3. Terminating a virtual machine is a permanent action, so the user must confirm the operation to
continue.
4. Virtual Agent sends the user an actionable notification when the requested virtual machine
has been terminated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2083


<!-- page 2084 -->
Terminate Virtual Machine topic block input and output parameters
Name

Description

Input parameter:

Name of the virtual machine instance.

vm_name
Output parameter:

Short description for the Incident record, if one is recorded.

incident_short_description

Troubleshoot Cisco Webex
Users can find a solution for common Webex issues. This topic block is used in the Collaboration
Applications topic.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2084


<!-- page 2085 -->
If the user is not satisfied with the static help content for the issue, the fallback is AI
search or contextual search. The type of search is dictated by the system property
sn_itsm_va.fallback_search_option.​
Troubleshoot Cisco Webex topic block input and output parameters
Name

Description

Input parameter
issue

The user application issue.

Output parameter
user_query

Problem string used for search fallback.

Troubleshoot Microsoft Teams
Users can find a solution for common Microsoft Teams issues. This topic block is used in the
Collaboration Applications topic.
If the user is not satisfied with the static help content for the issue, the fallback is AI
search or contextual search. The type of search is dictated by the system property
sn_itsm_va.fallback_search_option.​
Troubleshoot Microsoft Teams topic block input and output parameters
Name

Description

Input parameter
issue

The user application issue.

Output parameter
user_query

Problem string used for search fallback.

Troubleshoot Zoom
Users can find a solution for common Zoom issues. This topic block is used in the Collaboration
Applications topic.
If the user is not satisfied with the static help content for the issue, the fallback is AI
search or contextual search. The type of search is dictated by the system property
sn_itsm_va.fallback_search_option.​
Troubleshoot Zoom topic block input and output parameters
Name

Description

Input parameter
issue

The user application issue.

Output parameters
user_query

Problem string used for search fallback.

ticket_description

Problem string used to create an IT ticket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2085


<!-- page 2086 -->
Virtual Machine Operation AWS
Users can use the Cloud Access Interface to take action on virtual machines provisioned on
Amazon AWS. The user must have the sn_managevm_va.cai_vm_user role.
This topic block is used in the virtual machine management CAI pre-built topics. Available
actions include Stop, Start, Terminate, or Describe the virtual machine.

Virtual Machine Operation Azure
Users can use the Cloud Access Interface to take action on virtual machines provisioned on
Microsoft Azure. The user must have the sn_managevm_va.cai_vm_user role.
This topic block is used in the virtual machine management CAI pre-built topics. Available
actions include Stop, Start, Terminate, or Describe the virtual machine.
Employee Experience topic blocks
ITSM Virtual Agent helps you manage meetings in Microsoft Exchange Online. Using the Manage
Meetings EXO v1.0 topic, you can schedule, reschedule, and cancel a meeting.
Use the Category list on the Topics page in Virtual Agent Designer to sort by Self Service to view
all Employee Experience topics blocks.
For detailed information about topic blocks, see Maximizing code reuse with topic blocks

.

Cancel Meeting EXO
Users can send a message to Virtual Agent requesting to cancel a meeting.
Cancel a Meeting EXO topic block input and output parameters
Name

Description

Input parameters
Start Date Time

Start date and time of the meeting in UTC.

End Date Time

End date and time of the meeting in UTC.

Output parameters
status

Returns a cancel status for the meeting.

status_code

Returns one of the following status codes for the meeting:
• MEETING_CANCELLED
• TECHNICAL_ISSUE
• INFORMATION_PROVIDED

Conference Room Availability
Users can choose an available conference room for their meeting.
Conference Room Availability topic block input and output parameters
Name

Description

Input parameters
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2086


<!-- page 2087 -->
Conference Room Availability topic block input and output parameters (continued)
Name

Description

Room Location

Location of the conference room.

Room Capacity

Number of people the conference room holds.

Start Date Time

Start date and time of the meeting in UTC.

Duration

Duration of the meeting in minutes. Values increment by 15 minute
segments, from 15 to 1440 (1 day).

Output parameters
selected_room_info Name of the selected conference room.
booking_info

JSON string denoting additional booking information (location, start time,
and duration of meeting).

status

Returns the status for the meeting.

status_code

Returns one of the following status codes for the meeting:
• NO_EMAIL_FOUND
• TECHNICAL_ISSUE
• INVALID_SCHEDULE_INFO
• INVALID_EMAIL
• NO_ROOMS_AVAILABLE
• ROOMS_SELECTED
• ROOMS_VIEWED

Get MS Teams Meeting Link
If the Microsoft Teams Communication spoke
(sn_msteams_com_spk) is installed on the
instance, users can send a Microsoft Teams meeting link with their invitation.
Get MS Teams Meeting Link topic block input and output parameters
Name

Description

Input parameters
email_id

Email address of the meeting organizer.

meeting_subject

Subject of the meeting.

silent_mode

Determines whether the topic block produces a message output.
When the value is true, the topic block doesn't produce an output
message.

service_user_azure

Service account Azure ID for the user. This will be used to initiate the
meeting in Microsoft Teams meetings. Use a script variable to pass the
user ID.

Output parameters
url

Microsoft Teams meeting URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2087


<!-- page 2088 -->
Get MS Teams Meeting Link topic block input and output parameters (continued)
Name

Description

meeting_id

Microsoft Teams meeting ID.

output_status

Indicates whether the action was successfully completed.

output_error_message Error message indicating that the meeting link didn't get generated.

Reschedule a Meeting EXO
Users can send a message to Virtual Agent requesting to reschedule a meeting, or the user can
select the desired template and select Reschedule Meeting.
Reschedule a Meeting EXO topic block input and output parameters
Name

Description

Input parameters
Start Date
Time

Current start date and time of the meeting in UTC.

End Date
Time

Current end date and time of the meeting in UTC.

Rescheduled
Date

New date and time of the meeting in UTC.

Duration

Duration of the meeting in minutes. Values increment by 15 minute segments,
from 15 to 1440 (1 day).

Output parameters
status

Returns a rescheduled status for the meeting.

status_code

Returns one of the following status codes for the meeting:
• MEETING_RESCHEDULED
• TECHNICAL_ISSUE
• INFORMATION_PROVIDED

Schedule a Meeting EXO
Users can send a message to Virtual Agent requesting to schedule a meeting, or the user can
select the desired template and select Set up meeting.
Schedule a Meeting EXO topic block input and output parameters
Name

Description

Input parameters
Attendees

Email addresses of the people invited to the meeting. Multiple attendee email
addresses are separated by a comma.

Subject

Subject of the meeting.

Meeting Date

Start date of the meeting in the user's time zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2088


<!-- page 2089 -->
Schedule a Meeting EXO topic block input and output parameters (continued)
Name

Description

Meeting Time

Time of day for the meeting in minutes.
For example, for 11:26 pm, the value is 1406.

Duration

Duration of the meeting in minutes. Values increment by 15 minute segments,
from 15 to 1440 (1 day).

Resource
Type

Resources required for the meeting. Values include:
• Virtual: Requires conferencing software, such as Zoom.
• Conference: Requires a room to be booked.
• Hybrid: Requires both conferencing software and a room.
• None: No additional resources required.

Meeting
Application

Conferencing software tool for the meeting. Values include:
• Teams
• Webex
• Zoom
• None

Body

Meeting agenda.

Service User
Azure ID

Service account Azure ID for the user in Microsoft Teams meetings.

Output parameters
event_id

ID for the scheduled meeting.

status

Returns the status for the meeting.

status_code

Returns one of the following status codes for the meeting:
• MEETING_SCHEDULED
• TECHNICAL_ISSUE
• NO_MEETING_SELECTED

Webex Meeting Actions
If the Cisco Webex Teams spoke
(sn_cisco_teams_spk) is installed on the instance, users can
send a Webex meeting link with their invitation.
Webex Meeting Actions topic block input and output parameters
Name

Description

Input parameters
Action

The Webex action for the meeting. Values include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2089


<!-- page 2090 -->
Webex Meeting Actions topic block input and output parameters (continued)
Name

Description

• Schedule
• Reschedule
• Cancel
Start Date
Time

Current start date and time of the meeting in UTC.

Duration

Duration of the meeting in minutes. Values increment by 15 minute segments,
from 15 to 1440 (1 day).

User ID

Email address or user ID of the meeting organizer.

Meeting
subject

Subject of the meeting.

Agenda

Meeting agenda.

Meeting URL

Join URL for the virtual meeting.

Meeting
Invitees

Email addresses of the invited users, separated by commas.

Output parameters
meeting_url

Join URL for the virtual meeting.

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

Zoom Meeting Actions
If the Zoom spoke(com.sn.zoom.spoke) is installed on the instance, users can send a Zoom
meeting link with their invitation.
Zoom Meeting Actions topic block input and output parameters
Name

Description

Input parameters
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2090


