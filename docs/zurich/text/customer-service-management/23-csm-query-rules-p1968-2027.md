# Zurich Customer Service Management — CSM Query Rules

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1968–2027 of 2452

Sections: CSM Query Rules (p1968); Components installed with Customer Service Management (p1969); Components installed with CSM workspaces (p2010); Components installed with additional plugins for Customer Service Management (p2012); Components installed with Engagement Messenger (p2022); Components installed with Case lines and workflows (p2025)

---

<!-- page 1968 -->
Template item condition form fields
Field

Description

Short description

A brief description of the template item condition.

Template item

The number of the parent template item.

Condition table

The table on which the is condition applied.
When you create a condition, you select a table on which the
conditions are applied. The following tables are available for
selection:
• The same table as the Target record in the task plan
template.
• The same table as the current template item.

Condition

Use this field to add the conditions for the template item. Each
condition contains a field, operator, and value(s).
Select Set conditions to display the Condition pop-up window.
• Add a condition for the template item that contains a field,
operator, and value.
• Select +New condition set to add a new condition.
• Select x to remove a condition.
• Select Set to save the conditions and close the pop-up
window

CSM Query Rules
Query rules are used to filter the records in CSM-related tables that are accessible by users with
CSM roles. These filters, which are applied in query business rules and READ ACLs on CSMrelated tables, are stored in a metadata table.
Starting with the London release, query rules and filters were defined in the
CSQueryBRUtilOOBConstants script include. In the Quebec release, these filters have been
moved to the Query Rule (sn_query_rule) table.
This change applies to Query business rules (QBRs) and read ACLs on CSM-related tables. Each
data table that used QBRs prior to Quebec now has a new QBR that uses the new logic. Tables
with read ACLs that used filters from the CSQueryBRUtilOOBConstants script include now have
one more read ACL that uses the filters from the Query Rule table.

Availability
The CSM query filters feature is active on zBoot instances. Existing customers must contact
ServiceNow Customer Support to enable this feature.

Query rules property
The sn_cs_queryrules.use_query_rules property determines whether to use the
Query Rule table or the CSQueryBRUtilOOBConstants script include. This property is set to true
for zBoot instances and false for upgraded instances.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1968


<!-- page 1969 -->
• If true, the instance uses rules and filters from the Query Rule table to determine read access
to the CSM tables for the logged-in user.
• If false, the instance uses rules and filters from the CSQueryBRUtilOOBConstants and its
extensions to determine read access to the CSM tables for the logged-in user.

Query Rule table
The Query Rule (sn_query_rule) table extends the sys_metadata table and stores filters for the
following tables:
• Case (sn_customerservice_case)
• Affected Install Bases (sn_install_base_m2m_affected_install_base)
• Install Base Items (sn_install_base_item)
• Installed Products (sn_install_base_m2m_installed_product)
• Sold Products (sn_install_base_sold_product)
• Order Case (csm_order_case)
• Sold Product Covered (sn_install_base_m2m_contract_sold_product)
• Orders (csm_order)
• Asset (alm_asset)
• Entitlement (service_entitlement)
• Account (customer_account)
• Work Order (wm_order)
• Contact (customer_contact)
• Contract (ast_contract)

Components installed with Customer Service Management
Several types of components are installed with the Customer Service Management application.

Tables installed with Customer Service Management
Tables are added to your instance with the activation of the Customer Service Management
(CSM) application.

Tables added with the activation of the Customer Service Base Entities plugin
The following tables are added with the activation of the Customer Service Base Entities plugin.
This plugin is activated automatically by the Customer Service plugin.
Different tables names installed with Customer Service Management
Table

Description

Account

Stores the customer account and partner records.

[customer_account]
Account Address
[account_address_relationship]

Stores the associations between the locations
(addresses) and accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1969


<!-- page 1970 -->
Different tables names installed with Customer Service Management (continued)
Table

Description

Account Access

Stores the records that restrict the contact access to
CSM entities.

[sn_csm_account_access]
Account Relationship
[account_relationship]
Address Type

Stores the records for the relationships that have been
created between the two accounts.

[cmn_location_type]

Stores the address types for the CSM entities, such as
Billing or Shipping. Address types are typically used with
order cases.

Consumer

Stores the consumer records.

[csm_consumer]
Consumer User
[csm_consumer_user]

Stores the consumer registration records that are
created when the consumers complete the selfregistration process from the Consumer Service Portal.
This table extends the Users table (sys_user).

Contact

Stores the customer contact records.

[customer_contact]
Contract Contact
[contract_rel_contact]
Household

Stores the relationships that are created between the
contacts and contracts.
Stores the consumer household records.

[csm_household]
Entitlement

Stores the entitlement records.

[service_entitlement]
Consumer Profile
[sn_csm_consumer_profile]
Consumer Profile Location
[sn_csm_consumer_profile_location]

Stores the references to the consumer and can be
expanded to support multiple profiles within and across
industries, with each profile having its own set of
attributes in the extended table.
Stores the relationships between the consumer profiles
and locations (addresses).

Tables added with the activation of Customer Service plugin
The following tables are added with the activation of the Customer Service plugin.
Table names and their description
Table

Description

Account Relationship Access

Stores the type of access for the account
relationships.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1970


<!-- page 1971 -->
Table names and their description (continued)
Table

Description

[sn_customerservice_account_relationship_access]
Account Relationship Type
[sn_customerservice_account_relationship_type]
Account Team Member
[sn_customerservice_team_member]
Agent Token

Stores the relationship types that are
created for the bi-directional account
relationships.
Stores the team members that are assigned
to the account teams.
This table isn’t currently used.

[sn_customerservice_agent_token]
Appointment
[sn_customerservice_appointment]
Asset Contact
[sn_customerservice_m2m_asset_contact]
Case

Stores the appointments that have been
created for the customer service cases.
Stores the asset contact relationship
records.
Stores the customer service case records.

[sn_customerservice_case]
Case Entitlement
[sn_customerservice_case_entitlement]

Stores the entitlements associated with
case records.
Associated entitlements are
available in the Entitlements
related list on the case record. The
sn_customerservice.advanced_entitlements
system property controls the display of this
related list.

Case Report
[sn_customerservice_case_report]
Channel Configurations
[sn_customerservice_channel_config]
Contact Relationship

Stores the key performance indicators
(KPIs) and metrics for the case records.
Stores the customer service email channel
configuration records.
Stores the contact relationship records.

[sn_customerservice_contact_relationship]
Customer Interaction
[sn_customerservice_customer_interaction]
Customer Service Case Flow

Stores the interaction records for Customer
Service Management (CSM).
Stores the customer service case state
flows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1971


<!-- page 1972 -->
Table names and their description (continued)
Table

Description

[sn_customerservice_sf_case]
Escalation
[sn_customerservice_escalation]
Escalation Severity
[sn_customerservice_escalation_severity]
Escalation Template

Stores the records created for escalated
cases and accounts.
Stores the escalation severity definition
records.
Stores the escalation template records.

[sn_customerservice_escalation_template]
Registration Request
[sn_customerservice_registration]
Related Party
[sn_customerservice_related_party]

Related Party Configuration
[sn_customerservice_related_party_configuration]
Responsibility Definition
[sn_customerservice_responsibility_def]
Task
[sn_customerservice_task]

Stores the self-registration requests for the
Customer Service Portal.
Stores the entities (such as account,
contact, or consumer) that are related
to the customer service cases and the
responsibilities assigned to each of the
entities.
Stores the related party type that provides a
default responsibility definition.
Stores the responsibility definitions that are
created to support the customer accounts.
Stores the tasks that have been created for
the customer service cases.

Responsibility Access Configuration

Stores the metadata of the responsibility
access configuration, which specifies the
[sn_customerservice_responsibility_access_config] level of access and the entities that can be
accessed by a particular responsibility.

Properties installed with Customer Service Management
Properties are added with the activation of the Customer Service Management application.
To open the System Property [sys_properties] table, enter sys_properties.list in the
navigation filter. You can narrow the list results by using the Application field.
You can also navigate to Customer Service > Administration > Properties to view a list of the
most frequently used properties that you can configure for Customer Service Management.
The following table lists the properties that are used for Customer Service Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1972


<!-- page 1973 -->
System properties installed with Customer Service Management
Property

Description

glide.cs.email.case_queue_address

Email case queue address.
• Type: string
• Default value: none

• Location: Customer Service > A
glide.cs.email.new_case_prefix

Email subject prefix format for new
• Type: string
• Default value: Case:

• Location: Customer Service > A
sn_customerservice.email.create_case_for_non_matched_user

Create case for non-matched user.
• Type: true | false
• Default value: false

• Location: Customer Service > A
glide.cs.company_name

Your company name.
• Type: string
• Default value: none

• Location: System Property [sys_
glide.ui.activity.email_roles

Roles that can view the mail in the
"Sent/Received Emails.
• Type: string

• Default value: itil, sn_customers
sn_esm_location_agent, sn_esm
sn_csm_ocs.ext_agent, sn_custo
sn_customerservice.relationship
sn_customerservice.case_contri

• Location: System Property [sys_
glide.ui.sn_customerservice_case_activity.fields

Case activity formatter fields.
• Type: string

• Default value: assigned_to,asse
short_description, comments, en
*Email*,work_notes

• Location: System Property [sys_
sn_customerservice.FTS_flag_enabled

Enable the follow the sun flag on th

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1973


<!-- page 1974 -->
System properties installed with Customer Service Management (continued)
Property

Description

• Type: true | false
• Default value: false
sn_customerservice.glide.script.block.client.globals

• Type: true | false
• Default value:false

• Location: System Property [sys_
sn_customerservice.shn_asset

Special Handling Notes for assets.
• Type: true | false
• Default value: false

• Location: Special Handling Note
sn_customerservice.shn_contact

Special Handling Notes for contact
• Type: true | false
• Default value: false

• Location: Special Handling Note
sn_customerservice.shn_product

Special Handling Notes for produc
• Type: true | false
• Default value: false

• Location: Special Handling Note
sn_customerservice.shn_account

Special Handling Notes for accoun
• Type: true | false
• Default value: false

• Location: Special Handling Note
sn_customerservice.shn_case

Special Handling Notes for cases.
• Type: true | false
• Default value: false

• Location: Special Handling Note
sn_customerservice.portal.chat_queue

• Type: string
• Default value: none

• Location: System Property [sys_

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1974


<!-- page 1975 -->
System properties installed with Customer Service Management (continued)
Property

Description

csm.captcha.google.enabled

Enable the Google Captcha tool on
portal self-registration form.
• Type: true | false
• Default value: true

• Location: System Property [sys_
sn_customerservice.use_asset_contact_relationship

Restrict assets that are based on th
assets.
• Type: true | false
• Default value: false

• Location: Customer Service > A
sn_customerservice.account_relationship_access_roles

Roles that need to be shown in the
qualifier for the Account Relationsh
[sn_customerservice_account_rela
• Type: string
• Default value: none

• Location: Customer Service > A
sn_customerservice.contact_role_assignment

External roles that can be assigned
Service Portal. The roles stored in t
Available column on the Edit Role
• Type: string

• Default value: sn_customerservi
sn_customerservice.partner,sn_c
sn_customerservice.customer

• Location: Customer Service > A
sn_customerservice.registration_workflow_id

Default registration workflow sys_id
• Type: string

• Default value: 9b6cf2dac313020

• Location: System Property [sys_
sn_customerservice.consumer_max_products

Maximum registered products per
• Type: integer
• Default value: 25

• Location: Customer Service > A
com.snc.cs_base.last.generated.code.tree.path

Property that gets created by the s
customer_account record is inserte

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1975


<!-- page 1976 -->
System properties installed with Customer Service Management (continued)
Property

Description

Account Code value for the most r
in the Account [customer_account]

When a new customer account rec
this property to determine a unique
account. The property is then upda
value so that the next account cod
value for the next account record in
property for more details.
• Type: string
• Default value: none

• Location: System Property [sys_

Note: If this property is reset

attempts to create new accoun
already in use, which can resu
sn_customerservice.enable_knowledge_kcs

Knowledge Centered Services (KC
Management.
• Type: true | false
• Default value: false

• Location: Customer Service > A
skills_management.migration

List of task tables to migrate to the
when an administrator runs the Mi
script.
• Type: choice list

• Default value: wm_task,custome

• Location: System Property [sys_
sn_customerservice.rest.api.case_sla_async

Enable asynchronous processing o
using a REST API.
• Type: true | false
• Default value: false

• Location: Customer Service > A
com.snc.skills_management.task_skill_migrated_tables

List of tables where the Skills field
Task Skills [task_m2m_skill] table. I
property, the data has been migrat
• Type: choice list
• Default value: none

• Location: System Property [sys_
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1976


<!-- page 1977 -->
System properties installed with Customer Service Management (continued)
Property

Description

sn_customerservice.case_fields_to_sync

Comma-separated list of fields tha
child cases.
• Type: string

• Default value: priority,state,comm
resolution_code

• Location: Customer Service > A
sn_customerservice.parent_child_case_sync

Synchronize fields from parent to c
• Type: true | false
• Default value: false

• Location: Customer Service > A
sn_customerservice.parent_child_case_sla_async

Processes SLA asynchronously du
and synchronization.
• Type: true | false
• Default value: true

• Location: System Property [sys_
glide.ui.sn_customerservice_escalation_activity.fields

Escalation activity formatter fields.
• Type: true | false
• Default value: false

• Location: System Property [sys_
sn_customerservice.kcs.enable_template_on_case_workspace

Enables creation of knowledge arti
template from a customer service c
• Type: true | false
• Default value: false

• Location: System Property [sys_
sn_customerservice.case.autoresponder.enable

Enables sending content as recom
using the Auto-Responder feature.
• Type: true | false
• Default value: false

• Location: Customer Service > A
sn_customerservice.case.autoresponder.customportal

Custom portal URL that contains th
such as sys_kb_id or kb_number.

Example: https://<instance-name>
id=kb_article_view&sys_kb_id={sys
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1977


<!-- page 1978 -->
System properties installed with Customer Service Management (continued)
Property

Description

• Type: string
• Default value: none

• Location: Customer Service > A

sn_customerservice.contact_relationship.restrict_within_account_hierarchy Create a contact relationship with c
hierarchy.

When set to false, users are allowe
with any account. When set to true
hierarchy will be shown.
• Type: true | false
• Default value: true

• Location: System Property [sys_
sn_bus_loc.int_bus_loc.onboard_location_manager_as_contributor

Assign the sn_customerservice.svc
role to the internal business locatio
the system property is set to true. W
internal business location manage
sn_customerservice.svc_location_
• Type: true | false
• Default value: true

• Location: System Property [sys_
enable_account_address_sharing

Enable an existing address to be a
The associations are present in the
table. Setting the property back to
inappropriate behavior for account
• Type: true| false
• Default value: true

• Location: System Property [sys_
sn_customerservice.create_case.description_enable_html_editor

Enable the flag to add description b
Create Case form page.
• Type: true | false
• Default value: true

• Location: System Property [sys_
sn_customerservice.emails.customportal

Base URL for custom portals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1978


<!-- page 1979 -->
System properties installed with Customer Service Management (continued)
Property

Description

• Type: string
• Default value: none

• Location: System Property [sys_
sn_query_rules.number_of_nq_ops_zing_search_supports

Defines the number of query rules
data.
• Type: string
• Default value: 10

sn_customerservice.consumer_max_new_cases_daily

Defines the maximum number of n
create in a day.
• Type: integer
• Default value: 10

• Location: Customer Service > A

Note: This restriction only ap
consumer.
sn_customerservice.consumer_max_comments_per_case_daily

Defines the maximum number of c
add for a case in a day.
• Type: integer
• Default value: 25

• Location: Customer Service > A

Note: This restriction only ap
consumer.
sn_customerservice.consumer_max_attachments_per_record

Defines the maximum number of a
attach to a record.
• Type: integer
• Default value: 5

• Location: Customer Service > A

Note: This restriction only ap
consumer.
sn_cs_queryrules.use_query_rules

Rules or filters from the sn_query_r
access to customer service manag
logged-in users through query bus
the system property is set to True.
from the CSMQueryBRUtilOOBC
are used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1979


<!-- page 1980 -->
System properties installed with Customer Service Management (continued)
Property

Description

• Type: true | false
• Default value: true

• Location: Customer Service > A
sn_customerservice.advanced_entitlements

This property displays or hides the
case records.
• Type: true | false
• Default value: false

• Location: Customer Service > A
If true:

• The Case Entitlements related lis

• The Entitlement field on the Cas
If false:

• The Entitlement field is visible o

• The Case Entitlements related lis

Roles installed with Customer Service Management
The Customer Service Management application uses roles to provide access to information,
identify internal and external users, maintain data security, and establish different types of
relationships between users.

Primary roles
Customer Service Management provides several primary roles that support the following
business models:
• Business-to-business (B2B): With this business model, you can support accounts and
contacts. Additionally, you can create relationships and account teams to support your
customers.
• Business-to-consumer (B2C): With this business model, you can support individual
consumers.
These roles ensure access to data while maintaining data security for different types of business
relationships.
CSM primary roles
Internal Roles

External Roles

Business-to-business (B2B)

Business-to-business (B2B) Customer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1980


<!-- page 1981 -->
CSM primary roles (continued)
Internal Roles

External Roles

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

For details about these roles, see CSM roles and descriptions below.

Internal and external roles
Customer Service Management includes both internal and external user roles.
• Internal roles are assigned to users within your organization. These roles are for agents and
managers using the Customer Service Management application to support customers.
• External roles are assigned to users outside your organization. These roles are for customers,
customer partners, and consumers using the self-service portals.
With these roles, you can give both internal users and external users access to your instance.
This role structure gives you the flexibility to provide different levels of access to different users.
As an additional security measure, every user must have at least one role so that the instance
can distinguish between internal and external users.

Base roles
The primary roles available in Customer Service Management are based on the following base
roles:
• sn_esm_agent
• sn_esm_admin
• sn_esm_partner
• sn_esm_partner_admin
• sn_esm_user
• sn_esm_user_admin
For more information about these roles, see Roles installed with the Customer Service Base
Entities plugin below.
For more information about the CSM primary role structure and included roles, see CSM roles
and descriptions below.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1981


<!-- page 1982 -->
Explicit roles
You may have business requirements that change the use of these roles. In addition, the Explicit
Roles in CSM feature may assign both internal and external roles to external users. It is important
to regularly review user role assignments to ensure that they are set according to your business
requirements.
For more information about reviewing and updating user role assignments, see:
• KB0829930
• Fix external user role assignments
.

CSM roles and descriptions
Primary CSM roles
Role title [name]

Description

Customer service agent

An agent who assists
customers and partners
with questions, issues, and
problems. This user creates
cases, views and edits cases,
and works with customers
and subject matter experts to
resolve cases.

[sn_customerservice_agent]

A customer service agent
typically supports a specific
set of products across one
or more communication
channels. An agent can
belong to one or more agent
groups.

Customer service agent with
the additional responsibility
[sn_customerservice_manager] for managing agents or agent
groups and overriding agent
actions.

Contains roles

• knowledge
• chat_admin
• sn_customerservice.deescalation_requester
• timecard_user
• template_editor
• sn_esm_agent
• sn_shn.editor
• domain_expand_scope

Note: The
sn_esm_agent role
contains the cmdb_read
role.

Customer service manager

• sn_customerservice_agent
• timecard_manager
• timecard_approver
• skill_admin
• sn_app_cs_social_social_profile_user
• sam
• sn_customerservice.consumer_agent
• asset
• sn_shn.admin
• sn_publications.approver
• contract_manager
• sn_app_cs_social_log_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1982


<!-- page 1983 -->
Primary CSM roles (continued)
Role title [name]

Description

Contains roles

• awa_manager
• sn_majorissue_mgt.major_issue_manager
• email_client_quick_message_author
• workspace_admin
• skill_model_user
• sn_templated_snip.template_snippet_writer
• approver_user

Note: For customers
upgrading to Xanadu,
the approver_user
role replaces the
approval_admin
role. Users with the
customer service
manager role can
approve the approval
requests that are
assigned to them.
• notify_view

Note: The notify_view
role is added to the
sn_customerservice_manager
role only when the
Chat Zoom Connector
application is installed.
Consumer service agent

An agent who assists
consumers with questions,
[sn_customerservice.consumer_agent]
issues, and problems. This
user creates, views, and
edits cases and works with
consumers to resolve cases.
An agent typically supports a
specific set of products across
one or more communication
channels. An agent can
belong to one or more agent
groups.
Customer

Customer role for researching
questions, issues, or
[sn_customerservice.customer] problems. Customers can
create cases and view
and edit existing cases for
themselves. They can also

• sn_esm_agent
• chat_admin
• sn_shn.editor
• template_editor
• knowledge

• sn_esm_user
• snc_external

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1983


<!-- page 1984 -->
Primary CSM roles (continued)
Role title [name]

Description

Contains roles

view a list of assets belonging
to their accounts.
Customer administrator

Administrator role for a
customer account. This user
[sn_customerservice.customer_admin]
has access to data within the
account.
Customer case manager

Customer role for managing
the cases in an account and
[sn_customerservice.customer_case_manager]
any related child accounts.
The customer case manager
role includes the privileges of
the customer role and adds
the following privileges:

• sn_customerservice.customer
• sn_esm_user_admin

sn_customerservice.customer

• Create a case on behalf
of another contact in the
account.
• View a list of cases
belonging to the account.
• Edit cases belonging to the
account.

Note: The customer
case manager role
is not automatically
added to the
sn_customerservice.contact_role_assignment
system property. To
expose this role to
customer and partner
administrators, navigate
to Customer Service
> Administration >
Properties and add it to
this property.
Partner
[sn_customerservice.partner]

Partner who is serving
customer accounts.
A partner can create a case
for their own account or on
behalf of a customer account.

• sn_customerservice.customer
• sn_esm_partner

A partner can view and edit
all of the cases that they have
created:
• For their own account.
• On behalf of customer
accounts that they are
related to.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1984


<!-- page 1985 -->
Primary CSM roles (continued)
Role title [name]

Description

Contains roles

Note: If you are
establishing a new
relationship between a
partner and a customer,
the partner or partner
admin does not have
access to historic cases
created for the customer.
This is because the
historic cases do not
have the Partner or
Partner Contact fields
populated on the Case
form.
Partner administrator

Administrator role for a partner
account.
[sn_customerservice.partner_admin]
The partner administrator can
do the following:

• sn_customerservice.partner
• sn_customerservice.customer_admin
• sn_esm_partner_admin

• Access the data within the
partner account.
• Access the data created
by the contacts in their
company in the customer
account.
• Manage users for the
partner account and for
customer accounts.
• View all of the cases created
by a partner.
Consumer

Consumer role for researching
questions, issues, or
[sn_customerservice.consumer] problems. Consumers can
create cases and view
and edit existing cases for
products that they have
purchased. They can also
view a list of their products.

• sn_esm_user
• snc_external

Additional CSM roles
Role title [name]

Description

Contains roles

Case contributor editor

This role provides limited write
access to the fields on the
[sn_customerservice.case_contributor_editor]
Case form.
It provides limited write
access to those cases for
which the user already has
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1985


<!-- page 1986 -->
Additional CSM roles (continued)
Role title [name]

Description

Contains roles

read access provided by
another role.
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

This role provides read-only
access to all of the tables
[sn_customerservice.case_contributor_viewer]
associated with a case.

• sn_shn.user
• wm_read

With this role, a user can view
the information in the related
lists for a case if:
• The user has been added to
the Contributor User field
or the Contributor Group
field on the Case form.
• The user has read-only
access to cases through
another role, such as
the case viewer role
(sn_customerservice.case_viewer)
or the case task agent role
(sn_customerservice.case_task_agent).
With this role, a user can
access the following modules
in CSM Agent Workspace:All
tasks I participate in
Case task agent

This role provides access to
case tasks and related case
[sn_customerservice.case_task_agent]
information. A user with this
role can work on the following
case tasks:

• sn_customerservice.customer_data_viewer
• sn_customerservice.csm_workspace_user
• sn_customerservice.case_contributor_editor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1986


<!-- page 1987 -->
Additional CSM roles (continued)
Role title [name]

Description

Contains roles

• Tasks that are assigned to
the user or to the user's
assignment groups.
• Tasks that have been
created by the user.
With this role, the user can:
• View and update assigned
case tasks.
• Create case tasks and
assign those tasks to other
users.
• View and update created
case tasks.
• Add work notes, comments,
and attachments to case
tasks.
• Update the status of case
tasks.
• Perform additional actions
from a case task such as
sending email.
With this role, users have
read-only access to customer
information for the case:
• Account and contact
records (for B2B cases)
• Consumer and household
records (for B2C cases)
• Service organization
records (business location
cases)
Case task viewer

This role provides readonly access to all case task
[sn_customerservice.case_task_viewer]
records.

Note: When combined
with the case viewer role
(sn_customerservice.case_viewer),
a user can access all
customer service cases
and all case tasks.
Case viewer

This role provides read-only
access to all cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1987


<!-- page 1988 -->
Additional CSM roles (continued)
Role title [name]

Description

Contains roles

[sn_customerservice.case_viewer]
Contact manager

User who can manage
contacts.
[sn_customerservice.contact_manager]
Customer project manager

A user who creates and
manages projects for
[sn_customerservice.projectmanager]
customer accounts.

sn_customerservice.customer_data_viewer

• Creates new projects.
• Sets up project tasks and
resource plans.
• Identifies customer contacts
who have access to projects
and project tasks.
• Assigns and manages tasks
and dependencies.

Note: This role
is added with the
Customer Project
Management plugin
(com.snc.csm_ppm)
Customer project stakeholder

A user who is responsible for
activities that require viewing
[sn_customerservice.projectstakeholder]
customer project details and
project tasks.

Note: This role
is added with the
Customer Project
Management plugin
(com.snc.csm_ppm)
Data viewer

User with read-only access to
customer data entities such
[sn_customerservice.customer_data_viewer]
as:
• Install base items
• Contracts
• Entitlements
• Accounts, contacts, and
account team members
• Assets

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1988


<!-- page 1989 -->
Additional CSM roles (continued)
Role title [name]

Description

Contains roles

• Consumers
• Sold product
De-escalation requester

User who can deescalate a
case or account when the
[sn_customerservice.deescalation_requester]
cause of the escalation is
resolved.
Escalation requester

User who can request an
escalation for a case or
(sn_customerservice.escalation_requester)
account.

sn_customerservice.escalation_requester

sn_customerservice.consumer_agent

Proxy case creator

Users with the proxy case
creator role can create
[sn_customerservice.proxy_case_creator]
customer service cases
directly from community
questions created by contacts
or consumers
Proxy contact

Role that enables employees
to create cases for customer
[sn_customerservice.proxy_contact]
accounts and contacts.
Employees can also be proxy
case contacts on behalf of
customers. Assign this role to
employees in your company
who are not fulfillers or do
not have other CSM-specific
roles.
Users with this role can:
• Create customer service
cases using a record
producer.
• Add work notes and
comments to any case.
• Update the watch list of any
case.

Note: The CSM
Extension for
Proxy Contacts
(com.snc.csm_proxy_contacts)
plugin adds this role.
Workspace user

This role provides access to
case tasks from the following
[sn_customerservice.csm_workspace_user]
modules in CSM Agent
Workspace:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1989


<!-- page 1990 -->
Additional CSM roles (continued)
Role title [name]

Description

Contains roles

• My Case Tasks
• My Group's Case Tasks
Users can also:
• Use Agent Assist to search
for knowledge articles
(if the User Criteria is
set to provide access to
knowledge).
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

Roles installed with the Customer Service Base Entities plugin
The following roles are installed with the Customer Service Base Entities plugin.
Customer Service Base Entities roles
Role

Contains roles

Service management agent

• assignment_workbench

[sn_esm_agent]

• wm_read
• cmdb_read
• agent_schedule_user
• interaction_agent

Service management partner

sn_esm_user

[sn_esm_partner]
Service management user admin

sn_esm_user

[sn_esm_user_admin]
Service management admin

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1990


<!-- page 1991 -->
Customer Service Base Entities roles (continued)
Role

Contains roles

[sn_esm_admin]
Service management user
[sn_esm_user]
Service management partner admin

• snc_external
• sn_apptmnt_booking.appointment_booking_user

• sn_esm_user_admin

[sn_esm_partner_admin]

• sn_esm_admin

Role for REST APIs related to CSM web
services

snc_internal

[csm_ws_integration]
Related topics
Fix external user role assignments
Internal user data
Internal user data includes information about the users who are internal to your organization,
such as managers, agents, and other employees. Internal users can also belong to user groups.
A user is an individual who can access your instance and a group is a set of users who share a
common purpose. The users associated with a group are listed as group members.
User roles provide access to customer service features, capabilities, and data. The following user
roles are available in the Customer Service Management application for internal users:
• Customer service agent [sn_customerservice_agent]
• Consumer service agent [sn_customerservice.consumer_agent]
• Customer service manager [sn_customerservice_manager]
For detailed descriptions about user roles, see Roles installed with Customer Service
Management.
Business Stakeholder for Customer Service Management
Business Stakeholder for Customer Service Management includes plugins and roles that provide
access to business stakeholder features.
Customers who have purchased the Customer Service Management Subscription product may
provide Business Stakeholder users with the rights to the following actions:
• Create cases on behalf of a customer or a service organization.
• View cases, case tasks, and customer data.
• View and drill through reports.
• Approve requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1991


<!-- page 1992 -->
Roles for business stakeholder users
You can assign the following roles to any user who is a business stakeholder.
Create cases on behalf of customers
Role

Description

Contains roles

Plugin

User type

Account
contributor

This role enables sn_customerservice.case_contributor_creator
CSM
Internal and
users to create
Contributor User external
cases for any
(com.snc.csm_contributor_user)
[sn_customerservice.account_contributor]
account.
Case authorized
contributor

This role enables
CSM
Internal
• sn_customerservice.case_write_granular
users, when
Contributor User
• sn_customerservice.case_related_party_write_granular
added to an
(com.snc.csm_contributor_user)
[sn_customerservice.case_authorized_contributor]
individual case
as a related party,
to:
• Add additional
comments and
attachments
• Receive
notifications on
case updates
• Update case
tasks
• Accept or
reject a
solution
• Close a case

Note: To
perform the
tasks, you
must have
at least
one fulfiller
license
(such as
csm_agent,
sn_customerservice_agent,
or
sn.customerservice.svc_location_agent)
in addition
to this role.
Consumer
contributor

This role enables sn_customerservice.case_contributor_creator
CSM
Internal and
users to create
Contributor User external
cases for any
(com.snc.csm_contributor_user)
[sn_customerservice.consumer_contributor]
consumer.
Relationship
contributor

This role enables
users to create

sn_customerservice.case_contributor_creator
CSM Base
Internal and
Extension
external

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1992


<!-- page 1993 -->
Create cases on behalf of customers (continued)
Role

Description

Contains roles

cases for those
[sn_customerservice.relationship_contributor]
customers with
which they have
an established
relationship.

Plugin

User type

Entities
(com.snc.cs_base_extension)

Location
Relationship
Manager

This role enables sn_customerservice.svc_location_manager_contributor
Business
Internal
users to view
Location
cases across
(com.snc.business_location)
all the external
[sn_bus_loc.location_relationship_manager]
business
locations where
they have
sn_bus_loc.location_relationship_manager
responsibility.
Location
Manager
Contributor

This role enables
Business
Internal and
• sn_customerservice.consumer_contributor
users to create,
Location
external
• sn_customerservice.svc_location_manager_core
update, view,
(com.snc.business_location)
and approve
• sn_customerservice.service_organization_contributor
[sn_customerservice.svc_location_manager_contributor]
cases. They can
• sn_customerservice.account_contributor
also register
and remove
staff across
all business
locations they
manage.
Create cases as proxy contact
Role

Description

Proxy contact

Plugin

This role enables
employees to create
[sn_customerservice.proxy_contact]
cases for customer
accounts and
contacts.

User type

CSM Extension
Internal
for Proxy Contacts
(com.snc.csm_proxy_contacts)

For more information about the proxy contact role, see Create cases as a proxy contact.
Create cases on behalf of service organizations
Role

Description

Contains roles

Plugin

User type

Service
organization
contributor

This role enables sn_customerservice.case_contributor_creator
Business
Internal and
users to create
Location
external
cases for
(com.snc.business_location)
their business
[sn_customerservice.service_organization_contributor]
location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1993


<!-- page 1994 -->
Approve orders
Role

Description

Order approver

Users with this role
can view customer
[sn_csm_om.order_approver]
orders and product
catalog data and can
approve customer
orders. They cannot
create, update, or
delete orders.

Plugin

User type

Order Management
Internal
(com.sn_csm_order_mgmt)

Note: This
requires
subscription
to Order
Management.

View cases, case tasks, and customer data
Role

Description

Account order viewer

Plugin

User type

This role provides
read-only access to
[sn_csm_om.account_order_viewer]
orders, order lines,
and order tasks.

Order Management
Internal
(com.sn_csm_order_mgmt)

Business location
viewer

Business Location
Internal
(com.snc.business_location)

[sn_bus_loc.viewer]

This role provides
read-only access to
business locations.

Note: This
role provides
unrestricted
access to view
all business
locations
regardless of
other access
controls.
Case viewer

This role provides
read-only access to all
[sn_customerservice.case_viewer]
cases.

Internal

Case task viewer

Internal

This role provides
read-only access to all
[sn_customerservice.case_task_viewer]
case tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1994


<!-- page 1995 -->
View cases, case tasks, and customer data (continued)
Role

Description

Plugin

User type

Note: When
combined
with the case
viewer role
(sn_customerservice.case_viewer),
a user can
access all
customer service
cases and all
case tasks.
Consumer order
viewer

This role provides
read-only access to
orders, order lines,
[sn_csm_om.consumer_order_viewer]
and order tasks.

Order Management
Internal
(com.sn_csm_order_mgmt)

Customer data viewer

This role provides
read access to
[sn_customerservice.customer_data_viewer]
customer data,
including account,
consumer, and
household data,
and the information
included in the related
lists.

Internal

Household viewer

Internal

This role provides
Customer Service
read-only access to all Household
[sn_csm_household.viewer]
households.
(com.snc.household)

Note: This
role provides
unrestricted
access to view
all households
regardless of
relationship or
other access
controls.
Service organization
viewer
[sn_service_org.viewer]

This role provides
read-only access to
service organizations.

Service Organization Internal
(com.snc.service_organization)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1995


<!-- page 1996 -->
View cases, case tasks, and customer data (continued)
Role

Description

Plugin

User type

Note: This
role provides
unrestricted
access to view
all service
organizations
regardless of
other access
controls.

View and drill into reports and dashboards
Role

Description

User type

Performance Analytics viewer

This role can:

Internal

[pa_viewer]

• View Analytics Hub.
• Create thresholds and
targets for indicators.
• Read, update, and delete
the thresholds and targets
that are created.
• View text analytics widgets
on dashboards.

View projects and project tasks
Role

Description

Contains roles

User type

Project Stakeholder

This role can:

sn_customerservice.projectstakeholder
Internal

• View all projects.
[sn_customerservice.projectstakeholder]
• View project
information.
• View project task
information.

Related topics
Business stakeholder role for PPM
Business stakeholder role for APM
Installed with Business Stakeholder
Explicit Roles in CSM
You can give both internal users and external users access to your instance. However, you might
not want both types of users to have the same level of access. To provide added security, every
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1996


<!-- page 1997 -->
user must have at least one role so that the instance can distinguish between internal and
external users.
As of the Paris release, no user can have both of the explicit roles (snc_internal and
snc_external). Groups and role containment cannot include both roles, either, since that would
cause any group member or user who is assigned to such a group or such a role to automatically
have both roles. The ServiceNow AI Platform aborts any operation that would create such a
scenario.
External users must obtain, at minimum, the snc_external role. The snc_external role indicates
that the user is external to your organization. They should not have any access to resources
unless explicitly allowed through ACLs for the snc_external role or additional roles that inherit the
snc_external role. By default, users with the snc_external role cannot access:
• Tables without the role that inherits the snc_external role or the public role.
• Non-record type resources, such as processors and UI pages without granting access to the
snc_external role or a role that inherits the snc_external role.
• Platform Analytics dashboards.
Do not mark the snc_internal role as elevated. Otherwise, internal users cannot access the
instance.

Recommended CSM roles for internal and external users
Customers (external users) using the Customer Service Management application should
be assigned either the sn_customerservice.customer or the sn_customerservice.consumer
role. Customer service agents (internal users) should be assigned either the
sn_customerservice_agent or sn_customerservice_consumer_agent role. The system ensures
that the same user is not assigned both a customer (external) and agent (internal) role.

Explicit Roles plugin
The Customer Service plugin (com.sn_customerservice) activates the Explicit Roles plugin
(com.glide.explicit_roles), which adds the snc_external and snc_internal roles. When the plugin is
activated:
• All users must have either the snc_internal role to access internal resources or the
snc_external role to access external resources.
• All existing users are automatically assigned the snc_internal role. This role does not change
existing access levels or system behavior. Instead, it provides a category to differentiate
internal users from external users. All internal users maintain the same level of access as
before the plugin was activated.

Tip: To prevent changing existing functionality for users, activating the Explicit Roles
plugin assigns the snc_internal user role to all existing users in the instance. This
includes any external users added before the Explicit Roles plugin was activated. After
the Explicit Roles plugin is activated, do the following for all external users added before
the Explicit Roles plugin was activated:
◦ Remove the snc_internal role.
◦ Add the snc_external role.
Doing the preceding ensures that external users added before activating the Explicit
Roles plugin do not have access to internal resource that should be available only to
internal users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1997


<!-- page 1998 -->
• Newly created users are automatically assigned the snc_internal role when they first attempt
to log in to the instance, unless they have been explicitly assigned the snc_external role. You
can add the snc_external role to a new user before they first log in to the instance to provide
external user rights.

Important: Activate this plugin during a maintenance window or when few users are
logged in. Users currently logged in when the plugin is activated will not be dynamically
assigned the snc_internal role. Rather, users must log out and log back in to be
assigned the snc_internal role. Once the plugin is activated, you can add or remove the
snc_internal and snc_external roles at any time to change user rights.
• All existing ACLs that do not have a role requirement are automatically assigned the
snc_internal role. Because both existing ACLs and roles are assigned the snc_internal role,
existing access levels do not change.
• Newly created ACLs that do not have a role requirement are automatically assigned the
snc_internal role. This role assignment does not apply to a newly created ACL with a role
assigned.
• For all existing Processor [sys_processor] records or newly created Processor [sys_processor]
records with Type=script, the snc_internal role is automatically added to the Roles field if the
field is empty.
• To restrict access to UI pages to internal users, the plugin automatically assigns the
snc_internal role to the * ACL with a Type of ui_page.
• To restrict access to processors to internal users, the plugin automatically assigns the
snc_internal role to the * ACL with a Type of processor.
• External users must obtain, at minimum, the snc_external role to access the instance. This
role is automatically assigned to external Customer Service Portal contacts. If the Customer
Service Portal is not activated, this role must be manually granted to external users'. Access to
records is granted through ACLs.

Note: You can use the isPublic() function in scripts for Customer Service Portal to
change the privacy setting for a single client-callable script include. For more detail, see
Script includes .
• Content Management System
site access is also affected. CMS is set up with Sites
(content_site), Pages (content_page), and other resources. Some of the sites may have the
Login page configured.
◦ If CMS sites do not have the Login page configured, the public role is automatically added to
the Read Roles field on Pages (content_page) if the field is empty.
◦ If CMS sites have the Login page configured, the snc_internal role is automatically added to
the Read Roles field on Pages (content_page) if the field is empty.
• Service Portal

site access is also affected.

The snc_internal role is not automatically added to sp_page, sp_widget or sp_instance records.
If desired, you can give new records the role by assigning snc_internal as a default value in the
Roles field for these records. For details on this process see Specify a default field value .
Do not move System update sets
enabled.

among instances with and without the Explicit Roles plugin

Note: This plugin also requires the Contextual Security Manager

plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1998


<!-- page 1999 -->
The glide.security.explicit_roles.internal_user_blacklist property
The Explicit Roles plugin assumes that all existing users in the sys_user table at the time the
plugin is installed are internal customers. A fix script assigns the snc_internal role to all existing
users and to any ACL that does not have a role.
The fix script may fail or may not finish in time for a user who has not been updated with the role
and who attempts to access a resource. To bridge this potential gap, the Contextual Security
Manager (CSM) auto-assigns the snc_internal role to any user who logs in and does not have an
explicit role (either internal or external).
Additionally, CSM has a business rule process that assigns the snc_external role to a
classification of their users. However, when importing large sets of CSM external customers,
workflow is set to false, so business rules don't run. As those users attempt to access a resource,
they do not have any explicit roles. The Contextual Security Manager assigns the snc_internal
role through a scheduled job called On-Call Gaps Conflicts Report that runs every 7 days. When
the Explicit Roles plugin is active, this job assigns the snc_internal role to the CSM external user,
since the user does not have either the snc_internal or snc_external role.
To prevent inadvertently providing the snc_internal role to external users, the Explicit Roles
plugin includes a glide.security.explicit_roles.internal_user_blacklist
property to exclude user types from ever becoming snc_internal. If there are no users types in
the glide.security.explicit_roles.internal_user_blacklist table, the Contextual Security Manager
assigns all users the snc_internal role by default. If there are classnames in the blacklist table,
and if the sys_user class type is in the blacklist table, CSM assigns the snc_external role.
Otherwise, CSM assigns the default snc_internal role as usual.
For the Paris release, this property is enabled by default for zBoot instances and and disabled by
default for upgrades.

Providing table access to external users
You can provide external users access to a table by adding a role to the table that inherits the
snc_external role. For more information, see Provide external users access to a table.

The hasRoles() method
The hasRoles() method is still available, but is deprecated in the Geneva release. Use the
hasRole(role name) method instead.
If you do use the hasRoles() method, note these changes:
• This method automatically excludes the default snc_internal role when it checks for roles.
This means that if a user has only the snc_internal role, the hasRoles() method still returns
false.
• If the user has the snc_external role, the method returns false because the instance considers
external users to be without a role.

Mutual exclusion: snc_external versus snc_internal
The ServiceNow AI Platform prevents users from having both the snc_external role and the
snc_internal role. The ServiceNow AI Platform applies this mutual exclusion everywhere in the
system and writes error messages to the logs for each conflict.

Note: ACLs can have both roles if the ACL resources should be accessible to all users.
Example: Adding both explicit roles to a user (direct collision):
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1999


<!-- page 2000 -->
1. Assign user Abel Tuter the snc_internal role.
2. Assign user Abel Tuter the snc_external role.
Result: Adding the snc_external role fails because Abel Tuter has the snc_internal role.
Example: Adding both explicit roles to a group (direct collision):
1. Consider a group called Test Group that currently has no explicit roles assigned to the group.
2. Add Abel Tuter to the Test Group.
3. Add the snc_external role to Test Group.
Result: Adding the snc_external role fails because Abel Tuter already has the snc_internal role
and can't have both roles.
Example: Adding an explicit role to a group where a group member has the conflicting explicit
role (indirect collision):
1. Assign user Abel Tuter the snc_internal role.
2. Consider a group called Test Group that currently has no explicit roles assigned to the group.
3. Add Abel Tuter to the Test Group.
4. Add the snc_external role to the Test Group.
Result: Adding the snc_external role to the group fails because Abel Tuter would inherit the
snc_external role through group membership. Both explicit roles would be assigned to the same
user, which isn't allowed.
For other examples, see the following table:

Role

Attempted action

Result

The user has the
snc_internal role.

Add the snc_external role.

The action is aborted.

The user has the
snc_external role.

Add the snc_internal role.

The action is aborted.

The user has no
explicit role.

Add the snc_internal or
snc_external role.

The role is added.

The user has both
explicit roles (existing
collision).

Add the user to a group with no
roles.

The action is aborted.

A role not associated
with any users
contains the
snc_internal role.

Add the snc_external role.

The action is aborted.

A role not associated
with any users
contains the
snc_external role.

Add the snc_internal role.

The action is aborted.

Direct collision

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2000


<!-- page 2001 -->
Role

Attempted action

Result

A role contains both
explicit roles (existing
collision).

Add the role to a user, role, or
group.

The action is aborted.

A group with no
members has the
snc_internal role.

Add the snc_external role.

The action is aborted.

A group with no
members has the
snc_external role.

Add the snc_internal role.

The action is aborted.

A group with no
Add the snc_internal or
members has no roles. snc_external role.

The role is added.

Indirect collision
Role containment with
collision

1. Grant a role called Test Role
to a user with the snc_internal
role.

The action is aborted.

2. Add the snc_external role Test
Role.
Role containment
without collision

1. Grant a role called Test Role to
a user with no roles.

The role is added to both the user
and Test Role.

2. Add the snc_external role to
Test Role.
Group containment
with collision

1. Add a user who has the
snc_internal role to a group
called Test Group 2 (child of
Test Group 1).

The action is aborted.

2. Add the snc_external role to
Test Group 2.
3. Add the snc_external role to a
parent group called Test Group
1 (parent of Test Group 2).
Group containment
without collision

1. Add a user with no roles to
a group called Test Group 2
(child of Test Group 1).

The role is added to the parent
group, the child group, and the
user.

2. Add the snc_external or
snc_internal role to Test Group
1 (parent of Test Group 2).
Group containment
plus role containment
with collision

Add contains_external to Test
Test Group 1 and Test Group 2 both
Group 1, the parent of Test Group get contains_external, but don't
2.
explicitly get the snc_external role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2001


<!-- page 2002 -->
Role

Group parent
change plus group
containment

Attempted action

Result

Add the snc_internal role to Test
Group 2, the child of Test Group
1.

The action is aborted.

1. Remove Test Group 1 as the
parent of Test Group 2.
2. Add the snc_internal role to
Test Group 1.

The action is aborted.
Repeat for already nested groups,
with the same expectation.

3. Add the snc_external role to
Test Group 2.
4. In Test Group 2, set Test Group
1 as the parent group and save.

The cause of an aborted action appears in the error message and must be addressed before
another attempt succeeds.
For direct cases, such as adding an explicit role to an individual user, verify which explicit role the
user should have. If the user has the wrong explicit role, it must first be removed, and then the
correct explicit role must be added.
For indirect cases,such as adding an explicit role to a group (so that a group member would be
assigned both explicit roles), evaluate whether that user should be in the group. Also determine
whether the group should be given the explicit role, including any inheritance through group
hierarchy and role containment.
Note that the ServiceNow AI Platform reports only the first potential collision encountered. If
repeated attempts continue to fail after remediation, with a new root cause each time, re-evaluate
the relevant user/group/role interdependence more broadly. You may want to rethink how groups
and role containments are structured.
Provide external users access to a table
To enable users with only the snc_external role to access the list view of a table, you must create
a series of ACLs.

Before you begin

Role required: security_admin

Procedure
1. Elevate to a privileged role
2. Create an ACL rule

.

with the following settings:

◦ Type: ui_page
◦ Operation: read
◦ Name: {table_name}_list
◦ Required role: snc_external
3. On the default read ACL for the table, add snc_external in the Required role list.
Create the ACL if it does not already exist.
4. Use these settings to create another ACL:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2002


<!-- page 2003 -->
◦ Type: ui_page
◦ Operation: read
◦ Name: {table_name}
◦ Required role: snc_external
5. Use these settings to create another ACL to give the user write access to a field in the table:
◦ Type: record
◦ Operation: create
◦ Name: {table_name} {column_name}
◦ Required role: snc_external
Repeat this step for every field that you want to give the user write access to. Use an asterisk *
instead of the column name to provide access to all fields at once.
Creating custom user roles
System administrators can create custom roles or modify the access of existing roles by using
script includes and extension points/instances.
The Customer Service Management application uses platform ACLs and query business rules
to restrict data access based on user roles. If needed, users with the administrator role can
create custom roles or modify the access of existing roles by using script includes and extension
points/instances.
• The script includes store JavaScript functions and classes to handle the role access control
logic.
• Extension points/instances designate places where custom scripts can be called and then
processed to extend base functionality.
The administrator can use the extension points/instances to create their own role access
constants file similar to CSQueryBRUtilOOBConstants.
The administrator can create an extension instance for the existing extension point and use it to
define custom role configuration constants. The following items are included with the Customer
Service Management application:
• global.CSQeryExtensionPoint: the provided extension point for CSM role configuration
• instance.CSQueryExtensioninstanceOOB: the provided extension instance for CSM role
configuration
To create a role:
1. Create a constant file to hold the configurations for the new role similar to
CSQueryBRUtilOOBConstants. For example:
CSQueryBRUtilOOBConstantstest.ROLE_PERMISSIONS_POOL = {
‘sn_customerservice.customer_new_role’:{ ‘sn_customerservice_c
ase’:{‘condition’:[‘my_new_condition’]},
} ,
2. Create an extension instance to hold the logic returning this new constant file to
CSQueryBRUtil.
3. Make sure that this role is on the instance and contains the sn_esm_user role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2003


<!-- page 2004 -->
4. Assign this new role to a contact.
5. Create or modify the ACLs and query business rules for this role as necessary.
For more information about modifying ACLs and query business rules, see KB0685767

.

Related topics
Using extension points to extend application functionality
Using scripted extension points in server-side scripts
Using UI extension points in server-side UI macros
Using client extension points in client-side UI scripting

Script includes installed with Customer Service Management
Script includes are added with activation of Customer Service Management.
Script includes installed with Customer Service Management
Script include

Description

CSEMailUtil

Used for customer service case email actions and notifications.

CSPortalUtil

Helper functions for the customer self-service portal.

AccountTeamUtil

Util APIs for the Customer Service Management account team
responsibility module.

AjaxCustomerServiceSearch Ajax class that provides the knowledge base search results.

Client scripts installed with Customer Service Management
Client scripts are added with activation of Customer Service Management.
Client scripts installed with Customer Service Management
Client script

Table

Description

Channel
and State
readonly for
customer

Case

Sets the Channel and State fields to read only
the Case form that the customer can view from
the customer portal.

Check
Contextual
Security
Installed

Contact

Customer
Case View

Case

Empty Case
form on
Account
Change

Case

[sn_customerservice_case]

[customer_contact]

[sn_customerservice_case]

[sn_customerservice_case]

Checks if the Contextual Security plugin
(com.glide.role_management) is installed befor
creating a customer contact.

Hides certain elements in the Case form for ES
view.

When you change the value in the Account fiel
on the Case form, the values in the following
fields are cleared: Partner, Partner contact,
Asset, Entitlement, Contract, and Contact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2004


<!-- page 2005 -->
Client scripts installed with Customer Service Management (continued)
Client script

Table

Description

Empty
Partner
Contact
on Partner
Change

Case

When you change the value in the Partner field
on the Case form, the Partner contact field is
also cleared.

[sn_customerservice_case]

Hide Activity Contact
Stream
[customer_contact]

Hides the activity stream on top of the form
header.

Hide
attachment
icon

Registration Request

Hides the attachment icon on top of the form
header.

Hide Icons
Form
Header

Case

[sn_customerservice_registration]

[sn_customerservice_case]

Hide
Case
Suggestion
next to Short [sn_customerservice_case]
Description
Make field
readonly

Hides the email icon from the more options me
and the activity stream icon at the top of the for
header. Also hides the book icon next to the
Short Description field on the form.
Hides the suggestion icon next to the Short
description field.

Sets the From and To fields to read
only once a record is created in the
[sn_customerservice_account_relationship_type] Account Relationship Type table
(sn_customerservice_account_relationship_typ
Account Relationship Type

Open the
Appointment
glide list
[sn_customerservice_appointment]
for new
appointment

Opens the glide list to select the user for an
appointment for new records.

Populate
Contact
Company

Case

When a user name is selected in the Contact
field, the Account field is populated with the
contact's account information.

Populate
Contract

Case

[sn_customerservice_case]

[sn_customerservice_case]

Populates the Contract field when the Accoun
field is filled.

Populate
Case
contract and
entitlement [sn_customerservice_case]

Populates the Contract and Entitlement fields
when the Account field is filled.

Populate
Entitlement

Case

Populates the Entitlement field when the
Account field is filled.

Populate
Product

Case

[sn_customerservice_case]

[sn_customerservice_case]

When an asset is selected in the Asset field,
the Product field is populated with the asset's
product model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2005


<!-- page 2006 -->
Client scripts installed with Customer Service Management (continued)
Client script

Table

Description

Registration
code readonly

Registration Request

Sets the Registration code field to read-only.

[sn_customerservice_registration]

Set account Account Team Member
read on load
[sn_customerservice_team_member]

Sets the Account field to read only for a new
record when the account isn’t empty on form
load.

Set asset
readonly

Asset Contact

Set the Asset field to readonly for a new form
when the asset value isn’t empty.

Show
partner field

Case

Special
Handling
Notes for
Case

Case

Validate
Product
Entitlement

Entitlement

[sn_customerservice_m2m_asset_contact]

Shows the Opened by field on the Case form.

[sn_customerservice_case]

[sn_customerservice_case]

[service_entitlement]

Shows all the Special Handling Notes with disp
type alert related to the current record.

Displays a field warning message for the Per
unit field if a product is selected but the Asset,
Contract, and Account fields are empty.

Business rules installed with Customer Service Management
Business rules are added with activation of Customer Service Management.
The following table describes the business rules and their related tables that are added with
Customer Service Management.
Business rules added with Customer Service Management
Business rule

Table

Description

Account
query for
customer

Account

Queries the account for the
customer contact.

Account
relationship
display rule

Account Relationship

Add
customer
role to
contacts

Contact

Add snc
external role
to contacts

Contact

[customer_account]

[account_relationship]

[customer_contact]

[customer_contact]

Displays the correct values in
the bi-directional diagram on
the Account Relationship form.
Adds the customer role
(sn_customerservice.customer)
to a customer contact if the
contact has no assigned roles
or if the user ID for the contact
is set.
Adds the snc_external user
role to each contact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2006


<!-- page 2007 -->
Business rules added with Customer Service Management (continued)
Business rule

Table

Description

Add Primary
Contact
to Asset
Contact

Asset

When an asset is assigned
a new primary contact, the
primary contact is added to the
asset contact.

Approver
query for
customer

Approval

Asset query
for customer

Asset

[alm_asset]

[sysapproval_approver]

[alm_asset]

Queries the approver for a
customer contact.
Queries the assets for a
customer contact.

Auto
Case
assessment
business rule [sn_customerservice_case]

Triggers a customer
satisfaction survey when a
case is set to Closed.

Case query
for customer

Queries the cases for a
customer contact.

Case
[sn_customerservice_case]

Case display Case
rule
[sn_customerservice_case]

A display business rule on the
Case form which passes some
values to the browser when a
case is displayed.

Change
Awaiting to
Open

Case

Changes the case state from
Awaiting Info to Open.

Check
duplicate

Asset Contact

[sn_customerservice_case]

[sn_customerservice_m2m_asset_contact]

Checks for duplicate records
before creating a new asset
contact.

Check
Contact Relationship
duplicate for
responsibility [sn_customerservice_contact_relationship]

Checks for duplicate
responsibilities before creating
a new contact relationship.

Check
Asset Contact
duplicate for
responsibility [sn_customerservice_m2m_asset_contact]

Checks for duplicate
responsibilities before creating
a new asset contact.

Check
snc_external
roles exist

Contact

Checks if the
com.glide.security_schema
plugin is activated.

Contact
query for
customer

Contact

Contract
query for
customer

Contract

[customer_contact]

[customer_contact]

[ast_contract]

Queries the contacts for a
customer.
Queries the contracts for a
customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2007


<!-- page 2008 -->
Business rules added with Customer Service Management (continued)
Business rule

Table

Description

Create bidirection
relationship

Account Relationship
[account_relationship]

After an account relationship
is created, this business rule
creates the bi-directional
account relationship record.

Delete
Account Relationship
Account
Contacts and [account_relationship]
Assets

When an account relationship
is deleted, this business rule
deletes the corresponding
account and asset contacts.

Delete
relationship
type

Checks to see if any
relationship records are using
a relationship type before that
relationship type is deleted.

label
[account_relationship_type]

Delete
Responsibility Definition
responsibility
[sn_customerservice_responsibility_def]
definition

Checks to see if any account
team members are using a
responsibility definition before
that responsibility definition is
deleted.

Display
request
message

Registration Request

After registration request
submittal, shows info message
to user

Display rule

Registration Request

[sn_customerservice_registration]

[sn_customerservice_registration]
Entitlement
query for
customer

Entitlement

Insert Case
Work Notes

Appointment

Populate
company for
case

Case

Set First
Response
Time

Case

[service_entitlement]

[sn_customerservice_appointment]

[sn_customerservice_case]

[sn_customerservice_case]

Shows message to remind
users to enter a correct
registration code
Queries the entitlements for a
customer contact.
Updates the case work notes
with the appointment details
when an an appointment is
created.
Populates the Company field
on the Case form based on the
name entered in the Contact
field.
When a case is created
or updated, this rule sets
the current time in the
first_response_time field. Also
used when a case is set to
Resolved or Awaiting Info or
when comments or close notes
are added.

Note: The
first_response_time field
is not used.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2008


<!-- page 2009 -->
Business rules added with Customer Service Management (continued)
Business rule

Table

Update
Registration Request
account
based on reg [sn_customerservice_registration]
code
Update
account
relationship
labels

Account Relationship Type

Update case
entitlement
on Close

Case

Description

Validates the registration
registration code and assigns
the account associated with
the registration code.

When the labels for an account
relationship type are updated,
[sn_customerservice_account_relationship_type] this business rule updates
all of the related account
relationship records.

[sn_customerservice_case]

Updates the associated
entitlement when the state of a
case is set to Closed.

Update Case Appointment
Work notes
[sn_customerservice_appointment]

Adds work notes to the case
when an appointment for the
case is updated.

Update Case Knowledge
Work Notes
[kb_knowledge]

Adds work notes to the case
when a knowledge article
associated with the case gets
updated.

Update
Parent Case
for new task

Task

Updates the case when a new
case task is created.

Update
Parent case
for state
change

Task

Update
relationship
label

Account Relationship

Update User
Task State

Case

Validate
registration

Registration Request

[sn_customerservice_task]

[sn_customerservice_task]

[account_relationship]

[sn_customerservice_case]

[sn_customerservice_registration]

Updates the case when a new
case task is changed.

Updates the relationship labels
for bi-directional account
relationships.
Calculates the work load
for the agent based on the
number of cases assigned to
the agent. Also updates the
last assigned time. This rule
is used by the matching rule
engine.
Checks if the registration is
valid based on the user’s email
address. If the user exists in
the system or a request has
already been submitted and
is in the pending state, the
registration request is not
allowed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2009


<!-- page 2010 -->
Components installed with CSM workspaces
Several types of components are installed with CSM workspaces.

Roles
The agent workspace user role (agent_workspace_user) is added to the Service Management
agent (sn_esm_agent) role. The role is required to access Agent Workspace for CSM.

Form views
Customer service agents see forms in the CSM Workspace form view (workspace_csm), if they
exist for certain record types. Otherwise, agents see forms in the Workspace form view.

Tables
In CSM workspaces, a number of Customer Service Management tables are provided with the
Workspace and CSM Workspace view layouts.
Tables in Workspace view
The Workspace view is provided for the following tables:
• Case (sn_customerservice_case)
• Consumer (csm_consumer)
• Account (customer_account)
• Contact (customer_contact)
• Account Relationship (account_relationship)
• Asset (alm_asset)
• Contract (ast_contract)
• Product Model (cmdb_model)
• Entitlement (service_entitlement)
• Task (sn_customerservice_task)
• Appointments (sn_customerservice_appointment)
• Contact Relationship (sn_customerservice_contact_relationship)
• Escalation (sn_customerservice_escalation)
• Order (csm_order)
• Order Case (csm_order_case)
• Special Handling Notes (sn_shn_notes)
• Order Line Item (csm_order_line_item)
• Asset Contact (sn_customerservice_m2m_asset_contact)
• Account Team Member (sn_customerservice_team_member)
• Social Profiles table (sn_app_cs_social_social_profile)
• Social Logs table (sn_app_cs_social_social_log)
• Knowledge Applied to Tasks table (m2m_kb_task)
Tables in CSM Workspace view
The CSM Workspace view (workspace_csm) is provided for the following tables:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2010


<!-- page 2011 -->
• Interaction (interaction)
• Location (cmn_location)
The CSM Workspace view for these tables is similar to the respective default
platform interface view.

Lists
The list categories and filtered lists that have been configured for customer service agents in
CSM workspaces.
Lists and filtered lists for Customer Service agents
List Category

Filtered Lists

Description

Cases

My Cases

Cases assigned to the customer service agent.

My Open

Open cases assigned to the customer service
agent.

Unassigned for my
groups

Cases that belong to any of the customer
service agent's groups but have not been
assigned to an agent.

All

All customer service cases.

Major Issue
Management

Major Cases

Major cases that have been accepted.

Customer

Accounts

A list of customer accounts.

Partners

A list of partner accounts.

Contacts

A list of customer contacts.

Consumers

A list of consumers.

Interactions

My Interactions

Interactions that are assigned to the customer
service agent (agent's name appears in the
Assigned to field on the interaction record).

Knowledge

My Knowledge
Articles

Knowledge articles authored by the customer
service agent (agent's name appears in the
Author field).

Note: This list appears in the
list panel when the Knowledge
Management Advanced Installer plugin
(com.snc.knowledge_advanced.installer) is
activated.
Catalog Tasks

Assigned to my
groups

Catalog tasks assigned to the current agent's
groups.

Note: Additional filtered lists appear in the list panel when a customer service agent also
has the itil role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2011


<!-- page 2012 -->
Components installed with additional plugins for Customer
Service Management
Several types of components are installed with the additional plugins for the Customer Service
Management application.
Components installed with additional plugins for CSM
Components installed with CTI Softphone

• Tables
• Business rules
• Script includes

Components installed with Customer Service
CTI Demo Data
Components installed with OpenFrame

Business rules

• Tables
• Roles
• Business rules
• Script includes
• UI macros

Components installed with Special Handling
Notes

• Tables
• Roles
• Properties
• Business rules
• Client scripts
• Script includes

Components installed with Targeted
Communications

• Tables
• Roles
• Properties

Components installed with Knowledge
Product Entitlements

Components installed with Self Service
Password Reset

• Business rules
• Properties
Script includes

Components installed with CTI Softphone
Several types of components are installed with CTI Softphone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2012


<!-- page 2013 -->
Note: Starting with the Zurich release, CTI Softphone Plugin is no longer deployed,
enhanced, or supported. For details, see the Deprecation Process [KB0867184]
the Now Support Knowledge Base.

article in

Tables installed with CTI Softphone
Tables are added with activation of CTI Softphone.
Tables for activation of CTI Softphone
Table

Description

User CTI Status

Stores the agent's availability status.

Script includes installed with CTI Softphone
Script includes are added with activation of CTI Softphone.

Script include Description

CTIAjaxUtility Ajax class that provides helper functions to set and get user states, get
incoming call context, log a call, and queue and dequeue a call.
Business rules installed with CTI Softphone
Business rules are added with activation of CTI Softphone.

Business rule

Table

Description

Route available
user for Incident
Task

User CTI Status

Demo business rule to dequeue a call based on
matching rules whenever an agent becomes available.

[user_cti_status]

Components installed with Customer Service CTI Demo Data
Several types of components are installed with Customer Service CTI Demo Data.

Note: Starting with the Zurich release, Customer Service CTI Demo Data Plugin is no
longer deployed, enhanced, or supported. For details, see the Deprecation Process
[KB0867184]
article in the Now Support Knowledge Base.
Business rules installed with Customer Service CTI Demo Data
Business rules are added with activation of Customer Service CTI Demo Data.

Business rule

Table

Description

Route available user for
Case Task

User CTI Status

Used to dequeue a call whenever an agent
becomes available.

[user_cti_status]

Components installed with OpenFrame
Several types of components are installed with OpenFrame.
Tables installed with OpenFrame
Tables are added with activation of OpenFrame.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2013


<!-- page 2014 -->
Tables installed with OpenFrame
Table

Description

Phone Log

A log of the incoming and outgoing phone calls. This table can
be used to log any phone call made or received.

[sn_openframe_phone_log]
OpenFrame Configuration
[sn_openframe_configuration]

Stores the OpenFrame configuration. This is the configuration
used to load the OpenFrame in the TopFrame.

Roles installed with OpenFrame
The OpenFrame user role is automatically added when you activate OpenFrame.

Role

Description

Contains role

User

The OpenFrame user role.

None

[sn_openframe_user]
User

The OpenFrame API user role

None

sn_openframe_api_user
Script includes installed with OpenFrame
The OpenFrameAjaxUtility script include is added when you activate OpenFrame.
Script includes for OpenFrame
Script include

Description

OpenFrameAjaxUtility OpenFrame AJAX utility class that provides functions to get the
OpenFrame configuration and also to get and set the last opened frame
location.
Business rules installed with OpenFrame
Some related business rules are added when you activate OpenFrame.
OpenFrame business rules
Business rule

Table

Description

Set Agent

Phone Log

Sets the agent in the Phone Log
[sn_openframe_phone_log] table as the current
logged-in user if a phone call is logged without
an agent.

[sn_openframe_phone_log]

One Default OpenFrame Configuration
Checks that there’s only one default
Configuration
OpenFrame configuration. You can’t have two
[sn_openframe_configuration] OpenFrame configurations if the default option
is set to true.
Update Task
Work Notes

Phone Log

Updates the work notes for a specific task
whenever a phone call is logged for that task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2014


<!-- page 2015 -->
OpenFrame business rules (continued)
Business rule

Table

Description

[sn_openframe_phone_log]
UI macros installed with OpenFrame
Related UI macros are added when you activate the OpenFrame plugin.
The UI macros added when you activate OpenFrame plugin are supported under the following
conditions:
• The doctype property is set to true and the device is not a tablet or mobile.
• The web browser is Internet Explorer 10 or above.
As a system administrator, you can add the following UI macro scripts:
OpenFrame UI macro scripts
Script include

show_phone

Description

• This macro requires the activation of the OpenFrame plugin.
• By configuring this UI macro using the ref_contribution
parameter, you can display a phone icon next to the sys_user
reference field if the phone field in the sys_user record is
populated with the user's contact number.

show_phone_customer_service

• This macro requires the activation of the Customer Service
Management and the OpenFrame plugins.
• By configuring this UI macro using the ref_contribution
parameter, you can display a phone icon next to the Contact
customer_account reference field on the case form if the phone
field in the Contact customer_account record is populated with
the user's contact number.

Displaying the phone icon enables you to make calls using the click-to-call capability in the
OpenFrame window. For more information on how to use OpenFrame, see OpenFrame overview.

Components installed with Special Handling Notes
Several types of components are installed with Special Handling Notes.
Tables installed with Special Handling Notes
The tables included with the Special Handling Notes plugin (com.sn_shn).
The Special Handling Notes plugin adds the following tables.

Table

Description

Special Handling Notes

Stores the special handling notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2015


<!-- page 2016 -->
Table

Description

[sn_shn_notes]
Special Handling Configuration

Stores the special handling notes table configurations.

[sn_shn_configuration]
Roles installed with Special Handling Notes
Some user roles are included with the Special Handling Notes (com.sn_shn) plugin.
Special handling notes roles
Role

Description

sn_shn.admin

Can read, create, update, and delete special handling notes.
This role contains the sn_shn.editor role.
The sn_customerservice_manager role contains the sn_shn.admin role.

sn_shn.editor

Can read and update special handling notes.
This role contains the sn_shn.user role.
The sn_customerservice_agent role contains the sn_shn.editor role.

sn_shn.user

Can read special handling notes.

Properties installed with Special Handling Notes
Some properties are included with the Special Handling Notes (com.sn_shn) plugin.
The Special Handling Notes plugin adds the following properties.
Special handling notes properties
Property

Maximum number of notes
displayed in the Special
Handling Notes pop-up
window

Description

• Type: integer
• Default value: 20
• Location: Special Handling Notes > Properties

[sn_shn.max_num_alerts]
Display special handling
notes only once per session
[sn_shn.note_preferences]

Special handling notes are displayed each time you access a
record. Enable this property to display special handling notes
only once per session.
• Type: true | false
• Default value: false
• Location: Special Handling Notes > Properties

Width of the Special
Handling Notes pop-up
window in pixels

The width of the Special Handling Notes pop-up window in
pixels. The default width is 500. If you specify less that 300, the
window automatically uses the minimum width of 300 pixels.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2016


<!-- page 2017 -->
Special handling notes properties (continued)
Property

Description

[sn_shn.popup_width]

• Type: integer
• Default value: 500
• Location: Special Handling Notes > Properties

To learn more about the special handling notes properties, see Configure special handling notes
properties.
Business rules installed with Special Handling Notes
The business rules included with the Special Handling Notes plugin (com.sn_shn).
The Special Handling Notes plugin adds the following business rules.
Business rules installed with the Special Handling Notes plugin
Business rule

Table

Description

Updating the
table field

Special Handling Notes

Populates the Table field with the table label rather
than the whole table name.

SHN Cache
Table Entry

Special Handling Notes
Configuration

[sn_shn_notes]

Stores the entries in the configuration table in a
cache to avoid repeated queries.

[sn_shn_configuration]
Client scripts installed with Special Handling Notes
The client scripts included with the Special Handling Notes plugin (com.sn_shn).
The Special Handling Notes plugin adds the following client scripts.
Client scripts
Client
script

Table

On Load Special Handling
Message Notes Configuration
[sn_shn_configuration]

Description

On Load Message describing what the Special Handling
Notes Configuration table is for.
Create a configuration by selecting a table for which special
handling notes can be created and displayed. Include
notes for related entities by selecting the desired fields and
adding them to the configuration.

Script includes installed with Special Handling Notes
The script includes included with the Special Handling Notes plugin (com.sn_shn).
The Special Handling Notes plugin adds the following script includes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2017


<!-- page 2018 -->
Script includes for special handling notes
Script include

Description

SHNProcessor A collection of APIs for special handling notes.
SHNTable

Provides a list of tables for which the user can create special handling notes.

Components installed with Targeted Communications
Several types of components are installed with the Targeted Communications application.
Tables installed with Targeted Communications
Tables are added with activation of Targeted Communications.
Tables installed with Targeted Communications
Table

Description

Recipients (Users)

Stores recipients lists of type Internal Users.

[sn_publications_recipientslist_user_m2m]
Recipients (Accounts)

Stores recipients lists of type Accounts.

[sn_publications_recipientslist_account_m2m]
Recipients (Consumers)

Stores recipients lists of type Consumers.

[sn_publications_recipientslist_consumer_m2m]
Publication Recipients

Stores recipients lists of type Contacts.

[sn_publications_publication_contact_m2m]
Workflow Config

Workflow configuration page.

[sn_publications_workflow_config]
Publication

Stores all publications.

[sn_publications_publication]
Recipients List

Stores the recipient lists.

[sn_publications_recipients_list]
Recurrence

Stores all of the publication recurrences.

[sn_publications_recurrence]
Roles installed with Targeted Communications
Roles are added with activation of Targeted Communications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2018


<!-- page 2019 -->
Roles installed with Targeted Communications
Role title [name]

Description

Publications administrator

The
publications
administrator
can:

[sn_publications.admin]

• read all
publications

Contains roles

• sn_publications.author
• sn_publications.approver
• workflow_publisher
• image_admin

• create,
update,
and delete
publications
• create
recurring
publications
• create
recipient
lists
• add or
remove
approvers to
workflows
Publications author
[sn_publications.author]

The
publications
author can:

• sn_publications_recipients_list_user
• sn_publications_recipients_user

• read all
publications

• workflow_publisher

• create,
update,
and delete
publications

• sn_esm_agent

• image_admin

• create
recurring
publications
• create
recipient
lists
Publications approver
[sn_publications.approver]

Recipients list user

The
publications
approver
can approve
publications.

The recipients
list user can
[sn_publications_recipients_list_user] create and

approver_user

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2019


<!-- page 2020 -->
Roles installed with Targeted Communications (continued)
Role title [name]

Description

Contains roles

view recipient
lists.
Recipients user

The recipients
user can view
recipient lists.

[sn_publications_recipients_user]

None

Properties installed with Targeted Communications
Properties are added with activation of Targeted Communications.

Note: To open the System Property [sys_properties] table, enter
sys_properties.list in the navigation filter.

Property

Description

sn_publications.max_email

Limits the number of email recipients.
• Type: integer
• Default value: 100000
• Location: System Property [sys_properties] table

Components installed with Knowledge Product Entitlements
Several types of components are installed with the Knowledge Product Entitlements application.
Business rules installed with Knowledge Product Entitlements
Business rules are added with activation of Knowledge Product Entitlements.
Knowledge Product Entitlements business rules
Business rule

Table

Description

Knowledge
Product
Entitlement

Knowledge

Implements the needed access controls for users
with the sn_customerservice.customer role.

KB Product
Entitlements

Knowledge Base

[kb_knowledge]

[kb_knowledge_base]

Properties installed with Knowledge Product Entitlements
Properties are added with activation of Knowledge Product Entitlements.
Properties added with Knowledge Product Entitlements
Property

Description

kb_product_entitlement.knowledge_base.enable

Enable access control of
Knowledge Bases based on
product entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2020


<!-- page 2021 -->
Properties added with Knowledge Product Entitlements (continued)
Property

Description

If enabled, customers
can access all of the
knowledge bases related to
the products for which they
have entitlements.
• Type: true/false
• Default value: false
• Location: Knowledge
Product Entitlements >
Properties
kb_product_entitlement.knowledge_base.allow_empty_products Allow access to Knowledge
Bases with empty Related
Products field.
If enabled, customers
can access all knowledge
bases even if no products
have been specified in the
Related Products field on
the Knowledge Base form.
• Type: true/false
• Default value: false
• Location: Knowledge
Product Entitlements >
Properties
kb_product_entitlement.article.enable

Enable access control of
Knowledge Articles based
on product entitlements.
If enabled, customers can
access all of the knowledge
articles related to the
products for which they have
entitlements.
• Type: true/false
• Default value: false
• Location: Knowledge
Product Entitlements >
Properties

kb_product_entitlement.article.allow_empty_products

Allow access to Knowledge
Articles with empty Related
Products field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2021


<!-- page 2022 -->
Properties added with Knowledge Product Entitlements (continued)
Property

Description

If enabled, customers
can access all knowledge
articles even if no products
have been specified in the
Related Products field on
the Knowledge form.
• Type: true/false
• Default value: false
• Location: Knowledge
Product Entitlements >
Properties

Components installed with Self Service Password Reset
Several types of components are installed with Self Service Password Reset.
Script includes installed with Self Service Password Reset
Script includes are added with activation of Self Service Password Reset.
Script includes for self service password reset
Script include

Description

PasswordResetAJAX

AJAX Script to process a password reset from a UI Page as guest.

ResetPwdAjaxProcessor

Components installed with Engagement Messenger
Several types of components are installed with activation of the Engagement Messenger
application, including plugins, tables, and user roles.

Roles installed
Roles installed with the activation of the Engagement Messenger application
Role title [name]

Description

Contains roles

Engagement
Messenger admin

Creates and edits configurations for
Embedded Messenger modules

• sn_csm_ec.ec_read

[sn_csm_ec.ec_admin]

• snc_platform_rest_api_access
• virtual_agent_admin
• image_admin
• sp_admin
• ais_admin
• catalog_builder_editor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2022


<!-- page 2023 -->
Roles installed with the activation of the Engagement Messenger application (continued)
Role title [name]

Description

Contains roles

Engagement
Messenger read

Can view existing configurations for
Embedded Messenger modules

None

[sn_csm_ec.ec_read]

Note: This role should only
be assigned to internal users.

Tables installed
Tables added with the activation of the Engagement Messenger application
Table

Description

Chat Feature Instance

Stores configuration details of the Chat feature of the
messenger modules.

[sn_csm_ec_chat_instance]
Engagement Messenger Module

Stores the list of all messenger modules.

[sn_csm_ec_engmnt_center_module]
Feature

Stores the feature definitions for the messenger.

[sn_csm_ec_feature]

Every feature instance of a messenger module is
created from its feature definition.

Feature Instance

Stores the details of feature instances of the messenger
module.

[sn_csm_ec_feature_instance]
Greeting Feature Instance
[sn_csm_ec_greeting_instance]
Knowledge Feature Instance
[sn_csm_ec_knowledge_instance]
Search Feature Instance
[sn_csm_ec_search_instance]

Stores configuration details of the Greeting feature of
the messenger modules.
Stores configuration details of the Knowledge feature of
the messenger modules.
Stores configuration details of the Search feature of the
messenger modules.

Properties installed with Engagement Messenger
Engagement Messenger properties
Property

Description

com.glide.cs.embed.csp_frame_ancestors

After activating the Glide Virtual Agent plugin
(com.glide.cs.chatbot), you must use the

com.glide.cs.embed.csp_frame_an

system property to enable the configuration o
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2023


<!-- page 2024 -->
Engagement Messenger properties (continued)
Property

Description

frame-ancestors policy for the website where
to host Engagement Messenger.
Set the value of the

com.glide.cs.embed.csp_frame_an

system property 'self' <your website URL
example, 'self' https://www.example.c
• Type: string
• Value: self
• Location: System Properties

glide.authenticate.multisso.enabled

Set the

glide.authenticate.multisso.ena

system property to true to enable multiple pro
SSO.
• Type: true | false
• Value: self
• Location: System Properties

Note: If you want to enable only a guest

experience for your customer service por
can ignore this configuration.
User session time-out glide.ui.session_timeout

Set a user session timeout value for the
glide.ui.session_timeout system pr
to a value that is greater than or equal to your
time-out.
• Type: integer
• Value: 30
• Location: System Properties

Note: If you want to enable only a guest

experience for your customer service por
can ignore this configuration.

sn_customerservice.emails.customportal

Set the URL of your third-party customer supp
so that the notification emails that your custom
contain URLs that redirect them to the exact re
record that they submitted.

These notification emails are sent in scenarios
submitting a case, requesting a service, reque
field technician, or booking a walk-up appoint

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2024


<!-- page 2025 -->
Engagement Messenger properties (continued)
Property

Description

• Type: string
• Value: None
• Location: System Properties

For example, if your customer support portal is
https://www.example.com/support
then set the property value to https://
www.example.com/support.

sn_csm_ec.proactive_inactivity_time

Set the inactive period (in seconds) to trigger
help in Engagement Messenger.
• Type: integer
• Value: 2
• Location: System Properties

glide.knowman.serviceportal.use_numbered_url The property contains a comma-separated lis

service portal record sys_ids. For any portal re
specified in this property, the article link will b
displayed with the sysparm_number URL para
instead of sys_kb_id.
• Type: string
• Value: None
• Location: System Properties

Plugins installed
• Customer Service (com.sn_customerservice)
• Integration - Multiple Provider Single Sign-On Installer (com.snc.integration.sso.multi.installer)

Components installed with Case lines and workflows
Several types of components are installed with the Case lines and workflows application,
including tables and roles.

Tables
Case Lines and workflows tables
Table

Description

Case Line

The Case Line table stores case line item records that are
created for parent cases. This table extends the Case table.

[sn_case_line]

The prefix for case line records is CSL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2025


<!-- page 2026 -->
Case Lines and workflows tables (continued)
Table

Description

Case Line Task

The Case Line Task table stores the tasks related to case line
items. This table extends the Case Task table.

[sn_case_line_task]

The prefix for case line task records is CSLTASK.
Case Line Characteristic
[sn_case_line_characteristic]

The Case Line Characteristic form displays details about the
product offering included in a case line.
The prefix for case line characteristic records is CSLC.

Case Line Entitlement
[sn_case_line_entitlement]

The Case Line Entitlement table stores the entitlements that
are associated with case line items.

Roles
The Case Lines and workflows application includes roles that provide access to case line item
and case line characteristic records. It also updates some existing roles to provide this same
access.
Case lines and workflows roles
Role

Description

sn_case_line.characteristic_creator
This user can create case line
characteristic records if they
have access to the parent
case line item record.

Includes roles

sn_case
_characteristic_viewer

sn_case_line.characteristic_writer
This user can update case line sn_case
characteristic records if they
_characteristic_viewer
have access to the parent
case line item record.
sn_case_line.characteristic_delete
This user can delete case line
characteristic records if they
have access to the parent
case line item record.

sn_case
_characteristic_viewer

sn_case_line.characteristic_viewer
This user can view case line
characteristic records if they
have access to the parent
case line item record.
sn_case_line.characteristic_report_viewer
This user can view reports for
the case line characteristic
table if they have access
to the parent case line item
record.
Case task agent

This is an existing role.

[sn_customerservice.case_task_agent]

• sn_customerservice.csm_workspace_user
• sn_customerservice.customer_data_viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2026


<!-- page 2027 -->
Case lines and workflows roles (continued)
Role

Description

Includes roles

The case task agent has read,
write, and create access for
case line tasks:

• sn_customerservice.case_contributor_editor

• sn_csm_case_types.service_definition_viewe

• If the case task agent is the
assigned user on the case
task (assigned_to).
• If the case task agent
belongs to the same
assignment group as the
assigned user.
The case task agent has read
access to the following:
• The parent order case and
the case line items.
• The case line characteristic
if they have read access to
the associated case line
item.
• Account and contact
records for the parent order
case.
The case task agent can
update the work notes,
comments, attachments, and
watch list of the parent order
case and the case line items.
Customer service agent

This is an existing role.

[sn_customerservice_agent]

The customer service agent
role has read, write, and
update permissions for the
following tables:

For more information, see
Roles installed with Customer
Service Management.

• Case Line
• Case Line Task
• Case Line Characteristic

Properties
Case Lines and workflows properties
Property

Description

sn_customerservice.advanced_entitlements
Displays the Entitlements related list on the Case Line form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2027


