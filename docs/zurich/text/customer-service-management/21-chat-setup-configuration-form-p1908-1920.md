# Zurich Customer Service Management — Chat Setup configuration form / CSM roles

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1908–1920 of 2452

Sections: Chat Setup configuration form (p1908); CSM roles (p1909)

---

<!-- page 1908 -->
Record displays as a link

Record displays as a card

Chat Setup configuration form
Description of the Chat setup configuration form fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1908


<!-- page 1909 -->
Chat Setup configuration form
Field

Description

Name

Name of the Live Agent chat setup configuration. The
default name is Chat setup.

Live chat enabled

Option to enable a live chat.

Allow transcript download

Option that enables to download a transcript of the
conversation.

Show agent names and avatars

Option to display agent names and avatars in the Agent
Chat client when a live agent enters, transfers, or exits a
chat.

Enable notifications for all users

Option to enable the delivery of notifications.

Agent Whisper

Option to enable Agent Whisper, which enables agents to
message supervisors without the requester knowing.
For more information, see Agent Whisper

Emoji Enabled

.

Option to enable the ability to include emojis in Agent
Chat.
For more information, see Using emojis in Agent Chat

No Agent Available message

Message that appears when a live agent isn’t available.
The default message is There are no agents
available at the moment. Please try
again later.

Application

The application that contains this configuration record.
This field is automatically set to Global.

Live chat wait status

Displays the wait time for Live Agent support in the Chat
menu if Wait Time has been selected.

.

Customer Service Management roles
The Customer Service Management (CSM) application uses roles to provide access to
information, identify internal and external users, maintain data security, and establish different
types of relationships between users. CSM is installed with certain basic and primary roles.
Customer Service Management provides several primary roles that support the following
business models:
• Business-to-business (B2B): With this business model, you can support accounts and
contacts. Additionally, you can create relationships and account teams to support your
customers.
• Business-to-consumer (B2C): With this business model, you can support individual
consumers.
These roles ensure access to data while maintaining data security for different types of business
relationships.
Besides the Base and Primary roles (that are based on the Base roles), there are Explicit roles as
well. You may have business requirements that can vary how you use the roles. The Explicit roles
in CSM feature lets you assign both internal and external roles to external users. It is important
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1909


<!-- page 1910 -->
to regularly review user role assignments to ensure that they are set according to your business
requirements.
For more information about reviewing and updating user role assignments, see:
• KB0829930
• Fix external user role assignments
To learn more about managing Customer Service Management roles, see Components installed
with CSM workspaces and Components installed with additional plugins for Customer Service
Management.

Service management agent [sn_esm_agent]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Service management partner [sn_esm_partner]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.

sn_esm_user

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Service management user admin [sn_esm_user_admin]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1910


<!-- page 1911 -->
Contains Roles
List of roles contained within the role.

sn_esm_user

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Service management admin [sn_esm_admin]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Service management user [sn_esm_user]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.
• snc_external
• sn_apptmnt_booking.appointment_booking_user

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1911


<!-- page 1912 -->
Service management partner admin [sn_esm_partner_admin]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.
• sn_esm_user_admin
• sn_esm_admin

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Role for REST APIs related to CSM web services [csm_ws_integration]
Use this Base role to access all features available within Customer Service Management. This
role is available and installed with the Customer Service Base Entities plugin.

Contains Roles
List of roles contained within the role.

snc_internal

Groups
List of groups this role is assigned to by default.
All users.

Special considerations
For more information see Roles installed with Customer Service Management.

Customer service agent [sn_customerservice_agent]
Use this role to create cases, view and edit cases, and work with customers and subject matter
experts to resolve cases. This role helps agents assist customers and partners with questions,
issues, and problems.

Contains Roles
List of roles contained within the role.
• knowledge
• chat_admin
• sn_customerservice.deescalation_requester
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1912


<!-- page 1913 -->
• timecard_user
• template_editor
• sn_esm_agent

Note: This role contains the cmdb_read role.
• sn_shn.editor
• domain_expand_scope

Groups
List of groups this role is assigned to by default.
Customer service agents.

Special considerations

Note: A customer service agent typically supports a specific set of products across one or
more communication channels. An agent can belong to one or more agent groups.
For more information see Roles installed with Customer Service Management.

Customer service manager [sn_customerservice_manager]
Use this role with the additional responsibility for managing agents or agent groups and
overriding agent actions. A customer service agent can also use this role with the additional
capability of this role.

Contains Roles
List of roles contained within the role.
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
• awa_manager
• sn_majorissue_mgt.major_issue_manager
• email_client_quick_message_author
• workspace_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1913


<!-- page 1914 -->
• skill_model_user
• sn_templated_snip.template_snippet_writer
• approver_user

Note: For customers upgrading to Xanadu, the approver_user role replaces the
approval_admin role. Users with the customer service manager role can approve the
approval requests that are assigned to them.
• notify_view

Note: The notify_view role is added to the sn_customerservice_manager role only when
the Chat Zoom Connector application is installed.

Groups
List of groups this role is assigned to by default.
Customer service managers, and Customer service agents with the additional responsibility for
managing agents or agent groups and overriding agent actions.

Special considerations
For more information see Roles installed with Customer Service Management.

Consumer service agent [sn_customerservice.consumer_agent]
Use this role to create cases, view and edit cases, and work with customers and subject matter
experts to resolve cases. This role helps agents assist consumers with questions, issues, and
problems.

Contains Roles
List of roles contained within the role.
• sn_esm_agent
• chat_admin
• sn_shn.editor
• template_editor
• knowledge

Groups
List of groups this role is assigned to by default.
All consumer service agents.

Special considerations

Note: A consumer service agent typically supports a specific set of products across one
or more communication channels. An agent can belong to one or more agent groups.
For more information see Roles installed with Customer Service Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1914


<!-- page 1915 -->
Customer [sn_customerservice.customer]
Assign this role to customers for researching questions, issues, or problems. Customers can
create cases, and view and edit existing cases. They can also view a list of assets belonging to
their accounts.

Contains Roles
List of roles contained within the role.
• sn_esm_user
• snc_external

Groups
List of groups this role is assigned to by default.
All users with customer roles and access to a list of assets belonging to their accounts.

Special considerations
For more information see Roles installed with Customer Service Management.

Customer administrator [sn_customerservice.customer_admin]
Use this Administrator role for a customer account. This user has access to data within the
account.

Contains Roles
List of roles contained within the role.
• sn_customerservice.customer
• sn_esm_user_admin

Groups
List of groups this role is assigned to by default.
All users with an administrator role for a customer account.

Special considerations
For more information see Roles installed with Customer Service Management.

Customer case manager [sn_customerservice.customer_case_manager]
Assign this Customer role for managing the cases in an account and any related child accounts.

Contains Roles
List of roles contained within the role.

sn_customerservice.customer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1915


<!-- page 1916 -->
Groups
List of groups this role is assigned to by default.
All users with a case manager role for a customer account.

Special considerations
The customer case manager role includes the privileges of the customer role and adds the
following privileges:
• Create a case on behalf of another contact in the account.
• View a list of cases belonging to the account.
• Edit cases belonging to the account.

Note: The customer case manager role is not automatically added to the

sn_customerservice.contact_role_assignment system property. To
expose this role to customer and partner administrators, navigate to Customer Service >
Administration > Properties and add it to this property.
For more information see Roles installed with Customer Service Management.

Partner [sn_customerservice.partner]
Assign this role to create a case for the partner's own account or on behalf of a customer
account.

Contains Roles
List of roles contained within the role.
• sn_customerservice.customer
• sn_esm_partner

Groups
List of groups this role is assigned to by default.
All users serving customer accounts.

Special considerations
A partner can view and edit all of the cases they have created:
• For their own account.
• On behalf of customer accounts they are related to.

Note: If you are establishing a new relationship between a partner and a customer, the
partner or partner admin does not have access to historic cases created for the customer.
This is because the historic cases do not have the Partner or Partner Contact fields
populated on the Case form.
For more information see Roles installed with Customer Service Management.

Partner administrator [sn_customerservice.partner_admin]
Assign this administrator role to a user with a partner account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1916


<!-- page 1917 -->
Contains Roles
List of roles contained within the role.
• sn_customerservice.partner
• sn_customerservice.customer_admin
• sn_esm_partner_admin

Groups
List of groups this role is assigned to by default.
All users with the admin role for a partner account.

Special considerations
The partner administrator can do the following:
• Access the data within the partner account.
• Access the data created by the contacts in their company in the customer account.
• Manage users for the partner account and for customer accounts.
• View all of the cases created by a partner.
For more information see Roles installed with Customer Service Management.

Consumer [sn_customerservice.consumersn_customerservice.consumer]
Assign this Consumer role to users for researching questions, issues, or problems.

Contains Roles
List of roles contained within the role.
• sn_esm_user
• snc_external

Groups
List of groups this role is assigned to by default.
All users with the assigned Consumer role.

Special considerations
Consumers can create cases and view and edit existing cases for products that they have
purchased. They can also view a list of their products. For more information see Roles installed
with Customer Service Management.

Case Type Configuration Admin [sn_csm_case_type.config_admin]
Can create, view, update and delete records in the following table: Case type [sn_case_type]​

Contains Roles
List of roles contained within the role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1917


<!-- page 1918 -->
None.

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

Customer Service Case Admin
[sn_customerservice.case_admin]
Can create, view, update and delete records in the following table: Customer Service Case
[sn_customerservice_case]​

Contains Roles
List of roles contained within the role.
None.

Note: Limited fields accessibility. No full privilege.
Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

Case Line Admin
[sn_case_line.admin]
Can delete records in the following table: Case line [sn_case_line]​

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1918


<!-- page 1919 -->
Case Digest Admin
[sn_csm_case_digest.admin]
Can delete records in the following table: Case Digest [sn_csm_case_digest_task]. Can
create, view, update and delete records in the following table: Case Digest Configuration
[sn_csm_case_digest_config].

Contains Roles
List of roles contained within the role.
sn_csm_doctemplate.admin.

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

Doc Template Admin [sn_csm_doctemplate.admin]
Can read records in the following table: Case Action Summary [sn_csm_case_digest_cas], Post
Case Review [sn_csm_case_digest_pcr]. Can create, view, update and delete records in the
following table: CS Document Template [sn_csm_doctemplate_template]​

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

Task Plan Admin
[sn_task_plan.admin]
Can create, view, update and delete records in the following table: Task Plan Category
[sn_task_plan_category], Task Plan Template Configuration [sn_task_plan_config],
Task Plan Configuration Category [sn_task_plan_config_category], Task Plan Template
[sn_task_plan_template], Task Plan Template Access [sn_task_plan_template_access], Task
Plan Template Category [sn_task_plan_template_category], Task Plan Template Execution
[sn_task_plan_template_execution], Template Item [sn_task_plan_template_item], Template
Item Condition [sn_task_plan_template_item_condition], Template Item Configuration
[sn_task_plan_template_item_config]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1919


<!-- page 1920 -->
Contains Roles
List of roles contained within the role.
• sn_task_plan.creator
• sn_task_plan.delete
• sn_task_plan.report_viewer
• sn_task_plan.navigation_menu

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

Customer Project Management Admin
[sn_csm_ppm.admin]
Can read records in the following table: Customer Project Task [customer_project_task]​

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
None.

Special considerations
None.

UIB Dynamic Related Records Admin [sn_uib_dyn_rel_rec.admin]
Can create, view, update and delete records in the following tables: Related Record Definition
[sn_related_record_definition], Related Record Context [sn_related_record_context], Context
Related Record Definition [sn_m2m_context_related_record_defn]​

Contains Roles
List of roles contained within the role.
None.

Groups
List of groups this role is assigned to by default.
None.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1920


