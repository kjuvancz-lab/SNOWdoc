# Zurich IT Service Management — Employee Self-service

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1881–1900 of 3857

Sections: Employee Self-service (p1881)

---

<!-- page 1881 -->
Use case name

Description

Symptom

resolved by
reinstalling/
updating the
application.

Disconnected Alert users
Zscaler
when Zscaler is
disconnected
for an extended
period. This
ensures secure
access to the
organizational
specific
resources
and maintains
security
compliance.

Configuration
details

Resolution

Device crashes applications
multiple times. as proactive
measures to
• OS: Windows/
prevent potential
Mac
device crashes in
the future.
Zscaler is
disconnected

• Configuration
Type: Metric
rule
• Threshold
condition:
Zscaler
disconnected
• OS: Windows/
Mac

Digital End-user Experience Self-service for employees
Digital End-user Experience Self-service (DEX Self-service) enables you to monitor real-time
performance of your devices and applications, and address detected issues by using suggested
resolutions.
https://player.vimeo.com/video/1115663843?
h=9ea04ba52e&badge=0&autopause=0&player_id=0&app_id=58479
The video provides an overview of DEX Self-service, including how to access it and how
employees can use it to resolve common device and application issues independently. It
demonstrates this process with an example of using DEX Self-service from Desktop Assistant.

Get started

Explore

Configure

Explore about Digital Enduser Experience Self-service

Configure Digital End-user
Experience Self-service

.

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1881


<!-- page 1882 -->
Use

Reference

Use Digital End-user Experience
Self-service to resolve the
device performance issues

Reference for Digital Enduser Experience Self-service

Troubleshoot and get help
• Explore resources about Digital End-user Experience Self-service in the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Digital End-user Experience Self-service
Digital End-user Experience Self-service (DEX Self-service) enables you to monitor device health
performance, view detected issues, and use suggestion resolutions to resolve issues.

Digital End-user Experience Self-service overview
With DEX Self-service, you can monitor device health on demand. When issues are detected,
you can address them by using the suggested resolutions. These resolutions can be remedial
actions, self-help instructions, or links to help resources. Additionally, you can initiate device
actions even when no issues are detected to maintain optimal performance of your devices and
applications.
By default, DEX Self-service is inactive in the base system. To activate it, you must enable the
base system issue configurations. For more information, see Enable issue configurations for DEX
Self-service.
You can access Device health check from the following sources:
DEX Self-service sources
Source

Feature

Employee Center

Check device health using Employee Center

Desktop Assistant

Check device health using Desktop Assistant

Now Assist for ITSM Virtual Agent

Check device health using Now Assist for
ITSM Virtual Agent

When you install DEX Self-service, several base system components are automatically installed.
For more information, see Components installed with DEX Self-service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1882


<!-- page 1883 -->
DEX Self-service workflow for employees
1. Access Device health check from any of the following sources:
◦ Employee Center. See Check device health using Employee Center.
◦ Desktop Assistant. See Check device health using Desktop Assistant.
◦ Now Assist for ITSM Virtual Agent. See Check device health using Now Assist for ITSM
Virtual Agent.
2. (Optional) If there are multiple devices, select a device to check its health.
3. View the health of the device by performance category (Good, Average, or Poor). For more
information about how device health is calculated, see Device heath check calculation.
4. (Optional) Trigger device actions for optimal device performance, even when no issues are
detected.

Note: You can access the Device actions tab from the Employee Center or Desktop
Assistant.
5. Resolve device health issues by using issue-specific suggested resolutions. A resolution can
be any of the following:
◦ Remedial action
◦ Self-help instruction
◦ Link to help resources
6. Proceed with one of the following actions based on the resolution status:
◦ If the resolution is successful, select Yes or No to the feedback question to confirm if the
resolution helped address the issue. If you select No, a fallback action is provided.
◦ If the resolution fails and there’s no improvement in device performance or if you mark an
issue as unresolved, a fallback action is provided.

Note: DEX administrators can configure fallback options as part of the issue
configurations.

DEX Self-service benefits
DEX Self-service benefits
Benefit

Feature

Users

Monitor the health of devices and
applications.

Using Digital Enduser Experience Selfservice

Employees

Monitor device health issues and take
suggested steps to improve performance. If
a resolution doesn’t improve performance,
fallback options guide you to the next steps to
be taken.

Using Digital Enduser Experience Selfservice

Employees

Maintain optimal device and application
Using Digital Endperformance by triggering device actions even user Experience Selfwhen no issues are detected.
service

Employees

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1883


<!-- page 1884 -->
DEX Self-service benefits (continued)
Benefit

Feature

Users

Configure device health categories, issues,
and device actions.

Configuring Digital
End-user Experience
Self-service

DEX Admin

What to explore next
To learn more about configuring and using Digital End-user Experience Self-service, see:
• Configuring Digital End-user Experience Self-service
• Enable issue configurations for DEX Self-service
• Using Digital End-user Experience Self-service
• Check device health using Employee Center
• Check device health using Desktop Assistant
• Check device health using Now Assist for ITSM Virtual Agent

Configuring Digital End-user Experience Self-service
The DEX Self-service plugin gets installed automatically with the Digital End-User Experience
application. This plugin provides the Device health check capability, enabling employees to
check device health based on configurations set by DEX admins.

Configuration overview
1. Configuring Digital End-User Experience
DEX Self-service gets installed automatically when you install the Digital End-User Experience
application.

Important: DEX Self-service is inactive in the base system. To activate DEX Selfservice, enable the base system issue configurations. For more information, see Enable
issue configurations for DEX Self-service.

2. Activate Proactive Engagement resolutions for DEX Self-service
Activate base system Proactive Engagement resolutions to enable end users to self-solve
issues using DEX Self-service.
3. Enable issue configurations for DEX Self-service.
Enable base system issue configurations for DEX Self-service to enable end users to self-solve
issues using the Device health check capability.
4. Customize DEX Self-service issue configurations.
Link issues with device health subcategories and categories and define metrics evaluation
criteria and issue resolutions. Based on these configurations, issues and their related
resolutions display in DEX Self-service. You can access DEX Self-service through the Employee
Center, Desktop Assistant, or Now Assist Virtual Agent.
5. Configure DEX Self-service categories and subcategories
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1884


<!-- page 1885 -->
Configure or customize device health categories and subcategories for issues to enable end
users to troubleshoot and resolve issues.
6. Configure DEX Self-service device actions
Configure device actions that end users can initiate from DEX Self-service even when no
issues are detected.
Activate Proactive Engagement resolutions for DEX Self-service
Review and activate base system Proactive Engagement resolutions to enable end users to selfsolve device and application issues by using DEX Self-service.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to All > Proactive Engagement > Issue Registries.
2. Open an issue registry record.
3. Select the Active check box.
4. Select Update.
For more information about Proactive Engagement, see the Proactive Engagement
documentation.
Enable issue configurations for DEX Self-service
Enable issue resolutions for DEX Self-service to enable end users to self-solve device,
application, and connectivity issues.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to All > Digital Experience Self-Service > Issue Configurations.
The base system issue configurations are displayed.
The default value for the Enabled in EC self-service and Enabled in DEX Now Assist topic
columns is false.
2. Open an issue configuration record.
3. Select the Enabled in EC self-service check box to enable the issue in Employee Center portal
and Desktop Assistant.
4. Select the Enabled in DEX Now Assist topic check box to enable the issue in Now Assist for
ITSM.
The ITSM Virtual Agent enables you to check your device's health using prebuilt LLM topic
conversation. For more information, see ITSM Virtual Agent pre-built LLM topics.
5. Verify that the issue code in the Resolution field is active.
a. Select the reference icon near the Resolution field.
b. On the Issue Registry preview pop-up, confirm that the Active check box is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1885


<!-- page 1886 -->
c. If the Active check box isn’t selected, activate the issue resolution.
For information about how to activate an issue resolution, see Activate Proactive
Engagement resolutions for DEX Self-service.
6. Select Update.
Customize DEX Self-service issue configurations
Customize device health categories, metric evaluation criteria, and resolutions for issues, to
make sure that appropriate resolutions display in DEX Self-service and enable end users to selfsolve issues.

Before you begin

Role required: sn_dex.admin

About this task

Device health issues and metric details displayed in DEX Self-service are based on evaluation
criteria configured in issue configuration records. If metrics in the evaluation criteria of an
issue resolution are defined as Poor, the corresponding device health subcategory is also
marked as Poor. DEX Self-service displays resolutions for subcategories as configured in issue
configuration records.
For information about how device health is calculated, see Device heath check calculation.

Procedure
1. Navigate to All > Digital Experience Self-Service > Issue Configurations.
2. Open the issue configuration record that you want to modify.
3. Update the fields on the form.

Note: For more information on DEX Self-service issue configuration form field
descriptions, see DEX Self-service issue configuration form.
4. Select Update.
Create DEX Self-service issue configurations
Create issue configurations for DEX Self-service to self-solve issues specific to your organization
that are not included in the base system resolutions.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to All > Digital Experience Self-Service > Issue Configurations.
2. On the DEX self-service issue configurations page, select New.
3. Enter information about the issue, evaluation criteria, and resolution in the issue configuration
form fields.
For descriptions about the issue configuration form fields, see DEX Self-service issue
configuration form.
4. Verify that the issue code in the Resolution field is active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1886


<!-- page 1887 -->
a. Select the reference icon (

) near the Resolution field.

b. On the Issue Registry preview pop-up, confirm that the Active check box is selected.
c. If the Active check box isn’t selected, activate the issue resolution.
For information about how to activate an issue resolution, see Activate Proactive
Engagement resolutions for DEX Self-service.
5. Select Submit.
Configure DEX Self-service categories and subcategories
Configure or customize device health categories and subcategories for issue configurations to
enable end users in your organization to self-solve device, application, and connectivity issues
by using DEX Self-service.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to All > Digital Experience Self-Service > Device Health Categories.
2. Select New to add a category or open an existing category to modify its details.
3. Enter relevant information in the DEX Self-service category form fields.
For descriptions about the DEX Self-service category form fields, see DEX Self-service
categories form.
4. Select Submit to add new categories, and Update to modify existing categories.
Configure DEX Self-service device actions
Configure device actions that end users can trigger to maintain optimal device and application
performance even when no issues are detected.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to All > Digital Experience Self-Service > Device Actions.
2. Select New to add a device action or open an existing device action record to modify its
details.
3. Enter relevant information in the DEX Self-service device action form fields.

Note: For more information on DEX Self-service device actions form field descriptions,
see DEX Self-service device actions form.
4. Select Submit to add new device actions, and Update to modify existing device actions.

Using Digital End-user Experience Self-service
Use Digital End-user Experience Self-service to monitor device performance using the Device
health check feature available in Desktop Assistant and Employee Center, or conversationally
through the Now Assist for ITSM Virtual Agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1887


<!-- page 1888 -->
You can access Device health check from the following sources:
• Employee Center. See Check device health using Employee Center.
• Desktop Assistant. See Check device health using Desktop Assistant.
• Now Assist for ITSM Virtual Agent. See Check device health using Now Assist for ITSM Virtual
Agent.
You might be unable to access the Device health check widget or page due to the following
reasons:
• Device not assigned: DEX monitored devices aren’t assigned to you.
• The device is offline: The device list drop-down is inactive and you see a message that the
device is currently offline.
• The device is online but no recent data is available: You see a message notifying you that
Device health check is unavailable and are prompted to retry later or open an IT ticket.
Check device health using Employee Center
Monitor and resolve common device performance issues independently by using Device health
check through the Employee Center portal.

Before you begin

Role required: none

Procedure
1. Open Device health check from Employee Center using one of the following options.
Option

Steps to open Device heath check

a. Open the Employee Center portal.
b. Navigate to Technology Services > Hardware
or Technology Services > Software.

Hardware or Software pages

c. (Optional) If Employee Center Pro is enabled,
navigate to Help center > Technology Service
> Hardware or Help center > Technology Ser­
vice > Software.
d. Select a device.
The Device heath check widget appears, dis­
playing device health categories with perfor­
mance rated as Good, Average, or Poor.
e. Select a category to see more details in the De­
vice health check page.
Navigate to Technology Services > Quick links >
Device health check.

Quick links

If Employee Center Pro is enabled, navigate to
Help center > Technology Services > Quick
links > Device health check.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1888


<!-- page 1889 -->
Note: When AI search is off, searching for Device health check returns a single result
under Catalog > Hardware. When AI search is enabled, multiple results appear under
both Catalog > Hardware and Catalog > Software.
2. Optional: On the Device health check page, select the Favorite icon (
Favorites section.

) to add it to your My

3. To check the device performance, select the Diagnose tab.

4. Select a Poor or Average performance category to view the issues and suggested resolutions.
The resolutions can be remedial action buttons, self-help instructions, or links to resources
that provide resolutions.
5. Implement the suggested resolution to improve performance.

Note: If a remedial action was triggered in the last 24 hours from either the Diagnose or
Device actions tab, the remedial action button is inactive. It is reactivated 24 hours after
the last action was triggered.
6. Optional: Submit feedback about whether the suggested resolution helped resolve an issue.
◦ Yes: Select Yes if the resolution resolves your issue.
◦ No: Select No if the resolution doesn’t resolve your issue.
If you select No, you see the option to open an IT ticket, based on the configuration.
7. Optional: Select the Open an IT ticket link if you require assistance in resolving an issue.
An incident record is created and the incident number is displayed. You can select the incident
number link to access the record details and status.
8. Trigger device actions independent of device performance or associated issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1889


<!-- page 1890 -->
a. On the Device health check page, select the Device actions tab.
b. To trigger remedial actions for the device, select Start now.
c. To trigger remedial actions for applications, select Select item, select the application from
the drop-down list, and then select Confirm.
A status message shows the progress of the action. You can trigger an action for another
application while it is still in progress for one application.
Remedial actions and displayed status
Status of action

Displayed status

Remedial action is successful.

Completed

Remedial action hasn’t yet started.

No action history

Remedial action is in progress

In-progress

Remedial action fails

Failed

Check device health using Desktop Assistant
Monitor and resolve common device performance issues independently by using Device health
check through Desktop Assistant.

Before you begin

Role required: sn_dex_desktop.user

Note:
The Device health check widget on Desktop Assistant is visible only if you have the latest
version of Desktop Assistant installed. Contact your system administrator to install the
latest version.

Procedure
1. Open Desktop Assistant.
For information, see Open and log in to Desktop Assistant.
2. On the Desktop Assistant home page, select Device health check.
3. On the Device health check page, select the device from the drop-down list.
4. In the Diagnose tab, review the performance category and required actions for the device,
applications, and network.
5. Select a Poor or Average performance category to view the issues and suggested resolutions.
The resolutions can be remedial action buttons, self-help instructions, or links to resources
that provide resolutions. For more information, see Resolution for Proactive Engagement.
6. Implement the suggested resolutions to improve device, application, or network performance.

Note: If a remedial action was triggered in the last 24 hours from either the Diagnose or
Device actions tab, the remedial action button is inactive. It is reactivated 24 hours after
the last action was triggered.

7. Optional: Submit feedback about whether the suggested resolution helped resolve an issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1890


<!-- page 1891 -->
◦ Yes: Select Yes if the resolution resolves your issue.
◦ No: Select No if the resolution doesn’t resolve your issue.
If you select No, you see the option to open an IT ticket, based on the configuration.
8. Optional: Select the Open an IT ticket link if you require assistance in resolving an issue.
An incident record is created and the incident number is displayed. You can select the incident
number link to access the record details and status.
9. Trigger device actions independent of device performance or associated issues.
a. On the Device health check page, select the Device actions tab.
b. To trigger remedial actions for the device, select Start now.
c. To trigger remedial actions for applications, select Select item, select the application from
the drop-down list, and then select Confirm.
A status message shows the progress of the action. You can trigger an action for another
application while it is still in progress for one application.
Remedial actions and displayed status
Status of action

Displayed status

Remedial action is successful.

Completed

Remedial action hasn’t yet started.

No action history

Remedial action is in progress

In-progress

Remedial action fails

Failed

Check device health using Now Assist for ITSM Virtual Agent
Use the Now Assist for ITSM Virtual Agent to monitor device performance, diagnose potential
issues, and use suggested resolutions to address them.

Before you begin
• Install the Digital End-User Experience (sn_dex) application. For more information, see Install
Digital End-User Experience.
• Configure Now Assist for ITSM to access the Check Device health topic in the Virtual Agent
chat box.
• Install the Desktop Assistant [sn_dex_desktop] plugin if you're launching Virtual Agent from
Desktop Assistant. For more information, see Download and install Desktop Assistant.
Role required: none

Procedure
1. Select the Virtual Agent or chat icon (
Assistant header.

) that appears on any portal or on the Desktop

2. Perform any of the following actions to begin a conversation:
◦ In the chat window, enter a phrase related to Device health check and press Enter.
For example, "Check my device health".
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1891


<!-- page 1892 -->
Note: If you enter a phrase related to a category or subcategory, the Virtual Agent
directly provides the corresponding resolution. For example, entering a phrase like
"How is my device battery health" prompts the Virtual Agent to provide the battery
health status and resolutions to improve it.
◦ Select the Show my options button, and then select the Check Device Health topic.
The Virtual Agent displays a list of devices to check the device health if there are multiple
devices. After you select a device, or if only one device is available, its status is displayed.
The Virtual Agent also suggests a list of resolutions to improve the device performance.
3. Optional: If you have more than one device, select a device to check its health.

4. Select a resolution to improve device performance.

Resolution Type

Description

Remedial action

If configured, the Virtual Agent asks for your
consent to continue with the selected remedial
action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1892


<!-- page 1893 -->
Resolution Type

Description

◦ If the resolution is successful, the Virtual Agent
returns a success message and guides you to
the pending actions, if any.
◦ If the resolution is not successful, the Virtual
Agent returns a failure message and guides
you to the next pending actions.
◦ If resolution is in progress, the Virtual Agent
updates you on its status and confirms that it
will notify you once the action is complete.
Self-help instruction

The Virtual Agent lists the steps to resolve the
issue.

Link to help resources

When you select the link, the Virtual Agent opens
it in a new browser tab. For example, link to a
Knowledge Base article.

After you implement the suggested resolutions, the Virtual Agent returns the following
messages based on the device health.

Condition

Virtual Agent response

Actions triggered during the conversation
are still in progress

If a triggered action takes longer than expected
to complete, the Virtual Agent informs you that
the action is in progress and will notify you once
it's complete. After completion, selecting the
notification resumes the conversation with an
updated summary.

Pending actions remain to improve device
health

The Virtual Agent displays the pending actions.
◦ Select Yes to trigger the pending actions.
◦ Select No to see a summary of the incidents,
requests, and actions performed during the
conversation.

There are no pending actions

The Virtual Agent provides a summary of all
resolutions used in the current conversation.

5. Optional: Submit feedback about whether the suggested resolution helped resolve an issue.
◦ If you select Yes, the Virtual Agent prompts you for feedback and acknowledges your
response.
◦ If you select No, the Virtual Agent provides a fallback action based on the configured
resolutions.
Fallback actions depend on the number of resolutions triggered during the conversation.

Number of resolutions

Fallback action

Single resolution

Depending on the fallback action configured
in the resolution, the Virtual Agent redirects

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1893


<!-- page 1894 -->
Number of resolutions

Fallback action

you to a live agent, creates an incident, or
prompts you to create an incident.
The DEX administrator configures the
resolutions and fallback actions. For more
information, see Engagement Settings for
Proactive Engagement.
Multiple resolutions

The Virtual Agent provides an option to
create an incident.

6. Optional: Provide a rating at the end of the conversation.

Digital End-user Experience Self-service Reference
Reference topics provide additional information about the cards, lists, and forms that help you
configure and use DEX Self-service.
Components installed with DEX Self-service
Several components are installed with DEX Self-service.

Device health categories and subcategories
In the Device health check experience, the performance of the device health categories and
subcategories is classified as Good, Average, or Poor.

Category

Device performance

Subcategory

• Computer last restart
• Disk space
• Battery health

Application performance

• MS Teams application stability
• Outlook application stability
• Zoom application stability

Network health

• Wifi signal strength
• VPN connectivity

For category configuration information, see Configure DEX Self-service categories and
subcategories.

Issue configurations
DEX Self-service provides the following base system issue configurations mapped to
corresponding device health subcategories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1894


<!-- page 1895 -->
• Computer restart pending on macOS and Windows device
• Low disk space on Windows device
• Low disk space on macOS device
• MS Teams application crash on Windows device
• MS Teams application crash on macOS device
• Outlook application crash on Windows device
• Outlook application crash on macOS device
• Poor device battery health on macOS and Windows device
• Poor WiFi signal on Windows device
• Poor WiFi signal on macOS device
• VPN Disconnected in Windows and macOS device
• Zoom application crash on macOS device
• Zoom application crash on Windows device
For more information, see Issue configurations in DEX Self-service.

Device actions
Operating system

Device action

macOS

Reinstall application
This device action is available for the following
applications:
• Microsoft Teams
• Microsoft Outlook
• Zoom

Windows

Clear disk space

DEX Self-service categories form
The DEX Self-service categories form presents elaborate data on the form fields and their
corresponding descriptions.
DEX Self-service categories form
Field

Description

Title

Enter the title of the category.

Parent

Select the parent category if you want to make
it a sub-category.

Application

View the application name as DEX Self-service
here

Order

Enter the order number in which this category
appears to the user in the Device health check
experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1895


<!-- page 1896 -->
DEX Self-service categories form (continued)
Field

Description

Active

Select this check box to add this category. The
DEX Self-service checks the performance of
this category only if the check box is selected.

DEX Self-service issue configuration form
The DEX Self-service issue configuration form presents elaborate data on the form's fields and
their corresponding descriptions.
DEX Self-service issue configuration form
Field

Description

Title

Update the title of the issue.

Category

Select the category under which the issue
resides.

Subcategory

Select the subcategory.

Action Applicability

Select one of the following options:
• Diagnose
• Device actions

Note: If you select Device actions,

the Evaluation criteria and Evaluation
metrics fields are not available.
• Both
Type

Select either device or application.

Device OS

Select Windows or Mac.

Resolution Label

Enter the Resolution Label. This label is used
for remedial action button for users to trigger.

Enables in DEX Now Assist topic

Select this check box to view this issue in Now
Assist Virtual Agent.

Enables in EC Self-service

Select this check box to view this issue in
Employee Center.

Evaluation metric

View the selected metric here.

Note: You can select multiple metrics.
DEX Self-service checks both the
metrics and decides if the category is
Good, Average, or Poor. To configure
the metrics, see Customize metric
definitions.
Evaluation criteria

Add the metric configuration ID and the value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1896


<!-- page 1897 -->
DEX Self-service issue configuration form (continued)
Field

Description

Issue Description

Enter a description for the issue. This
description appears in the DEX Self-service
experience.

Resolution

Enter the issue resolution code.

Note: The resolutions are provided
from Proactive Engagement. To configure
the resolutions, see Configuring
Proactive Engagement resolutions with
DEX.
DEX Self-service device actions form
The DEX Self-service device actions form presents elaborate data on the form's fields and their
corresponding descriptions.
DEX Self-service quick action form
Field

Description

DEX Self-service issue config

Select an issue configuration.

Quick action label

Enter a label for the device action.

Application

View the application name as DEX Self-service
here.

Active

Select this check box to add this device
action.

Issue configurations in DEX Self-service
DEX Self-service provides the following issue configurations in the base system.
Base system issue configurations are inactive by default. To enable them, see Enable issue
configurations for DEX Self-service.

Issue
Configuration

Category

Sub-category

Enabled
in EC selfservice

Enabled
Device
in DEX
now assist
topic

Computer restart
pending

Device performance

Computer last restart

FALSE

FALSE

Both

Low disk space

Device performance

Disk space

FALSE

FALSE

Windo

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1897


<!-- page 1898 -->
Low disk space

Device performance

Disk space

FALSE

FALSE

Mac

MS Teams
application crash

Application performance

MS Teams application
stability

FALSE

FALSE

Windo

MS Teams
application crash

Application performance

MS Teams application
stability

FALSE

FALSE

Mac

Outlook
application crash

Application performance

Outlook application stability

FALSE

FALSE

Windo

Outlook
application crash

Application performance

Outlook application stability

FALSE

FALSE

Mac

Poor device
battery health

Device performance

Battery health

FALSE

FALSE

Both

Poor WiFi signal

Network stability

Wifi signal strength

FALSE

FALSE

Mac

Poor WiFi signal

Network stability

Wifi signal strength

FALSE

FALSE

Windo

VPN
disconnected

Network stability

VPN connectivity

FALSE

FALSE

Both

Zoom application
crash

Application performance

Zoom application stability

FALSE

FALSE

Mac

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1898


<!-- page 1899 -->
Zoom application
crash

Application performance

Zoom application stability

FALSE

FALSE

Device heath check calculation
Device health calculation and categorization of performance as Good, Average, or Poor.

Calculating device health and performance
Performance for each device health category is classified as Good, Average, or Poor by
calculating the weighted average of performance indicators from its associated subcategories.
Performance for each subcategory of a device health category is classified as Good, Average,
or Poor by calculating the weighted average of performance indicators from associated device
metrics.
Performance indicators
Performance Indicators

Weight

Upper bound

Lower bound

Good

1

1.67

1

Average

2

2.33

1.67

Poor

5

5

2.33

Formula used to calculate the subcategory performance indicators
Sub-category performance indicator= (weight of evaluation
metrics performance indicator)/total number of evaluation
metrics for the subcategory)
where,
• Evaluation metric performance indicator: Performance indicator (Good, Average,
Poor) of the evaluation metrics' value as defined in the metric definition table. For
more information, see Customize metric definitions.
• Weight: Weight of the performance indicator. After all the subcategories are
marked as Good, Average, and Poor. The performance of the category is
calculated by the weighted average of subcategories performance indicator.
Score range definition
The following defines the performance range and its corresponding classification:
• Good if the performance indicator average value lies in the range of (1, 1.67)
• Average performance indicator average value lies in the range of (1.67, 2.33)
• Poor performance indicator average value lies in the range of (2.33, 5)
Formula used to calculate the parent category performance indicator:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1899

Windo


<!-- page 1900 -->
Category performance indicator= (sum of sub-category
performance indicator weights)/total number of subcategories)
Example
Consider the following example for the calculating the performance indicator for
Device performance category that has the following subcategories:
Sample Device health check calculation
Subcategory
performance
metric
calculation

Subcategory
Performance
indicator

Subcategory

Metric

Metric value

Disk Space

Disk Usage

90

Subcategory
performance
indicator =
5 (Weight
of Poor
indicator) / 1
(total no. of
evaluation
metrics for the
subcategory)

Poor

Battery Health

Battery health

Good

Subcategory
performance
indicator =
1 (Weight
of Good
indicator) / 1
(total no. of
evaluation
metrics for the
subcategory)

Good

Computer
Restart

Device uptime

1

Subcategory
performance
indicator =
1 (Weight
of Good
indicator) / 1
(total no. of
evaluation
metrics for the
subcategory)

Good

Performance indicator for Device performance category.
• Subcategory performance indicators = Poor, Average, Good
• Sum of weight of subcategory performance indicators: (5 + 1 + 1) = 7 Performance
indicator = 7 / 3 (no. Of subcategories) = 2.33
• The device performance category is Poor (as 2.33 falls under the Poor range)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1900


