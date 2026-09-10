# Zurich Sales and Order Management — Order management / Order operations

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 261–271 of 1408

Sections: Order management (p261); Order operations (p266)

---

<!-- page 261 -->
To view or manage your current deployments:
1. In the Google Apps Script editor, click the Deploy.
2. Select Manage deployments. Here you’ll see all active versions of your script.
3. You can edit, delete, or redeploy any version by clicking the three-dot menu next to the
version.
• Edit: Update an existing deployment to point to a new version.
• Delete: Remove the deployment entirely (Note: the live link will stop working if the deployment
is deleted).
If needed, you can roll back to an older version of your web app:
1. Go to Deploy > Manage deployments.
2. Find the previous version you want to return to and click Edit.
3. Select the earlier version from the Select Version menu.
4. Click Deploy to activate the previous version.
This provides an easy way to revert any issues that may arise with newer versions.

Order management
The Order Management application streamlines the order life cycle from capture to fulfillment.
It automates decomposition, enrichment, and orchestration workflows, empowering users to
accelerate delivery, reduce fallouts, and manage complex orders efficiently through a unified
workspace and customer portal.

Order Management overview
Automate and streamline the complex process of capturing and fulfilling customer orders with
Order Management, a central hub that connects sales, operations, and technical teams.
• Order decomposition: Automatically break down a single, complex customer order into smaller,
manageable tasks using predefine product catalogs and decomposition rules.
• Pricing capabilities: Ensure accurate billing with dynamic price lists, pricing matrices, and
adjustment features.
• Order enrichment: Add necessary data to orders post-capture before they're decomposed.
• Single source of truth: Establish a unified source for all order data, eliminating silos and
ensuring real-time consistency for all stakeholders.
• Jeopardy and fallout management: Proactively flag at risk orders and automate the handling of
fulfillment errors to manage issues effectively.
With Telecommunications Service Management (TSM) or Technology Provider Service
Management (TPSM) subscriptions, you can use workflows that help you manage your industryspecific products and services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
Order Management users
Users
User

Description

Customer

Accesses the Business Portal to browse catalogs, place and
track orders, raise issues or request changes to orders, or work
offline with agents to place orders or request services.

Order agent

Engages with customers and helps them place orders.

Order fulfillment agent

Monitors the fulfillment process and updates fulfillment tasks
such as receiving, reviewing, and processing orders.

Order manager

Manages customer and service orders.

Order approver

Approves customer orders and ensures order accuracy.

Order fulfillment manager

Manages order fulfillment tasks, reviews and approves orders.

Order fallout agent

Investigates and diagnoses order fallout issues, eliminates
order processing errors, and unblocks blocked orders.

Order fallout manager

Oversees order fallout agent and monitors fallout tasks to
ensure that order fallouts are being addressed.

Process admin

Manages automated Order Management workflows such
as order enrichment, order decomposition, jeopardy
management, and so on.

Order Management workflow
The following illustration describes the tasks involved in configuring and using Order
Management to manage the end-to-end order life cycle.
Creating and fulfilling order with Order Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
1. Process admins create order enrichment flows, decomposition rules, order orchestration
plans, and order fallout logic using Workflow Studio and decision tables. Optionally, they also
install and configure Jeopardy Management.
2. Order agent initiates the order life cycle by capturing an order in Order Management.
3. The fulfillment agent captures additional technical information essential to fulfillment.
4. The fulfillment manager reviews the order for accuracy and approves the order.
5. The system creates domain orders (product, service, and resource orders) based on the
specification relationships set in the product catalog and decomposition rules. If some of the
information isn’t available when order decomposition starts, Order Management can stagger
the decomposition to create certain orders using the information available at the time. Order
tasks and work orders are created and assigned to the fulfillment based on the orchestration
logic.
6. Using the order timeline view and orchestration UI, the fulfillment manager monitors the order
status, fallouts, and jeopardy scenarios.
7. The fulfillment agents fulfill the order. This could involving installing products at customer sites
or provisioning services.
8. After all order tasks are complete and order is closed, the product inventory records
are created, which can be used to cater to future customer requests like disconnecting,
suspending, or resuming products or services. The system also creates contracts and
entitlements against the sold products and services respectively.

Order Management benefits
Order Management benefits
Benefit

Feature

Users

Create and implement enrichment flows that
the system applies during order orchestration.

Configure order
enrichment flows
using Decision Tables

Process admin

Configure jeopardy management rules to
monitor fulfillment tasks ans alert managers
when tasks are at risk.

Configuring Jeopardy
Management

Fulfillment managers

Detect errors or exceptions during order
processing and take corrective actions to
improve SLA compliance and expedite order
processing.

Managing order
fallout

Fallout agent

Create and track orders via the workspace, or
import orders from third-party systems.

Methods of creating
orders in Sales and
Order Management

Order agents

Speed up fulfillment with orchestration
workflows driven by an advanced product
catalog using the order orchestration UI.

Using the order
orchestration UI

Fulfillment agents,
fulfillment managers

Track orders, prioritize tasks, and allocate
resources using Gantt charts to see order
status and risks.

View an order timeline Fulfillment agents,
fulfillment managers

Boost productivity and reduce manual tasks
for changes to confirmed orders.

Managing inflight
order changes and
cancellation requests

Order agents, order
managers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
Order Management benefits (continued)
Benefit

Feature

Users

Drive flexibility and efficiency of complex order Staggered
orchestration by processing domain orders
decomposition
when the required information becomes
available.

Fulfillment agents

Enable post-sale support and drive customer
Managing postsatisfaction by effectively managing
fulfillment order
customers requests for disconnecting,
changes
suspending, or resuming products or services.

Order agents

What to explore next
To learn more about configuring and using Order Management, see:
• Configuring Order Management
• Using Order Management
• Extending Order Management with ServiceNow applications and integrations
• Order Management reference
• Now Assist for Sales and Order Management (SOM)

Jeopardy Management
Jeopardy Management is a risk assessment tool that monitors fulfillment tasks, assesses the risk
level, and alerts fulfillment managers when the assigned task time is in jeopardy.
Jeopardy Management consists of multiple components in the Order Management application
that work together to monitor and report on task completion time in a fulfillment plan.
If a task is taking longer than expected, the system assesses the percentage of delay and
assigns a risk level.
In Order Management, some customer orders are expected to be fulfilled within a committed
time frame. The time commitment may be part of a contract that the customer and customer
service provider (CSP) have signed to ensure delivery and assurance of products and services.
To fulfill an order within the target date and time, a CSP depends on order management systems
to monitor the fulfillment progress. Jeopardy Management proactively identities any delays and
shares alerts, which can be addressed by fulfillment managers.
Overview of Jeopardy Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
How Jeopardy Management works
Jeopardy Management works by tracking tasks in an order fulfillment process. Order task
relationships are created and task durations are set. Planned tasks are set in the Draft state and
have a start time and an end time. As an order task is being fulfilled, any delays within the task's
assigned amount of time triggers a jeopardy alert.
Jeopardy Management components

Jeopardy Management alert levels
In Jeopardy Management, the fulfillment manager can set different levels of alerts for each task.
As the system monitors task duration, any delay triggers adjustments to the jeopardy level of
predecessor and successor tasks in the fulfillment plan.
The following image shows several Jeopardy Management configuration examples.
Jeopardy Management scenarios

The Jeopardy Management scenarios image compares some scenarios for tasks at certain
risk levels: expected, on-time, and delayed. Jeopardy Management assesses all the tasks in a
workflow and adjusts the risk level for tasks that occur later in the workflow.

What to do next
Use the following links to learn more about how to configure and use Jeopardy Management.
• Configuring Jeopardy Management
• Monitoring order jeopardy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
Order operations
Explore tools that help manage exceptions, returns, and process visibility across the order life
cycle.

Get started
Select a link from the following table to explore tools that support exception handling, returns,
process visibility, and sales operations across the lead-to-cash life cycle.
Order operations applications
Application

Description

Order Operations
Case Management

Capture and manage order exceptions.

Case Lines and
Workflows

Track and manage multiple related issues in a single case.

Case Management for Capture and manage invoice exceptions.
Invoice Operations
Lead-to-Cash Process Create dashboards using consolidated sales data across ERP and
Management
ServiceNow systems to gain visibility into the full sales process.
Return Merchandise
Authorization

Manage return, replacement, or refund cases for installed products.

What to do next
Configure the order operations applications, so your agents and customers can use them in their
sales workflows. For more information, see Configuring the order operations applications.
Related topics
Using order operations applications
Order operations reference

Lead-to-Cash Process Management
®

The ServiceNow Lead-to-Cash Process Management application empowers sales teams by
providing a consolidated view of all critical sales data and activities.

Lead-to-Cash Process Management overview
Lead-to-Cash Process Management is a centralized, real-time command center that aggregates
information from various sources like Customer Relationship Management (CRM) and Enterprise
Resource Planning (ERP) platforms into a dynamic dashboard.

Lead-to-Cash Process Management users
Users
User

Description

Sales admin

Define and create the sales process and relationships between the sales
entities to be monitored using Lead-to-Cash Process Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Users (continued)
User

Description

Contract
admin
Sales
process
manager

Create sales process records for an account and monitor, manage, and follow-up
on tasks.

Lead-to-Cash Process Management workflow
The following illustration describes the tasks involved in configuring and using Lead-to-Cash
Process Management to monitor the end-to-end sales process from a single interface.
Lead-to-Cash Process Management workflow

1. Sales admins create a business object group in the Next Experience UI, is a logical entity that
defines your business process and the entities involved. For example, order-to-cash.
2. Create business entities (business object type) you want to monitor in your sales process and
define relationships between them.
3. Add the business entities as members of the business object group.
4. The sales process manager creates sales process records in the CSM Configurable
Workspace.
5. Sales process managers create sales process records for monitoring a customer account.
A dashboard is created that contains the hierarchical node map view of the opportunities,
quotes, orders, and other related entities.
6. Manage tasks, status, documents, and emails related to the business entities, and follow up
with respective teams to expedite the process.
7. Track other tasks at the sales process record level by creating business process records.

Lead-to-Cash Process Management benefits
Lead-to-Cash Process Management benefits
Benefit

Feature

Create a hierarchical relationship between
Create business
sales entities using built-in or custom business objects and set up

Users

Sales admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
Lead-to-Cash Process Management benefits (continued)
Benefit

Feature

Users

objects that mirror your organization’s
structure and strategic goals.

relationships between
the entities

Customize the number of levels and tile
content on the node map, enhancing
clarity and control so that the sales process
managers can focus on relevant data and
navigate through complex sales processes
effectively.

Customize the sales
process dashboard

Select parent entities (such as Opportunity,
Quote, or Order) and child entities (such
as Quote lines or Order lines) to create a
customized view of the sales life cycle that
reflects the structure and needs of each
account. This capability helps you track
only relevant records, reducing noise and
improving focus.

Create accountSales process
specific sales process manager
records

Gain end-to-end visibility of the defined sales
process through a consolidated view that
provides a real-time snapshot of opportunities,
quotes, orders, and related entities. The ability
to see an entity's details eliminates the need
to toggle between systems.

Consolidated view
and nodal hierarchy
for monitoring a sales
process

Sales process
manager

Adjust which entities are actively tracked by
linking and delinking records or changing how
records are linked to focus on relevant sales
activities.

Link and delink
records

Sales process
manager

Streamline communication, task management,
and documentation, which accelerates
decision-making and improves crossfunctional alignment and collaboration without
having to leave the workspace.

View consolidated
emails and tasks,
create checklists and
attachments, and use
integrated chat

Sales process
manager

Sales admin

What to explore next
The following topics provide more information about configuring and using Lead-to-Cash
Process Management:
• Configuring Lead-to-Cash Process Management
• Using Lead-to-Cash Process Management
• Lead-to-Cash Process Management reference

Return Merchandise Authorization
Return Merchandise Authorization (RMA) application enables creating cases for install base
items. It offers simplified processes, decreased turnaround time, and offers a unified workflow.
The RMA application enables agents to initiate, track, and close sales return cases for install
base items directly in the Agent Workspace. The solution focuses on case intake, entitlement
verification, triage, and resolution, but fulfillment is handled by third-party systems or order
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
fulfillment platforms (unless fulfilled directly in ServiceNow). It also bridges the gap between selfservice and full support, making returns easier to handle.

Benefits
RMA application offers the following benefits:
Streamlines post-sale support for customers
Customers can easily initiate requests for sales return cases through a guided
process, reducing confusion and ensuring their issues are addressed promptly. The
structured workflow minimizes manual errors and accelerates case creation with
minimal support.
Provides clear accountability and tracking of product issues
Each defective product is tracked as a separate case line, enabling detailed
monitoring of status, actions taken, and outcomes. This transparency helps both
customers and internal teams stay informed about progress and responsibilities.
Facilitates collaboration between support and technical teams
Case lines can be routed to specialized core teams or technicians using task
assignments, ensuring that the required expertise is applied to each issue. This
speeds up resolution and leverages team strengths.
Enhances customer satisfaction through prompt communication and feedback
Agents keep customers updated at each stage, propose solutions, and gather
feedback before closing cases. This proactive communication builds trust and
ensure that customers feel heard and valued.
Ensures warranty and entitlement checks are performed before proceeding
Agents verify warranty status and entitlements for each product, avoid unauthorized
or unnecessary sales return cases. It reduces costs, avoids disputes, and ensures
compliance with company policies.
Supports management of multiple products and issues in a single case
Customers can report several defective items in one RMA case, and agents can
handle each item individually in the same workflow. This approach saves time and
reduces administrative overhead.
Related topics
Return Merchandise Authorization case end-to-end workflow
Return Merchandise Authorization case user journey
Activate the Return Merchandise Authorization plugin
Return Merchandise Authorization Case Management
Return Merchandise Authorization case end-to-end workflow
The Return Merchandise Authorization (RMA) end-to-end process is structured into a four-stage
playbook that provides structured guidance and oversight throughout each phase. The RMA
case workflow initiates when a customer logs an issue for their products.
The following are the different phase involved in RMA case end-to-end workflow.

Initiate case
• Agent action: Navigate to the RMA Case list and select New to open the RMA Case form.
• System action:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
◦ The playbook record generator renders the RMA Case form.
◦ And once the RMA Case form is rendered, Agent fills the customer details and Request
Source fields, and select Save.
◦ The system creates the RMA Case in the Draft State.
• Agent action: Add defective install base items as RMA Case Lines.
• System action: Create RMA Case Lines for each selected item.
• Agent action: Update each line with request reason code and customer-expected resolution,
then submit.

Review case
Agent action:
• Assign the case to an agent, moving it to Work In Progress (WIP).
• Perform warranty and entitlement checks for each case line.
• Update proposed resolution sales return cases.

Resolve case
Agent action:
• Create tasks for support teams if needed.
• Place case lines in the Awaiting Info state if more information is required.
• Communicate with the customer as needed.
• Update resolution codes and state for all case lines once resolved.

Close case
Agent action:
• Put the RMA case in Resolved state and formally close the case after all lines are resolved.
• Send a final communication to the customer confirming the closure.
Related topics
Return Merchandise Authorization case user journey
Return Merchandise Authorization case user journey
The Return Merchandise Authorization (RMA) user journey describes the steps a customer and
support agent take when handling a sales return cases.
The RMA user journey starts when a customer reports an issue. The agent then manages the
request through a clear four-stage process:
1. Initiate the case
2. Review the details and entitlements
3. Resolve the issue
4. Close the case
This approach confirms that every request is handled smoothly, with clear communication and a
focus on effective resolution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Steps involved in the RMA case user journey
Steps User

Action

System response

1

Customer Identifies product issue and contacts
customer support.

Support request is logged.
Customer is guided to provide
product and issue details.

2

Agent

Receives request and navigates to the
RMA Case list.

Agent selects New to initiate
RMA Case creation.

3

Agent

Fills in customer or account details and
request source in the RMA Case form.

System renders the form and
creates the RMA Case in Draft
state.

4

Agent

Adds defective products as RMA Case
Lines by selecting from customer’s install
base items.

System creates RMA Case Lines
for each selected item.

5

Agent

Updates each case line with request
System saves details. Agent
reason code (such as defective, damaged) submits the case for processing.
and customer expected resolution.

6

Agent

Assigns the case to self (or another agent) RMA Case and lines move to
to begin processing.
Work In Progress state.

7

Agent

Reviews warranty and entitlements for
each case line.

System displays entitlement
status and enables agent to add
entitlements as needed.

8

Agent

Decision: Accept or Reject RMA Case?

If accepted, proceed to next
step. If rejected, agent notifies
customer and closes the case.

9

Agent

(If accepted) Proposed solution and
updates repair type.

System records proposed
resolution.

10

Customer Reviews proposed solution and
provided feedback (accepts or requests
clarification).

System logs customer response.

11

Agent

If additional work is required, create task
for specialist.

System assigns task and tracks
progress for each case line.

12

Agent

Updates case line and overall case status
as tasks are completed and customer
feedback is received.

System transitions case through
Resolved and Closed states as
appropriate.

13

Agent

Communicates final resolution to
customer and formally closes the case.

System archives the case and all
related records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


