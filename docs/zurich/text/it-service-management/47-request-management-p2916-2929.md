# Zurich IT Service Management — Request Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2916–2929 of 3857

Sections: Request Management (p2916); Explore (p2916); Configure (p2918); Use (p2922); Reference (p2925)

---

<!-- page 2916 -->
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Request Management
Request Management allows catalog items to be requested and fulfilled based on defined flows.

Get started

Exploring Request Management

Configuring Request Management

Agent Workspace for Request Management

Request Management reference

Related topics
Exploring Service Catalog
Catalog Builder

Exploring Request Management
Request Management allows catalog items to be requested and fulfilled based on defined flows.

Request Management architecture
Request Management allows catalog items to be requested and fulfilled based on defined flows.

Request Management hierarchy
Service Catalog is the starting point of the request management process. The request
management process is triggered only when a catalog item from the Catalog Item [sc_cat_item]
table is requested.
When a user submits a request for a catalog item, records are generated in the following
hierarchy.

Note: Variables are associated only with the Requested Item [sc_req_item] table.
Variables are not supported for extended tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2916


<!-- page 2917 -->
Request Management hierarchy

Note: When you configure Request Management:
• The data model does not support a record producer generating request management
objects such as request, request item, and catalog task. Hence, do not use a record
producer to insert records in the following request management tables or their
extensions:
◦ Request [sc_request]
◦ Request Item [sc_req_item]
◦ Catalog Task [sc_task]
• Do not write business rules with the before trigger for the following tables:
◦ Request [sc_request]
◦ Request Item [sc_req_item]
◦ Cart [sc_cart]
◦ Cart Item [sc_cart_item]

Request management process
Catalog item is ordered directly without adding it to the cart
When a catalog item is ordered or requested directly without adding it to the cart,
the following steps are performed:
1. A temporary cart, sc_cart, is created.
2. The catalog item along with the variables (values entered by the user) is added to
the temporary cart as a record in the Cart Item [sc_cart_item] table.
3. The variables are saved in the Options [sc_item_option] and Variable Ownership
[sc_item_option_mtom] tables.
4. The temporary cart is checked out by performing these steps.
a. A record in the Request [sc_request] table is initialized but not committed in the
database.
b. A record in Request Item [sc_req_item] table is initialized but not committed in
the database.
c. The request reference for the Request Item [sc_req_item] table record is
updated with the Request [sc_request] table record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2917


<!-- page 2918 -->
d. The variables record in the Options [sc_item_option] and Variable Ownership
[sc_item_option_mtom] tables are updated based on the Request Item
[sc_req_item] table record.
e. The Request Item [sc_req_item] table record is committed in the database.
f. The Request [sc_request] table record is committed in the database.
Request is submitted after adding the item to the cart
If a catalog item is added to the cart and the request is submitted using the
checkout process, the default cart is checked out.
All steps mentioned in the preceding scenario, Catalog item is ordered directly
without adding it to the cart, are applicable. However, if multiple catalog items are
added to the cart, step b to step e are repeated for each item.
Request is submitted using an order guide
For a two-step order guide checkout, the temporary cart is used for all items. For a
three-step order guide checkout, the default cart is used for the items.
All steps mentioned in the preceding scenario, Catalog item is ordered directly
without adding it to the cart, are applicable.

Note: The base system workflow attached to the request is demo data.
Related topics
Create a catalog request in Agent Workspace
Create a request from Universal Request

Configuring Request Management
Configure Request Management to enable the agents to efficiently manage multiple incidents,
catalog requests, and catalog tasks.

Request Management integration with Universal Request
Integration of Request Management with the Universal Request application extends the
capabilities of Universal Request and enables your employees and agents to create a universal
request by submitting a request from a catalog item or record producer. This integration provides
a consistent ticketing experience and facilitate inter-department request transfers.

Note: To use this capability, enable the

sn_uni_req.com.snc.ur.request_integration property under Universal
Request properties in the Universal Request application. For more information, see
Universal Request properties .
Configure the catalog item or record producer to create a universal request. The associated
requested item (for catalog item) or task-based record (for record producer) becomes the primary
ticket for that universal request. For more information on Universal Request, see Exploring
Universal Request

Benefits of integrating with Universal Request
The integration enables you to perform the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2918


<!-- page 2919 -->
• Create a request directly from the Universal Request application using the Create Request
option.
• Transfer a request to another department or back to the Universal Request queue by using the
Transfer option.
• Configure a catalog item as Universal Request and automatically associate the request as a
primary ticked for the universal request. For more information, see Configure a catalog item or
record producer to create a universal request .
• View all the associated requests and request items as a related list for a universal request.
• Employees can view the details related to their Universal Request from Employee Center.

System requirements to integrate Request Management with Universal Request
Ensure that you have installed the Universal Request plugin (com.snc.universal_request) to
create a universal request from a request item.
After the plugins are installed, in the Universal Request application properties, set the
sn_uni_req.com.snc.ur.request_integration to true. For more information, see
Universal Request properties .
Create a request from Universal Request
As a routing agent, create a request from a universal request and then assign it to the appropriate
assignment group. The request manager handles the requested items and takes further actions
to fulfill the request.

Before you begin

Ensure that you have the following plugins installed.
• Universal Request plugin (com.snc.universal_request)
• Request Management plugin (com.sn_cs_sm_request)

Note: A request is associated with the parent Universal Request record only when you
have the following conditions set:
• The glide.sc.use_cart_layouts system property is set to true.
• The Use Cart Layout" check box for an individual catalog item is selected.
Role required: routing agent

Procedure
1. Navigate to Universal Request > All.
2. Open the universal request record from which you want to create a request.
3. Select Create Request.

Result

A request is created and is automatically assigned to the appropriate assignment group. If
required, you can also add more details on the Requested item form.
On the Requested item form, the universal request number that was used for creating the
request is displayed. The request item number (RITM ) appears in the Primary ticket field on
the Universal Request form and also under the Associated Requests related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2919


<!-- page 2920 -->
Requested item state mapping
Map your requested items states to the universal request (UR) states to provide a better user
experience during the requested item state transition and to track the progress of the request.

Before you begin

Role required: admin

About this task

Mapping the states of the requested item to the universal request state ensures that the status of
request is also reflected on the state of universal request. As the request moves through different
stages of the life cycle, the state of the universal request also gets updated to reflect the change.
For example, consider a universal request has a requested item as a primary ticket. When
the state of the request changes from Open to Work in Progress, the universal request state
changes from New to In Progress.

The following table lists the default state mapping of requested item state with UR states.
Default state mapping of requested item state with UR states
Request item state

UR state

Open

In Progress

Work in Progress

In Progress

Pending

In Progress

Closed Complete

Closed

Closed Skipped

Closed

Closed Incomplete

Closed

If you change the state of the request to Close Incomplete, Closed Skipped, or Closed Complete
without transferring the request back to the Universal Request queue or to another department,
then one of the following action is performed:
• If the Needs resolution review option is selected on the Universal Request, then the state of
the request changes to Close Incomplete, Closed Skipped, or Closed Complete and the UR
state reason is changed to Confirm response.
• If the Needs resolution review option is not selected on the Universal Request, then the
request is closed based on the state mapping.

Note: By default, the Needs resolution review on the Universal Request is set to false.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2920


<!-- page 2921 -->
Procedure
1. Navigate to All > Universal Request > Administration > State Mapping.
2. Click New.
3. On the form, fill in the fields.
For more information, see State mapping form

.

Transfer a request to another department
Transfer a request to another department with or without resolution to fulfill the request.

Before you begin

Role required: itil, routing agent, sn_request_write, or sn_hr_core_case_writer
Configure the sn_uni_req.transfer_type property in the Universal Request properties page to
determine how to handle the request transfers. For more information, see Universal Request
properties .
The agent can transfer a request with one of the following reasons:
Transfer with resolution
The request is resolved and transferred back to UR, a specific department, or a
service. Agents can select this option when another departments help is required to
fulfill the request.
Transfer without resolution
The request isn’t resolved or doesn’t belong to the specific department and
transferred back to UR, a specific department, or a service.

Procedure
1. Navigate to All > Service Catalog > Open Records > Items.
2. Select the request item that you want to transfer.
3. Click Transfer.

Note: To transfer a request, either you must be part of the assignment group or the
request must have been assigned to you.
4. In the Transfer Ticket dialog box, fill in the details.
Transfer ticket dialog
Field

Description

Department

Department that you want to transfer the request to.

Transfer reason

Reason why you are transferring the request to the department.

Transfer notes

Brief description on the reason for transferring the primary ticket.
These notes are read by the UR Routing agent who handles universal
requests.

Copy additional
comments and
attachments

Option to copy the comments and attachments of the request while
transferring. The option is automatically selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2921


<!-- page 2922 -->
Field

Description

Note: Work notes are not copied while transfer.
5. Click Transfer.

Result

The request item is transferred to the selected department. The request is transferred based on
the direct transfer mappings in mapping configuration and transfer type configurations. For more
information on configuring routing, see Transfer configuration .

Agent Workspace for Request Management
Agent Workspace for Request Management integrates the platform functionality specific to
tier 1 agents into an easy-to-navigate interface. This multi-tab interface helps the agents to
efficiently manage multiple incidents, catalog requests, and catalog tasks. The ITSM Workspace
plugin (com.snc.agent_workspace.itsm) that automatically activates the Service Catalog Workspace (com.glideapp.servicecatalog.workspace) plugin should be activated for the Request
Management flows in workspace.

Request Management categories in workspace
• Request: Displays the active requests and requested items.
• Catalog Task: Displays the active tasks assigned to the current user, and to at least one of the
assignment groups of the user.

Request Management forms in workspace
The form layouts, UI actions, UI policies, and client scripts that are available on the following
Request Management forms in Platform are also available on the corresponding Workspace
forms.
• Request
• Request Item
• Catalog Task

Note: A variable editor is displayed as a pop-up window for request items and catalog
tasks only if it is included in the Platform forms.
If you want to change the view of any workspace form, customize the workspace view from the
corresponding request management form in the platform UI.

Create a catalog request in Agent Workspace
You can create a catalog request in Agent Workspace to join the Service Catalog flow from a
different flow. For example, from an incident flow, you can create a request, and associate the
request with the incident. It helps you in tracking the requests associated with an incident and
vice versa.

Before you begin

Role required: itil
You can create a catalog request in Agent Workspace to join the Service Catalog flow from a
different flow. For example, from an incident flow, you can create a request, and associate the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2922


<!-- page 2923 -->
request with the incident. It helps you in tracking the requests associated with an incident and
vice versa.
• To associate a request with any parent table record, the corresponding mapping configuration
should be available in the Catalog Administration > Request Parent Mapping submodule.
• To associate a record producer request with the parent table record, retrieve the
sysparm_parent_sys_id and sysparm_parent_table parameters from the URL
using the RP.getParameterValue() method in the Script field of the record producer.
• For the Create Request UI actions in workspace on the Interaction [interaction] table, the field
values should be as follows:
◦ Workspace Client Script:
function onClick() {
var result = g_form.submit('sysverb_ws_save');
if (!result) {
// failed form submission
return;
}
result.then(function () {
var params = {};
params.sysparm_parent_table = "interaction";
params.sysparm_parent_sys_id =
g_form.getUniqueValue();
g_service_catalog.openCatalogItem('sc_cat_item',
'-1', params);
});
}
• For the Create Request UI actions in workspace on the Incident [incident] table, the field
values should be as follows:
◦ Condition: current.incident_state != global.IncidentState.CLOSED
&& gs.hasRole("itil")
◦ Workspace Client Script:
function onClick() {
g_form.submit('sysverb_ws_update').then(function () {
var params = {};
params.sysparm_parent_table = "incident";
params.sysparm_parent_sys_id =
g_form.getUniqueValue();
g_service_catalog.openCatalogItem('sc_cat_item',
'-1', params);
});
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2923


<!-- page 2924 -->
Procedure
1. Initiate a catalog request using any of the following options.
Option

Steps

a. From the List panel, select an open inci­
dent.

From an incident using the Create Request
UI action

b. In the Details tab, from the More UI Actions
menu, select Create Request. The Service
Catalog categories page is displayed with
available categories.
c. Navigate to a catalog item, order guide, or
record producer that you want to order.

Note: You can only order items from
the catalogs that are accessible.
a. From the List panel, select an open inci­
dent.
b. In the Details tab, click the Toggle Sidebar.
From an incident using Agent Assist

c. From Agent Assist in the contextual side­
bar, search for the catalog item, order
guide, or record producer that you want to
request.
d. Click Order.
a. Select Add New > Interaction.

From an interaction record

b. From the More UI Actions menu, select
Create Request. The Service Catalog cate­
gories page is displayed with available cate­
gories.
c. Navigate to a catalog item or order guide
that you want to order.

Note: You can only order items from
the catalogs that are accessible.
2. Click Order Now.
The Order Confirmation window is displayed.

Note: The value in the Request for field is set by default depending on where the
request is created:
◦ If the request is created from an incident, the value is set to the person who called in
the incident.
◦ If the request was started from an interaction, the value is set to the person with whom
the interaction is happening.
3. Optional: Specify the Delivery Information and Special instructions.
4. Click Checkout.
The request is created and associated with the parent incident.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2924


<!-- page 2925 -->
5. Click Close.
6. Optional: To view the created request, click View Details.

Request Management reference
Reference topics for Request Management.

Domain separation in Request Management
This is an overview of domain separation in Request Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

Activation information
The Domain Support - Domain Extensions Installer plugin
(com.glide.domain.msp_extensions.installer) should be activated to enable domain separation
for Request Management. For information on how you can request for this plugin activation, see
Request domain separation .

How domain separation works in Request Management
Fulfillers see only requests, requested items, and catalog tasks that have been created within
the (tenant) domain for which the fulfiller has the visibility. For information on visibility in domain
hierarchies, see Visibility domains and Contains domains .

Domain separated tables
• Request [sc_request]
• Requested Item [sc_req_item]
• Catalog Task [sc_task]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2925


<!-- page 2926 -->
Use cases
• A user belonging to “Initech” domain, submits a request. Only those fulfillers belonging to
“Initech” domain or global domain can see this request.
• A fulfiller belonging to a parent domain can see requests, requested items, and catalog tasks
of all its child domains as well.
• A fulfiller belonging to a specific domain can create requests only on behalf of the domains
that they have access to.
• If a user has access to multiple domains, the domain specified on the current record drives the
functionality of that record and reference fields.
Related topics
Domain separation for service providers

Request ITSM Roles - Request Management
Request the ITSM Roles plugin (com.snc.itsm.roles) to activate the ITSM Roles — Request
Management plugin (com.snc.itsm.roles.request_management) to gain more control over the
access that different service desk agents, technicians, and managers have within your Request
Management process.

Before you begin

Role required: admin

About this task

The ITSM Roles plugin (com.snc.itsm.roles) includes an additional security model. The security
model provides more granular roles across ITSM applications as well as within them, allowing
you flexibility in setting up access controls. The ITSM Roles plugin is available by default in new
instances. Users upgrading from Madrid or earlier versions must request the plugin.
Plugins for ITSM Roles
Plugin

Adds roles

Business Stakeholder

business_stakeholder

[com.snc_business_stakeholder]

Note: The business_stakeholder
role contains the
sn_incident_read,
sn_problem_read,
sn_change_read,
sn_request_read, and
approver_user roles.

ITSM Roles — Incident Management
[com.snc.itsm.roles.incident_management]

• sn_incident_read

ITSM Roles — Problem Management
[com.snc.itsm.roles.problem_management]

• sn_problem_read

• sn_incident_write

• sn_problem_write

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2926


<!-- page 2927 -->
Plugins for ITSM Roles (continued)
Plugin

Adds roles

ITSM Roles — Change Management
[com.snc.itsm.roles.change_management]

• sn_change_read
• sn_change_write

ITSM Roles — Request Management
• sn_request_read
[com.snc.service_management.roles.request_management]
• sn_request_write
• sn_request_comment_write

Note: The
sn_request_comment_write role
alone doesn't give access to
comments write, you need write
access for the table.
To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.

Note: Activate the ITSM Roles plugin on a subproduction environment and test the
functionality before requesting activation in the production environment. For assistance,
contact the ServiceNow Professional Services team.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2927


<!-- page 2928 -->
Field

Description

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Components installed with ITSM Roles — Request Management
Several user roles are installed with the activation of the ITSM Roles - Request Management
plugin (com.snc.itsm.roles.request_management).

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Contains roles

sn_service_desk_agent Write access to the Request (sc_request) or
Requested Item (sc_req_item).

sn_request_write

sn_request_read

NA

Read access to the Request (sc_request)
or Requested Item (sc_req_item) only for a
user who is also an approver of the request or
requested item.

Note: As there are future updates
expected for the sn_request_read role,
do not assign it to users without the
business_stakeholder role.
sn_request_write

Write access to the Request (sc_request) or
Requested Item (sc_req_item).

• task_editor
• dependency_views
• agent_workspace_user
• view_changer
• cmdb_read
• cmdb_query_builder_read
• sn_request_read

sn_request_comment_write
Write access to the comments for the Requested
Item (sc_req_item).

NA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2928


<!-- page 2929 -->
Role title [name]

Description

Contains roles

Note: The sn_request_comment_write
role alone does not give access to
comments write, you will need write access
for the table.

Activate Business Stakeholder
Activate the Business Stakeholder plugin (com.snc.business_stakeholder) if you have an admin
role. This plugin installs the Business Stakeholder role. Users with this role can view and approve
records at all ITSM product levels.

Before you begin

Role required: admin

Note: Ensure that ITSM Roles plugin (com.snc.itsm.roles) is activated before you activate
the Business Stakeholder plugin. For more information to activate ITSM Roles plugin, refer
Request ITSM Roles- Change Management.

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
Related topics
List of plugins (Zurich)
Installed with Business Stakeholder
The Business Stakeholder plugin (com.snc.business_stakeholder) installs the Business
Stakeholder role when activated.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2929


