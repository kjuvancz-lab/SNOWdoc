# Zurich Customer Service Management — Omnichannels for communicating with customers / Agent experience / Case management +3 more

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 16–165 of 2452 | Part 1 of 2

Sections: Omnichannels for communicating with customers (p16); Agent experience (p19); Case management (p21); Intelligence (p23); Analytics and insights (p25); Optimization (p25); Configure (p27); Set up your environment (p30)

---

<!-- page 16 -->
With the Virtual Agent platform, you can design and build automated conversations
that help your customers get the help that they need.
As customers answer questions and select options presented by Virtual Agent,
they’re directed to a self-service resource.
If customers want to chat with an agent, Virtual Agent hands them off to a live agent.
To provide this resource, use the Connect Support feature.
To learn more about chat, see Configuring the chat channel.
Engagement Messenger
With the Engagement Messenger, your customers can easily access the information
or services they need from your third-party web applications, even if they’re located
outside of the ServiceNow environment.
To learn more about Engagement Messenger, see Set up Engagement Messenger.
To get started with the portals, see Configure the Customer and Consumer Service Portals and
Configure Business Portal.

Omnichannels for communicating with customers
Meet customers where they feel most comfortable by providing omnichannel support.
Customers can use chat on the Customer Service Management portal, chat via consumer
messaging apps, use email, or place a phone call.
Provides an overview of omnichannel support capabilities within the ServiceNow AI Platform.
Customers can use the following consumer messaging apps to message you.
• WhatsApp
• LINE
• Facebook Messenger
• Apple Messages for Business
To learn more, see Integrating with consumer messaging apps.

Chat channel
From the Customer Service Portal and Consumer Service Portal, customers can start a chat with
a virtual or live agent for help.
Chatting with an agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

16


<!-- page 17 -->
®

The chat communication channel uses the ServiceNow Connect Support feature to provide
®
chat capability. You can also enable the ServiceNow Virtual Agent application to create or use
predefined chatbot topics (conversations) for your users.
The chat request from the customer is either routed to a virtual agent or to an available agent
with the required skill set. The agent can respond to the customer and, if necessary, create a new
case or link the discussion to an existing case.
An agent can also initiate a Zoom meeting from a chat to resolve issues faster. For more
information, see Chat Zoom Connector.
If a case is created as the result of a chat, the customer can later find and view the case from
the portal for updates. The customer service agent can also link a chat discussion to an existing
case. Details from the chat discussion are copied to the case form.
For more information, see Connect Support

and Configuring the chat channel.

When a support agent of the assignment group associated with the chat queue ends a chat with
a user, a survey is available in the chat window for the users. Users can take the survey to give
feedback about the interaction with an agent. The survey is not captured in the transcript in the
agent's interactions page.

Email channel
Email queries from customers can be managed either as interactions or cases. Interactions
handle simple queries that can be resolved promptly, while cases are for more complex issues
requiring investigation. Use interactions for simple questions and as a staging object for case
categorization. Use cases for complex issues requiring investigation by the back office to
facilitate proper resolution.

Email Interaction
Enables you to create interactions to manage email engagement with customers. Agents can
review these interactions and take appropriate actions. The customer query can be resolved by
an email response over the interaction, or a case can be created for further investigation.

Streamlining case management from intake to resolution
When a customer sends an email, it’s automatically created as an interaction in
the system. This interaction captures all email communication between agent
and customer, providing agents with context for the query. The agent reviews the
interaction to determine whether the issue requires further investigation. If the
customer’s request is clear and needs resolution, a case is created based on the
interaction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

17


<!-- page 18 -->
Once the case is created, the interaction is marked as closed. This helps prevent
unnecessary duplication and keeps the system organized. When the agent replies
to the customer's email through the case, an outbound interaction is automatically
created. This confirms that all communication is tracked, maintaining a complete
record of the conversation.

Email to case
With email to case, customers can send emails to create cases and update current cases. They
can also receive email updates from customer service agents as cases progress.

Creating, viewing, and updating cases
Customers can create a new case by sending an email to a designated address.
They can also create a case for a specific product by sending an email to a
designated address and including the product name in the subject line. Or, if
a channel configuration has been created, customers can send an email to a
designated address regardless of the information included in the subject line.
After submitting a case, the customer receives a confirmation email with the
assigned case number and a link to the Case form. When an agent updates a case,
the customer receives an email with the details.
Customers can update an existing case in the following ways:
• By replying directly to an email from a customer service agent.
• By creating an email and including the Case: prefix followed by the case number
in the subject line. For example, Case:CS0000011.
Accepting and rejecting solutions
When an agent proposes a solution to a case, the customer receives an email with
instructions for accepting or rejecting the solution. The customer can reply and
include Accept or Reject in the first line of the email, or the customer can select the
Accept or Reject link in the email.
When an agent closes a case, two emails are sent to the customer. The first email
states that the case has been closed. The second email provides a link to a
customer satisfaction survey.

Note: If a customer accepts a solution or closes a case from the Customer
Service Portal, they’re automatically routed to the survey. They don’t receive
the survey email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

18


<!-- page 19 -->
To get started with the email channel, see Configuring the email channel.

Phone channel
External customers can reach out to customer service agents by phone. The Customer Service
Management application uses both Computer Telephony Integration (CTI) and OpenFrame to
provide phone support for customers.

Computer Telephony Integration (CTI)
CTI provides a way to integrate the ServiceNow AI Platform with telephony providers
to support inbound and outbound calls. With this integration, customer service
agents can place and accept calls from customers, quickly identify customers and
account information, and capture case-related information.

Note: The CTI integration with the Twilio Voice product requires activation of
the Notify plugin.
OpenFrame
OpenFrame is a tool that enables CTI capability with telephony service providers.
OpenFrame provides a communication frame that agents use to place and receive
customer calls.
Interaction Controls Component (ICC)
Integrate ICC with contact centers to embed a native call control interface within the
Agent Workspace. This streamlines the management of all inbound and outbound
phone interactions by providing contextual assistance in a single interface.

Note: The Interaction Controls Component (ICC) is a framework that includes
voice call features. However, these features will not function unless they are
implemented by a CCaaS (Contact Center as a Service) solution.
For more information, see: Interaction Controls Component (ICC) for voice
calls
To get started with the phone channel, see Configuring the phone channel.

Agent experience
Your agents can assist customers through various interaction channels to resolve their issues
and manage their cases, delivering high-quality and efficient customer service with Customer
Service Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

19


<!-- page 20 -->
CSM Configurable Workspace
Your agents have one desktop for any interaction–phone, chat, messaging, web forms, etc.
Multiple tabs allow agents to efficiently manage several cases at once. Agents have ongoing
visibility into the status of issues assigned to middle and back-office teams for resolution. The
workspace dynamically displays related contextual information based on the current state.
Agents can also set compact mode and dark mode to optimize their experience and productivity.
To learn more about CSM Configurable Workspace, see Explore CSM Configurable Workspace.

Advanced Work Assignment
Define criteria and routing conditions to automatically assign work items (such as chats or cases)
to agents based on their availability, capacity, skills, work history, related tasks, or account team.
To learn more about Advanced Work Assignment, see Set up an Advanced Work Assignment
service channel for assigning case tasks.

Customer Central
Your agents get a ready-to use centralized view of customer-specific information. Customer
Central combines historical activity from self-service (such as knowledge base article views and
Virtual Agent interactions) as well as live interactions (such as chat and SMS). It can be further
customized to incorporate data from different sources and use custom components to include
customer health scores, churn risk, recent transactions, etc.
To learn more about Customer Central, see Customer Central.

Agent Assist
With agent assist, your agents can handle cases in the workspace, perform an automatic
search that shows possible solutions in other cases, knowledge base articles, and additional
information sources.

Playbooks
Your agents can use playbooks to provide your customers with the step-by-step guidance that
they need for resolving specific types of customer service cases. For example, your agents can
use these playbooks to help your customers resolve onboarding, complaint, and product support
issues.
A playbook enables your agents to manage the life cycle of a case. The workflows that are
associated with a specific type of case and the activities that need to be completed to resolve
cases of this type are detailed in the playbook. Playbooks also help your agents to visualize the
entire life cycle of a workflow.
To learn more about playbooks, see Playbooks for Customer Service Management.

Mobile
Your agents can manage their customer service cases from a mobile device with the Customer
Service Management mobile application. Your agents can stay connected and access
information in real time to complete their tasks quickly.
Both your customer service agents and managers can use the Customer Service Management
mobile application to review the case details quickly so that they can complete their case tasks.
By using a mobile phone with the Customer Service Management application, your agents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

20


<!-- page 21 -->
and customer service managers can perform routine actions and approvals anytime and from
anywhere.
To learn more about the Customer Service Management mobile application, see Mobile
experience for Customer Service Management.

Case management for Customer Service Management
Manage customer requests and issues by creating cases, routing cases to agents and groups,
and working toward resolution. With case management, you can provide your agents with the
tools they need to evaluate cases, communicate with customers, answer questions, and resolve
issues.

Getting to know the case management process
Case management refers to the business processes and activities designed to evaluate and
address customer issues and requests while managing the overall customer experience through
effective communication. Case management enables you to engage with customers, categorize
and route cases, assign work to agents, and manage cases through resolution and reporting.
Case management starts with case creation as customers reach out through a number of
communication channels including email, phone, and chat.
The following diagram shows the case management process.
High-level process flow for the case management process

Use the following features with the Customer Service Management application to manage the
cases for your customers:
• Case workflows
• Case types
• Service definitions
• Playbooks
• Major issue management
• Customer project management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

21


<!-- page 22 -->
Case workflows
A case workflow is a series of steps and tasks that are involved in closing a case. By using a
case workflow, you can automate systems to simplify your processes, track task completion, and
accelerate case resolution.
To learn more about case workflows, see Configure proactive case flows.

Case types
A case type is a collection of data and processes that are needed to resolve a specific type
of issue. For example, case types are needed when a company has different processes for
supporting customers across multiple departments, business units, or products. By using a case
type, you can separate these processes through case applications that support each process.
To learn more about case types, see Customer Service Case Types.

Service definitions
A service definition refers to a specific type of service request that your agents can offer to
customers for a case type. Service definitions establish a connection between the products,
services, and case types so agents and customers can quickly access the relevant case types by
the customer or product.
To learn more about the service definitions, see Service definitions.

Playbooks
Playbooks provide agents with a visual guide, including step-by-step guidance for the various
tasks that the agents can use to resolve the specific type of customer service cases. A playbook
helps to improve agent productivity and your customer experience by digitizing and automating
complex customer service processes.
To learn more about playbooks, see Playbooks for Customer Service Management.

Major issue management
With major issue management, you can efficiently manage your customer communication
and resolution process for a major issue that impacts multiple customers. By identifying other
affected customers who haven’t reported the issue, you can proactively create cases, notify the
affected customers, and manage all the issues until resolution.
To learn more about major issue management, see Major issue management overview.

Customer project management
With customer project management, your company can track and manage long-term complex
projects, resolve issues, and track the cost of serving customers on complex projects. Customer
project management helps your company to improve the customer experience, reduce inbound
calls, and lower costs.
To learn more about customer project management, see Integrate with Customer Project
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

22


<!-- page 23 -->
Intelligence
Use the Intelligence solutions for the Customer Service Management application to access
machine learning frameworks, search and automation functions, and natural language
processing to automate and enhance your agent and customer experience.

Intelligence solutions
Intelligence solutions use artificial intelligence (AI) to support machine learning and natural
language understanding (NLU) capabilities.
Artificial intelligence
Several Customer Service Management applications use an artificial intelligence
layer as a framework for machine learning models to interpret language and predict
the best resolution for cases. Examples include Predictive Intelligence, Task
Intelligence, and Document Intelligence. Artificial intelligence is the foundation of
machine learning and natural language understanding frameworks.
Machine learning
Machine learning solutions for Customer Service Management help with case
creation, case assignment, and case resolution.
Natural Language Understanding
Natural Language Understanding
helps with features such as sentiment analysis,
which analyzes customer interactions for positive, negative, or neutral tone.
NLU can also interpret customer intent when interacting with a virtual agent to
automatically fulfill requests. For example: a customer asks "I need access to
the XYZ environment", and NLU interprets "Grant access" as the intent and "XYZ
environment" as the entity.

Task Intelligence for Customer Service
The Task Intelligence for Customer Service application offers you several AI capabilities. You can
use language detection, record categorization, Sentiment Analysis, and Document Intelligence to
automate your routine tasks across a case's life cycle. These capabilities also enable your agents
to focus on resolving complex cases.
To learn more about Task Intelligence, see Task Intelligence for Customer Service.

Recommended Actions application for Customer Service Management
By using the Recommended Actions application for Customer Service Management, you can
configure and display the relevant, recommended actions for your agents. These actions are
based on the context of the record. Your agents can quickly follow these recommended actions
to assist customers and to resolve issues.
The following example shows the recommended actions on the case record. The panel offers the
agent options to assist with a home loan application, such as getting a credit report, determining
eligibility, and gathering documents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

23


<!-- page 24 -->
Recommended Actions contextual side panel

To learn more about Recommended Actions, see Recommended Actions application.

Predictive Intelligence for case management
You can assist your agents when they are creating cases by limiting the amount of information
that they have to enter. For example, an agent only has to enter a short description of the case.
Based on the agent's input in the short description field, Predictive Intelligence predicts the
category, priority, and assignment group, routing the case to the correct queue.
To learn more about Predictive Intelligence, see Predictive Intelligence for case management.

Guided Decisions for Customer Service Management
You can resolve complex cases faster and more efficiently by guiding your agents through a
structured troubleshooting process.
Guided Decisions is a decision tree authoring and execution capability in the Customer Service
Management application. Use Guided Decisions to guide agents through troubleshooting
processes that are based on case context. These processes ask a series of questions and
agents provide answers. Based on those answers, agents receive guidance on the next steps to
take in the resolution process.
Guided Decisions can help customer service agents by offering step-by-step dynamic guidance
as they work to resolve customer issues. This assistance with case resolution can improve agent
productivity and customer satisfaction and can help companies in meeting business outcomes.
The key benefits include:
• Reduce manual errors by setting up standard processes as decision trees.
• Improve agent productivity by embedding decision trees in recommended actions and
playbooks and surfacing relevant actions based on a customer’s situation.
• Increase customer satisfaction with consistent agent processes and responses.
• Improve first contact resolution by guiding agents along the optimal path to resolve complex
cases.
To learn more about Guided Decisions, see Configuring Guided Decisions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

24


<!-- page 25 -->
Analytics and insights
Use the Performance Analytics applications for Customer Service Management to report your
customer service performance and effectiveness. You can use the predefined key performance
indicators (KPIs) and preconfigured role-based dashboards for monitoring your customer service
processes. These analytics enable you to align your organizational goals across all roles, from
executive to manager to agent.

Performance Analytics dashboards
By using the preconfigured Performance Analytics dashboards, you can provide your customer
service managers with deep insights into how they can visualize the data over time, analyze the
business processes, and identify areas of improvement.
The following example shows a Performance Analytics dashboard with profitability and support
trends for the month.
Customer Service Executive dashboard

To learn more about the Performance Analytics solutions, see Customer Service Platform
Analytics Solutions.
To learn more about the different Performance Analytics plugins and what they provide, see
Additional plugins for Customer Service Management.

Optimization
Optimize your processes by using the Customer Service Management application. You can
analyze which processes are relevant to your key performance indicators (KPIs), identify the
bottlenecks for your customer service cases, learn how to optimize your workforce, and manage
your teams more efficiently.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

25


<!-- page 26 -->
Process mining
By mining your processes, you can quickly analyze and improve the root cause of the
inefficiencies. A process mining content pack has been built exclusively for the Customer
Service Management application. This content pack helps you to analyze your cases and create
process maps. With a process map, you can review the case records and find the performance
issues. After finding some improvement opportunities, you can create initiatives to track the
progress to ensure that an issue doesn’t happen again in the future. You can also analyze your
process maps by using variables like Location, Product, Priority, Category, Resolution code, and
Assignment group.
Process mining enables you to do these tasks:
• Visualize your process execution and resolve underlying issues.
• Automatically discover and create process maps for your KPIs and conduct a root cause
analysis.
• Use process maps that were built by using audit log data to identify your bottlenecks,
redundancies, and opportunities for automation.
• Replace time-consuming manual analysis and costly consultants with automated data-driven
process maps.
The following diagram shows the benefits of Process Mining, including creating process maps,
analyzing bottlenecks, and finding new areas of improvement and automation.
Process mining steps

Key Features of process mining include:
Dashboard and insights
You can drill down into the process KPIs that are most important to your business.
You can get the insights into the process inefficiencies that are discovered by the
process model. The top identified case inefficiencies across all organizations are:
• Idling time: The time that it takes for assigned cases to move to Work in progress.
• Resolution rejected: Cases where a solution has been proposed by the agent but
for some reason is rejected by the customer.
• Reassignments: Cases where the assignment group change happens at least
twice.
• Resolution efficiency: Cases where there’s a significant time gap between the
Work In Progress and Resolved cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

26


<!-- page 27 -->
• Assignment efficiency: Cases where the time to assign a case is longer than
usual.
• Undesirable transition: Cases that go from Work in progress to Work in progressawaiting info.
Automated root cause analysis and clustering
You can investigate where and why inefficiencies happen in the process. You can
get insights on the leading influencers for the analyzed process steps and discover
the hidden connections and influencing factors in the process data.
Multi-dimensional mining
You can link the different related processes to visualize in one graph.
Business process flow creation
You can use the case data in audit trails to perform an in-depth analysis and
discover the process insights that can improve your business outcomes.
For more information about enabling the Process Mining content pack, see the following topics:
• Activate Process Mining Content Packs

.

• Integrating with Process Mining.

Workforce Optimization
The Workforce Optimization for Customer Service application manages and maintains
the productivity of your workforce. With the Workforce Optimization for Customer Service
application, you can efficiently route work to your team, manage your team's skills and
schedules, and monitor your team's performance.
The Workforce Optimization for Customer Service application is configurable and can be
customized to fit your service objectives.
The advantages of Workforce Optimization for Customer Service include:
• Improve the quality, efficiency, and satisfaction of your teams.
• Support skill growth and smart scheduling for your team.
• Get real-time and historical snapshots of your team's performance.
• Onboard, coach, and train workflows to develop and grow your team members.
• Focus on all engagement channels and provide real-time help to your team members so that
they can provide a better customer experience.
• Capture all the relevant data and apply these insights and guidance to your team.
To learn more about the Workforce Optimization for Customer Service application, see Workforce
Optimization for Customer Service.

Configuring Customer Service Management
Set up the features, components, and integrations that you must provide service and support to
your customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

27


<!-- page 28 -->
Set up your environment

Organize agent
workspaces

Enable communication
channels

Configure intuitive
workspaces with advanced
routing and management
features and case
management capabilities.

Set up customer
communication channels,
including voice, email,
web, and messaging.

Implement intelligence

Set up self-service

Extend capabilities

Set up Intelligence features
to automate routine tasks
and provide recommended
content to agents.

Create self-service portals
for customers that are
integrated with knowledge,
communities, service
catalogs, and chatbots.

Add additional features
to further extend the
capabilities of your
Customer Service
Management environment.

Plan and configure your
CSM environment, import
foundational data, and set
up access management.

Configuring Customer Service Management overview
Implementation phase

Set up your environment

Organize agent workspaces

Description

Begin your customer journey
by setting up your Customer
Service Management
environment. This setup
involves planning and
configuring your system with
essential components such
as data models, customer
data, product data, and
user management tools.
Additionally, import your
foundation data, set up
access controls, and configure
case management tools to go
live.
Configuring your agent
workspaces is crucial for
improving the efficiency
and effectiveness of your

Example

Sarah, an administrator at
Company A, has successfully
activated Customer Service
Management along with all
necessary plugins. The next
step is to start importing the
foundational data, such as
accounts, contacts, users, and
groups.

Sarah is prepared to organize
the agent workspaces.
Sarah uses guided setup
to implement Configurable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

28


<!-- page 29 -->
Configuring Customer Service Management overview (continued)
Implementation phase

Enable communication
channels

Implement Intelligence

Set Up Self-Service

Description

Example

customer service team. To get
started, set up and optimize
your agent workspaces by
configuring interfaces, landing
pages, and record pages. This
process involves setting up
case routing, implementing
advanced case management
features. It also includes
integrating agent tools
for smooth case handling
and streamlined workflow
management.

Workspace for Company A's
customer service agents. It
enables Sarah to configure
branding, chat settings, and
other necessary elements to
enhance agent productivity.

To facilitate seamless
customer interactions
across various platforms,
it’s essential to set up
and configure multiple
communication channels.
This approach confirms that
customers can reach your
service through their preferred
methods, enhancing their
overall experience. Set up
and configure a variety of
communication channels
to facilitate customer
interactions. Such methods
include voice, email, chat,
web, messaging, phone,
engagement messenger, and
omnichannels.
Implementing intelligence
features in Customer Service
Management helps you
achieve a quicker and more
personalized customer
experience. Set up these
features to automate routine
tasks and deliver relevant
content to you, helping you to
focus on more complex case
resolutions.
Creating and enabling a
self-service portal equips
you to resolve issues
independently and access

With the agent workspaces
organized, Sarah is prepared
to set up communication
channels, including chat,
email, phone, and social
media. Sarah has chosen to
use Engagement Messenger
to integrate customer support
capabilities via chat on
Company A's website.

Sarah implements
Recommended Actions to
guide agents in assisting
customers quickly and
consistently. Agents can use
AI search for fast access to
relevant information to resolve
customer issues.

Now it’s time to add support
for B2C consumers with
Customer Service Portals.
Customers can book
appointments, access

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

29


<!-- page 30 -->
Configuring Customer Service Management overview (continued)
Implementation phase

Extend Capabilities

Description

Example

information. Set up selfservice portals by integrating
features such as knowledge
bases, communities,
service catalogs, chatbots,
walk-up experiences, and
appointment booking.

knowledge base articles, or
join user communities.

To extend your Customer
Service Management
environment, integrate
additional applications and
features. This expansion
broadens your system’s
functionality, enhances
process management, and
improves support tasks. As a
result, you experience more
efficient interactions and
better overall support.

Sherry, a director at Company
A, asks Sarah for tools to
analyze agent performance
and customer interactions.
Sarah begins configuring
Performance Analytics for
Company A’s ServiceNow
instance.

Set up your environment
Begin your customer journey by preparing your Customer Service Management environment
with data models, customer data, product data, user management, and case management tools
to go live.

Getting started

Customer data

User management

Activate Customer Service
Management, and import
your foundation data.

Configure customer
data, such as accounts,
contacts, and consumers.

Create and manage data
for internal users, such
as managers, agents,
and support groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

30


<!-- page 31 -->
Product data

Data models

Configure product
data including product
models, sold products,
install base items, and
installed products.

Create and manage data
models for Customer
Service Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

31


<!-- page 32 -->
Set up environment overview

Getting started
Start by activating the Customer Service Management plugin and importing your
foundation data to establish a solid framework. This approach helps you to plan
and install any additional plugins you need, securing a well-integrated and effective
system for optimal performance. Activate the CSM plugin and foundation data to
establish a robust framework. It facilitates efficient plugin planning and installation,
confirming a well-integrated system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

32


<!-- page 33 -->
Customer data
Configure customer data in Customer Service Management, including details
about accounts, contacts, and consumers to confirm comprehensive information
capture. This setup confirms that all the relevant customer and account information
is captured.
User management
Create and manage user data for internal users such as managers, agents, and
support groups, as well as external users. Configure their access to features,
capabilities, and case data in Customer Service Management features and case
data. This setup helps establish relationships that streamline case management
and enhance support roles for accounts, leading to better efficiency and
effectiveness in handling customer interactions.
Product data
Configure product data to streamline Customer Service Management including
product models, sold products, install base items, and installed products. This
setup helps you quickly access relevant details, resolve issues more effectively, and
improve overall service by providing a clear view of product status and history.
Data models
Create and manage structured and flexible data models in Customer Service
Management to meet industry needs, with organized data, accurate interactions,
and seamless adaptability.

Getting started with Customer Service Management
Activate the Customer Service plugin and plan your Customer Service Management
implementation by installing additional plugins.
Activating plugins and foundation data
Task

Description

Activate Customer Service Management

As an admin, activate the Customer Service
plugin (com.sn_customerservice). This plugin
includes demo data and activate related
plugins.

Plugins activated with Customer Service
Management

Refer the list of related CSM plugins that are
activated after activating the Customer Service
plugin.

Additional plugins for Customer Service
Management

Refer the list of additional CSM plugins that
you can activate after activating the Customer
Service plugin.

Customer Service properties

Customize settings for several different
features, including email communication,
asset contact relationships, and the Consumer
Service Portal.

Configure foundation data

Import customer information including names,
addresses, and phone numbers; accounts,
contacts, consumers, users, groups, group
members, product models, and assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

33


<!-- page 34 -->
Activating plugins and foundation data (continued)
Task

Description

Assign roles to groups or to individual users.
Create service contracts and entitlements.
Create customer relationships, asset
relationships, and account teams.
Activate Customer Service Management
You can activate the Customer Service (com.sn_customerservice) plugin, if you have the admin
role. This plugin includes demo data and activates related plugins if they aren’t already active.

Before you begin

Role required: admin

About this task

If the related plugins aren’t already active, the Customer Service Management plugin activates
them. For more information, see Plugins activated with Customer Service Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

What to do next

You can activate several related plugins after activating the Customer Service Management
plugin (com.sn_customerservice). For details, see Additional plugins for Customer Service
Management.
Plugins activated with Customer Service Management
The Customer Service plugin activates several related plugins, if they aren’t already active.
Plugins automatically activated with Customer Service
Plugin

Description

Assessment

Enables you to create surveys, send surveys, collect
responses, and analyze and share survey results.

[com.snc_assessment_core]
Asset Management

Manage your assets, consumables, and software
licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

34


<!-- page 35 -->
Plugins automatically activated with Customer Service (continued)
Plugin

Description

[com.snc.asset_management]
Assignment Workbench
[com.snc.assignment_workbench]
CSM Workspace
[com.snc.agent_workspace.csm]
Customer Service Base Entities
[com.snc.cs_base]
Customer Service Portal Classic
[com.glide.service-portal.customerportal]
Customer Service Social Integration
[com.sn_cs_social]
Customer Service Spoke
[com.snc.customer_service.spoke]
Glide Conversation Server
[com.glide.cs]
Many to many task relations
[com.snc.task_relations]
OpenFrame
[com.sn_openframe]

Customer service managers can use the workbench to
evaluate agents based on configurable criteria, such
as skills and availability, and then assign tasks to the
desired agents.
Supports various functions required by customer
service agents in the workspace user interface.
Provides granular access control through relationships,
user profile attributes, and roles.
This plugin enables the Customer Service Portal, a
version of the web portal based on the Service Portal
application.
Adds the appropriate data schema changes for social
integration scenarios.
Provides actions for flow designers to use when creating
Customer Service Management business processes.
Enables the Virtual Agent web clients, Connect Support,
conversation branding settings, and Live Agent
conversation settings.
Enables the definition of relationships between different
tasks.
An interface used to integrate external communication
systems with the ServiceNow AI Platform. This plugin
provides a UI frame that is accessible and available
anywhere within ServiceNow application screens.
The Customer Service Management application uses
a combination of Computer Telephony Integration
(CTI) and OpenFrame to provide phone support for
customers.

Process Flow Formatter

Displays a diagram of the process flow for a form.

[com.snc.process_flow_formatter]
Resolution Shaper
[com.sn_resolutionshaper]

Provides a visual display of activities and state changes
of any task-based entity, such as a customer service
case, at the top of the form view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

35


<!-- page 36 -->
Plugins automatically activated with Customer Service (continued)
Plugin

Description

Resource Matching Engine

A general rule-based matching engine to match an input
record to an output record using a condition builder
and/or a script for advanced users.

[com.snc.matching_rule]
Skills Management
[com.snc.skills_management]

Special Handling Notes
[com.sn_shn]
State Flows

Enables you to organize skills data of service agents
and employees in a centralized location. You can use
this data to assign tasks based on skills and analyze
skill gaps to identify coaching and training needs. You
can also use it to optimize your workforce, create career
growth plans, and perform skill-based hiring.
Activates the Special Handling Notes application, which
enables you to view brief messages about records
quickly. These notes can appear in an embedded or
related list on a record form, or in a pop-up window.

[com.snc.state_flows]

Customize transitions from one state to another in
tables derived from the Task [task] table and configure
the system to perform work during transitions to specific
states.

Subscriptions and Activity Feed
Framework

Provides a generic set of artifacts to handle
subscriptions for any defined subscribable object.

[com.snc.activity_subscriptions]

Any entity can be defined as a subscribable object
and a set of subscribers can subscribe to the objects.
When an event occurs related to the subscribable
object, activities can be tracked and subscribers can be
notified.

Task Activities

Enables support for activities on task tables.

[com.snc.task_activity]
Virtual Agent Service Portal Widgets
[com.glide.va.sp_widgets]

Activates the Service Portal for use as a Virtual Agent
web client.

Additional plugins for Customer Service Management
After Customer Service Management is activated, you can activate additional plugins that
provide demo data and enable various features.
You must have the admin role to activate these additional plugins. For details, see Activate a
plugin .
Customer Service Management plugins and descriptions
Plugin

Description

Agent Schedule

Enables customer service agents and field service
technicians to see work schedules and assignments
and also add personal events such as meetings or
appointments.

[com.snc.agent_schedule]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

36


<!-- page 37 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

Case Assignment Workbench Demo

Provides demo data, such as sample cases and users,
so that the Assignment Workbench product features
[com.snc.case_assignment_workbench_demo]
can be demonstrated on a non-production instance.
Case Digests
[com.sn_csm_case_digest]
Consumer Service Portal
[com.glide.service-portal.consumerportal]
CSM Configurable Workspace
[sn_csm_wrkspc]
Customer data models for B2B2C
[com.sn_csm_b2b_consumers]

Enable you to send case status updates and root cause
analysis to customers and key internal stakeholders.
This plugin enables the Consumer Service Portal,
a web-based portal based on the Service Portal
application that you can use to provide information and
support to consumers.
Enables CSM Configurable Workspace, the UI Builder
version of the configurable service desk application,
that provides agents with an integrated and intuitive
user experience.
Enables business-to-business (B2B) consumers to raise
a case and track the services they’re subscribed to. In a
B2B model, consumers represent individuals who can
be customers or employees of your customer.

Note: You must activate the Customer Service
Install Base Management [com.snc.install_base]
plugin before installing Customer data models
for business-to-business-to-consumer (B2B2C)
[com.sn_csm_b2b_consumers] plugin.
CSM Contributor User
[com.snc.csm_contributor_user]
CSM Data Classification
[sn_csm_dataprivacy]

CSM Extension for Proxy Contacts
[com.snc.csm_proxy_contacts]
CTI Softphone
[com.snc.cti]

Enable contributors to report and collaborate on
cases created for customers, service organizations, or
themselves.
Package the CSM Data Privacy templates in a new
store application called CSM Data Classification. The
CSM Data Classification plugin depends on the base
Customer Service [com.sn_customerservice] plugin and
Data Privacy (com.glide.data_privacy) platform plugin.
Enable users who are internal to an organization to be
the proxy case contact on behalf of customers.
This plugin is a demo application that enables
Twilio integration using the Notify application and
OpenFrame to provide soft phone functions and
call center capabilities. The application includes
the capabilities to make, receive, transfer, hold, and
mute calls. The Customer Service Management and
Incident Management applications provide Computer
Telephony Integration (CTI) demo workflows. Activate
the respective applications to run the workflows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

37


<!-- page 38 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

If the related plugins aren’t already active, the CTI
Softphone plugin activates them:
• Resource Matching Engine
(com.snc.matching_rule): Provides a tool for rulebased task-to-resource matching.
• Notify (com.snc.notify): Provides platform features
for workflow-driven voice calls, conference calls, and
SMS messages.
• Notify-Twilio Driver (com.snc.notify.twilio): Provides
Notify support for the Twilio product. Requires
a separate contract with Twilio for SMS/Voice
capabilities.
• OpenFrame (com.sn_openframe): Provides an
interface that can be used to integrate external
communication systems with the ServiceNow AI
Platform.
Customer Central
[com.sn_csm_customer_central]
Customer Communities
[com.sn_customer_communities]
Customer Project Management
[com.snc.csm_ppm]
Customer Service Case Action
Status
[com.snc.csm_action_status]
Customer Service Case Types

Enables customer service agents to access all customer
information and activity in a single, centralized view on
Agent Workspace.
Enable you to connect, engage, and collaborate with
employees, customers, partners, and prospects.
Available to customers who are licensed for Customer
Service Management.
Provides the ability to create and manage projects for
a customer account and gives end users visibility into
their projects via the portal. This plugin requires the
Customer Service plugin and the PPM Standard plugin.
Provides a Customer Service-specific application of
the Action Status Automation feature. Use this plugin to
display and track blocking tasks for customer service
cases.

[com.snc.csm_case_types]

Enables customers to manage complex case processes
by defining new case types. A case type represents
an individual business process and is a collection of
diverse inputs and tasks that an agent performs to
resolve customer requests.

Customer Service CTI Demo Data

Provides demo data for the CTI Softphone application.

[com.snc.customerservice_cti_demo]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

38


<!-- page 39 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

Note: Starting with the Yokohama release,
Customer Service CTI Demo Data is being
prepared for future deprecation. It’s hidden and no
longer activated on new instances but it continues
to be supported. ServiceNow Voice with Amazon
Connect provides the latest experience for this
functionality.
For details, see the Deprecation Process
[KB0867184]
article in the Now Support
Knowledge Base.
Customer Service Document
Template

Enables you to configure the fields from a table record
that are included in an output document.

[com.sn_csm_doc_template]
Customer Service Household
[com.snc.household]
Customer Service Install Base
Management

Enables managing customer service for consumers
belonging to the same household. Provides the ability
to define the members of a household and relationships
between them.

[com.snc.install_base]

Enables customers to capture the current state of a
customer's install base and establish the relationship
to any downstream entities that might impact their
functioning.

Customer Service Management
Demo Data

Provides demo data for the Customer Service
Management application.

[com.snc.customerservice.demo]
Customer Service Mobile
[com.sn_csm_mobile]
Customer Service NLU Model for
Virtual Agent Conversations
[com.sn_csm.nlu]
Customer Service Virtual Agent
Conversations
[com.sn_csm.virtualagent]
Customer Service with Field Service
Management
[com.snc.csm_fsm_integration]

Enables the mobile user interface for Customer Service
Management.
This plugin contains natural language understanding
(NLU) models used in the VA topics for Customer
Service related use cases.
This plugin contains prebuilt template conversation
topics for CSM-related use cases. They’re intended to
be copied and configured.
This plugin provides an integration between the
Customer Service Management and Field Service
Management applications. Customers and consumers
can view case-related work orders from the Customer
Service and Consumer Service Portals. In the Field
Service Management application, you can view account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

39


<!-- page 40 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

and contact information on work orders and work order
tasks.
Customer Service with Request
Management
[com.sn_cs_sm_request]
Customer Service with Service
Management
[com.sn_cs_sm]
Customer Service with Service
Portfolio Management

Provides an integration between Customer Service
Management and the Request Management
application. Enable you to create request records from a
Customer Service case.
Provides an integration between Customer Service
Management and the Incident, Problem, and Change
Management applications. Enable you to create
incident, problem, and change records from a Customer
Service case.

[sn_csm_spm]

Provides an integration between the Customer Service
Management and the Service Portfolio Management
(SPM) application. This integration gives customer
service managers, customer service agents, and service
owners visibility into sold products and their service
offerings.

Incident Assignment Workbench
Demo

Intelligent agent recommendation through dynamic
matching rules/criteria.

(com.snc.incident_assignment_workbench_demo)
Guided Decisions
[com.snc.guided_decisions]
Guided Decisions - Guidance
[com.snc.guided_decisions_guidance]

Enables the framework and execution engine for
creating guided decisions.
Enables the framework for creating guidance for guided
decisions.

Guided Decisions for Playbook in
Workspace

Enables activity types, definitions, and UI components
for the display of guided decisions in a playbook on
Workspace.
[com.snc.guided_decisions_playbook_experience]
Knowledge Product Entitlements
[com.snc.kb_product_entitlements]

This plugin enables customer service administrators
to restrict customer access to designated knowledge
bases and knowledge articles on the customer selfservice portal.
This plugin adds the Knowledge Product Entitlements
menu to the application navigator.

Major Issue Management
[com.sn_majorissue_mgt]
Outsourced Customer Service
(com.snc.csm_ocs)

A set of capabilities used to manage customer-facing
communications and resolution processes for common
issues.
Enables organizations to outsource customer service to
external service providers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

40


<!-- page 41 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

Performance Analytics - Content
Pack - Customer Service

Performance Analytics content pack that includes
Customer Service base system KPIs.

[com.snc.pa.customer_service]
Performance Analytics - Content
Pack - Customer Service
Management - Advanced

Updates the Customer Service dashboard and
incorporates indicators for the following plugins:
• Major Issue Management

[com.snc.pa.customer_service_advanced]
• Customer Service Case Action Status
• Customer Service with Request Management
• Customer Service with Service Management
• Agent Chat
• Advanced Work Assignment for CSM
• Performance Analytics - Content Pack - Advanced
Work Assignment
Activate these plugins to view the related indicators.
Without these plugins, indicators might not display
correctly.
Performance Analytics - Context
Sensitive Analytics for Customer
Service

This plugin enables you to open context-sensitive
dashboards in customer service forms based on UI
actions.

[com.snc.pa.cs.context_sensitive_analytics]Note: You can activate Performance
Analytics solutions on instances that don’t
have Performance Analytics to evaluate the
functionality. However, to collect scores for
indicators you must license Performance Analytics.
Performance Analytics Premium for
Customer Service

Installing this plugin removes the limitations of the out of
box Performance Analytics.

[com.snc.pa.premium.cs]
Playbooks for Customer Service
Management

Provides step-by-step guidance for customer service
cases.

[sn_csm_playbook]
Predictive Intelligence for Customer
Service Management
[com.snc.csm_ml]

Enables customers to leverage machine learning
algorithms for searching related cases in Customer
Service Management. Activation of this plugin on
production instances might require a separate license.
Contact ServiceNow for details.
If they aren’t already active, the Predictive Intelligence
for Customer Service Management plugin activates
these related plugins:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

41


<!-- page 42 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

• Customer Service plugin (com.sn_customerservice)
• Predictive Intelligence for Contextual Search plugin
(com.snc.contextual_search_ml)
• Email Notification Script for Contextual Search Results
plugin (com.snc.adv_cxs_results_email_script)
Self-Service Analytics for Customer
Service

Tracks case reduction (deflection) metrics and selfservice KPIs using performance analytics dashboards.
Activation of this plugin on production instances might
[com.snc.pa.self_service_analytics_csm]
require a separate Performance Analytics license.
Contact ServiceNow for details.
If they aren’t already active, the Self-Service Analytics
for Customer Service plugin activates these related
plugins:
• Customer Service plugin (com.sn_customerservice)
• Self-Service Analytics Core plugin
(com.snc.self_service_analytics_core)
• Self-Service Analytics PA plugin
(com.snc.pa.self_service_analytics)
Self Service Password Reset
[com.snc.password_reset]

This plugin enables locally authenticated users to
request a temporary password if they forget their current
one. Customer contacts can request a new password
from the customer self-service portal.
If it isn’t already active, the Self Service Password
Reset plugin activates the Password Reset plugin
(com.glideapp.password_reset).

Special Handling Notes Demo Data
[com.snc.shn_demo]
Targeted Communications
[com.sn_publications]
Targeted Communications Demo
Data

Provides demo data for the Special Handling Notes
application.
Provides a tool for publishing and distributing content
and articles to both internal and external customers.
Provides demo data for the Targeted Communications
application.

[com.snc.publications_demo]
Time Recording for Customer
Service
[com.snc.csm_time_recording]

Extends the functionality of the Time Card Management
and Cost Management applications to Customer
Service Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

42


<!-- page 43 -->
Customer Service Management plugins and descriptions (continued)
Plugin

Description

Walk-Up for CSM

Walk-up experience for Customer Service enables instore support to assist onsite check-ins, managing
queues, and customer interactions.

[com.snc.walkup_for_csm]

UI Components for Customer Portals This plugin enables you to configure the behavior,
[sn_ciwf_ui_cmpnt]
content, and layout of a portal using a Configurable
Portal Widgets.
Customer Service properties
Use system properties to customize the Customer Service Management application.
These properties control settings for several different features, including email communication,
asset contact relationships, and the Consumer Service Portal.
To access these properties, navigate to Customer Service > Administration > Properties.
You can also access Customer Service Management properties using the system property
[sys_properties] table. Start by entering sys_properties.list in the application navigator and
pressing Enter. You can then filter the properties by application.
Related topics
Properties installed with Customer Service Management
Components installed with additional plugins for Customer Service Management
Configure foundation data
With Customer Service Management, you can import or create customer information including
names, addresses, and phone numbers; account details; products and assets; and service
contracts. You can also assign roles to users and create customer relationships.

Before you begin

Role required: admin

About this task

Foundation data includes the data that you must configure to support your customers, including
information about:
• Customers (external users)
• Customer relationships
• Users (internal users such as agents and employees)
• Customer and user roles
• Products and assets
• Service contracts and entitlements
You can import and configure most of this foundation data using the Customer Service
Management guided setup. This feature takes you through the entire setup and configuration
process.
To create data, such as adding new accounts and contacts, you can use the Customer Service
Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

43


<!-- page 44 -->
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
The guided setup reopens with a page of different categories of Customer Service
Management features that you can configure.
3. In the Foundation Data category, select Get Started.
The Foundation Data page opens with a list of tasks to configure the different types of
customer information.
4. To perform a task, select Configure.
Foundation Data configuration tasks
Task

Description

Import Accounts

In the business-to-business (B2B) model, an
account is a supported external customer.
Import and verify existing account data. For
more information, see Import accounts and
contacts with guided setup.

Note: After importing customer
account data, you must also set the
account code system property.
Import Contacts (B2B)

A contact is a user who is an employee of an
account. Import and verify existing contact
data. For more information, see Import
accounts and contacts with guided setup.

Import Consumers (B2C)

A consumer is a customer in the businessto-consumer (B2C) business model. Import
and verify existing consumer data. For more
information, see Import consumers with
guided setup.

Import Users

A user is an individual who can access your
instance. Import and verify existing user data.
For more information, see Configure users
and groups.

Import Groups

A group is a set of users who share a
common purpose. Import and verify existing
group data. For more information, see
Configure users and groups.

Import Group Members

The users associated with a group are listed
as group members. Import and verify existing
group member data.

Assign Roles

Roles control access to features and
capabilities. The Customer Service
Management application provides two types
of roles:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

44


<!-- page 45 -->
Task

Description

◦ Internal roles for agents and managers
◦ External roles for customers, customer
partners, and consumers
Assign the necessary roles to internal and
external users. For more information, see
Assign roles to CSM users.
Create Customer Relationships

Create relationships between partners,
contacts, and customers to make account
and asset management easy and flexible.
For more information, see Create customer
relationships.
You can create the following types of
relationships:
◦ Bi-directional account relationships
◦ Account hierarchy
◦ Contact relationships

Import Product Models

A product is a type of good or service that
your company sells and supports. Product
models identify different types of products,
such as service, hardware, software, or
consumables. For more information, see
Import product models with guided setup.

Import Sold Products

Sold products are products and components
that have been sold to an account or a
consumer. Importing sold products provides
an overview of the complete product sold
to an account or consumer. For more
information, see Import sold products with
guided setup.

Create product model and catalog items
relationships

Enable self-service for customers to
request services on products by creating
relationships between product models and
catalog items. For more information, see
Configure product model and catalog item
relationships.

Import Install Base Items

Install base items represent the instances
that have been configured for a customer.
Each install base item references the
configuration item record for the customer.
For more information, see Import Install base
items with guided setup.

Import Installed Products

Installed products create an association
between sold products and install base
items. Installed products also provide
information on the sold products and how
they’re deployed or installed. For more

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

45


<!-- page 46 -->
Task

Description

information, see Import installed products
with guided setup.
Import Assets

An asset is a specific product or instance
that is supported for a customer. There are
different types of assets and Information for
each type of asset is stored in a different
table. For more information, see Import
assets with guided setup.

Create Asset Contact Relationships

Assign assets to the customer contacts who
are responsible for managing those assets. If
desired, enable a property that limits access
to asset information to just the assigned
contacts. For more information, see Create
asset contact relationships.

Create Service Contracts

A service contract contains information
about the type of support that is provided
to a customer and can include coverage for
specific assets. It can also include multiple
service entitlements and service-level
agreements (SLAs). For more information, see
Create service contracts.

Create Entitlements

An entitlement defines the type of support
that a customer receives as well as the
supported communication channels.
Entitlements are counted and tracked using
two types of units: cases and hours. For more
information, see Configure entitlements.

Create Account Teams

Account teams are made up of employees
who fulfill specific jobs or roles for a
particular account. Create these roles, or
responsibility definitions, and then assign
them to employees and contacts. For more
information, see Creating an account team.

Customer data
Customer data for Customer Service Management (CSM) consists of information about people
who aren’t part of your organization, including accounts, contacts, consumers, and households.
Accounts
An account is a customer or a partner who sells to and supports other customers.
Accounts can be customer accounts, partner accounts, or both, and their
information is stored in the Account [customer_account] table.
There are two types of accounts: customer accounts and partner accounts.
• A partner is a supported external customer that sells to and supports other
customers. A partner can report and manage cases on behalf of customers. A
partner can also be a customer.
• An account can be a customer account, a partner account, or both. The Customer
and Partner fields on the Account form denote the account type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

46


<!-- page 47 -->
Contacts
A contact is an employee of an account and can be associated with only one
account. Contacts can have multiple assets and service contracts and can log in to
the Customer Service Portal.
Contact information is stored in the Contact [customer_contact] table.
Consumers
In the business-to-consumer (B2C) model, consumers are customers, and their
information is stored in the Consumer [csm_consumer] table.
Households
A household is a group of consumers who live at the same address and share
products and services. A household can have a designated head of household
and multiple current members. The head of household has access to all cases and
information for the other household members.
Household information is stored in the Household [csm_household] table.
Configure accounts and contacts
An account is a supported external customer and a contact is a user who is an employee of an
account.

Before you begin

Role required: admin

About this task

There are two types of accounts: customer accounts and partner accounts. The Customer and
Partner fields on the Account form denote the account type. An account can be a customer
account, a partner account, or both.
A partner is a supported external customer that sells to and supports other customers. A partner
can report and manage cases on behalf of customers. A partner can also be a customer.

Note: After importing customer account data, you must also set the account code system
property.
An account can have multiple contacts but a contact can be associated with only one account. A
contact can have one or more associated assets and service contracts. A contact can also have
a user ID and can log in to the customer portal.

Note: A contact is a user in the system. If you create a contact, that person is also added
to the User table (sys_user).

Procedure
• You can import existing accounts and contacts using guided setup.
• You can create accounts and contacts using the Customer Service Management application.
Import accounts and contacts with guided setup
Use Customer Service Management guided setup to import existing accounts and contacts.

Before you begin

Role required: admin

About this task

After importing customer account data, you must also set the account code system property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

47


<!-- page 48 -->
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and select Get Started.
2. In the Foundation Data category, select Get Started.
3. Select one of the following:
◦ Import Accounts
◦ Import Contacts
4. Upload data from an external data source into an import set.
5. Create a transform map.
6. Execute the transform map to transfer the data.
7. Verify that the data records are imported into the target table.
Account codes and account paths
An account code is a unique identifier for an account, while an account path establishes the
account hierarchy.

Account codes
An account code is a unique key that identifies an account in a ServiceNow instance. This code
is stored in the Account Code field on the Account form.
An account code must be unique. Attempting to insert a new record with previously existing
account code in the Account [customer_account] table, the value for the code results in the
following error:
java.sql.BatchUpdateException: Duplicate entry for key
account_path

Account paths
An account path establishes the hierarchy among different accounts. This path is stored in the
Account Path on the Account form.
An account path is a combination of the account codes for each account in the
hierarchy. For example, let's use the following accounts to demonstrate account

paths.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

48


<!-- page 49 -->
Example of accounts to demonstrate account paths
Account

Account Code

Boxeo

~~~~1

Account Path

~~~~1
Boxeo is the parent company. The account
path for Boxeo is the same as the account
code, which indicates that it’s the first element
in the hierarchy.

Boxeo USA

~~~~2

~~~~1/~~~~2
Boxeo USA is a child company of Boxeo. The
structure of the account path is interpreted as
Boxeo/Boxeo USA.

Boxeo EMEA

~~~~3

~~~~1/~~~~3
Boxeo EMEA is also a child company of Boxeo
and the structure of the account path is
interpreted as Boxeo/Boxeo EMEA.

Boxeo France

~~~~5

~~~~1/~~~~3/~~~~5
Boxeo France is a child company of Boxeo
EMEA. The structure of this account path is
interpreted as Boxeo/Boxeo EMEA/Boxeo
France.

Importing account records
If you create your account records by importing the data from some source system through a
transform map, make sure that you execute the business rules. The Account Path is added,
updated, and deleted based on the insertion, updating, and deletion of records in the Account
[customer_account] table through the business rules. If the business rules aren’t executed, it can
result in empty account paths, which can then result in data access issues.

Note: If you don’t execute the business rules during import, run the script in the Update
account path business rule for the newly imported records to set the account paths
correctly.
Set the account code property
After importing customer account information, update the

com.snc.cs_base.last.generated.code.tree.path property with the correct
account code value.

Before you begin

Role required: admin

About this task
The com.snc.cs_base.last.generated.code.tree.path system property stores
the Account Code value for the most recently created customer account in the Account
(customer_account) table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

49


<!-- page 50 -->
When you create a customer account record, the system uses this property to generate a unique
account code. The property is then updated with the latest value, confirming the next account
record receives a new unique code.
The value of the com.snc.cs_base.last.generated.code.tree.path property
must match the value of the Account Code field for the last inserted customer account record.
When you create customer account records by importing data from other sources or instances,
these values can get out of synchronization. If these values don’t match, the system generates
an error on the creation of the next new record in the Account table:
java.sql.BatchUpdateException: Duplicate entry for key
account_path
Use the following steps to fix this error.

Procedure
1. Determine the account code for the last created account.
2. Navigate to the System Property [sys_properties] table.
3. Set the com.snc.cs_base.last.generated.code.tree.path property to the
value determined in step 1.
Create customer accounts
An account is a supported external customer. Use the Customer Service Management
application to create account records.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

There are two types of accounts: customer accounts and partner accounts. The Customer and
Partner fields on the Account form denote the account type. An account can be a customer
account, a partner account, or both.
A partner is a supported external customer that sells to and supports other customers. A partner
can report and manage cases on behalf of customers. A partner can also be a customer.

Procedure
1. Navigate to All > Customer Service > Customer and select one of the following actions:
◦ To create a customer account, select Accounts.
◦ To create a partner account, select Partners.
2. Select New and fill in the fields on the Account form.
When a new customer account record is created, the system uses the
com.snc.cs_base.last.generated.code.tree.path system property to
determine a unique account code value for the account. The property is updated with the
latest value to confirm the next account record receives a unique account code.

Note: If the property is reset to its original value, the system might attempt to create
accounts using already assigned account codes, which can result in an invalid insert.
3. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

50


<!-- page 51 -->
Create additional account addresses
An account can have multiple addresses, such as a main address as well as shipping and billing
addresses.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

The main address for an account is stored in fields on the Account form. Shipping and billing
addresses for an account are created and stored in the Addresses related list. An account can
have multiple shipping and billing addresses.

Procedure
1. Navigate to All > Customer Service > Customer > Accounts.
2. Select the number of the desired account.
3. In the Addresses related list, select New.
4. Fill in the fields on the Location form.
5. Select an address type, either Billing or Shipping.
6. Optional: Enable the Primary field.
If you have multiple billing or shipping addresses, use this field to designate one as the
primary address.
7. Select Submit.
Create customer contacts
A contact is a user who is an employee of an account. Use the Customer Service Management
application to create contact records.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

An account can have multiple contacts but a contact can be associated with only one account. A
contact can have one or more associated assets and service contracts. A contact can also have
a user ID and can log in to the customer portal.

Note: A contact is a user in the system. If you create a contact, that person is also added
to the User table (sys_user).

Procedure
1. Navigate to All > Customer Service > Customer > Contacts.
2. Select New and fill in the fields on the Contact form.
3. Enter the contact information, such as the name, email address, and phone number.
4. Enter the name of the contact's company in the Account field.
5. Select the Timezone.
6. Select a Language.
7. Select a Notification setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

51


<!-- page 52 -->
8. Select Submit.
After a registration request is approved, the customer contact receives an email with a user ID
and temporary password. When logging in for the first time, the contact is asked to change the
password.
Create customer relationships
The Customer Service Management application provides the ability to establish different types
of relationships between partners, customers, and contacts.
These relationships make account and asset management easy and flexible. The following table
describes the available customer relationships.
Customer relationships
Relationship

Description

Benefit

Bi-directional account
relationship

Create a relationship
between:

An account relationship
enables partner account
contacts with the partner role
or the partner administrator
role to create and manage
cases for their partner
account.

• A partner account and a
customer account.
• Two customer accounts.
A bi-directional account
relationship is created using a
defined account relationship
type.
Account hierarchy

Create a parent-child
relationship between
accounts.

An account hierarchy enables
an account contact with the
customer administrator role to
manage the child accounts.

Contact relationship

Add a contact from a third
account to either of the
accounts in an account
relationship.

A contact relationship enables
a contact with the customer
role or customer administrator
role to manage the account for
which the contact relationship
has been established.

Account hierarchy
Use the account hierarchy feature to create a parent-child relationship between accounts.
An account hierarchy represents the legal entity structure of the accounts and their
relationships. It also represents an account's customers, assets, and service entitlements.
Customer administrators can do the following for all the accounts in the hierarchy:
• View and create cases.
• View assets and users.
• View and manage contacts.
The administrator defines the hierarchy between accounts on the Account form. From the
Account form for the child account, select the parent in the Parent Account field. If this field isn’t
filled in, the account is a top-level account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

52


<!-- page 53 -->
After the account hierarchy has been defined, it’s displayed on the Account form for the parent
account. If a parent account is updated or deleted, the hierarchy for any child accounts is also
updated.

View the account hierarchy
The account hierarchy uses a tree structure to show the parent, child, and sibling accounts.
Two different views of the account hierarchy are available. In both views, the current account is
highlighted in the account structure.
• The parent view displays the current account, the parent account (if applicable), and any child
or sibling accounts.
• The full view displays the entire structure of the organization from the root account.
Customer service agents can:
• Expand and collapse the tree structure.
• Switch between the parent view and the full view.
• Select an account to open the related Account form.

Account hierarchy in the platform interface
Customer service agents can view account information in the Account Hierarchy section on the
Account form.
Account hierarchy (platform interface)

Create an account hierarchy
Create a parent-child relationship between two accounts.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Customer > Accounts.
2. Select the desired child account.
3. Select the parent for this account in the Parent Account field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

53


<!-- page 54 -->
4. Select Update.
The account hierarchy is displayed in a tree map on the Account form for the parent account.
Bi-directional account relationships
A bi-directional account relationship is a relationship that exists between two accounts. You can
create account relationships between two customer accounts or between a partner account and
a customer account.
A bi-directional account relationship is based on a defined account relationship type. Creating a
bi-directional account relationship is a two-step process that involves:
• Defining the types of relationships that exist between your partners and customers.
• Using these relationship types to create relationship records between selected accounts.
You can view relationship records on the Account form for either account in the relationship.
These records are stored in the Account Relationships related list.
For relationships between a partner account and a customer account, contacts with the Partner
or Partner administrator role can create and manage cases for their customer accounts.

Account relationship types
An account relationship type defines a relationship that can exist between accounts. Users with
the administrator role can define the following account relationship types:
• Account to account
• Partner to account
When creating an account relationship type, you define the following information on the Account
Relationship Type form:
• The type of source account (account or partner).
• The type of target account (account or partner).
• The relationship between the source account and the target account.
• The reverse relationship between the source account and the target account.
Account Relationship Type form

Note: One default account relationship type is provided for partner accounts.
Account relationship records
Once an account relationship type is defined, users with the Customer Service Manager role
can use it to create relationships between specific accounts or partners. An account relationship
record includes the following information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

54


<!-- page 55 -->
• A source account, selected in the Account From field.
• A target account, selected in the Account To field.
• The account relationship type that this relationship record is based on.
• The relationship and the reverse relationship of the selected accounts.
View a relationship record from either account:
• The relationship (Account From > Account To) appears in the Account Relationships related
list on the source account record.
• The reverse relationship (Account To > Account From) appears in the Account Relationships
related list on the target account record.
Select the account relationship record from either account to see the Account Relationship form.
Account Relationship form

You can also view account relationship records that use a specific account relationship type. This
information appears as a related list on the Account Relationship Type form. This list shows the
source account (Account From field) and the target account (Account To field) for each account
relationship record.
Create an account relationship type
Create an account relationship type by defining the types of source and target accounts and
providing a name for the relationship between these accounts.

Before you begin

Role required: admin

About this task

Use the following steps to create an account relationship type.
You can edit an existing account relationship type by changing the types of source and target
accounts and the name of the relationship that exists between these accounts. If that account
relationship type is being used by any account relationship records, the Relationship and
Reverse relationship fields in those records are automatically updated.
You can also delete an existing account relationship type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

55


<!-- page 56 -->
• If there are no account relationship records that use the account relationship type, then it’s
deleted.
• If there are active account relationship records that use the account relationship type, an
attempt to delete that relationship type results in a warning message. Deleting an account
relationship type also deletes the relationship records based on that type.
Account relationship types can be set to inactive at any time.

Procedure
1. Navigate to All > Customer Service > Administration > Account Relationship Types.
2. Select New.
3. Fill in the fields on the Account Relationship Type form.
Account Relationship Type form fields
Field

Definition

Relationship A unique name that identifies the type of relationship. For example, Service
type
Provider.
From

The type of source account for this relationship type; can be either an account
or a partner.

Relationship A text field where you can name the relationship from the source account to
the target account. For example, Service provider for.
To

The type of target account for this relationship type; can be either an account
or a partner.

Reverse
relationship

A text field where you can name the reverse relationship from the target
account to the source account. For example, Customer of.

Active

Sets the account relationship type as active or inactive. Active account
relationship types can be used to create account relationship records.
An account relationship type can be set to inactive at any time.

4. Select Submit.
The new account relationship type appears on the Account Relationship Types list.
Create an account relationship record
Create an account relationship record by selecting the account relationship type and then
selecting the accounts involved in the relationship.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

The administrator can create a relationship record for an account from the Account
Relationships related list on the Account Relationship Type form.
The customer service manager and the administrator can create a relationship record for an
account from the Account Relationships related list on the account or partner record.
Deleting a relationship record for an account also deletes the reverse relationship record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

56


<!-- page 57 -->
Note: Deleting a relationship record doesn’t have any impact on customer service cases
that refer to the relationship record.

Procedure
1. Navigate to All > Customer Service > Customer > Accounts or Partners.
2. Select an account.
3. From the Account Relationships related list, select New.
4. Fill in the fields on the Account Relationship form.
Account Relationship form fields
Field

Definition

Account
From

The source accounts for this relationship. If you’re creating the relationship
from an account or partner record, this field is automatically filled in; otherwise,
make a selection from the Accounts list.

Relationship Select the account relationship type for this record. If you’re creating the
Type
record from an Account Relationship Type form, this field is automatically filled
in. Otherwise, make a selection from the Account Relationship Types list, which
shows all active account relationship types.
Account To

The target accounts for this relationship.

Order

Specifies the sequence in which records are displayed, organized according to
business preferences.

5. Select Submit.
Once a relationship record has been created, it appears in two places:
◦ The relationship appears in the Account Relationships related list on the source account
record.
◦ The reverse relationship appears in the Account Relationships related list on the target
account record.
Contact relationships
You can add a contact from one account to another account by using a contact relationship in
the Customer Service Management (CSM) application. By using contact relationships, you can
perform actions on behalf of the accounts that you established a contact relationship with.

Overview of contact relationship
A contact is a user who serves as an employee of an account. To associate a contact with
additional accounts, contact relationships are used. These contact relationships enable a
contact with the customer role or customer administrator role to manage the account that you
established a contact relationship with. These contacts can view the information and perform
actions on behalf of the accounts, such as creating or updating cases from the customer portal.
Related topics
Configuring a contact relationship
Create a contact relationship for an account
Contact Relationship form
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

57


<!-- page 58 -->
Configuring a contact relationship
You can configure a contact relationship to establish a relationship between an account and a
contact in the Customer Service Management (CSM) application.

Configuring the contacts to be associated with an account
When you create a contact relationship, you select a user from the Contact field. This field
displays the contacts from:
• All accounts in the account relationship
• All accounts in the account hierarchy
• All accounts, if the

sn_customerservice.contact_relationship.restrict_within_account_hierarchy
system property is set to false. However, when the

sn_customerservice.contact_relationship.restrict_within_account_hierarchy
system property is set to true, only the contacts within the account hierarchy and account
relationship are displayed.

Note: By default, the

sn_customerservice.contact_relationship.restrict_within_account_hierarchy
system property is set to true.
If you're a customer service manager (sn_customerservice_manager), you can create,
update, delete, and view the list of contact relationships for an account. If you're a
customer service manager (sn_customerservice_manager) or a customer service agent
(sn_customerservice_agent), you can view a list of the contact relationships for an account.
When you select a responsibility for the contact, the responsibilities that are available are those
responsibility definitions that are created with a type of Contact.

Note: A contact can only be assigned with one responsibility per account.
Configuring multiple contact relationships per account for a contact
Before the Vancouver release, configuring multiple contact relationships for a contact with an
account wasn’t enabled. The database-level unique index company_contact can be turned
off only by the administrators.
Starting with the Vancouver release, the Customer Service Management (CSM) application
replaced the unique index and introduced the Prevent duplicate for account-contact business
rule. This business rule enables administrators to disable the restriction of a unique index
combination in the contact relationship by setting the Active flag to False. As a result, an
administrator can assign multiple responsibilities per account for a contact.
Create a contact relationship for an account
Create a contact relationship for an account by selecting a contact and then assigning a
responsibility to that contact in the Customer Service Management (CSM) application. Through
this relationship, a contact can effectively manage the accounts and can execute actions on
behalf of the associated accounts.

Before you begin

Role required: sn_customerservice_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

58


<!-- page 59 -->
About this task

Starting with the Zurich release, Customer Service Management (CSM) introduced the Prevent
duplicate for account-contactbusiness rule. By using this business rule, an
administrator can assign multiple responsibilities per account for a contact.

Procedure
1. Navigate to All > Customer Service > Customer > Accounts or Partners.
2. Select an account.
3. In the Contact Relationships related list, select New.
4. On the form, fill in the fields.
Contact Relationship form fields
Field

Definition

Account

The account to which the contact is assigned. This field is automatically filled
in.

Contact

The customer contact selected to fulfill the role or responsibility.
The Contacts list includes contacts from any related partner or account as
well as contacts from the account hierarchy.

Type

Defines the label for the relationship with the selected user. You can select
the type from the list of related party configurations.

Note: Starting with the Yokohama release, the Type field is added
to the Contact Relationship form. For more information on how to
populate the Type field for existing data, see Populate the Type field in
relationship tables using the fix script.
Responsibility Role or responsibility selected for this customer contact.

Note: As part of creating a responsibility definition, the admin can
specify if the responsibility is unique. If so, the responsibility can only
be assigned to one contact per account. For more information, see
Create account teams.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
The contact name, account, and responsibility are added to the Contact Relationships related
list.
Creating an account team
Create an account team that is made up of both employees and customer contacts who fulfill the
jobs or roles for a particular account in the Customer Service Management (CSM) application.
By defining responsibilities or roles for your team and customer contacts, you confirm that your
account team has the functions needed to support customer accounts.
If you have the admin role, you can create an account team by using a responsibility definition.
By defining the responsibilities that you need for this account team, you create the relationships
between the different entities like the accounts, contacts, and more.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

59


<!-- page 60 -->
You can create two types of responsibility definitions. You can create a definition for an employee
and a definition for a contact.

Note: If you have the admin role, you can also delete the definitions that are no longer
used. A definition can only be deleted if it has no entries.
After these definitions or roles, are created, the sn_customerservice_manager can use these
roles to do the following tasks:
• Build an account team by selecting an account, selecting a role, and then assigning a role to
an employee.
• Add a contact relationship to an account by selecting an account, selecting a role, and then
assigning a role to a contact.
The users who have been assigned to this role are displayed in the Account Team Members
related list on the Responsibility Definition form. For more information, see the following topics:
• Create a responsibility definition
• Configure access through the responsibility access configuration
Assign a team member to an account
Assign a team member to an account by selecting an employee and their role or responsibility in
the Customer Service Management (CSM) application. When a team member has the Account
Manager responsibility, they can view account details and perform actions on behalf of the
account.

Before you begin

Role required: sn_customerservice_manager or admin

Note: CSM Contributor User (com.snc.csm_contributor_user) plugin must be installed.
About this task

Administrators can assign a team member to an account using the Account Team Members
related list on the Responsibility Definition form. Similarly, customer service managers can assign
team members to an account using the Account Team Members related list on the account or
partner record.

Procedure
1. Navigate to All > Customer Service > Customer > Accounts or Partners.
2. Select an account.
3. From the Account Team Members related list, select New.
The account team member must have a sn_customerservice.relationship_contributor role.
4. On the form, fill in the fields.
Account Team Member form fields
Field

Definition

Account

Account that the user is assigned to. If you're assigning a user from an
account or partner record, this field is automatically filled in. If not, you can
select an account from the Accounts list.

User

Employee selected to fulfill the role or responsibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

60


<!-- page 61 -->
Field

Definition

Note: Starting with the Vancouver release, the Service Organization
External Staff [sn_csm_service_organization_external_staff] can be
added as Account Relationship Managers through Account Team
Members (Account Staff Relationships).
Type

Defines the label for the relationship with the selected user. You can select
the type from the list of related party configurations.

Note: Starting with the Yokohama release, the Type field is added
to the Account Team Member form. For more information on how to
populate the Type field for existing data, see Populate the Type field in
relationship tables using the fix script.
Responsibility Role or responsibility selected for this employee.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
Enhanced address data model for accounts
Define addresses once and reuse them within an account hierarchy, or across account
hierarchies.
Businesses often must share addresses between accounts, within an account hierarchy, or
across hierarchies. An enhanced address data model makes it possible to link a location with
multiple accounts without creating multiple location records.
The enhanced address data model maintains the relationship between accounts and addresses
in a new table. By default, this feature is enabled for the new customer service management
(CSM) customers. However, it’s optional for upgrade customers.
Related topics
Account Address table
Enable enhanced address model for accounts
Associate an address to an account
Reusing addresses between multiple accounts
Account Address table
Avoid duplication of address records by using the Account Address table.
The Account Address [account_address_relationship] table maintains the relationship between
an address and the accounts that use that address.
The Account Address table eliminates the need to duplicate address records that must be
reused across multiple accounts. The Account Address table provides details like the name and
the location of the account. The table also provides information on the type of account address,
and whether the account is primary or not.
The Account Address table is available for use when the Enhanced address data model for
accounts feature is enabled. For more information on enabling the feature and configuring the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

61


<!-- page 62 -->
Account Address table, see Enable enhanced address model for accounts. When address
sharing is enabled, Account address related list is visible on the account and location forms.
Account address table
Field

Description

Location

The location or address associated with the
account.

Account

The name associated with the account.

Primary

An account can only have one primary address.

Type

The type of account address, whether Billing,
Shipping or Mailing.
Account Address form

Related topics
Enable enhanced address model for accounts
Associate an address to an account
Account address access for contacts
Enable contacts and similar roles to access addresses linked to their accounts. This access
enables them to view and select account-related addresses and the corresponding location
records tied to those accounts.

Account Address overview
Account Addresses [account_address_relationship] table acts as a bridge between accounts
and locations, enabling you to associate multiple locations with a single account. They also
enable the reuse of the same address record across multiple accounts using shared references.

Accessible Accounts overview
Accessible accounts are customer accounts that a contact can access based on their role and
access configuration. Contacts can access their accounts through:
• Direct association with accounts
• Association to the accounts through customer relationships
• Assigned roles or access control list (ACL) permissions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

62


<!-- page 63 -->
This feature extends account address and location access to external roles such as:
• Contact [sn_customerservice.customer]
• Contact Admin [sn_customerservice.customer_admin]
• Customer Case Manager [sn_customerservice.customer_case_manager]
• Customer Account Admin [customer_account_admin]
• Partner [sn_customerservice.partner]
• Partner Admin [sn_customerservice.partner_admin]
• Contact Manager (internal) [sn_customerservice.contact_manager]
• Roles that inherit the Contact [sn_customerservice.customer] role
Each of these external roles already has access to their associated accounts. However, they
didn't previously have access to the associated account addresses and locations. With this
enhancement, they can access the related account addresses and location records for those
accounts.

Contact access to account-related addresses
Contacts can access account addresses and corresponding location records through different
types of account relationships. These relationships determine which accounts and addresses
they can view or interact with.
• My Account: It’s a direct, one-to-one relationship between the contact and it's assigned
account. For example, a service provider is added as a contact under the parent account.
Through the parent-child hierarchy, they can view and manage cases, addresses, and
locations across child accounts in different regions.
• Other Accessible Accounts: They’re additional accounts that contacts can access indirectly,
through one of the following relationships:
◦ Account Hierarchy: Access is inherited through parent-child account relationships. If a
contact is associated with the parent account, they might automatically access the child
accounts. For example, a global IT manager associated with the parent account can view
and manage cases, addresses, and location records from regional teams under child
accounts.
◦ Account Relationship: Access is granted through formal associations between two customer
accounts that aren’t part of a hierarchy, and can be unidirectional or bidirectional. For
example, a partner account managing support for products from another organization.
Through this relationship, contacts from the partner account can access the addresses of
the associated customer account.
◦ Contact Relationship: Access is granted when a contact is linked to another customer
account they don’t belong to directly. This relationship is commonly used where a contact
works across multiple accounts, such as an external service provider. For example, a
consultant working with three client organizations can access the associated addresses and
locations of all three accounts.
Enable enhanced address model for accounts
Use the Account Address table in the enhanced address data model feature to link a location
with multiple accounts without creating duplicate location records.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

63


<!-- page 64 -->
Procedure
1. Take a backup of the location data associated with accounts from the Location [cmn_location]
table.
2. Create the custom relationship fields in the Account Address [account_address_relationship]
table if they have already been created in the Location table.
The newly created fields in the Account Address table must have the same name and type as
the fields in the Location table. The base system provides two relationship fields.
◦ Type
◦ primary
These relationship fields are created in the Account Address [account_address_relationship]
table. For more information on creating fields within a table, see Add and customize a field in a
table .
3. Update the custom code that references the Account Address table.
The custom code can include elements that fetch the address of accounts in the Account
Address table. Such elements can be reference qualifiers, script includes, business rules, and
access control lists (ACLs) referencing to the Location table.
4. Move the account-related data from the Location table to the Account Address table.
5. Run the following migration script.
var customRelationshipFields = []; //Add custom relationship
fields (if any).
var account = ""; //You must specify the sys_id of the account
if you wish to migrate location data for that account (mostly
to be used during re-run).
var migrateChildAccountLocations = false; // This value must be
set to true if you wish to migrate the locations of the child
accounts associated with the specified account (mostly to be
used during re-run).
new
sn_cs_base.CSDataFix().migrateLocationDataToAccountAddress(cus
tomRelationshipFields, account, migrateChildAccountLocations);
Performing a rerun of the script if there’s a difference between the number of records that must
be migrated and the number of records already migrated. In there’s a rerun, already migrated
locations aren't migrated again. To rerun the migration for already migrated locations, delete
the corresponding records in the account address table.
6. Avoid accidental data entry by deactivating the Account and Custom Relationship fields from
the Location table.

Note: You must not deactivate Type and Primary attributes.
This deactivation removes the Account and the Custom Relationship fields from the locationrelated forms, lists, and related lists.
7. Set the system property enable_account_address_sharing to true.
This property enables the enhanced address data models for accounts. The Account
Addresses related list is displayed on the account and location form.
Associate an address to an account
You can associate addresses to an account using the Account Address related list on the
account form or the location form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

64


<!-- page 65 -->
Before you begin

Note: You must possess the Update privilege, or the authority to grant Update access to
account information, to enable the association of locations (account addresses) with the
account.
Role required: admin or customer_admin or sn_customerservice_manager

Procedure
1. Associate an address to an account from either the account form or the location form.
◦ To associate an address to an account from the account form, navigate to All > Customer
Service > Accounts.
◦ To associate an address to an account from the location form, select All > Customer Service
> Locations.
2. Select an account from the list of existing accounts.
3. Navigate to Related List > Account addresses and select New.
4. Fill the details in account address form and select Submit.
For more information about the table fields, see Account Address table.
Reusing addresses between multiple accounts
You can reuse the same addresses between multiple account records.
You can reuse the same address between multiple accounts within the account hierarchy or
between non-related accounts. Use the account hierarchy feature to create a parent-child
relationship between accounts.
To enable address sharing between accounts in the account hierarchy, see Address sharing
through account hierarchy.
To share addresses between non-related accounts, see Share an address through non-related
accounts.
Address sharing through account hierarchy
You can reuse the same address between multiple accounts within the account hierarchy.

Before you begin

Role required: admin or sn_customerservice_manager

Procedure
1. Navigate to All > Customer Service > Accounts.
2. Select an account and navigate to Related List> Account Addresses.
3. Select New.
4. See all the locations associated with the selected account in the account hierarchy by
selecting the search icon next to the Location field.

Note: The Account field is already populated with the name of the account.
5. In the Locations pop up, select the location that you want to reuse.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

65


<!-- page 66 -->
6. Select Submit.
Related topics
Reusing addresses between multiple accounts
Share an address through non-related accounts
Share an address through non-related accounts
Enable your users to reuse the same address between multiple non-related accounts. This way,
you can share an address between multiple accounts by using the Location field on the Account
Address form.

Before you begin

Role required: admin or sn_customerservice_manager

Procedure
1. Navigate to All > Customer Service > Accounts.
2. Select an account and navigate to Related List> Account Addresses.
3. Select New.
4. Select the search icon next to the Location field.
5. From the pop-up, select a location that you want to reuse.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

66


<!-- page 67 -->
6. Select the search icon next to the Account field.
7. Choose the account for which you want to reuse the address.

Note: You can reuse addresses through non-related accounts from the location
form. For more information on the location form, see Associate an address to an

account.
Related topics
Reusing addresses between multiple accounts
Address sharing through account hierarchy
Deleting or editing an address on the location form
As a user, you can edit or delete an existing record in the account address table without
affecting any other associated records. To use this capability, you must be an admin or a
sn_customerservice_manager.
If a location record is associated with multiple accounts, you must have Update access to
all associated accounts to modify the fields of the location record. This access requirement
confirms that location details can only be updated when you have the necessary permissions for
every account linked to the shared location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

67


<!-- page 68 -->
To delete an address in the location table, select Delete from the location form or from the
location list. Similarly, to edit a location form, select Edit.
Data migration from Location to Account Address table
Migrate your data from the Location table to the Account Address table.
Migrate data by following the steps provided in the Customer Service guided setup.
To access the guided setup, navigate to Customer Service > Administration > Guided Setup >
Foundation Data > Enable Enhanced Address Data Model for Accounts.

Note: Review step 4 within the Enable enhanced address model for accounts to get
details on how to migrate data.
Domain separation for the Account Address table
Domain separation enables you to separate data, processes, and administrative tasks into
logical groupings called domains. You can then control several aspects of this separation,
including which users can see and access data.
All account address table records are present in the domain of the associated account.

Note: Any location record is originally created in the global domain. However, when the
location record is associated with an account, the location record is automatically added to
the account's domain. Associating the same location to multiple accounts doesn’t change
the domain of the location.
Configure consumers
A consumer is a customer in the business-to-consumer (B2C) business model.

Before you begin

Role required: admin

About this task

Consumers can have multiple addresses, one of which is the primary address.

Procedure
• You can import existing consumers using a guided setup.
• You can create consumers using the Customer Service Management application.
Import consumers with guided setup
Use Customer Service Management guided setup to import existing consumers.

Before you begin

Role required: admin

About this task

Consumers can have multiple addresses, one of which is the primary address.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started
2. In the Foundation Data category, click Get Started and then click Import Consumers (B2C).
3. Upload data from an external data source into an import set.
4. Create a transform map.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

68


<!-- page 69 -->
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create consumers
A consumer is a customer in the business-to-consumer (B2C) business model. Use the
Customer Service Management application to create consumer records.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task

Consumers can have multiple addresses, one of which is the primary address.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Click New and fill in the fields on the Consumer form.
3. Enter the consumer information, such as the name, email address, and phone numbers.
4. Fill in the fields on the Primary Address tab.
A consumer can have multiple addresses but only one primary address. The primary address
is stored in the Primary Address tab on the Consumer form and in the Addresses related list.
5. Optional: Set the desired fields on the Preferences tab.
6. Click Submit.
The record is added to the Consumers table (csm_consumer). The primary address is added to
the Addresses related list and the Primary field is set to true.
Create additional consumer addresses
Consumers can have multiple addresses, including one primary address.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task

The primary address is stored in the Primary Address tab on the Consumer form and in the
Addresses related list. When you fill in the fields in the Primary Address tab and click Submit,
this information is added to the Addresses related list as the primary address, with the Primary
field set to true. Any changes made to the Primary Address fields are also updated in the related
list. A consumer can have only one primary address.
Other addresses, such as billing or shipping addresses, can be created and stored in the
Addresses related list. For these other addresses, the Primary field is set to false.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Click the number of the desired consumer.
3. In the Addresses related list, click New.
4. Fill in the fields on the Location form.
5. To denote this address as the primary address for the consumer, enable the Primary check
box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

69


<!-- page 70 -->
A consumer can have multiple addresses but only one primary address.
6. Click Submit.
Create a relationship between two consumers
Create a relationship between two consumers, regardless of household.

Before you begin

Role required: sn_customerservice.svc_location_manager, sn_customerservice_manager, admin

About this task

Relationships are based on responsibilities. A responsibility definition describes a role or a
function that supports a customer or consumer. To create a relationship between two consumers,
use the Authorized Representative responsibility.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Select a consumer.
3. In the Consumer Relationships related list, select New.
This related list shows the current relationships that exist for the selected consumer. When you
select New, a new Consumer to Consumer Relationship form is displayed with the Consumer
is field filled in.
4. In the Responsibility field, select the Authorized Representative responsibility.
5. In the of Consumer field, select the consumer who is being represented by the consumer in
the Consumer is field.
6. In the Type field, select the type from the list of related party configurations and the Order
field specifies the sequence in which records are displayed, organized according to business
preferences.

Note: Starting with the Yokohama release, the Type field is added to the Consumer

Relationships form. For more information on how to populate the Type field for existing
data, see Populate the Type field in relationship tables using the fix script.
7. Select Submit.
The relationship is added to the Consumer Relationships related list.
Assign a team member to a consumer
Assign a team member to a consumer by selecting an employee and their role or responsibility in
the Customer Service Management (CSM) application.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

If you're the system administrator or a customer service manager, you can assign a team member
to a consumer from the Consumer Team related list on the Consumer form.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Select a consumer.
3. From the Consumer Team related list, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

70


<!-- page 71 -->
4. On the form, fill in the fields.
Consumer Team Member form fields
Field

Definition

Consumer

Consumer that the user is assigned to.

User

Employee selected to fulfill the role or responsibility.

Type

Defines the label for the relationship with the selected user. You can select
the type from the list of related party configurations.

Note: Starting with the Zurich release, the Type field is added to
the Consumer Team Member form. For more information on how to
populate the Type field for existing data, see Populate the Type field in
relationship tables using the fix script.
Responsibility Role or responsibility selected for this user.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
Creating multiple consumer profiles for a user
The concept of consumer profiles refers to the idea that an individual can have multiple profiles
associated with them. For example, a consumer might have a patient profile in Healthcare and
Life Sciences and simultaneously have a constituent profile in Public Sector Digital Services.
Starting with the Utah release, Customer Service Management (CSM) introduced the consumer
profile (sn_csm_consumer_profile) table with a reference to the consumer (csm_consumer)
table to define and support consumer profiles. When creating multiple profiles for a user within
Customer Service Management (CSM), each profile can have its own set of fields and relational
data like sold products, cases, interactions, and installed bases. By creating and defining
consumer profiles, you can identify and differentiate profile-specific data.
Industries must use the consumer_profile column on case (sn_customerservice_case), sold
product (sn_install_base_sold_product), install base item (sn_install_base_item), interaction
(interaction), or child tables for any transactional data. Industries can extend the consumer
profile (sn_csm_consumer_profile) table for any industry-specific use case.
Tables used by consumer profiles
Customer Service Management (CSM) introduced consumer profile (sn_csm_consumer_profile)
column on Case, Sold Product, Install Base Item, and Interaction tables to identify and
differentiate profile-specific data to be used by industries for different use-cases.
Tables and plugins
Plugin

Tables

Column added

Customer Service Base
Entities

Case

Consumer Profile

[sn_customerservice_case]

[consumer_profile]

Sold Product

Consumer Profile

[com.snc.cs_base]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

71


<!-- page 72 -->
Tables and plugins (continued)
Plugin

Tables

Column added

[sn_install_base_sold_product]​ [consumer_profile]
Install Base Item

Consumer Profile

[sn_install_base_item]

[consumer_profile]

Interaction

Consumer Profile

[interaction]

[consumer_profile]

Task

Consumer Profile

[sn_customerservice_task]

[consumer_profile]

Note: Consumer Profile (sn_csm_consumer_profile) table is an extension-only table to
be used for supporting multiple profiles for consumer both within and across different
industries.
Consumer Profile Location table
The Consumer Profile Location [sn_csm_consumer_profile_location] table stores the relationship
between the consumer profiles and locations.
Starting with the Vancouver release, the Consumer Profile Location
[sn_csm_consumer_profile_location] table was introduced. By using this table, you can enhance
your consumer profiles to support multiple addresses. Adding this functionality enables the
relationship between the consumer profiles and locations, which enables various industries to
manage multiple addresses for the individual profiles.
Consumer Profile Location table fields
Field

Data type

Description

Consumer profile

Reference

Profile that is associated with
a consumer.

Location

Reference

Locations detail that is
associated with the consumer.

Location type

List

Type of location that this
record represents such as
billing, shipping, and mailing.

Note: You can
associate a consumer
profile location record
with one or multiple
location types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

72


<!-- page 73 -->
Consumer Profile Location table fields (continued)
Field

Data type

Description

Active

True/False

Status of the consumer
profile-address mapping.

Note: By default, the

active field is set to True,
but you can disable
the Consumer Profile
Location linkage by
setting it to False.
Associating locations to consumer profiles
By enabling relationships between consumer profiles and locations across industries such as
Financial Services Operations, Healthcare and Life Sciences, and Public Sector Digital Services
Core, multiple consumer profiles can be associated with their corresponding addresses in the
Customer Service Management (CSM) application.

Overview
Individual consumer profiles can be associated with multiple locations, or multiple consumer
profiles can be linked to the same location by using consumer profile locations. That means
that different industries can associate consumer profiles with multiple locations and location
types. The Customer Service Management (CSM) application supports the consumer profile
(sn_csm_consumer_profile) table with a reference to the consumer (csm_consumer) table that
helps to define and support consumer profiles.

Use case
For example, in the Healthcare and Life Sciences industry, clinicians must be able to store
multiple addresses for patients, like mailing addresses for sending reports and home addresses
for sample collections. Similarly, in the Financial Services Operations industry, financial
institutions must store multiple addresses, such as mailing addresses for important documents
and work addresses for billing purposes, for their customers.
In some scenarios, business-to-consumer (B2C) customers may have multiple addresses
that can be used across their profiles for various purposes, serving as distinct addresses. For
example, a customer's address could function as a shipping address for a Financial Services
Operations profile, while simultaneously serving as a billing address for a Healthcare and Life
Sciences profile.
Related topics
Associate an existing consumer location with a consumer profile
Create and associate a location to a consumer profile
Associate an existing consumer location with a consumer profile
Associate an existing consumer location with a consumer profile by using the Consumer Profile
Location [sn_csm_consumer_profile_location] table in the Customer Service Management (CSM)
application. By connecting consumer profiles and locations, industries can handle multiple
addresses that are associated with individual profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

73


<!-- page 74 -->
Before you begin

Role required: admin

About this task

By using the Consumer Profile Location [sn_csm_consumer_profile_location] table, you can store
the relationship between the consumer profile and location.

Procedure
1. In the navigation filter, enter sn_csm_consumer_profile_location_list.do.
2. In the Consumer Profile Locations record, select New.
3. In the Location field, select the lookup icon

to open the list of locations.

4. Select the location to be associated with the consumer profile.
5. On the form, fill in the fields.
For a description of the field values, see Consumer Profile Location table.
6. Select Submit.

Result

A location has been added to the consumer profile. Additionally, you can include different
addresses, like a mailing address or a shipping address, and associate them with the same
consumer profile, depending on the use case.
Related topics
Create and associate a location to a consumer profile
Create and associate a location to a consumer profile
Create a location and associate it with the consumer profile in the Customer Service
Management (CSM) application. With this functionality, you can create and associate multiple
addresses to a consumer profile that serve other purposes.

Before you begin

Role required: admin

About this task

Here's an example of why a user created and associated a location to the consumer profile. In
the Healthcare and Life Sciences industry, clinicians can store multiple addresses for a patient
profile, like mailing addresses for sending reports and home addresses for sample collections.

Procedure
1. In the navigation filter, enter sn_csm_consumer_profile_location_list.do.
2. In the Consumer Profile Locations record, select a consumer profile.
3. In the Location field, select the lookup icon

to open the list of locations.

4. In the Consumer Profile Locations record, select New.
5. On the form, fill in the fields.

Note: Ensure that you fill in the Consumer field in the Location form. If the Consumer
field is empty, you get an error.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

74


<!-- page 75 -->
Note: If multiple consumer profile location records are associated with the location, you
can't delete a location record.
A new address is created and added to the Location field. You can associate this location to
the consumer profile. For a description of the field values, see Consumer Profile Location table.
7. Select Update.
Related topics
Associate an existing consumer location with a consumer profile
Configuring households
The household entity represents a group of consumers that usually share a common address
and use services as a group.
A household is made up of consumers who have been added as members of that household.

Note: A household has an address and consumers have their own addresses. These
addresses do not need to be the same in order to add a consumer as a member to a
household.
With the household entity, you can:
• Create households and add consumers as household members.
• Create cases for households and household members.
• Create relationships between household members. These relationships authorize one
household member to manage cases on behalf of another member.
• Create relationships between staff members and households or household members that
enable the staff members to manage cases for those households and members.
• Track information for households, including sold products, contracts, and entitlements.

Head of household
A household can have one member designated as the head of household. A consumer who is
added as the head of household is automatically added as a member of the household.
The head of household has access to all of the cases and information for the household and the
other household members. The head of household can also see:
• The sold products for the household.
• The sold products and install base items for household members.

Household information
Households can have multiple members. These members can be either consumers or consumer
users. Consumers can also belong to multiple households.
Membership in a household is defined by the Start Date and End Date on the Household
Member form. A household member is considered to be a current member if:
• The Start Date field is empty or is filled in with today's date.
• The Start Date field is filled in with a past date and the End Date field is empty or is filled in
with today's date or a future date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

75


<!-- page 76 -->
Only one record with current membership dates is allowed for each consumer in a household.
A consumer can leave and rejoin a household multiple times. This information is recorded using
the start and end dates.
As members are added or removed from a household, the member history is retained. You can
find this information in the following related lists on the Household form.
• Current Members: the consumers currently in the household.
• All Members: current and past members of a household. This list provides a history of the
household. Members can appear multiple times in this list.
On the Household form, you can also find information about household cases and products in
the following related lists:
• Cases: the cases that have been created for all of the members within a household
• Sold Products: the products owned by the household. These products can be owned or
shared by multiple household members.

Household member relationships
The following types of relationships can be created for households and household members.
These relationships are included in the following related lists on the Household form:
• Member Relationships: relationships that have been established between household
members. These relationships are created using the Authorized Representative responsibility.
Household members that have an Authorized Representative relationship with another
household member can act on behalf of that member and can manage cases and information
for that member.
• Household Team: relationships that have been established between an agent and a
household. These relationships are created using the Relationship Manager responsibility.
Agents that have a Relationship Manager relationship with a household can manage all of the
cases for that household.

Consumer relationships
The following types of relationships can be created for consumers.
• Consumer Relationships: relationships that have been established between two consumers,
regardless of household. These relationships are created using the Authorized Representative
responsibility. Consumers that have an Authorized Representative relationship with another
consumer can manage cases for that consumer.
• Consumer Team: relationships that have been established between an agent and a consumer.
These relationships are created using the Relationship Manager responsibility. Agents that
have a Relationship manager relationship with a consumer can access all of the cases for that
consumer.
Create or update a household
Create or update a household.

Before you begin

Role required: sn_customerservice_manager, admin

About this task

A household is made up of a group of consumers who live at a common address and share
products and services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

76


<!-- page 77 -->
A household can have a designated head of household and multiple current members. The head
of household has access to all of the cases and information for the other household members.
A user with the system administrator role can create a household. This user can also delete a
household. When a household is deleted, the system clears the references and associations to
the household, including members, sold products, cases, and work orders, but does not delete
these associated entities.

Procedure
1. Navigate to All > Customer Service > Customers > Households.
2. Click New on the Households list.
3. Fill in the fields on the Household form.
4. Click Submit.
The household is added to the Households list.
Related topics
Configuring households
Service Model Foundation relationships
Add consumers to a household
Add consumers as members of a household.

Before you begin

Role required: sn_customerservice_manager, admin

About this task

You can add existing consumers from the Consumer table to a household.
• A household can have multiple consumers.
• A consumer can belong to multiple households. One household can be designated as the
primary household for that consumer.
Household member records are added to the Household Member table. When a consumer is
added to a household, the consumer is assigned a unique household member number that
begins with the prefix HM.
The Household form includes the following related lists for household members:
• Current Members: consumers that belong to the household as of the current date.
• All Members: current members and past members. The customer service manager or admin
can indicate that a consumer no longer belongs to the household by adding a date to the End
Date field. A consumer that has left a household can be added back to that household.

Procedure
1. Navigate to All > Customer Service > Customer > Households.
2. Select a household.
3. In the Current Members related list, click New.
4. Add a user from the Consumer table in the Consumer field.
The Household field is automatically updated with the household selected in step 2.
5. Optional: If desired, add the date that the consumer was added to the household in the Start
Date field
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

77


<!-- page 78 -->
The End Date field can be added if the consumer is removed from the household.
6. Click Submit.
The consumer is added to the Current Members related list.
On the Consumer form for this consumer, the household is added to the following related lists:
◦ Current Households
◦ All Households

Note: You may need to configure the Consumer form to display these related lists. For
more information, see Configure Service Model Foundation.
Create a relationship between household members
Create a relationship between two consumers who are current members of the same household.

Before you begin

Role required: sn_customerservice_manager, admin

About this task

Relationships are based on responsibilities. A responsibility definition describes a role or a
function that supports a customer or consumer. To create a relationship between two consumers
in a household, use the Authorized Representative responsibility.

Procedure
1. Navigate to All > Customer Service > Customer > Households.
2. Select a household.
3. In the Member Relationships related list, click New.
This related list shows the current relationships that exist between consumers in this
household. When you click New, a new Household Member Relationship is displayed with the
Household field already filled in.
4. In the Consumer is field, select the consumer in the household to fulfill the responsibility on
behalf of another consumer within the same household.
5. In the Responsibility field, select the Authorized Representative responsibility.
6. In the of Consumer field, select the consumer who is being represented by the consumer in
the Consumer is field.
7. In the Type field, select the type from the list of related party configurations and the Order
field specifies the sequence in which records are displayed, organized according to business
preferences.

Note: Starting with the Yokohama release, the Type field is added to the Consumer

Relationships form. For more information on how to populate the Type field for existing
data, see Populate the Type field in relationship tables using the fix script.
8. Click Submit.
The relationship is added to the Member Relationships related list.
Assign a team member to a household
Assign a team member to a household by selecting an employee and their role or responsibility
in the Customer Service Management (CSM) application.

Before you begin

Role required: sn_customerservice_manager or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

78


<!-- page 79 -->
About this task

If you're the system administrator or a customer service manager, you can assign a team member
to a household from the Current Members related list on the Household form.

Procedure
1. Navigate to All > Customer Service > Customer > Households.
2. Select a household.
3. From the Household Team related list, select New.
4. On the form, fill in the fields.
Household Team Member form fields
Field

Definition

Household

Household that the user is assigned to.

User

Employee selected to fulfill the role or responsibility.

Type

Defines the label for the relationship with the selected user. You can select
the type from the list of related party configurations.

Note: Starting with the Zurich release, the Type field is added to
the Household Team Member form. For more information on how to
populate the Type field for existing data, see Populate the Type field in
relationship tables using the fix script.
Responsibility Role or responsibility selected for this user.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
Create and manage cases for a consumer or household
Staff members with the location agent role can create and manage cases for consumers and
households.

Before you begin

Role required: sn_customerservice.svc_location_agent,
sn_customerservice.svc_location_consumer_agent, sn_customerservice.svc_location_manager

About this task

Staff members at a business location who have either the location agent or consumer location
agent role can create cases for households and consumers.
Staff members or internal users who have a relationship with a household (based on the
Relationship Manager responsibility) can create cases for that household and its members.
Users with relationships to a household are listed in the following locations:
• The Household Team related list on the Household form.
• The Household Team Members list.
Relationship managers can perform the following actions on the cases that they can access:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

79


<!-- page 80 -->
• Add comments and work notes.
• Add attachments.
• Close cases.
When a consumer case is created or updated, the consumer receives an email notification. If a
household is added to a case, the head of household is also notified when the case is created or
updated.

Procedure
1. Navigate to All > Customer Service > Cases and click Create New.
2. Optional: Select the type of case that you want to create.
3. Perform one of the following actions.
Option

Description

Select a consumer in the Consumer field.
◦ If the consumer belongs to only one house­
hold, the Household field is automatically
updated.
Add a consumer.

◦ If the consumer belongs to more than one
household, select a household from the
households that a consumer belongs to in
the Household field.
◦ If the consumer does not belong to a house­
hold, you can leave the Household field
empty.
Select a household in the Household field.

Add a household.

◦ If the household only has only one current
member, the Consumer field is automatical­
ly updated.
◦ If the household has multiple current mem­
bers, select a consumer from the house­
hold members in the Consumer field.

4. Fill in the remaining fields on the Case form.
5. If desired, add other members of the household to the watch list.
If a user with a Relationship Manager relationship is creating a case for a household or
household member, this user is automatically added to the watch list.
6. Click Submit.
The case is added to the Cases related list on the Household form.
Related topics
Service Model Foundation cases
Create entitlements for a household
Create entitlements for a household so that all household members are covered under the same
terms and conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

80


<!-- page 81 -->
Before you begin

Role required: sn_customerservice_manager, admin

About this task

System administrators and customer service managers can create entitlements for a household.
These entitlements apply to the current members of that household.
When a case is created for a household or a consumer, the Entitlement field on the Case form
lists the available entitlements:
Entitlements listed based on field types
If these fields are filled in

The Entitlement field lists these entitlements

Household and Consumer

Entitlements for both the consumer and
household.

Household

Entitlements for the household.

Consumer

Entitlements for the consumer

Procedure
1. Navigate to All > Customer Service > Contracts > Entitlements.
2. Click New.
3. Select a household in the Household field.
When you select a household, the head of household is automatically added to the Consumer
field.

Note: You may need to configure the form layout and add the Household field.
4. Optional: If desired, select a different household member in the Consumer field.
5. Fill in the remaining fields on the Entitlement form.
For more information, see Create entitlements for CSM entities.
6. Click Submit.
The entitlement is added to the Entitlements related list on the Household form.
Create service contracts for a household
Create service contracts for a household so that all household members are covered under the
same terms and conditions.

Before you begin

Role required: sn_customerservice_manager, admin

About this task

System administrators and customer service managers can create contracts for a household.
These contracts apply to the current members of that household.
When a case is created for a household or a consumer, the Contract field on the Case form lists
the available contracts:
• If the Household and Consumer fields are filled in, the Contract field lists the contracts for
both the consumer and household.
• If only the Household field is filled in, the Contract field lists the contracts for the household.
• If only the Consumer field is filled in, contracts field lists the contracts for the consumer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

81


<!-- page 82 -->
Procedure
1. Navigate to All > Customer Service > Contracts > Service Contracts.
2. Click New.
3. Select a household in the Household field.
When you select a household, the head of household is automatically added to the Consumer
field.

Note: You may need to configure the form layout and add the Household field.
4. Optional: If desired, select a different household member in the Consumer field.
5. Fill in the remaining fields on the Contract form.
For more information, see Create service contracts.
6. Click Submit.
The contract is added to the Contracts related list on the Household form.
Consumer Service Portal changes
Activating the Customer Service Household plugin enables you to view households and
household members on the Consumer Service Portal as well as view and create cases for
household members.

Viewing multiple households on the portal
Consumers can belong to multiple households and can have one primary household. When the
Customer Service Household plugin is activated, consumers who are logged in to the Consumer
Service Portal can see the following information on their user profile page:
• The consumer's primary household in the Primary Household field.
• The households that the consumer belongs to in the Households list.

Viewing household members on the portal
For consumers who are the head of household, the Support menu includes the Household
Members menu item, which lists all current members of the household.
Selecting this menu item displays a page that lists the members of the households where the
logged-in consumer is the head of household.

Creating cases for other members of a household or other consumers
A consumer can create cases for another consumer in the following instances:
• A consumer who is the head of a household can create cases for other members of the
household.
• A consumer who is an authorized representative for another consumer can create cases on
behalf of that consumer.
When creating a case, the head of household or authorized representative can select the
household member in the Consumer field on the record producer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

82


<!-- page 83 -->
• If the logged-in consumer belongs to only one household, the household is automatically
added to the case when it is submitted.
• If the logged-in consumer belongs to more than one household, the correct household can be
selected in the Household field on the record producer.
• If the household is selected first, the consumers listed in the Consumer field are restricted to
the current members of the household.
The default selections for the Household and Consumer fields on the record producer include
the primary household and the logged-in consumer.

Viewing and updating cases on the portal
The logged-in consumer can see the following cases on the portal:
• All Cases: all of the cases that belong to their household or that belong to consumers with
which they are an authorized representative.
• My Cases: the cases created by the logged-in consumer.
The head of household or authorized representative can perform the following actions for the
cases that belong to their household:
• Add comments and attachments.
• Accept or reject a solution.
• Close a case.

Consumer case information
When the Customer Service Household plugin is activated, the Ticket Fields details tab includes
the Consumer field.
Configuring billing accounts
Billing Account Core provides a foundational data model for managing billing accounts across
organizations and users. It enables businesses to define, organize, and maintain billing
relationships, supporting accurate billing, payments, and scalable financial operations.

Billing account overview
A billing account is a centralized record that manages payment and invoicing for services. Use
billing accounts to organize billing schedules, payment terms, addresses, currency settings, and
links to customers—including individuals, organizations, or sub-accounts.
Unlike a customer account, which represents the organizational relationship, a billing account
is a financial entity specifically for managing billing and payments. A single customer can have
multiple billing accounts for different billing arrangements, while multiple customers can share a
consolidated billing account.
Billing accounts support both B2B and B2C scenarios and provide flexibility for complex billing
structures through parent-child hierarchies.

Key capabilities
• Billing schedule: Define billing frequency (monthly, quarterly, annual) and billing cycles
• Payment terms: Configure payment terms (net 30, net 60) and accepted payment methods
• Bill-to address and currency: Specify invoice delivery address and billing currency
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

83


<!-- page 84 -->
• Customer associations: Link billing accounts to customers, contacts, and households
• Hierarchy support: Create parent-child structures for consolidated billing

When to use billing account
Use billing accounts when your organization needs to:
• Separate billing from customer relationship management
• Support multiple billing arrangements for a single customer
• Consolidate charges from multiple business units, geographies, or product lines
• Manage payment responsibility separately from service consumption
• Track billing-related cases and interactions distinct from general customer cases

Billing account versus cost centers
Aspect

Billing Account

Cost Center

Purpose

Manages external payment
and invoicing for services

Tracks and allocates internal
costs within the organization

Focus

Customer-facing financial
transactions

Internal budget management
and expense allocation

Typical users

Finance, billing, customer
service teams

Finance, department
managers, internal operations

Examples

Customer invoice account,
corporate billing account

Marketing department budget,
IT operations budget

User management
Configure the internal and external users for Customer Service Management to provide the
right access to features, capabilities, and case data. Create relationships that facilitate case
management and fulfill support roles for specific accounts.
Setting up users, user groups, and customer relationships
Task

Description

Configure users and groups

Configure the individual users and the user
groups who can access your instance.

Assign roles to CSM users

Assign roles to individual users and user
groups to control access to features,
capabilities, and data.

Create multiple consumer profiles for a user

Individual consumers can have multiple
profiles for different needs. You can create
these profiles to identify and differentiate
profile-specific data.

Configure a unified user

Enable users to maintain multiple profiles
within the Customer Service Management
(CSM) application and other ServiceNow
applications with one login.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

84


<!-- page 85 -->
Setting up users, user groups, and customer relationships (continued)
Task

Description

Create customer relationships

Establish different types of relationships
between partners, customers, and contacts,
to make case and account management easy
and flexible:
• Bi-directional account relationships
• Contact relationships
• Account hierarchies

Create account teams

Create teams made up of employees and
customer contacts who fulfill the roles and
functions to support specific accounts.

Configure Contributor Users

Configure contributor users to engage middle
office teams in resolving customer issues and
requests.

Configuring customer access management

Configure customer access management to
support multiple contacts and consumers on
cases and sold products, providing them with
varying levels of access to the case.

Fix external user role assignments

Fix the issue with external users assigned with
internal user roles.

Configure users and groups
A user is an individual who can access your instance and a group is a set of users who share a
common purpose. The users associated with a group are listed as group members.

Before you begin

Role required: admin

About this task

Group information is used across most processes in the ServiceNow AI Platform for
assigning work to teams and requesting approvals.
Any rule that is applied to a group is automatically assigned to group members; for example,
roles and assignment rules.

Procedure
• You can import existing users and groups using guided setup.
• You can create new users and groups using the ServiceNow AI Platform user
administration feature.
◦ Create a user
◦ Create a user group
◦ Add a user to a group
Assign roles to CSM users
Roles control access to features, capabilities, and data in the Customer Service Management
application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

85


<!-- page 86 -->
Before you begin

Role required: admin
Before you can assign roles to your users, make sure that these users have already been
configured.
• Configure users and groups
• Configure accounts and contacts
• Configure consumers

About this task

You can assign roles to individual users or groups. Apply roles to groups and the members of
those groups inherit those roles.
The Customer Service Management application provides two types of roles: internal roles for
agents and managers and external roles for customers, customer partners, and consumers.
Internal and External roles for Customer Service Management
Internal Roles

External Roles

Business-to-business (B2B)

Business-to-business (B2B) Customer

• sn_customerservice_agent

• sn_customerservice.customer

• sn_customerservice_manager

• sn_customerservice.customer_admin
• sn_customerservice.customer_case_manager

Business-to-consumer (B2C)

Business-to-business (B2B) Partner

• sn_customerservice.consumer_agent

• sn_customerservice.partner

• sn_customerservice_manager

• sn_customerservice.partner_admin
Business-to-consumer (B2C)
sn_customerservice.consumer

Procedure
• You can assign roles to users and groups using guided setup.
• You can also assign roles to users and groups using the ServiceNow AI Platform user
administration feature.
◦ Assign a role to a user
◦ Assign a role to a group
Related topics
Roles installed with Customer Service Management
Configuring a Unified User
By unifying multiple profiles for a single user in the Customer Service Management (CSM)
application, you don't need to create and manage multiple user accounts for that user.
A user can maintain multiple profiles within the Customer Service Management (CSM)
application and other ServiceNow applications with one login.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

86


<!-- page 87 -->
Use cases
In the past, customers had to create multiple user records for a user who had different roles on
different applications. For example, let's say that you have a CSM user who is both an internal
employee and an external consumer. With a unified profile, your user can switch between
different user records and seamlessly transition between roles.
By using multiple profiles within the CSM application, your organization can have these different
profiles:
• Internal and external CSM profiles for the same user where that user has both internal and
external accounts. For example, in a financial institution, a consumer might be an employee of
a bank and at the same time hold a personal account in the same bank.
• Multiple external profiles for a CSM user where a user has multiple external accounts. For
example, a consumer might have a patient profile in Healthcare and Life Sciences and also
have a constituent profile in Public Sector Digital Services.
®

• Multiple profiles with the CSM and other ServiceNow applications where a user has multiple
accounts within CSM and other ServiceNow applications. For example, a user might have a
CSM account for vendor support and a VRM account for vendor risk management.

Key benefits
• Improved user experience. A unified user can navigate between internal and external roles
without switching profiles.
• Enhanced admin efficiency. Your organization can streamline the administrative processes so
that you don't have to manage multiple user accounts for individuals with various profiles or
roles.
• Increased customer satisfaction. Your organization can offer a consistent service to your
customers across different roles, which could lead to increased customer loyalty and positive
feedback.
Related topics
Configuring a user as a Unified Consumer
Configuring a user as a Unified Consumer
By creating a unified profile, you can integrate both internal and external personas or consumers
in your organization. A user who has a unified profile has synchronized user's login interactions
across the Customer Service Management (CSM) application.

Overview
Before a unified profile was available, a platform user could only hold either an snc_internal
or an snc_external role, but not both roles due to role collision issues. Modeling a
user as both an employee and a consumer wasn't possible in the past because the
sn_customerservice.consumer role inherited the snc_external role. The role inheritance that
was combined with the platform's behavior to help prevent role collision restricted a user from
performing internal duties while that user was also a consumer.
With this new unified user functionality, a single user who is an employee (snc_internal) can also
be a business-to-consumer (B2C) customer. With a unified profile, your user can switch between
different user records and seamlessly transition between roles.
For example, in a financial institution, an individual could be both an employee and a personal
account holder. Similarly, in the telecommunications industry, an internal employee might also
use company voice services for personal use.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

87


<!-- page 88 -->
Note:
You can activate this functionality by enabling the Customer Service
(com.sn_customerservice) plugin.

Using a query rules framework
You can use the Unified Consumer feature only within the query rules framework. For example,
when you update a consumer record, the associated user records synchronize through a
business rule sync_consumer to csm_consumer_user through a business rule. This
synchronization occurs only if the associated user class has the csm_consumer_user record
and not any other user record. When you modify the following fields for the consumer user, the
associated records also automatically update:
• First name
• Middle name
• Last name
• Email
• Mobile phone
• Business phone
• Home phone
You can synchronize all types of user records by customizing the business rule to the
sys_user record instead of the csm_consumer_user record.
Related topics
Roles installed with Employee as a Consumer
Supported and unsupported roles and features
Setting up a user as a Unified Consumer
Roles installed with Employee as a Consumer
Use different roles to establish the relationships between your users and entities. By using
the Employee as a Consumer functionality within the Customer Service Management (CSM)
application, your organization can support both requesters and supporters.

Overview
The Unified Consumer (sn_customerservice.unified_consumer) role enables a user to have
both the snc_internal and snc_external roles, which means that roles have greater control over
consumer behavior, whether it's internal or external.
Earlier, the Consumer (sn_customerservice.consumer) role automatically included the
snc_external role, which created a limitation. This limitation helped to prevent an organization
from assigning the snc_internal role to a user and restricted the simultaneous use of both the
snc_internal and snc_external roles. To address these limitations, a new role, independent of
the snc_external role, was introduced to complement the sn_customerservice.consumer role.
This additional role can be associated with both the snc_internal and snc_external roles, which
means that your organization now has increased flexibility in managing a user's behavior.

Employee as a Consumer existing and new roles
The following diagram shows the existing roles and the new roles that enable the Employee as a
Consumer functionality.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

88


<!-- page 89 -->
Existing and new roles

Note: With the Employee as a Consumer functionality, the
Requester (sn_customerservice.requester) and the Unified Consumer
(sn_customerservice.unified_consumer) roles were introduced. Both these roles are
independent of the snc_internal and snc_external roles.
Requester and Unified Consumer roles and descriptions
Role [name]

Description

Requester

Supports requesters and implements the
base functionality. It serves as a base role,
running in parallel with the Enterprise Service
Management (ESM) User (sn_esm_user) role.

[sn_customerservice.requester]
Unified Consumer
[sn_customerservice.unified_consumer]

Supports consumers and runs parallel to the
Consumer (sn_customerservice.consumer)
role. It inherits the Requester
(sn_customerservice.requester) role.

Related topics
Configuring a user as a Unified Consumer
Supported and unsupported roles and features
Setting up a user as a Unified Consumer
Supported and unsupported roles and features
Explore the capabilities and limitations of the unified consumer role
(sn_customerservice.unified_consumer) to understand the roles and features it supports. This
analysis helps you can enhance the user experience and streamline administration, supporting a
unified identity across different user contexts.
Supported and unsupported roles and personas
Supported or
unsupported

Persona and role
[Role Name]

Internal role(s)

Supported

Administrator

Admin [admin]

External role(s)

Description

Administrators
who can set up
unified consumer
users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

89


<!-- page 90 -->
Supported and unsupported roles and personas (continued)
Supported or
unsupported

Persona and role
[Role Name]

Internal unified
consumer

Internal role(s)

External role(s)

Internal
employee
[snc_internal]

An employee
Unified consumer (internal user)
[sn_customerservice.unified_consumer
who is also
a consumer
Note:
(external).
The unified
consumer
role doesn't
contain
snc_external
roles.

Note: Can
have other
internal
roles across
non-CSM
applications.

External unified
consumer

Unsupported

Customer
Service
Management
(CSM) fulfiller as
a consumer

Description

A user who
• Unified
is similar to
Consumer
a consumer
[sn_customerservice.unified_consumer]
[sn_customerservice.consumer],
• External users but has the
[snc_external] unified consumer
role.
Unified
A customer
• Customer
Consumer
service agent
service
[sn_customerservice.unified_consumer]
who is also a
manager
consumer.
[sn_customerservice_manager]
• Relationship
agent
[sn_customerservice.relationship_agent]
• Case task
agent
[sn_customerservice.case_task_agent]
• Account
customer
agent
[sn_acct_consumer.agent]
• Location
consumer
agent
[sn_customerservice.svc_location_consumer_agent]
• Location agent
[sn_customerservice.svc_location_agent]
• Location
manager
[sn_customerservice.svc_location_manager]
• Location
relationship
manager
[sn_bus_loc.location_relationship_manager]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

90


<!-- page 91 -->
Supported and unsupported roles and personas (continued)
Supported or
unsupported

Persona and role
[Role Name]

Internal role(s)

External role(s)

Description

• Customer
service agent
[sn_customerservice_agent]
• Consumer
service agent
[sn_customerservice.consumer_agent]
CSM contributor
as a consumer

Unified
An employee
• Account
Consumer
(internal
contributor
[sn_customerservice.unified_consumer]
contributor) who
[sn_customerservice.account_contributor]
can create cases
• Consumer
on behalf of
contributor
themselves and
[sn_customerservice.consumer_contributor]
others, but is also
a consumer.
• Relationship
contributor
[sn_customerservice.relationship_contributor]
• Self-contributor
[sn_customerservice.self_contributor​
]
• Service
organization
contributor
[sn_customerservice.service_organization_contributor]
• Location
manager
contributor
[sn_customerservice.svc_location_manager_contributor]

Employee as
an accountconsumer
(B2B2C)

Internal
employee
[snc_internal]

Account
An employee
consumer
who is also a
[sn_acct_consumer.consumer]
consumer for
a businesscustomer
(B2B2C).

List of supported features and flows for unified consumer
Features

• Case Management
• Case Tasks
• Install Base Management
• Inbound/Outbound Email Notifications
• Targeted Communications
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

91


<!-- page 92 -->
List of supported features and flows for unified consumer (continued)
Features

• Service Catalog Product Case
• Consumer Profile and Consumer Profile Locations
• Household​
• Case Application Programming Interface (APIs)​
• Asset (IT Asset Management)
• Contracts and Entitlements​
• Contracts on Sold Product or Install Base Items
• Virtual Agent or Agent Chat
• Live Agent Chat
• Look up and Verify
• Case Digest
• Case Escalations
• Case Types
• Case Playbooks for Complaint
• Case Playbooks for Onboarding
• Order Management
• Omnichannel Callback
• Engagement Messenger
• ServiceNow Voice for CSM
• Business Location
• Walk-up Experience for Customer Service Management
• Knowledge Management
• Communities
• CSM Integrations
◦ Customer Service Management and Field Service Management Integration
◦ Customer Service Management and Request Management Integration
◦ Customer Service Management and Asset Management Integration
• Field Service Management
◦ Work Orders and Work Order Tasks
◦ Appointment Booking
◦ Conversational Appointment Booking

Related topics
Configuring a user as a Unified Consumer
Roles installed with Employee as a Consumer
Setting up a user as a Unified Consumer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

92


<!-- page 93 -->
Setting up a user as a Unified Consumer
Set up a user as a Unified Consumer by creating a single, unified profile that supports both the
internal and external personas in the Customer Service Management (CSM) application.

Overview of Unified Consumer
You can model a single user both as an employee (snc_internal) and a business-to-consumer
(B2C customer) by creating a unified profile. By unifying multiple profiles for a single user in
the Customer Service Management (CSM) application, you don't need to create and manage
multiple user accounts for that user.

Note: You can also configure an external Unified Consumer, who lacks an internal
(snc_internal) role and isn’t an employee, by using similar setup tasks.
The following table describes how to set up the tasks for activating a Unified Consumer.
Set up the tasks for activating a Unified Consumer
Task

Description

Activate a Unified Consumer

Activate a Unified Consumer by updating the
ConsumerImpl script include to display
other sys_user records in the reference
list for the csm_consumer table. For more
information, see Activate a Unified Consumer.

Assign a role to a user

Assign the Unified Consumer
(sn_customerservice.unified_consumer) role
to the user. For more information, see Assign a
role to a user .

Create a consumer record

Create a consumer record with the user,
designating that user as a consumer. For more
information, see Create a consumer record.

Associate an existing user with a consumer
record

Associate a Unified Consumer user with a
consumer record by creating a consumer user
and then linking the user with a consumer
record. For more information, see Associate an
existing user to a consumer record.

Related topics
Configuring a user as a Unified Consumer
Roles installed with Employee as a Consumer
Supported and unsupported roles and features
Activate Unified Consumer
Activate the Unified Consumer functionality within the Customer Service Management (CSM)
application by updating the Consumer script include. This modification enables you to display
the other sys_user extension records in the reference list for the users in the csm_consumer
table.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

93


<!-- page 94 -->
About this task

To enable access to sys_users (internal users), add the sys_user to the user extension in the
Consumer script include.

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Open the Consumer script include and modify the script as follows:
Add the initialize method to the Consumer script include and set this.userExtensions value.
var Consumer = Class.create();
Consumer.prototype = Object.extendsObject(ConsumerImpl, {
initialize: function() {
ConsumerImpl.prototype.initialize.call(this);
this.userExtensions = ["csm_consumer_user",
"sys_user"];
},
type: 'Consumer',
});

Note: While creating a consumer user from the consumer form, you are redirected to
the interceptor form to select the user type.
3. Select Update.

What to do next

Add a user to your instance. For more information, see Creating and associating a Unified
Consumer user to a consumer record.
Assign the Unified Consumer role to a user
Assign the Unified Consumer (sn_customerservice.unified_consumer) role to the sys_user to
designate them as a consumer in the Customer Service Management (CSM) application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > User Administration > Users.
2. Select the user from the user record.
3. In the Roles related list, select Edit.
4. In the Collection list, select the Unified Consumer (sn_customerservice.unified_consumer) role
and move it to the Roles list.
5. Select Save.

Result

The sys_user is assigned to a unified consumer role (sn_customerservice.unified_consumer).

What to do next

Create and associate a Unified Consumer user to a consumer record. For more information, see
Creating and associating a Unified Consumer user to a consumer record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

94


<!-- page 95 -->
Creating and associating a Unified Consumer user to a consumer record
Create and associate a Unified Consumer user with a consumer record so that your user can
access the Customer Service Portal (CSP). This process involves creating a Unified Consumer
user through a consumer form and then associating the user to a consumer record.
Create a Consumer User through a consumer form
Create a Consumer User through the User lookup list on the consumer form in the Customer
Service Management (CSM) application.

Before you begin

Role required: admin

About this task

You can create both the internal (snc_internal) and external (snc_external) users.

Note: Only administrators can associate a sys_user with a consumer, and each user can
be associated with only one consumer.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Select the consumer from the consumer record.
3. In the Login Details related list, select the User lookup icon

to open the list of sys_users.

4. On the Users list, select New.

Note: If the unified consumer is not configured, the system redirects to the consumer
user form. If other user extensions are configured, it redirects to the interceptor, allowing
you to select the user type.
5. On the form, fill in the fields.
For a description of the field values, see Create a user

.

6. Select Submit.

What to do next

Associate an existing user with a consumer record. For more information, see Associate an
existing user with a consumer record.
Associate an existing user with a consumer record
Associate a user with a consumer record in the Customer Service Management (CSM)
application. After the association is done, the user can access the Consumer Service Portal
(CSP) as a consumer to search for information, create cases, and more.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Select the consumer from the consumer record.
3. In the Login Details related list, select the User lookup icon

to open the list of sys_users.

4. On the Users form, select the user to associate with the consumer record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

95


<!-- page 96 -->
Note: If the unified consumer is activated, you can select the user type from the
interceptor form.
5. Select Save.

Result

The sys_user is associated with the consumer record. The user can now access the Consumer
Service Portal (CSP) as a consumer.
Configure Contributor Users
The CSM Contributor User plugin enables you to engage middle office teams in resolving
customer issues and requests.

Before you begin

Role required: admin

About this task

With the provided roles, relationships, and user profile attributes, contributors can report and
collaborate on cases created for customers, service organizations, or themselves.
The CSM Query Rules plugin is automatically activated by CSM Contributor User plugin
(com.snc.csm_contributor_user). For more information, see CSM Query Rules.

Procedure
1. Activate the CSM Contributor User plugin (com.snc.csm_contributor_user).
2. Assign the contributor user roles to middle office users.
3. Create relationships.
4. Ensure the sn_cs_queryrules.use_query_rules property is set to true.
Contributor users
With contributor user roles, you can engage both internal and external users to assist in resolving
customer issues and requests.
The contributor users feature provides unified customer support for internal and external
customers. With this feature, you can serve internal and external customers through shared
service teams and service organizations:
• Enable service organizations to serve one another and external customers.
• Enable employees to request support for themselves and for external customers.
• Enable middle office agents to work on specific tasks that are required to resolve cases.

Overview of contributor user roles
The contributor users feature includes several roles that you can assign to users to control
access to cases, case tasks, and case-related information. These roles can be assigned to users
based on different business needs. In some cases, these roles also provide access to the parent
cases and associated customer information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

96


<!-- page 97 -->
Contributor user roles

The contributor users feature also includes viewer roles that enable employees to view cases,
cases tasks, or core customer data. These roles include:
• Case Viewer
• Case Task Viewer
• Customer Data Viewer
Contributor user role description and capabilities
Requester type Description

Capabilities

Requester for
any customer

A requester who can create
cases on behalf of any
customer.

This user can:

This user:
• Works with accounts and
contacts or consumers.

• Create cases for customers who visit a
business location, including cases for
catalog items (requests).

• Uses the Customer or
Consumer Service Portal to
assist customers.

• Create cases from communication channels
available to customers including phone,
web, chat, Virtual Agent, and messaging.

Roles:

If also an internal user on a case, this user can:

• Search knowledge articles and catalog
items.

• Add additional comments and attachments
• Account contributor
(sn_customerservice.account_contributor)
• Accept reject a solution
• Consumer contributor
• Close a case
(sn_customerservice.consumer_contributor)
• Receive notifications of case updates
• Read work notes
Requester for
my customers A requester who can create
cases on behalf of customers
with whom they have an
established relationship.
This user:

This user can:
• Search knowledge articles and catalog
items.
• Create cases on behalf of customers with
whom they have a relationship.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

97


<!-- page 98 -->
Contributor user role description and capabilities (continued)
Requester type Description

• Works with accounts and
contacts or consumers.
• Uses the Customer or
Consumer Service Portal to
assist customers.
• Manages customer
relationships and assists
with customer cases.

Capabilities

• Create cases from communication channels
available to customers including phone,
web, chat, Virtual Agent, and messaging.
• View and follow up on all cases created
for customers with whom they have a
relationship.
• Update customer data such as adding
contacts and addresses.

• Update cases:
Role: Relationship contributor
◦ Add additional comments and
(sn_customerservice.relationship_contributor)​
attachments
◦ Accept or reject a solution
◦ Close a case
◦ Receive notifications of case updates
◦ Read work notes
Requester
for service
organization

A requester who can create
cases on behalf of their
business location.

This user can:

This user:

• Create cases on behalf of their business
location, including cases for catalog items
(requests), and follow up on those cases.

• Works with accounts and
contacts, consumers, and
households.
• Uses the Customer or
Consumer Service Portal to
assist customers.

• Search knowledge articles and catalog
items.

• Create cases from communication channels
available to customers including phone,
web, chat, Virtual Agent, and messaging.
• View and follow up on other cases created
for the user's business location.

Role: Service
organization contributor
If also an internal user on a case, this user can:
(sn_customerservice.service_organization_contributor)
• Add additional comments and attachments
• Accept or reject a solution
• Close a case
• Receive notifications of case updates
• Read work notes
Requester for
self

A requester who can create
cases for themselves.
This requester accesses
cases through a unified
employee portal, if provided
by their organization.

This user can:
• Search knowledge articles and catalog
items.
• Create cases on behalf of themselves,
including cases for catalog items (requests).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

98


<!-- page 99 -->
Contributor user role description and capabilities (continued)
Requester type Description

Capabilities

Role: Self contributor
• Create cases from communication channels
(sn_customerservice.self_contributor​
available to customers including phone,
)
web, chat, Virtual Agent, and messaging.
• View and follow up on the cases that they
have created from themselves:
◦ Add additional comments and
attachments
◦ Accept or reject a solution
◦ Close a case
◦ Receive notifications of case updates
◦ Read work notes
Case task
agent

A fulfiller, such as a middle
office agent, who works on a
specific set of tasks required
to resolve a case. These case
tasks:
• Are assigned to the agent
or to their department or
group.
• Focus on a specific
function or expertise of the
department or group.
This agent typically uses a
workspace to complete these
tasks.

This user can:
• View and work on the case tasks assigned
to them or to their group or department.
• View the parent cases for the case tasks that
they can access.
• Communicate with agents on the parent
case through work notes and additional
comments.
• Communicate with agents on other case
tasks for the parent case through work notes
and additional comments.
• Access customer information needed to
complete a case task.

• Make changes to a case task that causes
an update to the state or stage of the parent
Role: Case task agent
case.
(sn_customerservice.case_task_agent​
)
• Search for knowledge articles to assist with
the case task.
The contributor user roles are available with different CSM plugins. For a more detailed
description of these user roles, see Contributor user roles.

Fields added to the Case form
The contributor users feature adds two fields to the Case form that are used to identify the
customer for a case. These fields are used in addition to the Account and Consumer fields.
Customer fields added to Case form
Field

Description

Requesting Service Organization

This field displays the name of a service organization.
If this field is filled in, and the Account and Consumer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

99


<!-- page 100 -->
Customer fields added to Case form (continued)
Field

Description

fields are empty, the customer for the case is a service
organization.
This field is included with the Service Organization
plugin (com.snc.service_organization).
Requested By

This field displays the name of the requester. If this field
is filled in and the Account, Consumer, and Requesting
Service Organization fields are empty, the customer for
the case is an employee.
This field is included with the Customer Service plugin
(com.sn_customerservice).

The Customer Service plugin adds two fields to the Notes section of the Case form for
contributor users.
Contributor fields added to Case form
Field

Description

Contributor Users

When a user with the case task agent role is assigned to
a case task, the user is added to the Contributor Users
field.
If a user is removed from the Assigned to field on the
Case Task form, and they are not assigned to any other
tasks for the case, they are also removed from the
Contributor Users field.

Contributor Groups

When a user with the case task agent role is assigned to
a case task, the user's assignment group is added to the
Contributor Groups field.
If a user is removed from the Assigned to field on
the Case Task form, and no other member of their
assignment group is assigned to any other tasks for
the case, the assignment group is removed from the
Contributor Groups field.
If a group is removed from the Assignment group field
on the Case Task form, and the group is not assigned
to any other tasks for the case, the assignment group is
removed from the Contributor Groups field.

Create Case for Customer record producer
The contributor users feature adds a record producer that contributor users can access from the
Customer and Consumer Service Portals and use to create cases. When creating a case, this
record producer presents different options for the customer in the Who are you creating this
case for? field, depending on the roles assigned to the logged-in user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

100


<!-- page 101 -->
Create Case for Customer record producer

When the contributor user selects an option, additional fields related to that customer type are
displayed.
Customer type fields added to Create a Customer Case record producer
Customer option

Account

Additional fields

• Reported by: the logged-in user with the
account contributor role.
• Account: the name of the account.
• Contact: the contact for the account.

Consumer

• Reported by: the logged-in user with the
consumer contributor role.
• Consumer: the name of the consumer.
• Household: the household that the
consumer belongs to.

Business Location

• Reported by: the logged-in user with the
service organization contributor role.
• Requesting Business Location: the name
of the service organization requesting
assistance.
• Requesting support from Business
Location: the name of the service
organization from which the Requesting
Business Location is asking assistance.

Myself

Reported By: the logged-in user with the self
contributor role.

Additional fields on the record producer that are common to all customer options include
Priority, Channel, Subject, and Description.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

101


<!-- page 102 -->
Viewing record lists on the Customer and Consumer Service Portals
The My Lists widget on the Customer and Consumer Service Portals includes different filters for
viewing records.
My Lists widget on the Customer Service Portal

Depending on the roles assigned to the logged-in user, this widget displays the following filters.
My Lists filters
Contributor user

My Lists filters

Account contributor

Cases for Accounts

Consumer contributor

Cases for Consumers

Service organization contributor

• My Cases for Business Locations: cases
created by the contributor user on behalf of
their business locations.
• All Cases for Business Locations: all
cases created on behalf of the contributor's
business locations, independent of who
created the case.

Self contributor

Cases for myself

Relationship contributor

Displays filters depending on the relationships
established for this user.
• My Cases for Accounts: cases created by
the contributor user on behalf of accounts
where the user is an Account Manager.
• All Cases for Accounts: all cases created
on behalf of accounts where the user is
an Account Manager, independent of who
created the case.
• My Cases for Consumers: cases created
by the contributor user on behalf of
consumers or households where the user is
a Relationship Manager.
• All Cases for Consumers: all cases created
on behalf of consumers or households
where the user is a Relationship Manager,
independent of who created the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

102


<!-- page 103 -->
My Lists filters (continued)
Contributor user

My Lists filters

For more information, see Service Model
Foundation relationships.

Access to case tasks
Users with the case task agent role can view and access case tasks in lists, on dashboards, and
on landing pages.
Use widgets to display case tasks on dashboards and landing pages.
Widgets for displaying case tasks
Widget

Task information displayed

My Case Tasks

This widget includes the following information
for each case task:
• Task number
• Status
• Subject
• Priority
• Case number
• Case short description

My Group's Case Tasks

This widget includes the following information
for each case task:
• Task number
• Status
• Subject
• Priority
• Assigned to
• Case number
• Case short description

Note: If a playbook is available, the system opens the case task within in the playbook. If
no playbook is available, the system opens the Case Task form.
Depending on assigned roles, contributor users can see different modules in CSM Agent
Workspace and CSM Configurable Workspace.
Module access by role
Role

Modules

Case task agent

Users with the case task agent role have
access to these modules:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

103


<!-- page 104 -->
Module access by role (continued)
Role

Modules

[sn_customerservice.case_task_agent]

• Case Task: includes the case tasks that the
user has access to.
◦ My Case Tasks
◦ My Open
◦ Unassigned for my groups
◦ My Accessible Tasks
• Customers: Includes read-only access to
customer information.
◦ Accounts
◦ Partners
◦ Contacts
◦ Consumers
◦ Households
◦ Household members

Case task viewer
[sn_customerservice.case_task_viewer]

Users with the case task viewer role have
access to All tasks in the Case Task module.

Case contributor viewer

Users with the case contributor viewer role
have access to My Contributing Tasks in the
[sn_customerservice.case_contributor_viewer] Case Task module.
Case viewer
[sn_customerservice.case_viewer]

Users with the case viewer role can see the
cases that they have access to in the Cases
module.

Case task agent access to customer information
Users with the case task agent role have read-only access to some of the customer information
for the parent case.
• For B2B cases: Account and contact records, including addresses, sold products, and install
base.
• For B2C cases: Consumer and household records, including addresses, sold products, install
base, and head of household.
• For business location cases: Service organization records, including internal contact
information.
Related topics
Contributor user roles
Configure Contributor Users

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

104


<!-- page 105 -->
Contributor user roles
The contributor user data model uses several roles that can be assigned to users to control case
access, case tasks, and case-related information based on different business needs.
These roles are included with several different plugins:
• Customer Service (com.sn_customerservice)
• CSM Contributor User (com.snc.csm_contributor_user)
• Business Location (com.snc.business_location)
• CSM Base Extension Entities (com.snc.cs_base_extension)
See the following tables for detailedrole descriptions.

Roles included with the Customer Service plugin
The following table lists the contributor roles that are included with the Customer Service
(com.sn_customerservice) plugin along with their descriptions and associated roles.
Customer service roles
Role

Description

Case task agent

This role provides access to
case tasks and related case
[sn_customerservice.case_task_agent]
information.
A user with this role can work
on the following case tasks:

Contains roles

• sn_customerservice.csm_workspace_user
• sn_customerservice.customer_data_viewer
• sn_customerservice.case_contributor_editor

• Tasks that are assigned to
the user or to the user's
assignment groups.
• Tasks that have been
created by the user.
With this role, the user can:
• View and update case tasks.
◦ Add work notes,
comments, and
attachments.
◦ Update the status.
◦ Perform additional actions
from a case task such as
sending email.
• Create case tasks and
assign them to other users.
With this role, users have
read-only access to customer
information for the case:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

105


<!-- page 106 -->
Customer service roles (continued)
Role

Description

Contains roles

• Account and contact
records (for B2B cases)
• Consumer and household
records (for B2C cases)
• Service organization
records (business location
cases)
Case task viewer

This role provides read-only
access to all case tasks.
[sn_customerservice.case_task_viewer]
Note: When combined
with the case viewer role
(sn_customerservice.case_viewer),
a user can access all
customer service cases
and all case tasks.
Case viewer

This role provides read-only
access to all cases.
[sn_customerservice.case_viewer]
Case contributor editor

This role provides limited write
access to some of the fields
[sn_customerservice.case_contributor_editor]
on the Case form if the user
has read access to the case
through another role.
Limited write access is
available for the following
fields:
• Work notes
• Additional comments
• Attachments
• State or stage changes
• Contributor users
• Contributor groups
• Watchlist
• Work notes list
Case contributor viewer

This role provides read access
to all tables associated with
[sn_customerservice.case_contributor_viewer]
a case if the user has read
access to the case through
another role.

• sn_shn.user
• wm_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

106


<!-- page 107 -->
Customer service roles (continued)
Role

Description

Contains roles

The user can access the All
tasks I participate in module
in CSM Agent Workspace.

Roles included with the CSM Contributor User plugin
The following table lists the contributor roles that are included with the CSM Contributor User
(com.snc.csm_contributor_user) plugin along with their descriptions and associated roles.
Roles for the contributor user plugin
Role

Description

Contains roles

Account contributor

This role enables users to
create cases for any account.
[sn_customerservice.account_contributor]

sn_customerservice.case_contributor_creator

Consumer contributor

This role enables users
to create cases for any
[sn_customerservice.consumer_contributor]
consumer.

sn_customerservice.case_contributor_creator

Self contributor

sn_customerservice.case_contributor_creator

This role enables users with
snc_internal role to create
[sn_customerservice.self_contributor]
cases for themselves.
Case contributor creator
[case_contributor_creator]

This role enables users to
create cases and is included
in the top-level contributor
roles.

Roles included with the Business Location plugin
The following contributor roles are included with the Business Location plugin
(com.snc.business_location).
Roles for the business location plugin
Role

Description

Service organization
contributor

This role enables users to
create cases for their service
organization (business
[sn_customerservice.service_organization_contributor]
location).

Contains roles

sn_customerservice.case_contributor_creator

Note: A service
organization contributor
must be a member of
a service organization
to create cases on its
behalf.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

107


<!-- page 108 -->
Roles included with the CS Base Extension Entities plugin
The following contributor roles are included with the CSM Base Extension Entities plugin
(com.snc.cs_base_extension).
Roles for the CS base extension entities plugin
Role

Description

Relationship contributor

This role enables users to
create cases for customers
[sn_customerservice.relationship_contributor]
with which they have an
established relationship.

Contains roles

sn_customerservice.case_contributor_creator

Note:
• The CSM
Contributor User
(com.snc.csm_contributor_user)
plugin must be
activated.
• A relationship
contributor must be a
member of an account,
contact, or household
team to create cases
on their behalf.

Additional roles
Additional contributor roles
Role

Description

Contains roles

Customer data viewer

This role provides read access
to customer data, including
[sn_customerservice.customer_data_viewer]
account, consumer, and
household data, and the
information included in the
related lists.
Workspace user

This role provides access
to case tasks from the
[sn_customerservice.csm_workspace_user]
following modules in the CSM
workspaces:
• My Case Tasks

• agent_workspace_user
• canvas_user
• sn_templated_snip.template_snippet_reader
• email_composer

• My Group's Case Tasks
Users can also:
• Use Agent Assist to search
for knowledge articles
(if the User Criteria is
set to provide access to
knowledge).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

108


<!-- page 109 -->
Additional contributor roles (continued)
Role

Description

Contains roles

• Create email (if the user has
write access to the record
and the email_composer
role).
• View response templates (if
response templates have
been configured for the
record.

Note: By default, this
role is added to the
case task agent role
(sn_customerservice.case_task_agent).
Configuring customer access management
Ensure that the customer access management is set up correctly for the user by completing all
configuration tasks using the Customer Service Management (CSM) application.

Overview of customer access management
Customer access management enables you to support multiple contacts and consumers on
cases and sold products, providing them with varying levels of access to the case. You can also
add additional internal users to a case.
As the needs of industry verticals grow, enterprises encounter complex use cases. There are
use case scenarios where case management can be handled by more than one customer
contact. For example, in a B2C scenario, let's assume that a loan applicant wants to add a coborrower, guarantor, and an attorney to a housing loan application where everyone has the same
level of access to respond to the loan application-related case. While in other cases, products
purchased by a customer can have multiple departments tracking the product, like the finance
team tracking the renewals of the product or the operations team tracking the maintenance of
the product.
Customer access management enables enterprises across industry verticals such as hi-tech,
telecommunications, financial services, government, and manufacturing to meet these complex
use cases.
Customer access management helps customer service agents add multiple related parties and
provides them with varying levels of access to a case. While adding related parties to a case,
customer service agents can select the relationship type. The relationship type defaults the
responsibility that drives the access level for the related parties, such as contacts or consumers
on a case.

Key benefits
Customer access management:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

109


<!-- page 110 -->
• Improves the customer experience by enabling related parties to track and collaborate on
cases
• Improves operational efficiency by enabling customers to track cases for products and
services
• Increases automation by automatically granting access to cases based on access to the sold
product

Configuration tasks for customer access management

Listed are the following key configuration tasks required to set up and manage
customer access.
Task

Description

Customer access
management tables
and plugins.

Add new tables or modify existing tables to enable customer access
management.

Install roles with
customer access
management.

Use different predefined functional and granular roles to establish
relationships between users and entities.

Create a
responsibility
definition

Define a role or responsibility that can support your organization and
users in the Customer Service Management (CSM) application.

Configure access
through the
responsibility access
configuration

Streamline how you create and update your responsibility definitions
and access configurations by using the declarative responsibility
framework in the Customer Service Management (CSM) application.

Create related party
configurations.

Link related party entity responsibilities to responsibility definitions by
adding related party configurations to a case.

Related topics
Data management for Customer Service Management
Using customer access management
Customer access management tables and plugins
Learn about the tables and plugins that you can use with customer access management.
The customer access management feature adds new tables or modifies existing tables. You can
activate the following plugins that enable features, such as enabling restricted contact access.
To activate these plugins, you must have the admin role. For details, see Activate a plugin .
Plugins used by customer access management
Plugin

Customer Service

Description

Enables
customers to
[com.sn_customerservice] provide service
and support
to external
customers by
using several

Tables

• Account Access
[sn_csm_account_access]
• Case
[sn_customerservice_case]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

110


<!-- page 111 -->
Plugins used by customer access management (continued)
Plugin

Description

Tables

communication
channels, such
as email, web,
and telephone.

• Related Party
[sn_customerservice_related_party]
• Related Party Configuration
[sn_customerservice_related_party_configuration]​

Customer Service Install
Base Management
[com.snc.install_base]

Enables
customers to
capture the
current state of
a customer's
install
base and
establish the
relationship
to any
downstream
entities
that might
impact their
functioning.

• Sold Product
[sn_install_base_sold_product]​
• Sold Product Related Party
[sn_install_base_sold_product_related_party]
• Install Base Related Party
[sn_install_base_related_party]

Tables used by customer access management
Table

Columns

Account Access

Account

[sn_csm_account_access]

[customer_account]

Enable restricted access to account contacts
for sold products and install bases.

Account associated with the sold product.
Restrict Contact Access
Access that is restricted to entities due to their
associated contacts.
If the value of the field is False, the contacts
that are associated with the account can read
the sold products and install bases that are
associated with the account.
If the value of the field is True, the contacts
that are associated with the accounts don’t
get access to the sold products and install
bases, unless they're added as a contact on
the record or as a related party. The following
contacts get access to the sold products and
install bases:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

111


<!-- page 112 -->
Tables used by customer access management (continued)
Table

Columns

• Contacts that are associated with the sold
product and install base records.
• Contacts that are added as related
parties with an Authorized Representative
responsibility.
• Contacts that belong to accounts that are
added as related parties with an Authorized
Account responsibility.
Responsibility Definition
[sn_customerservice_responsibility_def]

• Name
• Applicable to
• Type
• Unique
For more information on the column types, see
Create a responsibility definition.

Related Party Configuration

Default Responsibility

[sn_customerservice_related_party_configuration]​
[sn_customerservice_responsibility_def]
Reference to the
sn_customerservice_responsibility_def table.

Note: Starting with the Washington DC
release, the Related Party Configuration
[sn_customerservice_related_party_configuration]
table is reparented to the Application file
[sys_metadata] table.
Sold Product

Contact

[sn_install_base_sold_product]​

[customer_contact]​
Primary contact for the sold product.
Additional Consumers
[additional_consumers]​
Additional consumers that are associated with
the sold product. The Additional Consumers
field isn’t exposed to customers through any
forms or lists and is added for performance
reasons.
Additional Users
[additional_users]
Additional users that are associated with the
sold product. The Additional Users field isn’t

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

112


<!-- page 113 -->
Tables used by customer access management (continued)
Table

Columns

exposed to customers through any forms or
lists and is added for performance reasons.
Sold Product Related Party

Sold Product

[sn_install_base_sold_product_related_party]

[sn_install_base_sold_product]
Products and components that are sold to an
account or a consumer.
Type
[sn_customerservice_related_party_configuration]
Type of relationship that the related party has
with the sold product.
Responsibility
[sn_customerservice_responsibility_def]
Access level that the user has on the sold
product and associated entities.
Consumer
[csm_consumer]
Consumer that has the assigned responsibility
for the sold product.
Contact
[customer_contact]​
Contact that has the assigned responsibility
for the sold product.
Account
[customer_account]
All contacts within the account that have the
assigned responsibility for the sold product.

Contact Sold Product

Sold Product

[sn_install_base_rel_soldproduct_to_contact]​

[sn_install_base_sold_product]​

Establishes account contact relationships with Products and components that are sold to an
the sold products.
account or a consumer.
Contact

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

113


<!-- page 114 -->
Tables used by customer access management (continued)
Table

Columns

Note: Starting with

[customer_contact]​
the Zurich release, the
sn_install_base_rel_soldproduct_to_contact
Contact that has the assigned responsibility
table has been deprecated for new
for the sold product.
customers.
Type
For upgrade customers, the table
continues to be supported and extends
[sn_customerservice_related_party_configuration]
the sold product-related parties table
[sn_install_base_sold_product_related_party].
Name for this relationship.
Responsibility
[sn_customerservice_responsibility_def]
Access level that the contact has on the sold
product and associated entities.
Consumer Sold Product

Type

[sn_install_base_m2m_consumer_sold_product]​[sn_customerservice_related_party_configuration]

Note: Starting with

Name for this relationship.

the Zurich release, the
Responsibility
sn_install_base_m2m_consumer_sold_product
table has been deprecated for new
[sn_customerservice_responsibility_def]
customers.
Access level that the consumer has on the
For upgrade customers, the table
sold product and associated entities.
continues to be supported and extends
the sold product-related parties table
[sn_install_base_sold_product_related_party].
Case

Additional Consumers

[sn_customerservice_case]​

[additional_consumers]​
Additional consumers that are associated with
the case. The Additional Consumers field isn’t
exposed to customers through any forms or
lists and is added for performance reasons.
Additional Users
[additional_users]
Additional users that are associated with the
case. The Additional Users field isn’t exposed
to customers through any forms or lists and is
added for performance reasons.

Install Base Related Party

Install Base Item

[sn_install_base_related_party]

sn_install_base_item

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

114


<!-- page 115 -->
Tables used by customer access management (continued)
Table

Note: The
sn_install_base_related_party table
is extendible and can be used to
capture industry-specific attributes that
correspond to a related party.​

Columns

Instances of the product that are configured
for a customer.
Responsibility
[sn_customerservice_responsibility_def]
Access level to install the base and related
information.
Type
[sn_customerservice_related_party_configuration]
Name for this relationship.
User
sys_user
Consumer, contact, service organization,
member, or internal user that has the assigned
responsibility for the install base.
Consumer
[csm_consumer]
Consumer that has the assigned responsibility
for the install base.
Account
[customer_account]
All contacts within the account that have the
assigned responsibility for the install base.
Contact
[customer_contact]​
Contact that is primarily responsible for the
install base.
Service Organization
sn_customer_service_organization
Service organization that is primarily
responsible for the install base.
Class
class

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

115


<!-- page 116 -->
Tables used by customer access management (continued)
Table

Columns

Type of record.
Related Party

Responsibility

[sn_customerservice_related_party]

[sn_customerservice_responsibility_def]
Reference to the
sn_customerservice_responsibility_def table.

Roles installed with customer access management
Customer access management uses different predefined functional and granular roles to
establish relationships between users and entities. The granular and functional roles help
provide user access to information and maintain data security.

Functional and granular roles overview
Functional and granular roles help provide authorized related parties access to the case, and
provide additional contacts or additional consumers access to the sold product.
Granular roles provide access to cases, sold product, and related entities. One or more granular
roles can be bundled together as a functional role to perform a meaningful action. Linking
multiple granular roles to a functional role enables you to build your own access rules by
applying the functional and granular roles for various Customer Service Management (CSM)
entities.
A granular model helps to protect data by granting the required level of access to the relevant
CSM entities. With this functionality, each role is associated with a set of privileges or
responsibilities that determine users’ access to certain information. You can set granular policies
that authorize individuals to do their jobs efficiently and effectively, which helps to improve the
customer experience.

Roles and descriptions
Functional roles are a set of granular roles that are required to perform a function that requires
access on multiple entities. The following table lists the functional roles for customer access
management.
Functional roles
Role title [name]

Plugins
required

Description

Case Authorized Contact

Customer
This role provides
Service
access to add additional
[sn_customerservice.case_authorized_contact]
comments and
[com.sn_customerservice]
attachments, accept or
reject a solution, receive
notifications on case
updates, close a case,
and update case tasks.
Case Authorized
Consumer

Customer
Service

This role provides
access to add additional

Contains roles

sn_customerservice.case_write_granular

sn_customerservice.case_write_granular

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

116


<!-- page 117 -->
Functional roles (continued)
Role title [name]

Plugins
required

Description

Contains roles

comments and
[sn_customerservice.case_authorized_consumer]
[com.sn_customerservice]
attachments, accept or
reject a solution, receive
notifications on case
updates, close a case,
and update case tasks.
Case Authorized
Contributor

Customer
Service

This role provides
access to add additional
comments and
[sn_customerservice.case_authorized_contributor]
[com.sn_customerservice]
attachments, accept or
reject a solution, receive
notifications on case
updates, close a case,
and update case tasks.
Sold Product Authorized
Contact

Customer
This role provides access
Service
to view sold product
Install Base and associated install
[sn_install_base.sold_product_authorized_contact]
Management base items, create cases,
and access cases that
[com.snc.install_base]
are related to the sold
product. Also, this role
provides access to sold
product related parties,
affected install base
items, and manage
service catalog requests
from the sold product.
Sold Product Authorized
Consumer

Customer
This role provides access
Service
to view sold product and
Install Base associated install base
[sn_install_base.sold_product_authorized_consumer]
Management items, create cases, and
access cases related to
[com.snc.install_base]
the sold product. Also,
this role provides access
to sold product related
parties, affected install
base items, and manage
service catalog requests
from the sold product.
Install Base Authorized
Contact

Customer
This role provides the
Service
contact access to view
Install Base the install base and its
[sn_install_base.install_base_authorized_contact]
Management associated sold products
when added as a related
[com.snc.install_base]
party. Additionally, it
enables the contact to
create and manage cases
for the related install
base records. Creation

sn_customerservice.case_write_granular

• sn_customerservice.case_authorized_co

• sn_install_base.sold_product_contact_re

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_customerservice.case_authorized_co

• sn_install_base.sold_product_consumer

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

117


<!-- page 118 -->
Functional roles (continued)
Role title [name]

Plugins
required

Description

Contains roles

of case is only allowed
if the contact and install
base belong to the same
account.
Install Base Authorized
Consumer

Customer
This role provides the
Service
consumer access to view
Install Base the install base and its
[sn_install_base.install_base_authorized_consumer]
Management associated sold products
when added as a related
[com.snc.install_base]
party. Additionally, it
enables the user to
create and manage cases
for the related install base
records.​
Install Base Authorized
Contributor

Customer
This role provides the
Service
internal user to view
Install Base the install base and its
[sn_install_base.install_base_authorized_contributor]
Management associated sold products
when added as a related
[com.snc.install_base]
party. Additionally, it
enables the user to
create and manage cases
for the related install base
records.​
Install Base Authorized
Member

Customer
This role provides the
Service
service organization
Install Base member to view the
[sn_install_base.install_base_authorized_member]
Management install base and its
associated sold products
[com.snc.install_base]
when added as a related
party. Additionally, it
enables the user to
create and manage cases
for the related install base
records.​
Install Base Authorized
Account

Customer
Provides access to
Service
all the contacts of the
Install Base account to view the install
Management base and its associated
sold products when
[com.snc.install_base
added as a related party.
Additionally, it enables
the contact to create
and manage cases for
the related install base
records. Creation of case
is only allowed if contact
and install base belongs
to same account.

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

118


<!-- page 119 -->
Functional roles (continued)
Role title [name]

Install Base Service
Organization

Plugins
required

Description

Customer
Provides access to all
Service
the members of service
Install Base organization to view
Management the install base and its
associated sold products
[com.snc.install_base]
when added as a related
party. Additionally, it
enables the users to
manage cases for the
related install base
records.

sn_install_base.install_base_admin
Customer
Enables user with feature
Service
admin role to manage
Install Base administrative tasks like
Management read, write, create, delete,
data view, and case view
[com.snc.install_base]
related to install base
and sold product related
entities.

Contains roles

• sn_customerservice.case_write_granular

• sn_install_base.install_base_related_pa

• sn_install_base.sold_product_read_gran

• sn_install_base.install_base_read_granu

• sn_install_base.installed_product_read_

• sn_install_base.install_base_read
• sn_install_base.install_base_write
• sn_install_base.install_base_create
• sn_install_base.install_base_delete

• sn_customerservice.customer_data_view
• sn_customerservice.case.viewer

The following table lists the granular roles for customer access management.
Granular roles
Role title [name]

Plugin
required

Description

Sold Product Read

Customer
This role provides
Service
granular read access to
[sn_install_base.sold_product_read_granular]
Install Base the sold product.
Management

Contains roles

None

[com.snc.install_base]
Sold Product Contact
Read

Customer
This role provides
None
Service
granular read access to
Install Base related parties of the sold
[sn_install_base.sold_product_contact_read_granular]
Management product.
[com.snc.install_base]
Sold Product Contact
Write

Customer
This role provides
sn_install_base.sold_product_contact_rea
Service
granular write access to
Install Base related parties of the sold
[sn_install_base.sold_product_contact_write_granular]
Management product.
[com.snc.install_base]
Sold Product Consumer
Read

Customer
Service

This role provides
granular read access to

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

119


<!-- page 120 -->
Granular roles (continued)
Role title [name]

Plugin
required

Description

Contains roles

Install Base additional consumers of
[sn_install_base.sold_product_consumer_read_granular]
Management the sold product and sold
product-related parties.
[com.snc.install_base]
Sold Product Consumer
Write

Customer
This role provides
sn_install_base.sold_product_consumer_r
Service
granular write access to
Install Base additional consumers of
[sn_install_base.sold_product_consumer_write_granular]
Management the sold product and sold
product-related parties.
[com.snc.install_base]
Case Read

Customer
This role provides
Service
granular read access to
[sn_customerservice.case_read_granular]the case.
[com.sn_customerservice]
Cases Create

Customer
This role provides
Service
granular create access to
[sn_customerservice.case_create_granular]
the case.
[com.sn_customerservice]
Case Write

Customer
This role provides
Service
granular write access to
[sn_customerservice.case_write_granular]the case.
[com.sn_customerservice]
Case Related Party Write

Customer
This role provides
Service
granular write access to
[sn_customerservice.case_related_party_write_granular]
case-related parties.
[com.sn_customerservice]
Install Base Read

Customer
This role provides
Service
granular read access to
[sn_install_base.install_base_read_granular]
Install Base the install base.
Management

None

sn_customerservice.case_read_granular

• sn_customerservice.case_read_granular

• sn_customerservice.case_create_granula

None

None

[com.snc.install_base]
Install Base Related Party Customer
This role provides
Read
Service
granular read access to
Install Base install base related party
[sn_install_base.install_base_related_party_read_granular​
Management records.​
]
[com.snc.install_base]
Install Base Related Party Customer
This role provides
Write
Service
granular write access to
Install Base install base related party
[sn_install_base.install_base_related_party_write_granular]
Management records.​

None

[sn_install_base.install_base_related_party
]

[com.snc.install_base]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

120


<!-- page 121 -->
Granular roles (continued)
Role title [name]

Plugin
required

Description

Installed Product Read

Customer
This role provides
Service
granular read access to
[sn_install_base.installed_product_read_granular]
Install Base the installed product.
Management

Contains roles

None

[com.snc.install_base]
Related topics
Assign granular roles to a functional role
Assign granular roles to a functional role
Assign granular roles to a functional role to help provide authorized related parties with access
to the case, and provide additional contacts and additional consumers with access to the sold
product.

Before you begin

Role required: admin

Procedure
1. In the navigation filter, enter sys_user_role.list.
2. In the Search field, enter *authorized.
You can see the list of functional roles that are provided in the base system.
3. Select the functional role that you want to customize.
4. From the Contains Roles related list, select Edit and add the desired granular role to the
functional role.
5. Select Save.
The granular role is added to the functional role.
Create a responsibility definition
A responsibility, or responsibility definition, specifies the role or function a user has within
an entity, determining access through relationships. When creating a relationship, users are
assigned specific responsibilities that grant access to the entity and its related entities.

Before you begin

Role required: admin

About this task

If you’re using the Service Model Foundation feature, you can also create the responsibility
definitions to use in customer and consumer relationships. For more information about
configuring Service Model Foundation, see Configure Service Model Foundation.
The Responsibility Definition [sn_customerservice_responsibility_def] table supports domain
separation. For more information on domain separation, see Domain separation and Customer
Service Management.

Note: Starting with the Vancouver release, the Responsibility Definition
[sn_customerservice_responsibility_def] table is reparented to the Application file
[sys_metadata] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

121


<!-- page 122 -->
Procedure
1. Navigate to All > Customer Service > Administration > Responsibility Definitions.
2. Select New.
3. On the form, fill in the fields.
Responsibility Definition form fields
Field

Definition

Name

Name of the responsibility, fr example, account manager.

Type

Type of users to whom the responsibility can be assigned to:
◦ User: Select User if this responsibility should be assigned to an employee. When
assigning this type, the list of available users comes from the users [sys_users]
table.
◦ Contact: Select Contact if this responsibility should be assigned to a customer
contact. When assigning this role, the list of available users comes from the
contact [customer_contact] table.
◦ Consumer: Select Consumer if this responsibility should be assigned to a
customer contact. When assigning this role, the list of available users comes from
the consumer [csm_customer] table.
◦ Account: Select Account if this responsibility should be assigned to a customer
contact. When assigning this role, the list of available users comes from the
account [customer_account] table.
◦ None: Select None if this responsibility definition is to be used when creating
relationships between consumers.

Note: Only the responsibility definitions with Type set to User can be used in
the following Service Model Foundation relationships:
◦ Account Team Member
◦ Consumer Team Member
◦ Household Team Member
Unique Option that you can select to disable the duplicate entries for the responsibility
definition.
4. Select Submit.

What to do next

Configure access through the responsibility access configuration
Related topics
Service Model Foundation responsibilities
List of responsibilities provided with the base system
List of responsibilities that are provided with the base system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

122


<!-- page 123 -->
Responsibility table
Used in
Relationship

Role Required

Supported through
responsibility
access
configuration

Responsibility

Plugin

Account
Manager

Customer
Account Team
Yes
• Relationship
Service Base
Member
Agent
Extension
[sn_customerservice_team_member]
[sn_customerservice.relationship_agent]
Entities
• Relationship
[com.snc.cs_base_extension]
Contributor
[sn_customerservice.relationship_contributor]

Relationship
Manager

Customer
No
• Consumer
• Relationship
Service Base
Team Member
Agent
Extension
[sn_customer_rel_consumer_to_user]
[sn_customerservice.relationship_agent]
Entities
• Household
• Relationship
[com.snc.cs_base_extension]
Team Member
Contributor
[sn_customer_rel_household_to_user]
[sn_customerservice.relationship_contributor]

Authorized
Account

Customer
Sold Product
Sold Product
No
Service
Related Party
Authorized
[com.sn_customerservice]
[sn_install_base_sold_product_related_party]
Contact
[sn_install_base.sold_product_authorized_contact]
Install Base
Install Base
Related Party
Authorized
[sn_install_base_related_party]
Contact
[sn_install_base.install_base_authorized_contact]

Authorized
Representative

Customer
Sold Product
No
• Sold Product
Service
Related Party
Authorized
[com.sn_customerservice]
[sn_install_base_sold_product_related_party]
Contact
[sn_install_base.sold_product_authorized_contact]

• Sold Product
Authorized
Consumer
[sn_install_base.sold_product_authorized_consume
Install Base
• Install Base
Related Party
Authorized
[sn_install_base_related_party]
Contact
[sn_install_base.install_base_authorized_contact]

• Install Base
Authorized
Consumer
[sn_install_base.install_base_authorized_consumer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

123


<!-- page 124 -->
Responsibility table (continued)

Responsibility

Plugin

Used in
Relationship

Role Required

Supported through
responsibility
access
configuration

Related Party
• Case
[sn_customerservice_related_party]
Authorized
Contact
[sn_customerservice.case_authorized_contact]
• Case
Authorized
Consumer
[sn_customerservice.case_authorized_consumer]
• Case
Authorized
Contributor
[sn_customerservice.case_authorized_contributor]
Consumer
Consumer
to Consumer
[csm_consumer]
Relationship
[sn_customer_rel_consumer_to_consumer]
Household
Consumer
Member
[csm_consumer]
Relationship
[sn_customer_rel_household_member_relationship]
Preferred
Technician

Customer
Account Team
NA
No
Service
Member
[com.sn_customerservice]
[sn_customerservice_team_member]

Primary Support
Agent

Customer
Account Team
NA
No
Service
Member
[com.sn_customerservice]
[sn_customerservice_team_member]

Support Manager Customer
Account Team
NA
No
Service
Member
[com.sn_customerservice]
[sn_customerservice_team_member]
Asset Contact

Customer
Account Team
NA
No
Service
Member
[com.sn_customerservice]
[sn_customerservice_team_member]

Authorized
Service
Organization

Customer
Install Base
Install Base
No
Service
Related Party
Authorized
Install Base
[sn_install_base_related_party]
Member
Management
[sn_install_base.install_base_authorized_member]
[com.snc.install_base]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

124


<!-- page 125 -->
Responsibility table (continued)

Responsibility

Plugin

Used in
Relationship

Role Required

Supported through
responsibility
access
configuration

Note: You
must install
com.snc.service_organization
for
activating
com.snc.install_base
plugin.
Location
Relationship
Manager

Business
Service
Location
No
Location
Organization
Relationship
[com.snc.business_location]
Member
Manager
Responsibility
[sn_bus_loc.location_relationship_manager]
[sn_csm_svc_org_member_responsibility]

Location
Contributor

Business
Service
Service
No
Location
Organization
Organization
[com.snc.business_location]
Member
Contributor
Responsibility
[sn_customerservice.service_organization_contributor
[sn_csm_svc_org_member_responsibility]

Location
Consumer Agent

Business
Service
Location
No
Location
Organization
Consumer Agent
[com.snc.business_location]
Member
[sn_customerservice.svc_location_consumer_agent]
Responsibility
[sn_csm_svc_org_member_responsibility]

Location Agent

Business
Service
Location Agent
No
Location
Organization
[sn_customerservice.svc_location_agent]
[com.snc.business_location]
Member
Responsibility
[sn_csm_svc_org_member_responsibility]

Location
Manager Fulfiller

Business
Service
Location
No
Location
Organization
Manager
[com.snc.business_location]
Member
[sn_customerservice.svc_location_manager]
Responsibility
[sn_csm_svc_org_member_responsibility]

Location
Manager
Contributor

Business
Service
Location
No
Location
Organization
Manager
[com.snc.business_location]
Member
Contributor
Responsibility
[sn_customerservice.svc_location_manager_contribut
[sn_csm_svc_org_member_responsibility]

Location Support Business
Service
Location
No
Agent
Location
Organization
Support Agent
[com.snc.business_location]
Member
[sn_bus_loc.svc_location_support_agent]
Responsibility
[sn_csm_svc_org_member_responsibility]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

125


<!-- page 126 -->
Creating a responsibility access configuration
Create responsibility access configurations to add or modify access for various user
relationships using different association types.
Administrators can use these configurations to define the roles required to access specific
table records, including the level of access. With new filters and table mappings, you can model
granular relationships that represent a wide range of responsibilities within your organization.
For example, starting with the Zurich release, account manager responsibility access
configuration is introduced out of the base system. Using this responsibility, you can assign
the account manager responsibility to a specific account. This configuration grants access to
account information, along with related entities such as cases, sold products, and more.

Association types
As an administrator, you can use this flexible framework to either create a responsibility
with customized access rules or modify existing configurations as needed. You can create
responsibility access configurations for various relationship patterns using appropriate
association types.
• Simple association
• Dependent association
• Advanced association

Simple association
You can use this association when there’s a direct relationship between the user and the target
record. This association type uses direct field matching and doesn’t require intermediate tables
or custom logic.
Simple association workflow

Simple association workflow
This scenario explains how access to case records is granted based on a user’s direct
relationship to the associated account. For example, Anna is an account manager for the
customer account XYZ company. They need access to case records that are directly linked to
XYZ company. As the case record includes a field for the associated account, the system can
easily validate Anna’s access based on the role and the account ID.
The system determines Alex’s access using the following logic:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

126


<!-- page 127 -->
• Anna opens a case record.
• The system identifies the account associated with the case.
• It checks the account team member table to find a record where:
◦ The user is Anna
◦ The responsibility is the account manager
◦ The account matches the account listed on the case
• If a matching record is found, access to the case is automatically granted.
This approach confirms that access is granted efficiently when there’s a clear, one-to-one
relationship between the user and the account associated with the case.

Dependent association
You can use this association when access must be determined through an intermediate
relationship, often involving a many-to-many (M2M) table. This setup is common when a
requester’s connection to a record is established indirectly through related items.
Dependent association workflow

Dependent association workflow
This scenario explains how access to case records is granted based on a requester’s
relationship to install base items associated through an intermediate table. For example, Alex is a
team member with authorized account responsibility and require access to specific case records
that are tied to install base items. Alex’s access depends on whether these case records are
listed as an authorized party for any of those items. However, the relationship between the case
and the install base item isn’t direct, but it’s maintained through a separate affected install base
table.
The system determines Alex’s access using the following logic:
• Alex opens a case record.
• The system checks if the case is linked to any install base items using the affected install base
table.
• It retrieves the install base items associated with the case.
• The system checks if Alex is listed with the authorized account role for any of the install base
items in the related party table.
• If Alex holds the required role for any matching item, access to the case record is automatically
granted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

127


<!-- page 128 -->
This approach confirms that access is granted only when a valid relationship exists between the
requester and install base items, enforcing secure access even through indirect associations.

Advanced association
You can use this association in complex scenarios where simple relationship-based access is
insufficient. This association type relies on custom script logic to validate requester's access
across multiple related records.
Advanced association workflow

Advanced association workflow
This scenario explains how access to escalation records is determined based on the requester’s
relationship to the associated account.
For example, Anna is an account manager who needs access to specific escalation records.
Some of these escalation records are tied to cases, which are in turn associated with accounts
Anna manages. A custom script identifies the related accounts and verifies Anna’s role before
granting access to the escalation records.
The system determines Alex’s access using the following logic:
1. Anna opens an escalation record.
2. The system checks the escalation’s source:
◦ If the escalation is linked to a customer case, the system identifies the account associated
with that case.
◦ If the escalation is directly linked to an account, the system uses the account record.
3. The system verifies if Anna is assigned as the account manager for the identified account.
4. If Anna is assigned to the account, access to the escalation record is automatically granted.
This approach confirms that access is granted only when a clear relationship exists between the
user and account, whether the link is direct or through a related case.
Configure access through the responsibility access configuration
Streamline how you create and update your responsibility definitions and access configurations
by using the declarative responsibility framework in the Customer Service Management (CSM)
application. This framework enables you to select the level of access for each responsibility by
leveraging low-code or no-code capabilities, which reduces the time required for scripting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

128


<!-- page 129 -->
Before you begin

Role required: admin

About this task

The Responsibility Access Configuration [sn_customerservice_responsibility_access_config]
table is used to store the metadata of the responsibility access configuration. With this
configuration, you can enable different levels of access for related party users across different
records of the same entity. For example, a user with a location manager role might serve as a
fulfiller at one business location and as an agent at another.
For more information about creating a responsibility definition, see Create a responsibility
definition. The need for domain separation in configuring access records is determined by the
domain of the referenced responsibility.

Procedure
1. Navigate to All > Customer Service > Administration > Responsibility Definitions.
2. Select a responsibility definition record.
3. From the Responsibility Access Configuration related list, select New.
4. On the form, fill in the fields.
Responsibility Access Configuration form fields
Field

Description

Responsibility

Responsibility applicable to this
configuration, for example, account manager
or authorized representative.

Active

Status of the configuration. By using this
functionality, you can enable or disable a
responsibility access configuration.
The default value is True.

Roles required

Roles required in addition to responsibilities
to get the access.

Access levels

Levels of access for the accessible entities.
The list shows the access levels, including
read, write, and full.

Note: Full represents a special access
level that is equivalent to read, write,
and create.
Accessible table

Entities or records accessible through this
configuration, like cases or sold products.

Accessible table filter

Additional conditions to filter the accessible
table.

Relationship table

Relationship table where this configuration is
applied, for example account team member
[sn_customerservice_team_member] table.

Relationship filter

Additional conditions to filter the relationship
records applicable to the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

129


<!-- page 130 -->
Field

Description

Type

Type of association between the accessible
and relationship table.
Listed are three types of association:
◦ Simple
◦ Dependent
◦ Advanced

Relationship field

Field on the relationship table to be used for
association.

Accessible table field

Field on the accessible table to be used for
association.

Dependent table

Table that contains the mapping between the
relationship field and accessible table field.

Dependent relationship field

Field on the dependent table that maps to
the selected relationship field.

Dependent accessible table field

Field on the dependent table that maps to
the selected accessible table field.

Field values script

Script that returns the valid association
values for advanced association logic.

Note: To create new entries to the Applies to Relationship, Access Levels,
or Accessible Entities fields in the Responsibility Access Configuration
table, you must migrate all existing configurations for these fields in the
global.CSMRelationshipConstantsSNC script include.
5. Select Submit.
Granular roles and supported entities for responsibility framework
Starting with the Yokohama release, multiple module-level granular roles are introduced to
simplify defining and configuring the responsibility framework. These new granular roles simplify
tasks by removing the need to create custom access control lists (ACLs) on the target table
when a responsibility ACL is already in place. This change promotes a more straightforward and
declarative migration process.
Granular roles for access through entities

The granular roles provides Create, Read, and Update (CRU) access across
entities, based on the access permissions defined for each responsibility
within the declarative responsibility framework.
Granular roles

Description

sn_customerservice.cust_data_resp_granular

Provides granular access to customer-related
foundational entities (including accounts,
contacts, consumers, and households)
through the responsibility framework.

sn_customerservice.case_mgmt_resp_granular Provides granular access to case and related
entities through the responsibility framework.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

130


<!-- page 131 -->
Granular roles for access through entities

The granular roles provides Create, Read, and Update (CRU) access across
entities, based on the access permissions defined for each responsibility
within the declarative responsibility framework.
(continued)
Granular roles

Description

sn_install_base.resp_granular

Provides granular access to installed base
items, sold products, and related entities
through the responsibility framework.

sn_customerservice.contract_entitlement_resp_granular
Provides granular access to contracts,
entitlements, and related entities through the
responsibility framework.
Granular roles and supported entities

Granular roles are designed based on feature sets and can be used to provide
access to supported tables or entities though the responsibility framework.
Feature Set

Granular Role

Supported Tables/Entities

Customer Data

sn_customerservice.cust_data_resp_granular
• Account
[customer_account]
• Account Team Member
[sn_customerservice_team_member]
• Account Address
[account_address_relationship]
• Account Access
[sn_csm_account_access]
• Account Relationship
[account_relationship]
• Contact Relationship
[sn_customerservice_contact_relationship]
• Contact [customer_contact]
• Consumer [csm_consumer]
• Account Consumer
[sn_acct_consumer_account_consumer]
• Consumer Profile Location
[sn_csm_consumer_profile_location]
• Escalation
[sn_customerservice_escalation]
• Location [cmn_location]

Case Management

sn_customerservice.case_mgmt_resp_granular
• Case
[sn_customerservice_case]
• Task
[sn_customerservice_task‑]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

131


<!-- page 132 -->
Granular roles and supported entities

Granular roles are designed based on feature sets and can be used to provide
access to supported tables or entities though the responsibility framework.
(continued)
Feature Set

Granular Role

Supported Tables/Entities

• Task SLA [task_sla‑]
• Escalation
[sn_customerservice_escalation]
• Work Order [wm_order]
Install Base Management

sn_install_base.resp_granular

• Installed Product
[sn_install_base_m2m_installed_product]

• Affected Install Base
[sn_install_base_m2m_affected_install_base
• Install Base Item
[sn_install_base_item]

• Sold Product Covered
[sn_install_base_m2m_contract_sold_produc
• Sold Product
[sn_install_base_sold_product]
• Install Base Related Party
[sn_install_base_related_party]

• Sold Product Related Party
[sn_install_base_sold_product_related_party
• Asset Contact
[sn_customerservice_m2m_asset_contact]
• Asset [alm_asset]
Contracts and Entitlements

sn_customerservice.contract_entitlement_resp_granular
• Contract [ast_contract]
• Entitlement
[service_entitlement]

System roles containing responsibility granular roles
System roles and related granular roles
System Roles

sn_customerservice.relationship_contributor

Granular Roles

• sn_customerservice.cust_data_resp_granular
• sn_install_base.resp_granular
• sn_customerservice.case_mgmt_resp_granular

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

132


<!-- page 133 -->
System roles and related granular roles (continued)
System Roles

Granular Roles

sn_customerservice.relationship_agent

• sn_customerservice.cust_data_resp_granular
• sn_install_base.resp_granular
• sn_customerservice.case_mgmt_resp_granular
• sn_customerservice.contract_entitlement_resp_granular

Create related party configurations
Related party configurations define the title of a relationship between an entity and an
organization or user. These configurations also enable linking related party types with
responsibility definitions to grant access as needed.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Related Party Configuration.
2. To create a related party configuration, select New.
3. On the form, fill in the fields.
Related Party Configuration record form
Field

Description

Name

Related party configuration type.

Applies To

Table assigned with the related party configuration.

Entity Type

Entity type such as an account, a consumer, or a product.

Reference
Condition

Filter condition for defining the related party configuration. In the Reference
Condition field, you can select Add Filter Condition or Add "Or" Clause.

Default
Access level to different entities and the related information.
Responsibility
Note: Whenever a related party record is created, the Responsibility
field gets auto-populated from the default responsibility associated with
the selected party type.
Default Order Numerical value given to establish the priority of the relationship.

Note: Whenever a related party record is created, the Order field gets
auto-populated from the default order associated with the selected
party type.

4. Select Submit.
List of related party configurations provided with the base system
Related party configurations for different entities that are provided with the base system are
listed in the following tables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

133


<!-- page 134 -->
Related party configurations for cases
Types and responsibilities for cases are listed in the following table.
Cases
Type

Default Responsibility

Authorized Contact

Authorized Representative

Authorized Consumer

Authorized Representative

Authorized Contributor

Authorized Representative

Listed Contact

Not applicable

Listed Consumer

Not applicable

Related party configurations for sold products
Types and responsibilities for sold products are listed in the following table.
Sold Products
Type

Default Responsibility

Authorized Account

Authorized Account

Authorized Contact

Authorized Representative

Authorized Consumer

Authorized Representative

Listed Account

Not applicable

Listed Contact

Not applicable

Listed Consumer

Not applicable

Related party configurations for install bases
Types and responsibilities for install bases are listed in the following table.
Install Bases
Type

Default Responsibility

Authorized Account

Authorized Account

Authorized Contact

Authorized Representative

Authorized Consumer

Authorized Representative

Authorized Contributor

Authorized Representative

Authorized Member

Authorized Representative

Authorized Service Organization

Authorized Service Organization

Listed Account

Not applicable

Listed Contact

Not applicable

Listed Consumer

Not applicable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

134


<!-- page 135 -->
Install Bases (continued)
Type

Default Responsibility

Listed Contributor

Not applicable

Listed Member

Not applicable

Listed Service Organization

Not applicable

For more information on install base related parties, see Add related parties to an install base
item.

Related party configurations for account team members
Types and responsibilities for account team member are listed in the following table.
Account Team Members
Type

Default Responsibility

Account Manager

Account Manager

Preferred Technician

Preferred Technician

Primary Support Agent

Primary Support Agent

Support Manager

Support Manager

Related party configurations for contact relationships
Types and responsibilities for contact relationship are listed in the following table.
Contact Relationships
Type

Default Responsibility

Asset Contact

Asset Contact

Related party configurations for consumer relationships
Types and responsibilities for consumer relationship are listed in the following table.
Consumer Relationships
Type

Default Responsibility

Authorized Representative

Authorized Representative

Related party configurations for household member relationships
Types and responsibilities for household member relationship are listed in the following table.
Household Member Relationships
Type

Default Responsibility

Authorized Representative

Authorized Representative

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

135


<!-- page 136 -->
Related party configurations for service organizations
Types and responsibilities for service organizations are listed in the following table.
Service Organizations
Type

Default Responsibility

Location Agent

Location Agent

Location Consumer Agent

Location Consumer Agent

Location Contributor

Location Contributor

Location Manager Contributor

Location Manager Contributor

Location Manager Fulfiller

Location Manager Fulfiller

Location Support Agent

Location Support Agent

Listed Member

Not applicable

Note:
• Whenever a related party record is created, the Responsibility field gets auto-populated
from the default responsibility associated with the selected party type. Similarly, the
Order field gets auto-populated from the default order associated with the selected party
type.
• Listed role types don’t have any responsibility. Since the correct role and responsibility
determine access, related parties are not granted access if the Responsibility field is left
empty.​
Populate the Type field in relationship tables using the fix script
Leverage the fix script to add and manage the Type field in relationship tables. This script
simplifies data mapping and enhances record consistency across the base system.

Before you begin

Role required: admin

About this task

Starting with the Yokohama release, a new optional Type field is added to the account team
member [sn_customerservice_team_member] table, which previously included the fields
Account, User, and Responsibility. This fix script applies to all relationship tables in the base
system.
The Type field references the related party configuration
[sn_customerservice_related_party_configuration] table, a metadata table that enables
administrators to define a Type Configuration for each responsibility. This field enables
administrators to assign meaningful business names to responsibilities, reducing duplication.
By internally referencing the same responsibility, the Type field simplifies data management and
improves record consistency.
You can use the following procedure to populate the Type field using the fix script.

Procedure
1. Identify distinct Responsibility values in the relationship table that you want to update.
2. Create corresponding Type Configuration records in the related party configuration
[sn_customerservice_related_party_configuration] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

136


<!-- page 137 -->
3. Run the following fix script to populate the Type field.
fixRelatedPartyTypeField(String tableName, String
appliesTo, String entityType, String typeField, String
responsibilityField)
/**
* Fixes the related party type field in the specified table.
*
* @param tableName The name of the table to update.
* @param appliesTo The value for the applies_to field.
* @param entityType The value for the entity_type field.
* @param typeField The name of the type field to update. If
null, defaults to FIELD_TYPE.
* @param responsibilityField The name of the responsibility
field to update. If null, defaults to FIELD_RESPONSIBILITY.
*/

Result

The fix script:
• Automatically populates the Type field for matching records in the selected relationship table.
• Maps existing responsibilities to their corresponding Type Configuration records.
• Processes updates in batches for optimized performance.
• Logs updates for reference.

Note: For large record volumes, run the fix script during system downtime to avoid
performance impacts.
You can manually populate the Type field by navigating to the related party configuration
[sn_customerservice_related_party_configuration] table and creating Type Configuration
records for each distinct responsibility.

Example:

Suppose you want to populate the Type field in the account team member
[sn_customerservice_team_member] table, where the table uses the following responsibilities:
• Account Manager 1
• Account Manager 2
• Account Manager 3
1. Navigate to the related party configuration [sn_customerservice_related_party_configuration]​
table.
2. Create three Type Configuration records, one for each responsibility.
3. Run the fix script that automatically:
◦ Maps each responsibility to its corresponding Type.
◦ Populates the Type field for all records in the account team member
[sn_customerservice_team_member] table.
Fix external user role assignments
You may have external users (contacts or consumers) on your instance that have been assigned
internal roles. If so, you can use the Customer Service Management guided setup to evaluate
and correct these role assignments as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

137


<!-- page 138 -->
Because external users with internal roles can result in access issues, it is recommended that
external users only be assigned external roles.
Use the tasks in the Fix External User Role Assignment category guided setup category to
evaluate the contacts and consumers with the following role assignments:
• The snc_internal role only.
• The snc_internal role and one or more external roles.
• The snc_internal role and one or more additional internal roles.
• The snc_internal role and one or more additional internal and external roles.
Review the list of users in each group and tag those users with incorrect role assignments. Then
run the scheduled job to fix the role assignments.

Note: You can also review and update external user roles using a query-based list. For
more information, see KB0829930

.

Using guided setup to fix external user role assignments
With the system administrator role, you can use guided setup to fix external user role
assignments.
1. Navigate to Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started.
3. In the Fix External User Role Assignment category, click Get Started.
The Fix External User Role Assignment page opens with a list of tasks to evaluate groups of
external users.
4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.

Fix External User Role Assignment tasks
The following table describes the different configuration tasks in the Fix External User Role
Assignment category.
Fix External User Role Assignment tasks
Task

Description

External users with possible non-intentional
internal role assignment

This is a set of contacts and consumers with
the following role assignments:
• The snc_internal role only.
• The snc_internal role and one or more
external roles.
It is recommended that you do not assign
internal roles to external users. Review the
contacts in this list and fix the role assignment
as needed.

External users with possible intentional
internal role assignments

This is a set of contacts and consumers that
have the following role assignments:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

138


<!-- page 139 -->
Fix External User Role Assignment tasks (continued)
Task

Description

• The snc_internal role and one or more
additional internal roles.
• The snc_internal role and one or more
additional internal and external roles.
It is recommended that you do not assign both
internal and external roles to the same user.
Review the users in this list and fix the role
assignment as needed.
External users with intentional internal role
assignments

This is a set of contacts and consumers that
have the snc_internal role that is contained by
another role.
It is recommended that you do not assign
internal roles to external users. Review the
users in this list and fix the role assignments
as needed.

Avoid such role assignments in future

To prevent external users from being assigned
the snc_internal role in the future, enable the
following property:

glide.security.explicit_roles.enable_interna
Click Configure to navigate to the property
and verify that the value is true. If false, set the
value to true.
Fix roles for external users with possible non-intentional internal role assignments
Review and fix roles for external users that may have non-intentional internal role assignments.

Before you begin

Role required: admin

About this task

It is recommended that you do not assign internal roles to external users. Use this procedure to
review and fix the contacts and consumers that may have the following role assignments:
• snc_internal role only
• snc_internal role and one or more external roles

Note: This guided setup task uses scheduled jobs to identify and fix role assignments.
When fixing role assignments, the scheduled job fixes 3000 users at a time. If there are
more than 3000 users in this group, change the configuration of the job so that it runs
periodically.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Fix External User Role Assignment category, click Get Started and then click External
users with possible non-intentional internal role assignment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

139


<!-- page 140 -->
3. Run the scheduled job to tag users that may have non-intentional user role assignments.
Users are tagged with the Ext-user-non-intentional tag.
4. Review the list of tagged users and remove the tag from any users for which you do not need to
fix role assignments.
If necessary, configure the list to display the Tag column.
5. Run the scheduled job to fix the role assignments for the users with the Ext-user-nonintentional tag.
This scheduled job makes the following changes:
◦ For users with the snc_internal role only, it removes the snc_internal role and adds the
snc_external role.
◦ For users with the snc_internal role and one or more external roles, it removes the
snc_internal role.
This scheduled job runs all of the insert/delete business rules on the User Role
[sys_user_has_role] table.
Fix roles for external users with possible intentional internal role assignments
Review and fix roles for external users that might have intentional internal role assignments.

Before you begin

Role required: admin

About this task

It is recommended that you don’t assign internal roles to external users. Use this procedure to
review and fix the contacts and consumers that may have the following role assignments:
• snc_internal role and one or more additional internal roles
• snc_internal role and one or more additional internal and external roles

Note: This guided setup task uses scheduled jobs to identify and fix role assignments.
When fixing role assignments, the scheduled job fixes 3000 users at a time. If there are
more than 3000 users in this group, change the configuration of the job so that it runs
periodically.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and select Get Started.
2. In the Fix External User Role Assignment category, select Get Started and then select External
users with possible intentional internal role assignments.
3. Run the scheduled job to tag users that may have intentional user role assignments.
Users are tagged with the Ext-user-intentional tag.
4. Review the list of tagged users and remove the tag from any users for which you don’t need to
fix role assignments.
If necessary, configure the list to display the Tag column.
5. Run the scheduled job to fix the role assignments for the users with the Ext-user-intentional
tag.
This scheduled job makes the following changes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

140


<!-- page 141 -->
◦ For users with the snc_internal role and one or more additional internal roles, it removes the
snc_internal role and all other internal roles, and adds the snc_external role.
◦ For users with the snc_internal role and one or more additional internal and external roles, it
removes the snc_internal role and all other internal roles.
This scheduled job runs all of the delete business rules on the User Role [sys_user_has_role]
table.
Fix roles for external users with intentional internal role assignments
Review and fix roles for external users that have intentional internal role assignments.

Before you begin

Role required: admin

About this task

It is recommended that you do not assign internal roles to external users. Use this procedure to
review and fix the contacts and consumers that have the following role assignments:
snc_internal role that is contained by another role.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Fix External User Role Assignment category, click Get Started and then click External
users with intentional internal role assignments.
3. Run the scheduled job to tag users that have intentional user role assignments.
Users are tagged with the Ext-user-contained-role tag.
4. Review the list of tagged users.
5. Manually fix the role assignments for the desired users.
Prevent future internal role assignments for external users
Enable a property to prevent external users from being assigned the snc_internal role.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Fix External User Role Assignment category, click Get Started and then click Avoid such
role assignments in future.
3. Set the

glide.security.explicit_roles.enable_internal_user_blacklist
property to true.

Product data
Configure product data for Customer Service Management including product models, sold
products, install base items, and installed products.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

141


<!-- page 142 -->
Setting up users, user groups, and customer relationships
Task

Description

Configure product data

Configure the product data for your company,
including:
• Product models: Goods or services that your
company sells and supports.
• Sold products: The products and
components that have been sold to an
account or a consumer.
• Install base items: Items that represent
the instances that have been installed or
provisioned for a customer.
• Installed products: Information about sold
products and how they are deployed or
installed.

Configure assets

An asset is a specific product or instance that
is supported for an account or consumer.

Create asset contact relationships

Assign an asset to a customer contact who is
responsible for managing that asset.

Create service contracts

Service contracts define the type of support
that accounts and consumers receive for their
products.

Configure entitlements

Entitlements define the type of support that an
account or consumer receives as well as the
supported communication channels.

Configure Customer Contracts and
Entitlements

Use the Post-Sales Support application to
configure and display customer service
contracts and entitlements.

Use Customer Life Cycle Management
This application enables you to update
Workflows to manage the life cycle of your sold the existing configurations and to modify,
products
suspend, resume, or disconnect the sold
products and their complete hierarchy.
Create Lead to Cash Core
services

for products and

Use these workflows to analyze business
opportunities and customer leads as well
as the billing, support, and maintenance
requirements after a sale is complete.

Configure product data
Configure product data including product models, sold products, install base items and installed
products.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

142


<!-- page 143 -->
About this task
• Product models: A product is a type of good or service that your company sells and supports.
Product models identify different types of products, such as service, hardware, software, or
consumables.

Note: Product models require the Model Management plugin (com.snc.model).
• Sold products: The products and components that have been sold to an account or a
consumer.
• Install base items: Items that represent the instances that have been installed or provisioned
for a customer.
• Installed products: Provide information on the sold products and how they are deployed or
installed. Use installed products to create an association between sold products and install
base items.

Procedure
• You can import the following product data using guided setup.
◦ Import product models with guided setup
◦ Import sold products with guided setup
◦ Import install base items with guided setup
◦ Import installed products with guided setup
• You can create new product data using the Customer Service Management application.
◦ Create a product model
◦ Create sold products
◦ Create install base items
◦ Create installed products
• You can configure the following relationships and associations after importing or creating
product data:
◦ Product models
▪ Associate service offerings to product models
▪ Configure product model and catalog item relationships
◦ Sold products
▪ Associate service offerings with sold products
▪ Associate sold products with contracts
Product models
Configure product models, such as service, hardware, software, or consumables that your
company sells and supports.

Task

Description

Import product models with guided setup

Prepare and import data for each type of product
model in a different table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

143


<!-- page 144 -->
Task

Description

Create a product model

Create a record for a specific version or
configuration of a product type that your
company sells and supports.

Associate services with product models

Associate one or more service offerings to a
product model to enable customers to choose
service offerings for products.

Configure product model and catalog item
relationships

Create relationships between product models
and catalog items so that your customers can
request services for products.

Import product models with guided setup
A product is a type of good or service that your company sells and supports. Product models
identify different types of products, such as service, hardware, software, or consumables.

Before you begin

Role required: admin

About this task

Information for each type of product model is stored in a different table. For example, service
product models are stored in the Service Model [cmdb_service_product_model] table.

Note: Product models require the Model Management plugin (com.snc.model).
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Foundation Data category, click Get Started and then click Import Product Models.
3. Upload data from an external data source into an import set.
4. Create a transform map.
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create a product model
Create a record for a type of product that your company sells and supports.

Before you begin

Role required: model_manager
Confirm that the Model Management plugin (com.snc.model) is installed.

About this task

A product model is a specific version or configuration of a product. Build hierarchical product
models that represent the set of products that your organization offers to its customers and
define relationships between different product models. Define whether a product is tracked
as an asset, a CI, or both. Additionally, identify or create the CI and asset classes to capture
configuration information for product models.
Product models provide customer service agents and customers with a common understanding
of the products being used by a particular customer. Customers can view the products
purchased on the Customer Service Portal and can open cases for any issues they are facing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

144


<!-- page 145 -->
Procedure
1. Navigate to All > Customer Service > Products > Product Models.
2. Select New.
3. Select the type of product model to create:
◦ Application Model
◦ Consumable Model
◦ Contract Model
◦ Facility
◦ Hardware
◦ Service
◦ Software
4. Fill in the fields for the selected product model as appropriate.
See Model form fields
for field descriptions.
5. Select Submit.

Note: In the Sold Product related list, you can see all the accounts and consumers that
the product model has been sold to.
Associate services with product models
Enable customers to select services for products by associating services with product models.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

One product model can have multiple associated services.

Procedure
1. Navigate to All > Customer Service > Product Models.
2. Select a product model.
3. Configure the form to display the Services related list.
For more information, see Add a related list to a form .
4. On the Services related list, click New or Edit to add an existing service offering to the product
model.
Configure product model and catalog item relationships
Enable customers to request services for the products that they own. Create definitions for the
services that support your products and then configure service definitions to associate them with
the appropriate products and catalog items.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

Use the Service definitions feature to create definitions for the services that are offered to
support your products. This feature is available with the Customer service case types plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

145


<!-- page 146 -->
From the Customer and Consumer Portals, end users can select available services from the
Services portal widget. Selecting a service displays the record producer associated with the
service definition. Submitting the record producer creates a case of the correct case type.

Procedure
1. Create a service definition.
2. Associate a product with a service definition.
3. Associate one or more catalog items with a service definition.
Related topics
View product information from the Customer Service Portal
Configure Install base
Track which products and services have been purchased by a customer, how they've been
installed or provisioned, along with the detailed configuration for each installed item.

Before you begin

Role required: admin

About this task

Install the Customer Service Install Base Management plugin (com.snc.install_base) from the
ServiceNow Store.
Capture the Install base for a customer by creating sold products, Install base items, and
installed products. The Install base would enable the customer service agents to trace issues
back to the relevant product, instances of that product, and other entities impacting their
functioning.
Before setting up your Install base, create your product data by creating or importing product
models. For more information, see Configure product data.
Using Install Base Management
This example shows the summary of the customer's purchase on the Solana
microwave.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

146


<!-- page 147 -->
There are three parts to setting up your Install base.
Customer service Install Base Management plugin description
Sold Products

Create a sold product to provide customers,
consumers, and customer service agents
visibility into the products and services sold to
an account or a consumer.

Install Base Items

Create an Install base item to track instances
that have been provisioned for an account or
consumer.
An Install base item can be any configuration
item that has been made accessible to
customers. For Software as a Service (SaaS)
products, an Install base item refers to an
application service configuration item.

Installed Products

Create an installed product to track
information on the instances that a sold
product is deployed on at an account or
consumer.
A sold product can have multiple installed
product records depending on the number of
instances of the product in use.

You can create sold products, Install base items, and installed products as individual records,
import them in bulk, or create them from an Account or Consumer record.
Customer service agents can view Install base information in Agent Workspace. Customers can
view Install base information on the Customer Service Portal.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Foundation Data category, view the list of tasks to configure the feature.
Install base description
Task

Description

Import Sold Products

Import sold products to track the products or
services sold to an account or consumer.

Import Install Base Items

Import Install base items that represent the
items installed or provisioned for a customer.

Import Installed Products

Import installed products to create an
association between sold products and
Install base items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

147


<!-- page 148 -->
4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Sold products
Create or import sold products for customers, consumers, and customer service agents. Provide
a view into products and services that are sold to an account or a consumer. A sold product can
have child and parent sold items in a hierarchical structure.
Sold products are products and components that have been sold to an account or a consumer.
View the components sold to an account or consumer, for get an overview of all the products that
are sold to that account or consumer. A sold product can have child and parent sold products in
a hierarchical structure. For example, if issues arise with a configuration item, customer service
agents can trace which sold product is affected on the Case form.
From the Sold Products form, you can edit Install base items, create entitlements and cases, and
add contracts. To learn more about creating entitlements, see Create an entitlement.
Setup sold products
Task

Description

Import sold products with guided setup

Use guided setup to import sold products so
that you can track the products or services
sold to an account or consumer.

Create a sold product

Create a sold product to track the products
or services that are sold to an account or
consumer.

Associate service offerings with sold products

Associate a service offering with a sold
product to provide customer service agents
visibility into sold products and their service
offerings.

Associate sold products with contracts

Associate sold products to contracts to
capture complete information on a customer’s
Install base.

Import sold products with guided setup
Sold products are products and components that have been sold to an account or a consumer.
Use guided setup to import sold products so that you can track the products or services sold to
an account or consumer.

Before you begin

Role required: admin

About this task

This task provides an overview of the complete product sold to an account or consumer. A sold
product can have child and parent sold items in a hierarchical structure.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and select Get Started.
2. In the Foundation Data category, select Get Started and then select Import Sold Products.
3. Upload data from an external data source into an import set.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

148


<!-- page 149 -->
4. Create a transform map.
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create a sold product
Create a sold product to track the products or services that are sold to an account or consumer.

Before you begin

Verify that the Customer Service Install Base Management (com.snc.install_base), Customer
Service with Service Portfolio Management (SPM) (com.snc.csm_spm), and the Product Catalog
Management Core (com.sn_prd_pm) plugins are installed.
Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select New.
3. On the Sold Product form, fill in the fields.
To learn more about the descriptions, see Sold product form.
4. Select and hold the form header and select Save.
The Child Sold Products, Install Base Items, Cases, Entitlements, Contracts, Additional
Contacts, and Additional Consumers related lists are displayed.
5. Fill in the related lists as required.
Sold product related lists
Related list

Description

Child Sold Products

Create a child sold product by selecting New.

Install Base Items

Edit an Install base item by selecting Edit.

Cases

Add a case to the sold product by selecting
New. The system displays any open
cases that are related to the sold product
automatically.

Entitlements

Add an entitlement for the sold product by
selecting Select.

Note: Customer service managers
create entitlements. Customer service
agents can view entitlements.
Contracts

Associate a contract with the sold product by
selecting Edit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

149


<!-- page 150 -->
Related list

Description

Note:
You can also associate a contract with a
sold product from the Service Contracts
form.
Customer service managers associate
the contracts to the sold products.
Customer service agents can view the
contract information.
Additional Contacts

Add additional contacts to the sold product
by selecting New.
You can associate a contact with a
sold product by defining its name and
responsibility. The additional contacts added
can be from the same account, partner
account, or contact relationship.
You can see the Additional Contacts related
list for the sold products that are associated
with the B2B account.

Note: Starting with
the Utah release, the
sn_install_base_rel_soldproduct_to_contact
table has been deprecated for new
customers.
For upgrade customers, the table
continues to be supported and extends
the sold product related parties table
[sn_install_base_sold_product_related_party].
Additional Consumers

Add additional consumers to the sold
product by selecting New.
You can associate a consumer with a
sold product by defining its name and
responsibility.
You can see the Additional Consumers
related list for the sold products that are
associated with the B2C account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

150


<!-- page 151 -->
Related list

Description

Note: Starting with
the Utah release, the
sn_install_base_rel_soldproduct_to_contact
table has been deprecated for new
customers.
For upgrade customers, the table
continues to be supported and extends
the Sold Product Related Parties table
[sn_install_base_sold_product_related_party].
Sold Product Related Parties

Add contacts, accounts, and consumers as
related parties by selecting New.

Note: For business-to-business and business-to-consumer, you can see both the
additional contacts and additional consumers in the sold product related lists and also
add new records.
6. Select Update.
The sold product is added to the account or consumer that you selected. Select an account or
consumer to see a list of all sold products that are related to the account or consumer. You can
also view a list of sold products according to the product model.

Note: You can also create sold products directly from an account or a consumer.
a. Navigate to Customer Service > Customer > Accounts or Customer Service >
Customer > Consumer.
b. Select an account or a consumer.
c. Select the Sold Products related list.
d. Select New.
Related topics
Create and manage sold products for a business location
Edit a contract
Create an entitlement
Associate service offerings with sold products
Associate a service offering with a sold product giving customer service agents visibility into sold
products and their service offerings.

Before you begin

Role required: sn_customerservice_manager or admin
Verify that the Customer Service with Service Portfolio Management (SPM) plugin
(com.snc.csm_spm) is installed.

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select the desired record where you want to associate service offerings.
3. In the Service Offering field, select an existing service offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

151


<!-- page 152 -->
Note: The Service Offering field might not appear by default in the user interface. If the
field doesn't appear, add Service Offering field using the form layout.
4. Select Update.
Related topics
Create a service offering
Associate sold products with contracts
Capture complete information on a customer’s install base by associating sold products to
contracts.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

Associate sold products to contracts so that your customer service agents working on cases can:
• Check a sold product and view any contracts that exist for the sold product.
• View which products have been sold to the customer under the contract.
• Track when sold products were added to the contract, and how long they're covered for.
You can also associate a sold product with a contract from the sold product form.
A sold product can be part of multiple contracts. If a sold product is deleted, it's also deleted from
any associated contracts. If a contract is deleted, the sold product remains.

Procedure
1. Navigate to All > Customer Service > Contracts > Service Contracts.
2. Select a contract that you want to add a sold product to.
3. On the Products Covered related list, select New to associate sold products to the contract.
The list of sold products is filtered based on the account.
Select Run filter to see a list of all sold products. You can only add the sold products that
belong to the account selected or to the account hierarchy.
4. Select Save.
5. On the Products Covered related list, select the Add All Child Sold Products related list action
to add all child sold products to the contract without having to select each item individually.​
6. Select Update.
Install base items
Create an Install base item to track instances that have been provisioned for an account or
consumer. An Install base item can be any configuration item that has been made accessible
to customers. For Software as a Service (SaaS) products, an install base item refers to an
application service configuration item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

152


<!-- page 153 -->
Task

Description

Import Install base items with guided setup

Use guided setup to import Install base items
so that you can track instances that have been
provisioned for an account or consumer.

Create an Install base item

Create an Install base item that represents
the instance of the product that has been
configured for a customer. The Install base
item enables you to track all the purchases
that were made by a customer.

Associate multiple Install base items to a case

Associate one or more related install base
items to a case to access all the Install base
items that are associated with the parent
Install base item.

Install base characteristics

Configure characteristics of Install base items
to provide information about the service
requirements and make sure that there's
timely maintenance services for the Install
base item.

Import Install base items with guided setup
Install base items represent the instances of the product that have been configured for a
customer.

Before you begin

Role required: admin

About this task

Each Install base item references the configuration item record for the customer.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and select Get Started.
2. In the Foundation Data category, select Get Started and then select Import Install Base Items.
3. Upload data from an external data source into an import set.
4. Create a transform map.
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create an Install base item
Create an Install base item in the Customer Service Management application that represents the
instance of the product that has been configured for a customer. The Install base item enables
you to track all the purchases that were made by a customer.

Before you begin

Verify that the Customer Service Install Base Management plugin (com.snc.install_base) is
installed.
Role required: sn_customerservice_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

153


<!-- page 154 -->
About this task

An Install base item is any configuration item (CI) that has been made accessible to customers.
For Software as a Service (SaaS) products, an Install base item refers to an application service
configuration item. Each Install base item references the configuration item record for the
customer. If issues arise with a configuration item, customer service agents can trace which
install base items that the case is affecting.

Procedure
1. Navigate to All > Customer Service > Products > Install Base Items.
2. Select New.
3. On the form, fill in the fields.
Install Base Item form
Field

Description

Number

Unique ID of the Install base item. This field is automatically filled in, but you
can change it.

Name

Name of the Install base item.

Configuration Configuration item that is associated with the Install base item.
Item
The sn_customerservice_manager role must also have the app_service_user
role to create the install base items for the Application Service configuration
item class. For more information, see Application services .
Service models have a model category called the Application Service,
which links a service model to the Application Service CI class. For more
information, see Models
and Model categories .
Service
Organization

Internal or external entity that is involved in providing service to the customer.

Note: If you select a service organization, the Account, Contact, and
Consumer fields are hidden. The Service Organization field is active
only when the Service Organization (com.snc.service_organization)
plugin is installed.

Account

Account that is associated with the Install base item.

Note: If you enter an account, the Consumer field is hidden. The
Consumer field is active only when the B2B2C plugin is installed.
Contact

Account contact that is primarily responsible for the install base item.

Consumer

Consumer that is associated with the install base item.

Note: If the Consumer field is entered first, the Account field is hidden.
Owned by

Business manager of the install base item. If the business manager is
entered in the configuration item, this field is automatically filled in with the
information from the configuration item.

Supported
by

If the CI contains this information, this field is automatically filled in with the
information from the configuration item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

154


<!-- page 155 -->
Field

Description

Service
Context

Service that is associated with the underlying CI for calculating the impact
severity from Event Management. For more information, see Service health
status for install base.

Note: This field is only available if you have the Proactive Customer
Service Operations with Event Management plugin installed. The health
status of an install base item appears only if an Install base item has a CI
and a service context that is associated with it.
Configure the form layout to add this field.
Parent install Install base item that is the parent of the current install base item.
base item
Root install
base item

Install base item that is used to fetch the entire install base hierarchy in a
single query.

Household

Household that is associated with the install base item.

Note: This field is available only when the Customer Service
Household (com.snc.household) plugin is installed.
Product

Product model that is associated with an install base and is used to identify
the services that are associated with any product model.

Note: A product model must have a single specification. The
specification that is associated with the product model appears only on
the install base form.
Location

Location that is associated with the product.

State

Current state of the Install base item and represents the various phases of the
life cycle.

Note: The state of the install base item determines the Active field and
the Uninstall date field on the install base form.
Status

Option that determines whether the product is original or a replacement.

Life cycle
stage

CSDM (Common Service Data Model) life cycle stage of an install base item.

Life cycle
stage status

CSDM life cycle stage status of an install base item.

Active

Option that represents whether the install base is active or inactive. If the
state is active, related cases for a product can be created.

Note: A synchronization between the active state, install date, and

uninstall date is present. On the install base form, if the State is In Use,
it means that the Active option is selected. If the State is set to Inactive,
the Active option remains unselected.
Install date

Date on which the install base becomes active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
Field

Description

Uninstall
date

Date on which the install base becomes inactive.

Asset

Asset that is associated with an install base.

Specification Specification that is associated with an install base item. Option that helps in
fulfilling orders to create an install base item and its hierarchy.

Note: The Specification field appears only to CSM agents, managers,
and contributor persona.
Install base
identifier

Identify finished goods in the system using their unique identifier.

Provider
service
organization

The service organization that sells and supports the products or services
owned by the customer.

Note: In the List view of the install base item, you can filter the data by Condition, Active,
Uninstall Date, and Asset.
4. Select and hold (or right-click) the form header and select Save.
The Sold Products, Entitlements, and Cases related lists are displayed.
5. Fill out the related lists as described in the following table.
Install base item related lists
Related list

Description

Child Install Base items

List of all child install bases that are related to
the parent install base item.

Sold Products

List of the sold products that are associated
with an install base Item. Edit a sold product
by selecting Edit.

Cases

List of cases that are associated with an
install base item.

All Cases

List of all cases that are related to an install
base in the install base hierarchy.

Note: The All Cases related list
appears only when an install base
hierarchy is added to the Install base
item.
Entitlements

List of entitlements that are associated with
an install base item. Add an entitlement for
the install base item by selecting New.

Note: Customer service managers can
create entitlements. Customer service
agents can view entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
Related list

Description

Contracts

List of contracts that are related to an install
base. Edit a contract by selecting Edit.

Install Base Related Parties

List of contacts, consumers, accounts,
members, contributors, and service
organizations that have access to an install
base. For more information on Install Base
Related Parties, see Create related party
configurations.

For more information on related lists, see Related list for an Install base item.
6. Select Update.
The install base item is added to the account or consumer that you selected. You can select an
account or consumer to see a list of all the install base items that are related to the account or
consumer.

Note: You can also create install base items directly from an account or a consumer.
a. Navigate to Customer Service > Customer > Accounts or Customer Service >
Customer > Consumer.
b. Select an account or a consumer.
c. Select the Install Base Items related list.
d. Select New.
Related topics
Create and manage install base items for a business location
Related list for an Install base item
In the Customer Service Management application, you can use the Install base related list to
track information that is related to the Install base hierarchy, cases, entitlements, and other
entities. By using these tables, you can understand your customers' purchases and provide
efficient post-sales support.
Related list for install base item
Related list

Description

Create a child Install base item

List of all the child install base items
associated with the parent install base item.

Sold Products

List of all the products or services sold to
a customer. For more information on how
to create a sold product, see Create a sold
product.

Cases

List of all the cases associated with the current
Install base item. The list of cases enables
customer service agents to access all the
cases and issues that are related to an Install
base in one place. For more information on
cases and case access, see Service Model
Foundation cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
Related list for install base item (continued)
Related list

Description

All Cases

List of all the child cases associated with the
parent install base item.

Note: You can’t see the parent cases
that are associated with a child install
base item.
Create an entitlement

List of the existing cases for an account,
product, or service contract that defines the
type of support that a customer receives.
For more information on entitlements, see
Configure entitlements.

Edit a contract

List of all the contracts associated with the
current Install base item.

Install Base Related Parties

List of all the additional parties that have
access to an Install base item. You can add
related parties only to the root install base
item. For more information to the list of related
parties and default responsibilities, see Create
related party configurations.
To add a related party to an install base, see
Add related parties to an install base item.

Create a child Install base item
Create a child Install base item in the Customer Service Management application to view a list of
all the cases and issues of the parent Install base item.

Before you begin

Role required: admin and sn_customerservice_manager

About this task

A child install base related list provides the information about all the child install bases of the
current Install base item.

Procedure
1. Navigate to All > Customer Service > Product > Install Base Item.
2. In the related list section of the Install base form, select an Install base item and open Child
Install Base Items.
3. Select New.
The Parent install base item field on the new Install base form is automatically filled
or defaulted to the current Install base selection. The Account and Contact fields are
automatically filled in on the child install base form.
4. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
Create an entitlement
Create an entitlement in the Customer Service Management application to view the existing
cases for an account, product, or service contract. Creating an entitlement helps you to
understand the level of support and the communication channels that an agent can use.

Before you begin

Role required: admin or sn_customerservice_manager

About this task

Create an entitlement to define the type of support that a customer receives.

Procedure
1. Open an install base item and from the related list, select Entitlements.
2. Select New.
3. On the form, fill in the fields.
For more information, see Configure entitlements and Create entitlements for CSM entities.
4. Select Submit.
Edit a contract
Enable an agent or manager to edit an open contract that is related to the parent install base item
in the Customer Service Management application.

Before you begin

Role required: admin or sn_customerservice_manager

About this task

The Contracts related list provides a list of all the contracts that are related to the current install
base item.

Procedure
1. Open an install base item and from the related list, select Contracts.
2. To edit a contract, select Edit.
3. From the list of contracts, select the contract that you want to link to the install base item.

Note: The list of contracts that are displayed are related to the Account option that you
selected in the Install Base form.
4. Select Save.
Associate multiple Install base items to a case
In the Customer Service Management application, you can associate one or more related Install
base items to a case to access all items associated with the parent Install base item.

Before you begin

Role required: sn_customerservice_manager and admin

Procedure
1. Navigate to All > Customer Service > Cases > All.
2. Open the case that you want to associate the multiple Install base items to.
3. Open the Affected Install Base Items related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
4. Select Edit.
5. From the existing list of Install base items in the Collection box, select the Install base that you
want to add by selecting the arrow.
The install base that you select is displayed in the Affected Install Base Items List box.
6. Select Save.
Install base characteristics
Customer service managers can create the characteristics of the Install base items, while
administrators can capture and track the characteristics of the Install base items with the
Customer Service Management application. These characteristics can provide information about
the service requirements and verify timely maintenance services for the Install base item.

Overview of characteristics
Install base characteristics enable flows like case management, field service management,
planned maintenance, and reactive service requirements to occur on a schedule. Some Install
base characteristics are configurable and vary from product to product. The product model
characteristics are non-configurable and are directly taken from the product model that is
associated with the Install base item.
With the sn_customerservice_manager role, you can create the characteristics for the Install
base items. With the administrator role, you can download the Install base characteristics plugin
[com.snc.install_base_characteristics] to capture and view all the Install base characteristics on
the Install base form. To activate the plugin, see Activate a plugin .
The Install base characteristics data model represents how the characteristics of an Install base
item are stored. To learn about the different fields and tables that they're stored in, see Data
model for the Install base item characteristics.

Roles
With the admin role, you can track the characteristics to provide the required product information
to administrators, agents, business stakeholders, and customers. You can also track the
services that are associated with an Install base item at the time of purchase. With this role, you
can capture the configurable and non-configurable characteristics to view the configuration
specifications for an Install base item.
With the sn_customerservice_manager role, you can create a set of configurable characteristics
for an Install base item on the Customer Service Management (CSM) application. It enables you
to view the Install base item details and its associated services. After you create an install base
characteristic, the characteristic appears in the related list on the Install base item form. For more
information, see Create the Install base characteristics for an Install base item.
There are different functional and granular roles to provide varying levels of permissions to
users. For information on the different access levels, see Security roles for the Install base
characteristics.

Install Base characteristics
The characteristics are stored in the Install Base Characteristics table
[sn_install_base_item_characteristic]. However, both the Install base and product model
characteristics are displayed in the Install base characteristics and product model related lists
on the Install base form. You can use the text search option on the Customer Service platform
and portals to search for the characteristics on the Install Base characteristics table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
You can view the Install base characteristics on the Customer Service, Consumer Service, and
Business Location Service Portal (BLSP).
Under the Support header on the portals home page, you can view the information about
the Install base characteristics that are associated with the parent Install base item. The
characteristics that are associated with the child items aren’t visible on the portals. For more
information about the Install base items from the Customer Service Portal, see View install base
information from the Customer Service Portal.
Data model for the Install base item characteristics
The data model for the Install base item characteristics represents how the characteristics of
an Install base item are stored in the Customer Service Management application. The data
model refers to the characteristic values and options and provides a view of how to store a set of
characteristics associated with an Install base item.
The Customer Service Management application has several functional and granular roles that
provide access levels to create, read, and update characteristics for an Install base item. The
Install base item characteristics table [sn_install_base_item_characteristic] comes with different
security roles and plugins. For more information on security roles, see Security roles for the
Install base characteristics.
The following diagram shows the data model for the Install base characteristics. The data model
represents the new and existing Install base item and Install base item characteristics tables.
Data model for Install base characteristics

The following table describes the different fields on the Install base characteristics form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
Install base item characteristics table
Field

Description

Characteristic

Characteristic that is associated with the Install
base item.

Characteristic option

Characteristic option that you chose from a list
of options for the selected characteristic.

Note: This field is available when the
characteristic that you select is a choice,
Boolean, or check box type of option.
Value

String value for the selected characteristic.

Note: This field is available when the
characteristic that you select expects a
string input and isn't a choice, Boolean, or
check box type of option.
Install base item

Install base item that the characteristics are
added to.

Security roles for the Install base characteristics
You can assign functional and granular roles to Customer Service Management (CSM) users and
administrators so that they can access the different capabilities and features of the Install base
characteristics.
Functional and granular roles come with varying levels of permissions for the configuration of
Install base characteristics on the Customer Service Management (CSM) application.
The following tables describe the different functional and granular roles and their descriptions.
Functional roles for the Install base characteristics
Role title

Required Plugin

Description

Contains roles

Added to roles

sn_install_base.install_base_viewer
Customer
This role
sn_install_base.install_base_mana
• sn_ib_chars.install_base_item_characteristics_read
Service
provides
• sn_prd_pm.product_model_characteristic_viewer
Install Base
read access
Management
to an Install
• sn_install_base.install_base_read_granular
[com.snc.install_base_characteristics]
base item, its
and Product
characteristics,
Catalog
and all the
Management
product model
Core]
characteristics.
[sn_prd_pm
This role is
plugin
intended for
internal users
only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Functional roles for the Install base characteristics (continued)
Role title

Required Plugin

Description

Contains roles

Added to roles

sn_install_base.customer_install_base_viewer
Customer
This role
None
• sn_ib_chars.install_base_item_characteristics_read
Service
provides
• sn_prd_pm.product_model_characteristic_granular
Install Base
read access
Management
to an Install
• sn_install_base.install_base_read_granular
[com.snc.install_base_characteristics]
base item, its
and Product
characteristics,
Catalog
and only the
Management
customer visible
Core [sn_prd_pm product model
plugin]
characteristics.
This role is
intended for
external users
only.

sn_install_base.install_base_manager
Customer
This role
None
• sn_ib_chars.install_base_item_characteristics_write
Service
provides access
• sn_ib_chars.install_base_item_characteristics_crea
Install Base
to manage the
Management
Install base
• sn_install_base.install_base_viewer
[com.snc.install_base_characteristics]
items and their
characteristics.
This role is
intended for
internal users
only.
Granular roles for the Install base characteristics
Role title

Required Plugin

Description

Contains roles

Added to role

sn_ib_chars.install_base_item_characteristics_read_granular
Customer Service This role provides sn_prd_pm.characteristics_viewer
• sn_ib_chars.install_base_item_c
Install
Base granular
read
• sn_ib_chars.install_base_item_c
Characteristics
access to Install
[com.snc.install_base_characteristics]
base
item
• sn_install_base.install_base_vie
characteristics.
• sn_install_base.customer_instal

sn_ib_chars.install_base_item_characteristics_create_granular
Customer Service This role provides sn_ib_chars.install_base_item_characteristics_read_g
sn_install_base.install_base_mana
Install
Base granular create
Characteristics
access to Install
[com.snc.install_base_characteristics]
base
item
characteristics.

sn_ib_chars.install_base_item_characteristics_write_granular
Customer Service This role provides sn_ib_chars.install_base_item_characteristics_read_g
sn_install_base.install_base_mana
Install
Base granular
write
Characteristics
access to Install
[com.snc.install_base_characteristics]
base
item
characteristics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
Create the Install base characteristics for an Install base item
Create a set of configurable characteristics for an Install base item on the Customer Service
Management (CSM) application. You can then view the details about the Install base item and
the services that are associated with it.

Before you begin

Role required: sn_customerservice_manager

About this task

Each product has its own set of attributes, some of which are configurable and some that are
non-configurable. Configurable characteristics are a set of characteristics related to an Install
base item that you can choose or customize at the time of purchase. These characteristics
differ from user to user and product to product. However, non-configurable characteristics are
a set of fixed characteristics that are related to an Install base item. They can't be chosen or
customized by you at the time of purchase. To learn more about characteristics, see Install base
characteristics.

Procedure
1. Navigate to All > Customer Service > Products > Install Base Items.
2. Open an Install base item from the list.
3. Navigate to the Install base Characteristics related list.
4. Select New.
5. In the Characteristic field, select a characteristic.
Choose a string type or value for the Characteristic field. If the characteristic field has a string
type, then the Value field appears as shown in the following example.
Install base item characteristics record with the Value field

If the characteristic field has an option, then the Characteristic option field appears as shown
in the following example.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
Install base item characteristics record with the Characteristic Options field

6. Select Submit.

Result

After creating an Install base characteristic, the characteristic appears in the related list on the
Install base item form.
Synchronizing an asset class with a configuration item class and Install base class
You can synchronize the asset class, configuration item (CI) class, and the Install base class
by mapping the model categories in the Customer Service Management (CSM) application.
With this synchronization, the data can flow between the different entities because the same
information is replicated on both entities.

Overview
By mapping the Install base class, configuration item class, and asset class fields, you can
synchronize the information on both the Install base item and the asset form. This mapping
creates a bidirectional synchronization. For example, you can update any one of the Location,
Install date, Consumer, Account, State, and Contact fields on the Install base item form to
create a synchronization between the Install base item and the asset form. For more information
on the different fields on the Install base form, see Create an Install base item.

Note: You must update the Consumer and Account fields from the Install base item to
synchronize the updates to the asset form. Updating the fields on the asset form doesn’t
synchronize the updates to the Install base item.

Install base item class
The Install base item class on the model category form only displays the tables that extend
from the Install base table [sn_install_base_item]. If the Install base table has no extensions, no
options are displayed in the Install base Class list. You can create a synchronization between an
Install base record and an existing associated record by using the following sample migration
script.
var ibClasses = []; //If the list is empty, system will fetch
model categories for all Install base item classes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


