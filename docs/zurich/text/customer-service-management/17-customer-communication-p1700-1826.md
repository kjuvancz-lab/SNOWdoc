# Zurich Customer Service Management — Customer communication

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1700–1826 of 2452

Sections: Customer communication (p1700); Analytics and reporting (p1826)

---

<!-- page 1700 -->
About this task

View a list of sold products to track the products or services sold to your account.
Note: The Entitlements widget and the Contracts widget aren’t visible for account
consumers.

Procedure
1. Navigate to the Customer Service Portal.
2. Select Support > Products.
The system displays a list of products that belong to your account.
3. Select a product to view its details.

Note: The default view is the form view. If you switch to the list view, the Account

and Consumer fields aren’t displayed. See Configure the Install Base items and Sold
Products lists for details.

Using CSM Data Classification
Introduced a new CSM Data Classification (sn_csm_dataprivacy) Store application that provides
base system classifications for customer relationship management (CRM) data, categorizing it as
internal, personally identifiable information (PII), confidential, and more. The solution leverages
the ServiceNow AI Platform data privacy capabilities to apply appropriate protection measures
and enhance data security.

Data Classification
As your organization imports and generates significant amounts of sensitive data, including PIIs,
it's essential to conform with various privacy laws and security regulations for data protection.​
With CSM Data Classification, you can identify, categorize, and secure sensitive CRM data.​
As an administrator, you can classify sensitive data based on predefined criteria that reflect
the sensitivity levels of different data types within your instance. The CSM Data Classification
application includes out of the baseline templates for several key plugins. For more details on
creating custom templates, see Data classification .

Data Protection
Once data is classified, you can apply appropriate security controls and policies based
on classification levels. These templates help administrators review classifications and
apply appropriate data protection measures. These data protection measures might include
techniques such as anonymization, encryption, or implementing a zero trust architecture.
The solution leverages Data Classification capabilities to automate data handling policies at the
ServiceNow AI Platform level through ServiceNow Vault. For detailed guidance on applying data
protection measures, see ServiceNow Vault .

Customer communication
Prioritize clear, timely, and meaningful customer interactions to ensure satisfaction and loyalty.
Leverage comprehensive suite of tools to facilitate robust customer communication and enhance
service management practices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1700


<!-- page 1701 -->
Different ways of customer communication
Using Playbooks for Portals

Whether you're a customer service agent or
a customer, you can use Customer Service
Management (CSM) playbooks on service
portals to complete the tasks and activities
that you need to resolve your cases.

Using Walk-up Experience

Use the Walk-up Experience feature to checkin at a walk-up location, book appointments
from the customer service portal, and monitor
queues.

Using Auto-Responder for case deflections

Deflect cases by automatically sending
relevant content through the Auto-Responder
feature after a customer contact or consumer
creates a case.​

Using Omnichannel Callback for Customer
Service Management

The ServiceNow Omnichannel Callback for
Customer Service Management app enables
a callback option for customers when there’s a
long wait time for a live agent.

Using the Customer Service Portal

Search for information about a question or an
issue, or request assistance from a customer
service agent.

Using the Consumer Service Portal

The Consumer Service Portal is a web
interface that your company can use
to provide information and support to
consumers.

Using Conversational Appointment Booking

Customers can initiate an appointment
booking conversation in a chat on your
support portal using a Virtual Agent, and
Agents can use Autopilot to display Virtual
Agent topics during conversations.

Using the Business Location Service Portal

Use the Business Location Service Portal
(BLSP) available with the Customer Service
Management (CSM) application as a onestop shop to manage the internal and external
business locations.

Using Playbooks for Portals
Whether you're a customer service agent or a customer, you can use Customer Service
Management (CSM) playbooks on service portals to complete the tasks and activities that you
need to resolve your cases.
With Playbooks for Portals, you get a guided interface where you can take prompt actions on the
pending tasks and activities that are related to your cases. You get the following key benefits by
using Playbooks for Portals:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1701


<!-- page 1702 -->
• Enhanced experience. Follow the step-by-step process that has features, such as save and
resume, where you can initiate work on a case and then resume it later.
• Decreased case resolution time. Track and complete the requested tasks promptly and
accurately. You can get a faster case resolution with Playbooks for Portals.
• Increased visibility. Get visibility into the status of the case and get insights into the expected
resolution time.
The playbook includes multiple stages. Each stage has one or more activities to complete. You
can see the activity stream against the case playbook, the task on the playbook, and the related
information for the case as available. When using a playbook, you can do the following actions:
• View the stages and activities outlined in the playbook.
• Select an activity and carry out the required tasks to complete it.
• See the status indicators that display the current state of each activity or step.
• See the check boxes and counters that indicate where you are in the workflow.
• Mark an activity as complete and proceed to the next activity or stage.
• Continue completing the stages and activities necessary to submit the case.
Related topics
Creating an onboarding case with Playbooks for Portals
Creating a guided onboarding case from CSM Configurable Workspace
Create an onboarding request from the service catalog
Creating an onboarding case with Playbooks for Portals
Whether you're a contact or a consumer, you can create an onboarding case with a case type
that is based on the issue or request in either the Customer Service Portal or Consumer Service
Portal.

Playbooks for Portals overview
With Playbooks for Portals, you get a clear roadmap where you can see your progress in the
submission process and in the remaining steps that you have left to complete. If needed, you
can easily navigate back to a previous step. To expedite the process, you’re presented with
the options and input controls so that you can quickly and accurately input your information.
Additionally, you can save an application or form that is not yet ready for submission so that you
can resume work on it later. After saving the case, you can access the playbook through the case
lists and find your saved drafts in the case list view on the My Draft Cases tab.
These playbooks are designed to guide you through the steps of the intake process. Within the
playbooks, you can locate the tasks that are assigned to the case, view all ongoing activities with
the associated actions, and do the actions on the assigned tasks. The activity stream for the
case playbook enables you to track your progress. If it's available, you can also see the related
information about the case.

Navigating the catalog to create an onboarding request
You can navigate the catalog to create a new onboarding request from the Customer or
Consumer Service Portals. For detailed steps, see Create an onboarding request from the
service catalog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1702


<!-- page 1703 -->
Workflow steps
Let's see how a customer creates an onboarding case from Playbooks for Portals. The customer
does the following actions:
1. Enters the basic information about themselves in a catalog item on one of the portals to open a
new case.
2. Adds the details about their application.
3. Uploads the required documents that are needed to process their application.
4. Reviews and edits all the data before submitting the application.
5. Saves all changes and submits the case.
When the customer submits the case, the status of the case changes from Draft to New.

Note: After an application is submitted, the customer can find and view the case updates
in the portal by navigating to My Lists > My Draft Cases.

The following diagram shows how a customer creates a case.
Customer creates a case

Related topics
Creating a guided onboarding case from CSM Configurable Workspace
Create an onboarding request from the service catalog
Creating a guided onboarding case from CSM Configurable Workspace
An agent can create a case for a contact or a consumer when the contact or consumer reaches
out through a phone call, email, or chat from the CSM Configurable Workspace.

Overview
If you're a customer accessing a playbook, you can track your progress in the submission
process and see the step you’re on and the number of remaining steps that you have to do.
Additionally, you can navigate back to a previous step, if needed. To expedite the process, you’re
presented with some options and inputs that enable you to enter the correct information.

Creating a case
Let's see how an agent creates a case from Playbooks for Portals. The agent does the following
actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1703


<!-- page 1704 -->
1. Creates a case on behalf of the customer.
2. Collects the basic information about the customer to start the case.
3. Adds additional contacts to the application on behalf of the customer.
4. Uploads the documents that the customer may have sent.
5. Reviews and edits all the data for accuracy before submitting the application.

Note:
• The case status changes from Draft to New when it’s submitted. The agent must review
and choose whether to assign the case to themselves. If the case is assigned to another
agent, the new agent must review the context of the case before assigning or accepting
the case. The case status changes from New to Open when the case is assigned to an
agent.
• If a case is created by an agent, a customer can later find and view the case from the
portal for updates by navigating to My Lists > My Draft Cases.
The following diagram shows how an agent creates a case.
Agent creates a case

Processing a case
Let's see how an agent processes a case from Playbooks for Portals. The agent does the
following actions:
1. Initiates the processing for a case by adding members, uploading documents, reviewing and
submitting paperwork, and reviewing the case.
2. Pre-approves the case by checking the approval status, customer information, and customer
record.
3. Checks the document checklist against the uploaded documents and then sends an email to
the customer if there's a missing or invalid document.
4. Performs background checks, initiates legal verifications, and reviews the credit history.
5. Proposes a solution. The customer can accept the solution and then the agent closes the
case. If the customer isn’t satisfied with the proposed solution and rejects it, the case goes
back to the Open state and the customer is notified of the status. The agent then needs to
provide a new solution based on the customer input.
The following diagram shows how an agent processes a case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1704


<!-- page 1705 -->
Agent processes a case

Related topics
Create an onboarding request from the service catalog
Creating an onboarding case with Playbooks for Portals
Create an onboarding request from the service catalog
Create a new onboarding request from the Customer or Consumer Service Portals by navigating
the service catalog.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer,
sn_customerservice.proxy_contact, admin

Procedure
1. Create a request by going to either the portal landing page or the portal menu header and then
doing one of the following actions.
Option

Description

Request Something

On the portal landing page, select the Re­
quest Something link.

Requests

In the portal menu header, navigate to Re­
quests > Request Something.

2. Browse the service catalog and select Support > New Guided Onboarding Request.
You can also use the category filters to filter the available items or search the catalog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1705


<!-- page 1706 -->
3. In the case intake draft page, fill in the information that is related to the request.
4. Select Submit.

Result

The system processes the request, creates the request and any other related records, and
displays the details in the Related Records widget on the case view page.
Related topics
Creating an onboarding case with Playbooks for Portals
Creating a guided onboarding case from CSM Configurable Workspace
Create an onboarding request from the service catalog

Using Walk-up Experience
Customers can use the Walk-up Experience feature to check in at a walk-up location and
schedule or modify appointments from the Customer Service Portal. Walk-up Experience
managers can access the CSM Walk-up Experience dashboard to monitor the performance of
agents and service locations.
Customers can use the Walk-up Experience feature to complete the following tasks:
• Check in at a walk-up location and join a requester queue.
• Schedule an appointment or join a requester queue from the Customer Service Portal.
• Schedule an appointment as a guest user.
• Modify or cancel a walk-up appointment as a guest user.
• Monitor requester queues.
Walk-up experience technicians and managers can view and manage walk-up interactions and
queues and view the CSM Walk-up Experience dashboard.
• CSM Walk-up Experience dashboard
• Manage queues and interactions
Check in at a walk-up location
As a store representative, you can enable customers to check in on arrival at your service
location. The user is added to the requester queue after filling in some details and a reason for
the visit.

Before you begin

Role required: sn_walkup.walkup_login

About this task

A device at the store location runs the Walk-up application. The application welcome screen
includes selections to check in for a service, view the list of requesters currently in the queue,
and complete a survey. Both guest users and registered users can access the selections on the
welcome screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1706


<!-- page 1707 -->
Walk-up application screen

Procedure
1. Select Check-in from the Walk-up application screen.
2. Add details in the Check-in screen.
If the system already has a contact or a consumer with the same details, it associates the
interaction with that particular contact or consumer in the system.
Check-in screen

3. Following check-in, you can view the queue status by selecting Queue from the Walk-up
application screen.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1707


<!-- page 1708 -->
The Queue widget enables you to view the list of requesters at the walk-up location. For more
information, see Monitor Walk-up Experience queues.
Queue status screen

The Survey widget allows you to request the requester for feedback about the experience
at the location. For more information, see CSM Walk-up Experience customer satisfaction
surveys.
Schedule appointments or join a queue from the Customer Service Management portal
Customers must invest time in coming to a physical location for service. Ability to book
appointments at a specific time helps plan visits to the service location. A slot is pre-assigned
based on the appointment booking.

Before you begin

Role required: sn_walkup.walkup_login

Procedure
1. Log in to the customer portal.
2. Navigate to Support>Walk-up Check In from the portal header.
The application searches for your nearest service center.
3. Select Change location and select the location you prefer from the drop-down list if you want
to change the default location.
The default location is set to the nearest service center based on your location information,
once you allow the browser to access your location. You can pick the location manually if do
now want to allow browser to detect your location.
4. Go to the Schedule an appointment tab to book an appointment.
5. Select a reason for your visit from the drop-down list.
Related content that may help with your issue is listed at the bottom of the screen.
6. Select a reason for your visit from the drop-down list.
7. Select the Calendar icon (

) and select the date and time of the appointment.

8. Select Schedule Appointment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1708


<!-- page 1709 -->
You’ll receive the following notifications by email when you perform the following actions:
◦ Appointment confirmation, reminder, and cancellation.
◦ Survey email.

Note: You can come back to the portal to reschedule or cancel the appointment if the
appointment date hasn’t passed.
Schedule a walk-up appointment as a guest user
Schedule walk-up appointments as a guest user from either the Customer Service Portal or
Consumer Service Portal.

Before you begin

Role required: none

Procedure
1. Go to the Customer Service Portal or Consumer Service Portal home page by adding the suffix
/csm or /csp to your instance URL.
2. Select Walk-up Check-in.
3. Select Allow to use your current location or select the location you prefer from the Select the
location drop-down list.
The Welcome to Walk-up Check-in screen is displayed.

Note: A user with login credentials can also log in through the guest Walk-up Check-in
link to book an appointment.
4. Select the I'm not a robot check box and verify that you aren’t a robot.
5. Fill in the fields.
Guest user appointment fields
Field

Description

Enter your name

Your first name and last name.

Enter your email address

Your email address.

Enter your phone number (optional)

Your phone number.

Note: This field doesn't accept
alphabetical characters.
What is the reason for your visit?

The reason for your visit.

When do you want to visit?

The date you want to visit. Click the calendar
icon, select the desired date and time for the
appointment, and click Select.

The default location name, description, hours of operation, and Get Directions link are
displayed on the right.

Note: If you have chosen to select a location, the View on map link appears instead.
6. Optional: Change the location manually.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1709


<!-- page 1710 -->
a. Click Change Location.
b. Select a location from the drop-down list.
7. Click Schedule appointment.
You’ll receive a verification email.

Note: You can also select Cancel appointment on the same Welcome to Walk-up
Check-in screen. Confirm the cancellation in the dialog box that appears and cancel the
appointment.
8. Select Verify or select the link to confirm your appointment from the email you receive.
The appointment is confirmed and the details are displayed on the confirmation screen. If you
want to verify your appointment once this screen Is no longer displayed, you can select the link
in the appointment confirmation email to display it again.
Modify or cancel a walk-up appointment as a guest user
Modify or cancel walk-up appointments that you have scheduled.

Before you begin

Role required: none

Procedure
1. Open the appointment confirmation email that you received.
2. Click the link in the email to modify or cancel your appointment.
A One-time Passcode Verification tab opens in the browser and an email containing a onetime passcode (OTP) and a link to verify your appointment is sent.
3. Enter the OTP in the verification tab and click Continue or click Verify your Appointment in the
email.
The OTP option is useful when you are handling multiple devices to check emails and book
appointments. For example, you can view the email with the OTP on your mobile and enter the
OTP while booking an appointment on your desktop.

Note: The link expires after a certain time.
The Your Appointment details screen opens.
4. Either cancel the appointment or modify it.
◦ To cancel the appointment, click Cancel appointment. You will receive an email to confirm
that your appointment is cancelled.
◦ To modify the appointment, modify the details and click Update.
Monitor Walk-up Experience queues
Once you check in at a location, you are notified of the wait time and your position in the queue.
You can view the issues being serviced and the queue.

Before you begin

Role required: Customers

Procedure
1. Log in to the customer service portal.
2. Select your location.
3. Click the Queue widget.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1710


<!-- page 1711 -->
4. You can view the following information:
◦ queue of everyone waiting for service
◦ names of people who are ahead of you
◦ status of people currently served and waiting in the queue
◦ respective agents who are serving the customers
CSM Walk-up Experience dashboard
As a service manager you can see key metric reports for walk-up interactions which helps in
monitoring the performance of agents and service locations.
Access the dashboard by navigating to All > Platform Analytics > Library > Dashboards. To view
detailed information, hover over any report graphic. You can save graphs as PNG or JPEG files
and attach them to emails or include in reporting presentations. All graphs can be refreshed for
the latest data. The following screen is an example of how the dashboard appears.
Walk-up Experience for CSM dashboard

End user and goal

Required role

Customer service administrator: Can edit the
dashboard and manage users, groups, and
roles for the dashboard.

admin

Walk-up Experience administrator: Can view
the dashboard and manage users, groups,
and roles for the dashboard.

sn_csm_walkup.walkup_admin

Walk-up Experience manager: Can track the
number of walk-ups, walk-up interactions with
cases, average service and wait time and so
on.

sn_csm_walkup.walkup_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1711


<!-- page 1712 -->
Data visualizations
Title

Type

Description

Completed Walk-ups for the
Quarter

Total number of records
created during the fiscal
business quarter. Volume
shown as a single score.

Exit Survey CSAT for this Year

Speedometer showing the
average customer satisfaction
sentiment (1 to 3) during the
exit survey for the current
calendar year.

Overall CSAT within Last Year

Speedometer showing the
average customer satisfaction
sentiment (1 to 5) captured
by the email survey within
the last year (364 days from
current date).

Walk-ups by Location within
Last Year

Total number of walk-up
interactions, by location within
the last year (364 days from
current date). Volume shown
as a spline distributed by
month.

Walk-up Interactions with
Cases by Location within Last
Year

Total number of walk-up
cases, by location within
the last year (364 days from
current date). Volume shown
as a spline distributed by
month.

Walk-up Reasons by Location
within Last Year

Reasons for visiting the walkup queue, by location within
the last year (364 days from
current date). Data shown as a
bar chart.

Walk-ups by Day of the Week

Total number of walk-up
interactions per day during the
course of a week, by location.
Data shown as a bar chart.

Walk-ups by Hour

Total number of walk-up
interactions, by hour and by
location. Data shown as a bar
chart.

Average Service Time by
Location

Average time it takes to close
an interaction, by location.
Time average shown as a
spline by month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1712


<!-- page 1713 -->
Title

Type

Average Wait Time by
Location

Description

Average time a walk-up guest
waits for service, by location.
Data shown as a bar chart.

Walk-up Experience queue and interaction management
Walk-up Experience managers and technicians can efficiently manage all aspects of a walk-up
location queue and interaction demand. Technicians can view assigned walk-up locations and
interactions for walk-up fulfillment.
Walk-up Experience provides technicians with inclusive fulfiller resources to organize and
manage a walk-up queue.
As a Technician you can access CSM Configurable Workspace to manage a walk-up interaction.
Using CSM Configurable Workspace you can:
• Access a personal inbox to view work assigned from multiple service channels, including the
Walk-up Service Channel.
• Get assignments automatically pushed to your inbox from the walk-up interaction queue.
• Work on concurrent or multiple interactions at the same time.
• Promote interactions to cases.
• Work with any requester in the queue at any time by pulling from anywhere in the queue list, as
well as from the top of the list.
• Create cases for interactions
• Manually pick an interaction specific to a requestor
• Use Agent Assist to expedite fulfillment.
As a technician you can typically fulfill interactions on a first-come-first-served basis as
interactions are pushed to individual walk-up inbox. Interactions are distributed to the walk-up
agent inbox based on assignment rule configurations in the Advanced Work Assignment feature.
Technicians can directly open cases in CSM Configurable Workspace when an issue is not
resolved at the walk-up location.
Walk-up Experience also includes a Technician module in the application navigator where
agents supporting a walk-up queue can perform the following actions:
• Access the personal walk-up inbox linking directly to Agent Workspace.
• View assigned walk-up interactions.
• Reassign and modify walk-up interactions when necessary.
• View all scheduled and upcoming appointments.
• View walk-up queue locations.
• Transfer walk-up interactions to other technicians or queue locations when necessary.
The following applications are included in the platform Technician module of the CSM Walk-up
Experience navigation bar as well as viewed in the CSM Configurable Workspace under Walk-up:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1713


<!-- page 1714 -->
CSM Walk-up Experience technician applications
UI view and application

Description

Platform: My Walk-up
Inbox

View walk-up interactions assigned to you in your personal inbox in
CSM Configurable Workspace. Advanced Work Assignment pushes
interactions to your inbox according to assignment rule configurations.

CSM Configurable
Workspace: Inbox
Platform: My Walk-up
Locations

View walk-up queue locations that you are assigned to support by
physical address.

CSM Configurable
Workspace: Walk-up
Locations
Platform and CSM
Configurable
Workspace: My
Assigned Walk-ups
Platform and CSM
Configurable
Workspace: Open Unassigned
Platform and CSM
Configurable
Workspace: Closed
Walk-ups
Platform: Scheduled
Appointments

View walk-up interactions you are assigned to resolve or fulfill. These
interactions have a Work in Progress state. You can also see your
assigned interactions in your personal inbox on Agent Workspace.

View all open and unassigned walk-up interactions for your queue
locations. These interactions have either a New, Queued, or Work in
Progress state.

View all closed walk-up interactions. Closed interactions have either a
Closed Complete or Closed Abandoned state.

View all upcoming appointments scheduled for your walk-up queue.

CSM Configurable
Workspace:
Appointments
View assigned Walk-up Experience location
Walk-up Experience technicians can view a list of the walk-up queues they’re assigned to
support. Location queues reveal all the information that a technician must know to operate the
queue efficiently.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

There are two ways technicians can view the walk-up location queues they’re assigned to
support. Technicians primarily access CSM Configurable Workspace for all CSM Walk-up
Experience related information, including locations. However technicians can also access CSM
Walk-up Experience in the application navigator, or side navigation bar, to view assigned queue
locations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1714


<!-- page 1715 -->
Procedure
1. To view walk-up locations, open CSM Configurable Workspace.
2. Select List in the left navigation bar.
3. Under Walk-up, select Walk-up Locations.
Walk-up locations you’re assigned to support are listed.
4. Select a queue name to view details about the location, such as, interactions, appointments,
reasons for visits, and more.
5. Alternatively, to view walk-up locations via the application navigator, navigate to CSM Walk-up
Experience > Technician > My Walk-up Locations.
6. Select a queue name to see details about the location, such as, interactions, appointments,
reasons for visits, and more.
If interactions are leftover from a previous day or are still queued in the end with no associated
guests at the queue, you can select Abandon All to cancel these interactions.
View Walk-up Experience inbox
View a personal inbox of automatically assigned Walk-up Experience interactions using the CSM
Configurable Workspace feature interface.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

There are two ways technicians can view the walk-up inbox. Technicians primarily access CSM
Configurable Workspace for all Walk-up Experience related information, including the inbox.
However technicians can also access CSM Walk-up Experience in the application navigator, or
navigation bar, to link to and view the inbox in CSM Configurable Workspace.

Procedure
1. To view the walk-up inbox, open CSM Configurable Workspace.
2. Select Inbox in the navigation bar of the interface.
Automatically pushed interaction assignments appear in the inbox based on agent schedules
and assignment rule configurations in the Advanced Work Assignment feature. Technicians
can set an inbox status of Available, Away, and Offline.
3. Alternatively, to view the walk-up inbox via the application navigator, navigate to CSM Walk-up
Experience > Technician > My Walk-up Inbox.
You’re linked directly to your personal inbox in CSM Configurable Workspace. Automatically
pushed interaction assignments appear in the inbox based on agent schedules and
assignment rule configurations in the Advanced Work Assignment feature.
Manage automatically assigned Walk-up Experience interactions
Technicians supporting CSM Walk-up Experience locations can view and manage interactions
automatically pushed to the CSM Configurable Workspace inbox.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

Walk-up Experience interactions can be automatically pushed to a personal inbox in CSM
Configurable Workspace based on agent schedules and assignment rule configurations in the
Advanced Work Assignment feature. Technicians fulfill interactions on a first-come-first-served
basis as they appear in the inbox.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1715


<!-- page 1716 -->
To manually assign and manage interactions using the CSM Walk-up Experience Technician
modules found in the application navigator, refer to Manage Walk-up Experience interactions
manually.
Technicians set a status in the CSM Configurable Workspace inbox to indicate readiness to
accept interactions. Status choices are Available, Away, and Offline.
Even though interactions are automatically pushed to the walk-up inbox, agents can work with
anyone in the walk-up queue at any time.
View walk-up queue interactions assigned to you automatically in your walk-up inbox or in your
My Assigned Walk-ups list. You can also view all Open - Unassigned interactions for the queue
you support.
With CSM Configurable Workspace you can view lists of all your related walk-up interactions and
appointments, your cases, customer accounts and contacts, incidents, requests, and more using
one convenient interface. The Walk-up Experience related interaction list includes the following
items:
Walk-up Experience related interaction list
List item

Description

My
Assigned
Walk-ups

Interactions you assign to yourself when you accept an active interaction or that
are assigned to you.
Agents assign interactions to themselves when they accept a queued interaction.
Managers can assign interactions to specific agents.
These interactions are in a Work in Progress state. Once assigned, an agent
can transfer the interaction to another agent or queue to complete the work, if
necessary.

Open —
All open but unassigned interactions associated with your specific walk-up queue
Unassigned location. When a guest checks into a walk-up queue, an interaction is created.
The interaction is Queued until an agent accepts it or is assigned the interaction.
At that point, the state changes to Work in Progress.
Closed
Walk-ups

All Closed Complete and Closed Abandoned interactions assigned to a specific
walk-up location queue. Agents can abandon an interaction when a guest leaves
the queue before receiving support.

Procedure
1. To begin supporting a walk-up queue guest, open CSM Configurable Workspace.
2. Select Inbox and ensure your status is set to Available.
You can view interactions in your inbox that are automatically assigned to you.
3. Select the interaction at the top of the list and begin resolving the issue or fulfilling the request.
When you create an associated case, a New Case tab opens next to the Details tab of the
original interaction. Fill out the new case form. Select Save to save the new case.
If an interaction requires an unusual amount of time to resolve or fulfill, you can place the
interaction on hold. The requester does not lose position in the queue and you can help
another requester simultaneously. Placing an interaction on hold does not affect your capacity
for new interactions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1716


<!-- page 1717 -->
a. To put an interaction on hold, select Put on Hold.
b. You can associate the interaction with another record by selecting Associate Record from
the more UI actions icon (
) in the interaction header.
c. If you cannot resolve an issue, select Create Case in the interaction header.
When you create an associated case, a New Case tab opens next to the Details tab of the
original interaction. Fill out the new case form. Select Save to save the new case.
4. When you finish resolving the interaction, select Close in the interaction header.
Closing an interaction affects your capacity and can result in new interactions being pushed to
your inbox.
Manage Walk-up Experience interactions manually
Technicians supporting walk-up locations can manually manage queue requests with several
CSM Walk-up Experience interaction-related modules.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

Manage interactions manually using the CSM Walk-up Experience Technician modules found
in the application navigator. To manage automatically assigned interactions from the CSM
Configurable Workspace inbox, refer to Manage automatically assigned Walk-up Experience
interactions.
Walk-up queues support guests in the order that they check into the queue — first come, first
served. Technicians supporting the queue can decide who will work the first interaction. As new
guests enter the queue and submit interactions, technicians share the workload, assigning
queued interactions to themselves.
View walk-up queue interactions using several Walk-up Experience modules:
Walk-up Experience interaction modules
Module

Description

My
Assigned
Walk-ups

Interactions you assign to yourself when you accept an active interaction or that
are assigned to you.
Agents assign interactions to themselves when they accept a queued interaction.
Managers can assign interactions to specific agents.
These interactions are in a Work in Progress state. Once assigned, an agent
can transfer the interaction to another agent or queue to complete the work, if
necessary.

Open —
All open but unassigned interactions associated with your specific walk-up queue
Unassigned location. When a guest checks into a walk-up queue, an interaction is created.
The interaction is Queued until an agent accepts it or is assigned the interaction.
At that point, the state changes to Work in Progress.
Closed
Walk-ups

All Closed Complete and Closed Abandoned interactions assigned to a specific
walk-up location queue. Agents can abandon an interaction when a guest leaves
the queue before receiving support.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1717


<!-- page 1718 -->
Procedure
1. To begin supporting a walk-up queue guest, navigate to > CSM Walk-up Experience > >
Technician > Opened - Unassigned.
The Interactions list opens.
2. Find the guest name under the Opened for column of the Interactions list.
3. Click the interaction Number associated with the guest.
4. Enter your name in the Assigned to field on the form, change the State to Work in Progress,
and click Update.
a. To close an interaction if the guest has left the queue, click Abandon in the form header or
choose Closed Abandoned from the State form field and click Update
b. Alternatively, you can associate the interaction with another record by clicking the Associate
Record button in the interaction header.
5. To resolve the interaction, navigate to Walk-up Experience > Technician > My Assigned Walkups.
6. Click the interaction number from the list to open the Walk-up Interaction form.
7. Resolve the issue or fulfill the request.
a. Change the interaction status to On Hold if the requester is not present for an appointment
or if the interaction entails a lengthy process, for example, an OS upgrade.
b. If you cannot resolve the issue or fulfill the request, click the Create Case related link to
create a case.
When you create a case, the associated related lists on the form populate. Related lists include
the following details:
◦ Cases for Interaction: Cases associated with the interaction
◦ Cases by Same Caller: Cases created for a walk-up guest
When you finish resolving the interaction, change the interaction State to Closed Complete
and click Update to update the interaction. Alternatively, you can click Close to complete the
interaction.
8. When you finish resolving the interaction, change the interaction State to Closed Complete
and click Update to update the interaction.
You can also click Close to complete the interaction.
View and manage Walk-up Experience appointments in Agent Workspace
Viewing upcoming scheduled CSM Walk-up Experience appointments provides technicians with
an estimate of future queue demand and workload. Managers can view future appointments and
adjust staffing at walk-up queue locations to best support demand.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

Technicians and managers primarily use CSM Configurable Workspace for all Walk-up
Experience related information, including viewing and managing scheduled appointments.

Note: You can also view and manage scheduled appointments from the CSM Walk-up
Experience in the application navigator, or left navigation bar.
Appointments are automatically routed to your CSM Configurable Workspace inbox based on
availability. You can also view a list of scheduled appointments and choose which one to accept.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1718


<!-- page 1719 -->
Upcoming appointments also display with a small calendar icon next to the user name on the
onsite walk-up location queue wall monitor. The user with an appointment appears on the
monitor a short time before the appointment is scheduled to begin.

Note: Upcoming appointments are also displayed on the online check-in screen with the
same calendar icon next to the user name.

Procedure
1. Open CSM Configurable Workspace.
2. Select List in the left navigation bar.
3. Under Walk-up, select Appointments.
Walk-up appointments assigned to your queue are listed.
4. Select an appointment number to view details, such as the requester name, the interaction
number and description, and the appointment time.
a. To open the associated interaction to view details, select the Open record icon
the interaction number.

next to

b. Select Accept appointment to begin working on the interaction.
If necessary, you can assign the appointment to another agent and add work notes.
If a significant amount of time has passed and the requester doesn’t show up for the
appointment, you can delete the appointment by selecting the More UI actions icon
the interaction header and choosing Delete.

in

c. Select Save to save any changes you make to the appointment interaction.
Manage appointments in the navigator
Viewing upcoming scheduled Walk-up Experience appointments provides technicians with an
estimate of future queue demand and workload. Managers can view future appointments and
adjust staffing at walk-up queue locations to best support demand.

Before you begin

Role required: sn_csm_walkup.walkup_technician

About this task

Technicians and managers can view and manage scheduled walk-up appointments from Walkup Experience in the application navigator, or left navigation bar.

Note: Primary access is through CSM Configurable Workspace for all Walk-up Experience
related information, including scheduled appointments.
Upcoming appointments also display with a small calendar icon next to the user name on the
onsite walk-up location queue wall monitor. The user with an appointment appears on the
monitor a short time before the appointment is scheduled to begin.

Procedure
1. Navigate to All > CSM Walk-up Experience > Technician > Scheduled Appointments.
All walk-up appointments scheduled for the upcoming 14 days display.
2. Click an appointment number to view details, such as the requester name, the interaction
number and description, and the appointment time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1719


<!-- page 1720 -->
a. If desired, to preview the associated interaction details, click the preview record icon
next to the appointment number.
b. To begin working on the interaction, click Accept appointment on the Walk-up Appointment
form.
If necessary, you can assign the appointment to an agent and add work notes.
If a significant amount of time has passed and the requester does not show up for the
appointment, you can delete the appointment by clicking delete.
c. Click Update to save any changes you make to the interaction form.

Using Auto-Responder for case deflections
Deflect cases by automatically sending relevant content through the Auto-Responder feature
after a customer contact or consumer creates a case.​
Whenever a case is created, the Auto-Responder feature sends an email notification containing
a list of relevant knowledge articles. The email notifications are sent to the case submitter and
watchlist users associated with the case.
By default, the feature sends the email notification for customer service cases logged using
emails by users with the snc_external role. Your administrator can also configure the feature for
customer service cases logged using other communication channels such as web, phone, chat,
social, community, alert, and virtual agent.
The knowledge articles in an Auto-Responder email notification are included based on
contextual search results of the short description of the case. By default, the articles that a
case submitter viewed in the last 30 days aren't included. Your administrator can configure the
duration of last viewed content by using a scripted extension point. For more information, see
Include advanced contextual search results in Auto-Responder notifications.
As a case submitter or watchlist user, you can determine whether you receive any AutoResponder notifications by setting notification preferences. For more information, see Set AutoResponder notification preferences.

Activation information
Activate the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml) and enable the Enable auto-responder recommendations property
(sn_customerservice.case.autoresponder.enable). For more information, see
Configure Auto-Responder notifications.
Close a case from a knowledge article recommended in an Auto-Responder notification
View knowledge articles included in the email notification sent by the Auto-Responder feature for
a customer service case and close the case from within a helpful knowledge article.

Before you begin

Role required: snc_external role or watchlist users associated with the customer service case
Log in to your portal containing the case.

About this task

By default, the Auto-Responder feature sends knowledge articles as helpful content to solve a
customer service case submitted using an email.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1720


<!-- page 1721 -->
Procedure
1. Open the knowledge article link from the email notification sent by Auto-Responder.
2. Read the knowledge article to see whether it resolves a case.
3. If the knowledge article provides a solution, in the Related Case section of the article, click
Close Case.
4. In the message window that appears, click Close Case.

Result

An information message about the case being closed appears. If any case was closed by using a
knowledge article link accessed from an Auto-Responder email notification, a View Case button
appears in that article. Click the button to view the details of the case that was closed.
Set Auto-Responder notification preferences
Set notification preferences for receiving Auto-Responder recommendations on customer
service cases you submitted or for which you are on the watchlist.

Before you begin

Role required: snc_external role or watchlist users associated with the customer service case
Ensure that an administrator has configured the Auto-Responder feature. For more information,
see Configure Auto-Responder notifications.

Procedure
1. Navigate to your portal page.
2. Click your username or photo in the portal header, and then click Profile.
3. On the User Profile page, scroll down to the Actions section, and click Notification
Preferences.
4. On the Notification Preference window, select or clear the Case auto-responder
recommendations check box to turn the Auto-Responder notifications on or off for you.

Using Omnichannel Callback for Customer Service Management
®

The ServiceNow Omnichannel Callback for Customer Service Management app enables a
callback option for customers when there’s a long wait time for a live agent.
For more information, see Omnichannel Callback

.

Callback flow
The callback workflow proceeds as follows:
1. Customers are presented with an option to request a callback when the estimated wait time to
reach an agent is too long or when agents are unavailable.
2. The customer enters callback details such as name, contact details, and the reason for the
callback.
3. Customers request a callback as soon as possible or at a specified date and time.
4. A callback interaction is created immediately for an immediate callback request or a minute
before the selected time for a scheduled callback request.
®

5. The ServiceNow Advanced Work Assignment (AWA) application determines the availability of
agents and creates a callback work item for an available agent. AWA adds the callback task to
the callback queue. The agent then receives a Callback notification in the workspace inbox.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1721


<!-- page 1722 -->
6. The agent can choose to review the callback context such as knowledge base article views,
searches, and Virtual Agent conversation before calling the customer.
7. The agent calls the customer.
◦ If the customer accepts the call, the interaction is marked as complete when the call ends.
◦ If the customer doesn’t accept the call, the agent can retry the callback later.
8. The agent can decide to close the interaction or queue the callback again manually from the
workspace.
Callback flow diagram

Callback requests
Immediate callback request
Customers can request a callback immediately. The customers are shown the
average time that the agent will take to call back. This request prevents them from
having to wait in the queue to connect with an agent.
Scheduling a callback request
Customers can request a callback by selecting the preferred date and time. The
customer will receive a confirmation of the scheduled callback request via email.
Rescheduling a callback request
Customers can reschedule the callback request by choosing from a list of upcoming
dates and times for callback requests.
Cancelling a callback request
Customers can cancel scheduled callbacks from the self-service channel they
requested the callback from.

Callback channels
Customers can request a callback during a chat on Virtual Agent or Engagement Messenger, or
from Customer Service Portal. They can request either a phone callback or a video callback on
Zoom. Video callbacks must be scheduled but phone callbacks can be requested immediately or
scheduled.
Working with callback requests from an agent
Customers can request a callback from an agent when the wait time to reach an agent is too long
or agents are unavailable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1722


<!-- page 1723 -->
Callback requests by customers
Customers can request a callback either as soon as possible or at a preferred date and time from
one of the following channels:
• Virtual Agent
• Customer Service Portal
• Engagement Messenger
Customers can request an immediate callback on a voice channel such as phone or schedule a
video callback over Zoom.

Callback requests for agents
The agents can perform the following actions:
• Review the context of the interaction such as knowledge base article views, search history, and
the Virtual Agent conversation before calling the customer to become familiar with the context.
• Use the Click-to-call button to make a voice call to a customer either as soon as possible or at
a scheduled date and time.
• Use the Zoom meeting URL to make a video call to a customer at a scheduled date and time.
• Retry the callback if the customer does not accept the call.
• Reroute the callback request to a different agent.
Working with callback requests using Virtual Agent
As a customer, you can request a callback from a customer service agent through a Virtual Agent
conversation. You can request an immediate voice callback or schedule a voice or video callback
that you can reschedule or cancel.
For more information about setting up Omnichannel Callback, refer to Configuring Omnichannel
Callback
Request a callback from a Virtual Agent chat
Request an immediate voice callback or schedule a voice or video callback from a Virtual Agent
chat on the ServiceNow portal.

Before you begin

Role required: none

About this task

You can request an immediate callback only for a voice channel. Use the Schedule for later
option to request a video call.

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select the Chat icon (

) to open the chat window and begin a Virtual Agent chat.

3. Select Show me everything.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1723


<!-- page 1724 -->
4. Select Request a callback.
5. Enter your phone number and a reason for requesting the callback.
6. Select whether to receive an immediate voice callback from an agent or schedule a voice or
video callback for later.
Type of callback

Action

Immediate voice callback

Select Right now.
a. Select Schedule for later.
b. Select the type of call.
▪ For a phone call, select Voice.

Scheduled voice or video callback

▪ For a video call, select Zoom.
c. Select a date and time from the calendar
and select Schedule.
The date and time slots indicate the agent's
availability.

Result
• A callback request is created.
• The chat shows the details of the callback time, either the estimated time until the agent
phones back or the scheduled date and time set for the phone or video call.
• A confirmation email is sent.
Reschedule a callback from a Virtual Agent chat
Reschedule a callback from a Virtual Agent chat on the ServiceNow portal.

Before you begin

Role required: none

About this task

Only logged-in users can reschedule callbacks.

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select the chat icon (

) to open the chat window and begin a Virtual Agent chat.

3. Select Show me everything.
4. Select Reschedule a callback.
5. Reschedule the upcoming callback request or a different request.
◦ To reschedule the upcoming callback request, select Yes.
◦ To reschedule a different request, select it from the list of requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1724


<!-- page 1725 -->
6. Choose a date and time from the calendar and click Schedule.
The date and time slots indicate the agent's availability.

Result

The request is rescheduled.
A confirmation message is displayed in the chat.
A confirmation email is sent.
Cancel a callback from a Virtual Agent chat
Cancel a callback from a Virtual Agent chat on the ServiceNow portal.

Before you begin

Role required: none

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select the chat icon (

) to open the chat window and begin a Virtual Agent chat.

3. Select Show me everything.
4. Select Cancel a callback.
5. Cancel the upcoming callback request or a different request.
◦ To cancel the upcoming callback request, select Yes.
◦ To cancel a different request, select it from the list of requests.
6. Confirm the cancellation in the confirmation message.

Result
• The callback request is canceled.
• The chat shows the details of the canceled callback request.
• A confirmation email is sent.
Working with callback requests using the Customer Service Portal
As a customer, you can request a callback from a customer service agent using the Customer
Service Portal. You can request an immediate callback or schedule a voice or video callback that
you can reschedule or cancel.
Request a callback using the Customer Service or Consumer Service Portal
Request an immediate voice callback or schedule a voice or video callback from an agent using
the Customer or Consumer Service Portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer

About this task

You can request an immediate callback only for a voice channel. Use the Call me later option to
request a video call.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1725


<!-- page 1726 -->
Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select My Lists in the portal header and then select My cases.
3. Select the case for which you need support.
4. In the Actions section, select Request callback.
5. In the Request a callback pop-up window, enter your name, phone number, issue type, and
description.
6. Select whether to receive an immediate voice callback from an agent or schedule a voice or
video callback for later.
Type of callback

Action

Immediate voice callback

Select Call me now.
a. Select Call me later.
b. Select the type of call.
▪ For a phone call, select Voice.

Scheduled voice or video callback

▪ For a video call, select Zoom.
c. Select a date and time from the calendar.
The date and time slots indicate the agent's
availability.

7. Select Submit.

Result
• A callback request is created.
• The details of the callback request are available in the Callback tab.
• A confirmation email is sent.
Reschedule a callback using the Customer Service or Consumer Service Portal
Reschedule a callback from an agent using the Customer or Consumer Service Portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer

About this task

You can reschedule a callback request to receive a phone or video call from an agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1726


<!-- page 1727 -->
Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select My Lists in the portal header and then select My cases.
3. Select the case for which you need support.
4. In the Callbacks tab, select the callback request that you want to reschedule.
5. Select Reschedule.
6. Choose a date and time from the calendar.
The date and time slots indicate the agent's availability.
7. Select Submit.

Result
• The callback request is rescheduled.
• The pop-up window shows the details of the rescheduled callback.
• A confirmation email is sent.
Cancel a callback using the Customer Service or Consumer Service Portal
Cancel a callback from an agent using the Customer or Consumer Service Portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select My Lists in the portal header and then select My cases.
3. Select the case for which you need support.
4. In the Callbacks tab, select the callback request that you want to cancel.
5. Select Cancel.
6. Confirm the cancellation in the confirmation message.

Result
• The callback request is canceled.
• The details of the canceled callback request are available in the Callbacks tab.
• A confirmation email is sent.
Working with callback requests using Engagement Messenger
As a customer, you can request a callback from a customer service agent using Engagement
Messenger. You can request an immediate callback or schedule a voice or video callback that
you can reschedule or cancel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1727


<!-- page 1728 -->
Request a callback using Engagement Messenger
Request an immediate voice callback or schedule a voice or video callback from an agent using
Engagement Messenger.

Before you begin

Role required: none

About this task

You can request an immediate callback only over a voice channel. Use the Call me later option to
request a video call.

Procedure
1. In Engagement Messenger, select the Request a callback card.
2. In the Callback requests page, select Request a callback.
3. Enter your name, phone number, issue type, and description.
4. Select whether to receive an immediate voice callback from an agent or schedule a voice or
video callback for later.
Type of callback

Action

Immediate voice callback

Select Call me now.
a. Select Call me later.
b. Select the type of call.
▪ For a phone call, select Voice.

Scheduled voice or video callback

▪ For a video call, select Zoom.
c. Select a date and time from the calendar.
The date and time slots indicate the agent's
availability.

5. Select Submit.

Result
• A callback request is created.
• A confirmation email is sent.
Reschedule a callback using Engagement Messenger
Reschedule a callback from an agent using Engagement Messenger.

Before you begin

Role required: none

Procedure
1. In Engagement Messenger, select the Request a callback card.
2. In the Callback requests page, select the callback request that you want to reschedule.
3. Select Reschedule.
4. Choose a date and time from the calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1728


<!-- page 1729 -->
The date and time slots indicate the agent's availability.
5. Select Submit.

Result
• The callback request is rescheduled.
• A confirmation email is sent.
Cancel a callback using Engagement Messenger
Cancel a callback from an agent using Engagement Messenger.

Before you begin

Role required: none

Procedure
1. In Engagement Messenger, select the Request a callback card.
2. In the Callback requests page, select the callback request that you want to cancel.
3. Select Cancel .
4. Confirm the cancellation in the confirmation message.

Result
• A callback request is canceled.
• A confirmation email is sent.
Address a callback request from a customer
As a customer service agent, call a customer back either immediately or at the date and time
requested by the customer.

Before you begin

Role required: sn_customerservice_agent

About this task

Depending on the type of request, you can call the customer on the phone or over Zoom.
If the callback is requested from the Customer Service or Customer Service Portal, you can look
into the customer's issue by going through the chat, related cases, knowledge base searches,
and history to become familiar with the context before making the call.

Procedure
1. Open your workspace.
2. When an interaction request comes in, accept it from your inbox.
The interaction card shows the following information:
◦ The type of callback and interaction number
◦ The name of the customer
◦ The type of issue
3. Call the customer back on the requested channel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1729


<!-- page 1730 -->
Type of call

Action

Voice

Select the Click-to-call button next to the phone number to
make a voice call.

Video

Use the meeting URL to make a video call over Zoom.

If the customer doesn't accept the call:
◦ Retry the callback later by clicking Re-attempt Callback.
The number of retry attempts is updated.
◦ If necessary, assign the callback task to another agent by selecting Requeue Callback from
the More actions menu.
4. End the call.
◦ The state of interaction changes to Close complete.
◦ If you have the notify_view role, you can see the video meeting participants in the Video
participants tab.
◦ The meeting recording and transcript are attached to the interaction. The inserted
transcripts are not sentiment analyzed.
5. If the issue is resolved, close the callback task by selecting Close Callback.

Manage a CCaaS callback request in the Configurable Workspace
As a customer service agent, view the callback context information and dial the customer
immediately in the CSM/FSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent
You must log in to your CCaaS account and ServiceNow Configurable Workspace to receive the
callback requests on the Configurable Workspace.

About this task

The callback interaction is either routed in the customer-first or agent-first method by CCaaS to
the agent. The interaction appears like any other voice interaction in a customer-first scenario.
The interaction appears with callback actions component and callback context card for an
agent-first scenario. For more information on the agent-first and customer-first modes, see
Integrating contact centers with Interaction Controls Component (ICC) for callbacks. The
following procedure is applicable for the agent-first scenario.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.

Note: The AWA inbox card displays the following information for callbacks:
◦ Name of the customer
◦ Queue to which the callback is assigned
◦ Type of callback (ASAP and Scheduled)
◦ Reason for callback
2. Perform one of the following in your inbox when you receive a callback interaction request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1730


<!-- page 1731 -->
Action

Description

Select this button to accept the callback inter­
action request.
Accept

The voice interaction page opens with the
Callback Actions component on the top-left
corner of the page. For more details on the
callback actions component, see Callback ac­
tions component.
Select this button to reject the callback inter­
action request.

Reject

The callback interaction gets routed to the
next available agent.

3. View the Callback context card for the details of the callback.
For more information on the Callback context card, see Callback context card.
4. Use the callback actions card to perform the following actions.

Conversation scenarios

Talk to the customer and try to address the
customer issue

Actions

a. Select the Call number button on the
Callback actions component.

Note: When the timer turns down
to zero on the Callback actions
component, the call is automatically
dialed to the number in the dropdown. The timer must be enabled by
the contact center provider for autodialing capability.
If you get to know that the issue is resolved
and the callback isn’t required, you can
select Close Callback and wrap up the
interaction. Subsequently, the callback task
is closed by CCaaS.
b. If the customer answers the call, resolve
the customer's issue.
Transfer the callback before dialing the call
when it falls outside the agent's scope of
responsibility to ensure that it reaches the
appropriate agent or queue for resolution.

a. Select the Transfer callback button on the
Callback actions component to transfer
an ASAP or Scheduled callback to another
queue or agent before the call to the
customer begins.
When you select the Transfer
callback button, the Transfer callback
subcomponent appears, which includes
the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1731


<!-- page 1732 -->
Conversation scenarios

Actions

▪ In the search field, select from the list or
to transfer the callback.
▪ In the Queues list, select the queue for
transfer to which you want to transfer the
callback.
▪ In the Agents list, select the agent to
whom you want to transfer the callback.
b. Select the
icon to initiate the transfer
callback. When transferring a callback,
the Callback actions component displays
a Transferring callback, please wait...
message and a 'Cancel callback transfer'
button.
c. Select the Cancel callback transfer button
to cancel the transfer before the receiving
agent accepts the request. For more details
on how it’s displayed in the UI, see CSM
voice interaction record page.
Retry callback in case the customer doesn’t
answer the call

a. Select the Retry call button on the
Callback actions component.
b. If a customer answers the call, address the
customer request.

Transfer the call when another agent is better
a. Select the transfer icon on the active call
equipped to assist the customer
component. The call with the customer is
placed on hold while you transfer the call to
another agent.
b. In the Agents list, select the agent to whom
you want to transfer the call to.
c. Select the three dot menu and perform one
of the following:
▪ Select Consult to talk to the agent and
provide the context of the callback
request.
Once the new agent accepts the call, you
can select Merge calls to merge your
current customer call with the new agent
or select Leave & transfer to disconnect
the call with the customer and transfer it
to the new agent directly.
▪ Select Blind to transfer the call directly to
the agent without any consultation. The
call gets transferred to the agent directly,
and you get disconnected from the call.
Upon successful transfer of call to another
agent, the callback interaction is assigned
to the receiving agent. The callback task
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1732


<!-- page 1733 -->
Conversation scenarios

Actions

remains assigned to the original agent and
can be wrapped up.
5. Mute, hold, and record the calls if necessary while you are on an active call with the customer.

The following table provides a description for the annotations in the preceding image:

Annotation in the preceding image

Description

1

Use the record icon to record the
conversation. The recording is saved
automatically when you end the
conversation.

2

Use the mute icon to mute or unmute the
conversation.

3

Use the hold icon to hold or resume the
conversation.

4

Use the dialpad to enter a phone number of
your choice and press the dial button to make
a call.

5

To transfer the call to another agent, select
the transfer icon. For more details, see
‑unique_609_Connect_42_entry-transfercall.

6

Use the flag icon to escalate customer issue.

6. Update the Reason and Notes appropriately and select Submit & close in the Wrap up modal
after ending the call.
After submitting wrap up, CCaas closes the interaction and callback task.
7. Select Close callback on the Callback Action component to close the callback.
In the automatic dial, the callback gets closed when the timer for closing the callback goes
down to zero.
8. Close the interaction page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1733


<!-- page 1734 -->
Related topics
Integrating contact centers with Interaction Controls Component (ICC) for callbacks
Callback interaction features
Manage a CCaaS callback request using Global Voice Control
Manage a CCaaS callback request using Global Voice Control
As a customer service agent, when you leave the callback interaction page on the CSM/FSM
Configurable Workspace during a call, you can use Global Voice Control (GVC) to continue with
callback actions. You can return to the interaction page by selecting the Open interaction link.

Before you begin

Role required: sn_customerservice_agent
You must log in to your CCaaS account and CSM/FSM Configurable Workspace to receive the
callback requests on the CSM Configurable Workspace.

About this task

The callback interaction is either routed in the customer-first or agent-first method by contact
center providers to the agent. In the customer-first scenario, the interaction appears like any
other voice interaction. In the agent-first scenario, the interaction appears with a callback actions
component and callback context card. For more information on the agent-first and customer-first
modes, see Integrating contact centers with Interaction Controls Component (ICC) for callbacks.
The following procedure is applicable for the agent-first scenario.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.

Note: The AWA inbox card displays the following information for callbacks:
◦ Name of the customer
◦ Queue to which the callback is assigned
◦ Type of callback (ASAP or Scheduled)
◦ Reason for callback
2. Perform one of the following in your inbox when you receive a callback interaction request.
Action

Description

Select this button to accept the callback inter­
action request.
Accept

The voice interaction page opens with the
Callback Actions component on the top-left
corner of the page. For more details on the
callback actions component, see Callback ac­
tions component.
Select this button to reject the callback inter­
action request.

Reject

The callback interaction gets routed to the
next available agent.

3. View the Callback context card for the details of the callback who requested a callback.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1734


<!-- page 1735 -->
For more information on the Callback context card, see Callback context card.
4. Select the GVC icon on the unified navigation bar to perform call-related actions when you are
on other pages.
You might have to open a knowledge article or case to address a customer request. While on a
different page, you need not come back to the interaction page to control the call. Instead, you
can use the GVC to control the call.
You can use the callback actions such as Call number, Close Callback, Retry call, and so
on, on the GVC in the same way as you use them on the Callback Actions component. For
more information on how to use the callback actions component for callback interactions, see
Manage a CCaaS callback request in the Configurable Workspace.

Note: The Transfer function isn't supported in GVC.
5. Select the Open interaction link on GVC to open the callback interaction record.
6. Update the Reason and Notes appropriately and select Submit & close in the Wrap up modal
after ending the call.
After submitting wrap up, CCaas closes the interaction and callback task.
7. Select Close callback on the Callback Action component to close the callback.
In the automatic dial, the callback gets closed when the timer for closing the callback reaches
zero.
8. Close the callback interaction page.

Using Email Interaction for Customer Service Management
Email Interaction for CSM application enables agents to create interactions from customer
emails, helping them resolve simple customer queries through these interactions. They can
create a case from an interaction when further investigation is needed for resolving the customer
query. This process provides clarity of the effort needed for customer query intake and actual
investigation needed for query resolution.
The Email Interaction for CSM application offers several key benefits:
• Streamlines operations by helping to prevent the creation of duplicate or unnecessary cases.
• Consistent experience for agents across channels by modeling emails also as an interaction,
such as voice, chat, and messaging channels.
• Clarity of effort needed for customer problem intake, represented by interactions.
• Clarity of effort needed for investigation and resolution, represented by cases.
Routing and assigning an email interaction to agents
Route and assign email interactions to the appropriate agents based on predefined rules and
criteria.
When agents accept email interactions routed by Advanced Work Assignment (AWA), the
interaction state changes from New to Work in progress and it’s assigned to the agent.
For more information on the configuration required to route and assign email interactions, see
Configure Advanced Work Assignment for routing email interactions.
Alternatively, agents can assign the email interactions manually. For more information on how to
assign email interactions, see Assign an interaction manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1735


<!-- page 1736 -->
Agents can send emails to the customer requesting for more information. Agents can keep the
interactions On Hold while waiting for the customer response. While an email interaction is on
hold, customers receive periodic reminders prompting them to respond quickly.
Once a customer replies to the on-hold email interaction, the interaction’s status is automatically
updated to Work in progress. At this point, if the agent to whom the interaction is assigned
isn’t available, the email interaction can be optionally rerouted to the next available agent. This
behavior occurs when the system property sn_eaai_csm.email.reroute.enabled is
set to true. By default, it is set to false. The automated rerouting process confirms that customer
inquiries are addressed promptly. Enterprises can unify routing of omnichannel interactions
within CCaaS to reduce admin effort. For more information about unified routing of email
interactions, see Unified routing of email interactions via CCaaS.
.
Related topics
System properties for configuring Email Interaction
Unified routing of email interactions via CCaaS
Assign an interaction manually
Manually assign an interaction that is in the New state to yourself or another agent.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or
sn_customerservice.consumer_agent

About this task

The Assign to me button is only visible if the interaction is in the New state and the Assigned to
field is empty.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. From the Interactions section, select My Interactions.
4. Open an interaction.
5. Assign the interaction in one of the following ways.
Option

Description

Assign the interaction to yourself

Select Assign to me. The Assigned to field
gets populated with the agent's name and the
state changes to Work in Progress.

Assign the interaction to another agent

Select an agent in the Assigned to field and
select Save.

Unified routing of email interactions via CCaaS
Leverage a unified routing solution through Contact Center as a Service (CCaaS) to streamline
email interactions using consistent routing logic across voice, chat, and other digital channels.
This centralized approach eliminates the need for disparate systems, instead routing all
interactions through a single, unified engine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1736


<!-- page 1737 -->
CCaaS routing benefits
CCaaS routing offers the following benefits:
• Unified routing across channels: CCaaS uses a single routing engine to manage channels like
email and voice, making customer interactions easier to handle. This unified system provides a
smooth omnichannel experience for agents and customers.
• Reduced configuration and administrative effort: CCaaS unified routing streamlines operations
by automating interaction assignments, minimizing the need for complex setup and ongoing
management, and reducing manual workload.

Managing email interactions on hold and rerouting
Agents can place email interactions on hold while they wait for customer responses. When an
interaction is placed on hold, CCaaS is notified of this status change, which enables the system
to reassign the agent’s capacity to other tasks.
When a customer responds to the On Hold email, the interaction status is automatically changed
to Work in progress. At this point, if the agent to whom the interaction is assigned isn't available,
the email interaction can be optionally rerouted to the next available agent. This feature can
be enabled by setting the system property sn_eaai_csm.email.reroute.enabled to
true. By default, it is set to false. When enabled, the Assigned to field is cleared, and an event is
triggered in CCaaS, enabling it to redirect the email to an available agent. This process verifies
that customer inquiries are addressed promptly, even if the initial agent is no longer available.
Related topics
System properties for configuring Email Interaction
Routing and assigning an email interaction to agents
Using the email interaction page
The email interaction page enables agents to view incoming and outgoing emails, attachments,
work notes, and other related information in one location. Agents can review and respond to
emails efficiently, helping resolve customer inquiries in a timely manner.
The email interaction page consists of various sections.
Email interaction page

The following are the key features of the email interaction page:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1737


<!-- page 1738 -->
• Manage and send email responses to customers from a single location.
• Simplified filters , modeless dialog, and compact email header to keep the focus on email
communication.
• View the email conversation between the customer and the agent in the Activity stream that
provides complete context.
• Identify the most recent conversation with using annotated new emails, the latest reply, and
work notes.
The email interaction page consists of sections such as Contact, Interaction form, Compose,
and Activity stream, and the contextual side panel. For more information, see Email interaction
sections.

Note: Agents can use the Contact component to do the following:
• Search for a contact.
• Add a contact.
• Edit and save a linked contact record.
• View a contact.
Engaging with the customer using email interaction
Engaging with customers through email interaction involves verifying customer details as well as
creating and updating consumer or contact records. It also includes viewing past emails in the
Activity stream. Agents can compose email responses using email and response templates, add
internal work notes, and track activity history for better context.
Agents are notified of email responses received from customers in the Ongoing tab ( ) on the
agent workspace. This feature enables agents to view and respond to customer inquiries.
For more information, see View notifications on email response.
Verify a contact, consumer, or guest user
Look up users and manage their information. As an agent, you can find the consumer and
contact information from an interaction record, review and verify the information, and then
update the interaction record. If the customer is a guest user without an existing consumer or
contact record, you can create a record by capturing necessary information.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, or admin

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. In the contextual side panel, select the Consumer Verify icon (
(

) or the Contact Verify icon

).

Note: For more information, see Lookup and verify.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1738


<!-- page 1739 -->
6. Search for a consumer or contact by entering the person's name, phone number, email
address, or record number.
7. Select the desired result from the list.
This action displays information about the selected consumer or contact in a verification card.
8. Confirm the selected consumer or contact by selecting Verify‑.
When you perform this action, the following occurs:
◦ The Account ‑and either Consumer ‑or Contact fields are populated on the interaction
record.
◦ The Verified ‑check box is enabled.
9. Select Save to save the interaction record and refresh the related lists.
Create a consumer or contact record
Create a consumer or contact from the Lookup and Verify feature in the contextual side panel.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, or admin

About this task

As an agent, you can use the Lookup and Verify feature to search for consumers and contacts.
After verifying a customer’s information, you can populate that information on the interaction
record.
If you can't find a consumer or contact or if the customer is a guest, you can create a record for
that customer using the feature.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. In the contextual side panel, select the Consumer Verify icon (
(

) or the Contact Verify icon

).

6. Enter name, phone number, email address, or record number to search for a consumer or
contact.
7. If you can’t locate the consumer or contact and choose to create a record, select Create
Consumer or Create Contact.
The system displays the Create Consumer or Create Contact form in the contextual side panel.
8. Add information to the fields on the form and select Create.

Result

The system performs these actions:
• Saves the consumer or contact record.
• Creates and displays the consumer or contact card.
• Adds the information to the interaction record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1739


<!-- page 1740 -->
Create a customer contact
Use the Contact card on the email interaction page to create a customer contact and add the
customer contact into the interaction record.

Before you begin

Role required: sn_customerservice_agent, workspace_admin, or admin

About this task

Agents can use the contact lookup component to search for contacts. If an agent can't find a
contact or if the customer is a guest, the agent can create a record for that customer from the
contact lookup component.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. On the Lists section, in the Interactions section, select My Interactions.
4. In the My Interactions page, select an email interaction.
5. In the Contact card section, select the Create new icon (

).

6. On the Contact form, fill in the fields.
For a description of the field values, see Contact form for Email Interaction for CSM.
7. Select Save.

Result

The system performs these actions:
• Saves the contact record.
• Creates and displays the contact card.
• Adds the information to the interaction record.
Using the activity stream in an email interaction
View an email conversation between an agent and a customer in the activity stream of the
email interaction. The activity stream enables agents to communicate with customers and make
internal notes about the work done on an interaction. The activity stream updates when an email
is sent or received, or when a work note is posted.
Agents can perform the email interaction related tasks in the activity stream.
Role required: sn_customerservice_agent or sn_customerservice.consumer_agent.
Actions agents can perform in the activity stream
Task

View emails,
work notes, and
field changes
associated with the
email interaction

Description

The activity in the interaction shows emails and work notes by default.

Note: In the activity stream, each email response displays only
the latest message in the conversation. To view entire email thread,
enable the Email Show Full Conversation property using UI Builder.
For more information, see Customize showing a full conversation in
UI Builder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1740


<!-- page 1741 -->
Actions agents can perform in the activity stream (continued)
Task

Description

Add work notes

In the Compose section:
1. Select Work notes.
2. Add the information to the text field.
3. Select Post Work Notes.
The post is added to the activity stream.
Alternatively, select the Pop out in modeless window icon (
compose worknote in a separate dialog. (include icon)

) to

The latest work note is annotated with the New Activity marker.

Compose emails

Send emails from the activity stream without leaving the interaction view.
In the Compose section:
1. Select the Email tab.
An email draft opens.
2. Compose your email.
3. Select Send Email.
The email is added to the activity stream.
Alternatively, select the Pop out in modeless window icon (
compose email in a separate dialog. (include icon)

) to

The latest email is annotated with the New Activity marker.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1741


<!-- page 1742 -->
Actions agents can perform in the activity stream (continued)
Task

Description

View email
information with
compact header

Select the show email details icon ( ) to view the email
information such as subject of the email, sender, and

receiver.
Filter posts

Select the filter icon (
filter options:

) at the top of the activity stream to display the

• Post types: Select the types of posts to view, such as emails, work
notes, or field changes.

• Field changes: Select specific fields to view information in posts for
only those fields.

• Flagged: View posts that have been flagged as important.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1742


<!-- page 1743 -->
Actions agents can perform in the activity stream (continued)
Task

Description

• Filter sets: Select a filter set to filter the items based on the defined
criteria or select Create Filter to create a filter.

Search

Select the search icon (

Sort posts

Select the Sort icon (
newest.

Expand and
collapse posts

Select the Expand all activity post icon (

) to search for a message.
) to sort posts from newest to oldest or oldest to
) to view additional details in

posts or select the Collapse all activity post icon (
previous state.

) to go back to the

Compose an email or a work note
Use the Compose section in the email interaction to draft emails, create internal work notes, or
draft email responses using response templates.
Compose an email response
Use the compose section to draft an email response to customers, addressing their inquiry or
providing the necessary information.

Before you begin

Role required: sn_customerservice_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. In the Compose section, select Email.
The To and Subject fields are auto-populated with the relevant details.
6. Optional: Select the Pop out in modeless window icon (
separate dialog.

) to compose your email in a

7. Enter the email content.

Note: Selecting the More Actions icon (

) in the Email section displays the email
activity history, enabling you to view past emails related to the email interaction.
Additionally, you can share links to public articles in the email message.
8. Select Send Email.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1743


<!-- page 1744 -->
Result

As an agent, you have successfully drafted a suitable email response to the customer.
Use a response template to compose an email or a work note
Use response templates to access predefined messages and compose emails. Agents can copy
content from a template and add it to an email to save time.

Before you begin

Role required: sn_customerservice_agent with the sn_templated_snip.template_snippet_reader
role

About this task

The contextual side panel provides access to response templates that can help you efficiently
compose an email response. Selecting the Response Template icon (
messages that you can copy and paste into emails.

) shows reusable

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. In the contextual side panel, select the Response Template icon (

).

6. In the Response Templates side panel, search for a template.
7. Select a template and then select Copy to clipboard.
8. Paste the template text into the Work notes field or the Email field.
Compose a work note for internal use
Compose a work note to document important information for internal reference. The information
should be clear, concise, and relevant. This work note isn’t shared with customers.

Before you begin

Role required: sn_customerservice_agent

About this task

The work note is visible exclusively to the agent and remains private from the customer.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. In the Compose section, select Work notes.
6. Optional: Select the Pop out in modeless window icon (
separate dialog.

) to compose worknote in a

7. Enter the relevant content.
8. Select Post Work notes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1744


<!-- page 1745 -->
Result

The work note is posted on the Activity stream of the email interaction and is marked with the
New Activity marker.
View notifications on email response
View notifications on email responses that are received from the customer in the ongoing email
conversation.

Before you begin

Role required: sn_customerservice_agent, or sn_customerservice_manager

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the ongoing tab icon ( ).
A list of ongoing email interactions is displayed.
3. Select the relevant email interaction.

Result

The interaction record displays the latest email responses.
Close an email interaction
Close the email interaction after the customer accepts the resolution. The email interaction also
automatically closes due to customer inactivity.

Note: After an email interaction is closed, sending emails or composing worknotes within
that interaction is no longer available.
Close an email interaction after the customer accepts a resolution
Close an email interaction after receiving the customer’s confirmation of the resolution.

Before you begin

Role required: sn_customerservice_agent, or sn_customerservice_manager

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. Select Close.

Result

The email interaction is closed and marked as Closed Complete.
Close an email interaction due to customer inactivity
An email interaction gets closed automatically when there’s no response from the customer
within a certain period. By default, the period of inactivity is set to a value of five days.
If a consumer, contact, or guest user doesn’t respond within five days, the email interaction
automatically closes. Any subsequent email from the customer creates an email interaction.
For more information on configuring the inactivity period property, see System properties for
configuring Email Interaction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1745


<!-- page 1746 -->
When a customer replies on top of a closed email interaction, a new email interaction is created
and linked to the closed interaction.
Creating a case from an email interaction
Create a case from an inbound email interaction when the customer query requires further
investigation. The case and interaction are linked to each other. All communication and case
details are easily accessible for more efficient resolutions.
After a case is created from an email interaction, the email interaction is automatically closed.
Create a case
Create a case from an inbound email interaction to make sure that issues are addressed and
routed for resolution.

Before you begin

Role required: sn_customerservice.consumer_agent, or sn_customerservice_manager

About this task

When you create a case from an inbound interaction, the system links the interaction to the case.
All future communication related to the case is stored within the case.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. Select Create case.
The system opens a new case form, automatically filling the Contact or Consumer field and
setting the channel to Email. The system then populates the Short Description with the email
subject.
6. Enter the case details.
7. Select Save.

Result

The process generates a case from an email, linking them for future communication. For more
information, see Accessing associated cases and interaction emails.
Associate an existing case with an email interaction
Avoid duplicate case creation by associating an existing case with an email interaction.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. From the top section, select the More Actions icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1746


<!-- page 1747 -->
6. Select Associate Record.
The Create New Interaction Related Record tab is displayed.
7. Select the case number from the Task drop-down list.
You can select the search icon (

) to view additional information about the task.

8. Select Save.

Result

The email interaction has been linked to an existing case and displays in the Related Tasks
section.
Accessing associated cases and interaction emails
Access the associated case from the email interaction and vice versa. From the email interaction,
agents can view the linked case for additional context. While from the case, they can access all
related email interactions. This smooth navigation helps agents manage customer issues more
effectively.
Access a case from an email interaction
View the linked case to get additional context on the email interaction.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. In the Interactions section, select My Interactions.
4. Open an email interaction.
5. From the contextual side panel, select Related Lists.
6. From the Related lists section, select Related Tasks.

Result

All cases associated with an email interaction and their details are displayed.
Access an email interaction from a case
View the linked email interaction to access all information related to the case.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. From the Cases section, select My Cases.
4. Open a case.
5. Select the Interactions tab.

Result

All email interactions associated with the case and their details are shown.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1747


<!-- page 1748 -->
Using the Customer Service Portal
Search for information about a question or an issue, or request assistance from a customer
service agent.
Your Customer Service Management Service Portal activity usually begins on the homepage.
Organizations usually customize their landing pages, and logged-in users often see different
information than users who are not logged in.

Note: If any active outages exist for your install base, they are displayed on the
homepage.

Note: A new customer service portal experience is available on the business portal. For
details, see Using the Business Portal.
From the Customer Service Portal homepage, you can access and use the following features:
Customer Service Portal homepage for logged-in users
UI
component

Description

Knowledge Clicking Knowledge on the header or the main page takes you to the Knowledge
homepage. You can search the knowledge base or view a list of top-rated or most
viewed knowledge base articles.
Requests

Displays all your requests. You can also request items and services from the
catalog.

My Lists

Lists all your cases.

Case

Provides access to all cases and quick links to create a product or order case.

Support

Navigate to appointments, contacts, work orders, install base, and other quick
links.
The list view of the Install Base items provide details related to customers like
account and contact.

Notification Displays notifications sent for resolved cases, cases awaiting information,
publications, and approvals.
Tours

View a tour for additional guidance on how the Customer Service Management
application works. Your administrator determines whether tours appear on pages.

Live Chat

Click Live Chat to chat with a virtual agent or a customer service agent.

Callback
request

Request a callback when the wait time to reach agents is long or agents are
unavailable.

Profile
menu

Click your profile photo to either view your profile or log out.

Search

Enables you to search. Either enter a keyword to use the type-ahead search or
enter one or more words to view all search results.

Ask the
Provides access to the Community homepage where you can ask questions
Community and get answers fast, connect with people who share similar expertise, and join
forums and participate in discussions.
Get help

Click Get help to make a request or report a problem by opening a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1748


<!-- page 1749 -->
Customer Service Portal homepage for logged-in users (continued)
UI
component

Description

Request
something

Request items and services from the catalog.

Most
viewed
articles

View a list of the most viewed articles.

Featured
articles

View featured Community content.

Most
useful
articles

View the most useful knowledge articles based on the usage count of the articles.

The following components are available if you have installed the Communities application:
Recent
solved
discussion

View a list of recently solved discussions.

Recent
View a list of recently published community blogs.
community
blog
Community View a list of featured community content.
featured
content

Note: You can view the metadata for each entry in the widgets, such as the number of
views, number of days from the time the article or feature was published, and rating for the
article.
Manage contacts from the customer portal
Create and update customer contacts, assign roles to contacts, and enable or disable contact
logins from the customer portal.
Create a customer contact
Use the Create Contact catalog item to create a contact from the customer portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

About this task

By selecting the Create Contact catalog item, you can add the details for a contact and create
the contact record. After saving the record, you can perform the following actions depending on
your role.
• Users with the sn_customerservice.customer_admin or sn_customerservice.partner_admin can
update the contact's user ID and enable or disable notifications.
• Users with the admin role can set a password for the contact and require the contact to reset
their password.

Note: These actions are available while you are creating the contact record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1749


<!-- page 1750 -->
Procedure
1. Click Requests > Request Something in the portal header.
2. In the Categories list, click Services and then click the Create Contact catalog item to display
the Create Contact form.
3. Fill in the fields on the Create Contact form.
Contact form
Field

Description

First name

The customer's first name.

Last name

The customer's last name.

Title

The customer's job title.

Language

The customer's preferred language.

Account

The customer's account.

Email

The customer's email address.

Business phone

The customer's business phone.

Mobile phone

The customer's mobile phone.

4. Click Submit.
The system creates the contact and updates the Contact form.
5. Optional: Update the information in the following fields.
Additional Contact fields
Field

Description

Notification

Enable or disable notifications for this
customer.

User ID

A unique identifier for this user. The
user ID should follow this format:

firstname.lastname
6. Optional: With the admin role, you can update password information for the contact.
Contact password information
Field

Description

Password

Set a password for the contact.

Password needs reset

Requires the contact to reset their password
when they log in to the portal.

7. Click Save to update the record.
Update contact information for a user
Update the contact information for a user from the customer portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1750


<!-- page 1751 -->
Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

Procedure
1. Click Support > Contacts in the portal header.
2. Select a contact from the Contacts list.
3. Make the desired changes to the fields on the Contact form.
Contact form
Field

Description

First name

The customer's first name.

Last name

The customer's last name.

Title

The customer's job title.

Language

The customer's preferred language.

Time zone

The time zone for this customer's location.

Account

The customer's account.

Email

The customer's email address

Business
phone

The customer's business phone.

Mobile
phone

The customer's mobile phone.

Notification

Enable or disable notifications for this customer.

User ID

A unique identifier for this user. The user ID should follow the format
firstname.lastname.

4. Click Save.
Enable or disable the login for a contact
Enable or disable the login for a contact from the customer portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

Procedure
1. Select Support > Contacts in the portal header.
2. Select a contact from the Contacts list.
3. In the Actions list, select one of the following links.
Choice

Description

Disable login

Disables the login for this contact. When the
login is disabled, the contact can’t access the
customer portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1751


<!-- page 1752 -->
Choice

Description

This link is displayed if the login is enabled.
Enables the login for this contact.
Enable login

This link is displayed if the login is disabled.

Assign a user role to a contact
Assign one or more user roles to a contact from the customer portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

About this task

Use the Edit Role pop-up window to manage the roles for a contact. Contacts must have at least
one assigned user role. If there are no roles in the Selected column on the pop-up window, you
cannot update the record.

Note: The roles available in the Edit Role pop-up window are configured using the
sn_customerservice.contact_role_assignment property.

Procedure
1. Click Support > Contacts in the portal header.
2. Select a contact from the Contacts list.
3. In the Actions list, click the Edit Roles link.
4. In the Edit Role pop-up window, select a role in the Available column and move it to the
Selected column.
5. Click Update on the Edit Role pop-up window.

Note: If there are no roles in the Selected column, the system displays an error
message and the column resets to display the originally assigned roles.
6. Click Save on the Contact form.
Manage customer registration requests
Users with the customer administrator role can approve or reject registration requests that
customers submit from the Customer Service Portal.
Approve a registration request with a valid registration code
Approve a registration request from a user that was submitted from the Customer Service Portal
with a valid registration code.

Before you begin

Role required: sn_customerservice.customer_admin

Procedure
1. Navigate to the customer portal.
2. Click Approvals.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1752


<!-- page 1753 -->
The Approvals list displays registration requests with these states: Requested and No Longer
Required.
3. Click a request in the Approvals list with a state of Requested.
4. If desired, add any Comments to this request.
5. Click Approve.
A user account is created and an email is sent to the contact’s email address with a user
ID and temporary password. The user is also assigned these roles: sn_esm_user and
snc_external.
Reject a registration request
Reject a registration request from a user that was submitted from the Customer Service Portal.

Before you begin

Role required: sn_customerservice.customer_admin

Procedure
1. Navigate to the customer portal.
2. Click My Approvals.
3. Click a request in the Approvals list with a state of Requested.
4. Click Reject.
An email regarding the rejection is sent to the requestor’s email address.
Assign a contact to an asset from the customer portal
Users with the customer administrator role can assign a contact to an asset from the customer
portal.

Before you begin

Role required: sn_customerservice.customer_admin

Procedure
1. Log in to the customer portal.
2. Click Support > Assets from the portal header menu.
3. Click the desired asset.
4. Click New in the Asset Contacts related list.
This displays a new Asset Contact form. The Asset field displays the selected asset and is
read-only.
5. Select a Contact.
The contacts available for selection are the contacts from the asset's account.
6. Click Submit.
The contact is added to the Asset Contacts related list.
Search for information on customer service portal
Use the search feature on the customer portal to find information about a question or an issue.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1753


<!-- page 1754 -->
About this task

The portal has a search feature that you can use to search for information across several
repositories. Enter a search term in the Search field and then click Search to display a list of
related articles.

Procedure
1. Enter a search term into the Search field.
2. Click Search.
A list of articles related to the search term is displayed.
3. Click a link to view an article.
Search the knowledge base
Use the customer portal to search the knowledge base or view a list of popular knowledge base
articles.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

The customer service portal includes a link to the knowledge base that you can use to search for
information, read and rate articles, and submit feedback. Under this link, the portal displays a list
of popular knowledge base articles. If the information that you need is not included in this list,
you can search the knowledge base for the desired information.

Procedure
1. Navigate to the customer service portal.
2. Click Knowledge.
The knowledge page displays a separate category for each of the products purchased by this
customer. It also displays lists of articles by:
◦ Featured content
◦ Most useful
◦ Most viewed
3. Do one of the following,
Option

Description

Click a product to display more specific in­
formation

Displays a list of categories on the left and arti­
cles on the right. Click a category to drill down
even further.

Click a link from one of the lists

Displays the article.

Type a topic in the Search field and press
the Enter key

Displays a list of related articles. Click a link to
display the desired article.

Search the customer service community
Use the customer service portal to search the community site or view a list of recent discussion
topics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1754


<!-- page 1755 -->
Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

Procedure
1. Navigate to the customer service portal.
2. Click Ask the Community.
This brings up the Ask a Question page.
3. Enter a question in the Title field.
4. Select a knowledge base in the Knowledge Base field.
5. If desired, select a category in the Category field.
6. If desired, add one or more tags to your question in the Tags field.
7. Click Post Question.
The question appears on the search results page under the Questions category.
Deflect cases with knowledge and community content
Enable customers to search for information from the knowledge base and community and find
solutions to their issues.

Before you begin

Role required: sn_customerservice_customer or sn_customerservice_consumer

About this task

The Service Portal Case form displays contextual search results based on text entered in the
Subject field. These search results provide targeted solutions to customers. Customers can
search for information that is related to a case when opening a case. If the search results in any
related content, the customer can preview the content.
Note: By default, search results include knowledge articles, solved community questions
and blogs, and pinned articles.

Procedure
1. Navigate to the Customer Service Management Service Portal and then All > Support > New
Cases.
2. Click Product Case or Order Case.
3. Start typing in the Subject field.
If there are any search results that match, they are displayed in the Related Search Results
widget.

Note: If embedded search has been enabled, the results are displayed inline in the
Case form in a Knowledge results section and are read-only.
4. Perform one of the following actions.
◦ Click one of the content links in the Related Search Results widget to enter the content
directly.
◦ Click one of the content links in the embedded Knowledge results section to open the
content inline as read-only.
5. Optional: Click This helped to mark the content as helpful for resolving the associated case.
6. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1755


<!-- page 1756 -->
View asset information from the Customer Service Portal
View a list of assets for the current user's account.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

Procedure
1. Click Support > Assets in the portal header.
This displays a list of assets that belong to the current user's account, including the name and
serial number of the asset and the product model category and account to which it belongs.
2. Click one of the following to view more information.
Option

Description

Display name

Displays the asset information.

Account

Displays the account information.

Model category

Displays the product model information for
this asset.

3. Click the Back button to return to the list of assets.
View or update customer contact information
View or update your contact information from the customer portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

Procedure
1. Navigate to the customer portal.
2. Select support > Contact.
3. Select the required contact.
4. Make any desired changes to the fields on the Contact form.
Contact form
Field

Description

First name

The customer's first name.

Last name

The customer's last name.

Title

The customer's job title.

Language

The customer's preferred language.

Time zone

The time zone for this customer's location.

Account

The customer's account.

Email

The customer's email address

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1756


<!-- page 1757 -->
Field

Description

Business
phone

The customer's business phone.

Mobile
phone

The customer's mobile phone.

Notification

Enable or disable notifications for this customer.

User ID

A unique identifier for this user. The user ID should follow the format
firstname.lastname.

5. Select Save.
Customer notification preferences
Customers can set preferences for email notifications.
Email notification preferences are set to control email notifications that are sent to the customer
when an agent performs one of the following case activities:
• Opens a case for a customer
• Comments on a customer's case
• Provides a resolution for a customer's case
• Closes a customer's case
• Escalates a customer's case
• Assigns case to a new group
Set email notification preferences
Customers can set preferences for email notifications that are sent when customer service
agents perform different actions on cases.

Before you begin

Ensure that you have received at least one email for the case to set the email notification
preferences.
Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

Procedure
1. Navigate to the customer service portal.
2. Click your user name or photo in the portal header to display your user profile information.
3. Click the Notification Preferences related link to display the Notification Preferences form.

Note: The Notification Preferences link is available only after receiving the first email
for the case.
4. Enable or disable the following email notifications for your primary email address.
The notifications are available based on the actions performed by customer service agents on
the case.
◦ Case closed for customer
◦ Case commented for customer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1757


<!-- page 1758 -->
◦ Case escalated for customer
◦ Case assigned to a new group
◦ Case opened for customer
◦ Case resolved for customer
For details about notifications and creating new notifications, see Send Notification action

.

Change your password directly from the Customer Service Portal
Change your password directly from the Customer Service Portal. Users with the required roles
can change their passwords from the Customer Service Portal.

Before you begin

Role required: none

About this task

Users with the required roles can change their passwords from the Customer Service Portal.

Procedure
1. Go to the Customer Service Portal page by accessing your instance URL and adding a /csm
suffix.
For example, https://example.com/csm.
2. Click your user name in the portal header.
3. Click Profile to display the user profile information.
4. Click Change Password under Security.
5. On the form, fill in the fields.
Change Password form
Field

Description

Current Password

The current password. This field is automatically filled in.

New Password

The new password, which must meet the following requirements:
◦ Be a minimum of eight characters long
◦ Include at least one uppercase and one lowercase letter
◦ Include at least one number

Confirm Password

The new password.

6. Click Change.
Customer contact self-registration
The self-registration feature enables new customer contacts to submit registration requests
through the customer portal.
A customer contact can submit a registration request using a valid registration code. The request
is then sent to the customer administrator of that account for approval. For details, see Approve a
change request, or registration request.
If an account has multiple customer administrators, they all receive the registration request, but
only one approval is necessary.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1758


<!-- page 1759 -->
The request is either accepted or rejected. If accepted, a new account is created, and the
customer contact gets an email with a user ID and a temporary password. When logging in to
the portal for the first time, the customer contact needs to change the temporary password. If
rejected, the customer contact gets an email notification.

Note: If a request is submitted with an incorrect registration code, a notification message
appears Invalid Registration Code.
Customer contact self-registration form

The administrator creates a unique registration code for each account and stores it in the
Registration Code field on the Account form. After the code is created, customer administrators
can distribute the code to customers as needed.
Related topics
Example: The default self-service Password Reset process
Submit a self-registration request
Submit a registration request from the Customer Service Portal.

Before you begin

Role required: none

Procedure
1. Navigate to the customer portal login page.
2. Request a login by selecting Register from the portal header.
3. Fill in your First Name, Last Name, Business Email, and Registration Code.
4. Enable the check box to agree to the privacy policy and to the community terms and
conditions.
Select the links to access more information about these policies.
5. Enable the Security Code check box, complete the CAPTCHA validation, and select Verify.
The Customer Service application uses the Google re-CAPTCHA service.
6. Select Submit.
You’re returned to the portal login page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1759


<!-- page 1760 -->
If you entered a valid registration code, you see this message: “Your request has been
submitted and is pending review. You receive an email when your request is processed".
If the code was incorrect, you see this message: “Incorrect Registration Code".
Request a password reset
If you forget your password, you can request a new password from the customer portal login
screen.

Before you begin

Role required: none

Procedure
1. Navigate to the customer portal login page.
2. Click the reset your password here link.
3. Enter your User name and Email address.
4. Click Reset Password.
5. Create a new password before continuing.
6. Enter the new password in the Password field.
7. Enter the new password again in the Validate Password field.
8. Click Submit.
Log in to the Customer Service Portal for the first time
After a registration request is approved, the customer contact receives an email with a user ID
and temporary password. When logging in for the first time, the contact is asked to change the
password.

Before you begin

Role required: none

Procedure
1. Navigate to the Customer Service Portal login page.
2. Enter your user ID in the User name.
3. Enter your temporary password in the Password field.
4. Select Login.
You’re prompted to change your password.
5. Enter your temporary password in the Current Password field.
6. Enter your new password in the New Password field.
7. Reenter your new password in the Confirm New Password field.
8. Select Submit.
View product information from the Customer Service Portal
View a list of products to track the products or services sold to your account and manage your
services using service catalogs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1760


<!-- page 1761 -->
Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

You can view a list of products or services that have been sold to your account. You can also view
any cases created on the product and all active contracts and entitlements for the product.
Note: When the Customer Data Models for B2B2C plugin installed, contacts are able to
access the list of sold products belonging to account consumers.
An entitlement is active if:
• Its end date is not in the past or it has no end date.
• The contract it is linked to is also active.
A contract is active if:
• Its state is set to active
• It is linked to a product with an active entitlement.
You can modify the Active Entitlements widget to define your own filters for active entitlements.
If product catalog items have been set up in your instance, you can use the Service Catalogs
widget to view context-sensitive service catalogs based on the services you are subscribed to.
Extend your services using service catalogs and request additional items on the services you
have subscribed to.

Procedure
1. Navigate to the Customer Service homepage.
2. Click Support > Products in the header menu.
The system displays a list of products or services sold to your account.
3. Click a product to view the details and any cases created on the product in the last 30 days.
4. View all active contracts and entitlements for the sold product.
5. Optional: You can also create a case directly from the product details.
6. Optional: View all catalog items associated to sold products and request additional services,
as required.
Create a product case from the Customer Service Portal
Create a case about a question or issue on a product from the Customer Service Portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.partner,
sn_customerservice.customer_admin, or sn_customerservice.partner_admin,
sn_acct_consumer.consumer

Procedure
1. Go to the Customer Service Portal by accessing your instance URL and adding a /csm suffix.
2. Right-click in the form header and choose Case > Create Product Case.
3. On the form, fill in the fields.

Note: Depending on your role, you might not see the Account and Contact fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1761


<!-- page 1762 -->
Create Case form
Field

Description

Account

The account for which the case is being created.

Contact

The name of the customer contact for this case.

Consumer

The name of the consumer for this case.

Note: This field is active only when the Customer Data Models for B2B2C
plugin is installed. Once Account is selected, only consumers belonging to
the account are displayed.
Asset

The asset tag number or the serial number of the asset associated with this
case.

Product

The product model of the asset. A model is a specific version or configuration of
an asset (for example, Apple Mac Book Pro).
If you select an asset in the Asset field, this field is auto-populated if the
associated product information is available in the asset record. A product may
be associated with multiple assets.

Priority

The available assigned priorities are:
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low (default)

Subject

A brief description of the customer question, issue, or problem.

Note: When you start entering the subject, the application searches for
relevant content in the knowledge bases configured for the portal. the
results are displayed in the Related Content list.
Description A detailed description of the customer question, issue, or problem.

Note: Currently, the Save as Draft option is not optimized for Customer Service
Management portals and, it is inactive by default.
4. Select Submit.

Result

The case is created, assigned a case number, and added to the creator's case list. To view this
list, select the My Lists tab on the Customer Service Portal header and select All Cases in the
left pane.
Chat with an agent from the Customer Service Portal
Chat with a virtual agent or a customer service agent from the Customer Service Portal to resolve
issues quickly.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, sn_customerservice.partner_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1762


<!-- page 1763 -->
Procedure
) in the Customer Service Portal to start a conversation.
1. Select the Chat icon (
A virtual agent or a customer service agent responds.
2. Optional: To talk to a person instead of a virtual agent, select

and then Contact Support.

3. When you’re finished with the chat, select End Conversation.

What to do next

If the agent creates a new case or links the discussion to an existing case, you can view these
cases from the customer portal by selecting My Cases and displaying the case list.
Get help using virtual agent conversations
Predefined Customer Service Virtual Agent chatbot conversations help your customers complete
common self-service tasks, such as getting help with a product or checking the status of a case.
Use predefined NLU with your virtual agent chatbot topics to enable the chatbot to assess user
intent and provide the best response based on the conversation's context.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer
If you’re an anonymous user not logged in to the application, you can get help by entering
keywords for an issue and choose to get transferred to a live agent.
A user with a proxy_contact role can also check the case status for a customer.

About this task

The information exchanged during the conversation flow (user inputs and bot responses)
enables the chatbot to fulfill a user request or assist a user in completing a task. If you have a
question or an issue with an existing product or order, the virtual agent searches the keyword
and displays relevant knowledge articles that can help resolve the issue. If there are no relevant
articles, it creates a case.
ServiceNow NLU enables discovery of the chatbot topics based on either the keywords entered
in the chat or the user-intent and matches an entity with the user input. If there’s a match, it also
makes the entity available to the topic.

Procedure
1. Navigate to the Customer Service Management portal.
2. Select Chat.
You can select Show Me Everything to display all available topics or enter keywords to narrow
down the results to relevant topics.
3. If you’re a logged-in user, enter keywords to get help on a case, an issue, or an order.
◦ If an NLU is enabled, it guides you through the right topic based on the utterance.
◦ If an NLU isn’t enabled, it displays topics based on the match for the entered keywords. You
can make a selection from all available topics displayed.

Note: Contact your administrator to determine whether the topics are NLU-enabled.
4. Use

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1763


<!-- page 1764 -->
To

Follow these steps

a. Initiate checking the case status.
▪ If you’re using the virtual agent conversation without en­
abling NLU, select Check Case Status.
▪ If you’re using NLU in your virtual agent conversation, enter
an utterance to check the status of a case.

Note: If you provide a case number, you’ll be pre­
sented with the details of the case.
Check the status of a case

b. Select a case from the case list that you would like to get help
for.
c. When the case information displays, you can do one of the
following:
▪ Add a comment
▪ Attach a picture
▪ Check another case
▪ Contact an agent.
Enter a keyword for your issue. The chatbot returns a list of re­
lated knowledge articles to help resolve your issue. If there are
no matching articles associated with the description, a case is
automatically created with the following information:
◦ Case identification number
◦ Short description

Get help with a product

◦ State
◦ Priority
Take any of the following additional actions:
◦ Update the product and asset
◦ Add a comment
◦ Attach a picture
◦ Contact an agent
a. Initiate checking the status of your order.
▪ If you’re using the virtual agent conversation without en­
abling NLU, select Get Help with Order.
▪ If you’re using NLU in your virtual agent conversation, enter
an utterance to get help on an order.

Get help with an order

Note: If you provide an order number, you’ll be pre­
sented with the details of the order.
b. Select an order from the list of your orders that you would like
to get help for.
c. Take any of the following additional actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1764


<!-- page 1765 -->
To

Follow these steps

▪ Add a comment
▪ Attach a picture
▪ Contact an agent

Get help

If you’re an anonymous user not logged in to the application,
enter keywords for your issue. The chatbot returns a list of relat­
ed knowledge articles that have been made public. If there are
no matching articles that would help resolve the issue, you can
choose to be transferred to a live agent.
a. Initiate submitting your request for one of the catalog items.
▪ If you’re using the virtual agent conversation without en­
abling NLU, select Show Me Everything and then select
Submit a request.
▪ If you’re using NLU in your virtual agent conversation, enter
an utterance. For example, open a request that identifies
an associated NLU intent.

Submit Request

b. Select the catalog item. The Search Catalog Item topic block
searches for the catalog item and displays a link based on
your search. For more information about search catalog item,
see

Note: Wherever the topic is opened, the records dis­
play on the same portal.
c. Select the link displayed and exit the virtual agent if you
don’t have any further request.
Creates a case from Virtual Agent. You need the following fields
to create a case:
◦ short_description (required)
◦ description
Create Case

◦ account_sys_id
◦ contact_sys_id
◦ consumer_sys_id
The values of the fields can be empty. If the account, contact,
and consumer fields are empty, the logged-in user details are
populated. The topic block returns the variable case_sys_id
from the topic block.

Update Case

Updates a case from Virtual agent. You need the following two
fields to update a case:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1765


<!-- page 1766 -->
To

Follow these steps

◦ case_sys_id (required) - must be a valid case ID. If the ID is
valid, then the following four options are displayed:
▪ Add product information is displayed only if enable_prod­
uct_update is set to true.
▪ Add a comment
▪ Attach an image
▪ Cancel
◦ enable_product_update - If set to true, the Add product infor­
mation option is displayed. It updates the asset and model in­
formation.
The topic block returns the variable case_sys_id
Select this option to create a complaint case from Virtual
Agent. Provide a brief description of the complaint and review
the contextual search results. If the results don’t provide an an­
swer, enter the following information to create a case:
◦ Complaint type
◦ Product or location
Log a complaint

◦ Category and subcategory (if applicable)(
◦ Date
◦ Complaint details
◦ Expected resolution
After the case is created, you can add a comment to the case
or add attachments.

Note: This option is available with the Case Playbook for
Complaints application.
Request a callback

Request a callback when the wait time to reach agents is long
or agents are unavailable.

5. To exit a chat conversation, select I'm done.
Related topics
Customer Service Virtual Agent conversations
Maximizing code reuse with topic blocks
View or modify a case from the Customer Service Portal
View or modify the information in a selected customer service case.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, sn_customerservice.partner_admin

About this task

Depending on the role of the current user, the Case list displays:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1766


<!-- page 1767 -->
• Cases created by the current user (sn_customerservice.customer)
• Cases related to the current user's account (sn_customerservice.customer_admin)
• Cases related to the current user's account as well as partner accounts
(sn_customerservice.partner, sn_customerservice.partner_admin)

Procedure
1. Click Case > All Cases in the portal header.
Cases are ordered in the list with the most recently updated at the top.
2. Click the desired case number to open the Case form.
3. Make any necessary changes to the Additional comments field.
All other fields on the form are read-only.
4. Click Update.
View a publication on the Customer Service Portal
View the details of a publication on the Customer Service Portal and download any attachments.

Before you begin

Role required: sn_customerservice.customer

About this task

The Publications link on the customer service portal displays a list of current publications that is
sorted by publication number.

Note: After a publication reaches its expiration date, it is automatically removed from the
Publications list.

Procedure
1. Navigate to the customer service portal.
2. Click Support > Publications in the portal header.
This displays a list of current publications. The information displayed for each publication
includes the title, publish date, expiration date, and a brief description.
3. If desired, search the Publications list by entering the search term in the search field at the top
of the list.
4. Click a publication name to open.
5. If the publication has attachments, select the attachments to download from the pop-up
window.
6. Close the pop-up window.
7. Click the return arrow at the top of the publication to return to the Publications list.
Complete a customer service satisfaction survey
After accepting a proposed solution for a case, complete a customer service satisfaction survey.

Before you begin

Role required: none
When a customer accepts a proposed solution for a case by clicking Accept Solution on the
case form, a satisfaction survey is displayed in the portal. The customer has the option of
completing or skipping the survey. Either choice returns the customer to the list of cases on the
self-service portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1767


<!-- page 1768 -->
To complete the survey:

Procedure
1. Answer each of the survey questions.
2. Click Submit.
Request an item or service from the Customer Service Portal
Browse the catalog and create a request from the Customer or Consumer Service Portals.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner,
sn_customerservice.customer_case_manager, sn_customerservice.customer,
sn_customerservice.consumer, sn_customerservice.proxy_contact

About this task

Customers and consumers can make requests from the Customer and Consumer Service
Portals. Customer administrators, partners, and case managers can also make requests.
Note: Creating a request from the Customer and Consumer Service Portals
requires activation of the Customer Service with Request Management plugin
(com.sn_cs_sm_request). It also requires that the system administrator provide external
customers with access to request records.

Procedure
1. Do one of the following to create a request:
◦ Click the Request Something link on the portal landing page.
◦ Click Requests > Request Something in the portal menu header.
2. Browse the service catalog and select the desired item or service.
You can also use the Category filters to filter the available items.
3. Fill in any necessary information related to the request.
4. Click Submit.
The system processes the request, creates the request and any other related records, and
displays the details in the Related Records widget on the case view page.
View case records from the Customer and Consumer Service Portals
View case records such as requests, changes, or problems, from the Customer or Consumer
Service Portals.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner,
sn_customerservice.customer_case_manager, sn_customerservice.customer,
sn_customerservice.consumer

About this task

If a case has one or more related records, a Related Records widget is displayed on the case
view page that lists those records.

Procedure
1. Navigate to the Customer or Consumer Service Portal.
2. Click My Lists in the portal header and then select a case.
You can use the My Lists filter to narrow the list of records before selecting a case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1768


<!-- page 1769 -->
3. In the Related Records widget, click a record to view its details.
4. Optional: For request records, expand the Stage field to display more details about the
request process.
5. Click the X in the upper corner to close the details window.
Close a case from the Customer Service Portal
Customers and consumers can close cases from the Customer and Consumer Service Portals.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer

About this task

This feature is available for the Customer Service Portal (B2B) for product and order cases and
for the Consumer Service Portal (B2C).
The Close Case button is not available for cases in the Resolved or Closed states.

Procedure
1. Click Cases in the portal header to open the Case list.
2. Open the desired case.
3. In the Actions section, click Close Case.
4. In the confirmation pop-up window, click Close Case.
When a case is closed from the portal:
◦ The case status in the Case details section is updated to Closed.

Note: You cannot add comments after the case is closed. You can only view the
previous comments in the activity stream.
◦ The case additional comments and resolution notes are updated with Closed by customer.
◦ The case resolution code is set to Solved by customer
◦ A message at the top of the portal confirms that the case has been closed.
◦ The system displays a customer satisfaction survey.
5. Complete the customer satisfaction survey.
You can also choose to skip the survey. Either choice returns you to the case list on the portal.
View install base information from the Customer Service Portal
View a list of install base to track the instances provisioned for your account and which products
or services run on them.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

You can view all cases and the service status from the last 30 days as well as all active, past, and
planned outages. You can also view any active entitlements for the install base. An entitlement
is active when its end date isn’t in the past or it has no end date. If it’s linked to a contract, the
contract must also be active.

Note: When the Customer Data Models for B2B2C plugin installed, contacts are able to
access the list of install base items belonging to account consumers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1769


<!-- page 1770 -->
Note: You can modify the Active Entitlements widget to define your own filters for active
entitlements.

Procedure
1. Navigate to the Customer Service Portal.
2. Click Support > Install Base in the header menu.
The system displays a list of install base items that belong to your account.
3. Select an install base to view the details, including cases created on the install base in the last
30 days, active entitlements, as well as service status and outage history.
4. Optional: You can also create a case directly from the install base details.
Create a case for install base from the Customer Service homepage
Create a case about a question or issue on your install base from the Customer Service
homepage.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.partner,
sn_customerservice.customer_admin, or sn_customerservice.partner_admin

About this task

Install base enables you to track which instances have been provisioned for your account and
the products and services that run on them.

Procedure
1. Navigate to the Customer Service homepage.
2. Click Create Case for Install Base.
3. Fill out the fields on the form, as required.
Create Case form
Field

Description

Product

The sold product you have a question on or issue with.

Install Base

The install base item you have a question on or issue with.

Priority

The assigned priority:
◦ 1 — Critical
◦ 2 — High
◦ 3 — Moderate
◦ 4 — Low (default)

Subject

A brief description of the question, issue, or problem.

Description

A more detailed description of the customer question, issue, or problem.

Note: Currently, the Save as Draft option is not optimized for Customer Service
Management portals and, it is inactive by default.
4. Select Submit.
The case is created, assigned a case number, and added to the user's case list. Click My
Cases at the top of the customer portal to view the Cases list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1770


<!-- page 1771 -->
Approve a change request, or registration request
Users with the snc_external role can view and approve registration requests and change
requests from the Customer Service Portal.

Before you begin

Role required: snc_external

About this task

A registration request or a change request may require approval from another employee within
the same organization. For details on registration request, see Customer contact self-registration.

Procedure
1. In the Customer Service Portal header, click Notification > View all notifications.
2. Click a record in the Approvals section of the Notifications page.
The system displays a read-only view of the record approval form. For requests that include
one or more items, these items appear in a collapsible list at the bottom of the Request form.
3. Optional: Click a requested item at the bottom of the Request form to view the details in a
pop-up window.
4. Click Approve.
The system makes the following updates:
◦ The record status is set to Approved.
◦ The record status is displayed after the record number in the Related Records widget on the
Case form.
◦ The record status is added to the Case form.
▪ If the record is approved by the customer administrator or if the customer self-approves
the request, the change in status is added to the Additional comments field.
▪ For other approvers, the change in status is added to the Work notes field.
◦ The approval record is updated in the Approval table.
View the status of a request, change request, or registration request
Users with the snc_external role can view the status of requests and change requests from the
Customer Service Portal.

Before you begin

Role required: snc_external

Procedure
1. In the Customer Service Portal header, click My Lists.
2. In the My Lists filter, click My Cases.
3. Click a case in the Cases list.
4. View the record status after the record number in the Related Records widget.
Enable language selection for guest users
The language selector widget enables guest users and unauthenticated users to select, view,
and update content in their preferred language.
When a user selects a preferred language, the portal content reloads into the selected language.
The widget is enabled by default on the Knowledge portal, the Customer Service Management
portal, and the Consumer Service portal. Users can map their languages with regions to view all
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1771


<!-- page 1772 -->
available languages in the form of a pop-up on the same screen. The widget appears only if a
language other than English is active on the instance.
Language selector widget

If languages aren’t grouped, users can view all available languages as a full-screen experience.

Note: The full screen mode is available in the mobile view.
Language selection experience without region grouping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1772


<!-- page 1773 -->
Related topics
Enable language selector widget
Service Portal properties
Create regions for language selection in portals

Using the Business Portal
Search for information about a question or an issue, or request assistance from a customer
service agent.
Your Business Portal activity usually begins on the home page. It has configurable widgets to
display information.
From the Business Portal home page, you can access and use the following features:
Business Portal home page for logged-in users
UI component Description

Browse
services

Browse through topics and request services.

Frequently
asked
questions

Get quick answers to common questions.

Resources

Navigate to the Knowledge, Publications, or FAQs pages.

Requests

Submit a request or View submitted requests.

My hub

Manage products and install base items.

My company Create or manage contacts.
Notification

Displays notifications sent for resolved cases, cases awaiting information,
publications, and approvals.

Tours

View a tour for additional guidance on how the Customer Service Management
application works. Your administrator determines whether tours appear on
pages or not.

Live Chat

Chat with a virtual agent or a customer service agent.

Callback
request

Request a callback when the wait time to reach agents is long or agents are
unavailable.

Profile menu

View your profile or log out.

Search

Enables you to search. Either enter a keyword to use the type-ahead search or
enter one or more words to view all search results.

Track
your case
updates

View updates on your case.

Browse
topics

Navigate through topics to explore our services and resources.

Quick links
to get you
started

View links to knowledge articles,catalogs, and external links.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1773


<!-- page 1774 -->
Business Portal home page for logged-in users (continued)
UI component Description

Most
trending
articles

View a list of the most viewed articles.

Most popular Request items and services from the catalog.
services
Footer

Contains important links, contact information, and legal details for easy access.

Manage contacts from Business Portal
Create and update customer contacts, assign roles to contacts, and enable or disable contact
login from the business portal.
Create a customer contact
Use the Create Contact catalog item to create a customer contact from the business portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

About this task

By selecting the Create Contact catalog item, you can add the details for a contact and create
the contact record. After saving the record, you can perform the following actions depending on
your role.
• Users with the sn_customerservice.customer_admin or sn_customerservice.partner_admin can
update the contact's user ID and enable or disable notifications.
• Users with the admin role can set a password for the contact and require the contact to reset
their password.

Note: These actions are available while you’re creating the contact record.
Procedure
1. Navigate to the business portal.
2. Select My company > Create a contact in the portal header.
3. Fill in the fields on the Create Contact form.
Contact form
Field

Description

First name

The customer's first name.

Last name

The customer's last name.

Title

The customer's job title.

Language

The customer's preferred language.

Account

The customer's account.

Email

The customer's email address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1774


<!-- page 1775 -->
Field

Description

Business phone

The customer's business phone.

Mobile phone

The customer's mobile phone.

4. Select Submit.
The system creates the contact and updates the Contact form.
5. Optional: Update the information in the following fields.
Additional Contact fields
Field

Description

Notification

Enable or disable notifications for this
customer.

User ID

A unique identifier for this user. The
user ID should follow this format:

firstname.lastname
6. Optional: With the admin role, you can update the password information for the contact.
Contact password information
Field

Description

Password

Set a password for the contact.

Password needs reset

Requires the contacts to reset their password
when they log in to the portal.

7. Select Save to update the record.
Update contact information for a user
Update the contact information for a user from the business portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

Procedure
1. Navigate to the business portal.
2. Select My company > Manage contacts.
3. Select the desired contact from the Contacts list.
4. Select Edit details.
5. Make the desired changes on the Contact form.
Contact form
Field

Description

First name

The customer's first name.

Last name

The customer's last name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1775


<!-- page 1776 -->
Field

Description

Title

The customer's job title.

Language

The customer's preferred language.

Time zone

The time zone for this customer's location.

Account

The customer's account.

Email

The customer's email address

Business
phone

The customer's business phone.

Mobile
phone

The customer's mobile phone.

Notification

Enable or disable notifications for this customer.

User ID

A unique identifier for this user. The user ID should follow the format
firstname.lastname.

6. Select Save.
Enable or disable the login for a contact
Enable or disable the login for a contact from the business portal to control user access to the
portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin

Procedure
1. Navigate to the business portal.
2. Select My company > Manage contacts in the portal header.
3. Select a contact from the Contacts list.
4. In the Actions list, select one of the following links, as required.
Choice

Description

Disable login

Disables the login for this contact. When the
login is inactive, the contact can’t access the
business portal.
This link is displayed if the login is enabled.
Enables the login for this contact.

Enable login

This link is displayed if the login is disabled.

Assign user roles to a contact
Assign one or more user roles to a contact from the business portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner_admin, or
admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1776


<!-- page 1777 -->
About this task

Use the Edit Role pop-up window to manage the roles for a contact. Contacts must have at least
one assigned user role. If there are no roles in the Selected column on the pop-up window, you
can’t update the record.

Note: The roles available in the Edit Role pop-up window are configured using the
sn_customerservice.contact_role_assignment property.

Procedure
1. Navigate to the business portal.
2. Select My company > Manage contacts in the portal header.
3. Select a contact from the Contacts list.
4. In the Actions list, select the Edit Roles link.
5. In the Edit Role pop-up window, select a role in the Available column and move it to the
Selected column.
6. Select Update on the Edit Role pop-up window.

Note: If there are no roles in the Selected column, the system displays an error
message and the column resets to display the originally assigned roles.
Manage customer registration requests from Business Portal
Users with the customer administrator role can approve or reject registration requests that
customers submit from the business portal.
Approve a registration request with a valid registration code on Business Portal
Approve a registration request from a user that was submitted from the business portal with a
valid registration code.

Before you begin

Role required: sn_customerservice.customer_admin

Procedure
1. Navigate to the business portal.
2. Select Notifications > View all notifications.
The Approvals card displays registration requests.
3. Select the desired request from the Approvals card.
4. Select Approve.
A user account is created and an email is sent to the contact’s email address with a user
ID and temporary password. The user is also assigned these roles: sn_esm_user and
snc_external.
Reject a registration request
Reject a registration request from a user that was submitted from Business Portal.

Before you begin

Role required: sn_customerservice.customer_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1777


<!-- page 1778 -->
Procedure
1. Navigate to the business portal.
2. Select Notifications > View all notifications.
The Approvals card displays registration requests.
3. Select the desired request from the Approvals card.
4. Select Reject.
A rejection email is sent to the requester’s email address.
Customer contact self-registration on Business Portal
The self-registration feature enables new customer contacts to submit registration requests
through the business portal.
A customer contact can submit a registration request using a valid registration code. The request
is then sent to the customer administrator of that account for approval. If an account has multiple
customer administrators, they all receive the registration request, but only one approval is
necessary.
After the request is submitted, it goes through an approval process and is either accepted or
rejected. If accepted, a new account is created, and the customer contact gets an email with a
user ID and a temporary password. When logging in to the portal for the first time, the customer
contact is asked to change the temporary password. If rejected, the customer contact gets an
email notification.

Note: If a request is submitted with an incorrect registration code, a notification message
appears Invalid Registration Code.
Customer contact self-registration form

The administrator creates a unique registration code for each account and stores it in the
Registration Code field on the Account form. After the code is created, customer administrators
can distribute the code to customers as needed.
Related topics
Example: The default self-service Password Reset process
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1778


<!-- page 1779 -->
Submit a self-registration request
Submit a registration request from the business portal.

Before you begin

Role required: none

Procedure
1. Navigate to the business portal.
2. Request a login by selecting Sign up from the portal header.
3. On the Customer Registration form, fill in your First Name, Last Name, Business Email, and
Registration Code.
4. Enable the check box to agree to the privacy policy and to the community terms and
conditions.
Select the links to access more information about these policies.
5. Select the reCAPTCHA verification check box.
The Customer Service application uses the Google re-CAPTCHA service.
6. Select Submit.
The page redirects you to the portal login page.
◦ If you entered a valid registration code, you see the message: “Your request has been
submitted and is pending review. You’ll receive an email when your request is processed".
◦ If you entered an invalid registration code, you see the message: “Incorrect Registration
Code".
Log in to the Business Portal for the first time
Use your user ID and temporary password to login to the business portal for the first time.

Before you begin

Role required: none

About this task

After a registration request is approved, the customer contact receives an email with a user ID
and temporary password. When logging in for the first time, the contact is asked to change the
password.

Procedure
1. Navigate to the business portal login page.
2. Enter your user ID in the User name.
3. Enter your temporary password in the Password field.
4. Select Login.
You’re prompted to change your password.
5. Enter your temporary password in the Current Password field.
6. Enter your new password in the New Password field.
7. Reenter your new password in the Confirm New Password field.
8. Select Submit.
Request a password reset
If you forget your password, request a new one from the business portal login screen.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1779


<!-- page 1780 -->
Before you begin

Role required: none

Procedure
1. Request reset password email.
a. Navigate to the business portal.
b. Select Log in in the portal header.
c. Select the Forgot Password? link.
d. Enter Username and complete CAPTCHA verification.
e. Select Next.
f. Enter your registered email id.
g. Select Next.
You will receive an email instructions to reset your password.
2. Reset your new password.
a. Select the Click here to reset your password link in the email
b. On the Reset Password page, enter a new password in the New Password and Retype
Password fields.
c. Select Reset Password.

Result

Your new password is set.
Change password on Business Portal
Change your password directly from the business portal to secure your account.

Before you begin

Role required: none

About this task

Users with the required roles can change their passwords from the business portal.

Procedure
1. Navigate to the business portal.
2. Select your user name in the portal header.
3. Select Profile to display the user profile information.
4. Select Change Password under Security.
5. On the Change Password pop-up, fill in the fields.
Change Password form
Field

Description

Current Password

The existing password.

New Password

The new password, which must meet the following requirements:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1780


<!-- page 1781 -->
Field

Description

◦ Be a minimum of eight characters long
◦ Include at least one uppercase and one lowercase letter
◦ Include at least one number
Confirm Password

The new password.

6. Select Change.
Customer notification preferences
Customers can set preferences for email notifications.
Email notification preferences are set to control email notifications that are sent to the customer
when an agent performs one of the following case activities:
• Opens a case for a customer
• Comments on a customer's case
• Provides a resolution for a customer's case
• Closes a customer's case
Set email notification preferences
Customize email notifications to stay informed about specific actions taken by customer service
agents on cases, based on your preferences.

Before you begin

Make sure that you have received an email for the case to set the email notification preferences.
Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

Procedure
1. Navigate to the business portal.
2. Select your user name or photo in the portal header and select Profile to display your user
profile information.
3. Select the Notification Preferences link under Actions to display the Notification Preferences
pop up.

Note: The Notification Preferences link is available only after receiving the first email
for the case.
4. Enable or disable the following email notifications for your primary email address.
The notifications are available based on the actions performed by customer service agents on
the case.
◦ Case closed for customer
◦ Case commented for customer
◦ Case escalated for customer
◦ Case assigned to a new group
◦ Case opened for customer
◦ Case resolved for customer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1781


<!-- page 1782 -->
Approve, change, or registration request from Business Portal
Users with the snc_external role can view and approve requests and change requests from the
business portal.

Before you begin

Role required: snc_external

About this task

A request or change request may require approval from another employee within the same
organization.

Procedure
1. Navigate to the business portal header,
2. Select Notification > View all notifications.
3. Select a record in the Approvals section of the Notifications page.
The system displays a read-only view of the record approval form. For requests that include
one or more items, these items appear in a collapsible list at the bottom of the Request form.
4. Optional: Click a requested item at the bottom of the Request form to view the details in a
pop-up window.
5. Select Approve.
The system makes the following updates:
◦ The record status is set to Approved.
◦ The record status is displayed after the record number in the Related Records widget on the
Case form.
◦ The record status is added to the Case form.
▪ If the record is approved by the customer administrator or if the customer self-approves
the request, the change in status is added to the Additional comments field.
▪ For other approvers, the change in status is added to the Work notes field.
◦ The approval record is updated in the Approval table.
Search for information using Business Portal
Use the search feature on the business portal header and home page to find information about a
question or an issue.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

The portal has a search feature that you can use to search for information across several
repositories. You can use the search feature on the home page or on the business portal header.

Procedure
1. Navigate to the business portal.
2. Enter a search term into the Search field.
3. Select the search icon.
A list of articles related to the search term is displayed.
4. Select a link to view an article.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1782


<!-- page 1783 -->
Search the knowledge base on Business Portal
Use the business portal to search the knowledge base or view a list of popular knowledge base
articles.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

The business portal includes a link to the knowledge base that you can use to search for
information, read and rate articles, and submit feedback. Under this link, the portal displays a list
of popular knowledge base articles. If the information that you need isn’t included in this list, you
can search the knowledge base for the desired information.

Procedure
1. Navigate to the business portal.
2. Select Resources > Knowledge.
The knowledge page displays a separate category for each of the products purchased by this
customer. It also displays lists of articles by:
◦ Featured content
◦ Most useful
◦ Most viewed
3. Do one of the following,
Option

Description

Click a product to display more specific in­
formation

Displays a list of categories on the left and ar­
ticles on the right. Select a category to drill
down even further.

Click a link from one of the lists

Displays the article.

Type a topic in the Search field and press
the Enter key

Displays a list of related articles. Select a link
to display the desired article.

Chat with an agent from the Business Portal
Chat with a virtual agent or a customer service agent from the business portal to resolve issues
quickly.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, sn_customerservice.partner_admin

Procedure
1. Select the Chat icon in the business portal to start a conversation.
A virtual agent or a customer service agent responds.
2. Optional: To talk to a person instead of a virtual agent, select the kebab menu (
Call Support (Daily 5AM - 11PM).
3. To end the chat, select End Conversation icon (

) then select

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1783


<!-- page 1784 -->
What to do next

If the agent creates a case or links the discussion to an existing case, you can view these cases
from the business portal. To display the case list, select Requests > View submitted requests >
View cases & tasks.
Get help using virtual agent conversations from Business Portal
Predefined Customer Service Virtual Agent chatbot conversations help your customers complete
common self-service tasks, such as getting help with a product or checking the status of a case.
Use predefined NLU with your virtual agent chatbot topics to assess the intent of the user input
and provide the best response based on the context of the conversation.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer
If you’re anonymous (not logged in to the application), get help by entering keywords for an issue
and choose to get transferred to a live agent.
Install the plugin Customer Service Virtual Agent Conversations (ID: com.sn_csm.virtualagent) to
view the chatbot topics.
A user with a proxy_contact role can also check the case status for a customer.

About this task

The information exchanged during the conversation flow (user inputs and bot responses)
enables the chatbot to fulfill a user request or assist a user in completing a task. If the user has
a question or an issue with an existing product or order, the virtual agent searches the keyword
and displays relevant knowledge articles that can help resolve the issue. If there are no relevant
articles, it creates a case.
ServiceNow NLU enables discovery of the chatbot topics based on either the keywords entered
in the chat or the user-intent and matches an entity with the user input. It also makes the entity
available to the topic if there’s a match.

Procedure
1. Navigate to the business portal.
2. Select Chat.
You can select Show Me Everything to display all available topics or enter keywords to narrow
down the results to relevant topics.
3. If you’re a logged-in user, enter keywords to get help on a case, an issue, or an order.
◦ If NLU is enabled, it guides you through the right topic based on the utterance.
◦ If NLU isn’t enabled, it displays topics based on the match for the entered keywords. You can
make a selection from all available topics displayed.

Note: Contact your administrator to determine whether the topics are NLU-enabled.
4. Use

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1784


<!-- page 1785 -->
To

Follow these steps

a. Initiate checking the case status.
▪ If you’re using the virtual agent conversation without en­
abling NLU, select Check Case Status.
▪ If you’re using NLU in your virtual agent conversation, enter
an utterance to check the status of a case.

Note: If you provide a case number, you’ll be pre­
sented with the details of the case.
Check the status of a case

b. Select a case from the case list that you would like to get help
for.
c. When the case information displays, you can do one of the
following:
▪ Add a comment
▪ Attach a picture
▪ Check another case
▪ Contact an agent.
Enter a keyword for your issue. The chatbot returns a list of re­
lated knowledge articles to help resolve your issue. If there are
no matching articles associated with the description, a case is
automatically created with the following information:
◦ Case identification number
◦ Short description

Get help with a product

◦ State
◦ Priority
Take any of the following additional actions:
◦ Update the product and asset
◦ Add a comment
◦ Attach a picture
◦ Contact an agent

Get help

If you’re an anonymous user not logged in to the application,
enter keywords for your issue. The chatbot returns a list of relat­
ed knowledge articles that have been made public. If there are
no matching articles that would help resolve the issue, you can
choose to be transferred to a live agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1785


<!-- page 1786 -->
To

Follow these steps

a. Initiate submitting your request for one of the catalog items.
▪ If you’re using the virtual agent conversation without en­
abling NLU, select Show Me Everything and then select
Submit a request.
▪ If you’re using NLU in your virtual agent conversation, enter
an utterance for example open a request, that will identify
that there is a NLU and intent associated.
Submit Request

b. Select the catalog item. The Search Catalog Item topic block
searches for the catalog item and displays a link based on
your search. For more information about search catalog item,
see

Note: Wherever the topic is opened, the records will
display on the same portal.
c. Click on the link displayed and exit the virtual agent if you do
not have any further request.
Creates a case from Virtual Agent. You need the following fields
to create a case:
◦ short_description (mandatory)
◦ description
Create Case

◦ account_sys_id
◦ contact_sys_id
◦ consumer_sys_id
The values of these can be empty. If the account, contact, and
consumer fields are empty, the logged in user details are pop­
ulated. The topic block returns the variable case_sys_id from
the toic block.
Updates a case from Virtual agent. You need the following 2
fields to update a case:
◦ case_sys_id (mandatory) - must be a valid case ID. If the ID is
valid the following 4 options are displayed:

Update Case

▪ Add product information is displayed only if enable_prod­
uct_update is set to true.
▪ Add a comment
▪ Attach an image
▪ Cancel
◦ enable_product_update - If set to true, the Add product infor­
mation option is displayed. It updates the asset and model in­
formation.
The topic block returns the variable case_sys_id

5. To exit a chat conversation, select I'm done.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1786


<!-- page 1787 -->
Related topics
Customer Service Virtual Agent conversations
Maximizing code reuse with topic blocks
View a publication on Business Portal
View the details of a publication on the business portal and download any attachments.

Before you begin

Role required: sn_customerservice.customer

About this task

The Publications link on the business portal displays a list of current publications that is sorted
by publication number.

Note: After a publication reaches its expiration date, it is automatically removed from the
Publications list.

Procedure
1. Navigate to the business portal.
2. Select Resources > Publications in the header.
This displays a list of current publications. The information displayed for each publication
includes the title, publish date, expiration date, and a brief description.
3. If desired, search the Publications list by entering the search term in the search field at the top
of the list.
4. Select a publication name to open.
5. If the publication has attachments, select the attachments to download from the pop-up
window.
6. Close the pop-up window.
7. Select the return arrow at the top of the publication to return to the Publications list.
Request an item or service from the Business Portal
Browse the catalog and create a request for an item or a service from the business portal.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner,
sn_customerservice.customer_case_manager, sn_customerservice.customer,
sn_customerservice.consumer, sn_customerservice.proxy_contact

About this task

Users can make requests for a product or service from the business portal. Customer
administrators, partners, and case managers can also make requests.
Note: Creating a request from the business Portal portal requires activation of the
Customer Service with Request Management plugin (com.sn_cs_sm_request). It also
requires that the administrator to provide external customers with access to request
records.

Procedure
1. Navigate to the business portal.
2. Select Requests > Submit a request > Submit any request
3. Browse the service catalog and select the desired item or service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1787


<!-- page 1788 -->
Select topics from the navigation menu to view related articles and catalog items.
4. On the form, fill in any necessary information related to the request.
5. Select Submit.
The system processes the request, creates it along with related records, and shows the details
on the record view page.
View cases and case tasks from the Business Portal
View the list of cases and case task from the business portal to view its details.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner,
sn_customerservice.customer_case_manager, sn_customerservice.customer,
sn_customerservice.consumer

About this task

If a case has one or more related records, a Related Records widget is displayed on the case
view page that lists those records.

Procedure
1. Navigate to the business portal.
2. Select Requests > View submitted requests > View cases & tasks in the portal header.
You can select the case type from Categories and filter the list of records before selecting a
case.
3. Select a case to view its details.
4. Optional: For My requests, expand the Stage field to display more details about the request
process.
5. Select the X in the upper corner to close the details window.
View or modify a case from the Business Portal
View or modify the information in a customer service case.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, sn_customerservice.partner_admin

About this task

Depending on the role of the current user, the Case list displays:
• Cases created by the current user (sn_customerservice.customer)
• Cases related to the current user's account (sn_customerservice.customer_admin)
• Cases related to the current user's account as well as partner accounts
(sn_customerservice.partner, sn_customerservice.partner_admin)

Procedure
1. Select Requests > View submitted requests > View cases & tasks in the portal header.
2. Select the desired case number to open the case view page.
3. Post required comment on the Activity tab or upload attachment on the Attachments tab.
All other fields on the form are read-only.
4. Select Send.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1788


<!-- page 1789 -->
Close a case from the Business Portal
Close completed or resolved cases from the business portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.consumer

About this task

This feature is available for the business portal (B2B) for product.
The Close Case button is not available for cases in the Resolved or Closed states.

Procedure
1. Navigate to the business portal.
2. Select Requests > View submitted requests > View cases & tasks in the portal header.
3. Open the desired case.
4. Select Actions > Close Case.
5. In the confirmation pop-up window, select Close Case.
When a case is closed from the portal:
◦ The case status in the Case details section is updated to Closed.

Note: You cannot add comments after the case is closed. You can only view the
previous comments in the activity stream.
◦ The case additional comments and resolution notes are updated with Closed by customer.
◦ The case resolution code is set to Solved by customer
◦ A message at the top of the portal confirms that the case has been closed.
◦ The system displays a customer satisfaction survey.
6. Complete the customer satisfaction survey.
You can also choose to skip the survey. Either choice returns you to the case list on the portal.
Complete a customer service satisfaction survey
After accepting a solution for a case, complete a customer service satisfaction survey to provide
your feedback.

Before you begin

Role required: none
When a customer accepts a proposed solution for a case by clicking Accept Solution on the
case form, a satisfaction survey is displayed in the portal. The customer has the option of
completing or skipping the survey. Either choice returns the customer to the list of cases on the
self-service portal.
To complete the survey:

Procedure
1. Answer each of the survey questions.
2. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1789


<!-- page 1790 -->
Deflect cases with knowledge content
Enable customers to search for information from the knowledge base and and find solutions to
their issues.

Before you begin

Role required: sn_customerservice_customer

About this task

The business portal Case form displays contextual search results based on text entered in the
Subject field. These search results provide targeted solutions to customers. Customers can
search for information that is related to a case when opening a case. If the search results in any
related content, the customer can preview the content.
Note: By default, search results include knowledge articles, solved questions, and pinned
articles.

Procedure
1. Navigate to the business portal.
2. Select Request > Submit a request > Submit a case > Submit a product case.
3. Start entering in the Subject field.
If there are any search results that match, they’re displayed in the Related Search Results
widget.

Note: If embedded search has been enabled, the results are displayed inline in the
Case form in a Knowledge results section and are read only.
4. Perform one of the following actions.
◦ Select one of the content links in the Related Search Results widget to enter the content
directly.
◦ Select one of the content links in the embedded Knowledge results section to open the
content inline as read only.
5. Optional: Select This helped to mark the content as helpful for resolving the associated case.
6. Select Submit.
View install base information from the Business Portal
View a list of install base to track the instances provisioned for your account and see which
products or services run on them.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

You can view all cases and the service status from the last 30 days as well as all active, past, and
planned outages. You can also view any active entitlements for the install base. An entitlement
is active when its end date is not in the past or it has no end date. If it is linked to a contract, the
contract must also be active.
Note: You can modify the Active Entitlements widget to define your own filters for active
entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1790


<!-- page 1791 -->
Procedure
1. Navigate to the business portal.
2. Select My hub > Manage install base items in the header menu.
The system displays a list of install base items that belong to your account.
3. Select an install base to view the details including cases created on the install base in the last
30 days, active entitlements, as well as service status and outage history.
4. Optional: To create a case directly from the install base details, select Create Case.
Create a case for install base from the Business Portal
Create a case about a question or issue on your install base from the business portal.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.partner,
sn_customerservice.customer_admin, or sn_customerservice.partner_admin

About this task

Install base enables you to track which instances have been provisioned for your account and
the products and services that run on them.

Procedure
1. Navigate to the business portal.
2. Select Requests > Submit a request > Submit a case > Submit an install base case.
3. Fill out the fields on the form, as required.
Create Case form
Field

Description

Product

The sold product you have a question on or issue with.

Install Base

The install base item you have a question on or issue with.

Priority

The assigned priority:
◦ 1 — Critical
◦ 2 — High
◦ 3 — Moderate
◦ 4 — Low (default)

Subject

A brief description of the question, issue, or problem.

Description

A more detailed description of the customer question, issue, or problem.

Note: Currently, the Save as Draft option is not optimized for Customer Service
Management portals and, it is inactive by default.
4. Select Submit.
The case is created, assigned a case number, and added to the user's case list. Select My
Cases at the top of the customer portal to view the Cases list.
View product information from Business Portal
View a list of products to track the products or services sold to your account and manage your
services using service catalogs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1791


<!-- page 1792 -->
Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, or sn_customerservice.partner_admin

About this task

You can view a list of products or services that have been sold to your account. You can also view
any cases created on the product and all active contracts and entitlements for the product.
An entitlement is active if:
• Its end date isn’t in the past or it has no end date.
• The contract it’s linked to is also active.
A contract is active if:
• Its state is set to active
• It’s linked to a product with an active entitlement.
You can modify the Active Entitlements widget to define your own filters for active entitlements.
If product catalog items have been set up in your instance, you can use the Service Catalogs
widget to view context-sensitive service catalogs based on the services you’re subscribed to.
Extend your services using service catalogs and request additional items on the services that
you have subscribed to.

Procedure
1. Navigate to the business portal.
2. Select My hub > Manage sold products in the header menu.
The system displays a list of products or services sold to your account.
You can only view sold products and all extensions of sold products that are not product
inventories.
3. On the form, fill in the fields.
Sold product form

List of sold product fields and their descriptions.
Field

Description

Number

Unique number of the sold product.

Name

Name of the sold product.

Parent sold product

Parent of the sold product, if applicable.

Product Location

Location associated to the sold product.

Unit net price

Net price of a single unit of a sold product.

Product offering

Product offering that is associated with a sold
product.

Product specification

The product specification associated with a
sold product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1792


<!-- page 1793 -->
Field

Description

Note: The Product specification
field is available only if you have the
Product Catalog Management Core
(com.sn_prd_pm) plugin and is not
available on the form by default.
Monthly recurring price

Price to be paid on a monthly basis for the
usage of a product or service.

One time price

One-time price to be paid for the usage of a
product or service.

Quantity

Quantity of a product that is sold to a
customer.

4. Select a sold product to view the details associated to it.
Record view of the sold product

List of fields on the record view of the sold product along with their
descriptions.
Field

Description

Number

Unique number of the sold product.

Product

Reference to the product model from the
CMDB table.

Name

Name of the sold product.

Account

Account associated with the sold product.

Contact

Contact associated with the sold product.

Product offering

Product offering that is associated to the sold
product.

Product specification

Product specification associated to the sold
product.

Product location

Location associated to the sold product.

State

State of the sold product.

Unit Net Price

Net price of a single unit of sold product.

Quantity

Quantity of a product or service sold to a
customer.

Model categories

Reference to the model category table.

Product model's short description

Brief description of the product model.

Product model's description

Detailed description of the product model.

5. View the cases and characteristics associated to the sold product in the related list.
Related list descriptions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1793


<!-- page 1794 -->
Related lists and their descriptions.
Related list

Description

Cases

View all cases associated to the sold product.

Characteristics

View the characteristics associated to a
particular sold product like the characteristic
value and the option.

Child sold products

View the child sold products associated to
the sold product.

Product information

View the pricing related information of the
sold product.

6. Perform one of the desired actions on the sold product.
Install the Customer Life Cycle Management Self service plugin (sn_clm_selfservice) to
perform the Modify, Suspend, Resume, and Disconnect actions. The flows can be performed
only by the customer personas and only on the sold products where the Contact field is the
same as the logged in user.
◦ Modify a sold product. To learn how to modify a sold product, see Modify a sold product and
hierarchy
◦ Suspend a sold product. To learn how to suspend a sold product, see Supending sold
products.
◦ Resume a sold product. To learn how to resume a sold product, see Resuming sold products.
◦ Disconnect a sold product. To learn how to disconnect a sold product, see Disconnecting
sold products
Related topics
Activate Customer Life Cycle Management Self-Service
View Product Inventory information on Business Portal
View Product Inventory information on Business Portal
Enable customers to view and track the list of product inventories associated to their account.

Before you begin

Role required: sn_customerservice.customer, sn_customerservice.customer_admin,
sn_customerservice.partner, sn_customerservice.partner_admin

About this task

Install the Customer Life Cycle Self Service plugin
(com.snc.customer_lifecycle_mgmt_self_service) to perform the Modify, Suspend, Resume, and
Disconnect actions on product inventories.
To learn how to install the Customer Life Cycle Self Service plugin
(com.snc.customer_lifecycle_mgmt_self_service), see Activate Customer Life Cycle Management
Self-Service.

Procedure
1. Navigate to the business portal.
2. Select My Hub and then Manage product inventories from the header menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1794


<!-- page 1795 -->
The system displays a list of product inventories associated to your account.
3. On the product inventories form, fill in the fields.
Product inventories form
Field

Descriptions

Name

Unique name of the product inventory.

Number

Number of the product inventory.

Parent product

Parent of the product inventory, if applicable.

State

State of the product inventory, whether active
or inactive.

Location

Location associated to the product inventory.

Unit net price

Net price of a single unit of product inventory.

Product offering

Product offering associated to the product
inventory.

Product specification

The product specification associated with a
product inventory.

Note: The Product specification
field is available only if you have the
Product Catalog Management Core
(com.sn_prd_pm) plugin and is not
available on the form by default.
Monthly recurring price

Price to be paid on a monthly basis for the
usage of a product or service.

One-time price

One-time price to be paid for the usage of a
product or service.

Quantity

Quantity of a product that is sold to a
customer.

4. Select a product inventory to view the record details.
Record view of product inventories
Field

Descriptions

Number

Unique number of the product inventory.

Product

Reference to the product model from the
CMDB table.

Name

Name of the product inventory.

Account

Account associated to the product inventory.

Contact

Contact associated to the product inventory.

Product offering

Product offering associated to a product
inventory.

Product specification

Product specification associated with a
product inventory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1795


<!-- page 1796 -->
Field

Descriptions

Location

Location of the product inventory.

State

State of the product inventory.

Note: If the state is Active, you can't
perform the Resume action on the
product inventory.
Unit net price

Net price of a single unit of a product
inventory.

5. View the cases and characteristics associated to the product inventory in the related list.
Related list descriptions
Related list

Description

Cases

View all cases associated to the product
inventory.

Characteristics

View the characteristics associated to a
particular sold product like the characteristic
value and the option.

Child sold products

View the child sold products associated to
the sold product.

Product information

View the pricing related information of the
sold product.

6. Perform one of the desired actions on the product inventory.
Install the Customer Life Cycle Management Self service plugin (sn_clm_selfservice) to
perform the Modify, Suspend, Resume, and Disconnect actions. The flows can be performed
only by the customer personas and only on the sold products where the Contact field is the
same as the logged in user.
◦ Modify a product inventory. To learn how to modify a product inventory, see Modify product
inventory records
◦ Suspend a product inventory. To learn how to suspend a product inventory, see Suspend
product inventory records.
◦ Resume a product inventory. To learn how to resume a sold product, see Resume product
inventory records.
◦ Disconnect a product inventory. To learn how to disconnect a sold product, see Disconnect
product inventory records
Related topics
Activate Customer Life Cycle Management Self-Service
View product information from Business Portal
Create a product case from Business Portal
Create a case about a question or issue on a product from the business portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1796


<!-- page 1797 -->
Before you begin

Role required: sn_customerservice.customer, sn_customerservice.partner,
sn_customerservice.customer_admin, or sn_customerservice.partner_admin,
sn_acct_consumer.consumer

Procedure
1. Navigate to the business portal.
2. Select Request > Submit a request > Submit a case > Submit a product case.
3. On the form, fill in the fields.

Note: Depending on your role, you might not see the Account and Contact fields.
Create Case form
Field

Description

Account

The account for which you’re creating the case.

Contact

The name of the customer contact for this case.

Consumer

The name of the consumer for this case.

Note: This field is active only when the Customer Data Models for B2B2C
plugin is installed. Once Account is selected, only consumers belonging to
the account are displayed.
Asset

The asset tag number or the serial number of the asset associated with this
case.

Product

The product model of the asset. A model is a specific version or configuration of
an asset (for example, Apple Mac Book Pro).
If you select an asset in the Asset field, this field is auto-populated if the
associated product information is available in the asset record. A product may
be associated with multiple assets.

Priority

The available assigned priorities are:
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low (default)

Subject

A brief description of the customer question, issue, or problem.

Note: When you start entering the subject, the application searches for
relevant content in the knowledge bases configured for the portal. the
results are displayed in the Related Content list.
Description A detailed description of the customer question, issue, or problem.

Note: Currently, the Save as Draft option isn’t optimized for Customer Service
Management portals and, it’s inactive by default.
4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1797


<!-- page 1798 -->
Result

The case is created, assigned a case number, and added to the creator's case list. To view
this list, navigate to Requests > View Submitted requests > View Cases and tasks tab on the
business portal header and select All Cases in the left pane.
Guest users experience on Business Portal
Guest users can view the header, footer, knowledge articles cards, and resources menu on the
home page.
Guest users landing on the Business Portal can access the home page and several public
elements, including the header, menu, footer, and banner widgets, which feature the Browse
Services and FAQs buttons.
They can also view taxonomy topic cards showcasing public content, such as articles and
catalog items, and the Knowledge quick link widget displaying public articles.
However, on selecting any card, button or menu items, the guest users are redirected to the login
page.
Enable language selection for guest users
The language selector widget enables guest users and unauthenticated users to select, view,
and update content in their preferred language.
When a user selects a preferred language, the portal content reloads into the selected language.
The widget is enabled by default on the Knowledge portal, the Customer Service Management
portal, and the Consumer Service portal. Users can map their languages with regions to view all
available languages in the form of a pop-up on the same screen.
To enable the language selector on the business portal, see Enable a language selector in portal
headers .
Language selector widget

If languages aren’t grouped, users can view all available languages as a full-screen experience.

Note: The full screen mode is available in the mobile view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1798


<!-- page 1799 -->
Language selection experience without region grouping

Related topics
Enable language selector widget
Service Portal properties
Create regions for language selection in portals
View common questions (FAQs) on Business Portal
View a list of frequently asked questions on the Business Portal to find answers for some
common questions.
You can access the frequently asked questions page by navigating to > Resources > FAQs. The
system displays a list of 10 frequently asked questions as a default view.
Related topics
Portal FAQ widget

Using the Consumer Service Portal
The Consumer Service Portal is a web interface that your company can use to provide
information and support to consumers.
The Consumer Service Portal is based on the ServiceNow Service Portal application. Consumers
can use the portal to search for information, get their questions answered by other registered
members, or request assistance from a customer service agent.
From the Consumer Service Portal, consumers can:
• Search for information, browse knowledge articles, and engage with the community.
• Start a chat session with a customer service agent
• Register, create a login, and create a user profile.
After registering and logging in to the Consumer Service Portal, consumers can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1799


<!-- page 1800 -->
• Edit user profile information and change passwords.
• Register new products and view a list of currently registered products.
• Contact a consumer service agent about a question or issue.
• Create cases and view a list of current cases.
• Accept or reject proposed case solutions.
Your consumer service portal activity usually begins on the consumer service portal homepage.
If you are a logged in user, you see different information than non-logged in users. Your
organization can customize the homepage.
Consumer Service Portal homepage for logged in users
UI
component

Description

Knowledge Knowledge on the header and the main page takes you to the kb_home page. The
knowledge home page allows you to search the knowledge base or view a list of
top-rated or most viewed knowledge base articles.
Requests

Displays all your requests and you can also request from the catalog for items and
services.

My lists

Lists all your cases.

Get help
menu

Click Get Help to open a product or order case.

Support
menu

Navigate to cases, orders, my products, and other quick links.

Tours

View a tour for additional guidance on how the Customer Service Management
application works. Tours appear when your administrator creates them on certain
pages.

Chat

Click Chat to chat with a virtual agent or a customer service agent.

Callback
request

Request a callback when the wait time to reach agents is long or agents are
unavailable.

Profile
menu

Click your profile photo to either view your profile or logout.

Search

Enter a search term and click Search to view the search results.

Ask the
Click Ask the Community to access the Community homepage.
Community
Get help

Click Get help to make a request or report a problem by opening a case.

Most
viewed
articles

View a list of most viewed articles.

Featured
articles

View featured community content.

Most
useful
articles

View most useful articles based on the usage count of the articles.

The following components are available if you have installed communities.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1800


<!-- page 1801 -->
Consumer Service Portal homepage for logged in users (continued)
UI
component

Recent
solved
discussion

Description

View a list of recently solved discussions.

Recent
View a list of recently published community blogs.
community
blog
Community View a list of featured community content.
featured
content

Note: Metadata for each entry in the widgets such as the number of views, number
of days from the time the article or feature was published, and rating for the article is
displayed.

Customizing the Consumer Service Portal
To customize this portal, navigate to Service Portal > Portals and click Customer Service. See
Service Portal
for more information about creating a custom interface.
Related topics
Portal usage calculation
Pre-chat from the Consumer Service Portal
As a user on the consumer service portal, you can initiate a conversation with support by
answering the Pre-chat survey. The survey questions vary based on the session type such as
logged-in or anonymous.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Click the Open chat window icon on the portal page or use Facebook messenger if you are a
Facebook user.
2. Answer the questions that help set the context for an agent to resolve your issue.
You will be routed to an agent queue.
Related topics
Pre-chat surveys
Register for the Consumer Service Portal
Register for the Consumer Service Portal to gain access and create a consumer profile.

Before you begin

Role required: none
Ask your admin to install the External User Registration plugin (ID:
com.sn_external_user_register) to view the register link on the Customer service portal header.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1801


<!-- page 1802 -->
Procedure
1. Go to the Consumer Service Portal page by accessing your instance URL and adding a /csp
suffix.
For example, https://example.com/csp.
2. Select Register.
3. Fill in the fields on the registration form.
Your email address must be unique. If you enter an address that is already in the system, you
receive an error message. Try again with a different email address.
4. Select Sign Up.
A verification email is sent to the email address you provided.
5. Click the link in the email to verify your email address.

Result

Your registration is complete. You can now log in to the Consumer Service Portal.
Log in to the Consumer Service Portal
Use the name and password that you created during the registration process to log in to the
Consumer Service Portal.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Navigate to the Consumer Service Portal.
2. Click Log in in the portal header.
3. Fill in the fields on the Log in pop-up window.
4. Click Log in.
You are logged in to the Consumer Service Portal and your name and profile picture appears in
the portal header.
Change your password from the Consumer Service Portal
Change your password from the consumer portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Click your user name in the portal header to display the user profile information.
2. Click Change Password.
3. Fill in the fields on the Change Password form, as appropriate.
Change Password form fields
Field

Description

Current Password

The current password. This field is automatically filled in.

New Password

The new password. This password must:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1802


<!-- page 1803 -->
Field

Description

◦ Be a minimum of eight characters in length
◦ Include at least one uppercase and one lowercase letter
◦ Include at least one number
Confirm Password

Retype the new password.

4. Click Change.
View or edit a consumer profile
Registered users with the consumer role can view their consumer profiles, edit the information as
needed, and change passwords.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Log in to the Consumer Service Portal.
2. Select your user name in the portal header and then select Profile.
3. To add a picture to your profile, select Upload Picture and select the desired image.
4. To update the personal information in your profile, including name, contact information, and
address:
a. Select the desired field.
b. Enter the new information in the pop-up window.
c. Select Save.
5. To change your password, select Change Password.
The Change Password link appears on the consumer profile when the Self-Service Password
Reset plugin (com.snc.password_reset) is activated.
6. Fill in the fields on the Change Password pop-up window and select Update.
Register a product from the Consumer Service Portal
Users with the consumer role can register their products from the Consumer Service Portal.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Log in to the Consumer Service Portal.
2. Click Support in the portal header and then click Register Product.
3. Type a search term in the search field and press Enter to display a list of products.
4. Click the Select button on the card for the desired product.
5. Enter the Serial Number and the Purchase Date for the selected product.
6. Click Register.
After the product is successfully registered, it appears in the My Products list, which includes
the products registered to the current user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1803


<!-- page 1804 -->
View a list of products from the Consumer Service Portal
Users with the consumer role can view a list of their registered products from the Consumer
Service Portal.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Log in to the Consumer Service Portal.
2. Click Support > My Products in the portal header.
This displays a list of products registered to the current user.
3. If desired, click a product to display more information about the product.
Access your list of install base items from the Consumer Service Portal
Access your list of install base items from the Consumer Service Portal so that you can get the
detailed information about an install base item. For example, with this list, you can see how many
items are registered to you.

Before you begin

Role required: sn_customerservice.consumer, sn_customerservice.consumer_contributor, and
sn_customerservice.relationship_contributor

Procedure
1. Log in to the Consumer Service Portal.
2. Navigate to Support > Install Base.
In the header on the Consumer Service Portal, you can access a list of the install base items
that are registered to you.
In the list layout for an install base item, the details that are related to consumers in the
Household and Consumer fields are visible. Only consumers with the appropriate roles can
see the install base option in the support menu.
3. From the list, open an install base record to see all the details and cases for that install base
item.
Create a case from the Consumer Service Portal
As a user with the consumer role, you can create cases from the Consumer Service Portal.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Log in to the Consumer Service Portal.
2. Select Get Help in the portal header.
3. Choose between Get Product Help and Get Order Help.
4. Enter or search for a customer.
5. Enter a product or an order depending on what you selected above.
6. Enter a brief description in the Subject field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1804


<!-- page 1805 -->
Note: When you start entering the subject, the application searches for the relevant

content in the knowledge bases configured for the portal and is displayed in the Related
Content list.
7. Add a description in the Description field and add any attachment.

Note: Currently, the Save as Draft option isn't optimized for Customer Service
Management, and it’s inactive by default.
8. Select Submit.

Result

The new case is created and added to the Cases list. To view the case, select the link in the case
creation message or select Cases in the portal header, and then select the case number.
View a case from the Consumer Service Portal
Users with the consumer role can view a list of cases from the Consumer Service Portal and
select individual cases to see more detail.

Before you begin

Role required: sn_customerservice.consumer

About this task

Selecting a case opens a form with the following sections:
• A conversation that displays the interaction between the consumer and the customer service
agent.
• The action that needs to be taken on the consumer's part, such as accepting or rejecting a
solution.
• The case details, including the case number and current status.
• Any attached files.

Procedure
1. Log in to the Consumer Service Portal.
2. Click Support > Cases in the portal header to view a list of cases related to the current user.
3. Click the case number to view more information about the case.
4. If desired, type a message to the agent and click Send.
Your message becomes part of the case conversation. All responses from the agent are also
included in the conversation.
Accept or reject a case solution from the Consumer Service Portal
Users with the consumer role can accept or reject the proposed solution for a case from the
Consumer Service Portal.

Before you begin

Role required: sn_customerservice.consumer

About this task

When an agent proposes a solution to a consumer's case, buttons for accepting or rejecting the
solution appear in the section of the form that shows the consumer actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1805


<!-- page 1806 -->
Procedure
1. Log in to the Consumer Service Portal.
2. Select My Lists in the portal header to view a list of cases.
3. Select Action Needed.
4. Select the required case number to view more information about the case.
5. Select one of the following from Actions.
Option

Description

Accept Solution

Accepts the solution proposed by the agent
and changes the case state to Closed.

Reject Solution

Rejects the solution proposed by the agent af­
ter entering the reason for rejecting the solu­
tion. The case state changes to Open state.

Chat with an agent from the Consumer Service Portal
Chat with a virtual agent or a customer service agent from the Consumer Service Portal to
resolve issues quickly.

Before you begin

Role required: sn_customerservice.consumer

Procedure
1. Select the Chat icon (

) in the Consumer Service Portal to start a conversation.

2. Select an option from the pre chat survey.
A virtual agent or a customer service agent responds.
3. Enter your query to continue conversation.
4. Optional: To talk to a person instead of a virtual agent, select

and then Contact Support.

5. When you’re finished with the chat, select End Conversation.

What to do next

If the agent creates a case or links the discussion to an existing case, you can view these cases
from the Consumer Service Portal by selecting Cases and displaying the case list.
Chat anonymously with an agent from the Consumer Service Portal
Users that are not logged in can chat anonymously with an agent from the Consumer Service
Portal to resolve issues more quickly.

Before you begin

Role required: none

Procedure
1. Click the Chat icon (

) in the Consumer Service Portal to start a conversation.

2. Fill in the information and click Submit.
A virtual agent or a customer service agent responds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1806


<!-- page 1807 -->
3. Optional: To talk to a person instead of a virtual agent, click

and then Contact Support.

4. When you are finished with the chat, click End Conversation.
View a publication on the Consumer Service Portal
View the details of a publication on the Consumer Service Portal and download any attachments.

Before you begin

Role required: sn_customerservice.consumer

About this task

The Support > Publications link on the Consumer Service Portal displays a list of current
publications. You can filter the publications on this list by category and you can further filter the
list to show all publications or only those that are unread. You can sort the list by publish date or
expiration date. You can also search for a specific term.
After a publication reaches its Expiry Date, it is automatically removed from the Publications list.

Procedure
1. Navigate to the Consumer Service Portal.
2. Click Publications in the portal header.
This displays a list of current publications. The information displayed for each publication
includes the title, publish date, expiration date, and a brief description.
3. If desired, filter or sort the Publications list.
◦ Select a category in the upper-left corner or select All Categories.
◦ Select either All Publications or Unread Publications in the upper-right corner.
◦ Select either Publish Date or Expiry Date in the Sort by field.
4. If desired, search the Publications list by entering the search term in the Search Publications
field.
5. Click a publication name to open.
6. If the publication has attachments, click Attachments in the upper-right corner.
7. Select the attachments to download from the pop-up window.
8. Close the pop-up window.
9. Click the return arrow at the top of the publication to return to the Publications list.

Using Conversational Appointment Booking
Customers can initiate an appointment booking conversation in a chat on your support portal
using a Virtual Agent, and Agents can use Autopilot to display Virtual Agent topics during
conversations.

Conversational Appointment Booking for Customers
Customers can complete the following tasks with a Virtual Agent:
• Book a new appointment in CSM
• Reschedule an appointment in CSM
• Cancel an appointment in CSM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1807


<!-- page 1808 -->
Conversational Appointment Booking for Agents
Agents can use Autopilot to display Virtual Agent topics during Agent Chat conversations. For
more information, see Conversation Autopilot .
Schedule an appointment with Conversational Appointment Booking
As a customer or consumer, schedule an appointment from the Virtual Agent chat window on the
service portal.

Before you begin

Role required: customer, consumer

About this task

You can only schedule one appointment per location. Only logged-in users can schedule
appointments.

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Select the chat icon (

) to open the chat window and begin a Virtual Agent chat.

3. Enter schedule appointment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1808


<!-- page 1809 -->
Start scheduling an appointment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1809


<!-- page 1810 -->
4. Choose a date from the calendar.
Choosing a date from the calendar

Result

The appointment is scheduled and the chat is complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1810


<!-- page 1811 -->
Finished scheduling an appointment

Related topics
Reschedule an appointment
Cancel an appointment
Reschedule an appointment with Conversational Appointment Booking
As a customer or consumer, reschedule an appointment from the Virtual Agent chat window on
the service portal.

Before you begin

Role required: customer, consumer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1811


<!-- page 1812 -->
About this task

You can only schedule one appointment per location. Only logged-in users can schedule
appointments.

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Click the chat icon (

) to open the chat window and begin a Virtual Agent chat.

3. In the chat window, enter reschedule appointment.
4. Choose the appointment that you want to reschedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1812


<!-- page 1813 -->
Rescheduling an appointment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1813


<!-- page 1814 -->
5. Choose a date from the calendar for the new appointment time.
Choosing a date on the calendar

Result

The appointment is rescheduled.
Related topics
Schedule an appointment
Cancel an appointment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1814


<!-- page 1815 -->
Cancel an appointment with Conversational Appointment Booking
As a customer or consumer, cancel an appointment from the Virtual Agent chat window on the
service portal.

Before you begin

Role required: customer, consumer

Procedure
1. Navigate to the Customer Service Portal or Consumer Service Portal home page by adding the
suffix /csm or /csp to your instance URL.
Example
For example: https://yourportalurl.com/csm
2. Click the chat icon (

).

3. In the chat window, enter cancel appointment.
The Virtual Agent shows the available appointments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1815


<!-- page 1816 -->
Cancelling an appointment

4. Confirm the cancellation.

Result

The appointment is canceled.
Related topics
Schedule an appointment
Reschedule an appointment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1816


<!-- page 1817 -->
Using the Business Location Service Portal
Use the Business Location Service Portal (BLSP) available with the Customer Service
Management (CSM) application as a one-stop shop to manage the internal and external
business locations.
As a user with the sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and admin role, you can use the
Business Location Service Portal page to:
• Get a 360º view of a business location.
• Add and manage staff members.
• Submit cases against business locations, sold products, or install base items deployed at a
service organization.
• Access Knowledge Base articles and engage with the community.
Business Location Service Portal

From the Business Location Service Portal, you can access and use the following features:
Business Location Service Portal
UI component

Description

Support

Select Support to create a customer case.

Knowledge

Selecting Knowledge on the header takes
you to the kb_home page. You can search the
Knowledge Base or view a list of top-rated or
most viewed Knowledge Base articles.

Cases

View the list of cases.

Your Information

Navigate to business locations, sold products,
install base items, projects, and customer
orders.

Notification

Displays notifications for case tasks with the
following criteria
• State is Open.
• Visible to customer check box is selected.
• User has the Location manager Contributor
(sn_customerservice.svc_location_manager_contributor),

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1817


<!-- page 1818 -->
Business Location Service Portal (continued)
UI component

Description

or Service Organization Contributor roles
(sn_customerservice.service_organization_contributor).
• User is a member of the business location
for which the case task is created.
You can view only 7 notifications in the
notification tab. To view all the notifications for
a case task, select View all notifications.
Profile menu

Select your profile photo to either view your
profile or log out.

Search

Enables you to search support articles and
requests. Enter a search term and select
Search to view the search results.

Browse Services

Select Browse Services to report an issue or
request a service. Use the service to register a
member at an external business location.

View Articles

Explore the knowledge base to get the
information.

Ask the community

Provides access to the Community home
page. You can use the community to ask
questions and get answers, connect with
people who share similar expertise, and join
forums and participate in discussions.

My Business Locations

Get the 360º view of the business location.
Use the feature to:
• Add a member to an external business
location.
• Report cases on behalf of a business
location.
• Report cases against sold products
deployed at a business location.
• Report cases against install base items
deployed at a business location.

Featured Articles

View featured community content.

Most Viewed articles

View a list of the most viewed articles.

Depending on the configuration set by your administrator, you can perform the following tasks
from the Business Location Service Portal:
• Register and assign staff members to a business location
• Report cases on behalf of a business location
• Report cases against sold products deployed at a business location

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1818


<!-- page 1819 -->
• Report cases against install base items deployed at a business location
• Access knowledge base articles and frequently asked questions
Related topics
Add staff members to a business location in the Business Location Service Portal
Create cases for a business location in the Business Location Service Portal
Track cases on the Business Location Service Portal
Add staff members to a business location in the Business Location Service Portal
Add users as staff members to a business location to support accounts, contacts, consumers,
and households.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

Add internal and external members to a business location. You can add both internal users
with the snc_internal role and external users with the snc_external role as staff members to an
external business location.
• Administrators and customer service managers can add staff members to any business
location.
• Location managers can add staff members to the business locations that they have access to.

Note: As a user with the sn_customerservice.svc_location_manager role, you
can create both internal and external staff members. However, as a user with the
sn_customerservice.svc_location_manager_contributor role, you can only create external
staff members.

Procedure
1. Navigate to Home > Busines Location Support > Services.
2. Select Register Member at External Business Location to open the Register Member at
External Business Location record.
You can use the record to register new location staff or move existing staff between locations
managed by the Location manager, and assign responsibilities to staff accordingly.
3. On the form, fill in the fields.
Register Member at the External Business Location form
Field

Description

External Business Location

The external business location. This field is
automatically generated.

Register Staff

Field used to register new location staff or
move existing staff from an external business
location hierarchy between locations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1819


<!-- page 1820 -->
Field

Description

◦ New Staff: Create a user in
Service Organization External Staff
(sn_csm_service_organization_external_staff)
table with (snc_external) role.
◦ Existing Staff: List of staff members
already working under the service
organization hierarchy.
First Name

First name of the staff member.

Last Name

Family name of the staff member.

User ID

User ID of the staff member.

Email

Email address of the staff member.

Member

Field used to select an external staff member
from the list of service organization external
staff record.

Note: The Member field appears only

when Existing Staff is selected from the
Register staff field.
Member Type

Field used to assign responsibility for the
selected business location.
◦ None: Creates a member record.
◦ Listed Member: Creates a member record.
With the member record, a responsibility
record is created with the type as Listed
Member and the responsibility as empty.
◦ Location Contributor: Creates a member
record. With the member record, a
responsibility record is created with
the type as Location Contributor and
responsibility as the Location Contributor.

Note: Assigning responsibility is
applicable to both existing and new
staff members.

4. Select Submit.
Additionally, the external business location record is created in the Service Organization field
of the service organization external staff [sn_csm_service_organization_external_staff] table.
A new external staff member record is created for the selected external business location. The
admin must assign responsibilities to the staff members. However, if you have selected None
as a member type, then you must not create a responsibility record.

Result

Once a staff member is added to a business location, the following details can be accessed from
the Business Location Details tab:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1820


<!-- page 1821 -->
• Cases Requested
• Members
• Available Services
• Accounts
• Consumers
• Households
• Child Business Locations
• Projects
Related topics
Create cases for a business location in the Business Location Service Portal
Track cases on the Business Location Service Portal
Agent assistance for your business location staff
Customer service agents receive chat requests from your business location staff on the CSM
Agent Workspace. These agents can assist your staff members to resolve issues and manage
their cases more efficiently if your staff members fill out a pre-chat survey first.
The customer service agents have visibility into the ongoing requests and case statuses. The
agents can efficiently handle the issues from the staff members of a business location.
After an agent accepts an incoming chat request, the Requesting service organization field on
the Interaction form that the agent sees is automatically filled in with the business location that a
staff member selected during the pre-chat survey. To learn more about the pre-chat surveys, see
Define pre-chat survey configurations .

Note: The Number, Type,State, and Assigned to fields on the Interaction form are filled
by default. To learn more about the fields, see Create cases for a business location in the
Business Location Service Portal.
The Open Cases and Recent Interactions related lists on the Interaction form shows a list of the
active cases and interactions for the requesting service organization.
A resolution is also provided by interacting with the user. For further assistance, an agent can
create a case or link the discussion to an existing case. The Requesting service organization
field is populated by default when a case is created from an interaction.
Related topics
Chat with Virtual Agent from the Business Location Service Portal
Create cases for a business location in the Business Location Service Portal
As a staff member with the location agent role, create and manage cases for your business
locations.

Before you begin

Role required: admin, sn_customerservice.svc_location_agent, and
sn_customerservice.svc_location_manager

About this task

Staff members with the location agent role can do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1821


<!-- page 1822 -->
• View information for the customers at their location.
• Create cases for an account, consumer, business location, and themselves.
• Register staff members at an external business location.
• Track and update cases created at their location.

Procedure
1. Navigate to Home > Business Location Support > Support > Create a Customer Case.
2. On the form, fill in the fields.
Create a Customer Case form
Field

Description

Who are you creating this case for?

The record producer used for to create a case
for the contributor user. When the contributor
user selects an option, depending on
the roles assigned to the logged-in user,
additional fields related to that customer type
are displayed.
◦ Account: The logged-in user with the
account contributor role.
◦ Consumer: The logged-in user with the
consumer contributor role.
◦ Business Location: The logged-in user with
the service organization contributor role.
◦ Myself: The logged-in user with the selfcontributor role.

Requesting Business Location

Name of the service organization requesting
assistance.

Requesting support from Business Location

Name of the service organization from which
the Requesting Business Location is asking
assistance.

Account

Name of the account.

Contact

Contact for the account.

Consumer

Name of the consumer.

Note: This field is active only when the
B2B2C plugin is installed.
Household

Household that the consumer belongs to.

Product

Sold product associated with the case.

Install Base

Install base item associated with the case.

Priority

The assigned priority:
◦ 1 — Critical
◦ 2 — High

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1822


<!-- page 1823 -->
Field

Description

◦ 3 — Moderate
◦ 4 — Low (default)
Channel

Method by which the customer initiated
contact and opened the case.
◦ Web (default)
◦ Phone
◦ Email
◦ Chat
◦ Social
◦ Community
◦ Alert
◦ Virtual Agent
◦ In Person

Subject

Subject line specifying the case.

Description

Brief description of the customer question,
issue, or problem.

3. Select Submit.

What to do next

Similarly, you can report cases on behalf of a business location, against sold products deployed
at a business location, or installed base items deployed at a business location.
Related topics
Track cases on the Business Location Service Portal
Track cases on the Business Location Service Portal
Track cases on behalf of a business location against sold products deployed at a business
location, or against installed base items deployed at a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1823


<!-- page 1824 -->
My Lists widget on the Business Location Service Portal

Depending on the roles assigned to the logged-in user, the widget displays the following filters.
My Lists widget filters
My Lists filters

Description

All Cases

List of all the cases.

Action Needed

Cases in the Resolved state that are waiting
for a customer response.

My Cases

Cases for myself.

My Requests

Cases that are created as a request.

Cases for Accounts

Cases created by the account contributor.

Cases for Consumers

Cases created by the consumer contributor.

My Cases for Business Locations

Cases created by the contributor user on
behalf of their business locations.

All Cases for Business Locations

All cases created on behalf of the contributor
users' business locations, independent of who
created the case.

Track work orders on the Business Location Service Portal
Enable your location staff to track work orders for their business locations using the Business
Location Service Portal (BLSP). It enables you to view and manage work orders, helping you track
tasks and updates directly related to your specific locations.

Before you begin

Role required: admin, sn_customerservice.service_organization_contributor,
sn_customerservice.svc_location_manager_contributor,
sn_bus_loc.location_relationship_manager, or sn_customerservice.svc_location_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1824


<!-- page 1825 -->
Note: To access the complete work order functionality, a sn_fsm_servicedesk_agent role
is added to the sn_customerservice.service_organization_contributor role.

About this task

Work orders are requests for off-site work. Users with the appropriate roles create the work orders
and provide the necessary information needed for the work order tasks. These orders include
information about the requested services, including customer names and addresses, the work
locations, and any related configuration items. Each work order includes one or more tasks that
contain specific details about the work to be performed, such as required agent skills or part
requirements.
For more information about work orders, see Manage work orders

.

Procedure
1. Navigate to Home > Your Information > Business Locations.
2. On the Business Location Details page, select the business location that you want to track the
work order for.
3. From the list of work orders at your business location, select a work order number to view its
details, including location, activity, and tasks.

Note: External location contributors can't access the Work Order Tasks tab.
Track customer orders on the Business Location Service Portal
Enable your location staff to track customer orders for their business locations using the
Business Location Service Portal (BLSP). The portal enables them to view and monitor order
details like order status, account, and channel partner information, helping them stay updated on
customer activity for specific locations.

Before you begin
Role required:

• sn_bus_org_orm.org_b2b_sales_rep
• sn_bus_org_orm.org_b2c_ sales_rep
• sn_bus_org_orm.org_sales_mgr
• sn_bus_org_orm.org_relationship_mgr
• sn_bus_loc.org_sales_mgr, or
• sn_bus_org_orm.org_ui

Procedure
1. Navigate to Home > Your Information > Customer Orders.
The page displays a list of customer orders associated with the business locations.
2. From the list, select a customer order number to view its details.
For a description of the fields, see Customer Orders form
You can also access Customer orders by navigating to Home > Your Information > Business
Locations.
Track opportunities on the Business Location Service Portal
Enable your location staff to track opportunities for their business locations using the Business
Location Service Portal (BLSP). The portal enables them to view opportunities and any activity
performed on them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1825


<!-- page 1826 -->
Before you begin

Role required: For details on roles, see Roles and responsibilities.

Procedure
1. Navigate to the business location service portal.
2. Select Your Information > Opportunities.
The page displays a list of all the opportunities.
3. From the list, select an opportunity to view its details.
You can access opportunities specific to a business location by navigating to Home > Your
Information > Business Locations and then selecting Opportunities.
Track and update projects
Enable your location staff to track projects for their business locations using the Business
Location Service Portal (BLSP). You can manage projects, enabling efficient monitoring of
progress and updates of your locations.

Before you begin

Role required: admin, sn_bus_loc.location_project_stakeholder,
sn_customerservice.service_organization_contributor,
sn_customerservice.svc_location_manager_contributor,
sn_bus_loc.location_relationship_manager, and sn_customerservice.svc_location_manager

Procedure
1. Navigate to Home > Your Information > Business Locations.
2. On the Business Location Details page, select the business location that you want to track the
projects for.
3. See the list of projects by selecting the Projects tab.
4. Optional: Create a case for the business location or account or consumer by selecting Create
Case.
5. Register a staff member to the business location by selecting Add Member.
To learn more, see Add staff members to a business location in the Business Location Service
Portal.
6. To see Project Tasks, Sub-Projects and Cases, select a project.
7. To update a task, select a task from the list.
Dates, state, tasks, and cases can be updated.
8. Optional: Mark a task as completed by selecting Mark Complete.
State and Actual end date is updated automatically.

Analytics and reporting for Customer Service
Management
Customer Service Platform Analytics Solutions contain preconfigured dashboards with
actionable data visualizations to improve your business processes and quantify the value of selfservice.
Customer Service Platform Analytics and Reporting Solutions
Customer Service Platform Analytics Solutions contain preconfigured dashboards
with actionable data visualizations to improve your business processes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1826


