# Zurich IT Operations Management — ITOM AIOps / ITOM AIOps use case / Event Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3322–3407 of 4823 | Part 4 of 4

Sections: ITOM AIOps (p2872); ITOM AIOps use case (p2873); Event Management (p2874)

---

<!-- page 3322 -->
Option

Action

The icon color represents the highest impact
or severity for active alerts on the application
services.
◦ Critical: Red (highest severity).
◦ Major: Orange.
◦ Minor: Yellow.
◦ Warning: Blue (lowest severity).
In the service map:
a. Click a CI tile.
View properties for a CI

b. In the side pane, click the Properties tab
and review information about the CI.
c. If you want to view more detailed informa­
tion, scroll to the end of the pane and click
Detailed Properties.

View monitored services
View all services that Event Management supports, such as, alert groups, discovered services,
application services, and technical services. According to the type of service, you can view
service definition details or drill down into the service.

Before you begin

Role required: evt_mgmt_user
Note: Application services that were created before activating the Event Management
plugin are not listed in the in the View Service column of the Monitored Services list.

Procedure
1. Navigate to All > Event Management > Monitored services.
2. Click View Service to open the view that is relevant to that service.
When you drill down to the contents of the service, either a map, alert list, or CI list appears
according to the type of service.
For example, if you click View Service for SNMP1000, you can drill down to the contents of the
service and the related topology map appears.

3. To view service definition details of a service, click the name of the service on the Monitored
services page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3322


<!-- page 3323 -->
For example, in the Name column, click SNMP1000 (

).

Related topics
Monitor service health
Use the Event Management overview dashboard
The Event Management overview module uses Performance Analytics to present data from
your instance for you to better visualize and understand your processes and drive continual
improvement.

About this task

From the Xanadu release onward, the Event Management overview module has been
deprecated and replaced with the AIOps dashboards. The dashboards deprecated include the
following:
• Event Management insights
• Event Management scorecards
• Event Management overview
The AIOps dashboards offer comprehensive visualizations of critical operational data. You can
monitor key performance indicators (KPIs), track service health, and gain valuable context on
the overall IT environment. For more information, see AIOps Dashboards in Service Operations
Workspace for ITOM.
Related topics
Performance Analytics and Reporting
Launch web application from alert
You can launch a web application from an alert that matches the conditions set in an alert action
rule.

Before you begin

Create an alert action rule that is configured to prepare a URL when the conditions that you
stipulate are met. For example, based on the results when the alert parameters are resolved, this
feature can open a Knowledge Base article or construct a URL.
Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3323


<!-- page 3324 -->
About this task

Right-click an alert in All Alerts or the Alert list in the Event Management Dashboard (for
instances upgraded from a release before Orlando), and choose Quick Response. Click the
required link to launch the web application that was configured in the alert action rule. For further
information, see Migrate an alert action rule to an alert management rule.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Right-click the required alert and select Quick Response.
A window appears with a list of available web applications that were configured in the alert
action rule and the filter that matches the alert. To see the target URL, point to the cursor over
the application name.

Note: If one or more of the alert action rule parameters cannot be resolved, the related
application name appears in black. When the alert parameters are resolved, then the
application name becomes a link.
3. Click the name of an application to open the URL in another tab or window in your browser.

Example:

A common use case is launch in context to the source management system.
Other examples include to search in knowledge bases, not only within ServiceNow, but
externally as well. Any URL-based action can utilize the alert parameters and the URLs can refer
to wikis, messaging services, REST APIs, and so on.
Related topics
Migrate an alert action rule to an alert management rule
Apply a quick response in an alert
Event Management Operator Tutorial
As an Event Management operator, your role is to find alerts, analyze them, and take action to
help resolve the underlying issue.

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Take the tutorial
Before you can work as an operator, you should take a tutorial to become familiar with several
Event Management concepts and understand what operators typically do on a regular basis.
Start the tutorial by clicking the first lesson:

Lesson 1
Lesson 2
Lesson 3

An overview of events and alerts
An overview of application services
Event Management operator workspaces

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3324


<!-- page 3325 -->
Lesson 4

What operators do

An overview of alerts for Event Management operators
As an Event Management operator, you need to understand how an alert is generated from an
event, what to look for in an alert, and how alerts can be grouped together.
This is the first lesson in the Event Management tutorial.

Lesson 1

Lesson 2
Lesson 3
Lesson 4

An overview of events and alerts

An overview of application services
Event Management operator workspaces
What operators do

Your organization already has an event monitoring tool in place, such as Microsoft System Center
Operations Manager (SCOM), Nagios, SolarWinds, and so on. When an issue occurs on your
network, such as a computer going down or a database failure, the event monitoring tools send
events to your ServiceNow instance. The Event Management application processes the events
according to the settings that your administrator configured, and then generates alerts. An alert
is an indicator that the issue requires some type of action.
Alert generation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3325


<!-- page 3326 -->
As an Event Management operator, your role is to view alerts and, depending on how Event
Management is implemented in your organization, take an action to help resolve the underlying
issue or notify someone who can. Later in this tutorial, you will see the phases of a typical alert
management process.

Alert priority and severity
The two most common characteristics of an alert are the priority and the severity.
• The priority of an alert is a score that helps you determine how important the impact is
to application services. Multiple factors determine the alert priority score. Your Event
Management administrator can configure the algorithm that the Event Management
application uses to calculate priority.
• The severity of an alert is an indicator of how serious the underlying issue is. The event
monitoring tool in your organization usually sends severity values with the event, which then
gets carried over in the alert. These are the default severity types that you will see in this
tutorial:

Severity

Description

The resource is either not functional or critical problems are imminent.
Critical
Major functionality is severely impaired or performance has degraded.
Major
Partial, non-critical loss of functionality or performance degradation occurred.
Minor
Attention is required, even though the resource is still functional.
Warning
No severity. An alert is created. The resource is still functional.
OK
The alert no longer needs action.
Clear

Correlated alerts
Some alerts are related to each other. For example, if a router goes down, several separate alerts
could be generated, one for each server connected to the router. All of these alerts are related,
or correlated. To help you manage correlated alerts, Event Management can automatically group
them and establish a two-level hierarchy with one root alert, called the primary alert, at the top,
and other related alerts, called secondary alerts, under the primary alert. When you view alerts,
primary alerts stand out by default so you know which alert to focus on without being distracted
by the secondary alerts.
In our example, if a router goes down on your network, network communication is also affected
for connected servers, assuming they cannot reach any other routers. The router outage
becomes the primary alert and the alerts generated on the server are secondary alerts that are
correlated under the router alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3326


<!-- page 3327 -->
Secondary alert generation

Depending on your organization's Event Management implementation, alerts might be grouped
automatically based on correlation rules that your administrator sets up. Your instance can also
learn how to improve the way it correlates alerts based on these rules. As an operator, you should
still verify the accuracy of the correlation and, if necessary, manually correlate additional alerts
with the primary alert. Later in the tutorial, you will learn how to do this.
In this tutorial, you will learn how to manually correlate alerts.

Alert flapping
An alert can flap, meaning that it gets multiple open-close events in rapid succession. Flapping
indicates that Event Management does not know whether the underlying events are genuine or
not. The events could indicate small issues with the way CIs are configured, or larger issues, like
network outages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3327


<!-- page 3328 -->
Alert flapping

For example, if a server that hosts a web service has too many active processes, it might trigger
an event about excessive CPU usage. Since CPU usage can fluctuate rapidly depending on
web service requests, several events might be triggered, leading to the alert being put in the
flapping state. As an operator, you might need to create an incident to have the server restarted,
or someone might have to reconfigure the CPU, or possibly make a hardware change on the
device.
As another example, consider a loose network cable that causes momentary, repeated network
outages. The thresholds that your administrator configures might not be optimal for this kind of
alert and Event Management considers it a flapping alert.

Continue the tutorial
Proceed to the next lesson: Application services for Event Management operators.
Application services for Event Management operators
As an Event Management operator, you need to understand what application services are.
This is the second lesson in the Event Management tutorial.

Lesson 1

An overview of events and alerts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3328


<!-- page 3329 -->
Lesson 2
Lesson 3
Lesson 4

An overview of application services
Event Management operator workspaces
What operators do

An application service is a collection of components, such as network devices, computers, and
applications that offer a service to your organization. The services can be something like an
email system or a website that tracks orders or requests in a database. Your administrator should
have already specified the application services in your ServiceNow instance.
Each component that makes up an application service is referred to as a configuration item or CI.
This service map provides a visual representation of an application service:
Service map

In this example, you can see a Web Portal application service with these CIs:
• PS Apache03: An Apache web server that hosts a company website.
• PS LinuxApp01 and PS LinuxApp02: Two Linux servers that share the workload from the web
server.
• PS ORA01: A database server that both Linux servers need to access.
• Storage Area Network 001: A mass storage device on which the other CIs depend.
You can see service maps like this on the Service Operations Workspace dashboard. Later in this
tutorial, you will learn about the dashboard and what an application service looks like when an
alert is associated with a CI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3329


<!-- page 3330 -->
Types of application services
Event Management classifies application services into the following types:
Technical services
A technical service is a dynamic grouping of CIs based on some common criteria.
For example, a technical service could be comprised of all web servers or all Oracle
databases for a specific location, like North America.
Application services
An application service can consist of discovered services, manual services, or
both. A discovered service is an application service that the Service Mapping
application finds (if your organization uses Service Mapping). A manual service is
an application service that your administrator configures by selecting and adding
each CI and specifying the relationships between CIs.
Alert groups
Alerts that are grouped together, either manually or automatically.

Alert impact
Application services are critical to the operations of your organization. If an issue occurs on one
CI, the entire application service can be affected. Part of your role as an operator is to analyze
alerts on CIs and see how they impact the application service as a whole, and then take an
action to help remediate or solve the underlying issue. Your administrator can configure impact
rules that go into calculations for the severity of an alert.
Later, when you learn how to use the Service Operations Workspace dashboard, you will learn
how to view an impact tree for an application service so you can understand the relationship
between the severity of an alert and the overall application service.
In this example, you can see how a Major alert on an Oracle database (PS ORA01) also causes a
major alert on its parent CIs and on the Web portal application service itself.
Impact tree

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3330


<!-- page 3331 -->
Continue the tutorial
Proceed to the next lesson: Event Management operator environment.
Event Management operator environment
As an Event Management operator, your primary work environment is the Service Operations
Workspace dashboard.
In this, the third lesson in the Event Management tutorial, you get an overview of your
workspaces so you know how to find the information you need.
Tutorial lessons
Lesson 1

An overview of events and alerts

Lesson 2

An overview of application services

Lesson 3

Event Management operator environment

Lesson 4

What operators do

The Service Operations Workspace dashboard
Your main area of work is the Service Operations Workspace dashboard, which provides a
view that focuses on how alerts relate to application services. From here, you can drill into each
application services to see the affected CIs and get an understanding of the overall impact of
whatever caused the alert. To open the dashboard, navigate to Event Management > Service
Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3331


<!-- page 3332 -->
Service Operations Workspace

The main sections of the dashboard are:
Banner
The banner contains controls that show or hide application services based on the
criteria you select:

Click a severity level to show or hide application services based on the alerts
associated with them.

Use the Group and Segment controls to organize the view.

Note: Your administrator assigns an application the criticality and cost
value to your application services.
Group and Segment filters

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3332


<!-- page 3333 -->
Application services
The Service Operations Workspace dashboard displays tiles that represent
application services. The color of a tile represents the severity of the alerts that are
associated with the application service.

Click a tile to show a summary of alerts associated with the application service.
Click to view details or the service map.

Alerts
Click the List icon (

). On the Lists tab, click the kind of alert to view.

You can filter or sort the list to find an alert. Sort by any alert details, such as
the Priority, which considers multiple factors for how serious the alert is, or the
Severity, which is value provided by the event monitoring tool.

Open any alert by clicking the number.

You will learn about what each of the columns means for an alert later on when you
analyze an alert.

Application service map views on the Service Operations Workspace
dashboard
Double-click the name of an application service tile to open one of the application service map
views. The view that you see depends on the type of application service.
For a manual or standard application service, this view appears:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3333


<!-- page 3334 -->
The application service map that you were introduced to in a previous lesson
appears in the main panel. This is what you can do from this view:

Click any of the CIs to see the alerts only for that CI and to display the details
about that CI in the Properties pane.

Click Impact Tree to see the state of all the CIs and how they affect each other
when receiving an alert. You will learn more about the impact tree later on in the
tutorial.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3334


<!-- page 3335 -->
Open any alert from the Alerts list at the bottom by clicking the number.

For a technical application service, this view appears:

This is what you can do from this view:

Click any CI to view details about it.

Open any alert from the Alerts list at the bottom by clicking the number.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3335


<!-- page 3336 -->
Continue the tutorial
Proceed to the next lesson: What Event Management operators do.
What Event Management operators do
As an Event Management operator, your typical workflow involves three phases: analyzing an
alert and its effect on application services, taking some type of action, and making sure the alert
is finally closed.
This is the last lesson in the Event Management tutorial. In this lesson, you will run through the
three phases of a typical operator day-to-day workflow.

Lesson 1

Lesson 2
Lesson 3
Lesson 4

An overview of events and alerts

An overview of application services
Event Management Service Operations Workspace
What operators do

Your organization will have specific policies and procedures that may differ from the phases
outlined in this topic. In addition, your administrator might have customized the Event
Management application so that some of these phases are automated and do not actually
require any action on your part.
For the purposes of this tutorial, we will walk you through each phase and allow you to perform
the tasks manually.

Phase 1

Analyze and acknowledge
an alert

In this phase, you will find an alert to work on,
analyze the details, and acknowledge it so that other
operators know it is a legitimate alert.

Phase 2

Triage an alert

In this phase, you take an action to help remediate
the issue that caused the alert. The most common
action to take is to create an incident and assign it to
someone who can solve the underlying issue.

Phase 3

Close an alert

In this phase, you will verify that the alert is resolved,
and then close the alert.

Start here
Start out by learning how to Analyze and acknowledge an alert.
Operator phase 1: Analyze and acknowledge an alert
As an Event Management operator, the first thing you should do is access alerts and then find
the ones you want to focus on. You can open the Alert form to analyze the details, and then
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3336


<!-- page 3337 -->
acknowledge it to let other operators know that the issue causing the alert should be addressed
in some way.

Before you begin

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

You must understand both of your operator environments: the Service Operations Workspace
dashboard and Service Operations Workspace. Review Event Management operator
environment if you have not already done so. This tutorial uses the Service Operations
Workspace dashboard.
Role required: evt_mgmt_operator

Procedure
1. Navigate to Event Management > Workspaces > Service Operations Workspace.
In the list, click Alerts > All Alerts. By default, all alerts appear in the list sorted by Group. Click
any heading to sort by that value. To view current filter settings, click the filter icon
. To modify filter settings, click Advanced view.

2. Find the alerts to focus on by clicking Application Services > Services, or by using any of the
filtering and sorting options.
3. Click an alert name to open the Details tab for the alert.
Example
The important fields on the form and related items are described after the screenshot.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3337


<!-- page 3338 -->
Fields on the Alert Details tab for an alert that is associated with a single CI
Field

Number

Description

The automatically generated alert number that you saw in the list of
alerts on the Service Operations Workspace dashboard.

Node

The name of the CI with which the alert is associated. The event that
generated the alert occurred on this CI. You might see a computer
name, or an IP address or MAC address of a device.

Resource

The object on the node that caused the event. You might see values like
the name of a hard disk, a CPU, or the name of a process or a service.
You can add information to this field if necessary.

Configuration item

The CI in the CMDB to which this alert applies. If the Node field is filled
in but this field is empty, and if you know which CI the node represents,
you can enter the CI in this field to manually associate the alert with it.

Note: Your administrator can configure rules that automatically

bind CIs to an alert, usually based on what is in the Node field.
However, it is possible that the system is unable to find the correct
CI to bind the alert to. In this case, you might need to manually
select a CI.
For the purposes of this tutorial, we assume that the correct CI is
bound to the alert.
When an alert contains a CI, the Overview tab opens when selecting
the alert.
Task

Any existing task that is associated with the alert, such as an incident,
change request, or problem, is shown in this field. When you first look
at an alert, this field is blank. You can associate a task when you triage
the alert. You associate an incident to an alert and assign the incident to
someone at a later stage in this tutorial.

Description

A description of the alert that came from the alert monitoring software in
your organization. You can add information if necessary.

Severity

Severity value for the alert:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3338


<!-- page 3339 -->
Field

Description

◦ Critical: Immediate action is required. Either the resource is not
functional or critical problems are imminent.
◦ Major: Major functionality is severely impaired or performance has
degraded.
◦ Minor: There is a partial, non-critical loss of functionality, or
performance has degraded.
◦ Warning: Attention is required even though the resource is still
functional.
◦ Info: An informational message. An alert is created, but the resource is
still functional.
◦ Clear or Resolved: No action is required. An alert is not created from
this event. Existing alerts are closed.
State

The processing state that the alert is in. A newly generated alert is in the
Open state. Other states are:
◦ Reopen indicates that a previously closed alert is open again, and it
requires your attention.
◦ Flapping indicates that the alert is receiving a high frequency of
identical events from the same source, which can cause many alerts
to re-open even after it is closed.
◦ Closed indicates that the alert is closed and does not require any
further action. You will close an alert as part of the last stage in this
tutorial.

Maintenance

Acknowledged

Indicates that the alert does not need to be worked on and is hidden
from the list of alerts in the Service Operations Workspace dashboard.
In this example, we do not want to put the alert in maintenance.
Indicates that an operator verified that the alert is genuine and is
triaging it. You acknowledge the alert at a later stage in this topic.
Your Event Management administrator can also have alerts
automatically acknowledged immediately after they are generated. If
this is the case, the Acknowledge check box on the Alert form might
already be selected.

Parent

Displays a value only for secondary alerts. The value indicates the alert
number of the parent alert. The field is empty for primary alerts (alerts
with no parent alert).

Knowledge article

Any existing knowledge base (KB) article that is associated with the
alert. When you first open an alert, this field is blank. You can associate
a KB article when you triage the alert.

4. Click the Impacted Services tab and then click the service name.
Before you acknowledge the alert, you might want to learn more about the services that are
affected due to the service that is the source of the alert.
The service opens and displays the Details tab. Click Service Map to view the map of related
application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3339


<!-- page 3340 -->
Notice that the major severity indicator in orange is displayed on several CIs. It starts with the
Oracle database (PS ORA01) and propagates up to all CIs that depend on the database. From
this, you can surmise that the alert with the highest level of severity on the Oracle database
indicates the root cause of the issue.
This does not necessarily mean that the system generated separate alerts for each CI, but it is
possible. When you triage an alert, you can determine whether alerts on other CIs should be
correlated under a primary alert.
5. Click the Impact Tree tab and review the impacts on each CI.
The percentages next to each CI in the impact tree show you the effect on each CI. In this
example, each CI is impacted 100% by the alert, which means the underlying issue that led to
the alert is serious enough to impact the functionality of the application service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3340


<!-- page 3341 -->
6. Acknowledge the alert.
Acknowledging an alert does not assign it to you, nor does it create a task like an incident or
change request. It simply lets other operators know that you are aware of the issue. After you
acknowledge an alert, you will take further action during the triage stage.
Option

Description

With this process, you can acknowledge only
the alert that you are viewing.
Acknowledge a single alert

a. Open the Alert Details form as described
earlier.
b. Select the Acknowledged check box.
With this process, you can acknowledge one
alert or multiple related alerts.

Acknowledge one or more alerts

a. Open the list of alerts as described earlier.
b. Select each alert to acknowledge.
c. Click Acknowledge.

7. Navigate back and look for the alert that you acknowledged.
You can see that the Acknowledged value is true.

What to do next

Go to Operator phase 2: Triage an alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3341


<!-- page 3342 -->
Operator phase 2: Triage an alert
After you analyze and acknowledge an alert, you must triage it. The triage phase involves
verifying alert correlation and taking an action to help resolve the issue that caused the alert.
This topic covers the most common triage task: creating an incident from an alert.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

Role required: evt_mgmt_operator

Procedure
1. Before you start to work on the alert, check whether other alerts should be correlated with the
one you just reviewed:
a. Navigate to Event Management > Service Operations Workspace.
b. Click the same application service tile and review the alerts in the Alerts list.
c. If multiple alerts are present, open one to determine if it is related to the other alert, or if the
underlying issue is the same in both alerts.
For example, if an alert is associated with a web server and there is already an alert for the
database issue, correlate the web server alert as a secondary alert with the database alert as
the primary alert.
d. Open the secondary alert, click the lookup icon ( ) in the Parent field, and then select the
primary alert.
This creates a primary (parent) / secondary (child) relationship between the two alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3342


<!-- page 3343 -->
e. Repeat this process to correlate as many secondary alerts as necessary.
f. Navigate back to the Service Operations Workspace dashboard and verify that the primary
alert displays an icon in the Group column.

Note: Your administrator can set up rules that let the system automatically correlate

alerts so that you do not need to do so manually. In that case, a Feedback field appears
on the Alert form. Select Yes if the system correlated the alert correlated correctly, or
No if not. Currently, the feedback option is available but does not trigger further actions
after being logged.
2. Open the primary alert.
3. On the Alert form, click Actions > Create Incident.
If your organization uses Security Incident Response, the button is Create Security incident.
The Flow Designer opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3343


<!-- page 3344 -->
4. Click Refresh.
The Execution Details page opens.

5. Click Open Context Record and then fill in the Incident form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3344


<!-- page 3345 -->
Field

Caller

Description

Click the lookup icon ( ) and then select your name. The
caller is the person who discovered the issue that led to the
incident.

Category and Subcategory Select a category that best describes this alert. In this example,
Database is the best choice.
Application service

Select the application service to which the CI belongs. In this
example, the application service is Web portal.

Configuration item

If it is not already populated, select the CI. In this example, the
Oracle database (PS ORA01) is automatically populated into
the field.

Impact and Urgency

Select the impact and urgency levels that you think appropriate.

Assignment group
Assigned to

Click the lookup icons (
) for both or either of these fields,
and then select the group or the individual that can handle the
issue.

6. Click Submit to create the incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3345


<!-- page 3346 -->
The Alert you are working on reappears. On the Alert form, the incident is populated in the
Task field. You can also see the incident number in the Task column on the Service Operations
Workspace dashboard.

What to do next

There are other tasks you perform as part of the triage stage:
• Run a remediation workflow on an alert if your Event Management administrator already set up
a workflow in your ServiceNow instance and your policies allow you to trigger it from the alert.
• Launch a web application from an alert to open a website or an event monitoring tool that
provides more information about the alert.
• Associate a knowledge base article with an alert if there is existing information about the alert
that might help resolve the underlying issue.
• Put an alert into maintenance to temporarily hide it from the Service Operations Workspace
dashboard if the alert does not require action at this time.
If you do not need to perform any other triage actions, proceed to Phase 3: Close an alert.
Run a remediation workflow on an alert
As an Event Management operator, you can also run a workflow on your ServiceNow instance
that helps remediate the alert. For example, you might run a workflow that automatically restarts a
server on your network, which might resolve an alert about CPU usage.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

Note: You can run a remediation workflow if your administrator already set up workflows
for you to choose from. You should be familiar with your organization’s policies regarding
triaging of alerts.
Role required: evt_mgmt_operator

Procedure
1. From the Service Operations Workspace dashboard, open the alert that you acknowledged in
Phase 1: Analyze and acknowledge an alert.
2. On the Alert form, click Quick Response.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3346


<!-- page 3347 -->
3. In the Quick Response window, click the name of the remediation under Run Remediation.

What to do next

There are also other tasks you can take as part of the triage stage:
• Launch a web application from an alert to open a website or an event monitoring tool that
provides more information about the alert.
• Put an alert into maintenance to temporarily hide it from the Service Operations Workspace
dashboard if the alert does not require action at this time.
• Associate a knowledge base article with an alert if there is existing information about the alert
that might help resolve the underlying issue.
If you do not need to perform any other triage actions, proceed to Phase 3: Close an alert.
Launch a web application from an alert
As an Event Management operator, you can also launch a web application from an alert. The web
application might be a console for the event monitoring tool that your organization uses, or any
external website that provides additional information you might need about the alert.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3347


<!-- page 3348 -->
Phase 3

Close an alert

Role required: evt_mgmt_operator
You can launch a web application if your administrator has set up a link to the application. You
should be familiar with your organization’s policies on triaging alerts.

About this task
Procedure
1. From the Service Operations Workspace dashboard, open the alert that you acknowledged in
Phase 1: Analyze and acknowledge an alert.
2. On the Alert form, click Quick Response.

3. In the Quick Response window, click the name of the application under Launch Application.
Your administrator has specified which applications should appear in the list.

What to do next

There are also other tasks you can take as part of the triage stage:
• Run a remediation workflow on an alert if your Event Management administrator already set up
a workflow in your ServiceNow instance and your policies allow you to trigger it from the alert.
• Put an alert into maintenance to temporarily hide it from the Service Operations Workspace
dashboard if the alert does not require action at this time.
• Associate a knowledge base article with an alert if there is existing information about the alert
that might help resolve the underlying issue.
If you do not need to perform any other triage actions, proceed to Phase 3: Close an alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3348


<!-- page 3349 -->
Associate a knowledge base article with an alert
As an Event Management operator, you can associate a knowledge base (KB) article with the
alert to capture additional information about the alert. This might include a procedure that
someone has to follow to resolve the underlying issue on your network, or a best practice to
prevent the issue from reoccurring.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

This task assumes that your organization uses the Knowledge Base application in your
ServiceNow instance.
Role required: evt_mgmt_operator

Procedure
1. From the Service Operations Workspace dashboard, open the alert that you acknowledged in
Phase 1: Analyze and acknowledge an alert.
2. On the Alert form, click the lookup icon (

) next to the Knowledge article field.

3. Filter the list of existing KB articles by first selecting a field, such as Short Description, and
then entering related text into the search text field.
You can use the contains (*) operator to search for articles that contain keywords. For
example, entering *oracle in the short description filters the KB articles that contain the
word oracle somewhere in the short description.

4. If you cannot find any related KB articles, you can click New, create a new one, and then click
Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3349


<!-- page 3350 -->
The KB article number appears in the Knowledge article field on the Alert form.

5. Click Update on the Alert form to save the information.

What to do next

There are also other tasks you can take as part of the triage stage:
• Run a remediation workflow on an alert if your Event Management administrator already set up
a workflow in your ServiceNow instance and your policies allow you to trigger it from the alert.
• Launch a web application from an alert to open a website or an event monitoring tool that
provides more information about the alert.
• Put an alert into maintenance to temporarily hide it from the Service Operations Workspace
dashboard if the alert does not require action at this time.
If you do not need to perform any other triage actions, proceed to Phase 3: Close an alert.
Put an alert into maintenance
As an Event Management operator, you can put an alert into maintenance if the alert does
not require any further action, but you still want to keep the alert active. Putting the alert into
maintenance hides it from the Service Operations Workspace dashboard so that other operators
do not need to access it, but it does not close the alert.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

Role required: evt_mgmt_operator

Procedure
1. From the Service Operations Workspace dashboard, open the alert that you acknowledged in
Phase 1: Analyze and acknowledge an alert.
2. Select the Maintenance check box and click Update, or click the Maintenance button at the
top of the list.
3. Click Update.
4. Navigate to Event Management > Operators Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3350


<!-- page 3351 -->
Notice that alerts in maintenance are not visible in the list by default. The filter excludes alerts
where Maintenance | = | true.

What to do next

If the issue that led to the alert still needs further attention later, navigate to Event Management
> All Alerts, open the alert, and then clear the Maintenance check box and click Update. From
there you can perform other triage actions.
There are other tasks you can take as part of the triage stage:
• Run a remediation workflow on an alert if your Event Management administrator already set up
a workflow in your ServiceNow instance and your policies allow you to trigger it from the alert.
• Launch a web application from an alert to open a website or an event monitoring tool that
provides more information about the alert.
• Associate a knowledge base article with an alert if there is existing information about the alert
that might help resolve the underlying issue.
If you do not need to perform any other triage actions, proceed to Phase 3: Close an alert.
Operator phase 3: Close an alert
After you take action on an alert, you can verify several items on the alert and then close it.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Phase 1

Analyze and acknowledge an alert

Phase 2

Triage alerts

Phase 3

Close an alert

Role required: evt_mgmt_operator

About this task
Procedure
1. Navigate to Workspace Experience > Workspaces > Service Operations Workspace.
2. Find the alert you want to close.
If the alert does not appear in the list, for example because it is in maintenance, change the
filter options as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3351


<!-- page 3352 -->
3. Click the alert number to open the Alert Details tab and review key information about the alert.

4. Review information about application services on the Impacted Services tab.
In this example, the service_1474 application service appears in the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3352


<!-- page 3353 -->
If you need more information about an application service and want to see the service map,
click the service name and then click Service Map.
5. Look at the alerts related to this application service, and modify the correlation if necessary.
The process for a primary alert differs from the process for a secondary alert.
◦ On a primary alert, the secondary alerts that are correlated with the primary appear on the
Secondary Alerts tab.

Typically, you do not have to do anything with the secondary alerts unless you want to add
more secondary alerts or remove the correlation altogether.

Note: When you close a primary alert, the secondary alerts are also closed by default.
◦ On a secondary alert:
The alert number of the primary alert appears in the Parent field. You do not have to do
anything with the parent alert, unless you want to re-correlate this secondary alert with
another primary alert, or remove the correlation altogether by clearing the field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3353


<!-- page 3354 -->
Note: When you close a secondary alert, the primary alert is not closed. You must
close the primary alert separately.
6. When you are sure the underlying issue causing the event and corresponding alert has been
rectified, click Close.
If you think that the alert needs attention, do not close it. Instead, put it into maintenance by
selecting the Maintenance checkbox.

What to do next

You are finished with the Event Management Operator tutorial, which covers a basic workflow of
analyzing alerts, triaging them, and closing them out.
After you close an alert, you might need to follow up on these items:
Reopen an alert
If you think an alert requires further action, you can manually change its state to
Reopen. When an alert reopens, any associated incidents can also be updated
or reopened according to the incident state and the rules that your administrator
configured.

Note: Any time you reopen an alert, always go through the triage and close
phases again.
Work with alerts in the flapping state
In some cases, the same event that created the alert you just closed could be
triggered again, even repeatedly, in a short amount of time. If this occurs, the State
of the alert that you just closed changes to Reopen, and eventually to Flapping
depending on settings that your administrator configures.
See Handle alerts in the flapping state for more information on what to look for.
For a summary of other tasks that you might need to perform at some time, see Advanced tasks
for the Event Management operator.
Advanced tasks for the Event Management operator
As an Event Management operator, you might need to perform additional tasks that are outside
of your typical workflow, or tasks that you need to perform only once.

Advanced task

Description

Customize your alert list view

Get to the alerts you need to analyze as soon
as possible.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3354


<!-- page 3355 -->
Advanced task

Description

Work with flapping alerts

If an alert is in the flapping state, it means
that the underlying issue keep reoccurring.
You should triage the alert again and look for
another solution.

Handle alerts while CIs are in maintenance

Learn how to handle alerts on a CI that is
in the maintenance state, which means it is
undergoing some type of change.

Adjust alert impact while triaging an alert

You can change impact rules, which affects
how alert impact is calculated and alert
severity.

Customize your alert list view
You can create one or more customized alert list views that show only the information pertinent
to you. For example, you might want to focus only on the alerts for application services in a
specific location, or only the alerts for application services of high criticality.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Role required: evt_mgmt_operator

Procedure
1. Navigate to Event Management > Operators Workspace.
2. On the Lists tab, click My Lists.

3. Click + New list, fill in the form with name and filter conditions, and then click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3355


<!-- page 3356 -->
The list appears on the My Lists tab.

Note: The list applies only to application services, and not to application service
groups. The groups appear whether or not they match the filter, and whether or not they
contain any services that match the filter.
Work with flapping alerts
If an alert is in the flapping state, you might need to triage the alert again.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Role required: evt_mgmt_operator

About this task

If an event repeatedly triggers the same alert in a short amount of time, the alert is put into the
flapping state, even if an operator closed it previously. The event can also be fluctuating between
severity levels, such as Info and Critical. You should triage the alert again, and take action to try
to prevent the event from reoccurring.

Note: Your Event Management administrator can configure several settings that
determine when to mark an alert as flapping, and other settings that determine what action
you can take. This topic covers a generic example.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3356


<!-- page 3357 -->
Procedure
1. Find alerts in the flapping state:
a. Navigate to Event Management > Operators Workspace.
b. Modify the list of alerts by clicking the filter icon (
) and specifying criteria to find flapping
alerts.
Click Advanced view to modify filter settings. For example, you can specify:
State | is | Flapping.
2. Click the alert number to open it.
3. On the alert, click the Flapping tab and review the information:

Field

Flap count

Flap start window
Flap last update
time
Flap last state

Description

The number of times the alert started flapping since the time in the Flap
start window field.
The time that flapping started.
The last time flapping occurred. This time is the instance processing
time, not the source system time.
The state of the alert before it entered the flapping state.

4. Decide which action to take based on how often flapping has occurred.
You can do any of the following, depending on what your organization's standard operating
procedures are and what your Event Management administrator configured:
◦ Run a remediation workflow that might do something like reboot a server or reset a router.
◦ Access a web application, like the application for your event monitoring software on your
network.
◦ Modify an associated incident or a KB article to include additional information or steps.
5. After you are certain that the underlying issue is addressed, close the alert.
Handle alerts while CIs are in maintenance
When an alert occurs on a CI that is in the maintenance state, the alert state is also changed to
maintenance. You should find and monitor the states of these alerts. Later, when changes on the
CI are complete, finish triaging the alert and close it.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Before completing this task, familiarize yourself with basic form configuration in an instance. You
might need to add fields and related lists to forms.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3357


<!-- page 3358 -->
The example in this topic assumes that a network administrator opened a change request to
reconfigure a problematic web server.
Role required: evt_mgmt_operator

Procedure
1. Find alerts in maintenance:
a. Navigate to Event Management > Operators Workspace.
b. Click the filter icon (

) and in the Filter box, click Advanced view and specify:

State | is | Maintenance.
2. In the list of alerts, find an alert with a value in the Configuration Item column.
This is the CI on which the alert occurred.
3. Click the CI name to open the form that displays information about the CI.
In this example, the status of the web server is In Maintenance and there is a change request
scheduled so that someone can reconfigure it.
4. Click the CI name to open the form that displays information about the CI.
In this example, the status of the server (on the Details tab) is In Maintenance. You can view
the scheduled change request on the Change Requests tab (someone will reconfigure the CI).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3358


<!-- page 3359 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3359


<!-- page 3360 -->
5. At this point, you should not modify the alert associated with this CI.
You can open the change request to see if a schedule is attached, or coordinate with your
team to find out when the CI will no longer be in maintenance.
6. After you verify that the Status field on the CI is not In Maintenance, open the alert again and
clear the Maintenance check box.
7. Continue to triage the alert.
Adjust alert impact while triaging an alert
As an Event Management operator, you might need to modify the impact that an alert has on
an application service and on the CIs in a service. Do this when you think that the impact does
not accurately represent what you see in your network environment so other operators and
administrators see the correct impact information.

Before you begin

Note: The Operator Workspace interface is available only to customers who have
upgraded from a release prior to the Utah release. New customers as of the Utah release
can use the Service Operations Workspace for ITOM, which offers an enhanced UI for
managing alerts.

Role required: evt_mgmt_operator

About this task

Before you make any modifications to impact calculations, make sure that you understand
how the application services and the CIs actually function. You might need to perform tests on
network infrastructure or contact someone who can.

Procedure
1. Navigate to Event Management > Operators Workspace.
2. Double click the name of the application service that has the alerts you want to modify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3360


<!-- page 3361 -->
3. On the Details tab, click Service Map.
4. On the Service Map tab, click Full Map Tree.
5. On the map, click Impact Tree.
6. Analyze the application service to see whether the impact tree accurately reflects the impact
of the alerts based on what you know about the CIs involved.
In this example, a critical alert indicates a serious issue with a Linux server that is part of a Web
portal application service.

Notice that the impact on the Web portal itself is red, meaning critical, even though only one
of the Linux servers that it relies upon actually has a critical alert. The other Linux Server does
is not impacted by the alert. Assume for this example that the Linux servers perform different
roles for the web service, and that even though PS LinuxApp02 has a critical alert, the PS
LinuxApp01 server can adequately provide all the necessary services to keep the application
service operational.
7. Click the PS Apache03 CI, and then click Impact to display the impact rules for the CI.
By default, the CI impact rule appears, showing you this information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3361


<!-- page 3362 -->
◦ The Impact On and Influence columns show you that the CI (PS Apache03) should inherit
100% of the impact of all child CI impacts, which in this case includes the critical impact
on the PS LinuxApp02 server. This setting is why the PS Apache03 web server, and the
application service as a whole, inherits the impact 100%.
◦ The Critical column shows you that a critical alert (red) is inherited as critical alert (red).
8. Change the Influence value to 0 since the web server is still operational, and then change
the Critical column to indicate that a critical impact status (red) should be inherited as a nonimpact (green).
9. Wait for the dashboard to update automatically, or click Event Management > Service
Operations Workspace and double-click the same application service to get an updated
application service map.
Notice that the influence on the Apache web server is 0% and the impact status is green. Also
notice that the critical alert status (red) remains unchanged, even though the impact changed
to green.

10. Navigate back to the Service Operations Workspace dashboard.
Notice that the application service is now green, indicating that the overall application service
is operational. The critical alert still displays at the bottom in the Alerts list, indicating that there
is still an issue that you or other operators can address.

What to do next

Your administrator might configure additional impact rules that display when you click a CI in the
application service map. You can make adjustments to the Influence fields on any impact rule to
get the most accurate impact tree.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3362


<!-- page 3363 -->
Event Management reference
Reference topics provide additional information about mapping and fine-tuning application
services using Event Management lists and forms.
Components installed with Event Management
Activating the Event Management (com.glideapp.itom.snac) plugin adds several roles, scheduled
jobs, and tables.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Roles installed with Event Management
Roles used by the Event Management application.
Event Management adds these roles.

Role title [name]

Description

Event Management
Administrator

Has read and write access to all Event
Management features to configure Event
Management.

[evt_mgmt_admin]

Contains roles

• evt_mgmt_user
• template_editor_global

Note: Exercise caution with the
evt_mgmt_admin role, as it can be
elevated to the admin role. A user
with the evt_mgmt_admin role has
the ability to add and modify scripts
that run on a global scope. Ensure
proper access control. With this role,
the user can create and/or update the
following scripts:
• Alert correlation rules
• Alert management rules
• Maintenance rules
• Advanced scripts
• Event field mapping
• Pre- and post-binding scripts
Event Management
Operator
[evt_mgmt_operator]
Event Management
User

In addition to the evt_mgmt_user
evt_mgmt_user
permissions, can also activate operations
on alerts such as acknowledge, close, open
incident, and run remediations.

[evt_mgmt_user]

Has read access to all Event Management
features. Has the itil role to be able to
manage incidents that are created from
alerts.

Event Management
Integrator

Has create access to the Event
[em_event] and Registered Nodes

itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3363


<!-- page 3364 -->
Role title [name]

Description

Contains roles

[evt_mgmt_integration] [em_registered_nodes] tables to integrate
with external event sources.
Scheduled jobs installed with Event Management
List of scheduled jobs that are provided with Event Management.
To review the list of scheduled jobs, navigate to System Scheduler > Scheduled Jobs. Event
Management adds the following scheduled jobs.

Scheduled job

Description

Event Management — Connector execution
job

Compares current time with time when active
connector instances were last run and sets
relevant connectors to execute. Runs every 10
seconds.

Event Management — Handle Impact Stuck
Service

Releases stuck services and marks them as
requiring rebuilding in the Impact Changes
table to rebuild the impact tree.
Runs every 2 minutes, 31 seconds.

Event Management — Impact Calculator
Trigger

Trigger the impact calculation. The Event
Management dashboard and impact tree are
refreshed using the calculated figures.
Runs every 6 seconds.

Event Management — Impact Topology
Consumer

Consumes topology changes and marks the
related services as ‘require rebuilding’ in the
Impact Changes table to rebuild their impact
trees.
Runs every 19 seconds.

Event Management — Update stuck
connectors

Release connector instances that are stuck.

Event Management — Alert Priority Queue

Calculate alert priority. Two Alert Priority
Queue jobs are active and available and can
be run multi-thread.

Runs every 2 minutes.

Runs every minute.
Event Management — Auto Close Alerts

Alerts that are idle longer than
7 days (default time period) are
closed. Modify the default using the
evt_mgmt.alert_auto_close_interval
property.
Runs every 10 minutes.

Event Management — Calculate Alert Priority
Grouping

Runs and calculates the priority groups:
urgent, high, moderate and low for the alerts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3364


<!-- page 3365 -->
Scheduled job

Description

according to the highest and lowest priority
score in the system.
Runs every 30 minutes.
Event Management — Close Flapping Alerts

Close flapping alerts.
Runs every 5 minutes.

Event Management — Close Threshold Alerts

Close threshold alerts.
Runs every 2 minutes.

Event Management — Evaluate Scoped Alert
Rules Management0

Execute alert management rules. Two separate
jobs run to ease the load on the system.

Event Management — Evaluate Scoped Alert
Rules Management1

Runs every 11 seconds.

Event Management — Filter Services for
Impact - Queue Handler

Process changes from
em_impact_inclusion_class and
em_impact_filter_service.
Runs every minute.

Event Management — Impact Tree Builder

Handles all services with changes from the
em_impact_changes table and rebuilds their
impact trees.
Runs every 11 seconds.

Event Management — Insert Health Monitor

Job to produce the ServiceNow Event
Management application services.
Runs once every hour.

Event Management — Maintenance Calculator Calculate the maintenance for CIs.
Runs every minute.
Event Management — Node Count

Calculate license usage.
Runs once every hour.

Event Management — Populate Impacted
Services Table

Scan cmdb_ci_service_auto and copy
all services to em_impacted_service,
along with all related classes to
em_impact_inclusion_class.
Runs once after upgrade.

Event Management — Process Events

Job that runs and processes each Ready
event (apply event rule, mapping rule, and
create or update alert)
Runs every 5 seconds.

Event Management — Process Metric Binding

Process metric binding.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3365


<!-- page 3366 -->
Scheduled job

Description

Runs every 5 seconds.
Event Management — Process Records in
em_extra_data_json

Creates events for log analytics anomalies.

Event Management — Queue Connector
Processor

Bi-directional functionality. Processes all
pending alerts in the Update Queue and
sends them to the MID Server. By default, this
dequeue process is performed in batches of
1,000 alerts.

Runs every 13 seconds.

Runs every 30 seconds.
Event Management — Recalculate Impact for
Groups

By default, this job is not active. Can be run
on demand to correct the impact on service
groups.
Runs on demand.

Event Management — Recover Stuck Events

Handle all events that are in queued state and
switch back to Ready to handle events from
the beginning.
Runs at system startup.

Event Management — Update Health Monitor

Update the ServiceNow Event Management
application services.
Runs once every hour.

Event Management — Update SLA
Configuration Result

Synchronizes the CIs that match the SLA
configuration filter with the Event Management
SLA [em_ci_severity_task] table.
Runs every 10 minutes.

Event Management — Update SLA Severity

Updates Event Management SLA
[em_ci_severity_task] table with the new
severity.
Runs once every minute.

Event Management — Convert IT Service

Run this property on demand to convert
manual services to application services.
Runs every 30 minutes.

Event Management — Collect xmlstats

Collect event processing statistics.
Runs once every minute.

Event Management — Impact Calculator for
Alert Groups and SLA

Calculates the effect of alerts on alert group
services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3366


<!-- page 3367 -->
Scheduled job

Description

Event Management — Manual Impact
Calculator Trigger

Manually trigger of Impact Calculation on all
operational Services.

4x Event Management — Impact Calculator for Calculates the impact of alerts on application
BS_0
services, and builds the impact tree on the
Event Management dashboard. Four separate
4x Event Management — Impact Calculator for
jobs run to ease the load on the system.
BS_1
4x Event Management — Impact Calculator for
BS_2
4x Event Management — Impact Calculator for
BS_3
Event Management — Backfill Alert History
table

Locates redundant records in the
em_alert_history table and cancels them.

Event Management — Backfill Impact Status
table

Locates redundant records in the
em_impact_status table and cancels them.

Event Management — Impact for Groups

Calculates the impact of alerts on service
groups.

Event Management — Clean Alert History
Table

Cleans the Alert History (em_alert_history)
table by removing records more than 90 days
old.
You can customize the amount of time after
which alerts are removed by configuring

evt_mgmt.impact_calculation.cleanup_age_seco
in the sys_properties.list table.
Event Management — Clean Impact Status
Table

Cleans the Impact Status (em_impact_status)
table by removing records more than 90 days
old.
You can customize the amount of time after
which alerts are removed by configuring

evt_mgmt.impact_calculation.cleanup_age_seco
in the sys_properties.list table.
Event Management adds the following scheduled jobs to support alert aggregation and RCA.

Name

Description

Service Analytics Purge
Old Observation Data —
Daily

Cleans the staging data.

Service Analytics Prepare Prepares RCA input data. Stores and probes MID Server to learn
RCA Learner Input Data — statistical information about alerts.
Daily
Service Analytics group
alerts using RCA/Alert
Aggregation

Applies RCA and alert aggregation to open alerts and prepares
automated alert groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3367


<!-- page 3368 -->
Name

Description

Service Analytics Alert
Aggregation Learner —
Daily

Learns information about existing alerts and groups new open
alerts.

Service Analytics RCA
Configuration

Configures root cause analysis.

Service Analytics Check
File System Space on
Analytics MID — Daily

Checks disk usage on the dedicated MID Server, and
generates an event if it exceeds the threshold set in the

sa_analytics.rca.mid_max_allowed_space property.

Service Analytics Gather Gathers data for the Value Report.
Value Report Data — Daily
Service Analytics —
Update virtual alerts for
aggregation groups

Update the virtual alerts that were created to represent alert
aggregation groups, with any changes to alerts belonging to that
group. Runs every minute.

Service Analytics
Attribute Populator for
Historical Alerts

Populate attributes used in feature identifier for historical alert data
using event rules. Runs on demand.

Event Management Analytics Alert Syncer

Gathers alert data that is used by grouping job.

Properties for personalizing domain separation for Event Management connectors
Properties provide the metadata to identify the domain.
You can change the values if you want to use any other table or fields for domain identification
but make sure that the table is domain separated.

Note: When personalizing domain separation for event management connectors, all the
properties can be overridden at the connector level as well.
There are three caches maintained for personalizing domain separation (main,
user_access, missing_domain). You can create a few system properties to control them.
Default System Properties
Property

evt_mgmt. connector_domain_info_table_name

Description

The table where you store domain information for
personalizing domain separation.
• Type: string
• Default value: core_company

evt_mgmt. connector_domain_info_column_name

The field name in the table to identify the
provided domain for personalizing domain
separation.
• Type: string
• Default value: name

evt_mgmt. connector_domain_id_column_name

The field to get domain ID from for personalizing
domain separation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3368


<!-- page 3369 -->
Default System Properties (continued)
Property

Description

• Type: string
• Default value: sys_domain
evt_mgmt. connector_domain_path_column_name The field to get the domain path from for
personalizing domain separation.
• Type: string
• Default value: sys_domain_path

Property

Description

evt_mgmt.connector_custom_domain_sep_cache_expire_in_seconds

For
personalizing
domain
separation,
if you don’t
want your
main cache
to expire
every week.

evt_mgmt.connector_custom_domain_sep_user_access_on_domain_cache_size

For
personalizing
domain
separation, if
you want to
increase the
size of the
user access
cache.

evt_mgmt.connector_custom_domain_sep_missing_domain_cache_expire_in_seconds For
personalizing
domain
separation, if
you want to
increase the
expire time
for cache
storing
information
regarding
the missing
domain.
evt_mgmt.connector_custom_domain_sep_cache_size

For
personalizing
domain
separation,
if you need
more main

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3369


<!-- page 3370 -->
Property

Description

cache size
for storing
domain
information.
Tables installed with Event Management
Tables that are provided when Event Management is activated.
Event Management adds these tables.

Table

Description

Alert

Alerts that Event Management manage.

[em_alert]
Alert Correlation Rule
[em_alert_correlation_rule]

Rules specifying primary and secondary correlated alerts.

Alert Aggregation Group Alerts

Stores alerts associated with aggregated alert groups.

[em_agg_group_alert]
Alert Aggregation Group
[em_agg_group]
Alerts History

Relationships between aggregated groups and primary
alerts.
History of alerts. Used for impact calculation.

[em_alert_history]
Alert Rule

Mappings of alert fields to the Incident [incident] table.

[em_alert_rule]
Alert Template
[em_alert_template]
Event Management SLA

Alert templates. This table extends the Template
[sys_template] table.
Event Management SLA tasks for CIs and services.

[em_ci_severity_task]
Connector Definition

Settings for gathering events from external event sources.

[em_connector_definition]
Connector Instance

Connection details for external event sources.

[em_connector_instance]
MID Server to Connector
Instance

Mappings of MID Servers to connector instances.

[em_connector_instance_to_mid]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3370


<!-- page 3371 -->
Table

Description

Event Management License
Usage

When events are received by ITOM AIOps, an entry is
added or updated in this table based on the monitored
target specified in the received message. The entry links
to its corresponding CMDB CI. If none is found, the entry is
assigned Type = Unknown.

[em_unique_nodes]
Event

Events received by Event Management.

[em_event]
Event Filter

Storage for defined event filters.

[em_event_filter]
Event Match Rule

Updated events for alert processing. Used by event rules.

[em_match_rule]
Event Match Field
[em_match_field]
Event Compose Field
[em_compose_field]
Event Mapping Rule

Mappings of event fields to alert fields. Simple mapping.
Used by Event Rules.
Mappings of event fields to alert fields. Composite mapping.
Used by Event Rules.
Updated event fields for alert processing.

[em_mapping_rule]
Event Processing Statistics

Statistics on Event Management performance.

[em_event_stats]
Event Type

Event types.

[em_event_type]
Task Template
[em_incident_template]

Templates that define how to populate new tasks. For
example, how fields of an incident that is being created
from an alert, must be populated. This table extends the
Template [sys_template] table.

Registered Nodes

Registered nodes data.

[em_registered_nodes]
Threshold Rule

Alert threshold rules.

[em_threshold_rule]
Binding Device Map

Event binding to network paths and storage paths.

[Em_binding_device_map]
Process to CI Type Mappings

Event binding to specific processes.

[Em_binding_process_map]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3371


<!-- page 3372 -->
Table

Description

CI Remediation

Remediation rule definitions.

[em_ci_remediation]
Impact Graph
[em_impact_graph]
Impact Graph History

Impact tree of CIs containing CI hierarchy and impact rules
to be used for impact calculation.
History of changes in impact tree.

[em_impact_graph_history]
Impact Rule Definitions

Definition of rules used for impact calculation.

[em_impact_rule_definition]
Impact Rule instance

Rules based on impact rule definitions.

[em_impact_rule]
Impact Inclusion Classes

Specifies the classes to be used for impact calculation.

[em_impact_inclusion_class]
Impact Filter Services
[em_impact_filter_service]
Infrastructure Relations
[em_impact_infra_rel_def]
Impact Maintenance CIs
[em_impact_maint_ci]
Impact Status
[em_impact_status]
SLA Configuration
[em_sla_configuration]
Service Analytics Metric Type
Registration

Specifies services to be included or excluded from impact
calculation.
Child-parent pairs or CI types. CIs matching these
definitions are added to impact trees.
CIs that are in maintenance and therefore are excluded from
impact calculation.
Calculated status of CIs and services to be displayed in the
dashboard and service maps for dynamic CI groups.
SLA configuration records that identify the CIs that SLAs
can run on.
Source registration details for processing raw data.

[sa_metric_registration]
Health monitor scripts
[em_monitor_scripts]

These scripts determine how to monitor or check, for
example, when using the Connectors Monitor script. You
can create customized script to monitor a device or an
entity. The scripts provided with the base instance are:
• Check delay in event processing
• Connectors Monitor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3372


<!-- page 3373 -->
Table

Description

• Get Event Processing state
• MID Server Threshold Alerts
Monitoring configuration
[em_monitor_conf]

Use this table to configure what to monitor according to the
scripts that are listed.
Configure how often to run each script. If a script has a
threshold, it determines what alert severity to display.
Threshold values are in units of minutes and specify the
delay time. Navigate to Event Management > Settings
> Self-Health configuration to see the list of Monitoring
Configurations or to create a new one. Use this script to test
Data Center Monitoring.
The scripts provided with the base instance are:
• Connector's idle state monitoring-monitor to verify
whether any of the connectors was in idle state that
surpassed the threshold [in minutes] that was configured.
• Connectors Status- monitor to track the active status of
the connectors.
• Delay in event processing-monitor to track the duration [in
minutes] of events that remained in 'ready' state and were
not processed.
• Event Processing job-monitors the state of the event
processing jobs.
• MID Server Threshold Alert-monitors MID Server health.

Monitoring Event Management
Jobs
[em_monitor_jobs_state]

Monitor Event Management jobs by adding the relevant
jobs to the table.

Note: The following jobs are not monitored by this
table:
• Event Management - Process Events
• Event Management - Impact Tree Builder
• Event Management - Recover Stuck Events
• Event Processing

Monitoring state
[em_monitor_state]
EM XMLStats Data
[em_xmlstats_data]

Use this table to set the threshold for each connector. When
there is a value above the threshold, an alert is generated.
Self-health statistics and diagnostic details for Metric
Intelligence and Event Management, which are used to
produce the XMLStats page.

Event Management adds the following tables to support alert aggregation and RCA.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3373


<!-- page 3374 -->
Table

Description

SA RCA Status
[sa_rca_status]

Information (such as IDs) for the latest messages
that were sent to the ECC Queue for a service
during RCA.

SA RCA Output

RCA learner output data.

[sa_rca_output ]
SA RCA Group

Automated alert groups for the RCA query.

[sa_rca_group]
SA Analytics Alert Staging

Staging table for alerts used for analytics.

[sa_analytics_alert ]
SA RCA Input

Input data for the RCA learner.

[sa_rca_input]
SA Analytics Status
[sa_analytics_status]
SA RCA Group Alert

Last run information to be used for alert
aggregation and RCA.
Alerts associated with automated alert groups.

[sa_rca_group_alert ]
SA RCA Service Configuration Item
Association

Associations between CIs and services.

[sa_rca_svc_ci_assoc]
SA Alert Aggregation Learned Pattern

Learned patterns from alert aggregation.

[sa_agg_pattern]
SA Alert Aggregation Learned Pattern
Elements

CI/Metric Name pairs associated with learned
patterns.

[sa_agg_pattern_element]
SA Alert Aggregation Query Group Patterns
[sa_agg_group_pattern]

Relationships between groups discovered in
alert aggregation queries and patterns found in
learning.

SA Alert Aggregation Query -- Staged
(Recent) Alerts

A staging table for alerts that have not yet been
associated with any aggregated alert group.

[sa_agg_group_alert_staging]
SA Agg Pattern Attribute
[sa_agg_pattern_attribute table]
SA Alert Attribute Populator Status

CI/alert attributes to be used for finding patterns
for alert aggregation.
State and statistics for attribute populator job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3374


<!-- page 3375 -->
Table

Description

[sa_alert_attribute_populator_status table]
SA Alert Aggregation Learned Pattern
Elements Pair wise Mutual Information and
Joint Probability

Pairwise probabilities for pattern elements.

[sa_agg_pattern_element_pair]
EM Agg Group Prediction

Alert predictions for alert groups.

[em_agg_group_prediction]
Event Management Platform Analytics Solutions
Platform Analytics Solutions contain preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

Platform Analytics Solutions
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution for Event Management, an admin can navigate to Performance Analytics
> Guided Setup. Click Get Started then scroll to the section for Event Management. The guided
setup takes you through the entire setup and configuration process.
Data visualization in ITOM now includes a funnel component to help you track metric
progression across stages, making it easier to identify drop-offs or bottlenecks in processes. For
more details, see Data visualization in ITOM.
Related topics
Activate your Performance Analytics subscription
Customize Platform Analytics elements
Customize the appearance of widgets when viewing Platform Analytics visualizations.

Before you begin
Role required: user

Procedure
1. Navigate to All > Performance Analytics > Dashboards.
2. On the Dashboards page, select a dashboard to view.
3. Select the Edit button.
4. Select the relevant element to open the Configuration panel.
5. In the Configuration panel, edit the element's options.
6. Select Save.

What to do next

Users with the admin role can customize colors and fonts. To customize fonts, navigate to
sys_ux_theme_property.list and edit the applicable fonts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3375


<!-- page 3376 -->
Machine learning solutions for Event Management
Build solutions for Event Management with Predictive Intelligence.

Solution definition
Solution Definition for Event Management
Solution
Definition

Closed
alert
similarity

Description

Closed alert similarity is a similarity solution definition that is used to recommend
similar Alert records based on these fields: Description, Node, Resource, CI
Type,Source, and Metric Name from the Alert [em_alert] table. Results are visible to
users on the Alert form and on the Similar Alerts tab in Workspace.

EM Alert
EM Alert Clustering Solution is a clustering solution definition used in Event
Clustering Management. Allows building clustering models enabling identification of common
Solution
text patterns in alerts to create alert groups. Text clusters are based on these fields:
Description, Metric Name, Configuration Item Class from the Alert [em_alert] table.
Performance Analytics Edit Widget dialog box
Fields in the dialog box for editing a Performance Analytics dashboard widget.

Section

Description

Show real-time updates

Select for updates to appear in the widget in
real-time.

Show

Select or clear the boxes to show or hide the
following on the widget:
• Border
• Header
• Title

Title alignment

Select the alignment of the widget title:
• Left
• Center
• Right

Title color

Select to configure the color of the widget title.

Header color

Select to configure the color of the widget
header.

Interactivity

Select from the displayed options.
• Follow interactive filter
• Show when following filter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3376


<!-- page 3377 -->
Event Management MID Web Server extension form
Fields in the form for creating or modifying a MID Web Server extension.
MID Web Server Context form
Field

Description

Name

Unique name for the extension for easy
identification.

Short description

Brief, meaningful description of the extension.

Status

This field is auto-populated with the status
of the extension. The field is blank until the
extension is started. After issuing a command
to the extension, one of the following values is
displayed:
• Started: The extension is running.
• Stopped: The extension is not running.
• Offline: The MID Server is down.
• Error: The extension failed with an error.
The error message is displayed in the Error
Message field.
• Warning: A run-time exception has occurred.
The extension continues to work.

HTTP/HTTPS Port

Port number the extension listens on for
incoming requests.

Authentication Type

The available authentication types are:
• API Key (default): Any client connecting to
the extension must enter an API key into the
request's authorization header. For details
on viewing existing API keys, see Configure
MID Web Server API key authentication.
• Keybased (deprecated and kept only for
compatibility with releases prior to the
Zurich release): The value in the Secret Key
field is used to generate an authentication
token sent in the Authorization header
of incoming client requests. For details,
see Configure key-based MID Web Server
authentication.
• Basic: Define a username and password
in the Basic Auth User and Basic Auth
User Password fields, which appear when
selecting this option.
• mTLS: A certificate-based authentication
that uses the TLS protocol. For details,
see MID Web Server and agent mTLS
Authentication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3377


<!-- page 3378 -->
MID Web Server Context form (continued)
Field

Description

Secret Key

The value generated when Keybased
authentication is selected for the value in the
Authentication Type field.

Basic Auth User

Username to be used when selecting Basic
authentication.

Basic Auth User Password

Password to be used when selecting Basic
authentication.

Secure Connection

Option to indicate that the extension is to
use the TLS protocol to encrypt incoming
connections. A certificate and private key
combination must also be provided to the
extension. When selecting this option, the MID
Server Unified Keystore check box appears.

Use MID Unified Keystore

Option for using the MID Server Unified
Keystore option for a secure connection.
Clear this option to use Web Server Keystore.
For details, see Configure a secure MID Web
Server extension.

Keystore Certificate Alias

The alias name of the keypair inside the
selected keystore that the extension uses to
establish a secure connection.
Leave this field empty to use the default alias
when using the MID Unified Keystore or when
using the Web Server Keystore with a single
alias.

Keystore Password

The password for the Web Server Keystore
when it is used to establish a secure
connection.

Keystore Key Password

The password of the private key entry mapped
to the specified alias of the Web Server
Keystore. This field can be left empty if the
password matches the entry in the Keystore
Password field.

Truststore Password

The password to the truststore that holds
the Certificate Authority (CA) certificates
used to validate the signatures of the
client certificates. Appears when the mTLS
authentication type is selected.
Leave this field empty if the extension is
configured to use the cacerts truststore of the
JRE running the MID Server.

Error Message

Message describing any error that causes a
command, such as Start or Stop, to fail. This

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3378


<!-- page 3379 -->
MID Web Server Context form (continued)
Field

Description

field appears only when the value in the Status
field is Error.
Execute on

Location for running this extension. The
available options are Specific MID Server or
Specific MID Server Cluster.

MID Server

Depending on your selection in the Execute on
field, the name of the designated MID Server
or MID Server cluster.
• If you selected Specific MID Server, the
name of the designated MID Server.
• If you selected Specific MID Server Cluster,
the name of the designated MID Server
cluster.

Executing on

Displays the name of the MID Server on which
the extension is running even if the MID Server
is down. If the user stops the extension, this
field is empty.

Event Management tag based alert clustering tag form
The form for creating or modifying a tag based alert clustering tag displays detailed information
about the tag.
Tag based alert clustering tag form
Field

Description

Name

Name of the clustering tag. Defaults to a
description of the configured tag (such as,
Exact match on Alert Field "metric name").
The default name is visible only after saving
the tag.
Tag names must be unique.

Customized name

Select the check box to customize the value in
the Name field.

Domain

The domain in which the current record was
created. Read-only.

Description

Enter an optional description of the tag.

Source

Select the source from which to choose the
field to be matched.
• Alert field
• Alert additional info
• Alert CI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3379


<!-- page 3380 -->
Tag based alert clustering tag form (continued)
Field

Description

• Alert CI key
• Alert tags
If you select Alert additional info, choose an
Additional Info Key instead of a field. Alert
additional info is a field on alert containing the
key value pair in Jason format and we can use
a specific key.
Alert CI key: Create CMDB key values to
cluster alerts based on CMDB Key Values
[cmdb_key_value] table. Key values provide
an additional method for determining
commonalities between alert CIs.
Selected field

Indicate the field that has to match between
alerts for the alerts to be included in a group.
Appears when you select Alert Field or Alert
CI in the Source field.
If you select Alert CI in the Source field, you
need to select a CMDB key. A CMDB key is
assigned to the CI of the alert.

Key

Indicate the Key that has to match between
alerts for the alerts to be included in a group.
Appears when you select Alert additional
info in the Source field, or appears when you
select Alert tags in the Source field.
When Alert additional info is selected, enter
the name of one of the fields in the additional
info field.
When Alert tags is selected, enter the name of
the relevant alert tag.

CMDB key

Indicate the CMDB key to match for the alerts
to be included in a group.
Appears when you select Alert CI Key in the
Source field.

Match method

Select the type of match required for the alerts
to be included in a group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3380


<!-- page 3381 -->
Tag based alert clustering tag form (continued)
Field

Description

• Exact: Indicates that the field value must be
an exact match for the alert to be included in
a group.
For example, you can configure an alert
clustering tag indicating that the alert's
Metric name field must be an exact match
to form a group. When invoking that tag, all
alerts with identical values in the Metric
name field are included in the same group.
• Fuzzy: Indicates that the field value needs
to be an approximate match (depending on
the value configured in the Similarity field)
for the alert to be included in a group.
• Pattern: Indicates that the field value needs
to follow the pattern in the Pattern field. For
correct syntax and usage examples, see
Pattern matching .
Similarity

Specify the similarity percentage that must be
met by the alerts to be included in a group. For
example, entering 50 indicates that at least
50 percent of the indicated value must appear
in the alert for the alert to be included in the
group.
Appears only when Fuzzy is selected as the
Match Method value.
Default value = 90

List of predefined alert grouping tags
A list of the predefined alert clustering tags provided with the Tag Based Alert Clustering Engine
application.
Predefined alert clustering tags
Name

Source

Match method

CI

em_alert.cmdb_ci

Exact match

Description

em_alert.description

Exact match

Metric Name

em_alert.metric_name

Exact match

Node

em_alert.node

Exact match

Resource

em_alert.resource

Exact match

Source

em_alert.source

Exact match

Source instance

em_alert.event_class

Exact match

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3381


<!-- page 3382 -->
Predefined alert clustering tags (continued)
Name

Source

Match method

Type

em_alert.type

Exact match

Assignment group

em_alert.assignment_group

Exact match

CI Class

cmdb_ci.sys_class_name

Exact match

Dns domain

cmdb_ci.dns_domain

Exact match

ip address

cmdb_ci.ip_address

Exact match

Location

cmdb_ci.location

Exact match

Environment

cmdb_ci.environment

Exact match

CI name

cmdb_ci.name

Exact match

Namespace

cmdb_ci.namespace

Exact match

Predefined tags extracted from connector payload
Name

Description

Default mapping from CMDB

t_ip_address

IP address

cmdb_ci.ip_address

t_application

Application

-

t_region

Region

-

t_location

Location

cmdb_ci.location

t_environment

Environment

cmdb_ci.environment

t_namespace

Namespace

cmdb_ci.namespace

Event Management tag based alert grouping definition form
The form for creating or modifying a tag based alert clustering definition displays detailed
information about the definition.
Tag based alert clustering definition form
Field

Description

Name

Name of the alert clustering definition.
Definition names must be unique.

Active

Select to activate the definition. This option is
selected by default.

Order

The order by which definitions are tested for
incoming alerts. Those with lower Order values
are tested first.
When an alert matches one of the definitions'
filters, it continues searching for more
definitions.
Default value = 1000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3382


<!-- page 3383 -->
Tag based alert clustering definition form (continued)
Field

Description

Domain

The domain in which the current record was
created. Read-only.

Assignment group

Assignment group that works on the alert.
If no assignment group is defined in the alert
rule, then this alert rule is considered as a
global rule.
When the rules are running – first the global
rules run and then the rules that belong to the
assignment group of the alert.

Description

Enter an optional description of the alert
clustering definition.

Filter

Set conditions that incoming alerts must
meet to be measured by the alert clustering
definition's tags. If the tags correspond to
alerts that exist in the system and are within
the Clustering timeframe (minutes) value, the
incoming alerts join with the existing alerts to
form an alert group.
After configuring the filter, you can click the
Preview button to view how many existing
alerts match the filter's condition.

Note:
• Matching alerts are not automatically
included together in an alert group.
Alerts are grouped only if they have
corresponding alert clustering tags.
• Filter parameters are case
sensitive by default. To disable
case sensitivity, set the

sa_analytics.correlation_case_sensitive
parameter to false.
• You can also configure alert fields to
be excluded from the search, using the

sn_em_tbac.tag_excluded_alert_fields
property. By default, the following are
excluded by this property:
◦ type
◦ event_class
Override group description

Default group descriptions begin with a
“Group of alerts” prefix, followed by the
description of the primary alert in the group.
You may override this group description by
selecting the Override group description
check box. Then, in the Custom description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3383


<!-- page 3384 -->
Tag based alert clustering definition form (continued)
Field

Description

field, type a description. This description is
used as the description of the groups that are
created by this alert clustering definition.

Note: You cannot save the form if you
left the Custom description field blank or
with the default 'Group of alerts' text.
Clustering timeframe

The maximum time, in minutes, allowed
between the first alert and subsequent
alerts for them to be grouped together. For
example, a value of 60 indicates that any alert
generated within 60 minutes of the first alert
in the group (the oldest alert) is included in
the alert group. Any alert generated after this
60-minute window from the initial alert is not
included in the group.
Permitted values = 0-1440

Tag Based Alert Clustering Definitions Tags
M2M

Select the alert clustering tags to be assigned
to the alert clustering definition. Alerts that
meet the criteria specified in the selected tags
are included in the alert group.
The available options are the tags created on
the Tag Based Alert Clustering Tags page.

List of predefined tag-based alert grouping definitions
A list of the predefined alert clustering definitions provided with the Tag Based Alert Clustering
Engine application.
Predefined alert clustering definitions
Name

Description

Order

Group alerts from the same
Application

Group all alerts from the same application,
created in the last 10 minutes. In new systems,
this definition is activated by default.

9010

Group all alerts from the same
IP address

Group all alerts from the same IP address,
created in the last 10 minutes.

9020

Group all alerts from the same
Namespace

Group all alerts from the same namespace,
created in the last 10 minutes. In new systems,
this definition is activated by default.

9030

Group all alerts from the same
Subnet

Group all alerts from the same subnet, created
in the last 10 minutes. In new systems, this
definition is activated by default.

9040

Group alerts from the same CI
class and Location

Group all alerts from the same CI class and
location, created in the last 10 minutes.

9050

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3384


<!-- page 3385 -->
Predefined alert clustering definitions (continued)
Name

Description

Order

Group alerts from the same
Application and Environment

Group all alerts from the same application and
environment, created in the last 10 minutes.

9060

Group all alerts from a similar
Node

Group all alerts from a similar node name,
created in the last 10 minutes.

9070

Group alerts from the same
Location and Assignment
group

Group all alerts from the same location and
9080
assignment group, created in the last 10 minutes.

Group alerts from the same
Region and Metric

Group all alerts from the same region and metric,
created in the last 10 minutes.

9090

Group alerts from the same CI
class and Metric

Group all alerts from the same CI class and
metric, created in the last 10 minutes.

9100

Group alerts from the same
Node and Metric

Group all alerts from the same node and metric,
created in the last 10 minutes.

9110

Group alerts from the same
Assignment group and Class

Group all alerts from the same assignment group
and class, created in the last 10 minutes.

9120

Group alerts from the same
Type, Metric and Source

Group all alerts from the same type, metric, and
source instance, created in the last 10 minutes.

9130

Group alerts from the same CI

Group all alerts from the same CI, created in the
last 10 minutes.

9140

Important: When this rule is active,
CMDB grouping must be disabled.
Group alerts from the same
Node

Group all alerts from the same node, created in
the last 10 minutes. In new systems, this rule is
activated by default.

9150

Domain properties installed with Event Management
Use the domain properties installed with Event Management to provide the metadata that points
to the appropriate table to identify the domain so that you know which domain to create the
event in.
Default domain metadata properties
Property

evt_mgmt. connector_domain_info_table_name

evt_mgmt. connector_domain_info_column_name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3385


<!-- page 3386 -->
Default domain metadata properties (continued)
Property

evt_mgmt. connector_domain_id_column_name

evt_mgmt. connector_domain_path_column_name

Connector domain metadata
Override push connector default domain metadata values installed with Event Management
with the values in the event HTTP request, including the URL, headers, request body (payload),
and connector parameters. Override pull connector domain metadata values with connector
parameters only.

Domain metadata parameters
Name

Description

connectorDomainInfoTableName
Name of the table containing
the records with the domain
information.

connectorDomainInfoColumnName
Name of the column that
has a value that should be
matched with the domain
identifier. For example, you
might want to identify a record
in the Domain Info table that
has a matching value in the
company_name field.

Overrides System Property

evt_mgmt.connector_domain_info_table_name
• Type: string
• Default value:
core_company

evt_mgmt.connector_domain_info_column_nam
• Type: string
• Default value: name

connectorDomainIdColumnName
Name of the table column that evt_mgmt.connector_domain_id_column_name
stores the domain ID.

• Type: string
• Default value: sys_domain

connectorDomainPathColumnName
Name of the table column that evt_mgmt.connector_domain_path_column_na
stores the domain path.

• Type: string
• Default value:
sys_domain_path

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3386


<!-- page 3387 -->
Order of preference for accessing domain metadata
You must provide domain metadata to configure personalized push connector domains. The
metadata in preferred accessing order are:
1. Push connector parameters
2. URL query parameters
3. HTTP headers
4. Request body (payload)
5. Default system properties

URL query parameters
Push connectors have the following URL syntax:
• Instance Type: https://<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event?source=<connector-source>
• MID Server type: http://<MID_Server_IP>:<MID_Web_Server_Port>/api/
mid/em/inbound_event?Transform=<connector-transform-script-name>
You can include domain metadata as additional query parameters in the ServiceNow push
connector webhook URL. For example, if the domain information source is the sys_user
table, the URL could be https://<instance-name>.service-now.com/
api/sn_em_connector/em/inbound_event?source=<connectorsource>&connectorDomainInfoTableName=sys_user

Request headers
Any of the domain metadata properties can be passed as part of HTTP request headers. Check
the documentation from your third-party monitoring tool for information about how request
headers are set.

Request body (payload)
You can reference domain metadata from the request body (JSON payload) by setting the
metadata parameters as root-level keys in the payload. The following example shows how
the connectorDomainInfoTableName and connectorDomainInfoColumnName
parameters might be passed as part of the request body:
{
“source”: “Azure Monitor”,
“host”: “127.0.0.1”,
“company”: “ServiceNow”,
“connectorDomainInfoTableName”: “sys_user”,
“connectorDomainInfoColumnName”: “first_name”
}

Note: For information on connector parameters, see Personalize domains for push
connector events to use in event creation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3387


<!-- page 3388 -->
Dynatrace connector instance form
The Dynatrace connector instance form displays the fields you must fill in when creating a
Dynatrace connector instance.
Connector instance page
Field

Description

Name

Unique name for the Dynatrace metric
connector instance.

Description

Description for the use of connector instance.

Connector Definition

The connector definition to be used by the
connector.
Select Dynatrace Metrics.

Host IP

Hostname/IP address of the Dynatrace server.

Credential

Select the search icon and select the existing
API key credential.
If this credential does not exist, create a new
credential, as follows:
1. Ensure that you have an access token with
Read Metric (metrics.read) permissions,
created on the Dynatrace UI.
2. Select New after selecting the search icon.
3. Select API Key Credentials.
4. In the API Key field, enter the access token
from the Dynatrace UI.
5. In the Name field, enter a descriptive name
to uniquely identify the credential.
6. Fill in any other relevant fields, and select
Submit.

Metric collection

Selected by default. Read-only.

Metric collection schedule (seconds)

Time interval (in seconds) at which the metric
connector pulls metrics from the Dynatrace
server. Default: 60.

Active

Select to activate the connector instance.

Dynatrace connector instance value parameters
The following table displays the Dynatrace connector instance value parameters that you can fill
in, as needed, when creating a Dynatrace connector instance.
Connector instance value parameters
Parameter

Description

BaseApiPath

Custom base path for Dynatrace API calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3388


<!-- page 3389 -->
Connector instance value parameters (continued)
Parameter

Description

If your Dynatrace instance uses a different
path than the default /api/v2/metrics,
enter the custom path to ensure successful
collection of metrics.
debug

Set to true to enable debug logs.
Default: false

initialSyncInMins

Number of minutes before the current time
that the initial metric collection runs. For
example, if the value is 15, the connector
fetches metrics from the past 15 minutes.
Default: 15

logPayload

Determines whether to print the raw log
payload. Set to true only for debugging
purposes, as printing the raw payload quickly
fills up the MID Server logs.
Default: false

maxMetricsPerQuery

Maximum number of metric ids to query
per API call to Dynatrace. The value cannot
exceed 32, the maximum limit allowed by
Dynatrace.
Default: 32

pageSize

Maximum number of records to return in an
API response from Dynatrace.
Default: 500

port

Port number for the Dynatrace server to
connect to.
empty

protocol

Protocol to use when connecting to the
Dynatrace server.
Default: https

throttleApiCalls

Determines whether throttling is enabled.
When enabled (true), a limit is set on the
number of API calls to Dynatrace per minute.
Default: false

requestPerMinute

The limit on number of API calls to
Dynatrace per minute. Relevant only when
throttleApiCalls = true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3389


<!-- page 3390 -->
Connector instance value parameters (continued)
Parameter

Description

Default: 1000
Datadog connector instance form
The Datadog connector instance form displays the fields you must fill in when creating a Datadog
connector instance.
Connector instance page
Field

Description

Name

Unique name for the Datadog metric
connector instance.

Description

Description for the use of connector instance.

MID Server

Select the MID Server configured with the
Datadog capability.

Credential

Select the API Key Credential that you made in
the authentication step.
If this credential does not exist, create a new
credential, as follows:
1. Ensure that you have an access token with
Read Metric (metrics.read) permissions,
created on the Datadog UI.
2. Select New after selecting the search icon.
3. Select API Key Credentials.
4. In the API Key field, enter the access token
from the Datadog UI.
5. In the Name field, enter a descriptive name
to uniquely identify the credential.
6. Fill in any other relevant fields, and select
Submit.

Metric collection schedule (seconds)

Time interval (in seconds) at which the metric
connector pulls metrics from the Datadog
server.
Default: 60.

Host IP

Enter the base URL for your Datadog API
endpoint (e.g., api.datadoghq.com).

Note: For collecting cloud-native metrics (e.g., from AWS, Azure, GCP), it is recommended
to set the collection schedule to 300 seconds (5 minutes). This accounts for potential data
latency from the cloud provider to the Datadog platform.
To go back to the procedure page, see Configure the Datadog metrics connector instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3390


<!-- page 3391 -->
Datadog connector instance value parameters
The following table displays the Datadog connector instance value parameters that you can fill in,
as needed, when creating a Datadog connector instance.
Connector instance value parameters
Parameter

Description

application_key

(Mandatory) Enter the Application Key
generated from your Datadog account, used
for authentication.

BaseApiPath

The specific API path for querying metrics.
The default is /api/v2/query/
timeseries.

debug

Set to true to enable detailed, highlevel logging for this instance during
troubleshooting.
Default: false

hostApiPath

The specific API path for retrieving the list of
hosts. The default is /api/v1/hosts.

hostBatchSize

The number of hosts to retrieve in a single API
call. The default is 500, and any value above
1000 is automatically capped at 1000.

hostFilter

(Optional) A comma-separated list of regular
expressions (regex) to filter for specific hosts
to monitor. or example, ^prod-db-.* is a regex
pattern that means "match any host whose
name starts with prod-db-".
Example Use Case: To monitor only hosts
starting with app-server- and the specific host
critical-db-01, you would set the hostFilter to:
^app-server-.*, ^critical-db-01$.

initialSyncInMins

For the first run of the instance, the number of
minutes of historical data to retrieve.
The default is 15, and any value above 120 is
capped at 120.

logPayload

Set to true to log the full request and response
bodies for deep debugging. Use with caution
as it can generate very large logs.

metricBatchSize

The number of metrics to query in a single API
call. The default is 50, and any value above 50
is automatically capped at 50.

port

Port number for the Datadog server to connect
to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3391


<!-- page 3392 -->
Connector instance value parameters (continued)
Parameter

Description

This is typically not needed when using https.
protocol

The protocol for the connection.
Default: https

In the Connector Instance Metrics related list, specify which metrics to collect. To use all 23 outof-the-box metrics, no action is needed.
To go back to the procedure page, see Configure the Datadog metrics connector instance.
Kafka connector instance form
The Kafka connector instance form displays the fields you must fill in when creating a Kafka
connector instance.
Connector instance page
Field

Description

Name

Unique name for the Kafka Metric Consumer
connector.

Description

Description to be used by the Kafka metric
Consumer collection instance.

Connector Definition

Name of the required connector definition,
which in this case should be Kafka Metric
Consumer.

Credentials

Kafka SSL credential.

Metric collection last run time

Option is pre-selected and read-only.

Last metric collection status

Option is pre-selected and read-only.

Event collection schedule (seconds)

The frequency in seconds that the system
checks for new events from the Kafka
Consumer.

Last error message

This field is automatically set to the last error
message.

Kafka connector instance value parameters
The following table displays the Kafka connector instance value parameters that you can fill in, as
needed, when creating a Kafka connector instance.
Connector instance value parameters
Parameter

Description

bootstrap_servers

Set to true to enable debug logs.
Default: false

consumer_group_name

Limits metric history retrieval to prevent system overload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3392


<!-- page 3393 -->
Connector instance value parameters (continued)
Parameter

Description

Default: 180 minutes
topic

Adds a small time buffer to ensure no metrics are missed.
Default: 5 minutes

Field_mappings

Maps field names from Kafka message payload to
internal field identifiers.
For example: - "node": "host" → maps host in message
to internal node field. - "value": "value" → maps metric
value. - "timestamp": "ts" → maps timestamp field.
Default: "{ "metric_type": "metric_name", "resource":
"mountpoint", "node": "host", "value": "value", "timestamp":
"ts"}

logPayloadForDebug

Determines whether to print the raw log payload. Set to
true only for debugging purposes, as printing the raw
payload quickly fills up the MID Server logs.
Default value: false

debug

Displays debug messages.
Default value: false. Specify true to see debug messages.

max_poll_attempts

Number of times to attempt polling Kafka for messages
before stopping.
Default value: 10

max_poll_records

Maximum number of records fetched in a single poll.
Default value: 5000

max_poll_retry

Number of times to retry polling if no records are returned
consecutively.
Default value: 2

poll_timeout_ms

Maximum time (in milliseconds) to wait during a poll
operation before timing out.
Default value: 60000

Push connector instance form
Push Connector Instance form displays the fields that you must fill when you create or modify a
connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3393


<!-- page 3394 -->
Field

Description

Name

A unique name for the connector instance
record, such as the name of an event source
host.

Description

Any optional information that the administrator
wants to use to identify this record.

Push Connector definition

Select the definition for the external system
from which you want to receive events.
You can select any existing definition, for
example:
• Thousandeyes
• Dynatrace
• Catchpoints
For a list of the connector definitions available
in the base system, see Configure Event
Management connectors.

Note:
If there are available configuration
parameters for the push connector
type you select, they appear under
Push Connector Instance Configuration
Parameters.
MID Server

It shows the list of MID Servers that has at
least one MID Server Event Listener context up
and running.
The MID Server section appears only when
the MID type of definition is selected.

URL

This field is auto-populated only after saving
the details of the connector instance.
Instance: The URL has to be configured in
an external system with the ServiceNow
credential having a evt_mgmt_integration role
to receive the events.
MID push connector instance: The URL has
to be configured from an external system with
Configure the MID Web Server extension
credential to receive the events.
This field appears only after the form has been
saved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3394


<!-- page 3395 -->
Field

Active

Description

Select this check box to enable receiving the
events from this external event source.
This field appears only after the form has been
saved.

Nagios connector instance value parameters
The following table displays the Nagios connector instance value parameters that you can fill in,
as needed, when creating a Nagios connector instance.
Connector instance value parameters
Parameter

Description

debug

Set to true to enable debug logs.
Default: false

max_fetch_interval_min

Limits metric history retrieval to prevent
system overload.
Default: 180 minutes

offset_min

Adds a small time buffer to ensure no metrics
are missed.
Default: 5 minutes

Nagios connector instance form
The Nagios connector instance form displays the fields you must fill in when creating a Nagios
connector instance.
Connector instance page
Field

Description

Name

Unique name for the Nagios metric connector
instance.

Description

Brief explanation of the purpose or use of the
connector instance.

Connector Definition

Connector definition to be used by the
connector.
Select Nagios Metrics.

Metrics database host

Host IP address of the host where the Nagios
server collects metrics.

Metrics database credentials

Credentials required to access the Nagios
database.

Metric collection

Option is pre-selected and read-only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3395


<!-- page 3396 -->
Connector instance page (continued)
Field

Description

Metric collection schedule (seconds)

Time interval (in seconds) at which the
connector retrieves metrics from the Nagios
server.
Default: 60 seconds.

Active

Option to activate the connector instance.

Zabbix connector instance form
The Zabbix connector instance form displays the fields you must fill in when creating a Zabbix
connector instance.
Connector instance page
Field

Description

Name

Unique name for the Zabbix metric connector
instance.

Description

Brief explanation of the purpose or use of the
connector instance.

Connector Definition

Connector definition to be used by the
connector.
Select Zabbix Metrics.

Host IP

Host IP address of the host where the Zabbix
server collects metrics.

Credential

Credentials required to access the Zabbix
database.
Select the search icon and select the Basic
Auth credential.
• Name: Provide the unique name for Zabbix
cred.
• UserName: Provide Zabbix server username
• Password: Provide Zabbix server password
• Select Submit.

Metric collection

Option is pre-selected and read-only.

Metric collection schedule (seconds)

Time interval (in seconds) at which the
connector retrieves metrics from the Zabbix
server.
Default: 60 seconds.

Active

Option to activate the connector instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3396


<!-- page 3397 -->
Zabbix connector instance value parameters
The following table displays the Zabbix connector instance value parameters that you can fill in,
as needed, when creating a Zabbix connector instance.
Connector instance value parameters
Parameter

api_endpoint_suffix

Description

Set this value based on your Zabbix server web interface installation:
https://www.zabbix.com/documentation/current/en/manual/
installation/frontend welcome-screen
Default value: /zabbix/api_jsonrpc.php [For Apache Server]

debug

Set to true to enable debug logs.
Default value: false

enable_batch_processing
If batch processing is enabled, metrics details are fetched in
batch with 1000 (can be altered by setting appropriate value to 'max_hosts_per_batch' parameter) hosts per batch.
Default value: false
groupids

logPayloadForDebug

Provide the host group IDs. These IDs will be used to fetch metrics
from the hosts attached to the specified groups. This applies only if
enable_batch_processing is set to true.
Determines whether to print the raw log payload. Set to true only for
debugging purposes, as printing the raw payload quickly fills up the
MID Server logs.
Default value: false

max_fetch_interval_minConfigured from the 'max_fetch_interval_min' parameter: If the
time exceeds 'max_fetch_interval_min', fetching starts from
'max_fetch_interval_min' before the current time; for an INITIAL run
without 'lastMetricSignature', the time is set to 'max_fetch_interval_min'
before the current time.
Default value: 180 minutes
max_hosts_per_batch If batch processing is enabled, metrics details are fetched in
batch with 1000 (can be altered by setting appropriate value to 'max_hosts_per_batch' parameter) hosts per batch.
Default value: 1000
offset_min

Specifies the time offset in minutes for adjusting the fetch start time
relative to the current time.
Default: 5 minutes

port

Port number for the Zabbix server to connect to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3397


<!-- page 3398 -->
Connector instance value parameters (continued)
Parameter

Description

Default value: empty
protocol

Protocol to use when connecting to the Zabbix server.
Default value: http

with_triggers

It will fetch the trigger information.
Default value: false

Note: When monitoring a large number of hosts in Zabbix, fetching massive metric
data can impact performance and cause API timeouts; enabling batch processing
(enable_batch_processing = true) mitigates this by fetching metrics in batches (default:
1000 hosts, configurable via max_hosts_per_batch), though it increases network calls
and must be used when monitoring 10,000+ hosts or facing performance issues.
SCOM connector instance form
The SCOM connector instance form displays the fields you must fill in when creating a SCOM
connector instance.
Connector instance page
Field

Description

Name

Unique name for the SCOM connector
instance.

Description

Description for the use of the SCOM event
collection instance.

Active

Select to activate the connector instance.
Appears only when selecting a connector
instance that has already been created.

Connector definition

The vendor and protocol used to gather
events from the external event source.
For a regular SCOM connector, select SCOM.
For a connector instance that you want to
monitor metrics, select SCOM Metrics.
When selecting this option, the fields in the
Connector instance - metrics fields table
appear.

Assignment group

Select the group to whom the connector
instance is assigned.
For example, this may be a group of
administrators or a support group.

Host IP

Specify the SCOM IP address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3398


<!-- page 3399 -->
Connector instance page (continued)
Field

Description

This field does not appear when SCOM
metrics is selected as the Connector
definition.
Credential

Select Windows credentials.

Note: When configuring Windows
credentials, if the credential applies to
specific MID servers, ensure that the MID
Servers you specify on the credential
record match the MID Servers specified
in the MID Servers for Connectors
section on the Connector Instance form.
This field does not appear when SCOM
metrics is selected as the Connector
definition.
Event collection last run time

The last event collection run time value
updates automatically.
This field does not appear when SCOM
metrics is selected as the Connector
definition.

Last event collection status

The last event collection run time status
updates automatically.
This field does not appear when SCOM
metrics is selected as the Connector
definition.

Event collection schedule (seconds)

The frequency in seconds that the system
checks for new events from SCOM
Operations.
This field does not appear when SCOM
metrics is selected as the Connector
definition.

Bi-directional

Select to invoke the bi-directional option. This
option enables the bi-directional exchange of
values to-and-from the external event source.
There is default implementation for SCOM.
The Last bi-directional status option displays
only when this option is selected.
This field does not appear when SCOM
metrics is selected as the Connector
definition.

Last bi-directional status

The value of this field populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3399


<!-- page 3400 -->
Connector instance page (continued)
Field

Description

This field does not appear when SCOM
metrics is selected as the Connector
definition.
Last error message

The last error message field is automatically
updated. This message is the last error
message received by the connector. If the test
connector fails, an error message is displayed
in this field.
This field does not appear when SCOM
metrics is selected as the Connector
definition.

MID Servers (MID Server for Connectors
section)

Specify one or more MID Servers that are up
and valid.
MID Servers sort according to the order that
their details were entered into the MID Server
for Connectors section. The port requirement
from the MID Server to the SCOM server
is 1433. If the specified MID Server is in a
cluster, it may not be selected and another
available MID Server is selected in its place.
Ensure that the specified MID Servers match
the MID Servers specified on the Windows
Credentials page, as the connector uses
Windows credentials to access MID Servers.
If no MID Server is specified, an available MID
Server that has a matching IP range is used.

Connector instance - metrics fields (displayed when Connector definition = SCOM Metrics)
Field

Description

Metrics collection

Selected by default. Read-only.

Metrics collection last run time

The last run time of the Metrics Collection
scheduled job.
This field is read-only.

Last metrics collection status

Status of the Metric Intelligence collection
activity. The value of this field populates
automatically.
This field is read-only.

Metrics collection schedule (seconds)

The time, in seconds, to repeat the Metric
Intelligence Collection scheduled job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3400


<!-- page 3401 -->
Connector instance - metrics fields (displayed when Connector definition = SCOM Metrics)
(continued)
Field

Description

Metrics database host

The IP address or the host name of the metrics
database host.

Connect using a named instance

When selected, the connection is made using
the specified named instance. Otherwise, the
connection is made using the specified port.

Metrics database port

The port used by the metrics database. The
connection is made using JDBC. Default port
number is 1433.
If Connect using a named instance is
selected, this option does not appear.

Metrics database named instance

The metrics database instance name.

Database login with Windows authentication

Perform database login with the credentials of
the logged-in user defined on the MID Server
service.

Metrics database credential

Credentials for the metric database. Use JDBC
credentials for the local database user.
If Database login with Windows
authentication is selected, this option does
not appear.

Solarwinds connector instance form
The Solarwinds connector instance form displays the fields you must fill in when creating a
Solarwinds connector instance.
Connector instance page
Field

Description

Name

Unique name for the Solarwinds metric
connector instance.

Description

Brief explanation of the purpose or use of the
connector instance.

Connector Definition

Connector definition to be used by the
connector.
Select Solarwinds Metrics.

Host IP

Hostname/IP address of the Solarwinds
server.

Credential

Credentials for a SolarWinds user with Basic
Authentication and read access to the SWIS
REST API.

Metric collection

Option is pre-selected and read-only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3401


<!-- page 3402 -->
Connector instance page (continued)
Field

Description

Metric collection schedule (seconds)

Time interval (in seconds) at which the
connector retrieves metrics from the
Solarwinds server.
Default: 60 seconds.

Active

Option to activate the connector instance.

Solarwinds connector instance value parameters
The following table displays the Solarwinds connector instance value parameters that you can fill
in, as needed, when creating a Solarwinds connector instance.
Connector instance value parameters
Parameter

debug

Description

Set to true to enable debug logs.
Default value: false

max_fetch_interval_in_min
Number of minutes before the current time when the initial metric
collection runs. For example, if the value is 180, the connector fetches
metrics from the past 180 minutes.
Default value: 180 minutes
logPayloadForDebug

Determines whether to print the raw log payload. Set to true only for
debugging purposes, as printing the raw payload quickly fills up the
MID Server logs.
Default value: false

offset

Specifies the time offset in minutes for adjusting the fetch start time
relative to the current time.
Default: 0 minutes

Port

Port number for the Solarwinds server to connect to.
Default value: 17774

protocol

Protocol to use when connecting to the Solarwinds server.
Default value: https

Event forwarding properties
Several system properties enable you to customize an event forwarding job.

Note: To access the System Properties [sys_properties] table, enter
sys_properties.list in the navigation filter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3402


<!-- page 3403 -->
Property

Description

evt_mgmt.event_forwarding.sources_to_excludeList of event sources from which events should
not be forwarded. By default, all events are
forwarded. Separate multiple sources by
commas.
• Type: string
• Default value: Empty
evt_mgmt.event_forwarding.event_fields_to_include
List of event fields to include when sending
events to the target instance besides the
required default fields: resolution_state,
event_class, additional_info, node, resource,
cmdb_ci,severity, time_of_event, message_key,
sys_domain, metric_name, ci_type,
ci_identifier, type, source, description, and
sys_domain_path.
Separate multiple fields by commas.
• Type: string
• Default value: Empty
evt_mgmt.event_forwarding.event_batch_size

Maximum number of events to batch while
sending to the target instance.
• Type: integer
• Default value: 500

evt_mgmt.event_forwarding.max_payload_size_in_mb
Maximum size of the event payload, in MB,
sent to the target instance at a single time.
• Type: integer
• Default value: 5
evt_mgmt.event_forwarding.max_events_to_forward_per_day
Maximum number of events that can be
forwarded from the instance per day to
minimize the performance impact on the
source instance.
• Type: integer
• Default value: 100000
evt_mgmt.event_forwarding.log_debug

Enables or disables debug logging for event
forwarding. Set this property to true to log
debugging information.
• Type: Boolean
• Default value: False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3403


<!-- page 3404 -->
Team-based integration properties
Team-based integration system properties enable you to customize the assignment group
functionality for existing and new customers for event rules and event field mapping.
Team-based integration system properties
Property

Description

evt_mgmt.alert_auto_assignment_field

The property determines automatic alert assignm
list of comma-separated fields.

The default value of this property is cmdb_ci.sup
IntegrationGroup. The assignment group value is
group field (cmdb_ci.support_group) of the alert
the value is taken from the IntegrationGroup valu
group field in the Connector instances table [em

For upgraded instances from previous family rele
to avoid any impact on production instances.
• Type: String
• Default value:
◦ Empty - for upgraded customers
◦ cmdb_ci.support_group, IntegrationGroup -

Note: When you use an alert field in this pr

alert field in the Additional Info field, an aler
the value of the Assignment group field mus
For example, {"Alert field name":"
desired sys_user_group record>
evt_mgmt.enable_group_level_event_rules

Activates team-based functionality for executing
field-mapping rules. Global rules take precedenc
based rules.
• Type: Boolean
• Default value:
◦ False - for upgraded customers
◦ True - for new customers

Alert Query form
You can combine similar alerts that meet specific criteria for a particular service by creating an
alert query.
Alert Query form
Field

Description

Name

The alert query name.

Business
criticality

The importance of this alert query to the business. This field can determine
disaster recovery strategies for this alert query.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3404


<!-- page 3405 -->
Alert Query form (continued)
Field

Description

• 1: most critical
• 2: somewhat critical
• 3: less critical
• 4: not critical
Used for

The purpose of the alert query. Select from:
• Production (Default)
• Staging
• QA
• Test
• Development
• Demonstration
• Training
• Disaster recovery

Owned by

The party that is responsible for the alert query.

Email

The email alias for the alert query.

Business
phone

The phone number for the business.

Operational The status of the alert query.
status
• Operational: The alert query is running. Impact calculation runs only on alert
queries in the Operational status.
Select this option to use this service. If you customized preconfigured options
for this category, select the option whose value is set to 1. Event Management
calculates impact only on services in use.
If you do not want to use this service now, select one of these options:
• Non-Operational: The alert query is unavailable, disabled, or down.
• Repair in progress: The alert query is receiving maintenance.
• DR Standby: The alert query is available as a disaster recovery (DR) standby.
• Ready: The alert query is prepared for use.
• Retired: The alert query is withdrawn from active use.
Comments

Any additional notes and information.

Service
Group
Members

The service group which contains this service.

Filter

The conditions for sending a notification to the alert query. The conditions must
meet the alert values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3405


<!-- page 3406 -->
Alert Query form (continued)
Field

Description

Note:
• When defining an alert query filter, include only fields that appear in the
Alert Histories [em_alert_history] table. Impact calculation is based on
Alert History data and fields such as Overall Event Count, Priority, and
Priority group are not copied to the Alert Histories [em_alert_history] table.
• Do not specify a dynamic time condition. For example, in the filter, do not
specify Created condition of Last 45 minutes because impact
calculation is triggered by a change of alert or alert query. However, for
the dynamic time condition, none of these conditions have changed.

• Some filters may slow down impact calculation. To solve this problem,
adjust your alert query by adding an appropriate index, as described in
Index suggestions for slow queries .

Alert correlation rule form
Manage the fields that define how alerts are correlated and grouped.
Alert correlation rule form
Field

Description

Name

Name of the correlation rule.

Order

The evaluation priority for the rule. Rules with lower numerical values
are given higher priority. An alert is evaluated against each alert action
rule until a match is found.
For example, if you have two alert correlation rules with priorities 10 and
20, respectively, the rule with priority 10 will be evaluated first. If an alert
matches the criteria of the rule with priority 10, no further rules will be
checked. If it doesn’t match, the alert will then be evaluated against the
rule with priority 20.

Active

Option to activate or deactivate the rule.

Advanced

Option to switch to advanced mode, which lets you use custom scripts
to define your own logic. The sample correlation rule, Alert correlation
rule SAMPLE, is provided out-of-the-box for reference. You can use the
available script as a guide.

Note: The Filter condition specifies which alerts the rule will
apply to. Ensure that the same condition is used in the advanced
script to identify alerts to be included in the group.
Description

Description of the rule.

Primary Alert

The filter condition to identify the alert that is the primary alert, or most
important alert, in a set of related alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3406


<!-- page 3407 -->
Alert correlation rule form (continued)
Field

Description

This field does not appear when Advanced is selected.
Secondary Alert

The filter condition to identify the alert that is related to the primary
alert, however it is of lesser importance.
This field does not appear when Advanced is selected.

Filter

The filter condition to identify the alert on which the script is run.
Filter is available only when Advanced is selected.
Filter parameters are case sensitive by
default. To disable case sensitivity, set the

sa_analytics.correlation_case_sensitive parameter to
false.
Relationship Type

Specify the type of relationship between the primary and secondary
alert:
• No Relationship: Ignore the relationship when looking for a match.
• Same CI or Node: Relate both alerts with the same CI. If the CI field is
blank, the alerts must have the same Node value.
• Primary is Parent: Relate the alerts where the primary alert is
the parent in a parent-child relationship, as described in the CI
Relationship Types table [cmdb_rel_ci].
• Primary is Child: Relate the alerts where the primary alert is the child
in a child-parent relationship, as described in the CI Relationships
table [cmdb_rel_ci].
This field does not appear when the Advanced check box is selected.

Time Difference in
Minutes

The minutes between which the primary and secondary event must
occur to match this rule. The default value is 60 minutes.

Note: The value for this entry cannot exceed 1440 minutes (one
day).
This field does not appear when Advanced is selected.
Script

Custom script that you can modify to return a JSON string that specifies
the primary and secondary alerts.
Select Advanced to display the script field.
(/* The function needs to return a JSON{correlationType:[correlatedAlerts]}
for example: if your filter matches the alert,
set the alert as the primary alert and set
alerts 1, 2 and 3 each as secondary alerts.
You can use both multiple primary alerts and
multiple secondary alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3407


