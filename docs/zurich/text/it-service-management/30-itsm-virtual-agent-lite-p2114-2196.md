# Zurich IT Service Management — ITSM Virtual Agent Lite / Walk-up Experience

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2114–2196 of 3857

Sections: ITSM Virtual Agent Lite (p2114); Set up (p2115); Walk-up Experience (p2116); Explore (p2117); Configure (p2122); Manage queue and interaction (p2174); Monitor performance (p2186); Mobile experience (p2188); Reference (p2191)

---

<!-- page 2114 -->
Deflection pattern name

Description

Outcome

ITSM VA-Query-response

Virtual Agent responds to a
customer query. It's unclear
whether the response was
helpful.

Potential deflection

ITSM VA-No-deflection

Virtual Agent is unable to
assist the user.

No deflection

ITSM VA-User ProductivityComplete

User completes a task using
Virtual Agent. This pattern
tracks those completed tasks
that saved time and improved
productivity.

No deflection

ITSM VA-User Productivity-Info User was provided information No deflection
Provided
that might be helpful to them.
ITSM VA-User ProductivityIncomplete

User wasn't able to complete a No deflection
task using Virtual Agent.

ITSM VA-Agent ProductivityComplete

Agent (fulfiller) was able
to complete a task using
Virtual Agent as a service
channel. This pattern tracks
those completed tasks that
saved time and improved
productivity.

No deflection

ITSM VA-Agent ProductivityInfo Provided

Agent (fulfiller) was provided
information that might be
helpful to them.

No deflection

ITSM VA-Agent ProductivityIncomplete

Agent (fulfiller) wasn't able to
complete a task using Virtual
Agent as a service channel.

No deflection

The deflection metrics are generated and stored in the Deflection Metric [ssa_deflection_metric]
table. To view the deflection metrics for each deflection pattern, you can choose one of the
following methods:
• Navigate to the Deflection Metrics module in the Self-Service Analytics framework.

Note: The Self-Service Analytics framework requires the Self-Service Analytics Core
plugin (com.snc.self_service_analytics_core).
For more information, see Activate Self-Service Analytics

.

• Use the Overview tab of the Conversational Analytics Dashboard.
For more information about this dashboard, see Conversational Analytics Dashboard.

ITSM Virtual Agent Lite
Access a pre-built subset of ITSM Virtual Agent features to quickly and easily implement a virtual
agent for your end users. ITSM Virtual Agent Lite offers an introductory collection of conversation
topics for IT support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2114


<!-- page 2115 -->
Understanding ITSM Virtual Agent Lite
ITSM Virtual Agent Lite enables you to use a limited version of Virtual Agent. The available
keyword-based conversations run in the web chat client and also in the messaging applications,
such as Slack, Microsoft Teams, Workplace by Facebook, and Facebook Messenger.

ITSM Virtual Agent Lite topic category and conversations
Topic conversations run in the web chat client and also in supported ITSM Virtual Agent
messaging integrations. Get familiar with Virtual Agent technology to improve your ITSM selfservice experience with a streamlined conversational interface.
The ITSM Virtual Agent Lite pre-built, read-only topic conversation templates are contained in
the ITSM Self Service Lite Virtual Agent Designer category. The following conversation topic
templates are ready for you to publish and use:
• Check Ticket Status
• Report an Issue

Setting up ITSM Virtual Agent Lite
Setup ITSM Virtual Agent Lite using to use the read-only, pre-built conversation topics for your
most common ITSM self-service cases. For example, you can connect your users with a virtual
agent to check ticket status, search the knowledge base, and report an issue.

Before you begin

Role required: admin or virtual_agent_admin

About this task

Virtual Agent Lite is a subset of the features available in Virtual Agent. Virtual Agent Lite is
automatically activated. You don't need a subscription for Virtual Agent Lite.
Users with the admin or virtual_agent_admin role can activate the required plugins:
• ITSM Virtual Agent Conversation Topics Lite (com.snc.itsm.virtualagent.lite) plugin
Activates the read-only conversation topics for basic ITSM self-service.
• The Service Management Virtual Agent Core (com.glideapp.sm_va_core) plugin
Provides core functionality for Service Management Virtual Agent. This plugin is automatically
activated with the ITSM Virtual Agent Conversation Topics Lite plugin.

Procedure
1. Activate the ITSM Virtual Agent Conversation Topics Lite (com.snc.itsm.virtualagent.lite) plugin
to access the pre-built ITSM Virtual Agent Lite conversation topics.
2. Review the ITSM Self Service Lite read-only conversation topics in Virtual Agent Designer.
a. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
b. In the Category drop-down box, select ITSM Self Service Lite.
3. Select an available topic to open it.
The conversation topic template opens in Virtual Agent Designer.
4. Select Inactive in the header bar, and slide the toggle switch to Active.

Note: Deactivate a topic by selecting Active and sliding the toggle switch to the inactive
position.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2115


<!-- page 2116 -->
5. Select Publish to publish the topic.

Note: For details about activating and publishing conversation topics, see Getting
started with Virtual Agent Designer

.

6. Test an active, published conversation topic, by selecting the topic you want to test in Virtual
Agent Designer and selecting Test.

ITSM Virtual Agent Lite pre-built topics
ITSM Virtual Agent Lite includes several pre-built, read-only topic conversations you can use to
set up a virtual agent for your end users.

ITSM Virtual Agent Lite topics
Check Ticket Status
Users can check the status of active IT tickets (incidents or requests). When a user
asks about a ticket status, the virtual agent responds with a list of all active tickets
for that user. Each ticket includes a link to the incident or request, the item, the
status (Stage), and when it was updated.
Report an Issue
Users can create incidents using a Record Producer

.

Walk-up Experience
Walk-up Experience aims to enhance the user experience by providing in-person as well as
remote assistance to the users for their IT-related issues.

Walk-up Experience overview
Walk-up Experience offers a convenient and efficient way for users to seek immediate assistance
and support for their IT-related issues. With designated walk-up centers, users can seek inperson or remote assistance, report issues, and receive guidance from IT experts. The Walkup Experience service aims to enhance the overall user experience and by resolving IT-related
problems promptly and effectively.

Get started

Explore

Configure

Understand Walk-up Experience
features and benefits.

Plan and customize Walk-up Experience
to meet your specific needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2116


<!-- page 2117 -->
Plan

Manage

Plan your Walk-up Experience visit.

Manage Walk-up Experience
queue and interaction.

Monitor

Walk-up on Now Mobile .

Monitor Walk-up Experience performance.

Explore Walk-up Experience

®

®

on Now Mobile .

Reference

Get additional information about
the Walk-up Experience service.

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Walk-up Experience
Use the Walk-up Experience application to create and manage an on-site support channel where
your users can get their requests and issues resolved and fulfilled in real-time, either in person or
remotely by experienced agents.

Walk-up Experience overview
With Walk-up Experience, you can help to increase the productivity of the agents that serve the
requesters. Your requesters can also get real-time, either in-person or remote help with their
issues and devices.
The main purpose of a walk-up service center is to support and resolve the information
technology (IT)-related issues that a service desk comes across. For example, an agent can get
a request for a mouse device or keyboard, unlocking an account, or setting up software on a
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2117


<!-- page 2118 -->
mobile device. Some common names that you might use for your own walk-up center are Tech
Lounge, Service Center, or Genius Bar.

Walk-up Experience workflow
In the following sample end-to-end workflow, learn how different users in your organization can
leverage from Walk-up Experience.
1. The administrators configure and activate Walk-up Experience service channels, appointment
booking schedules, walk-up locations, kiosks, and stockrooms. The administrators can also
enable self-service online check-ins to support remote access to the requesters.
2. The agents manage the queues, interactions, and the scheduled appointments. They can also
view the assigned locations, stockrooms, and assets to support the employees in resolving
their IT issues.
3. The employees can schedule in-person or remote appointments to get their IT-related issues
resolved. By using their mobile devices, your employees can view how long the wait list is in
the queue, go to the kiosk location for quick resolutions, or book or modify appointments.
4. The administrators and managers can view and analyze the Walk-up Experience performance
by using the Walk-up Experience dashboard. For more information about the dashboard, see
Monitoring Walk-up Experience performance.

Walk-up Experience benefits
Walk-up Experience provides the following benefits.

Benefit

Feature

Users

Schedule a single or multiple appointments to
visit the walk-up lounge or the support lounge
Walk-up Experience Employee Center.

Plan your walk-up
experience visit with
Employee Center

Requesters/
employees

Access IT services in real time by visiting
a walk-up location. You can also schedule
appointments to visit the walk-up location at a
convenient future time. The agents get direct
access to user devices so that employees can
return to work faster.

Walk-up Experience
on Now Mobile

Requesters/
employees

Organize and manage walk-up queues,
interactions, and associated stockrooms that
you use for fulfilling the walk-up requests in a
centralized workspace.

Manage Walk-up
Experience queue
and interaction

Agents

Observe and capture the trends and
statistics that can improve your operational
performance by monitoring the walk-up
dashboard.

Monitoring Walkup Experience
performance

Administrators/
managers

Key features of Walk-up Experience
Walk-up Experience enhances user satisfaction and productivity by providing immediate and
personalized support for IT-related needs.
Every employee or a guest can check in and get support at an established walk-up service
center.
Requesters
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2118


<!-- page 2119 -->
Requesters can access the Walk-up Experience application in several ways.
• Online and via mobile device:
◦ Quickly check in online to the nearest available walk-up venue via a prebuilt
check-in widget on the Service Portal using your laptop, tablet, or mobile phone.

Note: Geolocation interfaces with the Walk-up Experience application
to route you to the nearest walk-up queue. You can change the location, if
desired.
Geolocation uses browsers or mobile device coordinates to determine
location. If geolocation is blocked on the browser, Walk-up Experience
defaults to Latitude/Longitude criteria in the user profile or mobile device.
◦ View hours of operation, the estimated wait time, and your position in the queue
at the check-in location via the Walk-up Status widget on the Service Portal.
You can also access the online Walk-up Experience check-in from this widget.

Note: The Walk-up Status widget must be configured to appear on the
Service Portal.
◦ View upcoming walk-up appointments and current queue position by location
®
using the Now Mobile application Services tab on your mobile device. Tech
Lounge visits appears if there is associated data. If no data exists, the section
is hidden.

Note: Requires activation of the ServiceNow Mobile Request Native
Application Screens and Applet Launcher plugin (com.glide.mobileemployee). See Mobile plugins and upgrades
for more information. This
plugin enables the Service Catalog functionality by default.
◦ Schedule appointments for support and receive appointment reminders, as
well as cancel or reschedule appointments from links in the reminder or from
the online check-in interface.
◦ Schedule only one appointment for each walk-up location queue at a time.

Note: Even with a scheduled appointment, you can still check into a
walk-up location queue online or in person onsite.
◦ Schedule appointments on behalf of others who need IT support, such as
executives or direct reports.

Note: Configuration is necessary to make this available to the

Appointment delegation group of users, such as executive assistants.
This is configured in the Walk-up Location Queue ([wu_location_queue])
table.
◦ Receive notifications via email or your mobile device when your request is
assigned to an IT support fulfiller, when you are close to next in line to be
helped, and when your walk-up request has been closed or abandoned, should
you decide not to attend the queue.
◦ View your Walk-up Experience appointments in your primary calendar
with Microsoft Office 365 Outlook calendar integration. When you make

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2119


<!-- page 2120 -->
an appointment, modify it, or cancel it, your calendar is sent invites to an
appointment and any updates.

Note: This feature is only available when Microsoft Office 365 Outlook is
the hosted calendar service.
◦ Add your online Walk-up Experience appointment to a calendar of your choice
with iCalendar. Click a link in the portal to download an iCalendar file containing
appointment details, including appointment location.
• Onsite at the Walk-up Experience location:
◦ Check into a queue at the physical walk-up location by manually entering either
your name or email or by scanning an employee badge.

Note: The badge scanning feature requires activation and configuration.
Refer to Badge Reader Integration for Walk-up Experience.
◦ Observe queue activities on a large monitor that displays both walk-in
requesters and those with appointments.
◦ View the monitor displaying how many people are currently in the queue, guest
positions in the queue, who is being helped, and estimated wait times.
◦ Hear an audio sound emitted from the on-site walk-up location large monitor
when a person moves to the top of the queue for service.
◦ Answer an available single-question survey which captures your user sentiment
after a visit.
• After-hours support — Get support even when a walk-up queue is closed. An IT
support phone number is displayed on the check-in device, along with a link to
create an incident in real time.
Agents
The IT organization uses the Walk-up Experience application to meet the demand of
urgent IT issues and requests.
• Walk-up Experience IT technicians manage daily operations at the walk-up queue
locations. They resolve IT-related issues, support mobile devices and laptops,
and fulfill requests for software and hardware consumables.
• The agents can accept and close Walk-up Experience interactions through
the Agent Workspace interface. Agent Workspace contains a personal inbox
where walk-up interactions, if configured in Advanced Work Assignment, are
automatically pushed for assignment.
• Agents can manage all aspects of Walk-up Experience fulfillment using Agent
Workspace. Based on their capacity, and if records are on-hold, they can work on
multiple transactions at the same time and promote interactions to incidents or
requests, or access associated stockroom consumables.
• Technicians can view and accept scheduled appointments in their Agent
Workspace personal inbox. Appointments are routed to the inbox according
to agent availability. Alternatively, agents can pick and choose appointments
manually.
• If necessary, technicians can work with anyone in the queue at any time.
Technicians can manually assign themselves to a walk-up interaction, by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2120


<!-- page 2121 -->
accepting the interaction from a list of unassigned interactions in Agent
Workspace.
• Agents can use the Agent Assist feature to expedite incident resolution.
Managers
IT managers supervise the walk-up location technicians and oversee daily
operations.
• Walk-up managers can observe and capture operational and performance data
by monitoring the walk-up dashboard.
• Walk-up managers can use the application to increase IT customer satisfaction,
verify, and confirm that stockroom inventory is available, provide customer service
in a timely manner, and report performance data to upper management.
Administrators
Configure and maintain walk-up related systems, such as the walk-up location
branding and text, queue locations and schedules, appointments, advanced work
assignments, and notifications, CSAT surveys, and associated stockrooms.
Access the pre-built Walk-up online check-in Experience widget for use in your
Service Portal. Make minor label changes directly in the widget without the need to
customize through code.
Enable Walk-up Experience Microsoft Office 365 calendar integration. When users
make an appointment, modify it, or cancel it, the Outlook calendar is sent invites to
an appointment and any updates. For more information about this feature, refer to
Integrate Microsoft Office 365 calendar with Walk-up Experience.

Note: This feature is only available when Microsoft Office 365 Outlook is the
hosted calendar service.

Devices required to deliver Walk-up Experience
The functionality of the Walk-up Experience application relies on different kinds of devices. Users
can check into an online walk-up queue using a desktop or laptop computer, tablet, or mobile
phone.
Onsite walk-up location users can check into the queue by scanning an employee badge or with
a provided, typically stationary, tablet.
The following guidance describes what devices are needed and function best for each Walk-up
Experience feature:
• Online check-in and appointment scheduling: Desktop or laptop computer, tablet, or mobile
phone.
• Onsite check-in: Tablet or a desktop.
• Onsite queue: Large flat screen TV. This feature is designed for larger display devices, such as
a TV monitor. It isn’t supported on a tablet.
• Onsite CSAT survey: Tablet or a desktop.
• Onsite badge reader: Badge scanning integration. For complete details, refer to Badge Reader
Integration for Walk-up Experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2121


<!-- page 2122 -->
Note: To optimize the experience for Apple iOS-based tablet devices, save the opened
Check-in and CSAT survey tabs to the homepage of the device. When selected from the
homepage, they open in full screen.

Configuring Walk-up Experience
Customize your Walk-up Experience portal and configure appointments, notifications, walk-up
venue locations, associated stockrooms, customer satisfaction surveys, and hours of operation
to meet your required needs.
Walk-up Experience includes associated notifications to alert requesters when the location is
closed or when an interaction is assigned to an agent. Pre-built customer satisfaction surveys
capture user sentiment about the experience. Also included are several configurable tables for
customizing your walk-up portal and service center experience. You can configure and specify
the following features for your experience:
• Configure an online check-in channel for requesters to join a walk-up queue before physically
arriving at the walk-up location.
• Access the pre-built Walk-up online check-in Experience widget for use in your Service Portal.
Make minor label changes directly in the widget without customizing through the code.
• Configure the physical walk-up location queue information to manage and administer the walkup service centers.
• Establish walk-up locations, set hours of operation, enable online check-in, determine
assignment groups, associate stockrooms, as well as design the queue time display and
position notification system.
• Configure reasons for visits to a walk-up queue by location.
• Add a logo and brand your portal and walk-up location to fit your style.
• Access location-specific branding elements, such as logo images, for walk-up queues. These
configuration options are found in the Walk-up Location Queue [wu_location_queue] table.
The following applications are included in the Administration module of the Walk-up Experience
navigation bar:
Walk-up Experience administration applications
Application

Description

Portal
Create and modify custom Walk-up Experience online and on-site service
Configurations portals.
Notifications

Access and configure alerts that keep requesters and agents informed of
events that concern them.

Appointment Create service configurations for individual walk-up queue locations. You can
Configurations configure schedules, number of appointments allowed per day, how far in the
future requesters can book appointments, and more.
Walk-up
Locations

Create walk-up location queues with custom schedules, assignment groups,
average wait time, and more.

Schedules

View, create, or modify walk-up venue schedules, such as 8-5 weekdays, and
associate them to the walk-up location queues.

Walk-up
Stockrooms

Establish walk-up venue stockrooms by location and specify available
consumables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2122


<!-- page 2123 -->
Walk-up Experience administration applications (continued)
Application

Description

Surveys

Access customer satisfaction surveys and enable public access to the
surveys, set survey trigger conditions, and view requester responses.

Walk-up Experience administration
Walk-up Experience users with the sn_walkup.walkup_admin role and administrators can activate
and configure the application to meet specific requirements.
You can configure appointments, decide when to send notifications to users, establish and
configure physical queue locations and operating schedules, integrate with CSAT surveys, and
associate stockrooms with queue locations. You can also customize your Walk-up Experience
portal with a unique logo and branding.
Activate Walk-up Experience
You can activate the Walk-up Experience plugin (com.snc.walkup) if you have the admin role. This
plugin includes demo data.

Before you begin

Role required: admin

About this task

The Walk-up Experience application is for pre-built support lounges. The application enables
your organization to set up a walk-up contact channel to support online and on-site queue checkin.
The Interaction Logging, Routing, and Queuing (com.glide.interaction) plugin are activated with
the Walk-up Experience plugin (com.snc.walkup). The following plugins must also be activated in
order to use the Walk-up Experience application:
• Asset Management (com.snc.asset_management)
• Service Portal (com.glide.service-portal)
To activate Walk-up Experience Badge Reader Integration and for more information about this
feature, refer to Badge Reader Integration for Walk-up Experience.
For enhanced security, activate the Explicit Role (com.glide.explicit_roles) plugin. The walk-up
user is assigned snc_external automatically. This plugin was introduced in the ServiceNow AI
Platform Paris release.

Note: Refer to Explicit roles plugin

for details about the plugin and Explicit Roles
more information about this upgrade process.

for

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2123


<!-- page 2124 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)

Walk-up Experience portal security and access
Security is built into the application to prevent end-user facing devices at the Walk-up
Experience on-site portal from offering elevated role privileges to users. The Walk-up Experience
on-site portal is accessed by an account containing only the sn_walkup.walkup_login role.

Understanding Walk-up Experience portal security
Activate the Explicit Role (com.glide.explicit_roles) plugin to assign users security roles,
either snc_internal or snc_external. This plugin was introduced in the ServiceNow AI Platform
Paris release. With the Quebec release, for new installations, Walk-up Experience added a
dependency on this plugin to explicitly set the Walk-up Experience user as an external user.
When upgrading Walk-up Experience installations prior to Rome, the Walk-up Experience user is
assigned snc_internal instead of snc_external. This is because the Explicit Role plugin assigns all
users, including Walk-up Experience users, to snc_internal. Walk-up Experience cannot remove
snc_internal during upgrade. For new installations of Walk-up Experience, this process works
automatically.

Note: Refer to Explicit roles plugin

for details about the plugin and Explicit Roles
more information about this upgrade process.

for

Access to Walk-up Experience
Agents opening up the on-site Walk-up location for business, or joining the support team
during operation hours, access the user record account with sn_walkup.walkup_login role
to log into the Walk-up Experience portal. Internal and external users can access the on-site
Walk-up Experience portal via a check-in device, typically a tablet, to enter a queue. Internal,
authenticated users can also access an online queue check-in via desktop or mobile device.

Important information for upgrading Walk-up Experience to Zurich
The Explicit Role (com.glide.explicit_roles) plugin was introduced in the ServiceNow AI
Platform Paris release. When installed, users are assigned security roles, either snc_internal
or snc_external. With the Zurich, release Walk-up Experience has added a dependency on this
plugin to explicitly set the Walk-up Experience user as an external user.
When upgrading Walk-up Experience to Zurich, the Walk-up Experience user is assigned
snc_internal instead of snc_external. This is because the Explicit Role plugin assigns all users,
including the Walk-up Experience user, to snc_internal. Walk-up Experience cannot remove
snc_internal during upgrade. For new installs of Walk-up Experience, this process works without
issue because the Explicit Role plugin installs first, assigns all users to snc_internal, then the
Walk-up Experience user account is created with the snc_external role already assigned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2124


<!-- page 2125 -->
Note: Refer to Explicit roles plugin

for complete details about the plugin and ServiceNow

AI Platform explicit roles.
After upgrading to Zurich, you need to remove the snc_internal role from the Walk-up Experience
user account, or any users created to log into the Walk-up Experience kiosk. Then you need to
add the snc_external role to the users. This process is not necessary for upgrades after Zurich.

Note: Refer to Explicit Roles

for complete details about this process.

Configure the Walk-up Experience portal
Create engaging walk-up center service portals featuring your logo, portal theme, desired
catalog, links to a knowledge base and social community, and more.

Before you begin

Walk-up Experience includes a complete base-system Walk-up Portal with theme. The Walkup Portal pages are meant to be used as built. You can create custom portal pages to meet your
needs by copying the portal pages and associated widgets and making changes to the copies.
You can configure both an online check-in portal and a physical check-in portal for your walk-up
locations.
There are several ways to configure the Walk-up service portal:
• Service Portal application: Modular user interface framework for quick and easy building and
customization of application portals.
• Service Portal Walk-up form: Requires CSS and HTML experience.
Role required: sn_walkup.walkup_admin or admin

Procedure
1. To configure the Walk-up service portal using the Service Portal application, navigate to All >
Service Portal > Service Portal Configuration.
2. To customize the base-system walk-up portal with your unique branding, title, logo, theme
colors, layout, properties, widgets, and more, or to create a new walk-up portal, refer to Service
Portal
for detailed information.
3. Alternatively, to configure the Walk-up service portal using the Service Portal Walk-up form,
navigate to All > Walk-up Experience > Administration > Portal Configurations.
4. In the Service Portals list, select Walk-up.
5. Click the form menu icon

and select Configure > Form Design.

6. In the form designer header drop-down list, select or search for any of the configurable walkup forms to customize your portal appearance.
Option

Description

Walk-up context [wu_context]

Online check-in channel for requesters to join
a walk-up queue before physically arriving at
the walk-up location. Identifies a walk-up re­
quester and the description of the associated
interaction.

Walk-up Location Queue [wu_location_­
queue]

Physical walk-up location interaction queue
to manage and administer the service cen­
ter. You can establish walk-up locations, set
hours of operation, enable online check-in, de­
termine assignment groups, associate stock­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2125


<!-- page 2126 -->
Option

Description

rooms, as well as design the queue time dis­
play and position notification system.
Walk-up Reason [wu_m2m_location_­
queue_reason]

Reasons why a requester needs walk-up sup­
port.

Walk-up Reason for Visit [wu_reason]

Order in which reasons for a visit should be
prioritized at a walk-up location.

You can modify the form content to meet your portal requirements. For more details, refer to
Form configuration
.

Configure Walk-up Experience service channel
Configure the Walk-up Experience service channel to meet the needs of your walk-up agents and
how they are assigned to and manage interactions in Agent Workspace.

Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

The Walk-up Experience service channel is viewed and configured through Advanced Work
Assignment. You can modify default values and conditions as desired.

Procedure
1. Navigate to All > Advanced Work Assignment > Service Channels.
2. Select Walk-up to open the Walk-up Experience service channel.
for detailed information regarding the Service Channel
3. Refer to Configure a service channel
Walk-up form values and conditions.
For more information regarding Advanced Work Assignment service channels, including
configuring capacity and utilization, inbox layout, and overriding agent capacity for selected
agents, refer to Service channels .

Create or modify Walk-up Experience schedules
Once you know the hours of operation for your Walk-up Experience location, you can either
access the base-system default schedules or create new schedules to associate with your walkup location.

Before you begin

Role required: admin or sn_walkup.walkup_admin

Procedure
1. To view and use a base-system default schedule in the Walk-up Experience application,
navigate to Walk-up Experience > Administration > Schedules.
You can view all available base-system default schedules, such as 8-5 weekdays excluding
holidays.
2. To modify an existing base-system schedule, click the schedule name, otherwise click New to
create a schedule if none of the default schedules apply for your walk-up location.
3. Complete the Schedule New record form or modify fields on an existing form.
To complete this process and for detailed information on creating, modifying, and using
schedules in the system, including a definition of all form fields, refer to Schedules
.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2126


<!-- page 2127 -->
Book Walk-up Experience appointments
With the Walk-up Experience appointment booking feature, walk-up users can view available
appointment windows, make a selection, and book an appointment for a walk-up location using
online Walk-up Check-in feature. Walk-up agents can also book appointments on behalf of
customers.
Create appointment windows for walk-up queue locations enabling requesters to book service
appointments.
The Appointment Booking plugin (com.snc.appointment_booking) must be activated to use
the application. Activating the plugin adds the Appointment Booking menu to the application
navigator and the following modules:
• Appointment Booking Configuration: Use this module to create an appointment booking
configuration for an application and then configurations for each service within that
application.
• Appointment Bookings: Use this module to view a list of appointments that have been booked
for services. This list includes the work orders associated with each appointment.
Appointment booking requires configuration at both the application level, in this case, Walk-up
Experience, and at the walk-up queue service level, represented by the actual location of the
walk-up queue.
The Walk-up Experience application configuration contains settings that apply to all of the
service locations within the application that support appointment booking.
A service configuration is required for each of the walk-up queue locations within the application
that offer scheduled appointments. A service configuration includes settings that apply only to
that specific walk-up queue service location.

Note: Both the application configuration and the service configuration must be active to
book appointments.
For detailed information about the Appointment Booking application, refer to Managing
appointments .
Walk-up Experience appointment booking administration
Create or modify the Walk-up Experience Appointment Booking feature.
Administrators can create, modify, and enable the Walk-up Experience application configuration.
Appointment booking administrators (appointment_booking_admin) can create, modify, and
enable configurations for service locations within the Walk-up Experience application.
Walk-up Experience is an application level configuration provided with the base system
appointment booking feature. You can include as many service level configurations as needed.
The service level configurations apply to the individual walk-up queue locations that exist.
Administrators can modify these configurations as needed or use them as examples to create
new configurations.
For more information on appointment booking administration, see Administer appointment
booking
Enable Walk-up Experience appointment booking
Enable or disable the appointment booking feature for Walk-up Experience as well as for the
individual walk-up service locations available to requesters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2127


<!-- page 2128 -->
Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

The Appointment Booking plugin (com.snc.appointment_booking) must be activated to use the
application.
When appointment booking is enabled, the Schedule an appointment tab appears on the online
check-in page. The requesters can choose a reason for the appointment and select a date a time
from current available appointments.

Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. Select Walk-up Experience.
The Walk-up Experience configuration is provided with the base system Appointment
Booking feature.
3. Click Active to enable appointment booking for the Walk-up Experience application.
4. In the Appointment Booking Service Configuration related list, select the name of a service.
For Walk-up Experience, a service is defined by the physical location of a walk-up queue. Every
walk-up queue associated with your application is a service that needs to be configured for
appointment booking.
The Appointment Booking Service Configuration form for the selected service opens.
5. Select Active to set the field to true.
6. Select Update.
Configure Walk-up Experience appointment booking
Create or modify appointment booking configurations for the Walk-up Experience. You can view
or modify the Walk-up Experience application appointment booking configuration and create or
modify related service appointment configurations.
The base system Walk-up Experience application includes a default appointment booking
configuration that can be modified. By default, the information stored in the Walk-up Experience
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
• Define the time window in which you want to support appointments. For example, 15 minutes
now_V. 30 minutes.
• Define the time window capacity. For example, the maximum number of appointments per time
window.
View or modify a Walk-up Experience appointment booking configuration
View the base system default appointment booking application configuration to determine if
the criteria meets your walk-up appointment booking needs. You can modify the application
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2128


<!-- page 2129 -->
configuration to uniquely manage appointment booking for your experience. The information
stored in the Walk-up Experience appointment booking application configuration applies to all
the services within the application.

Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

The Walk-up Experience configuration is provided with the Appointment Booking feature.

Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. To view the Walk-up Experience configuration, select the configuration name.
3. In the Appointment Booking Configuration form, view or modify the following fields as needed.
Appointment booking configuration
Field

Description

Name

Name of the application configuration.

Task Table

Table where appointments are created for the tasks. The field is automatically
populated with Walk-up Appointment [wu_appointment] table for configuring
Walk-up Experience.

Availability
Method

Option to determine the appointment availability.
◦ Number of appointments per slot: Define a specific number of appointments
per time slot. Use this availability method if the task assignment method is set
to manually. This is the default setting.
◦ Scripted: Use this configuration setting to determine availability if the task
assignment method is set to using auto assignment or dynamic scheduling.

Advanced
Calendar
view for
Portal

Option to display advanced view of the calendar for booking an appointment.

Active

Option to activate the application configuration and enable appointment
booking.

Auto
If the application configuration setting for Process lifecycle is set to taskacceptance driven, an agent must accept or reject an assigned task. Enable the Auto
acceptance check box to override this configuration setting for appointment
booking.
Portal View

Displays available appointments for a single day or for a week on the online
Self Service Walk-up Check-in portal or from the Service Portal if the walk-up
icon is configured there.

4. Select Submit.
Create a record producer to capture Walk-up Experience appointment records
Capture Walk-up Experience appointment records by creating unique record producers for your
individual walk-up locations. The Appointment Booking Service Configuration form contains
required fields that refer to variables in the associated record producer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2129


<!-- page 2130 -->
Before you begin

Role required: appointment_booking_admin or admin

About this task

In order to properly configure your walk-up location services for appointment booking, you must
first create a unique record producer for each walk-up location. You must also add variable sets
to the record producer. By creating the unique record producer with appropriate variable sets,
you can capture all your walk-up appointment records for each location.

Procedure
1. Navigate to All > Service Catalog > Record Producers.
2. Click New to open the Record Producer New Record form.
3. Provide a unique name for the record producer in the Name field.
4. Search for and select Walk-up Appointment [wu_appointment] in the Table name field.
5. Provide a short description for added detail.
6. Click Submit.
7. Return to the Record Producers list and search for your newly created record producer.
8. Click to open your newly created record producer.
9. Scroll down the form and click to open the Variable Sets tab.
10. Select Edit to add the appropriate variable sets to the record producer.
11. Select and add the following variable sets to the record producer using the add button:
sn_appointment_variable_set and sn_walkup_variable_set.
12. Click Save.
Create or modify a Walk-up Experience appointment booking service configuration
Create or modify appointment booking configurations for Walk-up Experience services. A service
is defined as the actual physical location of a walk-up queue. The information stored in the Walkup Experience application configuration applies to all services, or queue locations, within the
application.

Before you begin

Role required: appointment_booking_admin or admin

About this task

To use the appointment booking feature, administrators must create a configuration for each
service, or queue location, that is available to walk-up customers. Service configurations are
created within the Walk-up Experience application configuration, as part of the Appointment
Booking application.

Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. Select Walk-up Experience.
3. Create or modify Appointment Booking Configuration.
◦ To create configuration for appointment booking, select New.
◦ To modify an existing configuration, select the configuration from the list.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2130


<!-- page 2131 -->
Appointment booking service configuration fields
Field

Description

Active

Option to enable appointment booking for the service.

Note: If inactive, customers cannot schedule appointments for the
service but can still create work orders.
Enable
day level
configuration

Option to configure the schedule at a day level. For more information, see
Configure day-level appointment booking.

General Information
Name

Name of the service configuration.

Configuration Name of the appointment booking configuration to which this service
belongs.
Availability
table

Table used to calculate appointment availability. For Walk-up Experience,
choose Walk-up Appointment [wu_appointment].

Holiday
Schedule

Holiday schedule to use when determining availability. Appointment booking
evaluates the holiday schedule when determining the number of available
appointments and excludes any day in the schedule that is set to Exclude.
Select the lookup icon and select a schedule from the Schedules list.

Note: Holiday schedules are useful when the assignment method for
tasks is set to manually, which does not consider agent schedules.
Catalog Information
Catalog item

The service in the service catalog for which this appointment booking
configuration is being created. The catalog item must exist in the service
catalog. Select the lookup icon and select the associated service from the
Record Producers list.
You must create a record producer for each walk-up service location. Refer
to Create a record producer to capture Walk-up Experience appointment
records.
If you’re using appointment booking with work orders, create a work order
template before you configure appointment booking.

Location

The field on the record provider that determines the appointment location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2131


<!-- page 2132 -->
Field

Description

Note: Ensure the Location field on both this form and the Walk-up
Location Queue (wu_location_queue) form are configured in alignment.
Walk-up Experience contains the location reference variable, which
is a Location (cmn_location) record. Selecting Location from the search
list
icon ensures that you’re aligning with the same time zone as
the walk-up location you are configuring for. When you select Location,
the online appointment scheduling calendar displays in the requester
time zone. If this field is kept empty or if the requester preference for
the instance is not configured to have an associated time zone, the
appointment scheduling calendar defaults to display in the requester
time zone.
If a requester in Europe has User preferences for Time zone configured
for Europe/Brussels and the Appointment Booking Configuration
for the Location field is set to a cmn_location with the time zone
US/Pacific, then the appointment scheduling calendar will display in
the US/Pacific time zone.
When a requester creates an appointment, the system defaults
to use the schedule associated with the Walk-up Location Queue
(wu_location_queue), regardless of the Location field value of this
record producer.
Timezone

Time zone used for the location. Select Appointment location from the dropdown list.

Appointment
is mandatory

Option for enabling the feature to make it mandatory for a requester to create
an appointment when requesting this service.
◦ If selected, the Appointment field appears on the record producer, and the
requester selects an available appointment before submitting the service
request.
◦ If not selected, the requester can submit the service request without
selecting an appointment.

User contact

The field on the record producer that determines who the appointment is
being created for. Set this field to Contact. This is a reference field that looks
for a sys_user variable on the record producer.

Booking
Appointments Number of available appointments for each configured appointment time
per window
slot. This number determines the number of available appointments that
are displayed on the Select Appointment window. Enter a number in this
field if the assignment method for tasks is set to manually. If set to either
using auto-assignment or using dynamic scheduling, this setting does not
apply, unless a location is not provided. Then the configuration defaults to
the number of appointments per window.
Lead time

Number of hours or days from the current time after which an appointment
can be booked for this service. Define the lead time in hours or days. The
default is four hours.

Future
Number of days in advance of the current day for which an appointment can
bookable max be booked for this service. The default is 14 days.
days
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2132


<!-- page 2133 -->
Field

Description

Reschedule /
Cancel by
time

Number of hours or days prior to an appointment start time that are required
for an appointment to be canceled or rescheduled. If a requester attempts
to cancel or reschedule an appointment within this number of hours, the
Cancel button is not available. Define the time in hours or days. The default is
four hours.

Appointments
Appointment
window

Duration of the appointment window.

Note: Allow enough time for the work to be started and completed
within this window.

Work duration Time required to complete all tasks created by the record producer. This
duration is set for a task when it is created. Used to determine availability. The
default is one hour.
Travel
duration
(round trip)

Estimated value of the average travel time required (round trip) for the agent
performing the task. Set the value to 0 because the work is performed on site
and travel time is not needed.

Daily Schedule
Bookable
days

Days of the week for which appointments can be booked. The default is
Monday through Friday. Bookable days should reflect the appointment
schedule.

Note: Appointment schedules are separate from the walk-up queue
location schedule but should be the same days and hours as the walkup queue location schedule.
Daily start
time

Start of the work day and the earliest start time for an appointment window.
The default is 9:00.

Daily end
time

End of the work day and the latest end time for an appointment window. The
default is 18:00 PM.

Include daily
break

Option to schedule a break for each bookable day, then select the break start
and end times. You can define one break which applies to all days.

Appointment
booking
preview

Option to provide a preview of the appointment windows and times based on
the selected start and end times, break time, and appointment window.

5. Select Submit.
Configure day-level appointment booking
Create or modify different schedules at a day level when booking appointments for a service.
The appointments can be scheduled for different slots such as morning, afternoon, and evening.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2133


<!-- page 2134 -->
Procedure
1. Navigate to All > Appointment Booking > Appointment Booking Configuration.
2. Select Walk-up Experience.
3. In the Appointment Booking Service Configuration related list, select a service configuration
for which you want to configure the appointment schedules.
4. Select Enable Advanced Configuration.
5. In the Appointment Booking Day Configuration related list, click New.
6. On the form, fill in the fields.
Appointment Booking Day Configuration form
Name

Name of the day level configuration, such as
Morning, Afternoon, or Evening

Active

Option to indicate if the appointment slot is
active or not.

Start date

Start date of the appointment booking
window

End date

End date of the appointment booking window

Daily start time

Start of the work day and the earliest start
time for an appointment window. The field is
automatically set to 9a.m.

Daily end time

End of the work day and the latest end time
for an appointment window. The default is
6p.m.

Service configuration

Name of the service configuration for which
you are scheduling configurations at a day
level, such as Point-of-Sale Installation.

Work duration

Time required to complete all tasks created
by the record producer. This duration is
set for a task when it is created. Used to
determine availability. The default is 1 hour.

Travel duration (round trip)

Estimated value of the average travel time
required (round trip) for the agent performing
the task. Used to determine availability. The
default is 15 minutes.

Appointment window

Duration of the appointment window.

Note: Allow enough time for the work
to be started and completed within this
window.
Appointments per window

Number of available appointments for
each configured appointment time slot.
This number determines the number of
available appointments that are displayed
on the Select Appointment window. Enter
a number in this field if the assignment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2134


<!-- page 2135 -->
method for tasks is set to manually. If set
to either using auto-assignment or using
dynamic scheduling, this setting does not
apply, unless a location is not provided. Then
the configuration defaults to the number of
appointments per window.
Include daily break

Option to schedule a break for each
bookable day. Set the break start and end
times. You can also define one break which
applies to all days.

Appointment booking preview

Provides a preview of the appointment
windows and times based on the selected
start and end times, break time, and
appointment window.

7. Select Submit.
Configure daily schedules for Walk-up Experience appointment booking
Define hours of operation and daily schedules for booking an appointment at your Walk-up
Experience location.

Before you begin

Role required: appointment_booking_admin or admin

About this task

Create a unique appointment booking schedule for each day of the week or for specific days of
the week. For example, you can set the appointment booking availability schedule to run from
9:00am to 5:00pm, Monday, Wednesday, and Friday. The Tuesday and Thursday appointment
availability schedule can run from 9:00am to 12:00pm. You can completely remove appointment
booking for a specific day of the week, for example, Friday.

Note: To specify unique daily booking schedules, while using your associated
appointment booking configuration, create new Schedule Entries to exclude the hours
appointment booking is not available.

Procedure
1. Navigate to All > Walk-up Experience > Administration > Schedules.
2. Select the schedule you use, for example, the 8-5 weekdays excluding holidays schedule.
3. In the Schedule Entries related list, select New.
4. Name the new record Excludes and fill in the form to create a unique daily booking schedule
for Tuesday and Thursday appointments.
Schedule Entry Excludes configuration fields
Field

Description

Name

Name of the record. For example, name the record Excludes to indicate the hours
excluded from appointment booking.

Type

Choose Excluded as the type.

Show
as

Choose Busy as the reason for the exclusion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2135


<!-- page 2136 -->
Field

Description

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

5. Select Submit.
6. To verify that Tuesday and Thursday appointment booking is only available from 9:00am to
12:00am, navigate to your online Walk-up Check-in application.
If configured for view, You can access the online Walk-up Check-in application from the
Service Portal Home page or under Self-Service in the left navigation bar.
7. Select the walk-up location for which you are verifying the schedule.
8. Select Schedule an appointment and select a reason for the visit.
9. Select a date for the appointment.
The Select Appointment window displays the first available appointment, by week and day.
10. Determine that appointments are only available on Tuesdays and Thursdays from 9:00am to
12:00pm.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2136


<!-- page 2137 -->
Configure excluded hours for Walk-up Experience appointment booking
Using the Appointment Booking application, you can specify excluded appointment hours in the
schedule for your Walk-up Experience location.

Before you begin

Role required: appointment_booking_admin or admin

About this task

Configure your Walk-up Experience location to exclude certain hours of operation from users
scheduling appointments. For example, you can set the appointment booking availability
schedule to run from 8:00 a.m. to 5:00 p.m., Monday through Thursday. On Friday, you can
schedule the appointment booking availability from 8:00 a.m. to 2:00 p.m. You can also
completely remove appointment booking for a specific day of the week, for example, Mondays or
Friday.
Reconfigure the Holiday Schedule field on the Appointment Booking Service Configuration form
for your walk-up location to use a custom Off hours schedule instead of the default holidays
schedule.

Procedure
1. To create a schedule to exclude your unavailable appointment booking hours, navigate to
Walk-up Experience > Administration > Schedules.
2. Select New.
3. Provide a name for your schedule, for example, Off hours schedule.
4. Add a description, if desired.
5. Select Submit.
6. In the Schedules list, search by Name for the new Off hours schedule record.
7. Select Off hours schedule to open the record.
Use the Schedule Entries related list to create two separate excluded hours schedule entries,
one for Friday off hours and one for Weekday off hours.

8. Select New in the Schedule Entries related list to create Friday off hours.
You will configure Fridays to exclude all appointments after 1:00 p.m.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2137


<!-- page 2138 -->
9. Select Update to save your changes.
10. Add the U.S. Holidays default off-hour schedule as a child schedule to the Off hours schedule.
a. Click the Child Schedules related list.
b. Click Edit and use the slush bucket to move the U.S. Holidays schedule into the Child
Schedules List for the Off hours schedule.
Adding the U.S. Holidays schedule as a child ensures that all holidays are excluded from
appointment booking and overrides the Off hours schedule configurations for holidays.

Note: The U.S. Holidays schedule is the default off-hours schedule for the United
States. Default off-hours schedules will differ depending on your location.
c. Click Save.
11. Click Update to save the Off hours schedule record.
12. Next, to configure your walk-up location to use the Off hours schedule, navigate to
Appointment Booking > Appointment Booking Configuration.
13. Select Walk-up Experience and then the walk-up location you want to reconfigure, for
example, San Diego Tech Lounge.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2138


<!-- page 2139 -->
14. In the Holiday Schedule field, change the default, base system schedule value to Off hours
schedule, using the list search

icon.

15. Click the Daily Schedule tab to configure the daily start and end times for the walk-up location.
For this location, the hours of operation begin at 8:00 a.m. and end at 5:00 p.m. (17:00),
Monday through Friday.

16. Select Update to save your changes.
17. To verify the hours you want excluded from appointment booking are unavailable, navigate to
Self-Service > Walk-up Check-in.
18. Select the walk-up location with the excluded hours you want to verify.

19. Select Schedule an appointment.
20. Click the calendar

icon to view the available appointment times for the walk-up location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2139


<!-- page 2140 -->
The appointment schedule reflects the excluded hours you configured by using the Off hours
schedule. Scroll down in the Select Appointment window to view the end times.

Activate and configure appointment booking reminders for Walk-up Experience
Configure scheduled appointment reminders for Walk-up Experience users. Reminders ensure
users attend appointments in a timely manner or reschedule or cancel an appointment if they
can no longer attend.

Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

To operate appointment booking reminders, activate the Appointment Booking Reminders
Scheduled Job, since it is not active by default. In addition, the Appointment reminder field does
not appear on the Appointment Booking Service Configuration form by default. You must add it
to the form and configure reminders. Reminders are inactive unless a configuration is set.

Procedure
1. Navigate to System Definition > Scheduled Jobs.
2. Search for Appointment Booking Reminders by name and select to open.
3. Click the Active field to activate the scheduled job.
4. Click Update.
5. To add the Appointment reminder field to the Appointment Booking Service Configuration
form, navigate to Walk-up Experience > Administration > Appointment Configurations.
6. Select a Walk-up Experience service configuration from the list.
7. Click the menu button (

) and scroll to Configure > Form Layout.

8. Select Appointment reminder from the Available list and move it to the Selected list using the
add button.
9. Select Save.
The Appointment Booking Service Configuration form is displayed with the Appointment
reminder field.
10. To configure an appointment reminder, choose time, in hours, from the Appointment reminder
field drop-down list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2140


<!-- page 2141 -->
The time represents the time before a scheduled appointment that you want to send a
reminder. For example, a reminder is sent, two hours before a scheduled appointment.
11. Select Update to add the appointment reminder configuration.
Configure Variable time slots for appointment booking
Variable time slots, such as work duration and dates, for appointments can be configured and
booked based on the reason for a location. The reason can be an issue or request.
This feature enables you to do the following:
• Configure variable time slots for booking an appointment based on the different reason for a
location by creating advanced configurations and service configuration rules.

Note: The service configuration rules and the advanced configurations must not
overlap each other.
• Communicate to the customers about the availability of the agents for a location.
• Manage the walk-up locations and resources more effectively and efficiently.
To enable this feature, select the Enable advanced configurations check box on the
Appointment Booking Service Configuration form.
You can create multiple advance configurations for a service configuration rule.
Configure variable time slots for appointment booking
Configure variable time slots for appointment booking in a walk-up location by defining rules and
configurations.

Before you begin

Role required: appointment_booking_admin or admin

About this task

To use the appointment booking feature, administrators must create a configuration for each
service or queue location that is available to walk-up customers. Service configurations are
created within the Walk-up Experience application configuration, as part of the Appointment
Booking application.

Procedure
1. Navigate to All > Walk-up Experience > Administration > Appointment Configurations.
2. Create or modify Appointment Booking Configuration.
◦ To create a new configuration for appointment booking, select New.
◦ To modify an existing configuration, select the configuration from the list.

Note: For more information on creating or modifying appointment booking configuration
for Walk-up Experience and field-related information, see Create or modify a Walk-up
Experience appointment booking service configuration.
3. Select the Enable advanced configurations check box.
The Advance Configurations and Service Configuration Rules tabs appear in the related list
of the Appointment Booking Service Configuration form.
4. Click the Service Configuration Rules tab, and create or modify an existing rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2141


<!-- page 2142 -->
◦ To create a new rule, click New.
◦ To modify an existing rule, select the configuration from the list.
5. On the Service Configuration Rule form, fill in the fields and click Submit.
For more information on the fields, see Create appointment booking service configuration
rules .

Note: The Task Table and Task Conditions fields are not applicable for Walk-up
Experience.
6. Click the Advance Configurations tab, and create or modify a configuration.
◦ To create a new configuration, click New.
◦ To modify an existing configuration, select the configuration from the list.
7. On the Advance Configurations form, fill in the fields and click Submit.
For more information on the fields, see Create appointment booking advanced configuration

.

8. Click Submit.

What to do next

You must map the defined advance configurations with the defined service configuration rule for
a location. Use the Reasons for Visit related list on the Walk-up Location Queue form. For more
information, see Create or modify Walk-up Experience locations.
Configure maximum multiple appointments
Enhance Walk-up Experience service experience by helping requesters to book multiple
appointments simultaneously. You can configure the location to accept multiple bookings and
also decide the maximum number of appointments a requester can book at a location.
Only one appointment could be booked by a requester with Walk-up Experience appointment
booking feature. The requesters could not book any follow-up appointments. For example,
requester has scheduled a laptop drop-off appointment and wants to schedule a pick-up
appointment in advance.
With enhanced appointment booking feature, the requesters can now book multiple
appointments simultaneously.
Scheduling multiple appointments, the requesters and the agents can maintain the context of
the service request. To reduce back and forth communication and resolve issues seamlessly, the
agents can also book multiple appointments on behalf of the requester.
Implementation
• Administrators: The administrators can decide and configure the maximum number of
appointments a requester can book for a particular location. For example, at Santa Clara tech
lounge location, set up the maximum number of appointments as 2. The requester can only
schedule two appointments in advance. If maximum number of appointments per user is
changed or modified, existing appointments are not affected. The change is applied to all
future appointment bookings. To configure and set the maximum number of appointments at a
location, see Create or modify Walk-up Experience locations.
• Agents:To book a walk-up appointment on behalf of the requesters when incident resolution
requires requesters for a follow-up visit, see Create an appointment through incident
• Requesters:To book multiple appointments and plan walk-up visits in advance, see Plan your
walk-up experience visit with Employee Center.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2142


<!-- page 2143 -->
Configure appointment type
Support requesters in-person and virtually and assist them through remote appointment.
A walk-up location can support in-person visits of a requester or support the requester virtually.
Extend services to your employees working remotely with the new Walk-up appointment booking
type as remote. With the new remote appointment type, you can manage crowding at the
location, support work from home and hybrid work model effortlessly. Integrate MS Teams to
connect to the agents and the requesters and maintain the conversation context.
• Administrators: The administrators can set a location as remote, in-person, or both. To
configure appointment type for a location, see Create or modify Walk-up Experience locations.
• Agents: The agents are notified whether the interaction is remote or in-person. They can
start a conversation with the requester on Microsoft Teams and bring over the context from
Microsoft Teams chat to walk-up interaction.
• Requesters:The requesters can choose if they want to be served remotely by selecting
appointment type as remote while scheduling an appointment. For more details, see Plan
your walk-up experience visit with Employee Center. They can still get their issues resolved by
visiting the location.

Create or modify a Walk-up Experience stockroom
Create stockrooms and assign assets and groups specifically for your walk-up location. Walkup stockrooms contain common assets that visitors to the walk-up location will typically request,
such as a computer mouse, monitors, and cables. The walk-up location stockroom should be
easily accessible to your walk-up location for fast request fulfillment.

Before you begin

Role required: sn_walkup.walkup_admin, asset_user, inventory_user, or admin

About this task

Stockrooms are separate, standalone entities in the Asset Management application.

Procedure
1. To view walk-up location stockrooms, navigate to Walk-up Experience > Administration >
Walk-up Stockrooms.
2. To modify an existing walk-up stockroom, click the stockroom name, otherwise click New to
create a stockroom.
3. Complete the Stockroom New record [Walk-up view] form or modify fields on an existing form.

Fields

Description

Name

Display name and unique identifier of the stockroom.

Assignment Group that primarily uses the stockroom.
group
External

Whether this stockroom is managed internally (check box is cleared) or is
managed externally by a third party (check box is selected).

Location

Physical location (address) of the stockroom.

Type

Type of stockroom. Chose Walk-up to create a walk-up stockroom.

Manager

Person in charge of the stockroom. Receives restocking notifications and
requests for the stockroom stock rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2143


<!-- page 2144 -->
Create or modify Walk-up Experience locations
Create or customize the predefined Walk-up Experience location. Walk-up Experience locations
contain all the information about the walk-up support venue. You can define the way each
location or support venue works.

Before you begin

Role required: sn_walkup.walkup_admin, sn_walkup.walkup_manager, or admin

About this task

You can configure walk-up locations for work schedules, appointment bookings, assignment
groups, and associate stockrooms. Set up management and administrative rules for your walk-up
location. Specify reasons-for-visit options and configure how interactions display for each walkup location.

Procedure
1. Navigate to All > Walk-up Experience > Administration > Walk-up Locations.
2. To create or modify an existing walk-up location, do one of the following:
◦ To create a new walk-up location, click New.
◦ To modify an existing location, select the walk-up location from the list.
3. On the form, fill in the fields.
Configure Walk-up location form
Fields

Description

Name

Name of the location. For example, Santa Clara tech lounge.

Description

Description of the location.

Schedule

Schedule of work operation days and hours that the walk-up location follows.

Appointment Appointment booking plan for the walk-up location. For more details, see
Booking
Booking walk-up appointment.
Service
channel

Service channel that the agents work on. Select the Walk-up service channel.

Define
condition
here

Option to route work items to a queue using a condition.

Condition
mode

Condition modes to define the routing of work items. The available options are
as follows:
◦ Simple
◦ Advanced
This field appears only when the option Define condition here is selected.

Work item
routing
condition

Condition that defines who provides customer support at a walk-up location.
Location is determined by physical address.

Active

Option to set the walk-up location as active.

This field appears only when Simple is selected from the Condition mode
field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2144


<!-- page 2145 -->
Fields

Description

Enable away Option to set the location in a non-operational or closed state.
state
Away
message

Display message to indicate that the location is temporarily closed for the
specified time. The message is specified for work hours other than the
scheduled closed times.

Stockroom

Stockroom that supplies assets to the location.

Location

Physical address of the location.

Location
image

Picture of the location. For example, a picture of the city, building, or workdesks of the walk-up location.

4. Select the Management tab and fill in the fields.
Walk-up Management tab
Fields

Description

Position
notification

Queue position at which a requester is sent a notification. For example, if the
position notification is set to 3, the requester receives a notification that is
third in line to be assisted.

Last check-in

Last available check-in time in minutes. For example, 30 minutes before
closing.

Enable online Option to set this location for online checking in. Allow requesters to check in
check-in
to the location remotely from a laptop or mobile phone.
Enable kiosk

Option to enable the kiosk feature at the location.

Show kiosk

Option to show the kiosk on the portal and on the on-site display monitor.

Enable
appointment
delegation

Option to enable agents and requesters to book an appointment on behalf of
someone else.

Appointment
delegation
group

Group of people who can book an appointment on behalf of the requester or
agent. Add a new group of requesters if an appropriate group does not exist.
This field appears only when the Enable appointment delegation field is
selected.

Maximum
Maximum number of appointments that a requester can book at a location.
appointments This field is automatically set to 1.
per user
Note: If maximum number of appointments per user is changed or
modified, existing appointments are not affected. The change is applied
to all future appointment bookings.
Name
configuration

Option to display the information of the requesters on the on-site queue
display monitor and on the online check-in screen. You can display the
names in any of the following manners:
◦ First name (by default)
◦ First name and last name
◦ First name with initials of last name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2145


<!-- page 2146 -->
Fields

Description

Appointment
routing time

Time defined, in minutes, to route the work item to an agent prior to an
appointment.

Hold time

Time defined, in minutes, that you want to put an interaction on hold before
attempting to route it again to an agent. For example, if this field is set to 5,
then the interaction is put on hold for 5 minutes before rerouting it to the
other agent.

Show
estimated
wait time

Option to display the estimated wait time for a requester in walk-up queues.
The wait time is calculated from the average wait time of the queue and how
many requesters are currently in the queue. All estimated wait times are
rounded to the nearest whole minute.
The estimated wait time calculation requires the use of the Advanced Work
Assignment queueing system to calculate the average wait time.
Estimated wait times are displayed at the following places:
◦ Online check-in.
◦ On-site check-in and on-site queue display monitor.
◦ Status widget on the Service Portal

Audio
Playback

Specify when the audio confirmation will play. For example, when a requester
checks into an on-site queue or checks in online or both, the audio is played.
This field is automatically set to None.

Audio File

Audio to play for the following walk-up queue conditions:
◦ When a requester checks into a queue, audio is played from the actual
check-in location, typically a stationary laptop.
◦ When a new requester moves up in the queue, audio is played from the
queue display monitor.
◦ When a requester makes an appointment online, audio is played from the
device of the requester.
The base-system default file is walkup_checkin.mp3.

Note: Only mp3 file formats are supported across all browsers.
You may need to provide additional browser permissions to use an
audio file on the Safari browser.
5. Click the Administration tab and fill in the fields.
Walk-up Administration tab
Fields

Description

Queue time
display

Choice to display the time on the on-site display monitor. Choices are as
follows:
◦ None: If you do not want any display.
◦ Check-in time: The check-in time of the requester.
◦ Time waited. Time remaining for the requester to check in.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2146


<!-- page 2147 -->
Fields

Description

Queue
message

Welcome message to display on the on-site display monitor of the location.

Check-in
greeting

Greeting message to guide the requester to sign into the queue at the
designated check-in monitor.

Closed
message

Message to inform the requesters that the location is closed as it is outside
the hours of operation.

Closed
phone
number

Contact phone number for requesters to reach out to, when the location is
closed.

Closed
phone
number
label

Label defined for the contact information. For example, IT Support,
Customer Support, or HR Support.

Closed
record
producer

Mode of reaching out to the service providers when the location is closed. For
example, if the option is set to Create Incident, the requesters are redirected
to create incidents.

Badge
Check-in
Reason

Reason for checking into a walk-up location. This field is automatically set to
Other.

Badge
Checkin reason
description

Description of the reason for checking in. This field is automatically set to
Walk-up badge scan check-in.

Closed
image

Picture or an image indicating that the walk-up location is closed. The image is
displayed on the on-site display monitor.

Maximum
search
results

Number of search results to provide for contextual searches.

Contextual
search
config

Context that the requesters use while checking in or booking an appointment.

Note: Badge scan check-in is not an authentication mechanism.

Note: Badge scan check-in is not an authentication mechanism.

Appointment Option to set the type of appointment the requesters can book for the
type
location. The following options are available.
◦ In-person
◦ Remote
◦ Both
Enable
Option to allow requesters who do not have a user name in the system to
unregistered check into the location for support. For example, such requesters can be nonuser entry
employees who are guests visiting the location.
Enable
lookup user
entry

Option to enable requesters to quickly see their names on the list when they
start typing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2147


<!-- page 2148 -->
Fields

Description

Enable
technician
info

Option to display the names of the agents on the monitor at the location.

Enable
technician
avatar

Option to display the avatar of the agent on the wall monitor at the location.

Enable
badge
check-in
notification

Option to show a notification when a requester checks into a queue using a
badge scanner.

Header logo

Option to add a header logo. The header logo is location-specific. If no logo is
specified, by default, the Walk-up Portal logo is used.

Queue logo

Option to add a logo for the designated on-site display monitor. Design this
logo to work with a black background. If no logo is specified for the queue,
then the Header logo is used by default. If no Header logo is specified, the
Walk-up Portal logo is used.

6. Right-click in the form header and select Save.
The following tabs appear:
◦ Interactions: View interactions or configure how the walk-up interactions list is displayed.
◦ Walk-up Appointments: View appointments or configure how the Walk-up appointments list
is displayed.
◦ Reasons for Visit: View, modify, or create a reason for visit.

Note: For configuring variable time slots feature in Walk-up Experience, you must use
this tab for mapping the advance configurations with the service configuration rule. For
more information, see Configure variable time slots for appointment booking.
◦ Walk-up Location Kiosks: Modify or create a kiosk for the location.
◦ Assignment Eligibility: View, modify, or create an assignment rule for your walk-up locations.
Assignment rules are configured in the Advanced Work Assignment application.
◦ Work Item Sort Order: View, modify, or create a work order for your walk-up locations.
◦ Location Queues Badge Readers: View, modify, or add a badge reader for your walk-up
locations.
7. To save the new or modified walk-up location, Select Update.

Walk-up Experience kiosk
Walk-up Experience kiosks help your requesters to resolve information technology (IT)-related
issues and access various IT services and resources in your organization.
As an administrator, you can activate kiosks at walk-up locations and customize them to support
the IT-related requests from your requesters. For example, you can assign one kiosk to refresh
the requester's laptops and another kiosk to supply computer devices. For more information, see
Create a kiosk at a location.
The requesters can use desktop or mobile devices to make an appointment or to join the
queue. For more information on using the mobile device to make an appointment, see Walk-up
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2148


<!-- page 2149 -->
Experience on Now Mobile. Based on the requester's service requirement, they are directed to a
designated kiosk. The requester can then check their queue number on the kiosk screen as well
as on their desktop or mobile device.
The available agents at a kiosk can assign interactions to themselves or leverage skill-based
routing to direct requesters to the designated kiosk for assistance. For more information about
skill-based routing, see Configure skill-based routing in Walk-up Experience. However, the agents
must check into a kiosk from the service operation workspace (SOW) to support the interactions.
An agent can check into only one kiosk at a time. If an agent tries to check into another kiosk,
that agent is automatically checked out of the previous kiosk.
Requesters can view the kiosk queue on their desktop or mobile device screens and then
proceed to access the necessary services. For example, if a requester must refresh the laptop,
they are led to the kiosk dedicated to laptop refresh.
The following example shows a typical kiosk queue for a Tech Lounge within an

organization.
Create a kiosk at a location
Walk-up Experience kiosks offer immediate assistance to the requesters by supporting them with
technical issues, questions, or requests. The requesters can receive on-the-spot guidance or
resolution for their IT-related problems.

Before you begin

Role required: admin

About this task

A kiosk refers to a platform specifically catering to a particular service that you have to offer to
the requesters. The kiosks are an efficient way to offer services to the requesters to resolve their
issues.
You can set up multiple kiosks at a walk-up location depending on various business processes.
For example, financial organizations, hospitals, and IT companies can use kiosks as an alias to
agents.

Procedure
1. Navigate to All > Walk-up Experience > Administration > Walk-up Locations.
2. Select a location from the list of Walk-up locations for which you want to create or add a kiosk.
3. On the Walk-up Location Kiosks related list, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2149


<!-- page 2150 -->
4. On the Walk-up Location Kiosk form, fill in the fields.
Walk-up Location Kiosk
Field

Description

Name

Unique name of the kiosk.

Description Details describing the services provided at the kiosk.
Active
Location
queue

Option to make the kiosk active for the location.
Location where you want to create a kiosk. The field is automatically populated
with the current location. You can create the kiosk for another location by
selecting different locations from the look-up list.

5. Select Submit.

Configure skill-based routing in Walk-up Experience
Route work items to assigned groups. Use skill-based routing to ensure that the right work goes
to the right agent depending on the walk-up reasons.
Identify skills for a specific set of conditions defined for walk-up reasons. Use business rules to
automatically add the skills to those types of work items. In the Walk-up Experience application,
the work items get automatically assigned to the right agents based on the skills.
• When a new walk-up interaction is opened trough the check-in portal or booking an
appointment, Advanced Work Assignment routes the interactions to agents who have the skill
set required to address the reason for interaction.
• The administrators must activate Skill determination for interaction BR on interaction table for
Advanced Work Assignment to route interactions based on the agent's skills.
• New interactions opened after the set up are routed to the available agent with the respective
skills.
• If an agent is unavailable and the interaction does not need any mandatory skills, the walk-up
task is routed based on the assignment rule associated with the location.
For more information, see Skills Management
Route walk-up tasks to skilled agents
Use business rules to automatically route walk-up tasks to the agents based on their skill set.

Before you begin

Set up metadata in All Skills, Group Skills, and User Skillstables before configuring walk-up
locations for skill-based routing. For more information, Configuring Skills Management .
Role required: admin

Procedure
1. Navigate to All > Walk-up Experience > Administration > Walk-up Locations.
2. Select the location to add skills of the agents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2150


<!-- page 2151 -->
3. In the related list, select Reasons for Visit.
4. Select a reason to associate the skills.
5. On the Walk-up Skills for Reasons related list, select New.
6. On the form, fill in the fields.
Walk-up Skills
Fields

Description

Active

Option to make the skill active.

Skill

Skill required for the selected walk-up reason.

Mandatory Option to make the skill mandatory. If the skill is set as mandatory, the walk-up
task will not be routed to any agent who does not have that particular skill.
Walk-up
Reason

Reason for which a requester needs help.

7. Select Submit

Create or modify Walk-up Experience notifications
Create and use Walk-up Experience notifications to keep requesters informed of queue events
that concern them. The system can notify users by email, SMS text message, or push notification
to a mobile device.

Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

Walk-up Experience includes several base-system notifications that you can use or customize to
notify walk-up requesters about specific information and interactions, including:
Walk-up Experience notifications
Notification

Description

Walk-up Abandoned

Notifies when a walk-up interaction is closed.

Walk-up Threshold
Notification

Notifies visitors when they are close to being next in line for
support.

Walk-up Assigned

Notifies when an interaction is assigned to a technician.

Walk-up Closed

Notifies when a walk-up location is closed.

Procedure
1. To view Walk-up Experience notifications, navigate to Walk-up Experience > Administration >
Notifications.
2. Click an available walk-up notification to view basic properties, as well as information about
when to send it, who will receive it, and what the notification will contain.
3. To modify a walk-up notification, edit any of the form fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2151


<!-- page 2152 -->
4. To create a new walk-up email or push notification, click New and refer to Create an email
notification
or Create a push message
.
For complete information regarding using the System Notification application, refer to
Notifications
.

Configure Walk-up Experience customer satisfaction surveys
With Walk-up Experience surveys, requesters can rate their satisfaction with walk-up location
interactions and provide feedback to improve the Walk-up Experience application.
Two base-system predefined Walk-up Experience surveys are provided:
• Walk-up CSAT survey: On-site one-click sentiment-analysis survey where the requester can
quickly rate the service based on a 1 to 3 scale, where 1 is a negative experience and 3 is a
positive experience. The survey uses an image scale of three faces with different sentiments
(sad, neutral, and smiling).
Walk-up survey

• Walk-up Experience Satisfaction Survey: A survey link is sent via email when walk-up
interactions are closed. It uses sentiment analysis for the overall experience, wait-time
experience, agent experience, agent professionalism, and additional comments. This survey is
based on a 1 to 5 numeric rating scale, where 1 is very unsatisfied and 5 is very satisfied.
Walk-up administrators and managers can modify these surveys and the associated trigger
conditions. Managers and administrators can review responses by question and see a scorecard
for each survey on the Walk-up Experience Dashboard module. Requester feedback is used to
improve the performance of walk-up interactions.
For more information about working with surveys, sentiment analysis, trigger conditions, and
survey questions, see Assessments and Surveys .
Create or modify a Walk-up Experience customer satisfaction survey
Improve your Walk-up Experience operations and customer service by using surveys and
monitoring survey results. Walk-up surveys capture important information from users about the
interaction experience provided to them at the venue.

Before you begin

Role required: sn_walkup.walkup_admin, sn_walkup.walkup_manager, or admin

About this task

Creating a new customer satisfaction survey requires that you first define a new survey and then
use the Survey Designer to design, configure, and make it available to the requesters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2152


<!-- page 2153 -->
Procedure
1. To view and use a base-system predefined survey in the Walk-up Experience application,
navigate to Walk-up Experience > Administration > Surveys.
2. To modify an existing walk-up survey, click the survey name, otherwise navigate to Survey >
View Surveys and click New to define a new survey if none of the base-system surveys are
optimal for your walk-up location.
3. To modify or complete the form, refer to Modify a survey definition

.

Remove a Walk-up Experience location
If you permanently close down a physical Walk-up Experience location, you can also remove the
location from the Walk-up Location Queues table.

Before you begin

Role required: sn_walkup.walkup_admin or admin

Procedure
1. Navigate to All > > Administration > Walk-up Locations.
2. Click the name of the walk-up location you want to remove to open the location queue record.
3. Click Delete in the form header.
A confirmation pop-up appears ensuring you want to delete the record.
4. When the confirmation pop-up asks if you want to delete the record, click Delete.
The Walk-up Experience location queue is removed from the application.

Integrate Microsoft Office 365 calendar with Walk-up Experience
With Microsoft Office 365 calendar integration, Walk-up Experience users can view
appointments in their primary calendar. When they make an appointment, modify it, or cancel it,
they are sent invites and updates via their Outlook calendar.
This feature is only available when Microsoft Office 365 Outlook is the hosted calendar service.
Administrators enable the flows that execute the integration using Workflow Studio. Other
prerequisites include:
• Microsoft Entra ID and the Microsoft Office 365 tenant exists and is configured.
• Associated connections and credentials are setup and tested.

Note: These prerequisites are assumed already in place at your business.
Set up Microsoft Office 365 integration for Walk-up Experience
Enable Walk-up Experience Microsoft Office 365 calendar integration. When requesters make an
appointment, modify it, or cancel it, the Outlook calendar is sent invites to an appointment and
any updates.

Before you begin
Logging into the Microsoft Azure Portal (https://portal.azure.com ) with your specific customer
account is necessary. You will already have a tenant, as logging into the portal requires access to
this tenant. For details about setting up a tenant, refer to Quickstart: Set up a tenant .
Also required is that you have a Microsoft Office 365 subscription linked to an existing tenant.
For details regarding this, refer to Set up a Microsoft 365 developer subscription .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2153


<!-- page 2154 -->
See the required permissions for Microsoft Azure client setup at Set up Microsoft Exchange
Online spoke
Set up Microsoft Exchange Online spoke .
Virtual Agent Academy: Get service faster with Virtual Agent and Walk-Up Experience
from the Virtual Agent Academy)

(video

Role required: admin

Procedure
1. Confirm that the Walk-up Experience (com.snc.walkup), Microsoft Exchange Online Spoke
(sn_ex_online_spke), and Microsoft Exchange Server Spoke (sn_exchange_spoke) plugins are
activated on your instance.
2. Navigate to System Oauth > Application Registry > Microsoft Exchange Online to set up
Oauth.
a. Insert the client ID (Application ID), which you can get from the Microsoft Entra ID
application.
b. Insert the client secret, which you can get from the Microsoft Entra ID application.
c. Copy and paste the following links to access authorization, token, and redirect:
▪ Authorization url: https://login.microsoftonline.com/<tenant-ID>/oauth2/v2.0/authorize
▪ Token url: https://login.microsoftonline.com/<tenant-ID>/oauth2/v2.0/token
▪ Redirect url: https://<instance-name>.service-now.com/oauth_redirect.do
3. Navigate to Connections & Credentials > Credentials to set up credentials.
a. Click New.
b. Choose OAuth 2.0 Credentials.
c. In the OAuth 2.0 Credentials new record provide a name for the Credential and in the OAuth
Entity Profile form field, choose Microsoft Exchange Online default_profile.
d. Click Save.
e. Select Get OAuth Token in the Related Links section of the form.
f. Sign in as a valid user on the Microsoft Exchange Tenant.
4. Navigate to Connections and Credentials Aliases to set up connection.
a. Select Microsoft Exchange Online.
b. In the Connections Related Links, click New.
c. Name the connection Exchange_Online_Connection and choose the previously
created credential in the Credential form field.
d. In the Connection URL field, enter: https://graph.microsoft.com.
5. Navigate to Flow Designer to enable flows.
a. Select Create Walk-up Appointment Calendar Event, open in Workflow Studio, and
activate.
b. Select Update/Delete Walk-up Appointment Calendar Event, open in Workflow Studio, and
activate.
6. Schedule an appointment to confirm everything is working properly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2154


<!-- page 2155 -->
a. Create a new test user in the system.
Refer to Create a user
for details.

Note: Provide a user ID, first name, last name, password and email for the test user.
b. Impersonate the test user in your instance.
c. Navigate to Self-Service > Service Portal > Walk-up Check-in to schedule an appointment.

Note: The Walk-up Check-in icon link must be configured to appear on the Service
Portal landing page for you to see and click the link. Refer to Configure Walk-up
Experience online check-in icon to appear on Service Portal if the link is not on the
Service Portal landing page.
d. Schedule an appointment as the test user.
7. Verify everything is working correctly by navigating to Flow Designer > Today's Executions.
8. Click Create Walk-up Appointment Calendar Event.
9. Check the test user's corporate Microsoft Office 365 calendar to see the emailed calendar
event.

Note: It can take a minute or two before the calendar event is created. After you enable
this feature, users automatically receive calendar invites, updates, and cancellations on
their individual corporate calendars.
Register an application using the Microsoft Azure portal
Grant authorization to the ServiceNow instance by registering an application with Azure AD.

Before you begin

Role required: Azure Active Directory admin

About this task

Complete these steps from the Microsoft Azure portal. For instructions on registering an
application, see the Microsoft Azure documentation .

Procedure
1. In the Microsoft Azure portal, add the Redirect URIs in this format: https://<instancename>.service-now.com/oauth_redirect.do
2. For the Required Permissions, select Microsoft Graph.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2155


<!-- page 2156 -->
3. Record the Client Secret for use in later configurations.

Result

The ServiceNow application is created with Microsoft Azure AD.
Register Microsoft Exchange Online as the OAuth provider
Register Microsoft Exchange Online as the OAuth provider so that your Walk-up Experience
instance can request OAuth 2.0 tokens.

Before you begin

Role required: admin

About this task

Use the information generated during the registration of the application in the Microsoft Azure
portal.

Procedure
1. Navigate to All > System OAuth > Application Registry.
2. Open the record Microsoft Exchange Online.
3. On the form, fill in the fields.
Application Registries form
Field

Description

Name

Name to identify the record. For example, Microsoft Exchange
Online.

Client ID

Application ID created during application registration.

Client Secret

Client secret created during application registration.

OAuth API
Script

Optional script to customize the request and response.

Logo URL

URL that contains an image to use as the application logo.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2156


<!-- page 2157 -->
Field

Description

Default Grant
Type

Grant type used to establish the token. Select Authorization Code.

Refresh Token Time, in seconds, that the refresh token is valid. The default time is
Lifespan
8,640,0000 seconds.
PKCE required Option to enable public clients to require PKCE for an authorization.

Note: You can use only Authorization Code as the Default Grant type
when PKCE is enabled.
Application

Application scope that contains this record.

Accessible
from

Application scope that this registry is accessible from.

Active

Option to use the application registry.

Authorization
URL

OAuth authorization code endpoint. Enter https://
login.microsoftonline.com/<Directory-ID>/oauth2/
v2.0/authorize

Token URL

OAuth server token endpoint. Enter https://
login.microsoftonline.com/<Directory-ID>/oauth2/
v2.0/token

Token
Revocation
URL

OAuth server token revocation endpoint.

Redirect URL

OAuth callback endpoint. Enter https://<instancename>.service-now.com/oauth_redirect.do

Use mutual
Option to use mutual authentication for token request and revocation. This
authentication option requires a mutual authentication profile to be specified.
Send
Credentials

Client credentials in the request.

4. Select and hold (or right-click) the form header, and click Save.
A system-generated OAuth entity profile is created and displayed in the OAuth Entity Profiles
related list. For example, Microsoft Exchange Online default_profile.
5. Navigate to System OAuth > Application Registry.
6. Open the record Microsoft Exchange Online_clientCredentials.
7. On the form, fill in the fields.
Application Registries form
Field

Description

Client ID

Application ID created during application registration.

Client Secret

Client secret created during application registration.

Default Grant Type

Grant type used to establish the token. Select Client
Credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2157


<!-- page 2158 -->
Field

Description

Token URL

OAuth server token endpoint. Enter https://
login.microsoftonline.com/<Directory-ID>/
oauth2/v2.0/token

Redirect URL

OAuth callback endpoint. Enter https://<instancename>.service-now.com/oauth_redirect.do

8. Right-click the form header, and click Save.
A system-generated OAuth entity profile is created and displayed in the OAuth Entity Profiles
related list. For example, Microsoft Exchange Online_clientCredentials
default_profile.
Create credential records for the Microsoft Exchange Online spoke
Authorize the Microsoft Exchange Online spoke actions by creating credential records for the
application registered in the Microsoft Azure portal. The Microsoft Exchange Online connection
and credential alias uses these credentials to authorize actions.

Before you begin

Role required: admin.

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
The system displays the message, What type of Credentials would you like
to create?
3. Select OAuth 2.0 Credentials.
4. On the form, fill in the fields.
OAuth 2.0 Credentials form
Field

Description

Name

Name to identify the record. For example, Exchange_Online_Credentials.

Active

Option to use the credential record.

OAuth
Entity
Profile

OAuth profile created during the registration of Microsoft Exchange Online spoke
as an OAuth provider with Default Grant Type as Authorization Code. For example,
Microsoft Exchange Online.

Applies MID Servers that can use this credential. For example, select All MID Servers.
to
Order

Order that the credentials are used. For example, enter 100.

5. Right-click the form header and click Save.
6. To generate the OAuth token, click the Get OAuth Token related link.
7. Navigate to Connections & Credentials > Credentials.
8. Click New.
The system displays the message, What type of Credentials would you like
to create?
9. Select OAuth 2.0 Credentials.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2158


<!-- page 2159 -->
10. On the form, fill in the fields.
OAuth 2.0 Credentials form
Field

Description

Name

Name to identify the record. For example,
Exchange_Online_Credentials_clientCred.

Active

Option to use the credential record.

OAuth
Entity
Profile

OAuth profile created during the registration of Microsoft Exchange Online
spoke as an OAuth provider with Default Grant Type as Client Credentials.
For example, Microsoft Exchange Online_clientCredentials
default_profile.

Applies MID Servers that can use this credential. For example, select All MID Servers.
to
Order

Order that the credentials are used. For example, enter 100.

11. Right-click the form header and click Save.
12. To generate the OAuth token, click the Get OAuth Token related link.

Result

The credential records for the Microsoft Exchange Online spoke are created.
Create connection records for the Microsoft Exchange Online spoke
Perform actions in Microsoft Exchange Online by creating connection records for your Microsoft
Exchange Online account. The Microsoft Exchange Online spoke connection and credential
alias uses these connections to perform actions.

Before you begin

Role required: admin.

Procedure
1. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
2. Open the record, Microsoft_Exchange_Online.
3. In the Connections related list, click New.
4. On the form, fill in the fields.
HTTP(s) Connection form
Field

Description

Name

Name to uniquely identify the record. For example,
Exchange_Online_Connection.

Credential

Credential record created for Microsoft Exchange Online. For example,
Exchange_Online_Credentials.

Connection Alias record associated with this connection.
alias
URL builder

Note: Do not select the check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2159


<!-- page 2160 -->
Field

Description

Connection Connection URL. Enter https://graph.microsoft.com.
URL
Use MID
server

Option to use a MID Server. If the check box is selected, define the fields in the
Advanced MID Server Configuration related list.

Active

Option to actively use the connection.

Domain

Domain that the action or activity runs in.

5. Click Update.
6. Navigate to Connections & Credentials > Connection & Credential Aliases.
7. Open the record, Microsoft_Exchange_Online_clientCred.
8. In the Connections related list, click New.
9. On the form, fill in the fields.
HTTP(s) Connection form
Field

Description

Name

Name to uniquely identify the record. For example,
Exchange_Online_Connection_clientCred.

Credential

Credential record created for Microsoft Exchange Online. For example,
Exchange_Online_Credentials_clientCred.

Connection Alias record associated with this connection.
alias
URL builder

Note: Do not select the check box.

Connection Connection URL. Enter https://graph.microsoft.com.
URL
Use MID
server

Option to use a MID Server. If the check box is selected, define the fields in the
Advanced MID Server Configuration related list.

Active

Option to actively use the connection.

Domain

Domain that the action or activity runs in.

10. Click Update.

Result

The Microsoft Exchange Online spoke is set up and integrated with the Walk-up Experience
instance.

Badge Reader Integration for Walk-up Experience
Improve Walk-up Experience user satisfaction by using the Badge Reader Integration application
at your on-site walk-up queue locations. Walk-up Experience users can scan an employee badge
to check in to a queue, rather than entering credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2160


<!-- page 2161 -->
Badge Reader Integration for Walk-up Experience on-site queue locations
Badge Reader Integration is a pre-built, domain-separated, base-system application. The
application enables your Walk-up Experience users to simply scan an employee badge to join
an on-site walk-up queue. Scanning a badge eliminates the need for users to look up a name or
email to join a queue. Administrators can easily configure the badge scanning integration for use
with Walk-up Experience.
By providing an enhanced, easier, and faster Walk-up Experience check-in process, the use of
on-site walk-up location queues can increase and overall user satisfaction can improve. Users
receive an on-screen confirmation and an audio alert after a successful check-in to a walk-up
queue.
The Badge scanning integration requires activation of the Badge Reader Integration plugin
(com.snc.badge_reader). The plugin enables applications, such as Walk-up Experience, to
integrate with badge reader hardware. Badge Reader Integration administration requires the
Badge Admin role (sn_badge.badge_admin).

Note: Badge Reader Integration is not an authentication mechanism.
Walk-up Experience Badge Reader Integration components
The badge reader hardware and integration client are physically located at a walk-up queue
location. The Badge Reader Integration application provides a generic, reusable REST API
used by the badge integration clients. Walk-up Experience uses the Badge Reader Integration
application as a soft dependency.
Walk-up Experience implementers install the badge reader hardware on a new computer at
each on-site walk-up queue location. The hardware replaces any existing tablets used for on-site
check-in.
The following are important associated components.
Associated components in badge reader
Component

Description

Badge number

Employee badge number.

Facility code

Unique facility or site code encoded into each
card that identifies the organization.

Human Interface Device (HID)

Protocol for interfacing with user interface
devices via USB.

Physical Access Control Services (PACS)

Method used to protect the security of a
physical environment by setting authorization
and authentication rules.

Badge reader client

Client for the badge reader. Acceptable
platforms include macOS and Linux.

Badge reader plugin

The Badge Reader Integration plugin
(com.snc.badge_reader) is at no additional
cost.

Badge Reader Integration modules
Badge admins can access several application modules.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2161


<!-- page 2162 -->
Module

Description

Downloads

Badge Reader Integration client for download
to your system.

Badge Readers

Configuration module for defining and
activating your badge reader devices.

Badge Event Handlers

Configuration module for defining what action
to take when a badge is scanned by a badge
reader device.
The script entered is the code executed when
a badge is scanned.
These records are typically delivered as part
of the application-specific badge reader
integrations.

User Badges

Configuration module for associating users
with user badges.
Configuration requires associating a sys_user
with a unique badge number and facility code.

Badge Scan Logs
User Badge Configuration

View-only module to monitor badge reader
error events.
Configuration module for defining the table
from where the user ID and badge ID mapping
information is retrieved.

Badge Reader Integration security
The Badge Reader Integration application is not an authentication mechanism. It provides a
quicker, more convenient way for users to check into a walk-up queue. It is meant for use within
the existing security perimeter at the facility. The application does not integrate with existing
access control software at the facility.

Badge Scanner Integration scan logs
You can view the Badge Scanner Integration scan logs and fix the errors to connect to the badge
reader. For more information, see View Badge Scanner Integration scan logs.
Activate Badge Reader Integration
You can activate the Badge Reader Integration plugin (com.snc.badge_reader) if you have the
Badge sn_badge.badge_admin role.

Before you begin

Role required: sn_badge.badge_admin

About this task

The Badge Reader Integration application is a framework enabling other applications, such as
Walk-up Experience, to integrate with badge reader hardware. Administrators configure and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2162


<!-- page 2163 -->
manage badge reader clients and integrations by linking badge scanners to walk-up locations
and ensuring there is mapping between badge ID numbers and the reader.
Developers can extend the badge scanning framework to trigger actions in other applications
based on a badge scan event. The Badge Reader Integration application does not require
customization, but is customizable to respond to unique badge system hardware.

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
Installed with Badge Reader Integration
Several types of components are installed with activation of the Badge Reader Integration plugin,
including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.
Roles installed
Role title [name]

Description

Contains roles

Badge admin

Used to administer badge
reader integrations.

None

[sn_badge.badge_admin]

Tables installed
Table

Description

User Badge

Record used to configure a user badge,
associating a user to a badge number and
facility code.

[sn_badge_user_badge]
Badge Event Handler
[sn_badge_event_handler]

Record used to configure actions associated
with a badge scan event. Stores an event
handler script that can be mapped to a badge
reader.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2163


<!-- page 2164 -->
Tables installed (continued)
Table

Description

Extends the Application File table.
Badge Scan Log
[sn_badge_scan_log]
Badge Reader
[sn_badge_badge_reader]

Record used to log all badge reader error
events.

Record used to configure badge reader
devices.
Extends the Task table.

Walk-up Experience Badge Reader Integration setup and configuration
Badge Reader Integration set up and configuration enables your on-site Walk-up Experience
users to scan a badge to quickly check into the queue.
The Walk-up Experience (com.snc.walkup) and Badge Reader Integration
(com.snc.badge_reader) plugins must be activated before you set up and configure the
integration. Refer to Activate Walk-up Experience and Activate Badge Reader Integration for
details regarding activation.
Badge Reader Integration is automatically activated with Walk-up Experience via a conditional
plugin.
Set up and configuration entails the following stages:
• Client software: Create your own custom badge reader client software to integrate with the
badge reader.
• Badge reader device: Configure the badge reader device and register it manually or via an
assisted process.
• Approval: Request and receiving device activation approval.
• Walk-up Experience application: Configure Walk-up Experience to integrate with a badge
reader device.
Create or modify Badge Reader Integration event handlers
Configure actions associated with a badge scan event and define the code to execute when a
badge is scanned.

Before you begin

Role required: sn_badge.badge_admin

About this task

Using the Badge Event Handlers module you can map badge event handlers to multiple badge
readers. For example, you may have a badge reader at your San Diego, CA walk-up location and
another badge reader at your Santa Clara, CA location. Both of these badge readers can be
mapped to the same Walk-up Badge Reader event.
Badge Event Handler records are delivered as part of the Walk-up Experience applicationspecific badge reader integrations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2164


<!-- page 2165 -->
Note:
The code entered in the Script field of the Badge Event Handler form is executed using a
GlideScopedEvaluator in the BadgeScanProcessor.

Procedure
1. Navigate to All > Badge Reader Integration > Badge Event Handlers.
The Badge Event Handlers list appears and displays any existing badge event handlers.
2. To modify an existing badge event handler, click on the name.
Otherwise, to create a new badge event handler, click New.
3. Enter a name for the badge event handler in the Name field.
For example, Walk-up Badge Event.
4. Enter details in the Short description field, if desired.
5. Enter code after // your code goes here in the Script field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2165


<!-- page 2166 -->
Note: The Application field is set to Global until you enter the code specifying Walk-up
Experience application in the Script field and save or submit the record.
6. Click Submit to create the record.
Define and register a badge reader device using the badge reader client
Use the Badge Reader Client to create a badge reader device for registration in your system.
Registering your badge reader enables you to make it operational at your Walk-up Experience
on-site queue.

Before you begin

Role required: sn_badge.badge_admin

About this task

There are two ways to register a badge reader device:
• Assisted method, through the Badge Reader Client. You must create your own custom badge
reader client software to integrate with the badge reader.
®

• Manually, through the ServiceNow AI Platform . Refer to Define and register a badge reader
device manually for details on this procedure.
The Badge Reader Client assisted registration method creates an initial Badge Reader record.
When a badge is scanned using the badge reader client, this method automatically populates
the Device Identifier field in the record with the badge reader device serial number.
Automatic population of the Device Identifier field saves you time from looking for the badge
reader device serial number to add to the Badge Reader record.
To register your badge reader device with Badge Reader Client assistance, first you need to
configure system properties to enable badge scan registration and disable the badge access
token. The following System Properties must be configured:
• sn_badge.enable_scan_registration: Disabled by default. When set to True, this property
enables n_badge.badge_admins to quickly register badge reader devices by scanning a
badge.
• sn_badge.disable_access_token: Enabled by default. This property disables the access token
requirement for the Badge Reader Integration API.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search by Name for the properties by typing sn_badge.
3. Click sn_badge.enable_scan_registration to open the system property record.
The property is set to False by default.
4. Change the property Value field to True and click Update.
5. Click sn_badge.disable_access_token to open the system property record.
The property is set to False by default.
6. Change the property Value field to True and click Update.
7. Create and then run your own badge reader client.
8. Swipe the badge admin's badge on the badge reader to register.
9. The badge reader client performs a REST API call to api/sn_badge/v1/reader/scan with the
device identifier and the card data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2166


<!-- page 2167 -->
10. Navigate to Badge Reader Integration > Badge Readers to view the newly created record.
11. Provide a name for the badge reader in the Name field.
For example, Building B Tech Lounge Badge Reader.

Note: The Status field is read only and indicates New when configuring a new badge

reader. The field indicates Activated when a badge reader is approved for activation. If a
badge reader is deactivated, the field indicates Deactivated.
12. Specify a Badge Event Handler using the search list

icon.

Note: If no badge event handlers are available to select, create a new Badge Event
Handler record. For details about this process, refer to Create or modify Badge Reader
Integration event handlers.
13. Verify that the Device Identifier and Secret Key fields are populated.
The Device Identifier uniquely identifies the badge reader hardware. The client defaults to
using the badge reader device serial number. The value entered must match the device serial
number received from the client software application.
14. Populate the non-mandatory Short description and Location form fields if desired.
15. Select Submit to register the badge reader.
Define and register a badge reader device manually
Manually create a badge reader device for registration in your system. Registering your badge
reader enables you to make it operational at your Walk-up Experience on-site queue.

Before you begin

Role required: sn_badge.badge_admin

About this task

There are two ways to define and register a badge reader device:
®

• Manually through the ServiceNow AI Platform .
• As an assisted method through the Badge Reader Client. Refer to Define and register a badge
reader device using the badge reader client for details on this procedure.

Procedure
1. To manually register your badge reader device, navigate to Badge Reader Integration > Badge
Readers.
2. Click New.
3. In the Name field, specify a name for the badge reader.
For example, Building B Tech Lounge Badge Reader.

Note: The Status field is read-only. This field is set to New when configuring a new
badge reader. The field is in the Activated state when a badge reader is approved for
activation. If a badge reader is deactivated, the field is set to Deactivated.
4. Select a Badge Event Handler.

Note: If no badge event handlers are available to select, create a new Badge Event
Handler record. For details about this process, refer to Create or modify Badge Reader
Integration event handlers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2167


<!-- page 2168 -->
5. Specify the Device Identifier.
The Device Identifier uniquely identifies the badge reader hardware. The client defaults to
using the badge reader device serial number. The value entered must match the device serial
number received from the client software application.

Note: The Secret Key field is automatically populated when you create the badge
reader record.
6. Select User Badge Configuration.
The badge reader uses this mapping configuration to retrieve the user ID from the badge ID
when the requester scans their badge to check in to a location.

Note: By default, a user badge configuration is available to select. For more information
on defining a new user badge configuration, see Define a user badge configuration.
7. Optional: Specify the non-mandatory Short description and Location form fields if desired.
8. Register the badge reader by selecting Submit.
Define a user badge configuration
Define the table from where the user ID and Badge ID mapping information is retrieved.

Before you begin

Role required: badge_admin

About this task

The user ID and badge ID mapping configuration is used to retrieve the user ID of the user from
the badge ID when requesters scan their badges to the badge reader for check-in into a location.
You can define multiple configurations for mapping.

Procedure
1. Navigate to All > Badge Reader Integration > User Badge Configuration.
2. Click New.
3. On the form, fill in the fields.
User Badge Configuration form
Field

Description

Name

Name of the configuration.

Table Name

The table that has the mapping information
on the user ID and badge ID. Select this table
from the list.

User Field

User ID of the requester.

Badge Field

The entity to which the user badge is linked.
Select this entity from the list.

Facility Code Field

Unique facility or site code that is encoded
into each card. The code identifies the
organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2168


<!-- page 2169 -->
Field

Description

Active

Option to activate the configuration. This
option is selected by default.

4. Click Submit.

Result

The mapping configuration is created. You can select this mapping configuration in the Badge
Reader form to retrieve the user ID from the badge ID based on this mapping configuration.
Request activation approval for a badge reader device
Request activation approval for your badge reader device. Badge Reader Integration will not
trigger event handlers until the badge reader is activated. Badge reader device approval and
activation is granted by users with the itil role.

Before you begin

Role required: sn_badge.badge_admin

About this task

When you request activation approval, via the Badge Reader record, you initiate the device
registration flow. Activation requests are routed to a badge reader approvers group. System
approvals require the itil role. Ensure users with the itil role are added to the badge reader
approvers group.
If there are no people in the approval group, the flow will skip past the approval group
requirement, and activate the badge reader. For detailed information about approvals, groups,
and adding users to groups, refer to Approvals
Creating groups
and Add a user to a group

.

Note: Badge Reader record required fields are read only when the badge reader device is
activated. Badge reader devices can be deactivated by de-selecting the Active field on the
Badge Reader record. Reactivation of a badge reader requires going through the approval
process again.

Procedure
1. Navigate to All > Badge Reader Integration > Badge Readers.
2. Select the name of the badge reader you want to activate.
The Badge Reader record opens.
3. Ensure that all mandatory form fields are populated.
The fields included are the Name, Badge Event Handler, Device Identifier, and Secret Key
fields. See Define and register a badge reader device using the badge reader client or Define
and register a badge reader device manually for information regarding populating Badge
Reader form fields.
4. Select Request Activation to initiate the activation approval workflow.
The request is approved by a user with the itil role in the badge reader approvers group. If
there is no badge reader approvers group or the group is empty, then the badge reader is
activated when a user with the sn_badge.badge_admin role requests activation.
Configure Walk-up Experience for Badge Reader Integration
Associate badge reader devices with an on-site Walk-up Experience queue. While you can
associate more than one badge reader device to a walk-up location, individual badge reader
devices are mapped to only one walk-up location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2169


<!-- page 2170 -->
Before you begin

Role required: sn_walkup.walkup_manager

About this task
• The Walk-up Experience application requires that a badge reader device is mapped to a walkup location for feature integration.
• Walk-up Experience managers can configure badge reader integration to a walk-up location
using the Location Queues Badge Readers related list on the Walk-up Location Queue
(wu_location_queue) table.
• At least one badge reader must be activated and available to integrate with the walk-up
location. Refer to Request activation approval for a badge reader device if no badge readers
are activated for use.
• You can define a check-in reason for each badge reader. When the requester checks in a
location using that badge reader, the associated check-in reason is auto populated for the
check-in. If no check-in reason is associated with the badge reader, then the location reason is
considered for the check-in.

Procedure
1. Navigate to All > Walk-up Experience > Administration > Walk-up Locations.
2. Click the name of the walk-up location queue that you want to associate with a badge reader
device.
3. Click the Location Queues Badge Readers related link.
4. Click New.
5. On the form, fill in the fields.
Location Queues Badge Readers form
Field

Description

Badge Reader

Badge reader that you want to associate with
the location.

Location Queue

Location to which the badge reader is
associated.

Check-in reason

Check-in reason that you want to link with the
badge reader.

Check-in reason description

Description of the check-in reason that you
want to link with the badge reader.

6. Select Submit.

Result

You can integrate multiple badge readers with walk-up location.
Customize badge Reader Integration
Badge Reader Integration includes several scripted extension points for you to customize script
includes installed with the feature.
The underlying Badge Reader Integration script includes are read only. Customers who want to
modify the look and feel of the feature can alter several script includes using scripted extension
points.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2170


<!-- page 2171 -->
Various scenarios exist whereby the ability to modify script-includes code is beneficial.
For example, if you already use a data model to store your badge numbers, you may not
want to use the Badge Reader Integration application User Badge (sn_badge_user_badge)
table to store your badge numbers. Instead, you can create an extension implementation for
sn_badge.BadgeReader that supports your data model.
Perhaps you want to customize the types of data you receive from a badge scan or
how you want to parse that data. You can create an extension implementation for
sn_badge.BadgeReaderParser that supports your data model.
The following code is available for alteration using scripted extension points with the Badge
Reader Integration application:

Scripted Extension Points

BadgeReader
API name: sn_badge.BadgeReader

Description

Extension point used by the BadgeReaderImpl
script includes.
Use this script to find a badge reader by its
device identifier.

BadgeReaderParser
API name:

sn_badge.BadgeReaderParser

BadgeReaderUser
API name: sn_badge.BadgeReaderUser

Extension point used by the
BadgeReaderParserImpl script include.
Use this to parse the card data string from the
API.
Extension point used by the
BadgeReaderUserImpl script include.
Use this script to find a sys_user from a badge
number and facility code.

Note: If you already have a data model
for storing your badge numbers, this is
the script to use to override the Badge
Reader Integration application code to
support your data model.
BadgeReaderScanProcessor
API name:

Extension point used by the
BadgeReaderScanProcessor script include.

sn_badge.BadgeReaderScanProcessor

Use this frontage to manage the badge scan
event.

For complete details about scripted extension points and how to create and use them, refer to
Using extension points to extend application functionality
and Creating and adding a scripted
extension point .

Enable Self-Service online check-in for Walk-up Experience
Show or hide the Walk-up Experience online Walk-up Check-in module under Self-Service in
the application navigator. You can enable or disable the module using the basic platform menu
or module enablement process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2171


<!-- page 2172 -->
Before you begin

Role required: sn_walkup.walkup_admin or admin

About this task

The Walk-up Experience online Walk-up Check-in module is disabled (hidden) by default and
does not appear under the Self-Service menu until enabled.

Procedure
1. Navigate to All > System Definition > Application Menus.
2. Click All in the conditions breadcrumbs to display both active and inactive application menus.
This action removes the default filter condition.
3. Search by Title for the Self-Service application menu.
Search yields the itil_self_service and mobile_self_service menu applications. You can enable
(show) the Walk-up Check-in module for each menu application.
4. Click the Self-Service menu application with the Name: itil_self_service.
The application menu Self-Service record opens and the Modules related list shows the
modules that appear in the application navigator.
5. Search by Title for the Walk-up Check-in module.
6. Click Walk-up Check-in.
The Walk-up Check-in module record opens.
7. In the Visibility tab, click Active to enable the Walk-up Check-in module.
Active is true for the module. Alternatively, you can enable the module from the Applications
Menus Self-Service Modules related list:
a. Double-click the Active field beside the Walk-up Check-in module name in the Modules
related list.
b. Set Active to true (show) or false (hide).
8. Click Update.
When you change application menus or modules, the application navigator automatically
refreshes to display the changes.
9. To enable the Walk-up Check-in module to display under Self-Service on the mobile
application, click Walk-up Check-in in the Mobile Modules related list.
10. Click the Active field to enable the module for mobile devices.
11. Click Update.

Configure Walk-up Experience online check-in icon to appear on Service
Portal
Requesters can check into a walk-up location online via the Service Portal. You can edit the
Service Portal Home page to replace the general IT Get Help support icon link with the Walk-up
Experience online check-in support icon link.

Before you begin

Service Portal for Enterprise Service Management (com.glide.service-portal.esm) must be
activated.
Role required: sp_admin or admin

About this task

To replace the Get Help icon link with the Walk-up Check-in icon link on the Service Portal Home
page, access Service Portal Designer. Alternatively, you can add a new container to the Service
Portal for the Walk-up Check-in icon link, so that the Get Help icon link remains.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2172


<!-- page 2173 -->
Service Portal Home page with Get Help icon link

Procedure
1. Navigate to All > Service Portal > Service Portal Configuration.
2. Click the Designer tile on the configuration page.
3. Select the Service Portal index page to edit.
4. Ensure you are in edit mode by verifying that Edit is highlighted as active in the Service Portal
Designer banner.
In edit mode, you can add a new container for the Walk-up Check-in icon link or edit an existing
container, depending on where you want to place the icon link.
5. To edit an existing container, select the Get Help icon link container.
6. Click the edit icon in the upper right corner.
7. Edit the form fields with the following data and presentation details.

Fields

Configuration input

Data
Type

Select Page to embed the walkup_online_checkin page with widget on the
icon link.

Page

Select walkup_online checkin.

Presentation
Title

Enter Walk-up Check-in.

Short
description

Enter details about the icon link, that you want displayed, such as Check in
to an IT walk-up location to make a request or report
a problem.

Bootstrap
color

Select Default.

Bootstrap
class name

Enter a class name or leave this field empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2173


<!-- page 2174 -->
Fields

Configuration input

Glyph

Select a glyph or you can select the empty glyph to bypass this field.

Template

Select Circle Icon.

8. Click Save.
The Service Portal Home page opens in edit mode. The online Walk-up Check-in icon link with
your selected glyph image and description displays in place of the former Get Help icon link.
Service Portal Home page with Walk-up Check-in icon link

9. Navigate to Service Portal > Service Portal Home to verify and test the newly created Walk-up
Check-in icon link.
10. To add the Walk-up Check-in icon link to a new container, refer to Create and edit a page using
the Service Portal Designer .
11. Edit the container form fields with the same data and presentation information as detailed
above in the form configuration input descriptions and follow the remaining relevant steps.

Manage Walk-up Experience queue and interaction
Walk-up Experience managers and agents can efficiently manage all aspects of a walk-up
location queue and interactions. Agents can view assigned walk-up locations, interactions, and
associated stockrooms used for fulfilling the walk-up requests.
Walk-up Experience helps the agents to organize and manage walk-up queues.
Agents primarily access Agent Workspace to manage requests. Using Agent Workspace the
agents can do the following activities.
• Access personal inbox to view work assigned from multiple service channels, including the
Walk-up Service Channel.
• Get assignments automatically pushed to the inbox from the walk-up interaction queue.
• Work on concurrent or multiple interactions at the same time.
• Promote interactions to incidents or requests.
• Work with any requester in the queue at any time by pulling from anywhere in the queue list, as
well as from the top of the list.
• Use Agent Assist to expedite fulfillment.
With Agent Workspace, the agents can fulfill interactions on a first-come-first-served basis as
interactions are pushed to individual walk-up inboxes. Interactions are distributed to walk-up
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2174


<!-- page 2175 -->
agent inboxes based on assignment rule configurations in the Advanced Work Assignment
feature.
The agents can directly open incidents in Agent Workspace when an issue is not resolved at the
walk-up location. Agents can also directly create a request for hardware or software through the
Service Catalog when an asset is not available at the walk-up location stockroom.
Walk-up Experience also includes Agent module in the application navigator where agents
supporting a walk-up location can perform the following actions.
• Access personal walk-up inbox linking directly to Agent Workspace.
• View assigned walk-up interactions.
• Reassign and modify walk-up interactions when necessary.
• View all scheduled and upcoming appointments.
• View walk-up queue locations.
• View available assets and fulfill requests from a local stockroom.
• Create incidents and requests when necessary.
• Transfer walk-up interactions to other agents or queue locations when necessary.
The following applications are included in the Agent module of the Walk-up Experience
navigation bar as well as viewed in the Agent Workspace Walk-up Experience interface:
Walk-up Experience Agent applications
UI view and
application

Description

Platform: My Walkup Inbox

Walk-up interactions assigned to you in on Agent Workspace.
Interactions are pushed to your inbox according to assignment rule
configurations in the Advanced Work Assignment feature.

Agent Workspace:
Inbox
Platform: My Walkup Stockrooms

Stockrooms and assets associated with the walk-up queue locations you
support.

Agent Workspace:
My Stockrooms
Platform: My Walkup Locations

Walk-up locations that you are assigned to.

Agent Workspace:
Walk-up Locations
Platform and Agent
Workspace: My
Assigned Walk-ups
Platform and Agent
Workspace: Open Unassigned

Walk-up interactions you are assigned to resolve or fulfill. These
interactions have a Work in Progress state.

List of all open and unassigned walk-up interactions for your locations.
These interactions have either a New, Queued, or Work in Progress
state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2175


<!-- page 2176 -->
Walk-up Experience Agent applications (continued)
UI view and
application

Platform and Agent
Workspace: Closed
Walk-ups
Platform: Scheduled
Appointments

Description

All closed walk-up interactions. Closed interactions have either a Closed
Complete or Closed Abandoned state.

All upcoming appointments scheduled for your walk-up location.

Agent Workspace:
Appointments
For more information, see Service Operations Workspace and Advanced Work Assignment

.

View Walk-up Experience inbox
View a personal inbox of automatically assigned Walk-up Experience interactions using the
Agent Workspace feature interface.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

There are two ways the agents can view the walk-up inbox. The agents primarily access Agent
Workspace for all Walk-up Experience related information, including the inbox. However the
agents can also access Walk-up Experience in the application navigator, or left navigation bar, to
link to and view the inbox in Agent Workspace.

Procedure
1. To view the walk-up inbox using Agent Workspace, navigate to Workspace Experience > Agent
Workspace Home.
The Agent Workspace homepage opens, greeting you with your name.
2. Click Inbox in the left navigation bar of the interface.
Automatically pushed interaction assignments appear in the inbox based on agent schedules
and assignment rule configurations in the Advanced Work Assignment feature. The agents can
set an inbox status of Available, Away, and Offline.
3. Alternatively, to view the walk-up inbox via the application navigator, navigate to Walk-up
Experience > Technician > My Walk-up Inbox.
You are linked directly to your personal inbox in Agent Workspace. Automatically pushed
interaction assignments appear in the inbox based on agent schedules and assignment rule
configurations in the Advanced Work Assignment feature.
Related topics
Manage automatically assigned Walk-up Experience interactions

View assigned Walk-up Experience locations
Walk-up Experience agents can view a list of the walk-up queues they are assigned to support.
Locations queues reveal all the information an agent needs to know to operate the queue
efficiently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2176


<!-- page 2177 -->
Before you begin

Role required: sn_walkup.walkup_technician

About this task

The agents can view associated walk-up location stockrooms in following ways:
• Through Agent Workspace
• Through navigation menu.

Procedure
1. Navigate to All > Workspace Experience > Agent Workspace Home.
2. Select the List icon from the navigation menu.
3. Under Walk-up, select Walk-up Locations.
4. Select a queue name to view details about the location, such as, interactions, appointments,
reasons for visits, and more.
5. Alternatively, to view walk-up locations through navigation menu, navigate to Walk-up
Experience > Agent > My Walk-up Locations.
6. Select a location from the list to see the details such as, interactions, appointments, and
reasons for visits.
If there are any pending interactions with no associated guests at the queue, select Abandon
All to cancel these interactions.

Manage automatically assigned Walk-up Experience interactions
The agents supporting Walk-up Experience locations can view and manage interactions
automatically pushed to the Agent Workspace inbox.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

Walk-up Experience interactions can be automatically pushed to a personal inbox in Agent
Workspace based on agent schedules and assignment rule configurations in the Advanced
Work Assignment feature. The agents fulfill interactions on a first-come-first-served basis as they
appear in the inbox.
To manually assign and manage interactions using the Walk-up Experience Agent modules found
in the application navigator, refer to Manage Walk-up Experience interactions manually.
The Agents set a status in the Agent Workspace inbox to indicate readiness to accept
interactions. Status choices are Available, Away, and Offline.
Even though interactions are automatically pushed to the walk-up inbox, agents can work with
anyone in the walk-up queue at any time.
View walk-up queue interactions assigned to you automatically in your walk-up inbox or in your
My Assigned Walk-ups list. You can also view all Open - Unassigned interactions for the queue
you support.
With Agent Workspace you can view lists of all your related walk-up interactions and
appointments, your cases, requester accounts and contacts, incidents, requests, and more
using one convenient interface. The Walk-up Experience related interaction list includes the
following items:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2177


<!-- page 2178 -->
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
Unassigned location. When a requester checks into a walk-up queue, an interaction is created.
The interaction is Queued until an agent accepts it or is assigned the interaction.
At that point, the state changes to Work in Progress.
Closed
Walk-ups

All Closed Complete and Closed Abandoned interactions assigned to a specific
walk-up location queue. Agents can abandon an interaction when a guest leaves
the queue before receiving support.

Procedure
1. To begin supporting a walk-up queue requester, navigate to > Workspace Experience > Agent
Workspace Home.
The Agent Workspace homepage opens, greeting you with your name.
2. Click Inbox and ensure your status is set to Available.
View interactions in your inbox automatically pushed to you.
3. Select the interaction at the top of the list and begin resolving the issue or fulfilling the request.
When you create an associated incident or request through the Service Catalog, a New
Incident tab or a New Catalog Item tab opens next to the Details tab of the original interaction.
Fill out the new incident form or order assets. Click Save to save the new incident or complete
the order confirmation. You receive a Request Number for your ordered item.
a. If an interaction requires an unusual amount of time to resolve or if the closure depends on
resources not readily available, you can place the interaction on hold.
The requester does not lose position in the queue and you can help another requester
simultaneously. Placing an interaction on hold does not affect your capacity for new
interactions. To put an interaction on hold, click the Put on Hold button.
b. You can associate the interaction with another record by selecting Associate Record from
the more UI actions icon
in the interaction header.
c. To view the walk-up location stockroom for fulfillment requests, click List in the left
navigation panel of the Agent Workspace interface, then click My Stockrooms.
d. If you cannot resolve an issue, click the Create Incident button in the interaction header.
If you cannot fulfill a request from the stockroom, click the more UI actions icon
in the
interaction header to view more actions. Select Create Request from the list to access the
Service Catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2178


<!-- page 2179 -->
4. When you are finished resolving the interaction, select the Close button in the interaction
header.
Closing an interaction affects your capacity because a new interaction will be pushed to your
inbox.
Related topics
Agent Workspace UI
Service Operations Workspace
Create an incident
Create a request through a catalog

Manage Walk-up Experience interactions manually
Agents supporting walk-up locations can manually manage queue requests with several Walk-up
Experience interaction-related modules.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

Manage interactions manually using the Walk-up Experience Technician modules found in the
application navigator. To manage automatically assigned interactions from the Agent Workspace
inbox, refer to Manage automatically assigned Walk-up Experience interactions.
Walk-up queues support requesters in the order that they check into the queue — first come,
first served. The agents supporting the queue can decide who will work on the first interaction.
As new requesters enter the queue and submit interactions, technicians share the workload,
assigning queued interactions to themselves.
Certain requesters are considered VIPs. The system recognizes this when they check into the
queue. An interaction for a VIP shows true for VIP in the Interactions list. The agents can move
VIP requesters to the front of the queue by assisting them first.

Note:
Creating walk-up type interactions manually is not supported. A walk-up interaction
is considered valid for check-in or appointment only if created via the check-in or
appointment booking interfaces, and not via a table. Agents cannot check-in to a walk-up
location on behalf of an end-user.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2179


<!-- page 2180 -->
Walk-up Experience interaction modules (continued)
Module

Description

Open —
All open but unassigned interactions associated with your specific walk-up queue
Unassigned location. When a requester checks into a walk-up queue, an interaction is created.
The interaction is Queued until an agent accepts it or is assigned the interaction.
At that point, the state changes to Work in Progress.
Closed
Walk-ups

All Closed Complete and Closed Abandoned interactions assigned to a specific
walk-up location queue. Agents can abandon an interaction when a requester
leaves the queue before receiving support.

Procedure
1. Navigate to > Walk-up Experience > > Agent > Opened - Unassigned.
2. Find the requester name under the Opened for column of the Interactions list.
3. Click the interaction Number associated with the requester.
4. Enter your name in the Assigned to field on the form, change the State to Work in Progress,
and select Update.
a. To close an interaction if the requester has left the queue, click Abandon in the form header
or choose Closed Abandoned from the State form field and click Update
b. Alternatively, you can associate the interaction with another record by clicking the Associate
Record button in the interaction header.
5. To resolve the interaction, navigate to Walk-up Experience > Agent > My Assigned Walk-ups.
6. Click the interaction number from the list to open the Walk-up Interaction form.
7. Resolve the issue or fulfill the request.
a. Change the interaction status to On Hold if the requester is not present for an appointment
or if the interaction entails a lengthy process, for example, an OS upgrade.
b. To view the walk-up location stockroom for fulfillment requests, click the Stockroom
Consumables related link.
c. If you cannot resolve the issue or fulfill the request, click either the Create Incident or Create
Request related link to create an incident or access the Service Catalog.
When you create an associated incident or request through the Service Catalog, the
associated related lists on the form populate accordingly. Related lists include the following
details:
◦ Incidents for Interaction: Incidents associated with the interaction
◦ Requests for Interaction: Service Catalog requests associated with the interaction
◦ Incidents by Same Caller: Incidents created for a walk-up requester
◦ Requests by Same Caller: Requests created for a walk-up requester
8. Set the interaction State to Closed Complete and select Update to update the interaction,
when you are finished resolving the interaction.
Alternatively, you can click Close to complete the interaction.
Related topics
Use platform view to fulfill a Walk-up Experience request from a stockroom
Create an incident
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2180


<!-- page 2181 -->
View Walk-up Experience location stockroom and assets
Agent supporting Walk-up Experience locations can view and access stockrooms to provide
commonly requested hardware and software assets for walk-up queue guests. Stockroom
inventory is defined by asset and inventory managers. Walk-up location agents can monitor
inventory and alert asset and inventory managers when additional consumables are needed.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

The agents can view associated walk-up location stockrooms in following ways:
• Through Agent Workspace
• Through navigation menu.

Procedure
1. Navigate to All > Workspace Experience > Agent Workspace Home.
2. Alternatively, to view walk-up locations through the application navigator, navigate to All >
Walk-up Experience > Agent > My Walk-up Stockrooms.
3. From the navigation list, select List.
4. Under Walk-up, select My Stockrooms.
5. Select the name of your stockroom to view details such as the physical address, the group
assigned to the stockroom, and the available assets (hardware, consumables, and software
licenses).
6. Select any of the list tabs to see the available inventory.
For example, you can select Consumables to see a list of all available consumables. The
inventory list tabs include the following.
Option

Description

Hardware

Cables, connectors, batteries, and more.

Consumables

Computer monitors, video equipment,
tablets, laptops, computer mouse, and more.

Software Licenses

Available software programs and tools.

Other Assets

Miscellaneous other assets.

7. Select the name of an available consumable to see the details about the asset, such as
quantity, cost, and expense information.
Related topics
Use platform view to fulfill a Walk-up Experience request from a stockroom
Use platform view to fulfill a Walk-up Experience request from a stockroom
Walk-up Experience agents can access an associated stockroom and fulfill user requests directly
from an interaction in platform view.

Before you begin

Role required: sn_walkup.walkup_technician
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2181


<!-- page 2182 -->
About this task

When a walk-up queue requester requests a consumable, such as a computer monitor or
keyboard, you can quickly fulfill the request by accessing an associated on-site stockroom. Walkup requester can leave the queue with the requested item in hand.

Procedure
1. Navigate to All > > Technician > My Assigned Walk-ups.
The Interaction list opens.
2. Click the interaction Number associated with the request.
3. Select Stockroom Consumables in the Related Links section of the interaction.
The associated Stockroom list opens displaying all available consumables.
4. Select the requested consumable Display name.
5. Select the Consume button.
6. Update the form with the Quantity, Asset, and User information.
7. Select OK.
The Consumable form indicates that an item has been consumed and attached to the
specified user.
8. Retrieve the item from the stockroom and provide it to the requester.
9. Return to the interaction in your My Assigned Walk-ups module to change the State to Closed
Complete and click Update to update the interaction.
Alternatively, you can click Close to complete the interaction.
If you cannot fulfill the request from the associated stockroom, click the Create Request
related link from the interaction form to access the Service Catalog. Refer to Create a request
through a catalog
to order an item for the requester.

Use Agent Assist to expedite Walk-up Experience fulfillment
Walk-up Experience agents can use the Agent Assist feature in Agent Workspace to expedite
incidents and requests.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

Agent Assist is a contextual search option available in Agent Workspace when a walk-up agent
creates a new incident or new case associated with a Walk-up Experience interaction.

Procedure
1. To use Agent Assist navigate to Workspace Experience > Agent Workspace Home.
2. Open a walk-up interaction from your inbox or from My Assigned Walk-ups under Lists that
you know requires an associated new incident or new case.
3. Click the Create Incident or Create Case button.
A new incident or case tab opens next to the details tab for the original associated walk-up
interaction.
to use the feature.
4. Click the agent assist icon
For more detailed information about Agent Assist and using it to expedite incidents and
requests, refer to Using Agent Assist in Agent Workspace
and Order a catalog item using
Agent Assist .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2182


<!-- page 2183 -->
View and manage Walk-up Experience appointments in Agent Workspace
Viewing upcoming scheduled Walk-up Experience appointments provides technicians with an
estimate of future queue demand and workload. Managers can view future appointments and
adjust staffing at walk-up queue locations to best support demand.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

The walk-up agents and managers primarily use Agent Workspace for all Walk-up Experience
related information, including viewing and managing scheduled appointments.

Note: You can also view and manage scheduled appointments from Walk-up Experience
in the application navigator, or left navigation bar.
Appointments are automatically routed to your Agent Workspace inbox based on availability. You
can also view a list of scheduled appointments and choose which one to accept.
Upcoming appointments also display with a small calendar icon next to the user name on the
onsite walk-up location queue wall monitor. The user with an appointment appears on the
monitor a short time before the appointment is scheduled to begin.

Note: Upcoming appointments are also displayed on online check-in screen with the
same calendar icon next to the user name.

Procedure
1. Navigate to All > Workspace Experience > Agent Workspace Home.
The Agent Workspace homepage opens, greeting you with your name.
2. Click List in the left navigation bar.
3. Under Walk-up, click Appointments.
Walk-up appointments assigned to your queue are listed.
4. Click an appointment number to view details, such as the requester name, the interaction
number and description, and the appointment time.
a. To open the associated interaction to view details, click the open record icon
interaction number.

next to the

b. Click Accept appointment to begin working on the interaction.
If necessary, you can assign the appointment to another agent and add work notes.
If a significant time has passed and the requester does not show up for the appointment,
you can delete the appointment by clicking the more UI actions icon
in the interaction
header and selecting Delete.
c. Select Save.
Work on Walk-up interaction
Manage your Walk-up appointments in Agent Workspace.

Before you begin

Role required: sn_walkup.walkup_technician or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2183


<!-- page 2184 -->
Procedure
1. Navigate to All > Workspace Experience > Agent Workspace Home.
2. Select Inbox from the side bar.
3. Set your status as Available.
A Walk-up interaction task is automatically pushed in your inbox, if you do not already have any
walk-up interactions assigned to you.
4. Select Accept.
5. On the details page, select one of the following options.
Option

Description

Abandon

Reject the Walk-up interaction

Accept

Accept the Walk-up interaction

6. If you already have interactions assigned to you, navigate to Lists > Walk-up > My Assigned
Walk-ups.
7. From the Walk-up list, select Location Kiosk.
8. Select a kiosk assigned to the location from the list.
9. On the Walk-up Location Kiosk page, select Check-in.

Note: Walk-up location kiosks are displayed only when the Show kiosk option is
enabled.
10. On the My Assigned Walk-ups page, select the Walk-up interaction assigned to you.
11. After you have fulfilled or resolved the request, set the state of the Walk-up interaction to
Closed Complete.
Create an appointment through incident
Schedule an appointment on behalf of a requester through an incident record.

Before you begin

Role required: itil or admin

Procedure
1. Navigate to All > Workspace Experience > Agent Workspace Home.
2. From the navigation list, select List.
3. Under Incidents, select Open or Assigned to me.
4. Select the incident for which you want to schedule an appointment.
5. On the Details tab, select the More actions icon.
6. From the drop-down list, select the option Book walk-up appointment.
7. In the Walk-up Appointment Booking window, enter the required details to book an
appointment on behalf of the requester.
8. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2184


<!-- page 2185 -->
Result
• A walk-up appointment record is created.
• The Walk-up Appointment tab appears in the related list. The Walk-up Appointment related
list must be added to the platform manually.
• The requester is notified of the appointment. The requester can also see the appointment
created on the home page under the My active items widget.

View and manage Walk-up Experience appointments from application
navigator
Viewing upcoming scheduled Walk-up Experience appointments provides technicians with an
estimate of future queue demand and workload. Managers can view future appointments and
adjust staffing at walk-up queue locations to best support demand.

Before you begin

Role required: sn_walkup.walkup_technician

About this task

Agents and managers can view and manage scheduled walk-up appointments from Walk-up
Experience in the application navigator, or left navigation bar.

Note: Primary access is through Agent Workspace for all Walk-up Experience related
information, including scheduled appointments.
Upcoming appointments also display with a small calendar icon next to the user name on the onsite walk-up location queue wall monitor. The user with an appointment appears on the monitor a
short time before the appointment is scheduled to begin.

Procedure
1. Navigate to All > Walk-up Experience > Agent > Scheduled Appointments.
all walk-up appointments scheduled for the upcoming 14 days display.
2. Select an appointment number to view the details, such as the requester name, the interaction
number and description, and the appointment time.
a. If desired, to preview the associated interaction details, click the preview record icon
next to the appointment number.
b. To begin working on the interaction, click Accept appointment on the Walk-up Appointment
form.
If necessary, you can assign the appointment to an agent and add work notes.
If a significant time has passed and the requester does not show up for the appointment,
you can delete the appointment by selecting delete.
c. Select Update to save any changes you make to the interaction form.

Plan your walk-up experience visit with Employee Center
Schedule a single or multiple appointments to visit the walk-up lounge or the support lounge
Walk-up Experience Employee Center. You can also get remote help.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2185


<!-- page 2186 -->
About this task

Employee Center portal enables users to easily scale their service solutions across departments,
such as IT, HR, Workplace, Legal, and Procurement with digital workflows. This unified portal goes
beyond the basic service delivery to provide a platform for communications, engagement, and
content experiences. For more information, see Employee Center .
• Use Employee Center to schedule a walk-up appointment to get help, such as to request for
new hardware, update software, or upgrade your system.
• You can make an appointment, request for the next open appointment, or see your upcoming
appointments.

Procedure
1. Launch the Employee Center service portal in your browser.
2. On the portal home page, select the IT topic from the mega menu..
3. Select the link Walk-up: Plan your visit.
Alternatively, select Walk-up visits under the My active items widget.
4. On the walk-up check-in page, either join the queue or schedule an appointment for the future.
5. Select the Schedule an appointment tab.
6. Select a reason for your visit.
7. Click the calendar icon (

) and select an available time slot.

8. Select the type of appointment.

Note: You can choose the type of appointment only if the location accepts both, inperson and remote appointments.
Appointment type

Description

In-person

If you want to visit the walk-up lounge in per­
son.

Remote

If you want to get remote help.

9. Select Schedule appointment.

Note:
You can also schedule multiple appointments based on the selected location. When you
reach the maximum appointment booking limit, a message is displayed.

Result

A success message is displayed. The details of the appointment are displayed under the Your
upcoming appointments section.
You can also see your upcoming appointments under the My active items widget on Employee
Center home page.

Monitoring Walk-up Experience performance
The Walk-up Experience dashboard and reporting module provides basic high-level reporting
on incident and request types, record volume, average wait and service times, assignments by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2186


<!-- page 2187 -->
agents and location, and more. By viewing the dashboard, managers can quickly understand the
walk-up location operations and can report performance data to upper management.
To view the Walk-up Experience dashboard you must be assigned one of the following roles:
• sn_walkup.walkup_manager
• sn_walkup.walkup_admin
• admin
Access the dashboard by navigating to Walk-up Experience > Dashboard. To view detailed
information, hover over any report graphic. You can save graphs as PNG or JPEG files to attach to
emails or include in reporting presentations. All graphs can be refreshed for the latest data.

Dashboard report graphic

Description

Completed Walk-ups for the Quarter

Total number of records created during the
fiscal business quarter. Volume shown as a
single score.

Exit Survey CSAT for this Year

Speedometer showing the average customer
satisfaction sentiment (1 to 3) during the exit
survey for the current calendar year.

Overall CSAT within Last Year

Speedometer showing the average customer
satisfaction sentiment (1 to 5) captured by the
email survey within the last year (364 days
from current date).

Walk-ups by Location within Last Year

Total number of walk-up interactions, by
location within the last year (364 days from
current date). Volume shown as a spline
distributed by month.

Walk-up Interactions with Incidents by
Location within Last Year

Total number of walk-up incidents, by location
within the last year (364 days from current
date). Volume shown as a spline distributed by
month.

Walk-up Interactions with Requests by
Location within Last Year

Total number of walk-up requests, by location
within the last year (364 days from current
date). Volume shown as a spline distributed by
month.

Walk-up Reasons by Location within Last Year

Reasons for visiting the walk-up queue, by
location within the last year (364 days from
current date). Data shown as a bar chart.

Walk-ups by Day of the Week

Total number of walk-up interactions per day
during the course of a week, by location. Data
shown as a bar chart.

Walk-ups by Hour

Total number of walk-up interactions, by hour
and by location. Data shown as a bar chart.

Walk-up Consumables

Total number of assets consumed by walk-up
guests, by location stockroom. Data shown as
a bar chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2187


<!-- page 2188 -->
Dashboard report graphic

Description

Average Service Time by Location

Average time it takes to close an interaction,
by location. Time average shown as a spline
by month.

Average Wait Time by Location

Average time a walk-up guest waits for service,
by location. Data shown as a bar chart.

Exit Survey CSAT Score

Sentiment survey for the walk-up concluded at
the tech lounge.

Walk-up created an closed (by location or
reason)

Walk-up interaction created and closed weekly

% Walk-up Interaction with Incident and
Request (by location)

Percentage of closed walk-up interaction with
Incident and Request associated.

Walk-up by day of the week (by location)

Walk-up interaction created per day.

Walk-up by hour (by location)

Walk-up interaction created distributed over
each hour of the day.

Walk-up consumables (by Stockroom)

Consumable inventory per stockroom.

Average Service Time and Wait Time (by
Location)

Average wait and service time for Walk-up
interactions.

Average service Time and wait time (by
Reason)

Average wait and service time for Walk-up
interactions.

Average service Time and wait time (by
Assignment group)

Average wait and service time for Walk-up
interactions.

Walk-ups as appointments (remote vs inperson)

Walk-up interactions appointment scheduled

% Walk-up interaction (by Walk-up type)

Percentage Walk-up interaction distributed
over check-in, online check-in and
appointment

% Abandoned walk-ups (by Walk-up type)

Percentage abandoned walk-ups distributed
over check-ins, online check-ins and
appointments

®

Walk-up Experience on Now Mobile
You can create and manage your appointments for a walk-up venue like the Tech Lounge when
®
®
you use the ServiceNow Walk-up Experience on the Now Mobile app on your own mobile
device.
®

With the Now Mobile app, you can use your mobile device to book appointments, see where
you are in a queue, and cancel or modify your appointments for the Tech Lounge. You will never
miss an appointment again. You will get reminders about your upcoming appointments and
notifications if your appointment changes.

Book an appointment at a Walk-up Experience Tech Lounge
Book an appointment at a ServiceNow Walk-up Experience Tech Lounge by using the Now
Mobile app.

®

Before you begin
Role required: user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2188


<!-- page 2189 -->
Procedure
®

1. On your mobile device, tap the Now Mobile app icon ( ).
2. Navigate to the list of available Tech Lounges using any of these options.
Tab

Navigation

My Items

Tap the headphones icon (

Services

Tap the more options icon (
Tech Lounge.

Information

Tap the headphones icon (

).
) > Visit a

).

3. From the list of active Tech Lounges, tap your preferred Tech Lounge.
4. Tap Make Appointment.

Note: The option to book a slot in advance is not available in all Tech Lounges. If the

Maximum future bookable day field doesn't appear in the Tech Lounge details view, you
can't book a slot in advance in that particular Tech Lounge.
5. On the form, fill in the fields.
Make Appointment form
Field

Description

Reason

Reason for your visit.

Date

Preferred date for the visit.

Time slot

Preferred time slot for your visit.

If you select a date when the Tech Lounge is closed or is not available for appointments, the
time slot doesn't appear. Select a different date and time slot.
6. Tap Submit.
Your appointment confirmation is displayed on the screen.
7. Optional: Tap OPEN on your appointment to view the details.
Another way to view your appointment confirmation is to return to the Tech Lounge list view
®
and tap the Visits tab, or return to the Now Mobile app home page and tap My Tech Visits.

Modify an appointment at the Walk-up Experience Tech Lounge
Edit or cancel an appointment at a ServiceNow Walk-up Experience Tech Lounge by using the
®
Now Mobile app on your mobile device.

Before you begin
Role required: user

About this task

The time limit for modifying an appointment may vary across tech Lounges. You cannot modify
a confirmed appointment within the time limit that was set for the particular tech Lounge. For
example, a tech Lounge has set this time limit as two hours. So, if your appointment is at 10 a.m,
you cannot modify it after 8 a.m. of the same day.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2189


<!-- page 2190 -->
Procedure
®

1. On your mobile device, tap the Now Mobile app icon ( ).
2. Navigate to your appointment card using any of these options.
Tab

Navigation

My Items

Tap My Tech Visits

Services

Tap the more options icon (
Tech Lounge > Visits.

) > Visit a

Information

Tap the headphones icon (

) > Visits

3. Tap the appointment card to open it.
4. Choose one of the following actions.
Action

Description

Edit

Change the date or time of the appointment.

Cancel

Cancel the appointment.

You can also swipe the appointment card and tap your preferred action to modify the
appointment.

Join a queue at the Walk-up Experience Tech Lounge
®

Join a queue at a ServiceNow Walk-up Experience Tech Lounge by using the Now Mobile app
for immediate assistance with an issue.

Before you begin
Role required: user

Procedure
®

1. On your mobile device, tap the Now Mobile app icon ( ).
2. Navigate to the list of available Tech Lounges using any of these options.
Tab

Navigation

My Items

Tap the headphones icon (

Services

Tap the more options icon (
Tech Lounge.

Information

Tap the headphones icon (

).
) > Visit a

).

3. From the list of active Tech Lounges, tap your preferred Tech Lounge.
4. Tap Join Queue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2190


<!-- page 2191 -->
Note: This option is displayed only when the Tech Lounge is open. If the Tech Lounge
is closed, wait to join a queue during the normal operating hours. Alternatively, you can
book an appointment if the option is available. For more information on how to book an
appointment, see Book an appointment at a Walk-up Experience Tech Lounge.
5. On the form, fill in the fields.
Join Queue form
Field

Description

Reason

Reason for your visit.

Description

Brief description of the problem.

6. Tap Submit.
Your visit details and position in the queue are displayed on the screen.

Leave a queue at the Walk-up Experience Tech Lounge
®

Leave a ServiceNow Walk-up Experience Tech Lounge queue at any time by using the Now
Mobile app on your mobile device.

Before you begin
Role required: user

Procedure
®

1. On your mobile device, tap the Now Mobile app icon ( ).
2. Navigate to My Items > My Tech Visits.
3. Navigate to your Queue card using one of these options.
Tab

Navigation

My Items

Tap My Tech Visits

Services

Tap the more options icon (
Tech Lounge > Visits

) > Visit a

Information

Tap the headphones icon (

) > Visits

4. Tap your visit card to open it.
5. Tap Leave queue.
You can also swipe your visit card and tap Leave queue.

Walk-up Experience reference
Explore comprehensive and additional information about the Walk-up Experience services.
The following topics offer additional information on Walk-up Experience, which assists you in
customizing the application to address IT-related issues faced by your employees.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2191


<!-- page 2192 -->
• View Badge Scanner Integration scan logs
• Quick start tests for Walk-up Experience
• Components installed with Walk-up Experience

Domain separation and the Walk-up Experience application
This is an overview of domain separation as it pertains to the Walk-up Experience application
and how it relates to Service Portal pages, interaction queues, and configurations. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.

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

Walk-up Experience overview
Domain separation in the Walk-up Experience application is supported at the basic level.
However, the application depends on the Service Portal, which is not supported for domain
separation. Domain separation pertains to the Walk-up Experience application in the following
ways:
• Walk-up location queues support domain separation in order to define which end users can
access each location queue.
• The Interaction table supports standard domain separation for data security. Interaction tickets
are opened for a specific domain.
• Walk-up location queues and interactions support domain separation. Therefore, the agents
also work within a domain-separated environment when addressing interaction tickets
associated with a location queue.
• Management and administration configurations reside in the walk-up location queue records.
Therefore, those configurations are available to the respective domain managers and admins.
• While the Service Portal pages are not domain separated, the Walk-up Experience
application's portal pages retrieve data within the user’s specific domain. Therefore, those
pages can be reused across different service portals designed and configured for separate
domains. The admins must build each portal themselves.
• The Domain field is available on the wu_location_queue table. Setting domain here ensures
that the users only see queues that are a part of their domains during online check-in.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2192


<!-- page 2193 -->
• For Advanced Work Assignment routing to operate, each wu_location_queue must include a
work item routing condition which explicitly adds a reference to the domain the queue is part
of.

Note: The appointment booking feature is not domain separated. Since Appointment
[itil_appointment] table data is not domain separated, list views could reveal data across
domains.

How domain separation works in the Walk-up Experience application
For this application to be most effective, walk-up administrators should configure walk-up
locations accordingly. This is done by configuring the wu_location_queue record to meet
the needs of requesters. Each domain configured to the location queue record has its own set of
rules. The same applies to other tables within the Walk-up application as well.

Note: Elements of the Service Portal platform such as settings, portals and widgets
cannot be domain separated. However, the data within the widgets displays based on how
the domain is configured. The recommended approach is to set up separate portals for
each MSP customer.
The elements of Service Portal that are used as part of the walk-up experience are as follows:
• Portal (Walk-up)
• Pages ( walkup_online_checkin, walkup_queue_on_site, walkup_home,
walkup_survey, walkup_check_in )
• Theme (Walk-up theme)
• Widgets (Online check-in experience, walk-up queue on site, walk-up check-in, walk-up exit
survey, walk-up home, walk-up schedule)
To learn more, see Domain separation and Service Portal

.

For data separation, the Walk-up Experience application uses the domain of the walk-up
requester to determine in which domain the requester data should be placed.
• Requesters can check in only in locations for which they have visibility.
• Requesters are able to select the reasons that belong only to their own domain.
• Interaction records are created in the Requester’s domain.
The application uses the domain of the walk-up agent or admin to determine which records are
visible to the agent.
• By domain separation rules, Agents can work only on interactions that are visible to them.
• The agents are able to configure only walk-up location records that belong to their domain, are
in the global domain, or have the parent-child hierarchy.
• The same visibility rules apply for the Many to Many
[wu_m2m_location_queue_reason]table that controls the mapping between a
location and the reason.
• The walk-up contexts records also have domain separation support. Thereby ensuring that
the agents are able to view detailed information of the Requester only for the records that are
visible by domain separation rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2193


<!-- page 2194 -->
Domain-separated tables
As part of the Walk-up Experience, records in the following tables can be domain separated.
• Walk-up location queues [wu_location_queue]
• Walk-up reasons for visit [wu_reason]
• Walk-up reasons [wu_m2m_location_queue_reason]
• Walk-up contexts [wu_context]
• Interactions [interaction]
Related topics
Domain separation for service providers

Components installed with Walk-up Experience
Several types of components are installed with activation of the Walk-up Experience plugin,
including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.
Roles installed
Role title [name]

Description

Walk-up login

Used to log into the onsite
None
Walk-up Experience portal
when needed. For example, at
the beginning of the work day
for an agent.

[sn_walkup.walkup_login]

Contains roles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2194


<!-- page 2195 -->
Roles installed (continued)
Role title [name]

Description

Contains roles

Note: This role is
assigned to a user
record for purposes of
logging into the checkin device, typically a
tablet, at the on-site
Walk-up Experience
portal. It is not an actual
human being with an
assigned role, but an
account used to log
into the on-site portal
devices. The user
record can be assigned
only this role in order
to access the onsite
Walk-up Experience
portal. The user record
account cannot contain
any other associated
roles. For security
reasons, the Walk-up
Experience portal cannot
be accessed using the
admin role.
Walk-up technician

Works at the Walk-up
Experience location to fulfill
[sn_walkup.walkup_technician] customer demands, such as
IT-related issues and requests.

• interaction_agent
• workspace_agent
• awa_agent

• sn_apptmnt_booking.appointment_booking_
Walk-up manager
[sn_walkup.walkup_manager]

Manages the technicians
at the Walk-up Experience
location.

• sn_walkup.walkup_technician

• sn_apptmnt_booking.appointment_booking_

Access the Walk-up
Experience Dashboard
to oversee and monitor
operations and performance.
Walk-up administrator
[sn_walkup.walkup_admin]

Administers and configures
Walk-up Experience modules.

• sn_walkup.walkup_manager
• inventory_admin
• schedule_admin
• sp_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2195


<!-- page 2196 -->
Roles installed (continued)
Role title [name]

Description

Contains roles

• sn_apptmnt_booking.appointment_booking_
• awa_admin

Tables installed
Table

Description

Walk-up Reason for Visit

Record used to define various common
reasons why a user needs walk-up support.

[wu_reason]
Walk-up context

Record used to configure an online checkin channel for requesters to join a walk-up
queue before physically arriving at the walk-up
location. Identifies a walk-up requester and the
description of the associated interaction.

[wu_context]

Walk-up Location Queue

Record used to configure a walk-up location.
Extends the Queue [awa_queue] table.

[wu_location_queue]
Walk-up Reason
[wu_m2m_location_queue_reason]
Walk-up Appointment

Record used to set the order a particular visit
reason should be prioritized at a walk-up
location.
Record used to configure scheduled
appointments. Extends the Task [task] table.

[wu_appointment]

Quick start tests for Walk-up Experience
Validate that Walk-up Experience still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.
Walk-up Experience quick start tests require activating the Walk-up Experience plugin
(com.snc.walkup) and loading demo data.
Walk-up Experience - Tests test suite
Test

Description

Release version

Create a location

Ensure users with the
Walk-up administrator
[sn_walkup.walkup_admin]
role can access all existing
walk-up queues, create
new queue locations,
and configure queues
appropriately.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2196


