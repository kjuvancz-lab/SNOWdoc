# Zurich IT Service Management — ITSM Mobile Agent

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3734–3763 of 3857

Sections: ITSM Mobile Agent (p3734); Explore (p3735); Configure (p3743)

---

<!-- page 3734 -->
Title

Type

Description

Open incidents not updated in Single score
last 7 days
Single score icon

Open incidents that belong to
you or one of your groups and
have not been updated for the
last 7 days

My open requests - Heatmap

Your requests by assignment
group and priority

Heatmap
Heatmap icon

Open problems

Single score
Single score icon

Spotlight incidents P1 - Critical Single score
Single score icon

My open problems

Single score
Single score icon

Spotlight incidents Unassigned

Single score

My open incidents

Single score

Single score icon

Single score icon

Incidents Spotlight - List

List

Open problems that belong to
you or one of your groups

Incidents belonging to
your group that exceed the
Spotlight threshold and have a
priority of P1 - Critical
Open problems that belong to
you

Incidents belonging to one of
your groups that exceed the
Spotlight threshold and have
no one assigned to them
Open incidents that belong to
you

A list of all incidents that
one of your groups own and
that exceed the Spotlight
threshold

ITSM Mobile Agent
®

The ServiceNow ITSM Mobile Agent app delivers base system mobile-first experiences
designed for IT agents to triage, act on, and resolve incidents on the go.

ITSM Mobile Agent overview
Watch this three-minute video to learn more about ITSM Mobile Agent. This video covers the
ITSM Mobile Agent app overview, installation, and information on how to access the app.
Overview of the ITSM Mobile Agent application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3734


<!-- page 3735 -->
Get started
ITSM Mobile Agent assists IT agents with an intuitive interface to manage all their work, view
schedules, check who is on call, respond to major incidents, and more. The agent can also view
incident details and activity; edit an incident and add comments; resolve, assign, or reassign an
incident; and view incident notifications.

Explore

Configure

My work applet

Learn about ITSM
Mobile Agent concepts,
features, and User roles.

Configure environment
tools and user access.
Configure and enable
push notifications.

Create and manage
incidents assigned to you.
View your shift schedule
and request time off.

My team applet

Manage major incidents

Reference

Manage groups and shifts,
view group performance
and time-off requests.
Resolve conflicts and gaps
by providing coverage.

View active major
incidents, proposed
major incidents,
candidates, and the Major
incidents dashboard.

Settings and domain
information about
ITSM Mobile agent.

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring ITSM Mobile Agent
ITSM Mobile Agent provides IT agents with the access needed to perform the various IT Service
Management (ITSM) tasks on the go with this mobile application.

ITSM Mobile Agent overview
ITSM Mobile Agent is a mobile application designed for ServiceNow users who work in IT
Service Management (ITSM) roles. It enables IT agents to perform various ITSM tasks and
provide support from their mobile devices. The mobile agent app provides features such as
®
®
®
ServiceNow Incident Management, ServiceNow , Problem Management, ServiceNow
®
Change Management, and ServiceNow Service Catalog access. With ITSM Mobile Agent, IT
agents can stay connected and collaborate on IT tasks while on the go.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3735


<!-- page 3736 -->
ITSM Mobile Agent workflow
A general overview of the typical ITSM Mobile Agent workflow:
1. Incident creation: When a user encounters an issue or incident, they can use ITSM Mobile
Agent to create an incident ticket. The ticket can include details such as a description of the
problem, priority level, and any relevant attachments.
2. Notification and assignment: After the incident ticket is created, the mobile agent app sends a
notification to the assigned IT agent or the appropriate support group. This notification ensures
that the incident is promptly handled.
3. Incident management: The assigned IT agent can view the incident details, communicate with
the user through the chat functionality of the app, and perform any necessary troubleshooting
steps. If necessary, the IT Agent can propose an incident to Major incident.
4. Resolution and closure: The IT agent can resolve the incident with the appropriate resolution
code and description.
5. Reporting and analytics: The ITSM Mobile Agent also enables managers to access reports
and analytics related to the incident management activities. They can review metrics, identify
trends, and gain insights into the performance of the IT service management process.

ITSM Mobile Agent benefits
Benefit

Feature

Users

Incident management

My incidents

All

Real-time notifications

All logged-in users
receive in-app and
push notifications.
To configure realtime notifications,
see Configurable
actionable
notifications for ITSM
Mobile Agent.

All

Team Dashboard and performance metrics

My team dashboard
and Performance
metrics

Managers

Major incident management

Managing major
incidents using Major
Incident applet

Agent, Managers

AI search

AI Search in ITSM
Mobile Agent

All

Collaboration services

Collaboration
Services for ITSM
Mobile Agent

Administrator

User roles and personas in ITSM Mobile Agent
Learn about the various user roles and persona used to log in to ITSM Mobile Agent.
ITSM Mobile Agent supports the following user persona.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3736


<!-- page 3737 -->
itil role
The IT agent is the primary user of the ITSM Mobile Agent application. IT agents or technicians
responsible for handling and resolving IT incidents and service requests have the itil role
assigned. They have access to features such as incident management, asset management,
knowledge base, ticket management, and On-call schedules. They can create, update, and
resolve tickets, view their schedules and shift details, and create time off requests.
An itil user might also have more than one role assigned to them. For example:
• sn_incident_write
• sn_change_write
• sn_request_write
Apart from the itil role, users might have the following additional roles, based on the various
features available in ITSM Mobile Agent.
Additional ITSM Mobile Agent roles
Feature

User role

Major incidents

major_incident_manager

Hardware asset management

approver_user:

On-call Scheduling

rota_manager

Shift Planning

sn_shift_planning.admin

ITSM Mobile Agent features and plugins
Learn about the plugins used in ITSM Mobile Agent.
The ITSM Mobile Agent application offers various plugins that can enhance functionality and
provide additional features. Some of the common plugins used with ITSM Mobile Agent include
the following:
• com.glideapp.itom.snac [Event management]
• com.sn_hamp [Hardware asset management]
• com.sn_shift_planning [Shift Planning]
• com.sn.slack.ahv2 [Slack spoke-store]
• com.snc.iam [Incident communications management]
• com.snc.incident.mim [Major incident management]
• com.snc.notify [Notify]
• com.snc.on_call_rotation [On-call Scheduling]
• com.snc.pa.incident.mim [Performance Analytics - Major Incident Management]
• com.snc.pa.itsm_dashboards [Performance Analytics - ITSM Dashboards]
• com.snc.tcm_collab_hook [Collaboration services - store]

AI Search in ITSM Mobile Agent
Intelligent query features enable agents to quickly find the required answers in ITSM Mobile
Agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3737


<!-- page 3738 -->
Using AI search, agents can easily search find the following records:
• Incidents (MIM, Breached Incidents, At Risk)
• Change tasks
• Catalog tasks
• Changes
• System users
• Knowledge base articles
You can also toggle between Zing search and AI search if needed.
AI Search in ITSM Mobile Agent offers the following features:
• Navigation tab filters: Filters help users narrow down results on a site.
• Auto-complete: As the user enters text, AI Search predicts the query and helps formulate the
user's question.
• Auto-correct typos: Typos are auto-corrected based on indexed content.
• Synonym handling: The search engine also looks for words similar to the search term.
• Genius cards: Genius result cards display the most relevant answers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3738


<!-- page 3739 -->
ITSM Mobile Agent

For information about AI search, see AI Search

.

For information about AI search in mobile, see AI Search in mobile

.

The following configurations are added for AI search experience in ITSM Mobile Agent:
• A search application configuration, [AIS] ITSM Mobile Agent Search Configuration. For
information about search application configurations, see Search application configurations

.

• A search profile, ITSM Mobile Agent Search Profile. For information about search profiles, see
Search profiles .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3739


<!-- page 3740 -->
Get started with AI search in new or zBoot instances
Enable intelligent query features that help agents to quickly find the required answers in ITSM
Mobile Agent in new or restarted instances.

Before you begin

Role required: ais_admin or admin

About this task

AI search is enabled by default in the base system for new and restarted instances. You must
publish the associated search profile.

Procedure
1. To ensure AI search is enabled, navigate to All > AI Search > AI Search Status.
AI Search

2. Publish the AI search-related search profile.
a. Navigate to All > AI Search > Search Experience > Search Profiles.
b. Click ITSM Mobile Agent Search Profile.
c. Click Publish.
Get started with AI search in upgraded instances
Enable intelligent query features that help agents to quickly find the required answers in ITSM
Mobile Agent in upgraded instances.

Before you begin

Role required: ais_admin or admin

About this task

You can get started with AI search in upgraded instances by using the AI search configuration in
the base system.

Procedure
1. Enable AI search.
a. Navigate to All > AI Search > AI Search Status.
b. Click Request AI Search.
2. Activate the AI Search Index Sources (Id: com.glide.ais.index_sources) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3740


<!-- page 3741 -->
a. Navigate to All > System Definition > Plugins.
b. Search for the AI Search Index Sources (Id: com.glide.ais.index_sources) plugin.
c. Click Activate.
3. Index all search sources.
a. Navigate to All > AI Search > AI Search Index > Indexed Sources.
b. Select all data sources.
c. From the Actions on selected rows drop down, select Index All Tables.
4. Publish the AI search-related search profile.
a. Navigate to All > AI Search > Search Experience > Search Profiles.
b. Click ITSM Mobile Agent Search Profile.
c. Click Publish.
5. Select the AI search-related search application configuration for the global search record.
a. Navigate to sys_sg_global_search.list.
b. From the list of search configurations, Click ITSM Mobile Agent Search.
c. For the Search Application Configuration field, select [AIS] ITSM Mobile Agent Search
Configuration.
d. Click Update.

Note: If you do not want to use the AI search configuration in the base system, migrate
your search profiles and other configurations from zing search to AI search. Perform the
steps mentioned in Configure AI Search for mobile devices .
Switch back to Zing search in ITSM Mobile Agent
If AI search is already enabled in ITSM Mobile Agent, enable Zing search configuration to use
your own search profiles and configurations. It will enable Zing search in ITSM Mobile Agent and
all workspaces.

Before you begin

Role required: admin
For information about Zing search in mobile, see Global search for mobile

.

Procedure
1. Navigate to sys_properties.list.
2. Click New.
3. On the System property form, add the following information.
◦ Name: glide.ais.global_search.use_zing
◦ Value: true
4. Click Submit.

Enable dark theme in ITSM Mobile Agent
Enable a dark theme or mode in ITSM Mobile Agent. This option is commonly used to alleviate
eye strain and improve readability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3741


<!-- page 3742 -->
Before you begin

Role required: itil, rota_manager, sn_incident_write

Procedure
1. Open the ITSM Mobile Agent and tap More.
2. Tap Settings > Preferences > Theme.
3. Tap Dark.

Filter records
Set additional filters to limit the number of records that are displayed on a screen. Filtering
records in the mobile app works like filtering with a condition builder on the ServiceNow AI
Platform.

Before you begin

Role required: itil or group manager

Procedure
1. To further refine your search results, or to enter additional filter criteria on any list of records
that is displayed, tap the filter icon (

).

2. On the Filters screen that appears, tap the arrow on a field to expand it.
3. From the options available, tap the check box or tap an option for your filter.
For many of the filters, you can select more than one option.
4. Tap the back icon ( ) or DONE to save your changes to a field.
The criteria you chose displays on the Filters screen. The number of records that match your
criteria also display on the top of the screen. Tap Clear or RESET to remove any filters and
restore the default setting.
5. Optional: Repeat steps 1- 4 with the Filters screen displayed to continue setting your filter
criteria.
6. Tap the and icon (

) after you set all criteria to create AND conditions.

7. Alternatively, tap the OR icon (

) to create OR conditions.

8. After you have added all the criteria you want, tap DONE.
The incident records that match your filter criteria display on the screen.

Collaboration Services for ITSM Mobile Agent
Collaboration services provide a way to communicate and collaborate in real time. You can
directly use a collaboration tool from an incident, incident task, and major incident records.
Install the Collaboration services (sn_tcm_collab_hook), Notify (com.snc.notify), Notify connector
for Microsoft Teams (com.sn.ms_teams) applications in your instance to use collaboration
services on ITSM Mobile Agent.
• Collaboration with incidents
Initiate and manage the collaboration for incident records from the ITSM Mobile Agent app.
• Collaboration with incident tasks
Initiate and manage the collaboration for incident task records from the ITSM Mobile Agent
app.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3742


<!-- page 3743 -->
• Collaboration with major incidents
Initiate and manage the collaboration for major incident records from the ITSM Mobile Agent
app.
Add deep linking support to ITSM Mobile Agent
Deep linking enables instances to support direct communication to a messaging application
from a particular record in the system.

Before you begin

Role required: itil, itil_admin, or admin

About this task

You need to assign the deep linking support on the Mobile Studio.

Procedure
1. Log in to your instance.
2. In the Navigation filter, enter sys_properties.list.
The entire list of properties in the System Properties [sys_properties] table appears.
3. Open the record for glide.sg.allowed_external_deeplinks.
4. In the form, match the following values:
System Properties table
Field

Value

Name

glide.sg.allowed_external_deeplinks

Type

String

Value

Slack,Teams

5. Click Save.

Configuring ITSM Mobile Agent
Plan and configure ITSM Mobile Agent.

Configuration overview
As an administrator, you can configure preferences and application behavior and create tools
that improve the effectiveness of Agents and Managers. These are some of the tasks you can
perform as an administrator:
• Migrate to latest and supported version of Mobile Agent.
• Create and configure actionable notifications for Mobile Agent.
• Enable push notification categories.

Install ITSM Mobile Agent
You can install the ITSM Mobile Agent application (sn_itsm_mobile_agt) if you have the admin
role. The application installs related plugins if they are not already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3743


<!-- page 3744 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ITSM Mobile Agent application (sn_itsm_mobile_agt) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install ITSM Mobile Agent.
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.

Migration from ITSM Mobile to ITSM Mobile Agent
The ITSM Mobile plugin (com.sn_itsm_mobile) was deprecated in Quebec. The existing
customers can migrate to ITSM Mobile Agent for enhanced mobile-first experiences in the base
system, designed for agents to triage, act on, and resolve incidents on the go. ITSM Mobile
Agent application improves productivity with an intuitive interface to manage all the work, view
schedules, check who is on-call, respond to major incidents, and more.
For information about getting started with ITSM Mobile Agent, see Log in to ITSM Mobile Agent.
Deactivate the ITSM Mobile launcher screens and notifications
After you install the ServiceNow Agent app, avoid duplication of launcher screens and
notifications from the deprecated ITSM Mobile app.

Before you begin

Role required: admin

About this task

After installing the ITSM Mobile Agent app on your instance, you can still view the launcher
screens from the ITSM Mobile application when you log in to the ServiceNow Agent app (Android
or iOS). Also, you might receive duplicate notifications since both ITSM Mobile and ITSM Mobile
Agent apps are active on your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3744


<!-- page 3745 -->
Deprecated applet launchers for incidents and approvals

Since no updates are supported on the ITSM Mobile plugin (com.sn_itsm_mobile),
it's recommended that customers stop using the related deprecated features. It's also
recommended that applets or applet launchers from both plugins (ITSM Mobile and ITSM Mobile
Agent) aren't active at the same time.
Since the single-click uninstallation of plugins isn't supported, the deprecated plugin isn't
deactivated in the base system. Hence, deactivate the applet launchers and notifications that
exist in the deprecated ITSM Mobile plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3745


<!-- page 3746 -->
Procedure
1. Navigate to All > System Applications > Studio.
2. From the Select Application pop-up window, open the ITSM Mobile application in the studio.
3. To deactivate the ITSM Mobile launcher screens, perform the following steps:
a. To deactivate the Incidents launcher screen, perform the following steps:
i. Navigate to Mobile Studio > Applet launchers > Incidents.
ii. From the header menu, make this launcher screen inactive by using the Active toggle
switch.
iii. Click Save.
b. To deactivate the My Approvals launcher screen, perform the following steps:
i. Navigate to Mobile Studio > Applet launchers > My Approvals.
ii. From the header menu, make this launcher screen inactive by using the Active toggle
switch.
iii. Click Save.
When you log into the ServiceNow Agent app, the deprecated launcher screens aren’t
displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3746


<!-- page 3747 -->
ServiceNow Agent app without deprecated launcher screens

4. To deactivate the ITSM Mobile notifications, perform the following steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3747


<!-- page 3748 -->
a. To deactivate the notifications related to assigned approvals, perform the following steps:
i. Navigate to Notifications > Notifications > Approval assigned to me.
ii. Clear the Active check box.
iii. Click Update.
b. To deactivate the notifications related to commented incidents, perform the following steps:
i. Navigate to Notifications > Notifications > Incident commented.
ii. Clear the Active check box.
iii. Click Update.
Migrate customizations from the ITSM Mobile application scope to the ITSM Mobile Agent
scope
When migrating from ITSM Mobile to ITSM Mobile Agent, an admin must verify if any
customizations are defined in the deprecated ITSM Mobile application scope. Such
customizations should be deactivated or moved to the ITSM Mobile Agent scope.
The admin must verify if any custom notifications are defined in the deprecated ITSM Mobile
application scope. Such notifications should be deactivated or moved to the ITSM Mobile Agent
scope.
Similarly, the admin must deactivate or move the custom launcher screens or custom applets to
the ITSM Mobile Agent application scope.

Important: To move customizations from the ITSM Mobile application scope to the ITSM
Mobile Agent application scope, perform one of the following actions:
• Copy the custom code and paste it in the ITSM Mobile Agent application scope.
• Redefine the code in the ITSM Mobile Agent application scope.

Migration to ITSM Mobile Agent 5.0.3
Migration to ITSM Mobile Agent 5.0.3 enables the Next Experience theme and accessibility
compliance in ITSM Mobile Agent.
This migration includes the following component changes:
• Migration of legacy icon sections to new icon sections. It includes better grouping of icon
sections for on-call scheduling and incidents along with color variables for icons.
• Migration of legacy UI parameters to new input form screens. It simplifies the way parameters
are defined, enables theming on the input form screen, and supports accessibility
enhancements by Mobile Platform.
• Migration of legacy card views to mobile views. It allows using color variables as per theme.
• All styling changes can be done through UI rules instead of UI styles.
• For buttons that perform a positive action, button emphasis has changed from primary to
positive.
When customers migrate from any older version to ITSM Mobile Agent 5.0.3, the following steps
are automatically performed:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3748


<!-- page 3749 -->
• When the plugin.upgraded event is triggered for the ITSM Mobile Agent
(sn_itsm_mobile_agt) application, the Run clean upgrade for ITSM Mobile
Agent script action is run.
• This script action invokes the following upgrade APIs:
◦ For legacy icon sections to new navigation sections, the
cleanUpgradeIconSections() method from the
sn_itsm_mobile_agt.MobileUtahUpgradeEngine script include.
◦ For old ui parameters to new input form screen, cleanUpgradeButtonInstance()
method from the sn_itsm_mobile_agt.MobileUtahUpgradeEngine script
include.
◦ For legacy cards to new mobile views, cleanUpgradeLegacyCards() method from the
sn_itsm_mobile_agt.MobileUtahUpgradeEngine script include.
◦ A map with key value pairs,

sn_itsm_mobile_agt.MobileIconSectionMigrationConstant, is introduced
where the key is the sys_id of the legacy default configuration and the value is an object with
a comma-separated list of metadata for the corresponding new default configuration that is
introduced in the upgrade process.

• After the script action is run and performs all the required actions, it is deactivated so that it
isn’t run again on future upgrades.

Migration of legacy icon sections to navigation sections
In this case, the sn_itsm_mobile_agt.MobileIconSectionMigrationConstants
script include contains the following key value pairs:
• Key: sys_id of the legacy default sys_sg_icon_section record.
• Value: Object with a comma-separated list of sys_ids of sys_sg_navigation_section
and sys_sg_applet_launcher_m2m_section records.
The Run clean upgrade for ITSM Mobile Agent script action upgrade script runs
to perform the following steps for each key in the map:
1. Check the following records for customizations.
◦ Legacy default sys_sg_icon_section record.
◦ Compare if the legacy default icon section has at least one new or one less
sys_sg_applet_launcher_m2m_section record when compared to the new default
icon section.
2. Based on customizations, one of the following steps is performed.
◦ If any of the above records are customized, the script deactivates the new default
sys_sg_navigation_section record.
◦ If none of the above records are customized, the script deactivates the legacy default
sys_sg_icon_section record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3749


<!-- page 3750 -->
Note:
• Custom icon sections that are not available by default continues to function but may not
support Next Experience theme and accessibility compliance. Customers must migrate
them to navigation sections for better experience.
• For customized icon sections that are available by default, customers must manually
review the legacy default icon sections that are still active and move their customizations
to the new default navigation sections.
• If customized icon sections are not migrated to the new navigation sections, then
users will have a mixed experience that may not be fully compatible with the new Next
Experience theme and can lead to accessibility issues.

Migration of UI parameters to input form screen
In this case, the
sn_itsm_mobile_agt.MobileInputFormScreenMigrationConstants script
include contains the following key value pairs:
• Key: sys_id of the legacy default sys_sg_button_instance record.
• Value: Object with comma-separated list of sys_ids of the new default
sys_sg_button_instance record and other meta data.
The Run clean upgrade for ITSM Mobile Agent script action upgrade script then
runs to perform the following steps for each key in the map:
1. Check the following records for customizations.
◦ Legacy default sys_sg_button_instance record.
◦ sys_sg_button record associated with the sys_sg_button_instance record.
◦ sys_sg_ui_parameter and sys_sg_action_param_map records associated with
the sys_sg_button record.
◦ sys_sg_write_back_action_item record associated with the sys_sg_button
record.
2. Based on customizations, one of the following steps is performed.
◦ If any of the above records are customized, the script deactivates the new default
sys_sg_button_instance record.
◦ If none of the above records are customized, the script deactivates the legacy default
sys_sg_button_instance record.

Note:
• Custom button instance flows (UI Params) that are not available by default continues
to function but may not support Next Experience theme and accessibility compliance.
Customers must migrate them to input form screens for better experience.
• For custom button instance flows (UI Params) that are available by default, customers
must manually review the legacy default sys_sg_button_instance records that
are still active and move their customizations to the new sys_sg_button_instance
flow (refer to the map sn_itsm_mobile_agt.MobileInputFormScreenMigrationConstants).
For configuring Input form screens on mobile, see Input form screen .
• If customized UI parameters are not migrated to the new input form screens, then
users will have a mixed experience that may not be fully compatible with the new Next
Experience theme and can lead to accessibility issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3750


<!-- page 3751 -->
Migration of item views to new mobile cards
In this case, the sn_itsm_mobile_agt.MobileIconSectionMigrationConstants
script include contains the following key value pairs:
• Key: sys_id of the legacy default sys_sg_item_view record.
• Value: Object with a comma-separated list of sys_ids of sys_sg_form_screen and
sys_sg_master_item records where legacy card (that is, item view) is referenced.
The Run clean upgrade for ITSM Mobile Agent script action upgrade script then
runs to perform the following steps for each key in the map:
1. Check the following records for customizations.
◦ Legacy default sys_sg_item_view record.
◦ All sys_sg_ui_style records associated with the sys_sg_item_view record.
2. If any of the mentioned records are customized, the script reverts the
sys_sg_form_screen and sys_sg_master_item records to previous state only if
these records are not customized.

Note:
• Custom item views that are not available by default will continue to function but may not
support Next Experience theme and accessibility compliance. Customers must migrate
them to input form screens for better experience.
• For custom icon sections that are available by default, customers must manually review
the old default flows which are still active and move their customizations to the new flow.
For information about configuring cards on mobile, see Customize a screen using Mobile
Card Builder .
• If customized item views are not migrated to new mobile cards, then users will have a
mixed experience that may not be fully compatible with the new Next Experience theme
and can lead to accessibility issues.

Configurable actionable notifications for ITSM Mobile Agent
With configurable actionable notifications for ITSM Mobile Agent, you can perform actions based
on push notifications without having to open the ITSM Mobile Agent application.
You can associate up to three actions with a push notification. These actions must refer to an
existing mobile function. The following function types of actions are supported:
• Action item
• Navigation
• URL
• Chat launcher

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3751


<!-- page 3752 -->
Process for creating actionable push notifications
Create actionable push notifications using the following process:
1. Create an actionable push notification for ITSM Mobile Agent.
2. Create a push action category.
3. Create function for each push action.
4. Map functions with push actions on the actionable push notification.
5. Create push message content.
6. Create a standard notification.
Create an actionable push notification for ITSM Mobile Agent
Create a push notification for various actions performed on the ITSM Mobile Agent application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Mobile Push Notifications > Push Notifications.
2. Click New.
3. In the push notification form, fill in the fields.
Push notification form
Field

Description

Name

The name of your push notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3752


<!-- page 3753 -->
Field

Description

Note: This name does not appear to users viewing the
notification.
Application

The scoped application for your notification. This field
automatically uses the current application scope.

Actionable

Option for making a notification actionable.

Screen

Optional screen associated with your notification. Displays to
a user when they tap on the notification.

4. Click Save.

Result

The notification record is created, and the Push Action Instances related list appears on the
form.
Create a push action category
Create a push action category if any of the pre-defined push action categories do not meet the
business requirements.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Mobile Push Notifications > Push Action Categories.
Push action categories
Action

Description

accept-reject-back

Displays Accept and Reject buttons. Users can select
an option without opening the app.

Accept-Reject-fore

Displays Accept and Reject buttons. The app opens
when the user selects an action.

accept-rejectwcomments-back

Displays Accept and Reject buttons. When users
select the Reject option, a confirmation dialog box
appears that requires the user to provide a message
and click Send.

ack-escalate-ignore-back

Displays Acknowledge, Escalate, and Ignore buttons.
Users can select an option without opening the app.

approve-reject-back

Displays Approve and Reject buttons. Users can
select an option without opening the app.

approve-rejectwcomments-back

Displays Approve and Reject buttons. When users
select the Reject option, a confirmation dialog box
appears that requires the user to provide a message
and click Send. Users can select an option without
opening the app.

confirm-reschedule-cancel-back

Displays Confirm, Reschedule, and Cancel buttons.
Users can select an option without opening the app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3753


<!-- page 3754 -->
Action

Description

joinbridge-fore

Displays a Join Meeting button. Tapping this button
opens the app.

PromoteWCommentsRejectWComments-fore

Displays Promote and Reject buttons. When users
select either option, a confirmation dialog box appears
that requires the user to provide a message and click
Send.

queuerejoin-openincident-back

Displays Online Check-in and Open Incident buttons.
Users can select an option without opening the app.

queuestay-queueleave-back

Displays Stay in Queue and Leave Queue buttons.
Users can select an option without opening the app.

yes-no-back

Displays Yes and No buttons. Users can select an
option without opening the app.

2. Click New.
3. In the push action category form, enter a name for the category in the Name field.
4. Click the lock icon (

) next to the Actions field.

5. Click the reference icon (
push action category.

) to display the Push Actions list and select the actions for the

6. Select Save.
Create a push action
Create a push action if any of the pre-defined push actions do not meet the business
requirements.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Mobile Push Notifications > Push Actions.
2. Click New.
3. In the push action form, fill in the fields.
Push action form
Field

Description

Label

Text your users will see in the notification for this action.

Application

Scoped application for this record. This field automatically
populates.

Name

Name of the push action.

Foreground

When enabled, the app opens when your users select this
action.

Response Type

Options are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3754


<!-- page 3755 -->
Field

Description

◦ Simple
◦ Text response
Placeholder Text

Placeholder text to your users when they initiate the
actionable push.

4. Click Save.
Create functions for notification push actions
Create a mobile function for each function in the action category. These actions perform tasks on
your instance based on what the user selects in the notification.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Functions.
2. Click New to create a new function record.
3. Create a function for one of your push actions.
When selecting a function type in the Type field, you must select one of the function types
supported for actionable push notifications:
◦ Action item
◦ Navigation
◦ URL
◦ Chat launcher
For information on function types, and detailed steps for creating functions, see Mobile
functions .
4. Create additional functions for each push action.
For example, if you have selected ack-escalate-ignore-back as your push notification
category, your notification displays the Acknowledge, Escalate, and Ignore buttons. Create a
function to determine the behavior of each of these buttons.

What to do next

Map functions with push actions for actionable push notifications
Map functions with push actions for actionable push notifications
Associate functions to the actions for an actionable push notification.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Mobile Push Notifications > Push Notifications.
2. Open a notification.
3. In the Push Action Instances related list, click New.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3755


<!-- page 3756 -->
Push action instance form
Field

Description

Push Notification

Push notification associated with this push action instance.
This field is automatically filled in with your push notification.

Application

Scoped application associated with this record. This field is
automatically filled in with the current application.

Push Action

Push action from your push notification record. Select one of
the available actions.

Button

Function to associate with the push action. This action
triggers when a user uses the action listed in the Push Action
field.

5. Click Submit.

Example:

This example notification uses the accept-rejectwcomments-back in the Category
field. Clicking the preview icon (
Reject.

) shows the two actions used by this category: Accept and

In the example push action instance, the Approve push action is selected in the Push Action
field, and the Approve REQ /w comments function is selected in the Button field. The
instance executes this function when a user taps the Approve button in the notification.

Create push message content
Create the content of the message to be displayed as a notification.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3756


<!-- page 3757 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > System Mobile > Mobile Push Notifications > Push Notifications.
2. Open the notification.
3. Click Create Push Message Content in the Related Links section.
4. On the form, fill in the fields.
Push Notification Message Content form
Field

Description

Name

Name of your push message content record. This name is not
visible to your users.

Application

Scoped application associated with this record. This field is
automatically filled in with the current application.

Push app

Mobile Agent app on which the push notification is
displayed.

Push Message Generation

The script that generates the push notification. When
you create message content, this script is automatically
generated.

5. Click Submit.
Create a standard notification
Create a record to determine the information to be displayed for a notification.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Notification > Push > Create Push Notification.
2. On the form, fill in the fields.
Push notification form
Field

Description

Name

Name of your notification. This name is not visible to your
users.

Active

Option for determining whether the notification is active. The
instance does not send inactive notifications to your users.

Table

Table containing the records relating to your notification. For
example, notifications about new incidents use the Incident
[incident] table.

Push Message Only

Indicates the notification is a push message only. This field
cannot be changed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3757


<!-- page 3758 -->
Field

Description

Category

The category for your notification. This field value is
Uncategorized by default.

3. Right-click the form header and select Save.
4. Configure the push message for your standard notification.
a. Click to display the What to Send tab.
b. Click the lock icon (

) next to the Push Messages field.

c. Click the reference icon (

) to display the Push Notification Messages list.

d. Click New.
e. On the form, fill in the fields.
Push Notification Message form
Field

Description

Name

Name of your push notification message record. This name
is not visible to your users.

Application

Scoped application associated with this record. This field
defaults to the current application.

Push App

Mobile Agent app on which the push notification is
displayed.

Table

Table containing the records relating to your notification. For
example, a notification about new incidents would use the
Incident [incident] table.

Push Message Content

The record for the push message content.

Message

Text the user sees in the push notification, for example, An
incident has been assigned to you.

f. Click Submit.
5. In the Notification form, click Update.

Enable Push notification categories for ITSM Mobile Agent
Enable push notification categories so your users can enable or disable notifications by
category.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3758


<!-- page 3759 -->
Procedure
1. Type sys_properties.list in the application navigator.
2. In the system properties list, find and open the property with the name
com.glide.sg.notifications.management.

Note: If the property does not exist, click New and create a true|false property with the
name mentioned in the previous step. After changing this property, users must log out
and then log back in for the change to take effect.
3. In the Value field, enter true.
4. Select Update.

The user can enable or disable notifications by category. The categories shown in the
notification preferences screen are defined in the Notifications [sysevent_email_action] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3759


<!-- page 3760 -->
The screen to the left shows all the reference categories defined on this table. The screen to
the right shows the record matching the selected category.
After you have updated your system property, your users will be able to enable or disable
notifications by the defined categories.

ITSM Mobile email notification redirection via web
Redirect the users to the ITSM Mobile application from the mobile web browser to open and view
the task records.
When you select the record link from the email notifications on the mobile, the link opens in the
mobile web browser with a pop-up banner prompting you to view the record in the ITSM Mobile
application which provides a faster and more intuitive way to access the records.
To enable this feature, set the Enable universal links
(glide.sg.universal_links.enabled) system property to true.
The feature is based on the universal linking of mobile. For more information, see Universal
linking for mobile .
The email notification redirection is applicable to the following type of records:
• Incident
• Incident task
• Catalog task
• Change request
• Change task

Set custom alert tones in ITSM Mobile Agent for different incident priority
Set custom alert tones in ITSM Mobile Agent to distinguish between incidents with different
priorities.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Notification > Push Message Content.
Alternatively, you can also go to the Push Notification Message Content
[sys_push_notif_msg_content] table.
2. Select the required push notification message content record.
3. Update the Push Message Generation field with the following script.
// get the priority of current incident
var currentIncPriority = current.getValue("priority");
// define an array to map priority with ringtone
var customisedRingtones = [
{
"priority": "1",
"ringtone": "default"
},
{
"priority": "2",
"ringtone": "default"
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3760


<!-- page 3761 -->
{
"priority": "3",
"ringtone": "default"
},
{
"priority": "4",
"ringtone": "default"
},
{
"priority": "5",
"ringtone": "default"
}];
//override the json["aps"]["sound"] param with the ringtone
defined for current priority
if(customisedRingtones){
for(var i=0;i<customisedRingtones.length;i++){
if(customisedRingtones[i].priority &&
customisedRingtones[i].priority === currentIncPriority){
json["aps"]["sound"] =
customisedRingtones[i].ringtone;
break;
}
}
}

Note: Replace the ringtone with the desired alert tone name. For more information on
the list of ringtones and alert tones available to update the script, see Configure sounds
for push notifications .
4. Select Update.

Enable Override do not disturb to receive critical alerts
Enable the Override do not disturb to receive critical push notifications feature for ITSM Mobile
Agent.

About this task

With the Override do not disturb to receive critical push notifications feature, ITSM managers can
reach out to their on-call members even when their phones are set to Do Not Disturb mode.
To enable this feature, you must configure a prompt and reprompt property. The reprompt
property resends the pop-up message if the agent didn't initially enable the configuration.

Before you begin

Role required: admin

Procedure
1. Navigate to sys_sg_properties > Mobile properties.
2. On the mobile properties page, switch to Global scope.
3. Select New and create a new property with the following details:
◦ Name: critical_alerts_request_prompt
◦ Type: True/False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3761


<!-- page 3762 -->
◦ Value: true
◦ Mobile Application: Agent
4. Select the Active option.
5. Ensure that the value is True and select Update to create and apply the property.

Note: After creating this property, users must log out and then log back in for the
change to take effect.
6. Log in to the ITSM Mobile Agent application.
7. Select Open Settings, when prompted to Enable Override Do Not Disturb To
Receive Critical Alerts.

Note: If you log in to ITSM Mobile Agent using an iOS device, when prompted to
Enable Override Do Not Disturb To Receive Critical Alerts,
select Allow.
8. On the Do Not Disturb access settings page, select the ITSM Mobile Agent application from
the list.
9. Select the Allow Do Not Disturb toggle button.
10. Confirm by selecting Allow.
The user starts to receive the critical alerts in Do Not Disturb mode.
11. Optional: Configure the following reprompt property if you want to resend the Override do not
disturb to receive critical alerts pop-up for the agents who didn't enable the property initially:
a. Enter sys_sg_properties in the navigation filter.
b. On the mobile properties page, select New and create a property with the name
critical_alerts_request_reprompt and the same configuration as the
critical_alerts_request_prompt property.
Configure critical notification
Configure the list of critical alerts that you want to receive when your mobile device is in Do Not
Disturb mode.

Before you begin

Role required: admin

About this task

By default, the following notifications are set as critical:
• Major Incident Promotion Notification
• Major Incident- ICA SLA Breached
• Major Incident- ICT SLA Warning
Set any notification as critical and receive alerts when your mobile device is in Do Not Disturb
mode.

Procedure
1. Navigate to All > System notification > Push > Push Notification and open the notification that
you want to set as critical.
2. In the selected notification record, select the What to send tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3762


<!-- page 3763 -->
3. Select the info icon (

) next to the Push message field.

4. Select Open record from the Push Notification Message pop-up message.
5. Set the isCritical attribute value to true to set the notification as critical.
If the isCritical attribute value is set to false, the notification isn't treated as a critical alert.
Configure a customized notification for critical alert
Set your custom notifications as critical for ITSM Mobile Agent

Before you begin

Ensure that the custom notification is listed in the notification table.
Role required: admin

Procedure
1. Navigate to All > System notification > Push > Push Notification and open the notification that
you want to set as critical.
2. In the selected notification record, select the What to send tab.
3. Select the info icon (
) next to the Push message field and select Open record from the
Push Notification Message pop-up message.
4. Open the Push Notification Message Content table and paste the return new

sn_itsm_mobile_agt.CriticalPushPayloadBuilder(current, json,
attributes).buildJSON(); attribute in the Push Message Generation field.

5. Create a new isCritical attribute with the attribute type as string.
6. Set the default value for the property as False.
7. In the Push Notification Message table, add the isCritical attribute, and set the value as
true.
Configure a ringtone for critical alerts
Select a preferred ringtone for your critical notifications in ITSM Mobile Agent application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Search and select CriticalPushPayloadBuilder from the list of scripts.
Ensure that the selected script CriticalPushPayloadBuilder is in ITSM Mobile Agent
application scope.
3. Open the CriticalPushPayloadBuilder record and edit the script with your preferred ringtone
name:
var CriticalPushPayloadBuilder = Class.create();
CriticalPushPayloadBuilder.prototype = {
initialize: function(currentGR, json, attributes) {
this.currentGR = currentGR;
this.json = json;
this.attributes = attributes;
},
buildJSON: function() {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3763


