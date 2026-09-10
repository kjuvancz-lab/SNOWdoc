# Australia Sales Customer Relationship Management — Order management / Order operations

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 93–103 of 1645

Sections: Order management (p93); Order operations (p98)

---

<!-- page 93 -->
Customer Contracts and Entitlements benefits (continued)
Benefit

Feature

Users

You can add or reduce the quantity to an
existing contract during its term.

Upsell or Downsell a
Customer service
customer contract line manager, order agent

What to explore next
To learn more about configuring and using Customer Contracts and Entitlements, see:
• Configure Customer Contracts and Entitlements
• Using Customer Contracts and Entitlements

Sales Agreement Management
Sales Agreement Management is an application that captures the scope and conditions from a
quote for future sales transactions, over a specified period between a buyer and a seller.​
Sales Agreement Management can be a separate application or part of the Sales Customer
Relationship Management application.
A quote is a formal offer for products and services, proposed at specific prices and related
payment terms, which is sent to a prospective customer. Only after a quote is completed or
closed, a sales agreement can be generated.
• Details about the buyer and seller involved in the transaction
• Validity period of the agreement
• Details of the products and services to be supplied
• Specific products and services: Quantities and pricing

Sales agreement workflow: Quote-to-sales agreement
Sales agreement and Sales agreement lines are based on quote and quote lines using the same
product offerings.

Sales agreement line items
In a sales agreement, a line item refers to any product or service being sold by the seller. These
offerings can range from simple items to more complex ones that are configurable or bundled
together. Each offering may also have specific features or characteristics. A line item might be a
particular version of a product, a combination of different product configurations, or a category of
products. A single agreement can include multiple line items.

Sales agreement price list
In a sales agreement, the prices for products and services that are negotiated and finalized
are called price lists. These lists specify the agreed-upon prices for various items included in
the agreement. When a sales order is placed based on a sales agreement, these price lists are
used to determine the pricing of the order. This ensures that the terms negotiated in the sales
agreement are consistently applied to all sales transactions under that agreement.

Order management
The Order Management application streamlines the order life cycle from capture to fulfillment.
It automates decomposition, enrichment, and orchestration workflows, empowering users to
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

93


<!-- page 94 -->
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

94


<!-- page 95 -->
Creating and fulfilling order with Order Management

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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

95


<!-- page 96 -->
Order Management benefits (continued)
Benefit

Feature

Users

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

Methods of
creating orders in
Sales Customer
Relationship
Management

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
• Now Assist for Sales Force Automation (SFA)

Jeopardy Management
Jeopardy Management is a risk assessment tool that monitors fulfillment tasks, assesses the risk
level, and alerts fulfillment managers when the assigned task time is in jeopardy.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

96


<!-- page 97 -->
Overview of Jeopardy Management
Jeopardy Management consists of multiple components in the Order Management application
that work together to monitor and report on task completion time in a fulfillment plan.
If a task is taking longer than expected, the system assesses the percentage of delay and
assigns a risk level.
In Order Management, some customer orders are expected to be fulfilled in a committed time
frame. The time commitment may be part of a contract that the customer and customer service
provider (CSP) have signed to ensure delivery and assurance of products and services. To fulfill
an order in the target date and time, a CSP depends on order management systems to monitor
the fulfillment progress. Jeopardy Management proactively identities any delays and shares
alerts, which can be addressed by fulfillment managers.
Jeopardy Management provides proactive risk management for the order fulfillment process
through the following steps:
1. Monitor order fulfillment progress.
2. Predict jeopardy and risk for domain orders and order tasks.
3. Make jeopardy information available to users.
4. Fulfillment managers resolve tasks in jeopardy.

How Jeopardy Management works
Jeopardy Management works by tracking tasks in an order fulfillment process. Order task
relationships are created and task durations are set. Planned tasks are set in the Draft state and
have a start time and an end time. As an order task is being fulfilled, any delays in the task's
assigned amount of time triggers a jeopardy alert.
Jeopardy Management uses the following components to monitor and manage risk in order
fulfillment:
Define subflows and decision tables
• Define subflows that create order tasks upfront and define task relationships.
• Configure jeopardy policy decision tables.
Monitor order fulfillment progress
• Define and launch SLA for order tasks.
• Monitor fulfillment progress and closure of domain orders and order tasks.
Predict jeopardy and risk
• Leverage planned task date fields and date roll-up logic to produce timelines for
order task fulfillment progression.
• Monitor the progress of each order task and produce jeopardy information.
• Roll up jeopardy date changes for all order entities.
Share jeopardy information
Use the order forms, list, and orchestration UI forms to show jeopardy details for
orders, domain orders, and order tasks to prioritize tasks to take action.
Resolve tasks in jeopardy
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

97


<!-- page 98 -->
Based on jeopardy condition, customers can implement notifications or other logic
as required based on the jeopardy level flag on each entity jeopardy.

Jeopardy Management alert levels
In Jeopardy Management, the fulfillment manager can set different levels of alerts for each task.
As the system monitors task duration, any delay triggers adjustments to the jeopardy level of
predecessor and successor tasks in the fulfillment plan.
The following table compares how Jeopardy Management assesses risk levels across tasks in a
fulfillment workflow for three scenarios: expected, on-time, and delayed.

Scenario

Product
order

Task
A

Task B

Task C

Task D

Expected

Duration: 48 12
12 hours
hours
hours

12 hours

12 hours

Scenario 1:
On-time

Duration: 34 10
10 hours
hours
hours

8 hours

6 hours

Scenario 2:
Delayed

Duration:
uncertain

Uncertain
fulfillment time

Uncertain
fulfillment time

10
18 hours (in jeopardy,
hours task delayed)

The following table shows how Jeopardy Management assesses risk levels for tasks in a
fulfillment workflow and the impact on the successor tasks.

Scenario

Task
status

Risk
level

Task completed within the expected
time

On time None No adjustment to successor task risk
levels

Task slightly delayed but within the
acceptable threshold

At risk

Low

Successor tasks flagged as low risk

Task significantly delayed, exceeding
the acceptable threshold

Delayed High

Successor tasks escalated to high
risk; jeopardy alert triggered

Impact on successor tasks

Jeopardy Management assesses all tasks in a workflow and adjusts the risk level for tasks that
occur later in the workflow. In the delayed scenario, a delay in Task B causes the fulfillment time
for all successor tasks to become uncertain, and the product order duration can no longer be
determined.

What to explore next
For information on configuring and using Jeopardy Management, see:
• Configuring Jeopardy Management
• Monitoring order jeopardy

Order operations
Explore tools that help manage exceptions, returns, and process visibility across the order life
cycle.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

98


<!-- page 99 -->
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

What to explore next
Configure the order operations applications, so your agents and customers can use them in their
sales workflows. For more information, see Configuring the order operations applications.

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

Contract
admin
Sales
process
manager

Create sales process records for an account and monitor, manage, and follow-up
on tasks.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

99


<!-- page 100 -->
Lead-to-Cash Process Management workflow
The following illustration describes the tasks involved in configuring and using Lead-to-Cash
Process Management to monitor the end-to-end sales process from a single interface.
Lead-to-Cash Process Management workflow


<!-- page 101 -->
Lead-to-Cash Process Management benefits (continued)
Benefit

Feature

Users

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

customized view of the sales life cycle that
reflects the structure and needs of each
account. This capability helps you track
only relevant records, reducing noise and
improving focus.

What to explore next
The following topics provide more information about configuring and using Lead-to-Cash
Process Management:
• Configuring Lead-to-Cash Process Management
• Using Lead-to-Cash Process Management
• Lead-to-Cash Process Management reference

Return Merchandise Authorization
Return Merchandise Authorization (RMA) enables the return, replacement, and repair for install
base items. It offers simplified processes, decreased turnaround time, and a unified workflow.
The RMA Case Management application includes the RMA case type. This case type provides
the ability to reference multiple install base items as case line items on an RMA case record.
Using case line items, multiple issues can be tracked for the same RMA case. Also, the issues
can be resolved in each case line item independently before resolving and closing the RMA
case.

What to explore next
• Activate the Return Merchandise Authorization plugin
• Return Merchandise Authorization Case Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

101


<!-- page 102 -->
Return Merchandise Authorization case end-to-end workflow
The Return Merchandise Authorization (RMA) end-to-end process is structured into a four-stage
playbook that provides structured guidance and oversight throughout each phase. The RMA
case workflow initiates when a customer logs an issue for their products.
The following are the different phase involved in RMA case end-to-end workflow.

Initiate case
• Agent action: Navigate to the RMA Case list and select New to open the RMA Case form.
• System action:
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

What to explore next
• Activate the Return Merchandise Authorization plugin
• Return Merchandise Authorization Case Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

102


<!-- page 103 -->
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

System assigns task and tracks
progress for each case line.

If additional work is required, create task
for specialist.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

103


