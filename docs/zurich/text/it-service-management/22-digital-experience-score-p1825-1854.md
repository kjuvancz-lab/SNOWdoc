# Zurich IT Service Management — Digital Experience Score

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1825–1854 of 3857

Sections: Digital Experience Score (p1825)

---

<!-- page 1825 -->
Table

Name

Update frequency

Base functionality

Data

• Proactive
Engagement
• Actions
initiated by
service desk
agents

Digital Experience Score​
Digital Experience Score​ provides comprehensive insight into the digital experience of your
employees, enabling you to identify areas of improvement to enhance overall employee
experience.
https://player.vimeo.com/video/1097939728?
h=f8f365ff75&badge=0&autopause=0&player_id=0&app_id=58479
The video provides an overview of the DEX Score application, highlighting its key features and
how it enhances digital experience of employees in an organization.

Get started

Explore

Configure

Explore about Digital Experience Score​ .

Configure Digital Experience Score​ .

Track

Reference

Track digital experience using Digital
Experience Score​ dashboard.

Reference for Digital Experience Score​ .

Exploring Digital Experience Score​
Learn more about Digital Experience Score​ (DEX Score) and review the benefits it can provide for
different users in your organization.

Digital Experience Score​ overview
Digital Experience Score​ provides comprehensive insight into the digital experience of your
employees by analyzing the following three key data sources:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1825


<!-- page 1826 -->
• Monitored metrics from end-user devices
• User sentiment
• Service desk experience

Digital Experience Score​ users
Users
User

Description

Digital workplace leader Digital workplace leader can analyze data on the Digital Experience
Score​ dashboard.
They can enable users to use the Digital Experience Score​
dashboard. They can also configure the metric definition, DEX Score
system properties, qualitative mapping for the metric scores, and
survey configuration.
Dashboard User

Dashboard user can view the Digital Experience Score​ dashboard.

Digital Experience Score​ benefits
Digital Experience Score​ benefits
Benefit

Feature

Analyze both quantitative and qualitative
data to get a comprehensive view of the
employees' digital experience across your
organization.

Digital Experience Score​
dashboard

Users

• Digital workplace
leader
• Dashboard User

Key terms
DEX-monitored applications and devices
DEX-monitored apps and devices are the ones that are tracked and measured using
Digital Experience (DEX) metrics. These metrics are then used to compute scores.
These scores can be individual normalized metric scores, weighted averages of
metric scores, or averages of all scores for each metric.
Qualitative metrics
The qualitative metrics are descriptive and subjective, such as the user sentiment
metrics. They provide insights into the quality of the subject, such as service
feedback and application and device experiences. These metrics are collected
through surveys.
Quantitative metrics
The Quantitative metrics represent numerical data, such as application health
metrics or device health metrics. They provide measurable data that can be
analyzed to provide insights to make informed decisions. For application health,
you might look at things like crashes and load time. For device health, you'd look
at battery health and memory. These metrics are collected through data collection
methods from monitored applications and devices.
Normalized metric scores
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1826


<!-- page 1827 -->
The normalized metric scores represent the adjusted scores of each metric. Metric
scores are adjusted to a common scale of 100 so that they can be compared with
each other.
Weighted average
The weighted average is calculated by using the different weights of each metric to
determine an overall average score.

What to explore next
To learn more about configuring and using Digital Experience Score​, see:
• Configuring Digital Experience Score​
• Tracking digital experience using Digital Experience Score dashboard
• Digital Experience Score reference
Metric scores in Digital Experience Score​
Learn more about the different qualitative and quantitative metrics in the Digital Experience
Score​ dashboard, which provides end-to-end visibility into your employees' digital experiences.

Digital Experience Score​
This metric measures the overall employee experience with devices and applications at work
across your organization. This overall digital experience score helps you identify areas that need
further investigation or action plans to address them.
This metric score is rolled up from the following two metric scores: Application experience score
and Device experience score.
Digital Experience Score​ hierarchy

Application experience score
The application experience score is the average application experience score of DEX-monitored
applications. It considers the application health metrics, employee feedback, and service
experience of applications.
Application health metrics score
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1827


<!-- page 1828 -->
This metric measures the performance and overall health of an application (both
installed and web). It considers various factors like load time, response time,
memory usage, and crashes to provide a comprehensive view of how well the
application is working.
A high application health metrics score indicates reliable and stable application,
leading to employee satisfaction. A low score indicates areas for improvement, like
upgrading it to a newer version.
User sentiment score
This metric measures employee satisfaction with the application and identifies
areas for improvement. These metrics are collected on a rating scale of 1—5 through
application and device surveys sent to employees. It considers factors like ease of
use, speed, and stability of the application.
A high user sentiment score indicates that the application is working well and
employees are satisfied using it. A low score indicates usability issues and lower
usage.
Service experience score
This metric measures employee satisfaction with the IT service desk's handling of
application-related issues. It considers factors like response time and the quality of
the support in resolving issues.
A high service experience score indicates that the service desk provides quick and
effective issue resolution, leading to employee satisfaction. A low score indicates
recurring issues in the application and ineffective resolution.

Device experience score
The device experience score is the average device experience score of DEX-monitored devices.
It considers the device health metrics, employee feedback, and service experience of device OS
groups.
Device health metrics score
This metric measures the performance and overall health of a device. It considers
various factors like disk space, CPU usage, device crashes, WiFi signal strength,
and battery health to provide a comprehensive view of how well the device is
working.
A high device health metrics score indicates that the device is functioning optimally
and is in good health, leading to employee satisfaction. A low score indicates
potential problems or areas for improvement, like increasing storage or replacing
the battery.
User sentiment score
This metric measures employee satisfaction with the device and identifies areas
for improvement. These metrics are collected on a rating scale of 1—5 through
application and device surveys sent to employees. It considers factors like ease of
use, speed, and storage of the device.
A high user sentiment score indicates that the device is working well and
employees are satisfied using it. A low score indicates usability issues and potential
problems.
Service experience score

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1828


<!-- page 1829 -->
This metric measures employee satisfaction with the IT service desk's handling of
device-related issues. It considers factors like response time and the quality of the
support in resolving issues.
A high service experience score indicates that the service desk provides quick and
effective issue resolution, leading to employee satisfaction. A low score indicates
recurring issues in the device and ineffective resolution.
Related topics
DEX Score metrics calculation
DEX Score normalization for metric scores

Configuring Digital Experience Score​
Plan and configure your implementation of Digital Experience Score​.

Configuration overview
Install Digital Experience Score​
You can install the Digital Experience Score​ application (sn_dex_score) if you have the admin
role. The application includes demo data that you can load after the installation is complete. It
®
also installs related ServiceNow Store applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Digital Experience Score​ application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Digital Experience Score​:
• Plugins:
ITOM Java Utilities (com.itom.jutils)
• Store applications:
◦ Digital Experience Feedback Survey (sn_dex_feedback_sur): This app is installed with Digital
Experience Score​ and is used to send the surveys to employees to collect feedback on their
digital experience.
For more information, see Components installed with Digital Experience Feedback Survey.
◦ Digital End-User Experience: The Digital End-User Experience (DEX) suite offers proactive
visibility to help you understand and improve the end-user experience across your
organization. It includes Application & Device Health, DEX Content Playbook, and Desktop
Assistant, combined to provide unique benefits to diagnose and address any negative
experiences.
• Roles
• Scheduled jobs
• Tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1829


<!-- page 1830 -->
For more information, see Components installed with Digital Experience Score​.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Digital Experience Score​ application (sn_dex_score) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

What to do next

Load the demo data for Digital Experience Score​. For more information, see Load Digital
Experience Score demo data.
Demo data comprises the sample records that describe application features for the common
use cases. Load the demo data when you first install the application on a development or test
instance.
Load Digital Experience Score​ demo data
Load the demo data for Digital Experience Score​ after installing the application.

Before you begin

Install Digital Experience Score​
Role required: admin

About this task

Besides loading demo data, the CreateDemoDataForDEXScoreJob scheduled job does
the following:
• Creates demo data for agents
• Creates DEX score records
• Inserts data for the last 90 days into the respective tables for the following information:
◦ Application and device health
◦ Surveys
◦ Service level agreements

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Find and open the CreateDemoDataForDEXScoreJob scheduled job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1830


<!-- page 1831 -->
3. Select Execute Now.
The job runs in the background and takes a few minutes to complete.

Result

After the scheduled job runs successfully, the demo data is loaded into the instance.
Delete Digital Experience Score​ demo data
Delete the demo data for Digital Experience Score​ when you no longer need it.

Before you begin

Install Digital Experience Score​
Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Find and open the DeleteAggregatedDemoDataDexScore scheduled job.
3. Select Execute Now.
The job runs in the background.
4. Verify the completion status of the scheduled job.
a. Access the Pending Scheduled Jobs and Running Scheduled Jobs tables.
▪ Pending Scheduled Jobs: Navigate to All > System Diagnostics > Pending Scheduled
Jobs.
▪ Running Scheduled Jobs: Navigate to All > System Diagnostics > Running Scheduled
Jobs.
b. Verify that the DeleteAggregatedDemoDataDexScore job isn’t listed in either of the
tables.
5. Navigate back to the scheduled jobs list.
6. Find and open the DeleteDemoDataDexScore scheduled job.
7. Select Execute Now.
The job runs in the background.
8. Verify that the DeleteDemoDataDexScore job isn’t listed in the Pending Scheduled Jobs
and Running Scheduled Jobs tables.
9. Delete records that are in the global scope.
a. Navigate to All > System Definition > Scripts - Background.
b. Enter the deletion script in the Run script (JavaScript executed on server) field.
var prefix = "[DEXScore Demo]";
//Deleting computer records
var comp = new GlideRecord('cmdb_ci_computer');
comp.addEncodedQuery('nameSTARTSWITH' + prefix);
comp.query();
comp.deleteMultiple();
//Deleting User Records
var userGR = new GlideRecord("sys_user");
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1831


<!-- page 1832 -->
userGR.addEncodedQuery('nameSTARTSWITH' + prefix);
userGR.query();
userGR.deleteMultiple();
//Deleting CMN Location Records
var location = new GlideRecord('cmn_location');
location.addEncodedQuery('nameSTARTSWITH' + prefix);
location.query();
location.deleteMultiple();
c. If the default value for the in scope field is not set to global, select global from the dropdown list.
d. Select Run Script.

Result

After both scheduled jobs run successfully and the script to delete records in global scope
executes, the demo data is deleted from the instance.
If an error occurs during execution of the scheduled jobs, run the jobs again.
Customize metric definitions
Customize the base system metric definitions based on your business requirements.

Before you begin

Role required: sn_dex_score.digital_workplace_leader, sn_dex.admin

Procedure
1. Navigate to All > Digital Experience Score > Metric Definition Configuration.
2. Open a metric definition configuration to modify its details.
3. On the form, update the fields.
For more information on metric definition configuration field descriptions, see Metric definition
form.
4. Select Update.
Related topics
Define qualitative mapping for a DEX Score metric
Metric scores in Digital Experience Score​
DEX Score metrics calculation
DEX Score normalization for metric scores
Define qualitative mapping for a DEX Score metric
Define mapping between the qualitative value and normalized score of a DEX Score metric
according to your business needs.

Before you begin

Role required: sn_dex_score.digital_workplace_leader

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1832


<!-- page 1833 -->
Procedure
1. Navigate to All > Digital Experience Score > Qualitative Metric Score Mapping.
2. From the Qualitative Metric Score Mappings page, open a metric record using one of the
following options.
◦ Hover over the metric name, select the reference icon (
Record on the preview pop-up.

) next to it, and then select Open

◦ Select a number in the Normalized score column.
3. In the form, customize the metric mapping details.
Qualitative Metric Score Mapping form
Field

Description

Metric

Name of the metric for which the qualitative mapping is to be set.
For example, Battery health.

Normalized Normalized score for the metric. This score is in the range 1–100 and maps to a
score
performance category. For example, 45.
For information about how normalized scores are calculated, see DEX Score
normalization for metric scores.
Qualitative Performance category such as Poor, Moderate, or Good that you can map to a
value
normalized score.
For example, you can map a normalized score of 45 to the Poor category and a
score of 75 to the Moderate category, for the Battery health metric.
4. Select Update.
Related topics
Customize metric definitions
Metric scores in Digital Experience Score​
DEX Score metrics calculation
Update DEX Score survey configuration
Update the survey configuration to identify the recipients, method, and timing for sending the
DEX Score surveys.

Before you begin

Role required: sn_dex_score.digital_workplace_leader

About this task

The DEX Survey configuration is stored in the Survey Configuration [dex_survey_configuration]
table. For more information, see Components installed with Digital Experience Feedback Survey.

Procedure
1. Navigate to All > Digital Experience Score > DEX Survey Configuration.
2. Open a survey configuration to modify its values.
3. On the form, update the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1833


<!-- page 1834 -->
For more information on survey configuration field descriptions, see DEX Score survey
configuration form.
4. Select Update.

Tracking digital experience using Digital Experience Score​ dashboard
Get insights into the digital experience of your employees using the Digital Experience Score​
dashboard. You can drill down into the device and application health data to create informed
action plans if the employee experience needs improvement.
You can create your own reports by following the Performance Analytics reporting guidelines
using tables and filters in Digital Experience Score​ to get more detailed information. For more
information, see Using reporting .
For more information about DEX Score tables and filters, see the DEX Score - Generate reports to
fetch impacted devices [KB1808487]
article in the Now Support Knowledge Base.
Digital experience score

Track application experience scores
Track and drill down into the quantitative and qualitative data on the Digital Experience
Score dashboard to gain a comprehensive view into employee experiences of using work
applications.

Before you begin

Role required: sn_dex_score.digital_workplace_leader or sn_dex_score.dashboard_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1834


<!-- page 1835 -->
Procedure
1. Navigate to All > Digital Experience Score > Dashboard.
2. On the Digital Experience Overview page, determine the time period for which you want to
review the experience scores.
a. Either accept the default period as Weekly or select Monthly from the drop-down list.
b. Either accept the default values for the current week or month or select a different value from
the drop-down list.
3. Optional: Display the scores for a specific location by starting to type the location in the
search field and selecting it from the drop-down list.
4. Select the Application experience tile to see an overview.

5. Optional: View the formula used to calculate the overall application experience score and the
range of values for each experience category by selecting the See how it's calculated link
6. Review the experience scores of DEX-monitored applications to identify applications with poor
scores and possible opportunities for improvement.
Application Experience Overview page
Section

Application experience
score

Description

The overall application metrics score that indicates how
employee experiences with DEX-monitored applications have
changed over a period.
The change in score from the previous period is displayed,
with a graph showing trends of change in experience scores.
The application metrics score is calculated as the average
score of DEX-monitored applications (both installed and web).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1835


<!-- page 1836 -->
Section

Description

This score considers application health, user sentiment from
employee feedback surveys, and service experience.
Applications by experience

The experiences of employees when using DEX-monitored
applications. Employee experience is categorized as Good,
Average, or Poor.

Applications needing
attention

The three applications with lowest experience scores and the
changes in scores from the previous period.
Selecting an application name displays the application's
experience score page and details of the application's
performance metrics.

7. View a list of all applications and access an application's metric details either by selecting a
number in the No. of applications column or the View all applications link.
For more information, see Track experience scores of an individual application.
Related topics
Track experience scores of an individual application
Metric scores in Digital Experience Score​
DEX Score metrics calculation
DEX Score normalization for metric scores
Track experience scores of an individual application
Track and drill down into the quantitative and qualitative data of an application's metrics to gain a
comprehensive view into employee experiences of using it.

Before you begin

Role required: sn_dex_score.digital_workplace_leader or sn_dex_score.dashboard_user

Procedure
1. Navigate to All > Digital Experience Score > Dashboard.
2. On the Digital Experience Overview page, determine the time period for which you want to
review the experience scores.
a. Either accept the default period Weekly or select Monthly from the drop-down list.
b. Either accept the default values for the current week or month or select a different value from
the drop-down list.
For more information about data collection and when the data is available on the dashboard,
see Data collection frequency for DEX Score metrics.
3. Optional: Display the values for a specific location by starting to type the location in the
search field and selecting it from the drop-down list.
4. Select the Application experience tile.
5. On the Application Experience Overview page in the Application by experience section,
access a list of applications by selecting either a number in the No. of applications column or
the View all applications link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1836


<!-- page 1837 -->
6. Review the experience scores for an application to assess application performance and
possible areas of improvement.
a. On the Applications list page, select either the Installed applications or Web applications
tab.
b. Select an application from the Application name column.
c. Optional: On the application experience score overview page, display background
information on the metrics by selecting the See how it's calculated link:
▪ Definitions of scores
▪ How the experience score is calculated
▪ How normalized scores for application metrics are calculated
d. View application health, employee feedback, and service experience scores.
Application Experience Overview page
Tab

Description

Application health metrics

The application's performance and overall health.
Application health metrics are categorized as Good,
Average, or Poor. The All application health metrics section
provides access to a list of corresponding metrics, metric
values and scores, and devices that have average or poor
metric values for the selected health category.
The Suboptimal devices column displays links to device
lists with average or poor metric values. By selecting the
Show device list link, you can access the application
metric device list page. This page shows the list of devices
that have poor or average metric scores, and the metric
performance statistics. You can also view device health

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1837


<!-- page 1838 -->
Tab

Description

details by selecting a device name in the Device column. For
more information, see Device health page.
User sentiment

Employee satisfaction received as responses to surveys
sent to them periodically. Identify what is going well for
employees and possible areas for improvement for the
application.

Service experience

Employee satisfaction with the service desk's quality
and speed of support for the application, shown through
the number of incidents and outages and service level
agreement (SLA) KPIs.
Service experience is categorized as Good, Average, or Poor.
Selecting a health category in this section displays a list of
corresponding metrics and their values.

7. Review application experience scores by device to identify device-specific performance
issues.
a. On the Applications list page, select the number in the No. of devices column for an
application.
b. On the application device list page, view the names of devices on which the application is
installed and the application experience score for each device.
c. Optional: View device health details by selecting a device name in the Device column.
For more information about the device health page, see Device health page.
Related topics
Metric scores in Digital Experience Score​
Track application experience scores
Track device experience score
DEX Score metrics calculation
DEX Score normalization for metric scores
Track device experience score
Track and drill down into the quantitative and qualitative data on the Digital Experience
Score dashboard to gain a comprehensive view into employee experiences of using work
devices.

Before you begin

Role required: sn_dex_score.digital_workplace_leader or sn_dex_score.dashboard_user

Procedure
1. Navigate to All > Digital Experience Score > Dashboard.
2. On the Digital Experience Overview page, determine the time period for which you want to
review the experience scores.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1838


<!-- page 1839 -->
a. Either accept the default period as Weekly or select Monthly from the drop-down list.
b. Either accept the default values for the current week or month or select a different value from
the drop-down list.
3. Optional: Display the scores for a specific location by starting to type the location in the
search field and selecting it from the drop-down list.
4. Select the Device experience tile.

5. Optional: View the formula used to calculate the overall device experience score and the
range of values for each experience category by selecting the See how it's calculated link.
6. Review the scores of DEX-monitored devices to identify devices with poor scores and possible
opportunities for improvement.
Device Experience Overview page
Section

Device experience score

Description

How employee experiences with DEX-monitored devices have
changed over a period. Displays a graph showing trends of
change in experience scores.
The device experience score is calculated as the average
score of DEX-monitored devices. This score considers the
device health, user sentiment from employee feedback
surveys, and service experience.

Devices group distribution

The experiences of employees when using DEX-monitored
device OS groups. Employee experience is categorized as
Good, Average, or Poor.

Device groups needing
attention

The three device OS groups with lowest experience scores
and the changes in scores from the previous period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1839


<!-- page 1840 -->
Section

Description

Selecting a device OS group name displays the group's
experience score page and details of the device group's
performance metrics.
7. View a list of all device groups and access a group's metric details by selecting either a
number in the No. of device groups column or the View all device groups link.
For more information, see Track experience scores of an individual device group.
Related topics
Track experience scores of an individual device group
Metric scores in Digital Experience Score​
DEX Score metrics calculation
DEX Score normalization for metric scores
Track experience scores of an individual device group
Track and drill down into the quantitative and qualitative data of a device group's metrics to gain
a comprehensive view into employee experiences of using the devices.

Before you begin

Role required: sn_dex_score.digital_workplace_leader or sn_dex_score.dashboard_user

Procedure
1. Navigate to All > Digital Experience Score > Dashboard.
2. On the Digital Experience Overview page, determine the time period for which you want to
review the experience scores.
a. Either accept the default period Weekly or select Monthly from the drop-down list.
b. Either accept the default values for the current week or month or select a different value from
the drop-down list.
For more information about data collection and when the data is available on the dashboard,
see Data collection frequency for DEX Score metrics.
3. Optional: Display the scores for a specific location by starting to type the location in the
search field and selecting it from the drop-down list.
4. Select the Device experience tile.
5. View the Device groups list page by selecting either a number in the No. of device groups
column or the View all device groups link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1840


<!-- page 1841 -->
6. Review device experience scores to assess device performance and possible areas of
improvement.
a. On the Device groups list page, select an operating system from the Operating system
name column.
b. Optional: On the device group experience score page, display background information on
the metrics by selecting the See how it's calculated link:
▪ Definitions of scores
▪ How the experience score is calculated
▪ How normalized scores for application metrics are calculated
c. View application health, employee feedback, and service experience scores.
Device Group Experience Overview page
Tab

Description

Device health metrics

The device's performance and overall health.
Device health metrics are categorized as Good, Average, or
Poor. The All device health metrics section provides access
to a list of corresponding metrics, metric values and scores,
and devices that have average or poor metric values for the
selected health category.
The Suboptimal devices column displays links to device
lists with average or poor metric values. By selecting the
Show device list link, you can access the device group
metric device list page. This page displays the list of devices
that have poor or average metric scores and the metric
performance statistics. You can also view device health
details by selecting the device name link in the Device
column. For more information, see Device health page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1841


<!-- page 1842 -->
Tab

Description

User sentiment

Employee satisfaction received as responses to surveys sent
to them periodically. Identify what is going well and possible
areas for improvement for the device.

Service experience

Employee satisfaction with the service desk's quality and
speed of support for the device, shown through the number
of incidents and outages and service level agreement (SLA)
KPIs.
Service experience is categorized as Good, Average, or Poor.
Selecting a health category in this section displays a list of
corresponding metrics and their values.

7. Review experience scores by device to identify device-specific performance issues.
a. On the Device groups list page, select the number in the No. of devices column for an
operating system.
b. On the operating system device list page, view names of devices on which the operating
system is installed and the experience score for each device.
c. Optional: View device health details by selecting a device name in the Device column.
For more information about the device health page, see Device health page.
Related topics
Metric scores in Digital Experience Score​
Track device experience score
Track application experience scores
DEX Score metrics calculation
DEX Score normalization for metric scores

Digital Experience Score​ reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Digital Experience Score​.
Components installed with Digital Experience Score​
Several types of components are installed with activation of the Digital Experience Score​ app,
including tables and user roles.

Roles installed
Role title [name]

Dashboard Application Pages User

Description

Can access
only the
[sn_dex_score.dashboard_application_pages_user] application
pages on
the Digital
Experience

Contains roles

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1842


<!-- page 1843 -->
Role title [name]

Description

Contains roles

Score​
dashboard.
Dashboard Device Pages User
[sn_dex_score.dashboard_device_pages_user]

Dashboard User
[sn_dex_score.dashboard_user]

Digital Workplace Leader
[sn_dex_score.digital_workplace_leader]

Can access
None
only the
device pages
on the Digital
Experience
Score​
dashboard.
Can access
Digital
Experience
Score​
dashboard.

sn_sow.sow_user

Allows
users to use
the Digital
Experience
Score​
dashboard.
Can
configure
the metric
definition,
DEX Score
system
properties,
qualitative
mapping for
the metric
scores,
and survey
configuration.

• sn_dex_score.dashboard_user

• sn_dex_feedbck_sur.dex_feedback_surv
• sn_dex.user

Tables installed
Table

Description

DEX Score Hierarchy Weights

Stores the weights for health metrics, user sentiment
experience metrics, and service experience metrics defined
[dex_score_hierarchy_weights] at the application experience, device experience, and overall
DEX experience scoring levels.
DEX Score Metric Definition
[dex_score_metric_definition]

Stores the metric definition with predefined values for the
upper bound, lower bound, and other info.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1843


<!-- page 1844 -->
Components installed with Digital Experience Feedback Survey
Several types of components are installed with activation of the Digital Experience Feedback
Survey app, including tables and user roles. DEX Score uses the Digital Experience Feedback
Survey application for configuring and storing survey information sent to employees.

Roles installed
Role title [name]

Description

Contains roles

DEX_ Feedback Survey Admin Can modify configurations for DEX feedback
surveys.
[dex_feedback_survey_admin]

survey_admin

Tables installed
Table

Description

Survey Configuration

Stores the feedback survey configuration details
that include the recipients, method, and timing for
sending the DEX Score surveys.

[dex_survey_configuration]

Survey Feedback Topic Definition

Stores the areas for which the survey feedback rating
is given. These areas are shown in the survey form
[dex_survey_feedback_topic_definition] sent out to the employees.
Digital Experience Score​ properties
Configure the system properties to enable DEX Score application and set the company level
target for the digital experience score.
These properties are available for Digital Experience Score​.

Note: To open the System Properties [sys_properties] table, enter
sys_properties.list in the navigation filter.
Properties for Digital Experience Score​
Property

Description

sn_dex_score.active

Controls the availability of the Digital Experience Score​
application on the instance.
When true, the application's calculations, dashboard,
and configurations are available for use.
When false, the application is unavailable.
• Type: true|false
• Default value: true
• Other possible values: false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1844


<!-- page 1845 -->
Properties for Digital Experience Score​ (continued)
Property

Description

Organization's target for DEX score that you can see on
sn_dex_score.company_target_score the DEX Score dashboard.
• Type: integer
• Default value: 75
• Other possible values: Any whole number from 0 to
100.

DEX Score metric definitions
List of the base system DEX Score metric definitions.
The DEX Score metrics are calculated for a specific application or device group within a defined
time range and location. Device and application metrics that are aggregated periodically at daily,
weekly, or monthly intervals are normalized on a scale of 0-100. For more information, see DEX
Score normalization for metric scores.

Application Metrics
DEX Score: Application metrics
Metric

Application type

Description

Application crashes

Installed

The number of times an application
stops functioning during the
selected period.

Average DNS lookup

Web

Average time taken to complete a
Domain Name System (DNS) lookup
during the selected period.
A lower average DNS lookup
contributes to faster web page
loading and improved overall
internet performance.

Average page load time

Web

Average time taken to load a page,
from initiation to load completion
during the selected period.

Average response time

Web

Average time taken to respond to
user requests during the selected
period.

CPU usage

Installed

Amount of processing power
consumed by an application,
measured in percentage.

Failed web requests

Web

Set of all requests that either return
an Error Code or an HTTP 408 status
code or fail to return a Success
Code during the selected period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1845


<!-- page 1846 -->
DEX Score: Application metrics (continued)
Metric

Application type

Description

Memory usage

Installed

Amount of memory or RAM
consumed by an application,
measured in percentage.

Operating system

Description

Device metrics
DEX Score: Device metrics
Metric

Battery health

Windows
macOS

CPU usage

Windows

The battery health of a device
typically measured using metrics
such as battery capacity, cycle
count, and impedance.
The percentage of processing
power consumed by the device.

macOS
Disk usage

Windows
macOS

Memory usage

Windows

The proportion of the device's disk
storage capacity consumed by data
and applications.
The amount of memory or RAM
consumed by the device.

macOS
Wifi receive rate

Windows

The speed at which a device
receives data from the network.

macOS
Wifi RSSI

Wifi transmit rate

macOS

Windows

WiFi Received Signal Strength
Indicator (RSSI) measures the
strength of wireless signal received
by a device. RSSI value is higher
when close to 0. Lower negative
values mean a weaker connection.
The speed at which a device sends
data to the network.

macOS

User sentiment metric
The user sentiment metric is calculated based on survey ratings collected from application and
device users. Users rate their experiences in the range of 1-5. These ratings are then normalized
on a scale of 0-100 based on weightage defined in the survey calculation table. For more
information, see DEX Score normalization for metric scores.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1846


<!-- page 1847 -->
You can configure the DEX Score survey configuration to identify the recipients, methods, and
timing for sending surveys. For more information, see Update DEX Score survey configuration.
DEX Score: User sentiment metric type
Metric

Description

Application survey

Application surveys are sent periodically to
randomly selected users based on application
usage.

Device survey

Device surveys are sent to users every six months.

Service desk metrics
DEX Score: Service desk metrics
Metric

Description

Customer satisfaction scores for incident
resolved

The score for customer satisfaction surveys sent to
users for resolved incidents. Scores are calculated
only for those surveys that have been successfully
submitted by users.
Normalized values for surveys are considered
and surveys with normalized values greater than
zero are assigned weights on a scale of 0–100.
For more information, see Normalized value for an
assessment .

Number of resolved incidents

The number of incidents resolved or closed for an
application or device group.
For example, the number of Chrome application
incidents resolved in the first week of July in New
York.

Mean time to resolve an incident

The average time (in hours) taken to resolve
incidents.
It is calculated by averaging the differences
between incident creation and resolution times for
resolved incidents.

Number of closed major incidents

The number of major incidents resolved or closed
for an application or device group.
Major incidents are filtered by confirming
that the Major Incident Management plugin
(com.snc.incident.mim) is active and the Major
incident state field on incident records is set to
Accepted.

Percentage of first assignment resolution

This percentage is calculated by dividing the total
number of first assignment resolution incidents
(incidents with Reassignment count of zero in

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1847


<!-- page 1848 -->
DEX Score: Service desk metrics (continued)
Metric

Description

incident records) by the total number of incidents,
and multiplying the result by 100.
Percentage of incidents that breached
SLA

This percentage is calculated by dividing the
number of incidents that have breached the
SLA time by the total number of incidents, and
multiplying the result by 100.
The total number of incidents with SLA breach is
the sum of incidents with the Has breached state
marked as true in the Task SLA table of the incident
records.

Percentage of reopened incidents

This percentage is calculated by dividing the
number of incidents with Reopened count greater
than zero in the incident records by the total
number of incidents, and multiplying the result by
100.

Total outages due to incidents

The total duration of outages or degradation (in
hours) caused by incidents.
It is calculated as the sum of the durations of all
outages recorded in the cmdb_ci_outage table.

The number of closed major incidents, resolved incidents, and total outages due to incidents are
metrics that help evaluate service desk experience but don’t contribute to the experience score.
Metric definition form
Update the scoring details of a metric definition, enable or disable it, or specify whether it
contributes to the overall DEX score.
For more information, see Customize metric definitions.
DEX Score metric definition form
Field

Description

Metric visibility

Option to determine who can see the metric.
To edit this field, select the lock icon
and
select the visibility type from the drop-down
list.
• L1 checklist: Metric details are visible to
service desk agents from the Investigation
tab page of incident records for DEX
monitored devices.
• Advanced: Metric details are visible to
administrators and IT operators. Service
desk agents can view advanced metrics by
toggling Show additional metrics on the
Investigation tab page of incident records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1848


<!-- page 1849 -->
DEX Score metric definition form (continued)
Field

Description

To delete a value, select the value and then

Metric category

select the remove icon

.

Select the unlock icon
option.

to set the visibility

Device health category that the metric is
associated with.
To select or change a device health category,
select the search icon
and then select a
category from the DEX Self-service categories
page.

Contributes to DEX score

Option to determine whether the metric can
contribute to the overall DEX score.

Value type

Value type of the metric that can be either
qualitative or quantitative, depending on how
it’s measured and what type of data it collects.
• Quantitative metrics evaluate scores using
numbers. For example, the CPU usage or
battery health of a device.
• Qualitative metrics evaluate scores using
descriptive information instead of numbers.
For example, the information you collect
from surveys can provide details on how
employees feel about using a particular
device or application.

Active

Option to make the metric definition active.
Only active metrics are considered for
calculations and aggregations.

Good lower bound

Minimum value for a good metric.
For example, let's say the good lower bound
for a customer satisfaction metric score is
set to 80%. This value means that any score
above 80% is considered good.

Average lower bound

Minimum value for an average metric.
For example, let's say the average lower bound
for a CPU usage metric score is set to 85
and its upper bound is set to 55. This value
means that any score between 85 and 55 is
considered average.

Poor lower bound

Minimum value for a poor metric.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1849


<!-- page 1850 -->
DEX Score metric definition form (continued)
Field

Description

For example, let's say the poor lower bound for
a device crash metric score is set to 5 and its
upper bound is set to 2. This value means that
any score (number of times a device crashed)
between 5 and 2 is considered poor.
Max upper bound

Maximum value that is considered as the
upper bound for the metric definition.

Weight

Weighted average for the metric that
contributes to the overall DEX score.

DEX Score survey configuration form
Update the configuration for sending the surveys to collect feedback from employees on the
usage of applications and devices.
For more information, see Update DEX Score survey configuration.
DEX Score — Survey Configuration form
Field

Description

Survey
feedback
type

Type of the survey to determine whether it's for collecting feedback on the
application or device experience.

Survey
trigger
group

Recipients of the survey. The default value is Random group every week.

Repeat
survey
after

Period after which the survey can be sent again to the same recipient group.

Active
from

Date from which the survey is effective and will be sent to the specified recipients
group.

Active

Option to make the survey configuration active.

Trigger
criteria

Criteria to trigger the survey.
This field appears only when Application is selected fromSurvey feedback type.

Minimum Minimum threshold value for the trigger criteria so that the survey is triggered and
threshold sent to the recipients.
(per
For example, if the trigger criterion is application usage time and the minimum
week)
threshold is set to 15 (hours per week), then the survey is sent to only the recipients
who used the application for more than 15 hours in a particular week.
This field appears only when Application is selected fromSurvey feedback type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1850


<!-- page 1851 -->
DEX Score metrics calculation
Learn more about how the metrics values are calculated in the Digital Experience Score​
dashboard.

Calculating the digital experience score
Digital experience score is the weighted average of device experience score and application
experience score for all employees. The formula used to calculate the digital experience score is:
Formula
Weighted Average = Sum of (Score * Weight) / Sum of
Weights
where,
• Score: Device experience score and application experience score
• Weight: Weight given to each contributing factor's score
This score is rounded off to the nearest whole number.
Score range definition
The following defines the score range and its corresponding classification:
• Good if the score is greater than 75
• Average if the score is from 45 through 75
• Poor if the score is less than 45
Example
Consider the following values for the contributing factors:
• Application experience: Score = 55 and Weight = 50
• Device experience: Score = 54 and Weight = 50
Then the overall digital experience score is calculated as:
Digital experience score = (55x50 + 54x50)/ (50+50) = 54

Calculating the application experience score
Application experience score is calculated as the average of the experience scores of all the
applications. The experience score of an individual application is calculated by combining three
scores: application health metric, user sentiment, and service experience. Each of these scores
is given a weight, and then they're averaged together. The formula for the application experience
score is:
Formula
Weighted Average = Sum of (Score * Weight) / Sum of
Weights
where,
• Score: Application health metrics score, user sentiment score, and service
experience score
• Weight: Weight given to each contributing factor's score
Score range definition
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1851


<!-- page 1852 -->
The following defines the score range and its corresponding classification:
• Good if the score is greater than 75
• Average if the score is from 45 through 75
• Poor if the score is less than 45
Example
Consider the following values for the contributing factors:

Contributing factor

Score

Weight

Application health metrics 55/100

50

User sentiment

58/100

30

Service experience

72/100

20

Then the application experience score is calculated as:
Application experience score = (55x50 + 58x30 + 72x20) /
(50+30+20) = 59 (rounded off).

Calculating the device experience score
Device experience score is calculated as the average of the experience scores of all the
devices across all device groups. The experience score of an individual device is calculated by
combining three scores: device health, user sentiment, and service experience. Each of these
scores is given a weight, and then they're averaged together.
The formula for the device experience score is:
Formula
Weighted Average = Sum of (Score * Weight) / Sum of
Weights
where,
• Score: Device health metrics score, user sentiment score, and service experience
score
• Weight: Weight given to each contributing factor's score
Score range definition
The following defines the score range and its corresponding classification:
• Good if the score is greater than 75
• Average if the score is from 45 through 75
• Poor if the score is less than 45
Example
Consider the following values for the contributing factors:

Contributing factor

Score

Weight

Device health metrics

64/100

50

User sentiment

68/100

30

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1852


<!-- page 1853 -->
Contributing factor

Score

Weight

Service experience

70/100

20

Then the device experience score is calculated as:
Device experience score = (64x50 + 68x30 + 70x20) / (50+30+20) =
66 (rounded off).

Application experience metrics
Metrics definition: Application metrics
Metric

Description

Application health metrics
score

An application's health metrics score is a weighted average
of the normalized values of multiple metrics, including CPU
usage, memory usage, and crash reports. These metrics are
tracked across all relevant devices.

User sentiment score

An application's user sentiment score is the average of the
normalized sentiment scores obtained from user feedback
collected for that application.

Service experience score​

The service experience score for an application is the
weighted average of normalized incident metric scores
based on all the incidents resolved for the application.

Device experience metrics
Metrics definition: Device metrics
Metric

Description

Device health metrics score​

The device health metrics score for each device group is
computed as the weighted average of all normalized metric
scores of that device group.

User sentiment score

The user sentiment score for each device group is the
average of the normalized sentiment scores. The scores are
collected from user feedback for the devices in the group.

Service experience score​

The service experience score for each device group is the
weighted average of normalized incident metric scores.
The scores are based on all the incidents resolved for the
devices in the group.

Related topics
Metric scores in Digital Experience Score​
DEX Score normalization for metric scores
DEX Score normalization for metric scores
Learn how normalization adjusts individual scores of each metric to a common scale, enabling
comparison across different metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1853


<!-- page 1854 -->
In Digital Experience Score​, the key metrics monitored from applications and devices are
normalized by mapping the Good, Average, or Poor range of the actual metric value to the
corresponding Good, Average, or Poor range definition on a scale of 100.
Normalization of metric values is done in two ways: One to maximize values and the other to
minimize values.

To maximize the value

Maximize the value when higher values are better, for example,
metric for WiFi reception rate. The following formula is used to get
the normalized score:
Normalized value (Maximize) = L1 + ((M1 L2) / (H2 - L2) x (H1 - L1))

To minimize the value

Minimize the value when lower values are better, for example,
metric for CPU usage. The following formula is used to get the
normalized score:
Normalized value (Minimize) = H1 - ((M1 L2) / (H2 - L2) x (H1 - L1))

Where,
• L1 = Low value of mapping range
• H1 = High value of mapping range
• M1 = Actual metric value
• L2 = Low value of metric value range
• H2 = High value of metric value range
You can customize the lower bound values for Good, Average, and Poor ranges. For more
information, see Customize metric definitions
Example for an application metric normalization (maximize)
Consider the following values for the metric WiFi reception rate:
• Actual metric value (M1): 400 (falls in good range)
• Mapping range for good (L1 and H1): 75–100
• Metric value range for average (L2 and H2): 50–500
Then the application health metrics score is calculated as:
Normalized value (Maximize) = 75 + ((400 - 50) / (500 - 50) x (100
- 75)) = 94 (rounded off).
Example for a device metric normalization (minimize)
Consider the following values for the metric CPU Usage:
• Actual metric value: 79 (falls in average range)
• Mapping range for good (L1 and H1): 65–74
• Metric value range for average (L2 and H2): 55–84
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1854


