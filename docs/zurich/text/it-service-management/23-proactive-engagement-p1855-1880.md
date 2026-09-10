# Zurich IT Service Management — Proactive Engagement

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1855–1880 of 3857

Sections: Proactive Engagement (p1855)

---

<!-- page 1855 -->
Then the device health metrics score is calculated as:
Normalized value (Minimize) = 74 - ((79 - 55) / (84 - 55) x (74 65)) = 66 (rounded off).
Related topics
Define qualitative mapping for a DEX Score metric
Metric scores in Digital Experience Score​
DEX Score metrics calculation
Data collection frequency for DEX Score metrics
Application and device health metrics are collected daily, weekly, and monthly from employees'
devices, imported into the ServiceNow instance, and displayed on the Digital Experience Score​
dashboard.
Data collection frequency in DEX Score
Period

Collection time

Available on the form

Daily

Daily.

On the third day.

Starts at 12:00 AM UTC (midnight) to
collect and process aggregated metrics
for the day into the ServiceNow instance.

Data for Feb 10, 2024 is available on the
DEX Score dashboard to view on Feb 12,
2024.

For example, the data collection for Feb
10, 2024 starts at 12:00 AM on Feb 11,
2024.
Weekly

Saturday to Sunday

On Mondays of the next week.
For example, the data for the week of
Feb 08—15, 2024 is available on the DEX
Score dashboard to view on Feb 17, 2024.

Monthly All days of the month

On 2nd day of the next month.
For example, the data for the month of
February 2024 is available on the DEX
Score dashboard to view on Mar 2, 2024.

Proactive Engagement
Proactive Engagement assists organizations to improve employee productivity and satisfaction
by proactively detecting and enabling employees to self-solve digital experience issues on a
day-to-day basis.

Proactive Engagement overview
Proactive Engagement solution provides a self-resolution remediation process. Proactive
Engagement eliminates the need for publishing all solution sets.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1855


<!-- page 1856 -->
Get started

Explore

Configure

Learn how Proactive Engagement can
help you with its key features and benefits.

Plan and customize Proactive
Engagement to meet your specific needs.

Use

Reference

See how users can leverageProactive
Engagement framework to resolve issues.

Get additional information
about Proactive Engagement.

Troubleshoot and get help
• Ask or answer questions in the Task Intelligence for ITSM community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Proactive Engagement
It is a solution where the self-resolution remediation process is proactive, seamless, and
consistent without the organization having to publish all solution sets.

Proactive Engagement overview
®

ServiceNow Proactive Engagement helps an organization in improving employee digital
experience, productivity, and satisfaction by proactively enabling employees to self-solve digital
issues they experience on a day-to-day basis. The self-remediation process is seamless and
consistent without the organization having to publish all solution sets.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
https://player.vimeo.com/video/1027809866?
h=be338c1bca&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1856


<!-- page 1857 -->
Proactive Engagement Key features
• Enables employees to self-solve digital experience issues by leveraging the proactive issue
detection and resolution capability of the ServiceNow Digital End-User Experience product.
• Engages employees to provide a seamless resolution experience through remedial actions
(automations) and self-service content.
• Provides quick scaling and consistent support for increasing the range of applications.

ServiceNow Digital End-User Experience integration with Proactive Engagement
ServiceNow Digital End-User Experience empowers IT to take proactive measures and offers
a clear view of end-user applications, devices, and networks. It further along with Proactive
Engagement enables employees to independently resolve issues, troubleshoot, and engage
with the Virtual Agent.
ServiceNow Proactive Engagement is part of the ServiceNow Digital End-User Experience now.
The Proactive Engagement application is installed as part of the Digital End-User Experience
bundle. It assists in defining issue detection rules, resolution content, and engagement settings
that help employees to self-solve digital experience issues by leveraging proactive identification
of issues.
For information on the ServiceNow Digital End-User Experience, see Digital End-User Experience.

DEX Admin/Engagement admin experience
• A DEX or engagement admin is part of the customer’s organization.
• Creates a metric rule for each device or application CI to enable DEX to detect specific issues
and defines the specific alert action. An Alert action defines the action to be taken whenever
a threshold in the metric rule is reached and it supports a configuration of resolution types like
remedial actions, self-help instructions, URL, create incident. For example, when an application
crashes, clearing the application cache or updating the application to the latest version.
• Configure engagement settings such as channels to notify and engage with the organization’s
employees, notification content, and fallback options for unsuccessful resolution of issues.
• Captures and reports insights that reflect the usage patterns of Proactive Engagement in ITSM
Success Dashboard.
• Customize the Proactive Engagement base system resolutions that are shipped by
ServiceNow.
• Manage the Proactive Engagement resolutions through the Proactive Engagement workbench.

Note: The Engagement Admin role is required to add an alert action.
Employee experience
• Employee is a part of the customer's organization.
• When an employee experiences an issue for which the metric rule and resolution is already
configured, the employee is proactively notified and engaged and offered a resolution for
the issue in real-time over the configured engagement channel. The employee engagement
occurs as soon as the issue is detected and even before the employee reaches out to the
helpdesk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1857


<!-- page 1858 -->
• The employee can be more productive and efficient after virtually engaged while self-solving
issues. It also reduces the number of incidents and load on agents due to this seamless digital
experience.
• Virtual Agent installation and integration with a third-party messaging application to enable
push notifications for proactive employee engagement.

Proactive issue detection and Resolution
1. ServiceNow Digital End-User Experience application proactively detects a digital experience
issue on an employee device by monitoring the metric rule threshold breach and creates an
experience issue.
2. Proactive Engagement validates the experience issue and sends a notification (based on
the notification settings) to the employee through configured channels such as Virtual Agent
on Employee Centre/Service Portal, integration with any messaging application such as MS
Teams. The employee can choose to accept help based on this notification or ignore it.

Note:
◦ When the employee accepts help, the employee is engaged through the configured
engagement channel.
◦ Currently, only Virtual Agent is the supported configured channel to send notifications
to the employee.
3. Proactive Engagement retrieves the configured proactive resolution for the metric rule and
engages the employee by providing solutions such as URLs, self-help instructions, or executes
the relevant remedial action on the employees device with their consent.
◦ If the resolution has successfully resolved the issue, the engagement is marked as
successful.
◦ If the resolution has not resolved the issue, the employee is given fallback options such as
incident creation or will be connected to an agent.

Note: Fallback options are configured by the DEX or Engagement admin.
The ServiceNow Proactive Engagement provides base resolution content. You can create your
own resolution content as well. For more information, on the base resolutions, see Proactive
Engagement solution.

Configuring Proactive Engagement
Configure Proactive issue detection rules and resolutions so that employees can self-solve
digital issues seamlessly.

Configuration overview
The Proactive Engagement application helps you to configure and provide instructions as
remedial actions. These remedial actions act as self-help instructions to resolve their digital
issues proactively.
Setting up Proactive Engagement
Setting up Proactive Engagement enhances the issue resolution capabilities of the organisation
to help employees resolve their digital experience issues.

Before you begin

Note: Proactive Engagement integrates with ServiceNow DEX to proactively detect the
digital experience issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1858


<!-- page 1859 -->
• Activate the Glide Virtual Agent plugin (Id: com .glide.cs.chatbot).
®

• Install the ServiceNow Proactive Engagement application from the ServiceNow Store.
• Activate the Remedial actions framework plugin to use remedial actions as a resolution type.
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
®

• Review the Proactive Engagement application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.

Note:
• To view the Virtual Agent notifications:
◦ Set the system property com.glide.cs.notification_newuser_webclient to True.
◦ Navigate to sys_cs_live_agent_setup.do?
sys_id=f0acbc4c5f091300e6333654de7313c8 and enable the notifications for all
users.
• To ensure no additional Virtual Agent conversations are triggered when an active
conversation with the Virtual Agent:
◦ Enable the system property
sn_pren.continue_engagement_if_user_is_in_active_VA_conversation to ensure
that no new Virtual Agent conversations are triggered when there's already an active
conversation with Virtual Agent.
When you are in an active conversation with the virtual agent, if a new conversation
is triggered, an alert is created and an experience issue is created. Enabling this
system property ensures to close the experience issue to close_skipped state. All the
close_skipped experience issues will be triggered again if the issue still persists after
72 hrs.
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Proactive Engagement application (com.snc.proactive_engagement) using the filter
criteria and search bar.

Note: You can search for the application by its name or ID. If you cannot find the
®

application, you must request it from the ServiceNow Store. In the list next to the Install,
the available versions are displayed.
3. Select a version from the list and select Install.

Note: Any dependencies that are installed along with the application are also listed.
4. If you are prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1859


<!-- page 1860 -->
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Configuring Proactive Engagement resolutions with DEX
Metric rules help the organization by setting the criteria and trigger alerts when the device or the
application monitored deviates from the specified metrics.

Before you begin

Set the resolutions to help you proactively resolve the digital issue using the ServiceNow
Digital End-User Experience. For details on the installation of the Digital End-User Experience
application, see Install Digital End-User Experience.
Role required: admin

Procedure
1. Navigate to All > SOW > DEX Administration > Metric rules > Create metric rule.

2. Select the device or type of application that you want to monitor and detect issues in the CI
selection window.
For more information on CI selection, see Specify the configuration item for metric rules.
3. Select Next.
4. Select the metric and criteria to create an alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1860


<!-- page 1861 -->
For more information on Alert criteria, see Define alert metric criteria.
5. Select Next.
6. Update the alert action to define the resolution for the metric rule.

Note: Remedial actions that require entering parameters are not supported and you
won't be able to select when the resolution type is Remedial Action.
7. Select Next.
8. Select the type of resolution and update the resolution details.
For more information about the different types of resolution, see Resolution for Proactive
Engagement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1861


<!-- page 1862 -->
9. If you select resolution type as remedial action that has input parameters, enter the Advanced
settings for each of the input parameters of the selected remedial action.
For more information about the Advanced settings, see Input parameters for Remedial action
in Proactive Engagement.
10. Select Continue to Engagement Settings.
11. Update the Engagement settings.

Note:
◦ For information on updating the Engagement Settings, see Engagement Settings for
Proactive Engagement
◦ Choose Desktop Assistant as the notification channel to notify the users with any selfhelp instructions. For more information, see Desktop Assistant notifications
12. Select Add Resolution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1862


<!-- page 1863 -->
13. For defining the name and activation, see Metric rule triggering Proactive Engagement through
alerts

Note: Every time the criteria set in the metric rule is met, it triggers the resolution and
helps you resolve the issue.
Configuring Email as a notification channel for Proactive Engagement
Email notification is one of the notification channel along with Desktop assistant and Virtual
agent when you choose self-help instructions or URL as the resolution type.
Email notification is the new notification channel supported for the self-help instructions and URL
resolution type. To enable email notification channel as an option in SOW and in core UI, mark
the Active field True in the sn_pren_channel_configuration table.
Once email notification is chosen while setting the engagement settings, a new field, Choose
email notification is enabled, this field helps you choose the email template. Proactive
engagement notification option is the out of box email notification template created in the
sysevent_email_action table. You can customize the email template according to the
required subject, email body, and so on. To customize the email subject, use the field issue
reference name from the issue registry template sn_pren_issue_registry_template].
Leverage the out of the box platform capability to configure and send an email notification. The
created experience issue is automatically set to closed complete once the notification is sent.
For more information on how to configure an email template and set up the notification, see the
links in the related information. For more information on creating an email notification, template
and layouts see, Email and SMS notifications .
User Criteria Settings
User criteria settings details the settings in Proactive Engagement to group the users for certain
conditions.
You can access user criteria settings through All > Proactive Engagement > User Criteria
Settings. User criteria includes or excludes a user or certain group of users from receiving PE
notifications. User criteria helps in grouping the users based on certain conditions such as role,
location, department, or Business unit and so on. Once the user criteria is created, the users are
excluded or included as per the defined criteria. As a prerequisite, set the role to Engagement
admins sn_pren.engagement_admin to be able to set the user criteria. The criteria for user
settings are applied at the framework level rather than the use case level. Once these criteria are
established, notifications will be enabled/disabled corresponding to the criteria set.
You can access any pre-defined user criteria. To know more, see User criteria diagnostics for
Knowledge Management . To create a new user setting, fill the following details:

Field

Description

User Criteria

User Criteria name

Order

Number of user

Type

Inclusion/Exclusion criteria

Note: Exclusion always takes
precedence over Inclusion.
Active

Yes/No

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1863


<!-- page 1864 -->
Using Proactive Engagement
Proactive Engagement helps you in proactive detection of digital issues and provides self-help
instructions to resolve them.
Employee engagement experience through Proactive Engagement
This experience details the employee engagement through the Proactive Engagement
application.
Every Proactive Engagement trigger creates an experience issue record. When the metric rule
with a Proactive Engagement resolution is triggered, it creates an experience issue record to
start engaging with the end user. Once the engagement is triggered, you get a notification for the
issue. If the end-user consents for help, they are engaged over a Virtual Agent to self-solve the
issue. Once the resolution is executed successfully, end-user confirmation is requested. If the
issue is not resolved, the configured fallback option is provided. If the issue is resolved, the enduser feedback on the experience is requested.

Agent experience through Proactive Engagement
This experience details the agent experience through the Proactive Engagement application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1864


<!-- page 1865 -->
Proactive Engagement executes a set of resolutions on the end-user device. If the resolution
doesn’t resolve the issue, as one of the fallback options, the incident created reaches the agent.
The agents can refer to the interaction summary which includes the resolution executed and the
outcome or state of the execution.
The reason for failure could be resolution execution failure or if the employee marks the issue
as unresolved and requires further assistance. This interaction summary is available in the work
notes of the incident record created as a fallback.
The agents can refer to the Experience Issue that is tagged as the Origin of the Incidents created
as a fallback.
Proactive Engagement solution
The base system solution detects and enables you to resolve high disk usage issues by
providing a detailed self-help instruction specific to the operating system.
There are two base system resolutions provided by the ServiceNow Proactive Engagement.
• Check system disk usage for Windows
• Check system disk usage for Mac
These base system solutions can be accessed from the metric rule tab in the DEX
Administration. These metric rules are created to monitor the disk usage on end-user devices
and triggers the alert action when it exceeds the set criteria. To use this metric rule for issue
detection and employee engagement to enable self-remediation, we need to activate the rule.
1. Navigate to Workspaces > Service Operation Workspace > DEX Administration > Metric
rules.
2. Select Name the rule.
3. Select Active under rule status.
Metric rule triggering Proactive Engagement through alerts
Metric rules create an alert based on its trigger criteria.
Alert actions are triggered when an alert is created in the specified criteria. You can create an
alert based on the values shared in the system properties. The system properties can be set
as conditions based on which the alert action is triggered. Applications and devices need a
different set of system properties to be set. The alert action is triggered when an alert is created
based on the specified criteria and the conditions met. Through system properties, you can
customize the values of these conditions.
• Alert action for this metric rule is not triggered in the last 72 hours for the user.
• Fewer than 100 users are impacted for this metric rule within an 8 hour window.

System property

Condition

Description

sn_pren.resolution_freeze_period
Metric rule not
The duration (in
triggered in the last 72 hours) for imposing
hours (default).
a freeze period for
a specific user for
any unique metric
rule configured
in Proactive
Engagement. Set

Type

integer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1865


<!-- page 1866 -->
System property

Condition

Description

Type

this value to zero to
disable the rule.
sn_pren.device_resolution.user_limit_per_throttling_window
Fewer than 100 users Maximum number
integer
(default) are impacted. of users for which a
Proactive Engagement
device-related
resolution is triggered
within a defined time
period. The value
of the time period
configured in property
sn_pren.device_resolution.throttling_window_duration.
sn_pren.device_resolution.throttling_window_duration
Within an 8-hour
The time period
integer
(default) window
in minutes within
which a Proactive
Engagement
device-related
resolution is throttled.
This resolution
is throttled if the
impacted number
of users exceed the
value in property
sn_pren.device_resolution.user_limit_per_throttling_window.
sn_pren.application_resolution.user_limit_per_throttling_window
Fewer than 100 users Maximum number
string
impacted
of users for which a
Proactive Engagement
application-related
resolution is triggered.
This resolution is
triggered within
a defined time
period (value of
the time period
configured in property
sn_pren.application_resolution.throttling_window_duration).

sn_pren.application_resolution.throttling_window_duration
Within an hour
The time period
integer
window
in minutes within
which a Proactive
Engagement
application-related
resolution is throttled.
This resolution is
throttled when the
impacted number
of users exceed the
value in property
sn_pren.application_resolution.user_limit_per_throttling_windo
sn_pren_channel_configuration
Enable/Disable the
notification channels
required to notify the
users.

The notification
channels can be
enabled or disabled

string

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1866


<!-- page 1867 -->
System property

Condition

Description

Type

on the wizard
experience by the
admins to choose the
notification channel.
These notification
channels are listed
only when the related
plugin is installed.

Alert closure in Proactive Engagement
There are different methods followed for closing the alerts in Proactive Engagement for devices
and applications.
• Devices: Alerts generated from Metric rule triggered for devices, are closed once Proactive
Engagement helps the impacted users to successfully resolve their issue.
• Applications: Alerts generated from Metric rule triggered for applications are not closed.
Proactive Engagement life-cycle management
The Proactive Engagement application enables you to work in the life-cycle model to manage
solutions that you own and to view solutions that may have an impact on services or products
that you care about.
You can access the Proactive Engagement workbench by navigating to All > SOW > Proactive
Engagement workbench.
The Proactive Engagement Workbench provides an overview of all the Proactive Engagement
solutions available on an instance. It displays the details of all the solutions available, deployed,
and not deployed.
Deployed solutions, where the engagement settings are configured and are used within the
organization. Proactive Engagement resolutions created through the metric rules are deployed
by default. For more information, see the Configuring Proactive Engagement resolutions with
DEX. Deployed solutions can be deployed as custom or original. Solutions created by using the
metric rules are original. You can customize the resolution by selecting the deployed record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1867


<!-- page 1868 -->
and choosing a custom resolution. Engagement settings for the not deployed solutions are not
configured.

Review solutions for the available updates
For each custom solution where an update is available, the updates can be reviewed by either
selecting Review update available on the card or when you click on the record to open and
access the record. Review update provides a comparison between the updated and customized
solutions for users to make an informed decision on the next steps. The following actions can be
performed:
• Auto update Removes reference to the custom resolution and will be up to date with the
provider solution. The update status is changed to Up to date.
• Manual update Users go back and manually make any changes required for the solution.
The solution update status updates to Manual update pending. Once the changes are done
select Solution updated option either on the card or on the Review update page to move the
solution update status to Up to date.
• Ignore update - The update will be ignored, and the solution update status will move to Up
to date.
Proactive Engagement will be triggered only for the deployed solutions. There are different State
in the deployed solutions.
• Update available New updates for out-of-the-box deployed solutions are available.
• Update up-to-date Solution shipped by ServiceNow and is up to date.
• Update ignored Available updates in the provider out-of-the-box solution is ignored.
• Pending manual update Available updates were reviewed and manually updated the solution.
For custom resolutions, you can update them automatically or manually update them. Once the
updates are completed, the status changes to Update up-to-date. The Update provider data
updates or refreshes the solutions in the Proactive Engagement workbench.

Proactive Engagement reference
Reference topics provide additional information about the cards, lists, and forms that help you
configure and use Proactive Engagement.
Components installed with Proactive Engagement
Several types of components are installed with activation of the Proactive Engagement
application (com.snc.self_remediation_framework), including user roles.

Roles installed with ServiceNow Proactive Engagement

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Roles installed with Proactive Engagement
Role title [name]

Contains Roles

Description

sn_pren.solution_provider

This persona is
sn_pren.issue_registry_template_write responsible for
creating the Issue

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1868


<!-- page 1869 -->
Roles installed with Proactive Engagement (continued)
Role title [name]

Contains Roles

Description

registry template,
Resolution,
and Resolution
prompt records.
sn_pren.engagement_admin

sn_pren.issue_registry_write
sn_pren.experience_issue_read
sn_pren.issue_registry_template_write

• This persona is
responsible for
deploying the
Issue registry
templates.
• Configuring the
engagement
settings,
notification
channels and
fallback.
• Create a
custom
resolution and
notification
for an existing
template.

Note:
SOW user
role is
required to
access the
Proactive
Engagement
workbench.
sn_pren.issue_registry_template_write None

Can create/edit/
read/delete the
• Issue Registry
Template
records
• Resolution
records
• Notification
Content
records

sn_pren.issue_registry_write

None

Can create/edit/
read/delete the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1869


<!-- page 1870 -->
Roles installed with Proactive Engagement (continued)
Role title [name]

Contains Roles

Description

• Issue Registry
• Issue Registry
Template
records
• Resolution
records
• Notification
Content
records
sn_pren.solution_provider

None

Can read
Experience Issue
records

Tables installed
Table

Table name

Description

Proactive
sn_pren_provider
engagement
provider

Record used to maintain the details of
the DEX solution provider such as name
and provider code. As of today, we only
have Servicenow as the provider.

Issue
Registry
Templates

sn_pren_issue_registry_template

This table stores all the end-user
issues for which a customer could
potentially engage the end-user to selfsolve in case of an issue occurrence.
Issue registry template records can
either come from a third-party DEX/
DEX provider or be created directly
by the customer, with a reference to
the provider. This table specifies the
resolution for the issue and how the end
user should be engaged, and it holds
descriptive fields for the issue, such
as Short Description and Description.
Additionally, it contains a Unique
Issue Code, which is a combination
of the Provider Code and Issue Code,
ensuring uniqueness across all template
records for a customer.

Issue
Registries

sn_pren_issue_registry

This table holds all the issues that the
customer has chosen for end-user selfsolution. An Issue Registry record is
created by deploying the Issue Registry
template record. Simply having the
Issue Registry template record does not
make the issue eligible for self-solving;

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1870


<!-- page 1871 -->
Table

Table name

Description

the Engagement Admin must deploy the
template to create the Issue Registry
record.
The table stores all the configurations
deployed by the customer, including
details on whether a custom resolution
and notification were configured by
the customer, engagement settings,
notification channel settings, fallback
options, and template parity status.
Resolutions

sn_pren_resolution

Record used to store the resolutions
configured to be executed when a
threshold breach occurs, as per the
metric rule configuration. This record
could include a self-help instruction with
defined steps, a URL with a specified
link, a remedial action with a reference
to the configured remedial action, or of
type incident creation.

Notification
content

sn_pren_notification_content

Record used to maintain the notification
settings such as notification prompt
message and resolution consent prompt

Experience
Issues

sn_pren_experience_issue

Experience issue record is created once
the engagement is initiated with the
end-user. This stores data such as user
info, State of the resolution execution,
end reason state, fallback result (if
triggered), investigative details, etc. This
record will be the source of truth for any
proactive engagement with end-user.

Experience
issue alert

sn_pren_experience_issue_m2m_alert Record used to create a log of the alert
that caused experience issue. This is
a mapping table between alert and
experience issues, with details on count
of throttled users and throttling reason.

Resolution for Proactive Engagement
Resolution is information provided to the end user to self-solve the issue, or execute a remedial
action on the end user device.
The resolution information is provided to the end user through the following methods:

Resolution Type

Description

Remedial Action

Remedial action triggers an action on the end
user device.

Create Incident

Create incident to resolve the issue where
ServiceNow Digital End-User Experience will
detect the issue based on the metric rule and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1871


<!-- page 1872 -->
Resolution Type

Description

create an incident with details so the agent
can resolve the issue.
Self-help instructions

Set of instructions for the user to follow and
resolve the issue.

URL

Link to any page (including KB articles) with
details on how to resolve the issue.

Remedial action
Remedial action is a framework. We need to install the remedial action framework to select
remedial action as a resolution type.
Remedial action allows you to trigger an action on the end user device. With the user’s consent,
we share different remedial action types to resolve the issue.
• Execute an action on the end user device. The user can create their own remedial action.
• If there are any existing Virtual Agent topics, these can be populated as a resolution to the end
user.
• When the metric rule criteria is met, a catalog item is displayed for the user to fill and submits.
For creating your own remedial action, see Configure the Remedial Actions Framework.

Note: You can now enable the Remedial action execution without the Virtual agent
dependency.
Input parameters for Remedial action in Proactive Engagement
Additional input parameters are listed based on the type of remedial action chosen. Advanced
settings for each of those input parameters list the information of the input parameters of the
selected remedial action.
Depending on the remedial action chosen from the list, specific input parameters are listed
which will fetch a static input. To fetch data from the table, enable and configure the advanced
settings of the input parameters to capture the data during the run time. Find below the details
of all the advanced settings of one of the out-of-the-box remedial action input parameters for
Clear application cache. On saving the resolution, we should save parameter information in the
sn_pren_resolution table remedial_action_parameters field

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1872


<!-- page 1873 -->
Input parameter

Description

App name

Name of the application for clearing cache.

Process name

Name of the process that needs to be shut
down.

Cache path

Folder path to clear the cache files of the
specific application.

Only text, boolean, or choice are the supported format for the input parameters. The Boolean
format do not have the advanced configuration option.

Note: Check the alert action of Proactive Engagement to configure the input parameters.
Currently, input parameters for remedial action cannot be configured from the Proactive
Engagement workbench or the Core UI.
Engagement Settings for Proactive Engagement
It allows you to configure and define how an end user should be engaged to self-solve the issue.
Virtual Agent and Desktop Assistant are the notification channels used to notify the user. As
a fallback, an incident can be created, or the user is routed to a live agent. The following field
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1873


<!-- page 1874 -->
names are displayed in the Engagement settings tab while creating a Proactive Engagement
resolution from the metric rules.

Field name

Description

User engagement

Decide if this resolution needs
end user engagement or
could be executed silently
when triggered.

Options

• Engage user
• Silent execution (remedial
action)
• Notification only (self-help
instructions and URL).

Note: Silent execution
enables all users,
including those without
an ITSM Pro license, to
perform remedial actions
on their devices, even if
the virtual agent is not
available.
Engagement channel

Select the channel of
engagement.

Virtual Agent

Note: Install
com.glide.cs.chatbot
to avail virtual agent
as the engagement
channel.
Notification channel

User Notification message

Resolution needs consent

Channel where the
user will be proactively
notified. Configure the
notification channels from
sn_pren-channelconfiguration from
Metric rule triggering
Proactive Engagement
through alerts. This channel
is applicable only if the
engagement type is
Notification only.

• Virtual Agent
• Desktop Assistant
• Email Notification

Details the message that
should be sent to engage the
user.

Custom message

Decide if user's consent is
needed for the resolution
before executing any action
on the end-user device. This
option is available only for

Yes/No

Example: Your device is
running low on disk space.
Would you like help to free up
some space?

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1874


<!-- page 1875 -->
Field name

Description

Options

Remedial Action and Create
Incident resolution types.
User consent message

Choose email notification

Details the message where
user consent is required.

Custom message
Example: Can we free up
some disk space using
Windows disk clean-up? This
will only clear temp files and
recycle bin. Your work will not
be affected in any way.

This option is applicable
Proactive Engagement
only when we select selfnotification.
help instructions or URL and
select Email notification as the
notification channel.

Note: Choose email
notification is visible only
for notification channel
Email.
Issue display name

This name will be used to
identify the issue when
communicating with the end
user.

low disk space/disconnected
Zscaler

Fallback when selfremediation is not
successful.

Select the fallback option that
will be triggered when the
resolution fails.

Create incident/Route to live
agent

These engagement settings are furnished when you configure the metric rule. To configure a new
metric rule, see Configuring Proactive Engagement resolutions with DEX.
Limitations in Proactive Engagement
You must be aware of a few limitations when you create a new metric rule and choose the
remedial action.
Limitations in Proactive Engagement:
• Remedial action resolution type cannot be used if the remedial actions require any runtime
parameters.
• Actionable notifications for LLM will be supported from WP3 and Xanadu. However, In
Vancouver, the portal with NLU will get notifications.
Proactive Engagement use cases
This section lists some of the most common use cases in Proactive Engagement that are
designed for seamless implementation and quick results. You can deploy these use cases that
are tailored to some of the common challenges seen as required by your organization to meet
your specific needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1875


<!-- page 1876 -->
Use case name

Description

Low disk
space Disk cleanup
using
windows disk
clean-up

The slow
performance of
the system is due
to insufficient
disk space. It
can be resolved
by freeing up
disk space
and restoring
optimal system
performance
through
Windows Disk
Cleanup as a
remedial action.

Symptom

• Low
performance
• Unable to
install system
updates

Configuration
details

• Configuration
Type: Metric
rule
• Threshold
condition:
Device
disk space
is greater
than the set
threshold.
• OS: Windows

Resolution

Clearing
unwanted files/
cache using
windows disk
cleanup
• Internet cache
files
• System error
memory dump
files
• System error
mini-dump files
• Temporary files
• Windows error
reporting

Low disk
space self-help
instructions
to clean up
disk space

Poor battery
health Catalog
request
for battery
replacement

System
reboot Notification
to remind
system
reboot

The slow
performance of
the system is due
to insufficient
disk space. It
can be resolved
by freeing up
disk space
and restoring
optimal system
performance
through self-help
instructions to
clean up disk
space
The battery
performance
is low due to
a deteriorated
battery. This
issue can be
resolved by
raising a battery
replacement
request with the
user consent.
Notify the user
of a required
system reboot
which is pending
over a time
period.

• Low
performance
• Unable to
install system
updates

• Configuration
Type: Metric
rule
• Threshold
condition:
Device
disk space
is greater
than the set
threshold.

Provide end
users with selfhelp instructions
to clean up disk
space.

• OS: Mac

• Fast discharge
of the device
battery and
poor charging
rate.
• Overheating of
the device

• Slow system
performance
• incomplete
software
updates

• Configuration
Type: Flow
• Threshold
condition:
Battery health
status is poor.

Submit a catalog
request to
replace the
deteriorated
battery.

• OS: Mac and
Windows

• Configuration
Type: Metric
rule

Notify the end
user to reboot
their device.

• Threshold
condition:
System up-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1876


<!-- page 1877 -->
Use case name

Description

Symptom

Alert users
when the VPN
connection
remains
disconnected
for an extended
period.

Resolution

time is greater
than the set
threshold.

Device not being
rebooted for
a long time,
causing pending
installations to
be stalled or
applications to
run improperly in
the background.
Disconnected
Zscaler Self-help
instructions
to connect
to Zscaler

Configuration
details

• OS: Mac and
Windows

Inability to
access any
application in a
secure, private
network.

To confirm
secure access
to organization
resources and
maintain security
compliance.

• Configuration
Type: Metric
rule
• Threshold
condition:
Zscaler is
disabled.

Provide end
users with selfhelp instructions
to reconnect to
Zscaler.

• OS: Mac and
Windows

These
instructions
work for any
installed/cloud
VPN application.
• Windows - any
installed VPN
solution
• Macintosh any installed/
cloud VPN
solution
Zoom freeze

Alert the users
Application
when the number freeze
of application
freezes is greater
than the set
threshold. This
can be resolved
by clearing the
application
cache and
reinstalling the
application.

Clear app cache
• Configuration
and restart the
Type: Remedial
app.
action
• Threshold
condition:
• OS: Mac/
Windows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1877


<!-- page 1878 -->
Symptom

Configuration
details

Use case name

Description

Google
chrome
freeze

Alert the users
Application
when the number freeze
of application
freezes is greater
than the set
threshold. This
can be resolved
by clearing the
application
cache and
reinstalling the
application.

Clear app cache
• Configuration
and restart the
Type: Remedial
app.
action

Microsoft
Alert the users
Application
classic
when the number freeze
Teams freeze of application
freezes is greater
than the set
threshold. This
can be resolved
by clearing the
application
cache and
reinstalling the
application.

Clear app cache
• Configuration
and restart the
Type: Remedial
app.
action

Microsoft
Alert the users
Application
Teams freeze when the number freeze
of application
freezes is greater
than the set
threshold. This
can be resolved
by clearing the
application
cache and
reinstalling the
application.

Clear app cache
• Configuration
and restart the
Type: Remedial
app.
action

Microsoft
Outlook
freeze

Clear app cache
• Configuration
and restart the
Type: Remedial
app.
action

Alert the users
Application
when the number freeze
of application
freezes is greater
than the set
threshold. This
can be resolved
by clearing the
application
cache and
reinstalling the
application.

Resolution

• Threshold
condition:
• OS: Mac

• Threshold
condition:
• OS: Mac

• Threshold
condition:
• OS: Windows

• Threshold
condition:
• OS: Windows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1878


<!-- page 1879 -->
Use case name

Description

Microsoft
Teams crash

Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.

Microsoft
Outlook
crash

Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.

Zoom crash

Microsoft
Teams crash

Symptom

Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.
Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.

Configuration
details

Resolution

Reinstall/
update to the
latest version
of Microsoft
• Threshold
Teams via the
condition:
"execute Jamf
Microsoft
policy" remedial
Teams crashes action with
multiple times. corresponding
policy id.
• OS: Mac
• Configuration
Type: Metric
rule

• Configuration
Type: Metric
rule
• Threshold
condition:
Microsoft
Outlook
crashes
multiple times.

Reinstall/
update to the
latest version
of Microsoft
Outlook via the
"execute Jamf
policy" remedial
action with
corresponding
policy id.

• OS: Mac

• Configuration
Type: Metric
rule
• Threshold
condition:
Zoom crashes
multiple times.
• OS: Mac

• Configuration
Type: Metric
rule
• Threshold
condition:
Microsoft
Teams crashes
multiple times.

Reinstall/ update
to the latest
version of
Zoom via the
"execute Jamf
policy" remedial
action with
corresponding
policy id.

Provide self-help
instructions to
the end user
to reinstall/
update to the
latest version of
Microsoft Teams.

• OS: Mac

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1879


<!-- page 1880 -->
Use case name

Description

Microsoft
Outlook
crash

Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.

Zoom crash

Symptom

Alert the users
Application crash
when the number
of application
crashes is
greater than the
set threshold.
This can be
resolved by
reinstalling/
updating the
application.

Poor wifi
Alert the user if
connectivity the Wi-Fi signal
strength remains
poor for an
extended period.

• Poor browsing
experience.
• Frequent
buffering on
web or SaaS
applications.

Configuration
details

• Configuration
Type: Metric
rule
• Threshold
condition:
Microsoft
Outlook
crashes
multiple times.

Resolution

Provide self-help
instructions to
the end user
to reinstall/
update to the
latest version
of Microsoft
Outlook.

• OS: Mac

• Configuration
Type: Metric
rule
• Threshold
condition:
Zoom crashes
multiple times.

Provide self-help
instructions to
the end user to
reinstall/update
to the latest
version of Zoom

• OS: Mac

• Configuration
Type: Metric
rule

Alert user to
move closer to
the wifi router.

• Threshold
condition:
◦ Mac - WiFi
RSSI value
◦ Windows WiFi signal
strength
Internet or
wifi is slow for
an extended
period.
• OS: Windows/
Mac

Device Crash Alert users when
the number
of application
crashes is
greater than the
set threshold.
This can be

Device crash

• Configuration
Type: Metric
rule
• Threshold
condition:

Provide self-help
instructions to
the end user to
update their OS,
device drivers,
and uninstall
unnecessary

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1880


