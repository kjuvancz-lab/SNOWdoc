# Zurich IT Operations Management — Service Operations Workspace for ITOM

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3885–4034 of 4823 | Part 1 of 2

Sections: Service Operations Workspace for ITOM (p3885)

---

<!-- page 3885 -->
Error message

Fix

Data mapping is not configured

Observability mapping hasn't been configured
for the service by an admin. See Create and
manage data mappings.

Authentication failed

Service Observability can't connect to the data
source. See Connect a Service Observability
data source.

No results found

No metrics were found for the chart.

Something went wrong

Connection to the data source was successful,
but the application performance management
(APM) instance didn't respond. This error
might be due to a connection timeout on the
APM side.

No impacted systems found (Impacted
systems chart on the Overview page)

Only services found on your service map can
be displayed. Update your service map to
include all services that should be included in
the chart. See Service Mapping.

Set up objectives (SLO Error Budget chart on
the Overview page)

SLOs haven't been configured for Service
Reliability Management. See Create SLOs,
SLIs, and error budget policies.

Service Operations Workspace for ITOM
®

ServiceNow Service Operations Workspace (SOW) is a configurable workspace designed
to streamline IT Operations Management (ITOM) workflows, offering a unified experience for
multiple IT operational processes. Configurable and user-friendly, it consolidates various tasks
into a single interface, allowing seamless navigation and easy access to tools and information.
By centralizing workflows, it enhances collaboration, facilitates efficient task management, and
provides real-time insights through different metrics. Highly customizable, it enables you to
tailor the workspace to your specific needs, optimizing productivity and workflow efficiency.
With its comprehensive set of features, including automation and collaboration tools, Service
Operations Workspace empowers users to work more effectively across different workflows,
boosting productivity organization-wide. Scalable to accommodate evolving business needs,
it ensures continued support for IT environments of all sizes, delivering superior services and
driving operational excellence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3885


<!-- page 3886 -->
For information regarding subscriptions for ITOM Service Operations Workspace, check the
ITOM AIOps subscription at Subscription for ITOM Health.
When setting up the Service Operations Workspace, it's crucial to configure both IT Operations
Management (ITOM) for managing alerts and IT Service Management (ITSM) for resolving
incidents and delivering services. This integrated setup ensures access to the full range of
features, facilitating comprehensive management of IT operations and service quality.
To know about the ITSM features, see Service Operations Workspace for ITSM

.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Get started

Explore

Configure

Learn about Service Operations
Workspace concepts and features

Configure environment,
tools, and user access

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3886


<!-- page 3887 -->
Use

Reference

Learn how agents can use
Service Operations Workspace

Get details about Service Operations
Workspace components such as
roles and dependent applications

Troubleshoot and get help
Contact Customer Service and Support

Exploring Service Operations Workspace for ITOM
Discover how Service Operations Workspace for ITOM streamlines the entire life cycle of alerts,
including alert generation, notification, grouping, analysis, investigation, resolution, and closure.

Overview of Service Operations Workspace
Service Operations Workspace for ITOM provides powerful AIOps Experience capabilities,
namely the Express List, Integrations Launchpad, Alert Automation, and AIOps Dashboards,
each delivering unique value.
Express List
Express List revolutionizes alert management by providing a consolidated platform
for efficient triage, root cause analysis (RCA), and alert remediation. With real-time
updates, dynamic filtering, and an intuitive preview pane, users can effortlessly
manage their alert workflows and take immediate action with unparalleled ease and
speed.
Integrations Launchpad
Integrations Launchpad offers a hub of seamless connections to various
external tools and services, simplifying the onboarding of new data sources.
This streamlines the integration process, allowing users to effortlessly leverage
their existing ITOM ecosystem within the ServiceNow platform. The Integrations
Launchpad enhances data exchange and cross-platform collaboration, boosting
efficiency and productivity.
Alert Automation
Alert automation provides crucial support as organizations navigate complex
IT infrastructures and rising data volumes. Manual alert handling is error-prone
and inefficient, underscoring the need for automated systems. By disregarding
irrelevant or false-positive alerts through ignore alert automation, and by using alert
enrichment, grouping, and response, these systems streamline alert response,
reduce human error, and ensure consistent, timely actions.
AIOps Dashboards
AIOps Dashboards provide comprehensive visualizations of critical operational
data and insights. Users can monitor key performance indicators (KPIs), track
service health, and gain valuable context on the overall IT environment. These
customizable dashboards empower users with actionable insights, facilitating datadriven decision-making and ensuring proactive responses to potential issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3887


<!-- page 3888 -->
When setting up the Service Operations Workspace, it's crucial to configure both IT Operations
Management (ITOM) for managing alerts and IT Service Management (ITSM) for resolving
incidents and delivering services. This integrated setup ensures access to the full range of
features, facilitating comprehensive management of IT operations and service quality.
For more information, see Exploring Service Operations Workspace for ITSM

.

Operator experience in Service Operations Workspace
1. Start of day: The operator begins by reviewing an overview of alerts and metrics in the Service
Operations Workspace to prioritize work.
2. Alert prioritization: The operator prioritizes alerts based on SLAs, priority level, and urgency.
3. Alert investigation: The operator investigates alerts in detail, leveraging historical data and
trends.
4. Access alert information: The operator accesses all related information from the alert record
page for a comprehensive view.
5. Resolve alerts: Using tailored recommendations, the operator resolves alerts efficiently.
6. Subject matter expert (SME) consultation: For complex or high-priority tasks, the operator
reaches out to SMEs or uses automated tools.
7. Collaboration: The operator collaborates with team members and stakeholders directly from
the alert, sharing insights and coordinating responses.
8. Initiate change requests or maintenance: To prevent future occurrences, the operator initiates
change requests or maintenance activities, addressing root causes and implementing longterm solutions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3888


<!-- page 3889 -->
Users
Role title [name]

Description

Admin

Configures and sets up Event Management properties
and rules.

[evt_mgmt_admin]
Operator
[evt_mgmt_operator]
User
[evt_mgmt_user]

Manages alerts, including closing and acknowledging
them.
Manages the lifecycle of alerts, including performing
basic operations such as viewing and acknowledging
them.

Benefits
Unify experience for multiple workflows
Consolidate various IT operations workflows into a single, intuitive interface,
allowing seamless task management across different areas of IT operations, thus
enhancing efficiency and reducing complexity.
Provide automated recommendations
Enhance efficiency and decision-making with automated recommendations tailored
to operator actions.
Deliver real-time insights
Provide real-time analytics and reporting capabilities for each integrated workflow,
enabling informed decision-making and proactive problem-solving by monitoring
key performance metrics and tracking operational status in real-time.
Targeted experience
Offer dynamic and minimal content based on the current task, with the next task
accessible with minimal clicks. Provide access to related alerts to support faster
response times.
Customize configurability
Enable organizations to tailor the workspace to specific requirements and
preferences, optimizing productivity by displaying relevant data and tools for each
workflow.
Enhance productivity
Empower users to work more efficiently across multiple workflows by automating
routine tasks, providing access to relevant information, and facilitating collaboration,
thus boosting productivity organization-wide.
Scale seamlessly
Accommodate changes in workload, requirements, and operational complexity for
all integrated workflows, ensuring continued support for evolving IT environments,
regardless of organizational size.
Related topics
List of workspaces

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3889


<!-- page 3890 -->
Service Operations Workspace for ITOM user interface
Explore the interface to understand how an operator can prioritize tasks and offer solutions.

Access Service Operations Workspace
Open the workspace by navigating to Workspaces > Service Operations Workspace.

Home page
To access information on the Home page, select the home icon (

).

The home page provides operators with a comprehensive snapshot of the current operational
landscape. The Overview section presents vital insights, including alerts assigned to the
operator, team-based alerts, unassigned team alerts, monitored services, and open alerts. This
Alerts Assigned to You section furnishes operators with specific details regarding alerts tailored
to their responsibilities. Information includes the alert number, initial event generation time,
description, priority group, severity, source, group, configuration item, state, node, metric name,
and last updated timestamp. Both sections streamline operations by offering operators a concise
overview and personalized insights into alerts relevant to their responsibilities, facilitating swift
prioritization and proactive resolution of critical issues.
Home page

List page
To access information on alerts from List, select the List icon (

).

The Lists tab displays predefined lists, while the My Lists tab allows users to create and
customize their own lists for personalized task management. For detailed instructions on creating
a list, see Create a list in Service Operations Workspace for ITOM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3890


<!-- page 3891 -->
Lists page

Record view
Access detailed information for any alert by selecting its alert number to open the record.
Alert details page

Express List
Express List offers quick alert information for efficient monitoring, resolution, impact evaluation,
tracking, and incident reporting.
To access information on express list, select the Express List icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3891


<!-- page 3892 -->
Express List page

Integrations Launchpad
The Integrations Launchpad consolidates events, metrics, and logs from your infrastructure,
providing insights into a unified system.
To access information on Integrations Launchpad, select the Integrations Launchpad icon (

).

Integrations Launchpad page

Alert automation
Automations streamline processes, enabling timely responses to potential issues by ignoring,
enriching, grouping, and responding to alerts. They reduce manual intervention, lower the risk of
errors, and free up IT teams to focus on strategic tasks, boosting system reliability and customer
satisfaction.
To access information on automations, select the alert automations icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3892


<!-- page 3893 -->
Automations page

AIOps Dashboards
The AIOps dashboards offer comprehensive visualizations of critical operational data. You can
monitor KPIs, track service health, and gain valuable context on the IT environment, enabling
proactive responses to issues.
To access information on dashboards, select the AIOps Dashboards icon (

)

AIOps Dashboards page

Configuring Service Operations Workspace for ITOM
Configure Service Operations Workspace for ITOM so that you can manage IT alert volumes
efficiently and customize the workspace to enhance service delivery and operational visibility.
The Service Operations Workspace for ITOM is a centralized hub designed to optimize IT
Operations Management by focusing on the handling and resolution of alerts. By leveraging
this workspace, administrators can streamline the process of monitoring, triaging, and resolving
alerts, thus enhancing service delivery and operational efficiency.

Note: Installing the AIOps Experience application [sn_sow_aiops] provides you with
Service Operations Workspace for ITOM.
If you want information regarding subscriptions for ITOM Service Operations Workspace, check
the ITOM AIOps subscription at Subscription for ITOM Health.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3893


<!-- page 3894 -->
When setting up the Service Operations Workspace, it's crucial to configure both IT Operations
Management (ITOM) for managing alerts and IT Service Management (ITSM) for resolving
incidents and delivering services. This integrated setup ensures access to the full range of
features, facilitating comprehensive management of IT operations and service quality.
To know about the ITSM configurations, see Configuring Service Operations Workspace for
ITSM .
Install Service Operations Workspace for ITOM application
You can install the AIOps Experience [sn_sow_aiops] application to get Service Operations
Workspace for ITOM if you have the admin role.The application includes demo data and installs
®
related ServiceNow Store applications if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the AIOps Experience
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Service Operations Workspace supports domain separation. For details, see Domain
separation and Event Management.
Role required: admin

About this task

The following items are installed with AIOps Experience [sn_sow_aiops] plugin.
• Roles
• Plugins
For more information, see Components installed with AIOps Experience.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the AIOps Experience [sn_sow_aiops] using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3894


<!-- page 3895 -->
ITOM AIOps configuration center
The ITOM AIOps configuration center is a centralized hub to manage AIOps settings. It helps
you integrate monitoring tools, optimize alerts, metrics, and logs, manage services, dashboards,
teams, and authorization—streamlining event-to-response workflows for better visibility, noise
reduction, and operational efficiency.
You can access ITOM AIOps configuration center by navigating to Workspaces > Service
Operations Workspace and then selecting the ITOM AIOps configuration center icon
available at the bottom of the left navigation pane.

that is

Note: The ITOM AIops configuration center is accessible only to aiops_admin.
The AIOps configuration center provides a single interface to configure and administer AIOps
capabilities in Service Operations Workspace (SOW). You can:
• Integrate monitoring tools to bring in events, logs, and metrics.
• Optimize how alerts are enriched, grouped, ignored, and responded to.
• Fine-tune metrics and log rules for accurate anomaly detection and alerting.
• Set up synthetic monitoring for app uptime.
• Manage services (service monitoring dashboards, SLIs/SLOs, error budgets) for Service
Observability and Service Reliability Management.
• Access AIOps dashboards to track performance, operations, and business value.
• Configure authorization for admins, integrations, APIs, and notifications.
• Govern teams and approvals for service creation and on-call schedules.
The AIOps configuration center consolidates all administrative tasks needed to set up and
operate ITOM AIOps effectively—making it easier to streamline monitoring, improve incident
response, and maintain service reliability.
Customize the Service Operations Workspace for ITOM home page
You can customize the data displayed in sub pages of the home page that is available in the
base system. For any visual styling changes, you need to create a copy of that landing page and
edit it.
Modify the greeting text on the landing page
Customize the header message that is a part of the greeting text on the home page. This will
create a more personalized user experience, making visitors feel welcomed and valued, and can
also help in setting the right tone and context for the information presented.

Before you begin

Role required: evt_mgmt_admin or admin

About this task

The Get service desk agent shift data broker server script calls the
SOWServiceDeskAgentShift script includes to display the shift information in the greeting
text.
While the display text can be customized for the default landing page, the visual styling changes
to the text can be done only by creating a copy of the landing page.
Suppose you are on call until Monday, March 21. You can update your greetings to reflect your
on-call status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3895


<!-- page 3896 -->
Header

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
3. On the Landing Page form, select Configure next to Greetings.
The Script Includes form is displayed for SOWServiceDeskAgentShift, which internally calls
the SOWServiceDeskAgentShiftSNC
4. Copy the Script value of SOWServiceDeskAgentShiftSNC.
a. Navigate to All > System Definition > Script Includes.
b. From the list of Script Includes, open SOWServiceDeskAgentShiftSNC.
Script Includes list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3896


<!-- page 3897 -->
c. Copy the Script field value.
Script includes details page

5. Edit the SOWServiceDeskAgentShift script.
a. Navigate to All > System Definition > Script Includes.
b. From the list of Script Includes, open SOWServiceDeskAgentShift.
c. Paste the Script field value that you copied from SOWServiceDeskAgentShiftSNC.
initialize: function() {
this.PLUGINS = {
ON_CALL: "com.snc.on_call_rotation",
SHIFT_PLANNING: "com.sn_shift_planning"
};
this.DAYS_AHEAD =
gs.getProperty('com.snc.on_call_rotation.upcoming_rota_day
s', 30);
this.DATE_FORMAT = gs.getDateFormat();
this.TIME_FORMAT = gs.getTimeFormat();
this.WFO_SCHEMA_IDENTIFIER = 'readInTimezone';
this.WFO_ONCALL_TYPE_IDENTIFIER =
'oncallAPIReadInTimezone';
this.WEEK_DAY_FORMAT = 'EEEE';
this.FORMAT = {

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3897


<!-- page 3898 -->
SERVICE_DESK_HEADER: 'SERVICE_DESK_HEADER'
};
this.DATE_TIME_FORMAT_FULL = "full";
},

getUpcomingShift: function(userId, outputFormat, wfoShift)
{
var upcomingShifts, gd = new GlideDate();
var from = gd.getDisplayValueInternal();
gd.addDaysLocalTime(this.DAYS_AHEAD);
var to = gd.getDisplayValueInternal();
var mayBeWFOUser = userId == gs.getUserID() ?
gs.hasRole("sn_shift_planning.agent") : true;
if
(GlidePluginManager.isActive(this.PLUGINS.SHIFT_PLANNING) &&
mayBeWFOUser && wfoShift)
upcomingShifts = this.getWFOShifts(from, to, userId);
var isWFOResponseValid = Array.isArray(upcomingShifts) &&
upcomingShifts.length > 0;
if (!isWFOResponseValid &&
GlidePluginManager.isActive(this.PLUGINS.ON_CALL))
upcomingShifts = this.getOnCallShifts(from, to,
userId);
return this.getFormattedShift(upcomingShifts,
outputFormat);
},

getWFOShifts: function(from, to, userId) {
var smUtil = new sn_shift_planning.ScheduleManagerUtil();
var defaultEventCategories = [
smUtil.WORK_CATEGORY_SYS_ID,
smUtil.ON_CALL_CATEGORY_SYS_ID
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3898


<!-- page 3899 -->
];
var params = {
"assignmentGroups": "",
"individualAgents": userId,
"startDate": from,
"endDate": to,
"published": true,
"eventCategories": defaultEventCategories,
"filter": {
"sn_shift_planning_agent_schedule": {
"event": ["8d03fd9b0f310010717cc562ff767e4a",
"936319993bd02010e81a4ee1f3efc419"]
}
}
};
var upcomingShifts = [];
try {
var agentScheduleRESTAPIUtils = new
sn_shift_planning.AgentScheduleRESTAPIUtils();
var spans =
agentScheduleRESTAPIUtils.retrieveAgentSchedulesFromParams(p
arams);
if (spans && spans.shiftData &&
spans.shiftData.user && spans.shiftData.user.data
&& spans.shiftData.user.data.length > 0 &&
spans.shiftData.user.data[0].schedules) {
var schedules =
spans.shiftData.user.data[0].schedules,
arrayUtil = new global.ArrayUtil();
for (var schedule in schedules)
upcomingShifts = arrayUtil.union(upcomingShifts,
schedules[schedule]);
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3899


<!-- page 3900 -->
} catch (e) {
gs.error("SOWServiceDeskAgentShiftSNC: Error fetching
WFO shifts");
}

return upcomingShifts;
},

getOnCallShifts: function(from, to, userId) {
var onCallCommon = new global.OnCallCommon();
var onCallGroups = onCallCommon.getMyGroups();
var spans = new global.OCRotationV2(null,
global.OCRotationV2.DEFAULT_FORMAT_OPTION).setStartDate(from
).setEndDate(to).setUserIds(userId).setGroupIds(onCallGroups)
.getSpans();
var upcomingShifts = [];
for (var i = 0; i < spans.length; i++)
if ((spans[i].type == "roster" || spans[i].type ==
"override") && spans[i].user_id == userId)
upcomingShifts.push(spans[i]);
return upcomingShifts;
},

getFormattedShift: function(upcomingShifts, outputFormat) {
if (gs.nil(upcomingShifts))
return;
switch (outputFormat) {
case this.FORMAT.SERVICE_DESK_HEADER:
return
this.getServiceDeskFormattedShift(upcomingShifts);
default:
return upcomingShifts;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3900


<!-- page 3901 -->
}
},

getServiceDeskFormattedShift: function(upcomingShifts) {
var response = {
shiftText: "",
nearestShift: {}
};
var startAttr = "start",
endAttr = "end",
isOnCall = true;
var dateFormat = 'EEEE, MMM dd',
timeFormat = 'hh:mm a';
var isWFOSchema = Array.isArray(upcomingShifts) &&
upcomingShifts.length > 0 && this.WFO_SCHEMA_IDENTIFIER in
upcomingShifts[0];
if (isWFOSchema)
startAttr = "scheduledStartTime", endAttr =
"scheduledEndTime";
response.nearestShift =
this.getNearestShift(upcomingShifts, startAttr, endAttr);
if (response.nearestShift) {
if (isWFOSchema) {
if (response.nearestShift.schedule
&& !(this.WFO_ONCALL_TYPE_IDENTIFIER in
response.nearestShift.schedule))
isOnCall = false;
}
if (isOnCall) {
if (response.nearestShift.isCurrent) {
if (response.nearestShift.roster_name)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3901


<!-- page 3902 -->
response.shiftText = gs.getMessage("You are
on-call until {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[endAttr]),
response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("You are
on-call until {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[startAttr
]), response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
} else {
if (response.nearestShift.isCurrent) {
response.shiftText = gs.getMessage("Your shift ends
on {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else
response.shiftText = gs.getMessage("Your next shift
starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
}

return response;
},

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3902


<!-- page 3903 -->
getNearestShift: function(upcomingShifts, startAttr,
endAttr) {
if (gs.nil(upcomingShifts) || gs.nil(startAttr) ||
gs.nil(endAttr))
return;
var nearestShift;
upcomingShifts.sort(function(shift_1, shift_2) {
var gdt1 = new GlideDateTime();
gdt1.setDisplayValueInternal(shift_1[startAttr]);
var gdt2 = new GlideDateTime();
gdt2.setDisplayValueInternal(shift_2[startAttr]);
return GlideDateTime.subtract(gdt2,
gdt1).getNumericValue();
});
var currentDateTime = new GlideDateTime(),
startDateTime = new GlideDateTime(),
endDateTime = new GlideDateTime();
for (var i = 0; i < upcomingShifts.length; i++) {

startDateTime.setDisplayValueInternal(upcomingShifts[i][star
tAttr] + "");

endDateTime.setDisplayValueInternal(upcomingShifts[i][endAt
tr] + "");
if (currentDateTime.onOrBefore(endDateTime)) {
nearestShift = upcomingShifts[i];
if (currentDateTime.onOrAfter(startDateTime))
nearestShift.isCurrent = true;
else
nearestShift.isCurrent = false;
break;
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3903


<!-- page 3904 -->
}
return nearestShift;
},

getFormattedDateSpan: function(date, dateFormat,
timeFormat) {
var formattedDate = this.getFormattedDate(date,
dateFormat);
var dateAmPmTime = this.getFormattedTime(date,
timeFormat);
return formattedDate + " " + dateAmPmTime;
},

getFormattedDate: function(inputDate, format) {
var date = new GlideDateTime();
date.setDisplayValueInternal(inputDate);
format = !format ? this.DATE_FORMAT : format;
var gd = date.getLocalDate();
return gd.getByFormat(format);
},

getFormattedTime: function(inputDate, format) {
var date = new GlideDateTime();
date.setDisplayValueInternal(inputDate);
format = !format ? this.TIME_FORMAT : format;
var gt = date.getLocalTime();
return gt.getByFormat(format);
},

getFormattedDateTime: function(date) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3904


<!-- page 3905 -->
var dateTime = new GlideDateTime();
dateTime.setDisplayValueInternal(date);
return
dateTime.getDisplayValueLang(this.DATE_TIME_FORMAT_FULL);
},

endsToday: function(inputDate) {
var inputGdt = new GlideDateTime();
inputGdt.setDisplayValueInternal(inputDate);
return new GlideDateTime().getLocalDate().getValue() ==
inputGdt.getLocalDate().getValue();
},

endingTomorrow: function(inputDate) {
var inputGdt = new GlideDateTime();
inputGdt.setDisplayValueInternal(inputDate);
var tomorrowDateTime = new GlideDateTime();
tomorrowDateTime.addDaysLocalTime(1);
return tomorrowDateTime.getLocalDate().getValue() ==
inputGdt.getLocalDate().getValue();
},
d. Edit the following part of the script as mentioned.
if (isOnCall) {
if (response.nearestShift.isCurrent) {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("You are
on-call until {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[endAttr]),
response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("You are
on-call until {0}",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3905


<!-- page 3906 -->
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[startAttr
]), response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
} else {
if (response.nearestShift.isCurrent) {
response.shiftText = gs.getMessage("Your shift ends
on {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else
response.shiftText = gs.getMessage("Your next shift
starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
6. Select Update.
Modify the first-level cards in the Service Operations Workspace for ITOM Overview section
Customize the data displayed in the first-level cards in the Overview section by configuring
various parameters such as the header label, data source, metric, group by field, and
viewAllQuery. This allows for a more tailored and relevant display of information.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to sys_ux_client_script_include.list.
2. From the UX Client Script Includes list, select SowEMLandingPageUtilsSNC client script
include definition.
3. On the UX Client Script Include form, edit the Script field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3906


<!-- page 3907 -->
For example:
}
};
const labelMap = {
'em_alert': {
'alerts_assigned_to_you': {
'1': 'Alerts assigned to you - Urgent',
'2': 'Alerts assigned to you - High',
'3': 'Alerts assigned to you - Moderate',
'4': 'Alerts assigned to you - Low'
},
'open_alerts': {
'1': 'Open alerts - Urgent',
'2': 'Open alerts - High',
'3': 'Open alerts - Moderate',
'4': 'Open alerts - Low'
},
'team_alerts_assigned': 'Assigned team alerts - to
',
'team_alerts_unassigned': {
'1': 'Unassigned team alerts - Urgent',
'2': 'Unassigned team alerts - High',
'3': 'Unassigned team alerts - Moderate',
'4': 'Unassigned team alerts - Low'
}
}
4. Click Update.
Create a copy of the Service Operations Workspace for ITOM landing page
Make visual styling changes to the sub-pages in the home page. This will enhance the overall
user experience by providing a consistent and visually appealing interface, improving navigation,
and ensuring that key information is easily accessible and engaging.

Before you begin

Role required: evt_mgmt_admin or ui_builder_admin

About this task

A page is content that lives at a specific URL. When a user opens the URL, they will see a
different variant of this page based on the audience, conditions, and order that you set.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Display name field, filter and search for Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3907


<!-- page 3908 -->
The Experiences page opens.

3. Open Service Operations Workspace by selecting it.
4. Next to Pages and variants, select the plus icon (

).

5. Select Add a variant to a page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3908


<!-- page 3909 -->
The Add variant to an existing page window opens.

6. To create a duplicate page content in the existing URL path, select Duplicate and follow the
steps.
Open your configurable workspace experience in UI Builder
Access your Configurable Workspace experience in UI Builder for editing.

Before you begin

Role required: ui_builder_admin or admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select Experiences.
3. Select your experience.

Result

Your Configurable Workspace experience opens in UI Builder.
Redirect to the Service Operations Workspace home page
Enable quick task prioritization by directing agents to the homepage immediately upon logging
into the ServiceNow instance. This improves workflow efficiency by granting agents immediate
access to essential tools and information, facilitating the timely resolution of critical tasks and
issues.

Before you begin

Ensure that the value of the glide.login.home property is set to /now/nav/
ui/home. This property specifies the default homepage that is displayed upon logging in.
Role required: evt_mgmt_admin

Procedure
1. Select All and then search for sys_properties.list.
2. Add the sn_sow.service_desk_groups property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3909


<!-- page 3910 -->
3. In the Value field, enter the sys_id of the user group to which the operator belongs.

Note: If you want to specify multiple service desk groups, add a comma-separated list
of group sys_ids in the value field.
4. Select Update.
Open your Configurable Workspace experience in UI Builder
Access your Configurable Workspace experience in UI Builder for editing.

Before you begin

Role required: ui_builder_admin or admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select Experiences.
3. Select your experience.

Result

Your Configurable Workspace experience opens in UI Builder.
Service Operations Workspace
The Service Operations Workspace monitors services within your Event Management
environment, enabling you to review their status and identify those at risk of suboptimal
performance. This empowers you to promptly address any issues.

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.
You can configure the Service Operations Workspace to remain logged in for up to 24 hours. For
more information, see Manage user sessions .
View application service health information in Service Operations Workspace
Monitor the health of services and filter the information that you want to view, allowing you to
focus on the most relevant data and make informed decisions quickly.

Before you begin

Role required: evt_mgmt_user or evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the left navigation bar, select the Service Dashboard icon:
The Service Dashboard page appears.

.

Note: The application services that appear in the Service Dashboard are those added
to the Impact Filter Services list. For more information, see Add application services for
impact calculation.
3. Perform the following actions as required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3910


<!-- page 3911 -->
Features and actions
Features

Make the tile size
larger or smaller.

Actions

a. Select the Display settings icon (

).

b. From the Display settings pop-up window, select the size.

Group services
by selected
criteria

Group order

Segment each
group by

Filter information

Select the arrow next to Group By and then select the criteria by which
you want to group services.

Select the arrow next to Group order and then select the criteria by which
you want to group services.

Segment each group by severity, business criticality, and cost to
categorize and organize them into distinct groups based on these
attributes.

Filter the information displayed on the dashboard ensuring you focus on
relevant data for effective monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3911


<!-- page 3912 -->
Features

Actions

◦ To set a global filter, select the Filter icon ( ) and set the global filter
condition, add filter conditions, and then select Apply.

◦ To exclude a severity from the display, select it in the Severity
Breakdown ribbon. Filtered-out severities will appear dimmed. To
restore a dimmed severity to the display, simply select it again.

Create a user view in Service Operations Workspace
Create and customize a user view in the Service Operations Workspace to enable viewing
information in the format you want.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the left navigation bar, select the Service Dashboard icon:
The Service Dashboard page appears.

.

Note: The application services that appear in the Service Dashboard are those added
to the Impact Filter Services list. For more information, see Add application services for
impact calculation.
3. Customize the dashboard appearance by selecting output criteria from the Group by, Group
order, or Segment each group by filters, or by selecting the relevant Severity breakdown.
Selecting Service group > All in the Group by filter displays all service groups.
4. Configure the information for the view to display by clicking the filter services icon (
setting a global filter.

) and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3912


<!-- page 3913 -->
For example, you can configure a filter to display only those services assigned to a specific
user.

Note: To discard your changes and revert to the view's most recently saved state, select
the More actions icon (

) and select Discard changes.

5. Save your new view by clicking the More actions icon (
Save as copy.

) next to the Save button and select

6. In the Save as copy dialog box, enter the name of your view in the View name field.
The view is saved as a Private view (visible only to the logged-in user) and is available for use.
Views are grouped in the following categories:
◦ Global views: Visible to all users. Only an Event Management administrator can create a
global view.
◦ Private views: Visible only to the logged-in user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3913


<!-- page 3914 -->
Note: You can switch between different views by selecting a view from the list next to
the Save button.

Delete a user view in Service Operations Workspace
Delete a Service Operations Workspace user view you no longer need. You perform this action
from the Event Management menu, outside of Service Operations Workspace.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. In your Event Management instance, in the navigation pane, search for
noc_user_view.list.
The Operator Workspace Views page opens.

2. Select the check box next to the view you want to delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3914


<!-- page 3915 -->
3. In the Actions on selected rows list, select Delete.

View application service details in Service Operations Workspace
View comprehensive information about an application service, including its name, business
criticality, ownership, process and operational status, traffic-based discovery details, discovery
status, and relevant comments. This enables thorough analysis of the application service's
current state and usage, provides clarity on ownership and criticality, and facilitates effective
prioritization of resources and actions.

Before you begin

Role required: evt_mgmt_user, evt_mgmt_operator, or evt_mgmt_admin

About this task
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the left navigation bar, select the Service Dashboard icon:
The Service Dashboard page appears.

.

Note: The application services that appear in the Service Dashboard are those added
to the Impact Filter Services list. For more information, see Add application services for
impact calculation.
3. Select a service tile.
A pop-up window displays the business criticality and severity of a service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3915


<!-- page 3916 -->
4. Select Service Details.
By default, the Details tab is selected.
The details page provides comprehensive information about an application service.

For information on the fields, see Application service details page.
View primary alerts associated with a service
View the primary alerts associated with a service to help troubleshoot issues with the service.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the left navigation bar, select the Service Dashboard icon:
The Service Dashboard page appears.

.

Note: The application services that appear in the Service Dashboard are those added
to the Impact Filter Services list. For more information, see Add application services for
impact calculation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3916


<!-- page 3917 -->
3. Select a service tile.
A pop-up window displays the business criticality and severity of a service.

4. Select Service Details.
By default, the Details tab is selected.
5. Select the Related records tab.
6. From the left pane, select Related Alerts.

View details about an alert by selecting its number in the Number column.
Create a list in Service Operations Workspace for ITOM
Customize lists in Service Operations Workspace by creating new lists, changing their order,
modifying their content, or deleting lists as needed. This flexibility allows operators to organize
information according to their specific requirements, facilitating easier navigation, quicker
access to relevant data, and streamlined workflow management.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3917


<!-- page 3918 -->
About this task

Create custom groupings of records listed under the Lists tab, such as incidents tied to a
specific company. Customize existing lists or create new ones exclusively visible under the My
Lists tab for personalized organization.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select the My Lists tab.
4. Select Add new list.

5. Create a list by either basing it on an existing list or creating a new one.
◦ To base your list on an existing list, select Start from existing.
◦ To begin a new list, select Create your own.
6. On the form, fill in the fields.
For more information on the fields, see Create list fields.
7. Select Create.
The list appears in the My Lists tab.
Rename a list in Service Operations Workspace for ITOM
Rename a list to better reflect its content or purpose. This customization allows operators to align
list names with their workflow terminology, improving clarity and usability.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select the My Lists tab.
4. Select the list you wish to rename.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3918


<!-- page 3919 -->
5. Select the settings icon (

) and then select Rename.

6. In the Rename pop-up window, in the Title field, rename the name of the list and select Save.
The list is renamed.
Reorder list in Service Operations Workspace for ITOM
Reorder lists to prioritize information and enhance workflow organization.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select the My Lists tab.

4. Select the list you want to reorder.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3919


<!-- page 3920 -->
5. Select Reorder to adjust the position of the list.

Delete a list in Service Operations Workspace for ITOM
Delete a list to efficiently manage data sets, declutter your workspace, and maintain organized
information.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select the My Lists tab.
4. Select the list you wish to delete.
5. Select the settings icon (

) and then select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3920


<!-- page 3921 -->
6. In the confirmation pop-up window, select Delete.
The list is delete.
View unified service map and the impact paths in Service Operations Workspace
Visualize relationships between Configuration Items (CIs) and alerts with real-time updates
and detailed impact paths. Enhance troubleshooting and proactive management by quickly
identifying root causes and dependencies for both discovered services and application services.

Before you begin

Role required: evt_mgmt_user, evt_mgmt_operator, or evt_mgmt_admin

About this task

The enhanced service map in Service Operations Workspace displays the impacted path of
an alert to enable you to quickly assess its impact on a service. You can access the enhanced
service map directly from the Service Dashboard, or from the preview panel or from an impacted
service in the Express List.The service map has several modes of display:
• For a service with up to 60 CIs, regardless of alert status, the map shows all CIs.
• For a service with more than 60 CIs without alerts, the map shows up to 60 CIs.
• For a service with more than 60 CIs with alerts, the map shows the impacted path of the most
recent alert with the highest severity.
You can also investigate a wider view of the service topology on the service map for up to 250
CIs regardless of alerts. For a broader view, select Clear and choose a mode of either up to 60 or
up to 250 nodes.

Note: Admins can continue using the legacy service map to manage the propagation of
severity. Access the map by navigating to Services > Application Services.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the left navigation bar, select the Service Dashboard icon:
The Service Dashboard page appears.

.

Note: The application services that appear in the Service Dashboard are those added
to the Impact Filter Services list. For more information, see Add application services for
impact calculation.
3. Select a service tile.
A pop-up window displays the business criticality and severity of a service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3921


<!-- page 3922 -->
4. Select Service Map.
The application map along with the CI relationships appears.

Note: Depending on the size of the service, the unified map either shows the full map (if
it contains up to 60 CIs) or an Impact Path leading to the most critical alert (for maps with
over 60 CIs). For large maps, you can reveal more CIs by clearing the existing selecting
and navigating to the Showing more nodes optimization option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3922


<!-- page 3923 -->
If the impact path panel is closed, you can open it by selecting the Impact path icon (

).

5. Navigate between alerts by selecting an alert card.
Alternatively, use the search function to find an alert by description, CI, or alert number and
focus on its impact path.
Selecting any alert tile displays the unified map for that alert. To return to the full map for the
service, select Clear.

6. To view alert details, select the Open Record Form icon (

) on the alert card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3923


<!-- page 3924 -->
The alert details page opens.

Enable and disable live updates for alert lists
Choose live updates for alert lists to receive real-time updates, or disable live updates and
refresh the alert list manually.

Before you begin

Role required: evt_mgmt_user, evt_mgmt_operator, or evt_mgmt_admin

About this task

By default, the toggle for live updates is off, and you must enable it to receive live alert updates.
Once enabled, the alert list automatically updates whenever an action is performed on an
alert. Live updates enhance the accuracy and timeliness of the information displayed, enabling
quicker response times, and improving overall system reliability and performance.
To update the alert list manually, you can switch the live updates toggle to off. Manual updates
are useful when many alerts are being processed continuously, to avoid excessive refreshing.

Note: Set Read Role permissions to the Event Management user (evt_mgmt_user).
Otherwise, the property won't be available.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select the Default lists tab.
4. Under Alerts, select the list where you want to enable or disable live updates.

Note: Live updates aren’t available for the All Alert list.
5. At the top of the alert list, select the toggle switch to turn live updates on or off.
◦ When live updates are turned on, the setting is saved for future logins by the same user.
◦ When live updates are off, the refresh button displays a counter to show the number of
changes since the last refresh. You can select the refresh button anytime to update the list
manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3924


<!-- page 3925 -->
Configure alert metrics
Configure the metrics you want to be visible for Service Operations Workspace alerts or use the
metrics configured with the base system to focus on relevant data for faster troubleshooting.

Before you begin

Ensure you have the Metric Intelligence (sn_metrics_ng) plugin installed.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Administration > Metrics View Configuration.

2. On the Metrics View Configuration page, select New.
3. On the form, fill in the fields.
For information on the fields, see Metrics View Configuration form fields.
4. Select Submit.
View CI health in Metric Explorer
View the health and performance of an alert's CI using Metric Explorer, to help troubleshoot
problematic areas in the CI.

Before you begin

All plugins related to Event Management, Metric Intelligence, and Metric Explorer, are required.
Roles required:
• To access Metric Intelligence metrics in Metric Explorer, the workspace_agent and itil roles are
required.
• To configure the set of metrics that appears in Metric Explorer for a class, the admin or
evt_mgmt_admin role is required.

About this task

Metric Explorer displays the following Metric Intelligence data:
• Charts, control bounds, and aggregations for key metrics for Configuration Items (CIs), in a
single location.
• Aggregation of metrics for CIs with resources, in a single consolidated time series.
• Ability for administrators to configure which metric types appear for each CI class.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3925


<!-- page 3926 -->
Metrics are displayed only for alerts containing a CI.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select Lists > Alerts > All Alerts.
The Alerts - All Alerts page opens.
4. Select the alert number to open it.
The alert opens in a separate tab, displaying the Overview tab.
5. Select the Metrics tab.
6. Select the Metric explorer button.
The Metric explorer interface opens.

Note: You can also access the Metrics subtab and Metric Explorer button when
selecting a CI.
7. Select metrics in the Explore section to display the metrics in graph format in the Custom
chart section.
Metrics are divided according to the following subtabs:
Explore section subtabs
Subtab

Description

Displays metrics on the current CI.
Displays metrics on other CIs on the same
host.
Displays metrics on entry points that relate to
the service that the CI is impacting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3926


<!-- page 3927 -->
Subtab

Description

Note: When working with
large quantities of entry points
(100K or more), collecting entry
point metrics may cause system
degradation. To prevent this, create the

sn_disable_selection_entry_point
property (All > System Properties > All
Properties) and set it to true to turn off
metric collection for entry points.

8. In the Custom chart section, configure a time range for which you want to view the displayed
metrics.
9. Label alerts on the Custom chart by turning on the Show alerts on CI option.
An alert icon (

) appears at the top of the graph at the point where the alert occurred.

View alert metric trends in Service Operations Workspace
View the metrics for an alert and adjust the time range to see the trends for either the alert or its
associated Configuration Item (CI), enabling more accurate analysis and timely decision-making.

Before you begin

Ensure you have the Metric Intelligence (sn_metrics_ng) plugin installed.
Configure the metrics to be displayed for the alert, as described in Configure alert metrics.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the List icon:

.

3. Select Lists > Alerts > All Alerts.
The Alerts - All Alerts page opens.
4. Select the alert number to open it.
The alert opens in a separate tab, displaying the Overview tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3927


<!-- page 3928 -->
5. Select the Metrics tab.
Metrics tab

6. In the fields above the metric charts, configure the time range for the alert's metrics.

To customize the metrics display, configure the following properties on the System Properties
> All Properties page:
◦ ws_metric.widgets_number_limit: Specify the number of widgets/records that
can be displayed on the metrics tab.
◦ ws_metric.datasets_per_widget_limit: Specify the number of charts/datasets
that can be displayed on a chart.

Field name

Description

Time range relevant to alert

Duration for calculating metrics around the
alert.

Start time

Start date and time for metric calculations.

End time

End date and time for metric calculations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3928


<!-- page 3929 -->
7. Select a parameter below a chart to hide the specified parameter's data on the chart.
8. Optional: Select the Insights Explorer button to view metrics by dragging and dropping them
onto a timeline.
9. Select Save.
10. Optional: View a time range for an alert's CI.
a. Select the Overview tab.
b. Under the Impact section, on the Configuration item card, select the link to the CI that
appears under the Name field.

c. Select the Metrics tab.
d. Select Save.
On-call scheduling in Service Operations Workspace for ITOM
ITOM Service Operations Workspace supports creating and managing your on-call shifts and
schedules. On-call schedule determines who is on-call at a given time. Learn how to configure
on-call calendars and escalation policies to ensure timely responses to critical issues, reducing
downtime and maintaining service continuity. Streamlining these processes enhances team
readiness, minimizes disruptions, and improves service reliability.

Getting started with on-call scheduling
To enable on-call scheduling for alerts, first incorporate the Alert table [em_alert] into the Trigger
Rule Table Config list. For more information, see Add alert table to enable on-call scheduling for
Service Operations Workspace for ITOM.

Teams in Service Operations Workspace
Use the Teams menu (
) in Service Operations Workspace to view all teams. Select a team card
to view and manage a team's schedule, define escalation policies, and team preferences for the
selected shift. This feature verifies that your team knows who is on call, is accountable, and is
confident that critical alerts or incidents are acknowledged. For information on creating a shift,
see Create on-call shift for your team .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3929


<!-- page 3930 -->
Add alert table to enable on-call scheduling for Service Operations Workspace for ITOM
Enable on-call scheduling by incorporating the Alert table [em_alert] into the Trigger Rule Table
Config list. This allows for creating shifts and implementing escalation triggers and policies,
ensuring teams can promptly respond to alerts and maintain operational continuity.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All and in the search field, type trigger_rule_table_cfg.list.
The Trigger Rule Table Configs page opens.
2. On the form, fill in the fields with the following values.

◦ In the Table field, select Alert [em_alert].
◦ In the Trigger group field, select Assignment group.
◦ In the Trigger user field, select Assigned to.
◦ In the Journal field, select Work notes.
3. Select Submit.

What to do next
Create on-call shift for your team

.

Using Service Operations Workspace for ITOM
Service Operations Workspace for ITOM delivers a unified platform integrating various
applications, specializing in streamlined alert management. Seamlessly manage IT Operations
workflows while efficiently handling alerts, ensuring optimal performance and productivity.
When setting up the Service Operations Workspace, it's crucial to configure both IT Operations
Management (ITOM) for managing alerts and IT Service Management (ITSM) for resolving
incidents and delivering services. This integrated setup ensures access to the full range of
features, facilitating comprehensive management of IT operations and service quality.
For more information on the tasks within ITSM, see Service Operations Workspace for ITSM

.

Integrations Launchpad in Service Operations Workspace for ITOM
The Integrations Launchpad showcases all Event Management connector integrations, allowing
users to pull or push events from external or internal devices. This centralized hub simplifies
Event Management by consolidating integration options in one place.
The Integrations Launchpad streamlines the process of managing and utilizing event connectors,
enhancing operational efficiency and ensuring seamless integration of event data from various
external sources. This centralization helps users maintain better control and visibility over their
Event Management ecosystem.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3930


<!-- page 3931 -->
Browse Integrations tab
Displays all pull, push, and custom connector integrations, including connectors available from
the ServiceNow store and third parties. This tab features:
• Search Box: Helps you quickly find a specific data source by entering keywords, improving
efficiency and saving time.
• All Integrations list: Organizes integrations into categories such as All Integrations, Events
(Push, Pull, Custom), Metrics (ACC-M), and Logs (HLA). This categorization makes it easier for
users to browse the list and select the relevant type of integration they need.
Browse integrations tab

Installed Integrations tab
Active and inactive installed integrations

Lists all user-configured integrations, both active and inactive. This tab features:
• Search Box: Helps users quickly find a specific data source by entering keywords, improving
efficiency and saving time.
• All Integrations list: Organizes integrations into categories such as All Integrations, Events
(Push, Pull, Custom), Metrics (ACC-M), and Logs (HLA). This categorization makes it easier for
users to browse the list and select the relevant type of integration they need.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3931


<!-- page 3932 -->
• All statuses list: Allows you to filter integrations by their status—All Statuses, Active, Inactive,
Draft, or No Data. This helps users quickly identify and manage integrations based on their
current state.
Integration status and description
Status

Description

All statuses

All integration statuses

Active

Active integrations that were successfully installed

Inactive

Inactive integrations that were successfully installed

Draft

In-progress integrations with a configuration that was
started but not completed

No data

Integrations that were successfully installed with no data

Configure an event pull connector
Configure event pull connectors that require a script, connector definition, and connector
instance to pull events from external devices. These connectors automate the data retrieval
process, ensuring the seamless integration of external events into your system for efficient
monitoring and management.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Pull.
Only pull connector tiles are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3932


<!-- page 3933 -->
Pull connectors

5. Select a pull connector tile.
If a pop-up menu opens, select the data to track from that connector and select Continue.
Pull connectors details page

6. In the Details tab, in the Connector name field, enter a unique name for the connector type.
7. Optional: In the Tags field, enter tags to help locate and identify connectors of this type on the
Express List.
To add additional tags, select the plus icon (
opens.

) next to the Tags field. The Add tags window

a. In the Key field, enter a tag key.
b. In the Value field, enter a tag value.
c. Select Add.
8. Optional: In the Description field, enter brief information about this connector.
9. Optional: From the Assignment group drop-down list, select the group or team that is
responsible for managing and maintaining the connector.
10. In the Host IP field, enter the IP address that is used to select the appropriate MID Server for
communicating with the event source host.
You can use the host name instead of the host IP.
11. From the Credentials drop-down list, select the valid credentials to access the event source
host.
To create a new credential, select Create new credentials and continue with the process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3933


<!-- page 3934 -->
12. Optional: If you want to customize configurations to meet specific requirements, select
Advanced settings and fill in the form.

Field

Description

Connected MID Server

Determine whether you want to have the system
choose the optimal MID Server or choose a specific
MID Server yourself.
Perform only if you must make modifications to the
MID Server otherwise leave it empty and let the
system choose the optimal MID Server.

Event collection schedule (seconds)

Enter the frequency in seconds that indicates how
often the system should check for new events from
the external event source. The value can’t be lower
than the minimum schedule property, which by
default is 120 seconds.

Protocol

Defines the communication protocol used for
retrieving events from external devices.

severity_by_state_type

Determines the severity level assigned to events
based on their state type.

time_zone

Specifies the time zone used for recording and
displaying event timestamps.

offset_min

Sets the time offset for event retrieval to ensure
accurate synchronization.

Port

Verify the default values for your connector type
such as port details or time formats and modify them
as necessary. Default values from your connector
are filled-in. Specifies the port number used for
communication with external devices.

max_fetch_interval_min

Limits the maximum interval between event fetch
operations.

initial_sync_in_days

Sets the duration for the initial synchronization
process when retrieving historical data.

13. Optional: Test the connector before activating it by selecting Test and Save.
14. To save the connector, select Save.
15. To activate the pull connector, select Activate.
The pull connector is activated and its tile is displayed in the Installed Integrations tab.

What to do next

To confirm the successful configuration of the pull connector and the flow of events into the
system, select the Related events tab. If the setup is successful, proceed to Add automation
to establish an alert automation. For details on Related events tab, see Review integration and
configuration health and for information on alert automation, see Alert automation in Service
Operations Workspace for ITOM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3934


<!-- page 3935 -->
Configure an event push connector
Integrate with an event push connector to connect to an external event source and push event
information to your ServiceNow instance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Push.
Only push connector tiles are displayed.
Push connectors

5. Select a push connector type tile.
6. Provide details about the connector type on the Provide details screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3935


<!-- page 3936 -->
Push connectors details page

a. In the Connector name field, enter a unique name for the connector type.
b. Optional: In the Tags field, enter tags to help locate and identify connectors of this type on
the Express List.
To add additional tags, select the plus sign next to the Tags field. The Add tags window
opens.
i. In the Key field, enter a tag key.
ii. In the Value field, enter a tag value.
iii. Select Add.
c. Optional: In the Description field, enter information to help identify this connector type.
d. Verify that the vendor name in the Source field is correct.
e. Optional: From the Assignment group drop-down list, select the group or team that is
responsible for managing and maintaining the Push connector.
f. Select Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3936


<!-- page 3937 -->
The connector is saved in draft mode, and the process advances to the Set-up push
connector section.

7. In the URL parameter value field, select Copy to clipboard to copy the auto-generated URL
parameter value to the clipboard.
This URL is generated by the code that depends on the ServiceNow instance and connector
type to receive events from the third-party connector. Pasting the URL in your third-party
connector configuration creates a webhook that enables it to send events to the ServiceNow
instance.
8. Select Activate and then select OK.
9. In the Details tab, view the connector details and the URL link and follow the step-by-step
instructions to integrate your third-party connector with Event Management.
The connector is saved and a notification is sent after the connector is active.

What to do next

To confirm the successful configuration of the pull connector and the flow of events into the
system, go to the Related events tab. If the setup is successful, proceed to Add automation to
establish an alert automation. For details on Related events tab, see Review integration and
configuration health and for information on alert automation, see Alert automation in Service
Operations Workspace for ITOM.
Configure an event custom connector
Authenticate your event custom connector as a data source to enable the pushing of event
information to your ServiceNow instance. Define the custom connector by providing its details
and mapping fields. This allows the extracted information from your custom connector's event
messages to populate the required event fields. Finally, create and supply a URL for the custom
connector webhook.

Before you begin
• Ensure the Event Management connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance. For more information, see Configure Event Management
connectors.
• Ensure that the configuration items for the hosts managed by your custom connector exist in
the ServiceNow AI Platform instance. These CIs can be physical or virtual and can be either
manually created or discovered via IP discovery or Cloud Discovery. For more information, see
Access to cloud environments for ITOM products.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3937


<!-- page 3938 -->
Role required: evt_mgmt_admin

About this task

To start pushing event information to your ServiceNow instance, you must set your ServiceNow AI
Platform instance as the REST endpoint using a standard webhook on your custom connector.
By providing connector details and mapping fields, you define the custom connector. The
extracted information from the custom connector's event messages then populates the required
event fields and inserts the event into the database.
The URL is generated by the code based on the ServiceNow instance and the custom connector.
Use this URL to create a webhook that enables your custom connector to send events to the
ServiceNow instance.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Custom.
Only custom connector tiles are displayed.
Push connectors

5. Select a custom connector type tile.
6. On the Provide details page, provide the details for the connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3938


<!-- page 3939 -->
Custom connectors details page

a. In the Connector name field, enter a unique integration name for the connector.
b. Optional: In the Tags field, enter tags to help locate and identify connectors of this type on
the Express List.
To add additional tags, select the plus icon (
opens.

) next to the Tags field. The Add tags window

i. In the Key field, enter a tag key.
ii. In the Value field, enter a tag value.
iii. Select Add.
c. Optional: In the Description field, enter brief information about this connector.
d. In the Source field, enter the vendor used to gather events from the external event source.
The Source field identifies the connector and serves as an identifier to recognize the source
of events and alerts once the connector is active.
e. Optional: From the Assignment group drop-down list, select the group or team that is
responsible for managing and maintaining the connector.
7. Optional: Drag or upload an image to display in your connector tile.
◦ Drag an image into the box.
◦ Browse to the image file by selecting Upload image and then choose the file.
The maximum upload file size is 1 MB.
8. Determine whether you want to connect events directly to the ITOM instance or through a MID
Server.
◦ To send events directly to the ITOM instance, select Directly to the ITOM instance.
◦ To send events through a MID Server, which processes and then passes the event to the
instance, select Via the MID server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3939


<!-- page 3940 -->
If a MID Server exists, from the Select MID server field, select an available MID Server
connected to an events listener.
If you must create a MID Server, then select one of the following.
▪ Configure MID web server extension
▪ Configure MID web service event collector context
For more information, see Configure the MID Web Server extension and Configure the MID
WebService Event Collector Context.
9. Select Next.

10. On the Set up input method page, select a method to gather event data.
Method

Description

a. Select Gather real source events to define fields.

Note: By gathering real-source events from
your custom connector, you increase events
and alert accuracy by using multiple events
as a reference to define the fields.
b. Select Copy to clipboard and copy the URL.
Gather real source events to define
fields

c. Paste the URL into your custom connector's web­
hook setup to create a webhook that enables your
custom connector to send events to the Service­
Now instance. Enter your basic authentication cre­
dentials into the monitoring system’s webhook con­
figuration (such as the username and password).
The webhook enables your custom connector to
send events to the instance.
d. Select Check for events. The number of events are
displayed. The event creates JSON files that you
can browse after selecting Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3940


<!-- page 3941 -->
Method

Description

a. Select Use a JSON sample to map fields.

Note: Only if you have a sample JSON se­
lect this option.
b. In the Enter payload dialog box, copy and paste
your JSON sample payload to create and view the
mapping to map the fields.

Use a JSON sample to map fields

c. Select Upload JSON.
d. Select Edit or paste new JSON to edit the JSON
that you uploaded or paste a new one.
e. Select Copy to clipboard and copy the URL.
f. Paste the URL into your custom connector's web­
hook setup to create a webhook that enables your
custom connector to send events to the Service­
Now instance. Enter your basic authentication cre­
dentials into the monitoring system’s webhook con­
figuration (such as the username and password).
The webhook enables your custom connector to
send events to the instance.
11. Select Next.
The page opens where you can map fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3941


<!-- page 3942 -->
12. On the Map fields page, in the connector field names column, enter at least one value that
maps to the severity values listed in the ServiceNow Severity field column.
13. On the Map fields page, in the connector field names column, enter at least one value that
maps to the severity values listed in the ServiceNow Severity field column.
You can enter the severity value from the JSON code sample. To set a severity value, you must
be familiar with your custom connector's payload and the types of severity it supports. The
severity values of the received events must match the generated events in your system.
Enable the system to create events correctly from incoming data by mapping the fields in
your JSON code sample to the ServiceNow fields. The Severity and Message key information
are automatically filled in to save you time and effort. The Message key provides the correct
identifier for the events, ensuring de-duplication works correctly and redundant alerts are not
generated.
14. Optional: To view multiple JSON files, select the arrow above the JSON sample.
15. Optional: In the Other fields section, in your connector column, specify custom event
parameters that are optional but provide additional information about the event.
If you choose not to provide the optional information, leave the field empty.
a. In the Description field, enter a meaningful alert description.
b. In the Metric name field, enter a metric name that allows you to associate events with the
performance metrics or KPIs that triggered the alert.
c. In the Node field, enter a node value to be used for CI binding.
d. In the Event time field, enter the creation time of the custom connector event.
If the event time isn't mapped, the system will use the default event time.
e. In the Event time settings field, select the time format and the event time zone.
▪ Time format: A GlideDateTime field in UTC or GMT format, with a maximum length of 40
characters.
▪ Time zone: Times are stored in Coordinated Universal Time (UTC) and are displayed
globally based on the system time zone.
16. Activate and save the connector by selecting Activate and then select OK on the confirmation
pop-up window.
You can view the connector details on the Details tab and your field mappings on the Fields
mapping tab.

Note: You cannot modify connector details when it is active. Deactivate the connector
to make any changes.

Result

After the connector is activated, events start flowing from your custom connector console into
the ServiceNow instance. The plug-in extracts information from the original custom connector
event message to populate the required event fields and inserts the event into the database.
To see the events in your ServiceNow AI Platform instance, navigate to All Events. For more
information, see View events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3942


<!-- page 3943 -->
What to do next

To verify that the process was successfully completed and events are flowing into the system,
view the related events on the Related events tab. If the setup is successful, proceed to Add
automation to establish an alert automation. For information on alert automation, see Alert
automation in Service Operations Workspace for ITOM.
Configure Solarwinds metric pull connector
Configure a metric pull connectors that require a script, connector definition, and connector
instance to pull metrics from external sources. These connectors automate the data retrieval
process, ensuring the seamless integration of external metrics into your system for efficient
monitoring and performance analysis.

Before you begin

Role required: evt_mgmt_admin

About this task

Note: The new UI for configuring metric pull connector is currently available only for the
SolarWinds Metric Connector. For all other metric connectors, the configuration continues
to use the Platform Table UI.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Metrics >
Pull.

Only metric pull connector tiles are displayed.
5. Select a pull connector tile.
If a pop-up menu opens, select the data to track from that connector and select Continue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3943


<!-- page 3944 -->
6. In the Provide details section, enter the following information and select Next.
◦ In the Name field, enter a unique name for the connector type.
◦ In the Data source field, the external source for retrieving metrics is auto-populated based
on the tile type you select.
◦ In the Description field, enter brief information about this connector.
7. In the Set data retrieval method section, enter the following information:
◦ In the Hostname/Host IP field, enter the IP address that is related to the Solarwinds server.
◦ From the Credentials drop-down list, select the valid credentials to access the event source
host.
◦ In the Metrics collection schedule (seconds) field, enter the time interval (in seconds) at
which the connector retrieves metrics from the source host.
◦ In the MID Server field, select a MID Server that collects metric data from external tools and
securely sends it to ServiceNow.
If none are available, ensure one is installed, running, and has the required capabilities.

Note: You can select multiple MID Servers. The system randomly assigns one as the
primary and uses the others as backups.
8. Optional: If you want to customize configurations to meet specific requirements, select
Advanced settings and fill in the form.

Field

Description

Max rows per query

Frequency in seconds that indicates how often
the system should check for new metrics from the
external event source. The value can’t be lower than
the minimum schedule property, which by default is
120 seconds.

Max fetch interval (in minutes)

Limits the maximum interval between event fetch
operations.

Offset (in minutes)

Sets the time offset for event retrieval to ensure
accurate synchronization.

Port

Specifies the port number used for communication
with external devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3944


<!-- page 3945 -->
Field

Description

(Optional) Verify the default values for your
connector type such as port details or time formats
and modify them as necessary. Default values from
your connector are filled-in.
Protocol

Defines the communication protocol used for
retrieving events from external devices.

Debugging

◦ Debug: Provides detailed logs for troubleshooting.
◦ Log payload: Displays raw log data. Use only for
debugging, as it can quickly fill the MID Server
logs.

9. Optional: Test the connector before activating it by selecting Test and Save.
10. To save the connector, select Save.
11. To activate the pull connector, select Activate.
The metric pull connector is activated and its tile is displayed in the Installed Integrations tab.
When you open the tile, you can find the Overview, Details, and Data retrieval method tabs.
The Overview tab allows you to verify that the connector is running and collecting data. It
also offers options to improve system settings, such as refining alert definitions or enhancing
binding configurations.

The Details tab allows you to update the connector's general information (such as name or
description) and displays any errors encountered during its operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3945


<!-- page 3946 -->
The Data Retrieval Method tab contains the connector settings (such as host, port, and
credentials) and may provide additional details for issues like MID Server errors.

Configure Dynatrace metric pull connector
Configure metric pull connectors that require a script, connector definition, and connector
instance to pull metrics from external sources. These connectors automate the data retrieval
process, ensuring the seamless integration of external metrics into your system for efficient
monitoring and performance analysis.

Before you begin

Role required: evt_mgmt_admin
Configure the Dynatrace API Key credential from All > Connections and Credentials >
Credentials. For more information on how to configure Dynatrace API Key credential, see API key
credentials .

About this task
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3946


<!-- page 3947 -->
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Metrics >
Pull.

Only metric pull connector tiles are displayed.
5. Select the Dynatrace Metrics connector tile.
6. In the Provide details section, enter the following information and select Next.
◦ In the Name field, enter a unique name for the connector type.
◦ In the Data source field, the external source for retrieving metrics is auto-populated based
on the tile type you select.
In this case, select Dynatrace.
◦ In the Description field, enter brief information about this connector.
7. In the Set data retrieval method section, enter the following information:
◦ In the Hostname/Host IP field, enter the IP address that is related to the Dynatrace server.
◦ From the Credentials drop-down list, select the valid credentials to access the metrics
source host.
Select the credential.
◦ In the Metric collection schedule (in seconds) field, enter the time interval (in seconds) at
which the connector retrieves metrics from the source host.
The default value is 60 seconds.
◦ In the MID Server field, select a MID Server that collects metric data from external tools and
securely sends it to ServiceNow.
If none are available, ensure one is installed, running, and has the required capabilities. If
none are available, ensure one is installed, running, and has the required capabilities. For
example, the Metric Intelligence Context must be running on the same MID Server that you
are configuring.

Note: You can select multiple MID Server. The system randomly assigns one as the
primary and uses the others as backups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3947


<!-- page 3948 -->
8. Optional: If you want to customize configurations to meet specific requirements, select
Advanced settings and fill in the form.
For more information on fields, see Dynatrace advanced settings fields.
9. Optional: Test the connector before activating it by selecting Test and Save.
10. To save the connector, select Save.
11. To activate the pull connector, select Activate.
The metric pull connector is activated and its tile is displayed in the Installed Integrations tab.
When you open the tile, you can find the Overview, Details, and Data retrieval method tabs.
The Overview tab allows you to verify that the connector is running and collecting data. It
also offers options to improve system settings, such as refining alert definitions or enhancing
binding configurations.
The Details tab allows you to update the connector's general information (such as name or
description) and displays any errors encountered during its operation.
The Data Retrieval Method tab contains the connector settings (such as host, port, and
credentials) and may provide additional details for issues like MID Server errors.
Configure Datadog metric pull connector
Configure metric pull connectors that require a script, connector definition, and connector
instance to pull metrics from external sources. These connectors automate the data retrieval
process, ensuring the seamless integration of external metrics into your system for efficient
monitoring and performance analysis.

Before you begin

Role required: evt_mgmt_admin
Configure the Datadog API Key credential from All > Connections and Credentials >
Credentials. For more information on how to configure Datadog API Key credential, see API key
credentials .

About this task
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Metrics >
Pull.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3948


<!-- page 3949 -->
Only metric pull connector tiles are displayed.
5. Select the Datadog Metrics connector tile.
6. In the Provide details section, enter the following information and select Next.
◦ In the Name field, enter a unique name for the connector type.
◦ In the Data source field, the external source for retrieving metrics is auto-populated based
on the tile type you select.
In this case, select Datadog.
◦ In the Description field, enter brief information about this connector.
7. In the Set data retrieval method section, enter the following information:
◦ In the Hostname/Host IP field, enter the IP address that is related to the Datadog server.
◦ From the Credentials drop-down list, select the valid credentials to access the metrics
source host.
Select the credential.
◦ In the Metric collection schedule (in seconds) field, enter the time interval (in seconds) at
which the connector retrieves metrics from the source host.
The default value is 60 seconds.
◦ In the MID Server field, select a MID Server that collects metric data from external tools and
securely sends it to ServiceNow.
If none are available, ensure one is installed, running, and has the required capabilities. If
none are available, ensure one is installed, running, and has the required capabilities. For
example, the Metric Intelligence Context must be running on the same MID Server that you
are configuring.

Note: You can select multiple MID Server. The system randomly assigns one as the
primary and uses the others as backups.
8. Optional: If you want to customize configurations to meet specific requirements, select
Advanced settings and fill in the form.
For more information on fields, see unique_2280.
9. Optional: Test the connector before activating it by selecting Test and Save.
10. To save the connector, select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3949


<!-- page 3950 -->
11. To activate the pull connector, select Activate.
The metric pull connector is activated and its tile is displayed in the Installed Integrations tab.
When you open the tile, you can find the Overview, Details, and Data retrieval method tabs.
The Overview tab allows you to verify that the connector is running and collecting data. It
also offers options to improve system settings, such as refining alert definitions or enhancing
binding configurations.
The Details tab allows you to update the connector's general information (such as name or
description) and displays any errors encountered during its operation.
The Data Retrieval Method tab contains the connector settings (such as host, port, and
credentials) and may provide additional details for issues like MID Server errors.
Review integration and configuration health
Review your events to ensure alerts are created as intended. Start this process by checking
the health status of your integration. This provides useful statistics to highlight where you can
make improvements to enrich alerts with relevant business context, group them for better
noise reduction, escalate critical alerts promptly, and notify your team for swift response and
resolution.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

Health state metrics indicate how effectively alert automations add context and reduce noise,
helping operators lower the Mean Time to Repair (MTTR). When adding a new integration, review
these metrics, assess the rates, and develop new rules to further enhance noise reduction and
improve overall system performance.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Add integrations.
4. In the Browse Integrations tab, select the All integrations drop-down list and select Pull or
Push as required.
5. Select a pull, push, or a custom connector type tile.
If a pop-up menu opens, select the data to track from that connector and select Continue.
6. Select the Events tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3950


<!-- page 3951 -->
7. In the Health state section, view the data for alerts and their associated attributes.
Alert attributes
Alert attribute

Alert Suppression

Description

The suppression ratio indicates the proportion of alerts created to
events received. Reducing unwanted alerts can be achieved by deduplicating or ignoring them.
◦ De-duplication: The message_key field is a unique identifier for an
alert in the source monitoring system. It is used for de-duplication
and alert flapping detection purposes. If the source event does not
provide reliable unique values, you can use the default value or
create your own.
If the message key is not defined, the default message key will be
<Source + Node + Type + Resource + Metric Name>. The guideline
is for the event source to automatically populate the <Source +
Node + Type + Resource + Metric Name> fields and generate the
message key. This practice facilitates better distribution of event
processing across instance workers and nodes.
If the source event does not provide values for these fields, ensure
they are populated using transform rules. This action, which does
not impact event processing, is essential for de-duplication.
Populate as many of these fields as possible before sending the
event to the instance. Doing so enhances the distribution of events
across processor workers, resulting in improved throughput and
scalability.
To learn more about de-duplication, see Event Management
configuration preferences. To set the message key in your custom
connector integration, see Configure an event custom connector.
◦ Ignore alert event rules: Filter out low-quality alerts by creating an
ignore automation.

Alert compression
rate

When you group alerts, a high compression rate is desirable because
it means fewer alerts remain for your operations team to review and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3951


<!-- page 3952 -->
Alert attribute

Description

act on. This can lead to improved team efficiency. The compression
rate is calculated as 1 – (the number of alert groups + the number of
ungrouped alerts) / total alerts.
To learn about alert aggregation, see Alert grouping. One way to
improve your alert compression rate is by defining a new grouping
automation.
CI Binding

The percentage of alerts successfully bound to a Configuration Item
(CI) in your CMDB is crucial. Aim for this number to be at or near
100% to enhance alert grouping, root cause analysis, assignment,
and more.
To bind a host, machine, or any device with an IP, populate the Node
field with a unique hostname, FQDN, IP, or MAC address. This can be
done within the integration itself or by creating an enrich automation.
For more complex scenarios, you can override node-based binding
using event rules. For more information on CI binding, see Binding
alerts to CIs.

Metric name
configured

Suggested tags

Shows the percentage of alerts that have a metric name defined.
It's crucial to aim for near 100% because it's used by default in our
automated correlation algorithm. This can be achieved within the
integration itself or by creating an enrich automation.
Provides suggested alert tags based on the integration payload.
Alert tags are structured fields that you can define to facilitate easier
filtering and grouping of alerts.
The tags are stored in

sn_itom_integ_app_recommendation_tags_suggestion,
and only the top 5 most popular tags are
displayed. In case you prefer to refine the results
of suggestion mechanism, you can use property

sn_itom_integ_app.evt_mgmt_tag_suggestion_ignore_keys,
which displays a list of lowercase field names or keywords,
separated by commas, to be ignored when scanning additional alert
info for tag suggestions. Default value is time.
8. In the Events section, ensure that your events are generating alerts as expected.
Verify that alert fields and tags are populated correctly to make the alerts easier to read
and filter in Express List. Confirm that severity values align with your operations team's
expectations and that fields and tags follow a standardized format across sources for easier
grouping.
By verifying alert generation, you can be confident that your system is properly configured to
detect and notify you of noteworthy occurrences. For information on the fields in the Events
section, see Integration and configuration health event fields.

What to do next

Now that you've confirmed alerts from the events, you can initiate the alert automation process
by selecting Add automation. This takes you to the ignore automation step, where you can
disregard irrelevant or false-positive alerts. Following that, proceed to enrich, group, and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3952


<!-- page 3953 -->
automate responses. This process involves transforming raw alerts into a format understandable
by ServiceNow, grouping the alerts, and escalating an alert to ensure an immediate response
from the appropriate team or individual. For more information on alert automation, see Alert
automation in Service Operations Workspace for ITOM.
Activate integration
Activate integration allows you to enable a previously deactivated connector integration,
restoring its functionality. This feature helps you seamlessly resume data flow and integration
activities, ensuring continuity and efficient event management without the need to reconfigure
the integration.

Before you begin

Ensure the integration is deactivated.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Manage installed integrations.
4. Select the Installed integrations tab.
5. For the integration that you want to activate, select the Ellipses icon (
Activate.

) and then select

The selected integration is activated, and its status is shown as Active on the installation tile.
Deactivate integration
Deactivate integration allows you to temporarily disable an active connector integration without
deleting it. This feature helps you manage integrations more effectively by pausing data flow
when needed, reducing unnecessary event processing and improving system performance.

Before you begin

Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3953


<!-- page 3954 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Manage installed integrations.
4. Select the Installed integrations tab.
5. For the integration that you want to deactivate, select the Ellipses icon (
Deactivate.

) and then select

The selected integration is deactivated, and its status is shown as Inactive on the installation
tile.
Delete integration
Delete integration allows you to permanently remove a connector integration from your system.
This feature helps you maintain a clean and organized system by eliminating unused or obsolete
integrations, freeing up resources and reducing potential clutter.

Before you begin

Ensure the integration is deactivated.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Setup > Integrations section, select
Manage installed integrations.
4. Select the Installed integrations tab.
5. For the integration that you want to delete, select the Ellipses icon (

) and then select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3954


<!-- page 3955 -->
6. On the confirmation window, select Delete.
The integration is deleted.
Express List in the Service Operations Workspace for ITOM
The ServiceNow Event Management Express List feature helps you identify health issues across
the datacenter on the Service Operations Workspace. It provides a list of quick information on
alerts so you can more efficiently monitor systems and services, resolve alerts, evaluate the alert
impact, track issues, and report incidents.
Introduction to the Event Management Express List
The Express List pane sortable alert list reduces the number of clicks necessary to access alert
information. Selecting the check box of an alert opens a preview panel where you can view data
that helps for prioritization, impact realization, and root cause analysis. You can easily modify the
Express List pane to narrow down the display by using a provided fields list, displaying additional
alert information, and filtering out or showing matching alerts. You can also modify the displayed
time range.
The following image shows a sample Express List

pane.

Express List benefits
The Express List pane enables operators to more efficiently perform the following actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3955


<!-- page 3956 -->
• Monitoring systems or application services. Monitoring the performance and capability of
computer systems to see any discrepancies.
• Resolving alerts. Working on discrepancies to troubleshoot issues and promote the efficient
functioning of IT infrastructure.​
• Tracking issues. Tracking and documenting defects and resolutions in detail and reporting
incidents.
• Reporting incidents. Escalating complex issues to management, other IT resources, third
parties or vendors.

Alert information displayed in the Express List preview panel
The Express List preview panel displays additional alert information on the Express List pane.
This information enables you to conduct an assessment that helps in resolving incidents without
having to open multiple alert forms.
The Info tab on the preview panel displays the following information for a selected alert:
• Alert number (link)
• Status
• Duration
• Configuration items (with links)
• Metric name
• Node
• Resource
• Source
• Assigned to
• Assignment group
• Last Updated
• Impacted services
For more information, see View data on impacted services on the preview panel in Express
List.
• Additional info
• Custom field
You can view additional alert information by selecting any of the linked items.
The Alerts in group tab on the preview panel displays alert information for a selected alert group.
Information for each alert is displayed in a tile with additional options for each alert in the group.
Each tile displays the following alert information:
• Alert number (link)
• Status
• Severity
• Configuration items
• Duration
• Metric name
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3956


<!-- page 3957 -->
Customizing the alert display time range
You can determine the time range of the displayed alerts. The default time range is the last 24
hours. The list continues to update with new alerts until you select the pause icon ( ). Selecting
the current range setting in the upper right displays a dialog box with date and time range
options:
• All time - The last 90 days
• Last 24 hours
• Last week
• Last 12 hours
• Last hour
• Last 15 minutes
• Custom - Enables you to select a date and time range from the pop-up calendar.
Default time ranges can be defined by your administrator using the system property
sn_sow_em.evt_mgmt.express_list.all_time_days.
Related topics
Roles used by Express List
Alerts in Service Operations Workspace
The Service Operations Workspace interface displays an alerts list and details on specific alerts.
When clicking an alert in the alerts list, the Details tab of the selected alert appears and the
issue that caused the alert (the identified issue) appears in the alert title. Only the subtabs
relevant to the alert appear on the resulting page. For example, the Alerts in Group option
appears in the Related records tab only for alert groups.
Details tab

The following table describes areas on the alert form.
Alert form areas
Feature

Header

Description

The header includes these details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3957


<!-- page 3958 -->
Alert form areas (continued)
Feature

Description

• Description: The text from the Description field of the alert is displayed.
• Priority group: Priority group to which the alert belongs.
• Severity: Severity of the alert.
• State: The state of the alert.
• Initial event generation time: Date and time when the initial event was generated.
• Parent: The primary alert in the group (relevant only for child alerts in a group).
• Group: Group type to which the alert belongs (relevant only for alerts in a group).
• Task: Number of the incident with which the alert is associated.
The displayed information varies according to the alert type.
When viewing an alert with an assigned CI, this tab opens when selecting the
alert. The information displayed varies depending on the type of alert (grouped,
Overview secondary, or primary).
tab
If you have installed the Health Log Analytics app, alert types include Health Log
Analytics alerts and component-based alerts.
Assign alerts in Express List
Assign alerts in Express List to yourself, to someone else, or to an assignment group to balance
your organization's work load.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the check box next to the alert number that you want to assign.

Note: You can perform the action on up to 1,000 alerts simultaneously
by selecting the Select All check box in the Active alerts list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3958


<!-- page 3959 -->
4. Select the Close drop-down list.

5. Perform one of the following actions.
Assignment

Actions

Yourself

Select Assign to you and then select OK.
a. Select Assign to.

Someone else

b. Select the name of the person to whom you
want to assign the alert from the Assigned
to field.
c. (Optional) Enter information about the as­
signment or alert in the Work notes field.
d. Select the Assign <number> alerts button.
a. Select Assign to.
b. Select the name of the group from the As­
signment group field.

Assignment group

c. Select the name of the person to whom you
want to assign the alert from the Assigned
to field.
d. (Optional) Enter information about the as­
signment or alert in the Work notes field.
e. Select the Assign <number> alerts button.

Result

The assigned person appears in the Assigned to column and the assignment group appears in
the Assignment group column in the Express List pane.
Express List keyboard shortcuts
Use keyboard shortcuts to quickly perform common actions in the Express List.
Navigation shortcuts
Action

Keyboard shortcut

Go to the previous/next row

Arrow up/down

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3959


<!-- page 3960 -->
Navigation shortcuts (continued)
Action

Keyboard shortcut

Move focus forward between clickable
elements

Tab

Move focus backward between clickable
elements

Shift + Tab

Action shortcuts
Action

Keyboard shortcut

Open an alert record

Option/Alt + R

Acknowledge an alert

Option/Alt + K

Assign an alert to yourself

Option/Alt + Y

Close an alert

Option/Alt + X

Create an incident

Option/Alt + I

Search free text

Option/Alt + S

Pause/Restart live updates

Option/Alt + L

Open/close the preview panel

Enter

Selection shortcuts
Action

Keyboard shortcut

Expand/collapse a selected group of alerts

Space

Select multiple neighboring alert rows

Shift + arrow up/down

Select multiple separate alert rows

Command/Control + arrow up/down

Activate a selected link or button

Enter

Note: The information presented in this section is also available as in-product help in the
Help Center panel for the Express List.
Use an assigned Express List view
Work with an Express List view assigned to you by your Event Management admin to make sure
that you focus on specific services, priorities, or alerts.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. From the drop-down list in the Filters pane, select an Express List view that was assigned to
you.
Your default view is marked as Default.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3960


<!-- page 3961 -->
Assigned views in Express List

Note: The Event Management admin may have assigned more than one view to you.
You can switch between your views and modify and save views that aren't your default
view. You can't change or share your default view or override settings in any of your
assigned views.
The Filters pane lists the predefined filters. The Express List table displays the columns that
were configured for the selected view.
Related topics
Configuring Express List views for users and user groups
Add or modify Express List columns
Add columns to the Event Management Express List display to focus the list of alerts that is
displayed or modify the existing columns that are displayed.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Edit the default columns in the pane.
a. Select the gear icon (

).

b. In the Available columns list, select the desired columns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3961


<!-- page 3962 -->
c. In the Selected columns list, drag selected columns up or down to reorder the fields.

d. Optional: Select Restore to column default to return the columns to the default state.
e. Select OK.
4. Optional: Modify the column width, order, and sort direction directly in the Express List pane.
Option

Action

Column width

Point to the right side of the column until the
bi-directional arrow appears and drag the col­
umn to the desired width.

Column order

Select the column header and drag it to the
desired location.

Column sort

Select the column header and then select the
arrow. The arrow direction indicates the sort
order. Each selection of the arrow changes
the sort direction.

Result

The layout is automatically saved in the User preference [sys_user_preference] table. When you
reopen the list, the same columns and order are displayed.
Add custom fields to the Express List preview panel
Add custom fields from the Alert [em_alert] table to the Express List Info preview panel to track
alert information.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3962


<!-- page 3963 -->
Procedure
1. Navigate to System Properties > All Properties.
2. In the System Properties list, select evt_mgmt.express_list.custom_fields.
If a message appears about the application scope, select here to be able to edit the record.
3. In the Value field, enter the custom name from the Alert [em_alert] table.
If you want to provide more than one field, use commas to separate the field names.
4. Select Update.
5. Optional: View the custom fields on the preview panel:
a. In the primary navigation, select the Express List icon (

).

b. Select a row or the information icon at the beginning of a row.

Result

The Info tab on the preview panel displays the custom fields at the bottom of the fields list.
Acknowledge viewed alerts in Express List
Acknowledge alerts that you’ve viewed to remove clutter in the Express List pane.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

About this task

Use Acknowledge to denote that the alert is known, and can temporarily be ignored. Do not use
Acknowledge to mark an alert as needing attention.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Acknowledge selected alerts.
You can acknowledge alerts regardless of whether you are working in the main pane or in the
preview panel. The preview panel opens only when a single alert or alert group is selected.
Location

Action

The Express List pane

a. In the Express List pane, select the alert to
acknowledge.
You can select more than one alert row.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3963


<!-- page 3964 -->
Location

Action

Note: You can perform the ac­
tion on up to 1,000 alerts simulta­
neously by selecting the Select All
check box in the Active alerts list.

To display the individual alerts inside a
group, select the chevron icon (
beginning of the alert group row.

) at the

b. From the Close drop-down list at the top
right of the alert list, select Acknowledge.
a. Select an alert group row check box.
The Express List preview panel for group
alerts

b. In the Alerts in group tab, select an alert
tile.
c. Select the more actions icon (

).

d. Select Acknowledge.

Result

The alert is acknowledged and its status is displayed at the top of the preview panel.
Monitor incoming alerts
You can monitor incoming alerts in Service Operations Workspace. You can also monitor and
manage alerts in the Event Management interface.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. View the alert information.
Alerts column headings
Column
heading

Description

Number

Unique ID generated by Event Management to identify the alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3964


<!-- page 3965 -->
Column
heading

Group

Description

An entry in this column indicates that the associated alert is a member of an
alert group. Alerts that do not have an entry in this column are ungrouped
alerts.
◦ Automated: Aggregated automatically by alert aggregation. A virtual alert is
added to the group as the primary alert of the group.
◦ Rules-based: Alert group created as a result of a user-configured
correlation rule.
◦ Manual: This alert is a member of an alert group that is formed when rightclicking an alert and setting it as secondary to the selected primary alert.
◦ CMDB: CIs without historical data that were aggregated by alert
aggregation based on CI relationships in the CMDB.
◦ Secondary: This alert is a component of an alert group. The alert at the
head of the group is known as the primary alert. When Correlated Alerts
is selected, the secondary alerts that are under the primary alert do not
display, making the Alerts list less cluttered and easier to review.
◦ None: This alert is an ungrouped alert. To make an ungrouped alert become
a member of a group, right-click it and select in the topic Add to Groups.
Select the alert and click Add Selected.
◦ Text: This alert is a member of an alert group that was created based on the
similarity of their text or description.
◦ Log Analytics: This alert is a member of a Log Analytics alert group.
◦ Component-based: This alert is a member of a Log Analytics group that
was created based on the affected IT components or services.
◦ Tag Cluster: This alert is a member of an alert group that was created
based on common tags or labels assigned to them.
◦ Network Traffic: This alert is a member of an alert group that was created
based on network traffic connections between processes of host CIs.
◦ Mixed: This alert is a member of a grouping method that combines alerts
using multiple grouping strategies, such as CMBD-based grouping and tagbased grouping, into a single, cohesive group.

Severity

The severity of the event. The value for this field is copied from the event
unless the event closes the alert, in which case the previous severity is
retained for reporting.
◦ Critical: Immediate action is required. The resource is either not functional
or critical problems are imminent.
◦ Major: Major functionality is severely impaired or performance has
degraded.
◦ Minor: Partial, non-critical loss of functionality or performance degradation
occurred.
◦ Warning: Attention is required, even though the resource is still functional.
◦ OK: An alert is created. The resource is still functional.
◦ Clear: No action is required. An alert is not created from this event. Existing
alerts are closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3965


<!-- page 3966 -->
Column
heading

Description

Priority group Indicates which alerts should be attended to first. Priority is calculated for
each open alert and then mapped into one of four priority categories.
Priority

Value providing a guide as to the priority of the alert, based on a number of
accumulated categories. For example, alert state and business criticality.

Source

Event monitoring software that generated the event, for example, SolarWinds
or SCOM. Optionally, you can enter a description, for example, Group
Alert. This field has a maximum length of 100.

Description

The alert description.

Node

Node name, fully qualified domain name (FQDN), IP address, or MAC address
that is associated with the event, such as IBM-ASSET. This field has a
maximum length of 100.

Configuration JSON string that represents a configuration item. For example, {"name":"SAP
item
ORA01","type":"Oracle"}. The CI identifier that generated the event appears
in the Additional information field. This field has a maximum length of 1000.
Click
Impacted
Services

to open the alert in dependency view.

Lists the services affected by this alert group. Select an impacted service to
view its record.

Note: You can access the Service Map in Service Operations

Workspace directly from the impacted service form by selecting Service
Map. The service map shows the impacted path of alerts, enabling you
to quickly assess their effect on the service. For more information, see
View unified service map and the impact paths in Service Operations
Workspace.

el-imp-service-openmap.png
Metric Name

Unique name that describes which metrics are collected and for which this
alert has been created.

Maintenance Shows whether the resource affected by the alert is in maintenance, Valid
values are true or false.
Task

The corresponding task for the alert, such as an incident, change, or problem.

Parent

Reference to a parent alert.

Initial event
generation
time

Time that the initial event occurred in the remote system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3966


<!-- page 3967 -->
What to do next

If Operational Intelligence is activated, you can right-click an alert and click View Metrics to
open the integrated Insights Explorer and Dependency Views map for the CI that is associated
with the alert.
Related topics
Metric Intelligence
View alert information
Alert grouping types and creation methods
Close an alert in Express List
Manually close alerts directly from the Express List pane or from the preview panel without
waiting for them to be automatically closed if you already know the root cause or have fixed the
problem.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Close selected alerts.
You can close alerts regardless of whether you are working in the main pane or in the preview
panel. The preview panel opens only when a single alert or alert group is selected.
Location

Action

a. In the Express List pane, select the alert.
You can select more than one alert row.

Note: You can perform the ac­
tion on up to 1,000 alerts simulta­
neously by selecting the Select All
check box in the Active alerts list.

The Express List pane

To display the individual alerts inside a
group, select the chevron icon (
beginning of the alert group row.

) at the

b. From the Close drop-down list at the top
right of the alert list, select Close alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3967


<!-- page 3968 -->
Location

Action

a. Select an alert group row.
The Express List preview panel for group
alerts

b. In the Alerts in group tab, select an alert
tile.
c. Select the more actions icon (

).

d. Select Close alert.

Result

The alert is closed and its status is displayed at the top of the preview panel.
Create an incident from an alert in Express List
Create an incident from an alert directly from the Express List pane, saving you the time and
effort of navigating to the incident record.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and doesn’t have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Create an incident from a selected alert.
a. In the Express List pane, select the check box for the desired alert.

Note: To display the individual alerts inside a group, select the chevron icon (

) at

the beginning of the alert group row.
b. Select the Alert actions drop-down list.

c. Under Response actions, select Create Incident.
An incident is created from the selected alert and a confirmation message is displayed.
Create an incident with Now Assist in Express List
Create an incident with a human-readable, AI-generated description using Now Assist.

Before you begin

Currently, this feature is available for CMDB, Log Analytics, tag-based, and component-based
alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3968


<!-- page 3969 -->
Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and doesn’t have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Create an incident from a selected alert.
a. In the Express List pane, select the check box for the desired alert.

Note: To display the individual alerts inside a group, select the chevron icon (

) at

the beginning of the alert group row.
b. Select the Alert actions drop-down list.

c. Under Response actions, select Create Incident with Now Assist.
An incident with a human-readable, AI-generated description is created from the selected alert
and a confirmation message is displayed.
Mute a CI's alerts in Express List
Mute a CI's alerts in Express List to avoid alerts being issued when replacing or upgrading the CI.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the alert row check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3969


<!-- page 3970 -->
Note: You can perform the action on up to 1,000 alerts simultaneously
by selecting the Select All check box in the Active alerts list.

4. From the Close drop-down list, select Put in Maintenance.

Result

Alerts are muted for the configuration items of that alert.
Place an alert in the Maintenance state
Placing an alert into the Maintenance state indicates that there are issues with the alert's CIs that
are being addressed.

Before you begin

Role required: evt_mgmt_admin or evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Filter with Active alerts.
4. Select an alert.

5. On the Details subtab, select the Maintenance check box to place the alert into the
Maintenance state.
6. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3970


<!-- page 3971 -->
Place an alert in the Acknowledged state
Placing an alert into the Acknowledged state indicates that the alert has issues that need to be
addressed.

Before you begin

Role required: evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Filter with Active alerts.
4. Select an alert.

5. On the Details subtab, select the Acknowledged check box to place the alert into the
Acknowledged state.
6. Click Save.
Respond to an alert in Express List
Run a response action to remediate an alert issue manually from the Express List pane.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and doesn’t have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the alert number to open it.
4. Select the response action for the alert from the Close drop-down list.

Note: If the list is empty, no response actions are available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3971


<!-- page 3972 -->
Run response actions on multiple alerts in Express List
Run response actions to efficiently remediate and respond to issues on multiple alerts directly
from the Express List pane.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active Alerts list, select the check boxes for desired alerts.
4. Select the Alert actions drop-down arrow to view Response actions.

5. Select a response action.

Note: Numbers next to actions represent the number of alerts that can be addressed
with that action. If the list is empty, no response actions are available.
The Run response action modal appears. The modal describes the number of alerts
addressed with the selected action, and lists the selected alerts that aren’t addressed.
View metrics for an alert
Viewing metrics enables you to understand historical data related to an alert's CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3972


<!-- page 3973 -->
Before you begin
• Ensure that you install the Operational Intelligence (com.snc.sa.metric) plugin.
• Configure the metrics to be displayed for the alert, as described in Configure alert metrics.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select an alert to open it.
4. Click the Metrics subtab.
The configured metrics appear on the page.

To customize the metrics display, configure the following properties on the System Properties
> All Properties page:
◦ ws_metric.widgets_number_limit: Specify the number of widgets/records that
can be displayed on the metrics tab.
◦ ws_metric.datasets_per_widget_limit: Specify the number of charts/datasets
that can be displayed on a chart.
5. In the Time range relative to alert list, select the time range for which you want the metrics to
be displayed for the alert:
◦ 1 hour before and after (default setting)
◦ 3 hours before and after
◦ 5 hours before and after
◦ Custom range (to configure a customized time range for the metrics to measure)
6. Click a parameter below a chart to hide the specified parameter's data on the chart.
7. Optional: Click the Insights Explorer button to view metrics by dragging and dropping them
onto a timeline.
Related topics
View metric values in the Insights Explorer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3973


<!-- page 3974 -->
View details about the impact and cause of an alert in Express List
View information about an alert on the alert's Overview tab in the Express List.

Before you begin

Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the alert number to open it.
The alert opens in a separate tab, displaying the Overview tab.
4. View alert information on the Overview tab.
Overview tab
Section

Description

Summary

Contains a description of the selected alert,
describing why it is considered an issue.

Impact

Lists the Configuration item and any services
impacted by the alert.
The Impacted Services tile includes the
following subtabs:
◦ Application services: The application
services affected by the alert. For details
on application services, see Application
services .
◦ Related service offerings: The service
offerings connected to the application
services affected by the alert.
Application services and their related service
offerings display on a many-to-many basis.
That is, several service offerings can relate to
one or more application services, and several
application services can relate to one or more
service offerings.

Cause

Lists the log properties with information
contributing the alert issue, as well as
probable root causes for the alert.

View anomaly alert metric data on the preview panel in Express List
View visualizations for anomaly alerts to investigate anomalies using metric data without
navigating away from the Express List preview panel.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3974


<!-- page 3975 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active alerts list, select the check box for an anomaly alert.
Information in the Description column can help you determine which alerts are anomaly alerts.
For example, an alert description might warn about values nearing or exceeding configured
thresholds, or metrics above or below a defined boundary.
4. On the preview panel, select the Info tab.
Depending on how the metric anomaly is configured, one of two charts is displayed.
◦ When the Metric Intelligence statistical model is used to detect anomalies, the anomaly
alert chart is displayed with upper and lower bounds based on machine learning models.

For more information, see Understanding Metric Intelligence.
◦ When thresholds are configured by administrators, the static threshold
metric anomaly alert chart shows anomalies defined using the configured

thresholds.

Note:
The raw data used for the metric chart in the preview panel is available only for seven
days. If older alerts are selected and the raw data is no longer available, a chart isn’t
shown.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3975


<!-- page 3976 -->
For more information, see Create metric rules.
5. Optional: Review surrounding metric data by selecting the Open in Metric explorer icon (
in the information panel.

)

(Optional) The Metric tab displays the Metric explorer at the time frame of the anomaly. For an
open alert, the chart shows on hour before and after the last time of event generation. For a
closed alert, the chart shows one hour before and after the first event that created an alert. If
there’s no data, the chart isn’t displayed.
For more information, see Metric Explorer.
View Log Analytics anomaly alert charts on the preview panel in Express List
View visualizations for Health Log Analytics anomaly alerts on the Express List preview panel, to
identify periods of behavior that deviate from expected ranges.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active alerts list, select the check box for a Log Analytics based alert.
This option is available only for individual alerts or the underlying individual alerts within a
group.
4. On the preview panel, select the Info tab.
A chart with a visual representation of the anomaly appears.
5. Optional: Select the parameter to visualize anomaly data within that time period:
◦ Events per minute - The default setting, which shows the detected anomaly.
◦ Day ago
◦ Week ago
6. Optional: Review relevant logs in context by selecting the Open in Surrounding logs icon (
)
in the information panel.
The Surrounding logs tab displays the list of log lines that were generated one minute before
and one second after the Log Analytics alert. For more information, see How Health Log
Analytics generates alerts.
View data on impacted services on the preview panel in Express List
View extra information on the preview panel about impacted services that are bound to alerts.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active Alerts list, select an alert check box.
4. On the preview panel, open the Info tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3976


<!-- page 3977 -->
5. Hover over the Impacted services section to display information icons.

6. Select the relevant icon to display extra information on an impacted service.
Impacted service information icons
Icon

Name

Description

Info

Displays the severity, the
business criticality, and
a short description of the
impacted service.
From this pop-up, you can
open the service map
in Service Operations
Workspace by selecting View
service map.

The service map shows the
impacted path of alerts,
enabling you to quickly
assess their effect on the
service. For more information,
see View unified service
map and the impact paths
in Service Operations
Workspace.
If metrics data exists for this
service, you can open the
Metric Explorer from the popup by selecting View related
metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3977


<!-- page 3978 -->
Icon

Name

Description

Contact person/group

Displays the name of the
owner of the impacted
service and the support
group assigned to it.

Hide closed alerts in Express List
Choose whether to display the closed alerts in an alert group as well as the open alerts on the
preview panel and in Link View.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active alerts list, select an alert group.
The preview panel shows the default display:
◦ The Alerts tab and Timeline view show only the open alerts. The closed alerts are hidden.
◦ Link View shows the attributes of both open and closed alerts.
4. On the relevant tab, change the display.
On the preview panel, Alerts tab:
a. Show both the open and the closed alerts by switching the Hide closed alerts toggle to the
closed position.
b. (Optional) Sort the displayed alerts by time or by severity by selecting the sort icon (
then choosing the relevant menu item.

) and

Note: If you switch the toggle or sort the alerts in the Timeline view, the Alerts tab
adjusts to reflect your selection.
In Link View: Show only the attributes of open alerts while hiding those of closed alerts by
switching the Hide attributes of closed alerts toggle to the open position.
View an alert analysis by Now Assist in Express List
View an alert analysis created by Now Assist using generative AI. Alert analyses include a
human-readable brief of the alert and technical information to help you investigate the alert more
effectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3978


<!-- page 3979 -->
Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
• View important information about the Now Assist for IT Operations Management (ITOM)
application in Now Assist for IT Operations Management (ITOM).

Note: Currently, Now Assist for ITOM only analyzes tag-based, CMDB, Log Analytics,
Mixed and Network Traffic-based alert groups. For all other alert group types, Now Assist for
ITOM only analyzes the parent alert.
Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active alerts list, select the information icon (

) next to the alert.

4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. View the information provided in the Alert analysis.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert description.
6. Optional: Use the Alert analysis icons to perform related tasks.
Alert analysis icons
Icon

Description

Copy the content of the alert analysis to the
clipboard.
Refresh the alert analysis.

Note: Refreshing regenerates the
results. Past results are deleted.

Generating case from an alert
Enable swift resolution by generating cases from alerts, either manually or automatically.
Customer Service Management provides integration with ITOM Event Management. This
integration enables you to improve the customer experience by breaking down the silos that
exist between the processes and systems used by front line customer service and back-office
operations teams. By monitoring issues and creating cases proactively, you can better correlate
customer issues and provide faster responses.
If you are using the integration between the Customer Service Management and Event
Management applications, you can create a case for the customer install base affected by an
alert. For more details, see Manually create a proactive case from an alert . You can also activate
an alert rule to automatically create a proactive case from an alert when an incident is created.
For more details, see Activate an alert rule to automatically create a proactive case from an
alert .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3979


<!-- page 3980 -->
Remove alerts from an alert group in Express List
Remove secondary alerts from an alert group directly from the Express List pane or from the
preview panel.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Note: The evt_mgmt_user role is view-only and does not have permission to perform this
action.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Remove a secondary alert from an alert group.
You can remove alerts from a group regardless of whether you are working in the main pane
or in the preview panel. The preview panel opens only when a single alert or alert group is
selected.
Location

Action

a. In the Active alerts list, select the chevron
icon ( ) at the beginning of one or more
alert group rows to display the alerts con­
tained in the group.
b. Select one or more secondary alerts.
The Express List pane

c. From the Close drop-down list at the top
right of the list, select Remove from group.

Note: When you are trying to remove
the only secondary alert from an alert
group, thereby ungrouping the group,
a message displays that enables you
to undo the action.

The Express List preview panel for a group
of alerts

a. In the Alerts in group tab, select an alert
tile.
b. Select the more actions icon (

).

c. Select Remove from group.
Viewing links between alerts in alert groups in Express List
Gain a better understanding of the relationships between alerts in alert groups in the Express
List by using Link View. Link View offers a visual representation of the relationships between the
alerts in a group.
When Event Management generates an alert group, Link View shows how the attributes of the
alerts in the group are linked. The colored tags represent configuration items (CIs) and other
environment items in relation to the alerts.
The information shown in Link View is available without the need for a populated Configuration
Management Database (CMDB). However, when the CMDB is populated, Link View offers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3980


<!-- page 3981 -->
additional value by providing the probable cause of the alerts and the service that the alert group
impacts.
Sample alert group in Link View

You can focus on your areas of interest by dragging the nodes in Link View to different positions.
When you refresh an alert group, rearranged nodes appear in their original position again.
Therefore, Link View is not refreshed automatically, but waits for you to do so manually.
If an alert on a CI impacts a service in the Configuration Management Database (CMDB), Link
View shows the impacted service, enabling you to view it at a glance for quick triage.
A stacked node indicates that multiple nodes were mapped for the same tag. When the same
key-value pair appears in more than one alert, the corresponding node is shown with a badge.
For example, when the same key-value pair appears in two alerts, the badge on the node shows
the number 2, as seen on the Payment tracker node in the sample alert group figure. When a
node has no badge, the key-value pair appears in only one alert. An active change request, a
probable cause of the alert, is marked by a Change badge.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3981


<!-- page 3982 -->
Node with a change badge

The Link View legend lists the meaning of the symbols and colors used and enables you to
toggle between hiding and showing types of tags to reduce noise. In addition, the legend
describes the meaning of the various lines linking the alert attributes. Attributes linked by a
solid line share one or more alerts, whereas attributes linked by a dotted line are correlated by
grouping criteria. For a description of each tag, see Attributes in Express List Link View. Hovering
over a node displays a tooltip that includes the name of the tag, its class, its severity, the number
of alerts in which it appeared, and whether the alert is primary or secondary or the probable
cause of the alert, if applicable.
Node tooltip

Currently, Link View is supported for several alert groups. For more information, see the following
topics:
• Viewing links between alerts in tag-based alert groups
• Viewing links between alerts in rules-based alert groups
• Viewing links between alerts in CMDB-based alert groups
• Viewing links between alerts in network traffic-based alert groups
• Viewing links between alerts in log analytics-based alert groups
• Viewing links between alerts in mixed alert groups
Related topics
View links between alerts in a group in Express List
Viewing links between alerts in tag-based alert groups
View the connections between alerts in a tag-based alert group in Express List by using Link
View. Link View shows how the attributes of the alerts in the group are linked with each other.
When you've set alert tags and Event Management has generated an alert group based on
tag-based rules, Link View offers a visual representation of the relationships between the
alerts in the group. The colored tags in the view represent Configuration Items (CIs) and other
environment items in relation to the alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3982


<!-- page 3983 -->
Sample tag-based alert group in Link View

In this example, the defining tag for the correlation, Application, is linked to the tags of the
relevant CIs. However, a correlation can be defined by any tag or combination of two tags, such
as Resource and Metric name. When the defining tag is missing from Link View, the correlation
was based on information that is not represented in the view, such as the description. Each CI
node is further linked to the tags that appeared on the same alert as that CI.
In an alert group that was generated from tag rules, nodes connected by a dashed line signify an
approximate, "fuzzy" match. This means that the nodes were correlated when the match on the
tag rule was not exact, but close enough to be significant. For example, this could happen when
a location, email address, or IP pattern was similar enough to qualify as a match.
The Link View legend lists the meaning of the symbols and colors used to represent the tags and
their number of unique nodes. In the legend, defining tags are marked as Correlation. You can
toggle between hiding and showing tag types to reduce noise. For a description of each tag, see
Attributes in Express List Link View.
Related topics
Viewing links between alerts in alert groups in Express List
View links between alerts in a group in Express List
Viewing links between alerts in rules-based alert groups
View the connections between alerts in a rules-based alert group in Express List by using Link
View. Link View shows how the attributes of the alerts in the group are linked with each other.
When you've set alert rules and Event Management has generated an alert group based on
these rules, Link View offers a visual representation of the relationships between the alerts in the
group. The colored tags in the view represent Configuration Items (CIs) and other environment
items in relation to the alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3983


<!-- page 3984 -->
Sample rules-based alert group in Link View

Rules-based alert groups are comprised of a primary alert and one or more secondary alerts. The
primary alert is generated directly and is represented in Link View as the Home node. Secondary
alert nodes are connected to the Home node by a dashed line, indicating that they don't share
the same alert, but are correlated using rule criteria. A solid line between nodes indicates that
the connected nodes share the same alert or multiple alerts.
If an alert on a CI impacts a service in the Configuration Management Database (CMDB), Link
View shows the impacted service, enabling you to view it at a glance for quick triage. Hovering
over a node displays a tooltip that includes the name of the tag, its type, the number of alerts in
which it appeared, and whether it is a primary or secondary alert.
Related topics
Viewing links between alerts in alert groups in Express List
View links between alerts in a group in Express List
Viewing links between alerts in CMDB-based alert groups
View the connections between alerts in alert groups in Express List that were created based on
the proximity of Configuration Items (CIs) in the Configuration Management Database (CMDB).
Link View shows how the attributes of the alerts in the group are linked with each other.
When alerts on CIs that are located near each other in the CMDB topology occur within a certain
time-frame, Event Management generates a CMDB-based alert group. Event Management
correlates CIs in a service map when they are separated by a maximum of three other CIs. The
colored tags in Link View offer a visual representation of the CIs and other environment items in
relation to the alerts in the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3984


<!-- page 3985 -->
Sample CMDB-based alert group in Link View

In this sample Link View of a CMDB-based alert group, the dashed line with the number 2
between the CIs indicates that the CIs are not connected directly, but are separated by two CIs
in the service map in the CMDB topology. The sample CMDB service map also shows correlated
CIs separated by two CIs.
Sample service map with correlated CIs

Related topics
Viewing links between alerts in alert groups in Express List
View links between alerts in a group in Express List
Viewing links between alerts in network traffic-based alert groups
View the connections between alerts in network traffic-based alert groups in Express List by
using Link View. Network traffic-based alert groups are created by analyzing network traffic
connections between processes across hosts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3985


<!-- page 3986 -->
Service candidates identified by ML Service Mapping, group alerts based on network traffic
connections between processes. Link View shows a contextual view of network incidents based
on these groups of directly connected processes. Service candidates are potential collections of
processes within your IT environment that are identified based on their network connections and
interactions.
Sample network traffic-based alert group in Link View

In this sample Link View of a network traffic-based alert group, the dashed lines indicate that
there are connected processes running on the CIs. Attributes linked by a solid line share one or
more alerts.
Related topics
Viewing links between alerts in alert groups in Express List
View links between alerts in a group in Express List
Viewing links between alerts in log analytics-based alert groups
Use Link View in Express List to see why alerts in a log analytics-based alert group are correlated
together through the visualization of shared attributes.
Link View for log analytics-based alert groups shows the connections between componentbased alerts. Each component-based alert may involve multiple host configuration items (CIs).
A component represents a logical part of a service instance where the alert was detected.
Components can consist of multiple CIs that perform the same function, such as multiple
redundant hosts. For more information, see Types of Health Log Analytics alerts.
The colored tags in the link view represent attributes of the alerts such as hosts, users, or
correlation indicators extracted from the logs. The lines connect attributes that share the same
alert. This visualization helps you understand the relationships between different alerts in the
group using their shared attributes.
Log analytics-based groups often contain multiple correlation attributes within a single group.
Link View enables you to explore why anomalies detected on different components were
correlated into one group. By manipulating the attribute display, you can better understand the
relationships between alerts that share common attributes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3986


<!-- page 3987 -->
Sample log analytics-based alert group in Link View

In this sample Link View, a component attribute is shown for each child alert in the log analytics
alert group. Other attributes show connections between the component alerts.
The Link View legend lists the meaning of the symbols used to represent the attributes. You can
toggle between hiding and showing attributes types to reduce noise. For a description of each
attribute, see Attributes in Express List Link View.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3987


<!-- page 3988 -->
Viewing links between alerts in mixed alert groups
View the connections between alerts in mixed alert groups in Express List by using Link View.
Link View shows how the attributes of the alerts in the group are linked with each other.
Link View for mixed alert groups shows the connections between alerts in groups that combine
different alert group strategies to form a single cohesive group. For more information, see Mixed
alert grouping.
To view how different alert groups are visualized in Link View, see the description of Link view
for the relevant alert group types. Currently, mixed groups are composed of Tag cluster alert
groups and CMBD-based alert groups. For more information about Link View for these groups,
see Viewing links between alerts in tag-based alert groups, and Viewing links between alerts in
CMDB-based alert groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3988


<!-- page 3989 -->
Sample mixed alert group in Link View

In this sample Link View of a mixed alert group, the dashed line with the number 1 between the
CIs indicates that the CIs are not connected directly but are separated by a CI in the service
map in the CMDB topology. The sample also shows the defining attribute for the correlation,
datacenter, linked to the relevant CIs.
The Link View Display legend lists the meaning of the symbols used to represent the tags and
their number of unique nodes. In the legend, defining tags are marked as Correlation. You can
toggle between hiding and showing tag types to reduce noise. For a description of each tag, see
Attributes in Express List Link View.
View links between alerts in a group in Express List
When an alert group is generated, understand better how the alerts in the group are linked by
viewing a visual representation of their relationships in Link View.

Before you begin

For an overview of Link View in Express List, see Viewing links between alerts in alert groups in
Express List.
Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (

).

3. In the fields in the interactive filter panel, select Group and then the check box for the alert
groups you want to display.

Note: Currently, Link View is supported for tag-based, rules-based, CMDB-based, and
network traffic-based alert groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3989


<!-- page 3990 -->
◦ Tag Cluster
◦ Rules-based
◦ CMDB
◦ Network Traffic
4. In the Active alerts list, select the description of an alert group.
The preview panel opens to the Alerts in group tab, which lists all the correlated alerts in the
selected group.
5. Navigate to Link View.
6. View the relationships between all the alerts in the selected group.
7. Optional: Perform the following optional tasks.
Task

Action

Select one or more nodes and rearrange
them in Link View by dragging them to a new
location.
Focus on an area of interest

Note: After refreshing the alert group,
the nodes appear in their original posi­
tion again.
Select Refresh.

Refresh the alert group

When you've refreshed the alert group, re­
arranged nodes appear in their original posi­
tion again. Newly-added nodes are marked as
New.

Note: The Refresh button is enabled
when new data for the alert group is
available. Link View doesn't refresh auto­
matically.
Select the Link View legend.
View the meaning of icons and colors

(Optional) The legend also indicates the num­
ber of unique nodes displayed per tag. For a
description of each tag, see Attributes in Ex­
press List Link View.

Reduce noise

In the Link View legend, toggle between hid­
ing and showing a tag type.

View information about an alert

Hover over a node to display a tooltip with in­
formation.

Exploring chronological data on the alerts in an alert group in Express List
Visualize the chronological sequence of events within an alert group in Express List using the
Timeline view. This feature provides a comprehensive overview of when the alerts occurred,
their severity changes, and other pertinent data for efficient triage and Mean Time to Resolution
(MTTR).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3990


<!-- page 3991 -->
In Timeline view, each alert is represented by a bar, enabling you to quickly discern the order of
occurrence, severity transitions, and closure status. The timeline begins with the creation of the
first alert and extends to the present moment.
Sample timeline view

Standard severity colors are used in the bars, with gray segments indicating periods before alert
creation or after its closure. Hovering over a severity bar reveals a tooltip with key alert details.
Severity range by color in Timeline view
Color

Severity

Critical
Major
Minor
Warning
OK
The title of the Timeline view for an alert group summarizes the group's description, number,
state, severity, and grouping type, derived from the primary alert. Detailed information including
alert number, state, severity, a brief description, and associated Configuration Item (CI) or node,
when available, is displayed for each alert within the group.
Related topics
View a timeline of the alerts in an alert group
View a timeline of the alerts in an alert group
Gain insight into the sequence of events relating to an issue by viewing chronological
information of the alerts in an alert group in Express List.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3991


<!-- page 3992 -->
Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

About this task
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (
3. In the Active alerts list, select the information icon (

).
for an alert.

4. On the preview panel Alerts tab, select Timeline view.
5. Analyze the information provided in the Timeline view.
6. Optional: Sort the displayed alerts by ascending or descending time or by severity.
a. Select the sorting icon (

).

b. Select the preferred sorting option from the pop-up menu.
7. Optional: Show or hide closed alerts by toggling the Hide closed alerts slider.
Related topics
Exploring chronological data on the alerts in an alert group in Express List
Find alert records in Express List using free-text search
Perform a free-text search for alert records in a filtered list of alerts.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

About this task

Event Management searches through the alerts that you're currently seeing in the Express List
based on the filters and time range you have set. It searches in the following predefined fields,
even if they aren’t visible: Metric name, Node, Alert number, Alert Tags, and Description. It treats
the text that you enter as a single string, not individual words.
The results match both the filters that you have applied and the string you have entered in the
search field. In the resulting alert records, the entire string you searched by appears highlighted,
and the available filters show the number of records that match the string. Recent searches are
saved and accessible from the search field.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Search field, enter the free text to search by.
The free-text string must be from 3 through 50 characters long. The search isn’t case-sensitive.
4. Select the check icon

or press Enter to perform the search.

Run actions to resolve alert issues in Service Operations Workspace for ITOM
Resolve the underlying issue of an alert by running predefined remediation tasks, ensuring faster
issue resolution and ensuring consistent resolution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3992


<!-- page 3993 -->
Before you begin

Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the alert number to open it.
The alert opens in a separate tab, displaying the Overview tab.
4. Select Launch playbook.
5. Select the Playbook tab.
The Run remediation card displays the available remediation actions.
Playbook tab

6. Select the tile corresponding to the action you want to run.
The selected action appears on the Alert executions card.

Result

When the action is complete, it appears in the Completed card underneath the Alert remediation
section.
Launch a web application for an alert in Service Operations Workspace for ITOM
Launch a web application that was configured in an alert management rule to quickly access
necessary tools, improving response times and efficiency.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Select the alert number to open it.
The alert opens in a separate tab, displaying the Overview subtab. In the right panel, the
Utilities tab is selected by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3993


<!-- page 3994 -->
4. In the Utilities section, select the web application to launch the app.
Filtering the alert display in the Express List pane
Filters help you create different views of categorized alerts, creating a targeted list of alerts to
prioritize and focus on, saving time and minimizing distractions.
The fields in the interactive filter panel on the left side enable you to create different views on the
Express List pane. The default filters are:
• State
• Severity
• Priority
• Source
• Number
• Configuration item
• Number of impacted services
• Node
• Description
• Assigned to
• Assignment group
• Metric name
• Group
• Maintenance
You can interactively view what happens if you add or remove any of the fields. The numbers
next to each attribute indicate the number of alerts that are returned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3994


<!-- page 3995 -->
In the Express List filter panel, you can perform the following actions:
• Add filters to or remove filters from the default filter list to focus on the applied filters. The most
common filters are State, Priority, CI, and Impacted services.
• Add or remove alert tags. Tags enable you to easily identify and group alerts without the need
for discovery or accessing the CMDB.
• Filter by string, number, or date attributes.
• Save, delete, assign as the default, or share the filter layout.
• Filter out or show alerts that match a selected alert.
Filter the Express List display using attributes
Filter the Express List display by text, number, and date attributes using the interactive Express
List filter panel. Create a targeted list of alerts to prioritize and focus on.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (

).

3. From the Filters panel on the left side, select whether to filter to text, number, or date attributes
depending on your filter type.
Filter attribute type

Action

Text

Find elements by name by typing the first few
characters to display the elements that start
with those characters. Then select the values

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3995


<!-- page 3996 -->
Filter attribute type

Action

that you want to view in the Express List pan­

el.
Enter a condition to view alerts according
to the number of alerts on the selected fil­
ter. For example, to display alerts that have
fewer than 10 impacted services, you would
select the less than condition and enter

Number of impacted services

10.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3996


<!-- page 3997 -->
Filter attribute type

Action

View alerts according to the select­
ed date and time range in the popup calendar in the Express List panel.

Date

Filter the Express List display by adding or removing fields
Add fields to or remove fields from the Express List pane filter using the interactive filter panel.
Use filtering to create different views of categorized alerts.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (
3. In the left filter pane, select the Edit filter attributes icon (

).
).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3997


<!-- page 3998 -->
4. In the Edit filter attributes dialog box, select fields or alert tags to add to your filter.

The Fields tab is displayed by default and displays the number of selected fields.
The number of available fields is displayed at the top of the column next to Available columns.
The selected fields are displayed in the right column. The number of selected columns are
displayed at the top of the column next to Selected columns.
5. Optional: Find a specific field by entering its name in the Search field.
6. Optional: Rearrange the order of the selected columns by dragging them up or down in the
right column.
7. Optional: Remove a column by selecting the X next to its name.
8. Select Apply.
9. Optional: Clear a filter by selecting Clear next to that filter name.
Clear appears only if you selected or cleared any of the attribute check boxes of the selected
filter.
10. Optional: View the applied conditions by selecting the Filter icon (

) next to Applied

conditions.
11. Optional: Remove a condition by selecting the Clear condition(

) icon.

Result

All the selected fields are displayed in the Filters panel in the Fields column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3998


<!-- page 3999 -->
Categorize alerts displayed in Express List
Create different views of alerts by adding tags in Express List to enable you to easily identify and
group alerts without the need for discovery or accessing the CMDB.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (
3. In the left filter pane, select the Edit filter attributes icon (

).
).

4. In the Edit filter attributes dialog box, select the Alert tags tab.

The
Alert tags tab title displays the number of selected alert tags.
The left column displays the number of available tags in the Available columns column title.
The selected tags are displayed in the right column. The number of selected tags is displayed
in the Selected columns column title.
5. Optional: Find a specific tag by entering its name in the Search field.
6. Optional: Rearrange the selected tags by dragging them up or down in the right column.
7. Optional: Deselect a tag by selecting the (X) next to it.
8. Select Apply.

Result

All the selected tags are displayed in the Filters pane under the Alert tags tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3999


<!-- page 4000 -->
Filter out or show matching alerts
Create different views of categorized alerts in Express List by either displaying or filtering out
alerts that match a selected alert.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (

).

3. Right-click an alert row.
4. Match or filter out matching alerts.
◦ Display matching alerts by selecting Show Matching from the context menu.
◦ Filter out matching alerts by selecting Filter Out from the context menu.
Save a custom filter in Express List
Save your custom view of categorized alerts in Express List to use again, share, or set as your
default view. Saving your custom view saves all filters, tags, and conditions.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select the Express List icon (

).

3. Once you have set up a filter that you want to reuse, set as your default view, or share with
others, save the filter.
For more information about filtering the Express List alert display, see the following topics:
◦ Filter the Express List display using attributes
◦ Filter the Express List display by adding or removing fields
◦ Filter out or show matching alerts
a. In the Express List select Save new.
b. In the Save new filter dialog box in the Filter name field, enter a name for the filter.
c. Optional: Make this filter your default filter by selecting Set as default.
d. Select Save to save the filter.
4. Optional: Share a saved filter by copying its link to send to others.
a. In the Filters panel, select the filter from the drop-down list.
b. Select the Copy link to clipboard icon (

).

5. Optional: Set a saved filter as your default filter.
a. In the Filters panel, select the filter from the drop-down list.
b. Select the More Actions icon (

) and select Set as default.

6. Optional: Delete a saved filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4000


<!-- page 4001 -->
a. In the Filters panel, select the filter from the drop-down list.
b. Select the More Actions icon (

) and select Delete filter.

Viewing an alert group analysis by Now Assist in Express List
View an analysis of alert groups in Express List, generated by Now Assist using AI. The analysis
helps you better understand the nature of the alert group, why the alerts in the group were
correlated, and how to proceed in the remediation process.
The AI-driven alert group analysis offers a simplified, human-readable description of the group
and technical information to help you investigate it more efficiently. The information provided is
based on descriptions and Configuration Item (CI) details relating to the individual alerts in the
group. Alert group analysis is supported for the following alert group types:
Tag-based alert groups
Tags help categorize alerts based on common attributes, such as impacted
systems or services. Alerts in tag-based alert groups share certain tags, indicating
similarities in the issues. The alert analysis for these groups presents the shared
tags that were used to correlate the alerts in the group. It also provides insights into
why these alerts were grouped. In addition, the analysis offers suggestions for a
course of action based on the similarities between the tags.
CMDB alert groups
When an alert is created on a CI in the Configuration Management Database
(CMDB), Event Management looks for alerts on other CIs that are closely related to
it in the CMDB topology. A close topological relationship between CIs suggests an
interdependence between components in the IT infrastructure and contributes to
alert correlation. When a relationship between CIs is found, a CMDB alert group is
formed. The alert analysis for CMDB alert groups explains the nature of the group
and why it was formed, and the relationships between the CIs. It also provides
technical information to help you decide on which alerts to concentrate your
investigation.
Log Analytics alert groups
When Event Management identifies multiple Log Analytics alerts that are related in
important ways, it groups them into a Log Analytics group. The system generates a
Log Analytics group when the Log Analytics alerts share one or more relationships
related to time, metadata, message text, and trend. The alert analysis for Log
Analytics alert groups is based on the analysis of anomaly information provided
by Health Log Analytics, and on the descriptions, CIs, and tags of the alerts in the
group.
Network Traffic-based alert groups
The Network Traffic-based alert grouping method groups alerts by analyzing
network traffic connections between processes across hosts. It leverages service
candidates identified by ML Service Mapping to group the alerts. Alert analysis for
network traffic-based alert groups gives a description for all the alerts in the group
and the connections between them.
Mixed alert groups
The Mixed grouping method combines alerts using multiple grouping strategies,
such as those used in CMDB alert groups and tag-based groups, in a single,
cohesive group. This method leverages the strengths of each strategy to reduce
alert noise, improve alert correlation, and highlight the true root cause of incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4001


<!-- page 4002 -->
View an alert group analysis by Now Assist in Express List
View an alert group analysis created by Now Assist using generative AI. The analysis offers a
simplified, human-readable description of the alert group and technical information to help you
investigate it more efficiently.

Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
• View important information about the Now Assist for IT Operations Management (ITOM)
application in Now Assist for IT Operations Management (ITOM).

Note: Currently, Now Assist for ITOM only analyzes tag-based, CMDB, Log Analytics,
Mixed, and Network Traffic-based alert groups. For all other alert group types, it only
analyzes the parent alert.
Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the navigation bar, select the Express List icon (

).

3. In the Active alerts list, select the information icon (
preview panel.

) next to an alert group to display the

4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. View the information provided in the Alert analysis.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert descriptions.
6. Optional: Use the Alert analysis icons to perform related tasks.
Alert analysis icons
Icon

Description

Copy the content of the alert analysis to the
clipboard.
Refresh the alert analysis.

Note: Refreshing regenerates the
results. Past results are deleted.

Related topics
Viewing an alert group analysis by Now Assist in Express List
Update an alert description in Express List based on a Now Assist analysis summary
Update alert descriptions in alert groups or single alerts in Express List, to a human-readable
summary generated by Now Assist.

About this task

Updating the alert description is available for the alert types:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4002


<!-- page 4003 -->
• Tag-based alert group.
• CMDB correlation alert group.
• Network Traffic correlation alert group.
• Log Analytics single alerts and alert groups.
• Mixed alert group.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the navigation bar, select the Express List icon (

).

3. In the Active alerts list, select the information icon (

) of an alert.

4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. Review the human-readable, AI-generated summary in the Alert analysis.

Note: Alert analysis is provided in English, irrespective of the language used in the alert
description.
6. On the preview panel Info tab, select Update description to update the description based on
the summary content of the alert group.
The AI-generated summary content replaces the original description of the alert group.
Roles used by Express List
Detailed information on all roles that can access the Express List feature on the Service
Operations Workspace.

Role title

Description

Event Management
Administrator

Has read and write access
to all Event Management
features to configure Event
Management.

[evt_mgmt_admin]

Contains roles

• evt_mgmt_user
• template_editor_global

Note: Be careful with
the evt_mgmt_admin
role because it can be
elevated to the admin
role.
Event Management Operator
[evt_mgmt_operator]

Event Team Operator

In combination with
evt_mgmt_user
the evt_mgmt_user
permissions, can also activate
operations on alerts such
as acknowledge, close,
open incident, and run
remediations.
Manages Event Management
operations within a specific

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4003


<!-- page 4004 -->
Role title

[evt_team_operator]

Description

Contains roles

team as defined in the
Assignment Group
field. This role allows the
operator to read and write
alerts exclusively for their
assigned team. Additionally,
the operator can make
configuration changes
specific to their team,
including updates to Alert
Automation and Integrations
Launchpad.

Note: The
evt_team_operator role
must be assigned to
an assignment group
to view and manage
alerts for that group. If
the role is created but
not associated with any
groups that have alerts
assigned, the operator
cannot see any alerts.
Event Management User
[evt_mgmt_user]

Event Management Integrator
[evt_mgmt_integration]

Has read-only access to all
Event Management features.
The contained itil role grants
access to manage incidents
that are created from alerts.
Can only view Express List.

itil

Has create access to
the Event [em_event]
and Registered Nodes
[em_registered_nodes] tables
to integrate with external
event sources.

Dependency View maps
Explore the Dependency Views in Express List and the Event Management Alert form.
Dependency View maps are visual tools that illustrate the relationships between configuration
items (CIs), helping you understand how different components are connected. These maps
rely on the Configuration Management Database (CMDB) as a foundational data source, which
stores detailed information about each CI and their interdependencies. By leveraging the CMDB,
dependency maps provide a comprehensive view of the IT environment, enabling better impact
analysis and decision-making in IT operations.
View data on configuration items on the preview panel in Express List
View additional details about configuration items (CIs) that are bound to alerts on the Express
List preview panel.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4004


<!-- page 4005 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the Active Alerts list, select an alert check box.
4. On the preview panel, select the Info tab to view it.
5. Hover over the Configuration item name to display information icons.

6. Display additional information on a CI by selecting the relevant icon.
Configuration item information icons
Icon

Name

Description

Additional information

Shows the class, IP address,
location, and environment of
the CI.
From the pop-up, you can
open the CI topology map
in Service Operations
Workspace by selecting View
CI topology.
If metrics data exists for this
service, you can open the
Metric Explorer from the popup by selecting View related
metrics.

Contact person/group

Shows the name of the owner
of the CI, the support group
assigned to it, and avatars of
the individual team members.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4005


<!-- page 4006 -->
7. Optional: Select the Additional information icon

and then select View CI

topology.
The Dependency View map opens. The map visually represents the relationships between
CIs, helping you understand how different components are interconnected.
View the Dependency View map for an alert from Express List
View the Dependency View map for an alert from the Alert actions list in Express List.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the alert list, select the check box of the alert for which you want to view the Dependency
View.
4. Select the Alert actions list drop-down arrow.

5. From Utilities, select Dependency View map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4006


<!-- page 4007 -->
The Dependency View map opens.
View the Dependency View map from the alert record page
View the Dependency View map for an alert from the alert record page.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. In the alert list, select the number of the alert for which you want to view the dependency view.
The alert record opens. The Overview tab is selected by default.
4. From the Utilities panel, select Dependency View.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4007


<!-- page 4008 -->
The Dependency View map opens.
View Dependency View map from quick response of an alert
View the Dependency View map for an alert from the Quick Response menu in Event
Management.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > All Alerts.
2. In the Number column, select the alert for which you want to view the dependency view.
The Alert form opens.

3. Select Quick Response.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4008


<!-- page 4009 -->
The Quick Response menu opens.

4. Under Launch Application, select Dependency View.
The map opens in Service Operations Workspace.
Alert automation in Service Operations Workspace for ITOM
Alert automation is crucial as organizations deal with increasing number of alerts and complex IT
infrastructures. Manual alert handling is slow, error-prone and inefficient, underscoring the need
for automated systems. Automation can improve the mean time to resolve alerts, improve service
reliability and better scale staff resources.
Alert automations also support both centralized administrator and distributed team roles. This
enables qualified teams to self-serve and create their own alert automations. For example, you
may consider granting access to site reliability engineers (SREs). Members of teams can manage
automations for their own team and their own alerts without impacting other teams.
For users familiar with our classic experience, alert automation offers an easier user interface
and better team support for event rules, tag-based clustering definitions and alert management
rules. Some advanced features are currently only available to admins in the classic experience.
These two experiences use the same backend tables. You can use whichever experience is most
convenient, and changes in one will also update the other.
https://player.vimeo.com/video/1068873181?
h=b03003c9bf&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Alert automation types
Currently, Service Operations Workspace ITOM provides the following types of automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4009


<!-- page 4010 -->
1. Ignore automation: Reduce irrelevant or false-positive alerts, efficiently manage alert fatigue by
filtering out noisy notifications, and allow teams to focus on critical issues.
2. Enrich automation: Enhance raw alerts with contextual information to make them more
informative and actionable. In simple terms, this involves taking the raw events generated by
monitoring tools and transforming them into a common and standard format to aid automated
grouping and response.
3. Group automation: Group multiple related alerts into a single primary alert to reduce alert noise
and identify the root cause.
4. Respond automation: Respond to alerts automatically by notifying appropriate stakeholders,
escalate them as needed or run remediation actions. Determine how and when alerts are
escalated based on severity or type. Integrate with third party systems to create cases,
notifications or run remediation actions.

Alert automation process flow
You may start by sending alerts or events from monitoring systems to ServiceNow using
the Integrations Launchpad. This is where administrators establish connections between
ServiceNow and monitoring tools. These integrations enable the collection of monitored data,
generating events from third-party sources.
When alerts are received by ServiceNow, alert automations run in the order shown on the
page. First, we ignore alerts to reduce noise. Next, we enrich alerts with extra context, then
group the alerts using the added context. Finally, we respond to alerts by escalating or running
remediations. There can be several automations for each type. Each automation runs based on
specific trigger conditions and executes specific actions. Alerts are only automated when they
are received; we do not apply automations to past alerts.
In the alert enrichment phase, administrators add or extract necessary fields from alerts to
provide essential information for swift resolution. This ensures that alerts contain all relevant
details required for effective incident response. Administrators add context to alerts by modifying
and normalizing them. This enhances the correlation of alerts, making it easier to identify
patterns and potential threats.
The enriched and composed alerts are then grouped based on predefined criteria, consolidating
related alerts. This reduces alert fatigue and facilitates efficient remediation. Finally, escalated
alerts trigger notifications to stakeholders through various channels, ensuring timely
communication and response to critical alerts.
The following diagram illustrates this process flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4010


<!-- page 4011 -->
Alert automation: Reducing noise and improving resolution time

This comprehensive alert automation process can reduce alert noise, improve mean time to
resolution (MTTR), enhance service reliability, and boost staff productivity.
Create Ignore automation
Ignore automation streamlines the process of disregarding irrelevant or false-positive alerts from
monitoring systems, efficiently managing alert fatigue by filtering out unnecessary notifications.
This allows teams to focus on critical issues.

Before you begin

Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

About this task

Ignore automations filter out alerts from source monitoring systems that match specific
conditions. Separately, Event Management ignores alerts that have a duplicated message key
field or where the severity is Clear.
For users familiar with the classic Event Management experience, ignore automations provide a
simpler interface with enhanced team support for the event filter section of event rules.

Note: Ignoring alerts before enriching them improves performance and simplifies the
processing flow. The condition filter in ignore automations applies only to the original event,
not the enriched one. Enrich automations can prevent ignore automations from running
when Don't run other enrich alert automations is set to false, they apply to the same
source, have a lower order, and match the filter conditions. To avoid conflicts, it is best to
consider this when creating enrichments or event rules.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Optimize section, select Ignore
alerts
The Ignore alerts page is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4011


<!-- page 4012 -->
Alert automation page

4. Select Create automation.

5. In the Automation name field, enter the name of the automation for ignoring alerts.
6. Activate the automation by enabling the Active toggle switch.
7. In the If these conditions are met, don't add an alert in ServiceNow section, set up filter
criteria to identify the events you want to capture.
a. From the Assignment group field menu, select the assignment group to determine which
team’s alerts will trigger the automation.
The Assignment group represents a specific team responsible for handling certain alerts.
By selecting an assignment group, you ensure that only the alerts assigned to that particular
team will trigger the automation. This way, the automation is targeted and only activates for
relevant alerts associated with the selected team.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4012


<!-- page 4013 -->
Note:
▪ If you’re logged in to the instance with an administrator role (evt_mgmt_admin), all
of the assignment groups are available. Additionally, you can select All groups to
enable generating alerts for any of the available groups.
▪ If you’re an operator, only the group you’re a part of is available.
▪ Only members of the selected group or administrators can update or delete the
automation.
b. From the Source field menu, select the monitoring tool from where the alert is generated.
c. Set up the conditions by selecting the field, operator, and field value. Then, add more
conditions using OR or AND operators.
To add another set of conditions, select + New condition set. You can also manually add an
additional info field if you don’t see it in the drop-down list.
8. To verify that you are ignoring the correct events or to see examples of fields that can be used
to set the conditions, select Load past events.
You can preview the details of some past events.
9. In the Automation details section, provide an order and automation description.

a. In the Order field, enter the automation order.

Note: Automations run in order from the lowest to the highest.
The Automation is managed by field displays the team or assignment group who owns,
edits, and can delete this automation. The assignment group is the same as the one defined
in the If these conditions are met section.
b. In the Automation description field, enter a brief description of the automation.
10. Select Save automation.
A notification appears when the automation is successfully saved. Otherwise, an error
message is displayed. The ignore automation that you created appears on the Ignore alerts
page where you can view, edit, or delete the existing automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4013


<!-- page 4014 -->
What to do next

You can transform raw events into an understandable format by creating Create Enrich
automation.
Create Enrich automation
Alert enrichment involves transforming raw events from monitoring tools into a standard format,
aiding automated grouping and response. This includes extracting fields from lengthy alert
payloads or composing them into a standardized format. Additionally, you can create tags, which
are metadata added to alerts for easier filtering and grouping.

Before you begin

Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

About this task

Extracting takes values from event payload fields and places them in alert output fields, while
composing combines multiple alert fields into one. For more information, see Extracting and
composing alert fields.
For users familiar with the classic Event Management experience, enrich automations create
event rules but with an easier interface and with better teams support. Event rules offer a few
advanced features like thresholds and CI identification using IRE that are not yet available in
enrich automations. Admins may also enrich alerts with event field mapping rules. Changing
alert values creates an event field mapping rule with the mapping type Map field and transform
value (Single field). This rule is linked to the event rule and runs simultaneously, allowing for
streamlined mapping and transformation of event data to enrich alerts.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Optimize section, select Enrich
alerts.
The Enrich alerts page is displayed.

4. Select Create automation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4014


<!-- page 4015 -->
By default, the Active check box is selected.
5. In the Automation name field, enter the name of the automation for enriching alerts.
6. In the If these conditions are met section, set up filter criteria to identify the alerts you want to
enrich.
The condition is evaluated against the raw event received from the source monitoring system
and does not account for enriched fields.
a. From the Assignment group field menu, select the assignment group to determine which
team’s alerts will trigger the automation.
The Assignment group represents a specific team responsible for handling certain alerts.
By selecting an assignment group, you ensure that only the alerts assigned to that particular
team will trigger the automation. This way, the automation is targeted and only activates for
relevant alerts associated with the selected team.

Note:
▪ If you’re logged in to the instance with an administrator role (evt_mgmt_admin), all
of the assignment groups are available. Additionally, you can select All groups to
enable generating alerts for any of the available groups.
▪ If you’re an team operator, only the groups you’re a member of are available.
▪ Only members of the selected group or administrators can update or delete the
automation.
b. From the Source field menu, select the monitoring tool from where the alert is generated.
c. Set up the conditions by selecting the field, operator, and field value. Then, add more
conditions using OR or AND operators.
To add another set of conditions, select + New condition set. You can also manually add an
additional info field if you don’t see it in the drop-down list.

Note: Select Load past events to view previous events when creating the automation.

7. In the Then, apply the following actions section, select the automation actions that will be
triggered by this automation.
You must select at least one action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4015


<!-- page 4016 -->
◦ Extract alert fields: Retrieves alert field values from the event payload and places them in an
alert output field.
◦ Copy or compose fields: Merges various alert fields, tags and text to generate a composed
alert output.
◦ Change alert values: Maps the current value of alert fields to specified new values.
◦ Improve configuration item (CI) identification: Identifies CIs other than a host for better
alert grouping, team assignment, and service health.
Option

Action

a. Enable the Extract alert fields toggle switch.
b. From the Source input field menu, select a value. The menu
displays the standard event fields, additional info, and tags.
The field value is then displayed. You can also manually enter
a field name that is not displayed and add your own value.
The example source events pane displays a sample of recent
events in your system. If no events are displayed, you may cre­
ate an event, see Create or edit an event rule.
c. In the Regular expression field, create a regular expression to
extract the value that you want to extract.

Note: You can compose text using regular expression

Extract alert fields

(regex) format conventions. Use one or more capture
groups with parentheses to extract parts of the input.
Capture groups in the regular expression are assigned
to alert outputs based on the order in which they appear.
The regex must match the entire input, so consider sur­
rounding your regex with .* on each end. For example,
(\w+).acme.com.* captures the host name in a fully
qualified domain name. The parser for the regex engine
is Perl Compatible Regular Expressions (PCRE) compat­
ible. Nested JSON data is preprocessed to strip quotes
and replace colons with equal signs.

d. In the Alert output field, select an alert field or an alert tag.
You can also manually enter a new field name.
If you want to add an alert tag, select the Set as a tag check
box.

Tip: Create alert tags that can be shared across
sources for easier filtering and grouping, such as the outof-the-box tags.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4016


<!-- page 4017 -->
Option

Action

e. Select Preview multiple events to verify that the regular ex­
pression (regex) is general-purpose enough to correctly ex­
tract values across many examples.

Note: This option is available only when example
source events are available and matched with the regex
filter.

To include additional fields for extraction, select + Add fields.
a. Enable the Copy or compose fields toggle switch.
b. From the Source input field menu, select alert fields and/or
alert tags, manually enter a field name or even add free text.
Alert fields are displayed in the ${field} syntax format.
c. In the Alert output field, select an existing alert field or alert
tag, or manually enter an alert field. The Alert output field is an
enriched alert containing the composed alert data.
For easier grouping, you can select a tag from the menu. If you
want to use the new field name as a tag for grouping, select
the Set as a tag check box.
Copy or compose fields

Tip: Create alert tags that can be shared across
sources for easier filtering and grouping, such as the outof-the-box tags.

To create additional alert data compositions, select + Add fields.
a. Enable the Change alert values toggle switch.
Change alert values

b. In Alert field, enter the field in the alert that you want to map
values for.
c. In the From value field, enter original value in the alert field
that you want to change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4017


<!-- page 4018 -->
Option

Action

d. In the To value field, enter the new value that will replace the
original value in the alert field.
To add more field values, select + Add value and to add more
fields to map, select + Add field to map.

This option allows you to change how alerts are bound or linked
to a Configuration Item (CI), ensuring alerts are associated with
the correct IT components for better visibility and faster issue
resolution.
The default and most common way to bind alerts to CIs is based
on the Node field. This works out of the box with no configura­
tion needed. Use it by populating the Node field in your alert with
a CI’s Name, Fully Qualified Domain Name (FQDN), IP, or MAC ad­
dress. This supports host CIs including Computers, Operating
Systems (OS), Switches, Routers, or any CI type or any class that
extends the [cmdb_ci_hardware] table.

Improve configuration
item (CI) identification

You may enable this action to improve the CI identification for
other types of CIs such as processes or service instances. The
system searches for a matching CI in the appropriate CMDB ta­
ble based on the selected CI type. For example, if you select
VMware Virtual Machine Instance as the CI class, the system
searches for a matching record in the [cmdb_ci_vmware_in­
stance] table using details from the event rule record, specifical­
ly the Additional info fields.

a. Select which CI class you'd like to Identify: Specify Configu­
ration Item (CI) class that the system should use for identifica­
tion. Example: Select Server to identify alerts related specifical­
ly to server CIs.
Select View items to see the list of CIs of this type and their at­
tribute values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4018


<!-- page 4019 -->
Option

Action

Ensure that the Node field in the alert is populated correctly to
identify a host CI. The CI you are identifying must have a runs
on relationship to the host CI or be mapped to the host.

Note: Also, if the value is Node in the Alert output field
of the Extract fields section, or in the Output to field of
the Copy or compose fields section, then select Select
which CI class you'd like to Identify.

b. Select which alert fields will be used to identify the CI: Select
the alert fields that help the system match alerts to the correct
CI.
▪ Alerts additional info field: The alert property that contains
extra information useful for CI identification.
▪ CI attribute: The CI property that the system compares
against the selected alert field to establish a match.
c. Ensure that at least one CI attribute is present in the Addition­
al info field of the alert.
For instructions on how to populate these fields, see Set ad­
ditional info fields to match CI attribute format. The system at­
tempts to match values from the Additional info field of the
alert with the CI table. If a match is found, the alert is bound to
the corresponding CI.
d. Select Test CI identification to test the CI identification on
sample events.

For more information on CI binding, see Binding alerts to CIs.

8. In the And finally section, to continue running other enrichment automations with same filter
conditions after this automation is executed, select Run other enrich alert automations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4019


<!-- page 4020 -->
If you select Don't run other enrich alert automations, additional automations of this type
will stop running after this automation is executed once. If the automation is managed by an
administrator, it will stop running administrator-owned automations but will continue to run
automations owned by other assignment groups.
9. In the Automation details section, provide an order and automation description.

a. In the Order field, enter the automation order.

Note: Automations run in order from the lowest to the highest. Ensure there are no
enrichment automations with a lower order number that have matching conditions
and have Apply additional automations of this type set to false. Otherwise, this may
prevent subsequent automations from running.
The Automation is managed by field displays the team or assignment group who owns,
edits, and can delete this automation. The assignment group is the same as the one defined
in the If these conditions are met section.
b. In the Automation description field, enter a brief description of the automation.
10. Select Save automation.
A notification appears when the automation is successfully saved. Otherwise, an error
message is displayed. The enrich automation that you created appears on the Enrich alerts
page where you can view, edit, or delete the existing automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4020


<!-- page 4021 -->
What to do next

You can manage alerts more effectively by grouping similar alerts together with the help of
Create Group automation.
Related topics
Extracting and composing alert fields
Extracting and composing alert fields
Extracting and composing are ways to manage what you see in the alert output, making it simpler
to filter, group, and read. Alert automation enables you to extract values from event payload's
alert field and place it in an alert output field. Composing allows you to merge multiple alert fields
into a single output field.

Extracting alert fields
Alert notifications often contain relevant context buried within event payloads. By enriching alert
outputs with values from the existing payload, you can better understand the significance of
alerts and determine the appropriate steps for resolution. For example, a host name typically
includes crucial information such as service, node, cluster, datacenter, and domain. To
automatically add the value for a cluster tag based on incoming host data, you can extract just
the cluster data.
When extracting alert fields, use regular expressions (regex) to build value formulas. Regex
allows you to precisely identify and capture the relevant portions of the payload, enabling the
creation of meaningful and actionable alert notifications.

Note: You can compose text using regular expression (regex) format conventions.
Use one or more capture groups with parentheses to extract parts of the input. Capture
groups in the regular expression are assigned to alert outputs based on the order in which
they appear. The regex must match the entire input, so consider surrounding your regex
with .* on each end. For example, (\w+).acme.com.* captures the host name in a
fully qualified domain name. The parser for the regex engine is Perl Compatible Regular
Expressions (PCRE) compatible.
Extract alert fields

If you use multiple capture groups with parentheses, each extracted value appears in a separate
output field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4021


<!-- page 4022 -->
Extract field for multiple alert outputs

Preview the alert output across example events to verify that the values are extracted as
expected by selecting Preview multiple events.

Note: This option is available only when example source events are available and
matched with the regex filter.

Example: Extracting alert fields
Suppose you need to extract only six letters from a specific field of an event and display them
in a new alert field named mynewfield. You also want to tag this new alert field for later use in
alert grouping. Here's how you can achieve this:
• Source input field: Select the event field from which you want to extract data. In this case, the
field is Metric Name.
• Regular expression: Use a regular expression to extract the specific part you need from the
selected field's value. For example, if the Metric Name field value contains "Free swap space
in %" and you want to extract "Free swap", your regular expression must be (.........).*.
• Alert output:
◦ Choose an existing alert field, an existing alert tag, or manually enter a new field name. In
this case, let's enter a new field name mynewfield.
◦ Set mynewfield as a tag for later use in tag-based grouping. Notice the tag displayed
before the field name.
After applying the regular expression to the selected field's value (in this case the Metric
Name field value), verify the extracted word displayed below the Alert output field. For
instance, it should show "Free swap" if the regular expression matches correctly.
• Preview multiple events: Previewing multiple events allows you to verify if the regular
expression accurately extracts data from a range of example events. This helps determine if
any adjustments to the regular expression are needed.

Composing alert fields
When creating an alert output, you can select or manually enter fields, tags, or free text to
include. This data can be easily read, filtered, and grouped for better management and
understanding of the alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4022


<!-- page 4023 -->
Compose alert fields

Example: Composing alert fields
Suppose you want to have two input fields that compose data and display it in two different alert
output field. In one scenario, you want the source value to come from an existing alert field along
with a new field, showing the composed value in a new alert output field. You also plan to tag
the new alert output field for later use in tag-based grouping. In the other scenario, you combine
existing fields with free text and select the alert output to display in an existing alert field. Here's
how you can achieve this:
• Scenario 1:
1. Source input field: Select an existing alert field and add the text "and", followed by entering
another field u_eventid. For example: ${classification} and ${u_eventid}.
Note that alert fields are displayed in the ${field} syntax format. You can also select the
field name from the drop-down list, and the syntax will be added automatically.
2. Alert output: Enter the name of the new alert field where you want to display the values from
the input fields. For example, let's name it mynewfield.
Set mynewfield as a tag for later use in tag-based grouping. Notice the tag displayed
before the field name.
• Scenario 2:
1. Source input field: Select existing alert fields and include any desired free text for how
you want them to appear in the alert output field. For example: Problem type: ${type} with
severity ${severity}.
Alert fields are displayed in the ${field} syntax format. You can also select the field name
from the drop-down box, and the syntax will be added automatically.
2. Alert output: Select an existing alert field where you want to display the values from the
input fields. For instance, select Description.
Set additional info fields to match CI attribute format
Set additional info fields in alerts to match the field and value format of CI attributes in CI records.
This ensures accurate alert-to-CI binding, improving alert tracking and reducing manual effort.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4023


<!-- page 4024 -->
Before you begin

Ensure that you are on the Enrich Alerts page and the Improve configuration item (CI)
identification toggle switch is enabled.
Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

About this task

The system attempts to match the Additional Info fields of the alert with attributes in the CI
table. If exactly one matching CI is found, the alert is linked to that CI. For CI identification to be
successful, add new fields or ensure that your alert has additional info fields corresponding to
column name for CI attributes. For example, use column name ip_address instead of the column
label IP Address. Each matching key name must have matching values. If there are matching
fields in your alert that you don’t wish to use for binding, copy them to another field then clear the
original field.

Procedure
1. Under Improve configuration item (CI) identification, in the Select which CI class you'd like
to identify field, select the CI class.

2. Select View items next to the Select which CI class you'd like to identify field to open the list
of CIs of the selected CI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4024


<!-- page 4025 -->
3. Select a CI name to open its details or record page.
At least one field and its corresponding value from the CI details page must appear in the
Additional info field of the alert.

4. In the Enrich Alerts page, use Extract fields, Copy or Compose fields, and Change alert
values to set at least one Additional info field in your alert to precisely match the field and
value format of the CI attributes in the CI record.
Example: Suppose the CI record page has the name field with the value
CRUPRGWMIDCAV15. To include these fields and their values in the Additional info field of
the alert, set the fields as shown in the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4025


<!-- page 4026 -->
Map the ${u_host_host} field to a new field called name. This field is added to the
Additional info and is used for CI identification during the binding stage.

Create Group automation
Grouping automation helps you manage alerts more effectively by collecting similar alerts
together. This makes it easier to see patterns, quickly identify issues, and respond efficiently. By
organizing alerts in this way, you can reduce alert noise, identify root causes, and assign them to
the appropriate teams.

Before you begin

Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

About this task

Grouping of this method is most useful when alerts share common data or tags, such as a node
or location. You can use fields or tags populated via an enrich automation. It’s the best way
to group alerts when your CMDB or service maps are immature. This complements our other
grouping algorithms, including alert correlation rules, CMDB, ML, and text-based grouping. Alerts
are grouped with their first match, and you can control the priority order of these algorithms via
system property. For information on correlation logic order, see Configure alert correlation logic
order.
Alert automation also provides a simulation feature allowing you to test how many alert groups
would be formed, how many are left ungrouped, and the compression rate. A higher compression
rate means your team will be more productive and may be able to identify root causes faster.
However, consider whether the groups are accurate, operationally correct, and assigned to the
right teams. You may adjust the group criteria until you are satisfied with the resulting groups.
For users familiar with the classic Event Management experience, this feature offers an easier
interface with improved team support for creating tag-based alert clustering definitions.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4026


<!-- page 4027 -->
3. On the ITOM AIOps configuration center page, under the Optimize section, select Group
alerts
The Group alerts page is displayed.

4. Select Create automation.

5. In the Automation name field, enter the name of the automation for grouping alerts.
By default, the Active check box is selected.
6. In the If these conditions are met section, set up filter criteria to identify the alerts that you
want to group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4027


<!-- page 4028 -->
a. From the Assignment group field menu, select the assignment group to determine which
team’s alerts will trigger the automation.
The Assignment group represents a specific team responsible for handling certain alerts.
By selecting an assignment group, you ensure that only the alerts assigned to that particular
team will trigger the automation. This way, the automation is targeted and only activates for
relevant alerts associated with the selected team.

Note:
▪ If you’re logged in to the instance with an administrator role (evt_mgmt_admin), all
of the assignment groups are available. Additionally, you can select All groups to
enable generating alerts for any of the available groups.
▪ If you’re an operator, only the group you’re a part of is available.
▪ Only members of the selected group or administrators can update or delete the
automation.
b. Set up the conditions by selecting the field, operator, and field value. Then, add more
conditions using OR or AND operators. You must add at least one more filter besides the
assignment group.

Tip: Select a more specific filter to enhance performance.
To add another set of conditions, select + New condition set. You can also manually add an
additional info field if you don’t see it in the drop-down list.

Note: Select Load past events to view previous events when creating the automation.
7. In the Then, group alerts by the following criteria section, perform the following steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4028


<!-- page 4029 -->
a. In the Grouping timeframe field, specify the duration (in minutes) when alerts must be
collected and grouped together.
b. In the Criteria type menu, select how you want to group the alerts.
Currently, there are two options:
▪ Similar fields & tags: Group alerts based on similar fields and tags.
▪ Related CIs: Group alerts based on CI (Configuration Item) relationships—child, parent, or
sibling—along with containment and applicative flows.
▪ Impacted service instances: Groups alerts affecting the same service instances. You can
choose either All Service Instances or a Specific Service Instance. For Specific Service
Instance, use the Service Instance field to select the services you want.
▪ Related logs properties: Groups alerts generated from logs using the Health Log Analytics
grouping algorithm. The Related logs properties option appears only when you install the
Health Log Analytics plugin.
c. In the Source field menu, select the source from which you want the alerts to be grouped.

Note: You can manually add a field name and select the type of the field. The
available options include additional info field, alert tag, and CI tag. This flexibility allows
you to customize the information being captured according to your specific needs.
d. In the Match method for grouping field, select one of the following options: group alerts
based on an exact match, fuzzy match, or pattern match.
When you select a value for the fuzzy match method in the grouping field, the Similarity
threshold (percentage) field becomes visible. Alerts are grouped when their similarity is
greater than or equal to the specified percentage based on edit distance.
For example, if you have alerts from USA, CA, and USA, NY, and you want to group the alerts
by country, you would set the Source field to USA. If the Match Method for Grouping is a
fuzzy match and the Similarity threshold (percentage) is 50%, then alerts will be grouped if
they are at least 50% similar, meaning they share the country "USA" as a common attribute.
e. When you select a value for the pattern match method in the grouping field, the Pattern
matching field becomes visible. Alerts are grouped when the specified pattern matches. For
more information, see Pattern matching .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4029


<!-- page 4030 -->
Use asterisks (*) in the search string to match any number of characters or a question mark
(?) to match any single character. Everything else in the search string matches itself. For
example, use "HTTP Error 5??" to match all HTTP 500 errors.
To include additional fields for grouping, select + Add criteria.
8. In the Automation details section, provide an order and automation description.

a. In the Order field, enter the automation order.

Note: Alerts are grouped based on the first match, executed in order from the lowest
to the highest number. The Automation is managed by field displays the team or
assignment group who owns, edits, and can delete this automation. The assignment
group is the same as the one defined in the If these conditions are met section.
b. In the Automation description field, enter a brief description of the automation.
9. To test if the alert grouping is working correctly, navigate to Test this automation on past
alerts, select the timeframe for the simulation from the drop-down list and then select Test
automation.
You can also modify any alert grouping conditions or field values and initiate the process again
by selecting Re-run test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4030


<!-- page 4031 -->
The header of the Test Automation section also displays the following: matching alerts, alert
groups, ungrouped alerts, and compression.
◦ Matching alerts: The total number of matching alerts before grouping that match the
conditions defined for this automation.
◦ Alert groups: The number of groups containing more than one alerts matching the
automation conditions. The smaller number in parentheses represents the number of groups
created by this automation.
◦ Ungrouped: The number of alerts matching the automation conditions that remain
ungrouped.
◦ Compression: The percentage reduction in the number of total alerts achieved by grouping,
calculated as 1 - (Alert groups + Ungrouped) / Total alerts. You can improve the compression
rate by grouping your alerts into related problems. The smaller number in parentheses
indicates the percentage of matching alerts compressed by this automation.
◦ When the criteria type is Related CIs:
▪ The Open CIs dependency map link appears in the Test Automation section.
▪ The Configuration Item field is displayed.
The Test Automation section displays key columns: Alerts, Description, Grouped by, Node,
and Time. The Description column outlines the alert group details. Preceding the Description
column, a number indicates the total alerts contained within that group. Grouped by specifies
the category of grouping, such as Group alerts with the same Node and CMDB. You can
sort the Grouped by column which is by default in the descending order. The value for other
automation group displays the name of the corresponding automation group and includes a
link to it. For a single alert, the value is displayed as –. The Time column shows when the test
was conducted.

Important: You can run the simulation of alerts on your test as well as production
instance. The test automation simulates the automation using up to 200 recent alerts
that match the specified conditions. It only considers groups where all alerts meet the
conditions for this automation, although additional grouping algorithms may be applied
during actual runtime.
10. Select Save automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4031


<!-- page 4032 -->
A notification appears when the automation is successfully saved. Otherwise, an error
message is displayed. The group automation that you created appears on the Group alerts
page where you can view, edit, or delete the existing automation.

Note: After you save the automation, when you select an automation result and hover
over the green dot next to an alert, a tooltip appears explaining its meaning.

If you select the description, it opens a detailed view with additional

information.

What to do next

You can escalate alerts needing quicker responses from teams or individuals by implementing
respond automation.
Create Respond automation
Respond to alerts automatically by notifying appropriate stakeholders, escalating them as
needed based on severity and type, or other executing response actions. This process ensures
that alerts are managed promptly and effectively.

Before you begin

Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4032


<!-- page 4033 -->
About this task

For users familiar with the classic Event Management experience, this provides an easy interface
with enhanced team support for creating response automations or alert management rules. Alert
management rules or response automations are configurable automated actions triggered in
response to alerts that match specific conditions, helping IT teams resolve issues faster and with
minimal manual effort. These advanced features are currently only available to administrators
and other personas mentioned in the role required section.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Optimize section, select Respond to
alerts.
The Respond page appears.

4. Select Create automation.
5. In the Automation name field, enter the name of the automation.
By default, the Active check box is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4033


<!-- page 4034 -->
6. In the If these conditions are met section, create filter criteria to identify the alerts you want to
capture.

Important: You can limit respond automations to primary alerts to prevent secondary
alerts from being overwhelmed by unnecessary noise. Ensure these automations are
applied only to alerts associated with CIs that are not currently undergoing maintenance.
a. From the Assignment group field menu, select the assignment group to determine which
team’s alerts will trigger the automation.
The Assignment group represents a specific team responsible for handling certain alerts.
By selecting an assignment group, you ensure that only the alerts assigned to that particular
team triggers the automation. This way, the automation is targeted and only activates for
relevant alerts associated with the selected team.

Note:
▪ If you’re logged in to the instance with an administrator role (evt_mgmt_admin), all
of the assignment groups are available. Additionally, you can select All groups to
enable generating alerts for any of the available groups.
▪ If you’re an operator, only the group you’re a part of is available.
▪ Only members of the selected group or administrators can update or delete the
automation.
b. For the Parent field value, select whether the alert for which you want a response is grouped
under a parent alert.
c. For the Maintenance field value, select whether the alert for which you want a response is
under maintenance.
d. To add another set of conditions, select + New condition set. If you don’t see it in the dropdown list, you can also manually add an additional info field.
Set up the conditions by selecting the field, operator, and field value. Then, add more
conditions using OR or AND operators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4034


