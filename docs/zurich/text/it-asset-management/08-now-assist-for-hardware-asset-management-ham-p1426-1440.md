# Zurich IT Asset Management — Now Assist for Hardware Asset Management (HAM)

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1426–1440 of 2359

Sections: Now Assist for Hardware Asset Management (HAM) (p1426)

---

<!-- page 1426 -->
Field

Description

Note: If an order guide has too many items and variables, consider
clearing this check box on as many items as possible, to improve loading
performance on order guides.
Visible on
Summaries

If selected, the variable appears on any variable summarizer of the catalog item.

Asset put away task fields
Fields on the Asset put away task form help you create a put away task for the in stock assets.
Create New Asset put away task form
Field

Description

Number

Task number. This field is automatically set.

State

Current state of the Asset put away task. When a new
task is created, this field is automatically set to Open.

Asset

Asset for which the put away task is created. All the in
stock assets are listed.

Task name

Name of the task. This field value is automatically set to
Put away.

Stockroom

Stockroom for the task. This field value is automatically
populated when the asset is selected.

Assignment group

Assignment group to which you want to assign the
Asset put away task.

Drop off location

Aisle and space in the stockroom where you want to put
away the hardware asset. This value is required to close
the Asset put away task.

Assigned to

Person from the assignment group who is primarily
responsible for the Asset put away task.

Due date

Date by which the Asset put away task should be
closed.

Notes

Notes about the task. The Short description and
Description field values are automatically populated.

Now Assist for Hardware Asset Management (HAM)
Use the Now Assist for Hardware Asset Management (HAM) application to streamline and
automate the hardware asset request process and the repair process with the agentic workflows.
Watch this short video for an introduction to the agentic AI for Hardware Asset Management
application.
https://player.vimeo.com/video/1096608088?
h=2b114916d2&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
Get started

Explore

Configure

Learn more about
Now Assist for HAM

Configure the Now
Assist for HAM
application to get started

Use Hardware Asset
Management AI
agent collection

Use agentic workflows
in Now Assist for HAM

Important:
• Not all model providers are available for customers with in-country SKUs, and some Now
Assist products/features are currently unavailable for in-country customers. For more
information, see the KB1584492
article in the Now Support Knowledge Base. Be sure to
check for model provider availability updates in future releases.
• Some Now Assist products/features are currently unavailable for customers in the
FedRAMP, NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted
customers, or in other restricted environments. For more information, see the
KB0743854
article in the Now Support Knowledge Base . Be sure to check for availability
updates in future releases.
• Some Now Assist products/features are currently available only for customers in some
regions. Be sure to check for availability updates in future releases.
• Some AI products and skills are not available in Regulated Markets. For more information,
see KB2593939: Regulated Markets AI Products/Skills Not Available . Be sure to check
for availability updates in future releases.

Troubleshoot and get help
• ServiceNow Community on AI and Intelligence
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to
develop and improve ServiceNow technologies including ServiceNow models and AI products.
In addition, this application will collect information about legal request and/or legal matter
(including related field information, comments, and work notes). Customers can opt out of future
data collection at any time, as described in the Now Assist Opt-Out page .
For more information, see the Now Assist documentation

.

Exploring Now Assist for Hardware Asset Management (HAM)
The Now Assist for Hardware Asset Management (HAM) application includes an agentic
workflow driven by AI agents that can manage hardware asset requests and repair requests
autonomously. This automation helps asset managers skip manual tasks, enhancing their
productivity and efficiency.

Now Assist for HAM overview
The agentic workflow in the Now Assist for HAM application operates in a structured manner.
• The agentic workflow first verifies licenses and models, then checks stock availability, and
finally triggers the necessary AI agents to fulfill hardware asset requests automatically.
• The AI agents also verify the repair tasks, provide detailed evaluation guide and repair steps,
and close the tasks after receiving user confirmation.

Now Assist for HAM benefits
The collection of AI agents included in the Now Assist for HAM application offers the following
benefits:
• Automation of repetitive and complex tasks involved in sourcing hardware assets, reducing the
workload on asset managers.
• Reduced need for human involvement in tasks, enabling asset managers to focus on activities
of higher priority.
• Faster resolution of hardware asset requests and repair requests, leading to quicker
turnaround times.
• Increased employee satisfaction, with quicker resolution of asset requests and repair requests.
• Improved asset utilization, for effective allocation of hardware assets.
Supporting information for Now Assist for Hardware Asset Management (HAM)
Get a quick overview of the important information related to the Now Assist for Hardware Asset
Management (HAM) application.

Supported versions
The Now Assist for HAM application is supported starting with the Yokohama Patch 4 release.

Supported user interfaces
You can access the agentic workflow included in the Now Assist for HAM application through the
Now Assist panel in the Hardware Asset Workspace.

Licensing requirements
The Now Assist for HAM application requires a Hardware Asset Management Pro Plus license.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
Application information
Activate the Now Assist for Hardware Asset Management (HAM) store application
(sn_now_assist_ham) to use the agentic workflow.
This store application has the following dependencies:
• Hardware Asset Management (com.sn_hamp)
• Now Assist for Platform (com.sn_genai_platform)
• AI Agents for IT Asset Management (com.sn_itam_aia)
Activate the applications in the following order:
• Hardware Asset Management (com.sn_hamp)
• Now Assist for Platform (com.sn_genai_platform)
• AI Agents for IT Asset Management (com.sn_itam_aia)
• Now Assist for Hardware Asset Management (HAM) (sn_now_assist_ham)

Configuring Now Assist for Hardware Asset Management (HAM)
Configure the Now Assist for Hardware Asset Management (HAM) application to use the agentic
workflow capabilities for managing your hardware asset requests autonomously.
Install Now Assist for Hardware Asset Management (HAM)
If you have the admin role, you can install the Now Assist for Hardware Asset Management (HAM)
application. Now Assist for HAM enables asset managers and procurement users to use the
capabilities of agentic workflows in Hardware Asset Management.

Before you begin

Role required: admin

Procedure
1. Go to the ServiceNow Store

.

2. In the search bar, enter Now Assist for Hardware Asset Management (HAM) and then select
Search.
3. Select the Now Assist for Hardware Asset Management (HAM) widget and then select Get to
make this application available for installation on your ServiceNow instance.
4. On your ServiceNow instance, navigate to All > System Definitions > Plugins.
5. Search for the Now Assist for Hardware Asset Management (HAM) application.
6. Select Install.

Result

The agentic workflow and the AI agents included in the Now Assist for Hardware Asset
Management (HAM) application are installed on your ServiceNow instance.

What to do next
1. Enable the Now Assist panel to access the AI agents. For details, see Turn on the Now Assist
panel .
2. Activate the AI Search application on your ServiceNow instance enabling the AI agents to
search and get related records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
a. Navigate to All > AI Search > AI Search Status.
b. Trigger the automatic AI Search activation process on your ServiceNow instance by
selecting Request AI Search.

Note: The activation process can take up to 24 hours.
Using agentic workflows in Now Assist for HAM
Use the Now Assist for HAM AI agent collection to complete hardware asset sourcing tasks
autonomously and optimize the asset repair workflow. These AI agents help resolve hardware
requests quickly, improve the productivity of asset managers, and speed up repairs.
Available agentic workflows for Now Assist for Hardware Asset Management (HAM) AI
agent collection
Agentic
workflow
name

Description

Help
Automatically fulfills hardware asset requests
manage by either using the available local stock, or by
hardware generating transfer orders to move assets from
asset
other stockrooms, or purchase orders to acquire
requests assets from vendors.

Available AI
agents

Introduced
inNow Assist
for HAM
version

Now Assist
• Hardware
for Hardware
asset
Asset
management
Management
sourcing AI
(HAM) v1.0
agent
• Transfer
order
creation AI
agent
• Purchase
order
creation AI
agent

Help
Automates and optimizes the repair workflow
repair
for hardware assets by validating repair tasks,
hardware guiding inventory users and technicians through
assets
troubleshooting steps, suggesting suitable repair
actions, and closing relevant tasks with details.

• Asset next
best action
AI agent
• Evaluate
asset AI
agent

Now Assist
for Hardware
Asset
Management
(HAM) v2.0

• Repair asset
AI agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Important: If the agentic workflows and AI agent records are inactive, follow the steps
below to activate them
• Activate the agentic workflow.
• Activate all agents within the agentic workflow.
• Activate the trigger to invoke the agentic workflow automatically. If you prefer to invoke it
manually, activating the trigger isn’t necessary.
By default, all agentic workflows and AI agent records are read-only. To customize them, you
must first duplicate the agentic workflow , and then activate the duplicated workflow.
After you duplicate the agentic workflow, you can test it in the AI Agent Studio to analyze its
performance as it executes the instructions that you have defined. For details on testing your
agentic workflow, see Manually test the execution of an agentic workflow .
You can implement security in AI agents and the agentic workflow using Access Control Lists
(ACLs) that specify which users can discover and invoke an agentic workflow or an AI agent. For
more details on configuring ACLs, see Implement access control in Now Assist AI agents .
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

Now Assist for Hardware Asset Management (HAM) AI agent collection Help manage
hardware asset requests agentic workflow
Use the Help manage hardware asset requests agentic workflow, driven by AI agents, to handle
your employees' hardware asset requests automatically. The AI agents fulfill requests by either
consuming the available local stock, or by generating transfer orders or purchase orders.

Help manage hardware asset requests agentic workflow overview
The AI agents in the Help manage hardware asset requests agentic workflow help to speed up
request resolution, improve operational efficiency, and enhance user satisfaction. This agentic
workflow processes and fulfills requests for hardware, consumables, bundles, and pallets.

Note: The itil, the procurement_user, and the now_assist_panel_user roles have access
to the Now Assist panel. The fulfiller needs the itil and procurement_user roles if you have
the Now Assist for IT Service Management (ITSM) store application installed. If you have
the Now Assist for Hardware Asset Management (HAM) store application but not the Now
Assist for IT Service Management (ITSM) store application, then the fulfiller requires the itil,
procurement_user, and now_assist_panel_user roles to fulfill the request via the Now Assist
panel trigger.
Auto-sourcing scenarios
To enable AI agents to perform sourcing autonomously, the following options are
available at the stockroom level:
• Auto-consume: Automatically use the available local stock.
Automatic consumption of local stock happens when a minimum of one
stockroom serving the location of the requester has the Auto-consume option
enabled. If several stockrooms at the location of the requester have the Autoconsume option enabled, assets are first consumed from the stockroom with the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
highest available quantity. If there are still assets needed, they’re consumed from
the stockroom with the next highest quantity.
• Auto-transfer: Automatically transfer stock from another stockroom.
Automatic transfer of assets happens under the following conditions:
◦ There’s only one destination stockroom serving the location of the requester
that has the Auto-transfer option enabled.
◦ The destination stockroom must be linked to distribution channels that serve
as source stockrooms. Sourcing from these channels is based on their rank,
beginning with the distribution channel having the lowest rank and moving on
to the next ranks.
◦ The Auto-transfer option is enabled on both the source and destination
stockrooms.
.
• Auto-purchase: Automatically create purchase orders to procure assets from a
vendor.
Automatic purchase of assets happens under the following conditions:
◦ There’s only one stockroom serving the location of the requester that has the
Auto-purchase option enabled.
◦ There’s only one vendor from whom the model of the requested item can be
purchased.
Requested item (RITM) validations
Before sourcing any hardware asset requests, the Help manage hardware asset
requests agentic workflow validates the requested item (RITM). The agentic
workflow doesn't proceed with sourcing under the following conditions:
• The RITM number is missing or invalid.
• More than one requested items have the same RITM number.
• The requested item is already sourced.
• The request isn't sourceable.
• The request isn’t approved.
• The model that’s requested is invalid or missing.
• The model isn’t associated with any model category.
• The resource category of the requested model isn’t opted in.
• The model associated with the catalog item isn’t licensed.
Stages in the agentic workflow
The fulfillment of hardware asset requests through the agentic workflow includes
the following stages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
1. Hardware asset request initiation
a. An employee creates a hardware asset request in the Service Catalog
application.
b. The request is either automatically approved or, when necessary, approved by
the asset manager.
c. The requested item is assigned to a procurement user, which triggers the Help
manage hardware asset requests agentic workflow.
2. Asset availability checks by the AI agent
a. The AI agent verifies whether the requested item is available in the inventory.
b. The AI agent also checks the stockrooms that are set up for automatic
consumption of local stock, transfer, and purchase.
3. Asset sourcing and allocation
a. When stockrooms are configured to consume, transfer, and purchase assets
automatically through the AI agents, the following events occur:
i. The AI agent first uses the available stock in the stockroom.
ii. For any remaining assets that can be transferred from another stockroom, the
AI agent creates a transfer order.
iii. If there are still assets to be sourced, the AI agent creates a purchase order to
buy them from a vendor.
b. When assets are available in stockrooms that aren't set up for automatic
sourcing, the AI agent creates a sourcing plan and asks for confirmation from
the assignee of the requested item (RITM) or the person who started the
conversation through the Now Assist panel before proceeding.

Note: To access the Now Assist panel after it has been activated,
you should have the now_assist_panel_user role. To access the Help
manage hardware asset requests agentic workflow in the Hardware Asset
Workspace, select the sparkle icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
Conversations in the Now Assist panel

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
i. If the AI agent receives the confirmation to proceed and there have been no
changes to the plan, it sources the assets according to the sourcing plan.

Note: If there's a change in the plan, the agentic workflow stops, and
the conversation should be reinitiated through the Now Assist panel.
ii. If the AI agent receives a confirmation not to proceed with the sourcing plan,
or if there's still some quantity of assets remaining to be sourced, the agentic
workflow continues as follows:
1. The AI agent first verifies whether the assets can be sourced through a
transfer order or purchase order.
If the transfer is possible, the following events happen:
a. The AI agent asks to confirm whether it can proceed with the transfer.
b. If the AI agent receives confirmation to proceed, it asks to confirm both
the source and destination stockrooms.
c. After receiving confirmation, the AI agent creates a transfer order.

Note: If there’s only one stockroom available as the source or
destination, it’s automatically selected. The AI agent displays only the
source stockrooms that have the quantity of assets to be sourced.
Only the stockrooms that serve the location of the requester are
shown as destination stockrooms.
2. If the AI agent receives a confirmation not to proceed with the transfer
order:
a. The AI agent further requests confirmation to proceed with the purchase
order.
b. If the AI agent receives confirmation to proceed, it asks to confirm the
vendor and the destination stockroom.
c. After receiving confirmation, the AI agent creates a purchase order.

Note: If there's only one stockroom or vendor available, these values
are automatically selected. The AI agent displays the list of vendors
for the requested item. Only the stockrooms that serve the location of
the requester are shown as destination stockrooms.
3. If the user doesn't agree to either the transfer order or the purchase order,
the request must be sourced manually.
Refer to the information provided here on the AI agents related to the Help manage hardware
asset requests agentic workflow.
To modify the Help manage hardware asset request agentic workflow duplicate it
the settings according to your requirements.

, and adjust

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

Role masking
Roles required:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

AI agents used in the Help manage hardware asset requests agentic workflow
The Help manage hardware asset requests agentic workflow uses specific AI agents to consume
local stock, transfer assets between stockrooms, and procure assets from vendors.
Role of AI agents in the Help manage hardware asset requests agentic workflow
AI agent

AI agent role

Hardware
asset
management
sourcing AI
agent

• The AI agent checks if the requested item is available in the stockroom.
Depending on the automatic sourcing set up in the stockroom, the AI agent
either uses the local stock autonomously or creates a sourcing plan and
requests user confirmation to consume the assets.
• Triggers the Transfer order creation AI agent to create transfer orders.
• Triggers the Purchase order creation AI agent to create purchase orders.

Transfer
order
creation AI
agent

Sources the requested item by either creating a transfer order autonomously
or according to the sourcing plan created by the Hardware asset management
sourcing AI agent. If there are multiple source or destination stockrooms, the AI
agent requests user input to create the transfer order.

Purchase
order
creation AI
agent

Sources the requested item by either creating a purchase order autonomously
or according to the sourcing plan created by the Hardware asset management
sourcing AI agent. If there are multiple destination stockrooms or vendors, the AI
agent requests user input to create the purchase order.

Access the Help manage hardware asset requests agentic workflow in the AI
Agent Studio
• Navigate to All > AI Agent Studio > Create and manage.
• Select Help manage hardware asset requests.
Now Assist for Hardware Asset Management (HAM) AI agent collection Help repair hardware
assets agentic workflow
Use the Help repair hardware assets agentic workflow, driven by AI agents, to handle the repair
requests of defective and out-of-warranty hardware assets automatically. These AI agents
validate the repair tasks, provide detailed troubleshooting and repair steps, and finally close the
relevant tasks after receiving user confirmation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
Help repair hardware assets agentic workflow overview

Important: This agentic workflow is now turned on by default. The new default behavior
works as follows:
New customers
When you install a Now Assist product, designated agentic workflows are
turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to agentic workflows that are currently enabled and
customized.
An agentic workflow is turned on if:
• The Now Assist plugin is installed, but the agentic workflow was never
turned on.
• An admin has never adjusted roles for the agentic workflow.
An agentic workflow is not turned on if:
• The agentic workflow was previously turned on, and then turned off again.
• An admin has adjusted roles for the agentic workflow.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

The AI agents in the Help repair hardware assets agentic workflow offers these benefits:
• AI-guided troubleshooting and repair steps help improve accuracy and consistency
• End-to-end task automation helps reduce delays in resolving hardware issues
Prerequisites to use the Help repair hardware assets agentic workflow
• Your organization must have an IT asset management system integrated with AIdriven repair workflows.
• AI agents must have access to repair order records and the web.
• Repair task numbers are required to initiate requests.
• Users must have the inventory_user role.
Actors in the Help repair hardware assets agentic workflow
• Asset manager: Reports hardware issues by submitting repair requests.
• Inventory user: Works on assigned troubleshooting and repair tasks.
• AI agents: Provide detailed troubleshooting and repair steps through web-based
search and complete the relevant tasks.
Stages in the agentic workflow
The repair of defective or out-of-warranty hardware assets through the agentic
workflow includes the following stages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
1. Repair order creation by an Asset manager
a. Initiates the repair process for defective or out-of-warranty hardware assets in
the stockroom by creating a repair order.
b. Adds one or more repair order lines to the repair order, depending on the
number of assets that must be fixed, and saves the repair order.
Result: A Troubleshoot task is created for each repair order line.
c. Assigns a technician for the troubleshooting task, automatically triggering the
Help repair hardware assets agentic workflow.

Note: The assigned technician with the inventory_user role can log in
and view the active conversation with the AI agents in the Now Assist
panel in the Hardware Asset Workspace by selecting the sparkle icon [

].

To access the Now Assist panel after it has been activated, you should
have the now_assist_panel_user role.
2. Repair order task validation by the AI agent
a. The Asset next best action AI agent retrieves the task details and validates
them.
b. Based on the validation result, one of the following events occurs:
▪ If the task number is invalid or the task isn't active, the agentic workflow ends.
▪ If the task is valid, the AI agent checks whether it's a troubleshooting task, or
a repair task and triggers the appropriate AI agent to handle it.
3. Processing of tasks by AI agents
Handling of the troubleshooting task by the Evaluate asset AI agent
The Evaluate asset AI agent manages the troubleshooting task as
follows:
a. Searches the web to find a detailed evaluation guide that matches
the model and manufacturer of the asset.
If the model or manufacturer details aren't present on the asset
record, the agentic workflow stops.

Important: Web searches using third-party large language
models (LLMs) like Gemini won't be supported for Federal
customers.
b. Displays the evaluation guide in the Now Assist panel, to help the
technician to identify the issue with the asset.
c. Checks with the technician to confirm whether the troubleshooting
steps were helpful.
▪ If the technician confirms that the troubleshooting steps helped,
the AI agent performs these steps:
i. Asks the technician to confirm the troubleshoot result
(Repairable, Unrepairable, or Redeployable) and provide the
issue details.
ii. Updates the task with the details provided by the technician
and closes the task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
▪ If the technician confirms that the troubleshooting steps didn't
help, the AI agent performs these steps:
i. Requests more details about the issue to refine the web
search.
ii. Searches the web again to find a detailed evaluation guide
that matches with the details provided.
iii. Displays the evaluation guide in the Now Assist panel, to
assist the technician in identifying the issue.
iv. Checks with the technician to confirm whether the new
troubleshooting steps were helpful.
▪ If the technician confirms that the new troubleshooting
steps were helpful, the AI agent updates the task with the
troubleshooting result and the issue details provided by the
technician, and then closes the task.
▪ If the technician confirms that the new troubleshooting
steps weren't helpful, the agentic workflow stops.
When a troubleshoot asset task is marked as Repairable and closed,
the following events occur:
a. A repair task is automatically generated and assigned to the
technician who handled the troubleshoot task. This action also
initiates the Help repair hardware assets agentic workflow.
b. The Asset next best action AI agent fetches the details of the
repair task and performs a validation check.
c. Depending on the validation result, one of these events occurs:
▪ If the task number is invalid or the task isn't active, the agentic
workflow ends.
▪ If the task is valid, the AI agent confirms the task type and
triggers the Repair asset AI agent to manage the repair process.
Handling of the repair task by the Repair asset AI agent
The Repair asset AI agent checks if the issue is identified and
present on the repair task.
◦ If the issue is present on the repair task, the AI agent performs the
following actions:
a. Searches the web to find detailed repair steps to resolve the
issue identified on the asset.

Note: If the model or manufacturer details aren't present
on the asset record, the agentic workflow stops.
b. Displays the repair instructions in the Now Assist panel, to help
the technician to fix the asset issue.
c. Checks with the technician to confirm whether the repair steps
were helpful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
▪ If the technician confirms that the repair steps were helpful,
the AI agent performs these steps:
i. Asks the technician to confirm the repair result (Repaired,
Unrepairable, or Redeployable) and provide the issue
details.
ii. Updates the repair task with the repair result and the issue
details provided by the technician, and closes the task.
▪ If the technician confirms that the repair steps weren't helpful,
the AI agent performs these steps:
i. Requests more details about the issue to refine the web
search.
ii. Searches the web again to find repair steps that match with
the details provided.
iii. Displays the repair steps in the Now Assist panel, to assist
the technician in resolving the issue.
iv. Checks with the technician to confirm whether the new
repair steps were helpful.
▪ If the technician confirms that the new repair steps were
helpful, the AI agent updates the task with the details
provided by the technician and closes the task.
▪ If the technician confirms that the new repair steps were
not helpful, the agentic workflow stops.
◦ If the issue isn't present on the repair task, the AI agent performs
the following actions:
a. Requests more details about the issue to refine the web search.
b. Searches the web again to find repair steps that match with the
details provided.
c. Displays the repair steps in the Now Assist panel, to assist the
technician in resolving the issue.
d. Checks with the technician to confirm whether the new repair
steps were helpful.
▪ If the technician confirms that the new repair steps were
helpful, the AI agent updates the task with the details provided
by the technician, and then closes the task.
▪ If the technician confirms that the new repair steps weren't
helpful, the agentic workflow stops.

Role masking
Roles required:
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


