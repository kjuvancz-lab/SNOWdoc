# Zurich Telecommunications Network Inventory â€” Design and assign your network services / Service Operations Workspace

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 45â€“55 of 425

Sections: Design and assign your network services (p45); Service Operations Workspace (p49)

---

<!-- page 45 -->
Design and assign your network services

The Design and Assign function provides step-by-step guidance for designing a network service
in the Telecommunications Network Inventory application. You can use the Design and Assign
function to complete guided activities to design the network services and assign the network
inventories.

Introduction to design and assign function

The Design and Assign function is an end-to-end workflow that includes the necessary steps
to design a network service against a design request. You can visualize a workflow in a task-
oriented view and guides users through sequences of tasks to complete the design process. The
Design and Assign function offers a structured approach for agents to deliver a network service.
It provides agents with clear visibility into the steps to be executed, the network resources to be
allocated at each step, and how everything is integrated together.

The Design and Assign framework breaks the design workflow into multiple activities. Each
activity includes the steps necessary for an agent to complete that activity. Activities also include
automated workflows, such as creation of change tasks for the next step when an activity is
complete.

The Design and Assign function include:

 · An activity picker displays the activities.
 · A series of steps that you have to complete to achieve a particular goal for each activity.

Design and Assign home page

The Design and Assign home page displays all change requests (design requests) that are in
the Design in Progress state. Selecting a change request redirects to the corresponding Design
and Assign function where you can visualize the workflow in a task-oriented view. You can also
select the UI action to launch a Design and Assign function from the home page. For example,
select Create Logical Connection to launch the Design and Assign function for a new logical
connection.

The following is an example for the Design and Assign home page.

         Example of Design and Assign home page

Access the Design and Assign home page in the Telecommunications Network Inventory
workspace as follows.
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the design and assign icon ( ).

To refresh the home page, select refresh icon ( ).

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    45
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 46 -->
Design and Assign function user roles

Design and Assign function user roles and responsibilities

User role                              Description

Network Planning Agent                  · View the Design and Assign home page for
[sn_ni_core.network_planning_agent]       assigned requests.

                                        · Create a logical connection design request.
                                        · Complete the activities according to

                                          sequence.

                                        · View the diagram and validate the design as
                                          activity progresses.

                                        · Review and complete the Design and Assign
                                          request.

Network Planning Manager               · View the Design and Assign home page for
[sn_ni_core.network_planning_manager]   your and your team's assigned requests.

                                       · Create a logical connection design request.

                                       · Complete the activities according to
                                        sequence.

                                       · View the diagram and validate the design as
                                        activity progresses.

                                       · Review and complete the Design and Assign
                                        request.

Playbook admin [playbook.admin]        Uses the Workflow Studio application to
                                       author, configure, and monitor the Design and
                                       Assign function.

Creating and configuring Design and Assign function for your network services

You can create the Design and Assign function for various types of network services such
as designing a Gigabyte Passive Optical Network (GPON) Broadband service. You can use
ServiceNow AI Platform capabilities and Workflow Studio application to create and configure the
Design and Assign function. To learn more, see Configuring Design and Assign function for your
network services.

Using Design and Assign function

The inventory agents can use the guidance available with the Design and Assign function to
complete the tasks and activities. These activities are needed to design your network service
and assign the network resources.

A Design and Assign function includes multiple activities for an agent to complete. When using a
Design and Assign function, agents can:

 · View the activities.
 · Select an activity and perform the work necessary to complete that activity.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    46
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 47 -->
 · Mark an activity as complete and move to the next activity.
 · Complete the activities necessary to design and assign an inventory record.

To learn more, see Design and Assign function.

You can create a logical connection by using the Design and Assign function available in the
Telecommunications Network Inventory application. To learn more, see Logical connections.

Logical connections

Design and assign a logical connection in the Telecommunications Network Inventory
application. By using the Design and Assign function, you can fulfill the logical connection design
request of a customer.

The Design and Assign function provides the activities and tasks that an agent can perform to
create a logical connection. Depending on the design request, the agent can design a logical
connection and assign the related network inventories to that connection.

Design and Assign function layout and features

The following example shows the Design and Assign function layout for a logical connection.

         Design and Assign function layout and features

Design and Assign function layout

Callout  Feature                   The activity picker displays the list of activities
1        Activity picker           to design and assign a logical connection. Each
                                   activity has an indicator that shows the activity
                                   state:

                                    · - Activity is work in progress.

                                    · - Activity is completed.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 47

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 48 -->
Design and Assign function layout (continued)

Callout  Feature

                          · - Pending activities.

                          · - Activity is skipped.

                          Select an activity to view the details in the activity
                          viewer.

2        Activity viewer  The activity viewer displays the selected activity.

                          Activity viewer is the main work area where an

                          agent performs the work necessary to complete the

                          current activity.

                          You can collapse the activity viewer panel.

3        Activity cards   Activity cards display the details about the current

                          activity in the activity viewer. Depending on the type

                          of activity, the activity cards can display information

                          such as field information to set up an end point.

                          Agents use the cards to complete the work for
                          each activity, such as adding end points or setting
                          attributes.

4        Network diagram  Network diagram graphically displays a circuit of the

                          logical connection elements. After you complete

                          each activity, the network diagram updates and

                          displays the data. You get a clear visualization of

                          your design.

                          You can expand the network diagram by collapsing
                          the activity picker and activity details panels.

                          You can expand the pills in the diagram to see all
                          underlying connection elements. Hover over each
                          pill show the full name of that connection element.

Design and Assign workflow for logical connection

         Design and Assign playbook workflow for logical connection

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    48
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 49 -->
The Design and Assign function for a logical connection has the following workflow.
1. Create a change request and add necessary details about your design.
2. Provide connection details which influence the design such as logical connection model,

   bandwidth, and domain.
3. Select end points such as network sites and interfaces where the connection starts and

   terminates.
4. Select connection elements between the endpoints.
5. Select a protection path to define the redundancy path for your logical connection.
6. Select a number element such as VLAN or LAG.
7. Select an IP address.
8. Review the design and submit for approval.

By completing these steps, a logical connection record is generated with the associated
Configuration Items (CI).

To learn more about the steps to design and assign a logical connection, see Create a logical
connection record using the Design and Assign function.

Access

You can access the Design and Assign function for a logical connection in the
Telecommunications Network Inventory Workspace as follows:
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the design and assign icon ( ) to open the Design request overview window.
3. Select New > Create Logical Connection or select any change request from the list.

Related topics
   Design and assign your network services
   Telecommunications Network Inventory subflows

Service Operations Workspace for TNI

ServiceNow® Service Operations Workspace is a configurable workspace that provides a
converged experience for Telecommunications Network Inventory (TNI) workflows. Configure
your agent experience using the easy-to-navigate interface of Service Operations Workspace.

Service Operations Workspace for TNI overview

The Service Operations Workspace for TNI a converged experience for agents to view both
incident/alert details and Network Inventory entities within a single Workspace. You can monitor
the alert and incident for your network site or datacenter and analyze and resolve them, all from
a single interface. It helps the agent to identify issues, manage network inventory assets, and
promote service continuity across telecom networks.

Benefits

Enhance operational efficiency

Empower operations agents with real-time visibility into datacenter incidents and
alerts, enabling faster response and efficient resolution.

Unify experience for TNI workflows

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    49
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 50 -->
         Consolidate various TNI workflows into a single, intuitive interface, enabling
         seamless inventory management across different areas of network infrastructure.
   Customize configurability
         Enable organizations to tailor the workspace to specific requirements and
         preferences, optimizing productivity by displaying relevant data and tools for each
         workflow.

User roles

Service Operations Workspace for TNI user roles and responsibilities

Role title [Name]                         Descriptions
DC Ops Agent [sn_ni_core.dc_ops_agent]
                                          Oversees datacenter floor operations, using
DC Ops Viewer [sn_ni_core.dc_ops_viewer]  the floor map to manage incidents and
                                          alerts, resolve problems, and handle change
                                          requests.

                                          Read-only access to the Network Inventory
                                          workspace and its components.

Related topics
   Assigning user roles
   Exploring Telecommunications Network Inventory

Service Operations Workspace for Telecommunications Network Inventory
user interface

Explore the Service Operations Workspace for Telecommunications Network Inventory interface
to understand how an operator can prioritize network inventory tasks and offer solutions.

Accessing Service Operations Workspace

From the Workspaces menu, select Service Operations Workspace.

Landing page

The landing page in the Service Operations Workspace for Telecommunications Network
Inventory provides an overview of the current operational landscape of your datacenter. The
landing page includes the important items such as datacenter overview, list of your and your
team's assignments including change requests, alerts, and incidents.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    50
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 51 -->
Example of the landing page of Service Operations Workspace for
Telecommunications Network Inventory

Widgets in the landing page might look different based on the Telecommunications Service
Management (TSOM) and Telecommunications Service Operations Management (TSOM)
applications you have installed.

Landing page widgets  Widget and Description
Widget type
Important Items          Critical incidents
                               Total count of incidents that are
                               critical.

                         Critical alerts
                               Total count of alerts that are
                               critical.

                         My open change requests
                               Total count of open change
                               requests.

                         Critical change requests
                               Total count of change requests
                               that are critical.

                         Critical tasks
                               Total count of change tasks that
                               are critical.

                         Warranty expired
                               Total count of network assets with
                               expired warranties.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 51

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 52 -->
Landing page widgets (continued)  Widget and Description
Widget type
                                       Note:

                                        With TSOM is installed, the following
                                        widgets appear.
                                         · Critical incidents
                                         · Critical alerts
                                         · Critical change requests
                                         · Warranty expired

                                        With TSM is installed, the following
                                        widgets appear.
                                         · Critical incidents
                                         · Critical change requests
                                         · Critical tasks
                                         · Warranty expired

                                        Without TSOM and TSM are installed, the
                                        following widgets appear.
                                         · My open change requests
                                         · Critical change requests
                                         · Critical tasks
                                         · Warranty expired

Data Center overview                 Power consumption
Your work/Your team's work
                                           Bar chart representation of total
                                           power supplied to datacenter.

                                     Rack Unit consumption

                                           Bar chart representation of rack
                                           usage of datacenter.

                                     Power usage effectiveness

                                           Bar chart representation of power
                                           usage of datacenter. Power
                                           Usage Effectiveness (PUE) is
                                           a measure of how efficiently
                                           a datacenter uses energy. It
                                           compares the total power used
                                           by the datacenter to the power
                                           used only by the equipment (like
                                           servers).

                                  Select Your work to view your assignments, or
                                  select Your team's work to view your team's
                                  assignments.

                                     Incidents

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 52

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 53 -->
Landing page widgets (continued)  Widget and Description
Widget type                                List of all incidents.

                                     Alerts
                                           List of all alerts.

                                     Open change requests
                                           List of all open network change
                                           requests.

                                     Open change tasks
                                           List of all open network change
                                           tasks.

                                       Note:

                                        With TSOM is installed, the following
                                        widgets appear.
                                         · Incidents
                                         · Alerts

                                        With TSM is installed, the following
                                        widgets appear.
                                         · Incidents
                                         · Open change requests

                                        Without TSOM and TSM are installed, the
                                        following widgets appear.
                                         · Open change requests
                                         · Open change tasks

Lists

From the Lists view, you can access most of the Telecommunications Network Inventory classes
and functions. An agent can analyze the individual lists of incidents, alerts, change tasks, and so
on, and take appropriate action. To learn more, see Lists view.

To access the Lists view, select the list icon ( )

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    53
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 54 -->
         List view tab

The menus you see depend on the applications you have installed. If you install the TSOM and
TSM, the Incidents and Alerts menu appears on the Lists view.

     Note: You must install Service Operations Workspace Alert Management (sn_sow_em)"

      plugin to view the Alerts in the List menu.
To learn more about Telecommunications Network Inventory features, see Exploring
Telecommunications Network Inventory.

Network visualization

The Network visualization view provides various options to explore the network infrastructure-
related functions. You can use the Network visualization to view the geographical location of your
network sites, the floor plan of a datacenter, and the topology of your network. To learn more, see
Visualize your network infrastructure.
To access the Network visualization page, select the blue hub icon ( ).

         Example of Network visualization page

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    54
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 55 -->
Inventory management

Use the Inventory management view in the Service Operations Workspace to get a detailed view
of your network inventory. To learn more, Management view.

To open the Inventory management view, select the database search icon (  ) on the side
panel.

         Example of Inventory management view

Design and Assign your network service

The Design and Assign function provides step-by-step guidance for designing a network service.
You can use the Design and Assign function to complete guided activities to design the network
services and assign the network inventories. To learn more, see Design and assign your network
services.

To access the Network visualization page, select the network visualization icon ( ).

         Example of Design and Assign home page

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    55
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

