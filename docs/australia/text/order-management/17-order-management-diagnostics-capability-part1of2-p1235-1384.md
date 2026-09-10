# Australia Sales Customer Relationship Management — Order Management diagnostics capability / ServiceNow CPQ with other apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1235–1384 of 1645 | Part 1 of 2

Sections: Order Management diagnostics capability (p1235); ServiceNow CPQ with other apps (p1240); Reference (p1398)

---

<!-- page 1235 -->
Project manager tasks (continued)
Task

Details

Review notes and comments on order
1. Navigate to All > Projects > Project Workspace.
tasks from fulfillment agents and
2. Select the project for the order item.
managers
3. Go to the Notes tab and view the comments and
status updates from Order Management.

Tracking fulfillment tasks that have associated projects in Order Management
As a fulfillment agent or manager, you can view the relationship between a project and order line
item, project tasks, and order task in the Configurable Workspace. You can also post notes and
additional comments on order lines and order tasks to communicate with the project manager
responsible for project oversight of the order management tasks.
Fulfillment agent or manager tasks
Task

Example

View order line-to-project relationship
in order line item form

View project task-to-domain order
relationship in domain form

View order task-to-project task
relationship in order task from

View Details tab in order task
relationship to see task number,
project number, and order line item
number relationship

Order Management diagnostics capability
®

Agents can use ServiceNow Order Management diagnostics capability to diagnose and resolve
service issues related to order tasks and domain orders.
Install these plugins:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1235


<!-- page 1236 -->
• Sales Customer Relationship Management plugin
• Service test management plugin
For more information about service test management, see Setting up a test group
up test definitions .

and Setting

Diagnose and resolve an order task
As a customer service agent, review, diagnose, and resolve, and close an order task for the
service-related issue experienced by the customer.

Before you begin

Role required: admin
To enable the display of the Diagnose tab and Run diagnostics in the conceptual panel, Test
and turn up must be selected in the request type.
The decision table enables the Test and turn up to configure the trigger for any request definition.
This default feature is shipped only for Test and turn up task.

About this task

The order task progresses through several stages from start to closure. It begins with a customer
service agent reviewing and verifying the problem. Next is the diagnosis, where system-specified
tests are executed to identify the root cause. After the tests, the agent moves to the repair,
creating a task to fix the identified issue. The agent follows the instructions in the repair task
to address the problem areas. Once the repair is complete, the task is retested to confirm that
the issue is resolved. Finally, the order is moved to the next step toward delivery based on the
customer's feedback.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon.
3. Navigate to Order Tasks > All.
4. Open an order task that is in the New or Open state.

5. Review and verify the order task.
a. In the Details tab, review and verify the general details for the order task.
6. Diagnose the order task to identify the root-cause of the problem.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1236


<!-- page 1237 -->
The decision table can be configured to control the visibility of the Diagnose and Run
Diagnostics contextual panel tabs. For more information about decision tables, see Decision
Tables .
a. To generate the test results, select Run diagnostics from the contextual panel.
b. In the run diagnostics panel, select CI/Service from the drop-down list.
The drop-down list shows the current product inventory linked to the parent record of order
task.
c. Expand the cards in the Available test suite.
d. In the manual test, select single/multiple tests.
In the automated test, selection of test isn’t available. The subflow that is configured for the
test group would be invoked.
e. Select Configure.
f. In the Configure tests, fill the test-required characteristics form to activate the Run test
button.
g. Optional: In the test, select an option either to Run test now or to Schedule test for later.
h. Select Run test.
i. In the diagnose tab Test results section, select Refresh list

icon.

j. In the diagnose tab, expand the Test results and review the results of the tests conducted in
the previous step, checking whether each test is passed or failed.
The failed tests indicate that the issues causing the order task to be identified and need
repair.
The maximum number of rows to the group is limited to 20 rows. To configure the maximum
number of rows more than 20 rows to the group, see Presentational List Usage .
k. Optional: Select the View Details
l. Optional: Select the Rerun test

icon for a specific test result to review its details.
icon for a specific test result to run it again.

m. Select Continue.
7. Repair the order task by creating a new or automated repair task.
◦ Select Generate automated task to automatically create a repair task.
◦ Select Create repair task to manually create a customize repair task.
A Repair task is created for all failed test cases related to the diagnosed order task.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1237


<!-- page 1238 -->
a. Select the repair task that you want to work on.
b. In the Resolution task form, review the task details to identify the failed test and then work on
those tests to fix the order task.
c. In the Select field, select an appropriate state from the list to update or close the repair task,
such as Closed complete.
d. Select Save and close the resolution task.
e. Select Continue.
8. To view the characteristics values of the order task, select the Order Task Characteristics
Values tab.

Diagnose and resolve a domain order
As a customer service agent, review, diagnose, and resolve, and close a domain order for the
service-related issue experienced by the customer.

Before you begin

Role required: admin
To enable the display of the Diagnose tab and Run diagnostics in the conceptual panel, the Test
and Turn up must be selected in the Stage.
The decision table enables the Test and turn up to configure the trigger for any request definition.
This out-of-the-box feature is shipped only for Test and turn up task.

About this task

The domain order progresses through several stages from start to closure. It begins with a
customer service agent reviewing and verifying the problem. Next is the diagnosis stage, where
system-specified tests are executed to identify the root cause. After the tests, the agent moves
to the repair, creating a task to fix the identified issue. The agent follows the instructions in the
repair task to address the problem areas. Once the repair is complete, the task is retested to
confirm that the issue is resolved. Finally, the order is moved to the next step toward delivery
based on the customer's feedback.
This task is applicable for product order, services, and resources.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon.
3. Navigate to Customer Orders > All.
4. In the Product Orders tab, open the product order record.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1238


<!-- page 1239 -->
5. Review and verify the domain order.
a. In the Details tab, expand the Product Order task and then review and verify the general
details for the domain order.
b. If necessary, in the Notes section, add Additional comments and Work notes.
6. Diagnose the domain order to identify the root-cause of the problem.
The decision table can be configured to control the visibility of the Diagnose and Run
Diagnostics contextual panel tabs. For more information about decision tables, see Decision
Tables .
a. To generate the test results, select Run diagnostics from the contextual panel.
b. In the run diagnostics panel, select CI/Service from the drop-down list.
The drop-down list shows the current product inventory and all the child inventories.
c. Expand the cards in the Available test suite.
d. In the manual test, select single/multiple tests.
In the automated test, selection of test isn’t available. The subflow that is configured for the
test group would be invoked.
e. Select Configure.
f. In the Configure tests dialog box, fill the test-required characteristics form to activate the Run
test button.
g. Optional: In the test dialog box, select an option either to Run test now or to Schedule test
for later.
h. Select Run test.
i. In the diagnose tab Test results section, select Refresh list

icon.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1239


<!-- page 1240 -->
j. In the diagnose tab, expand the Test results and review the results of the tests conducted in
the previous step, checking whether each test is passed or failed.
The failed tests indicate that the issues causing the order task to be identified and need
repair.
The maximum number of rows to the group is limited to 20 rows. To configure the maximum
number of rows more than 20 rows to the group, see Presentational List Usage .
k. Optional: Select the View Details
l. Optional: Select the Rerun test

icon for a specific test result to review its details.
icon for a specific test result to run it again.

m. Select Continue.
7. Repair the order task by creating a new or automated repair task.
◦ Select Generate automated task to automatically create a repair task.
◦ Select Create repair task to manually create a customize repair task.
A Repair task is created for all failed test cases related to the diagnosed order task.
a. Select the repair task that you want to work on.
b. In the Resolution task form, review the task details to identify the failed test and then work on
those tests to fix the order task.
c. In the Select field, select an appropriate state from the list to update or close the repair task,
such as Closed complete.
d. Select Save and close the resolution task.
e. Select Continue.
8. To view the Orchestration of the domain order, select the Order Orchestration tab.
9. To view the tasks of the domain order, select the Order Tasks tab.
10. To view the characteristics values of the domain order, select the Product Order
Characteristics Values tab.
11. To view the details of the service order, select the Service Orders tab.
12. To view the details of the domain order related items, select the Domain Order Related Items
tab.
13. To view the composed of items, select the Composed of items tab.

Integrating ServiceNow CPQ
Learn how ServiceNow CPQ connects with downstream systems and UI frameworks—
visualization engines (CDS, kBridge, Threekit), eCommerce storefronts (Shopify, headless), and
Salesforce (CPQ, B2B Commerce, Base Package)—to deliver real-time, guided configuration,
pricing, and ordering at scale.
With integrations, you can:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1240


<!-- page 1241 -->
• Visualize configurations in real time using 2D/3D viewers (CDS, kBridge, Threekit).
• Transact in your commerce stack via Shopify or headless storefronts with draft orders or addto-cart flows.
• Sell through Salesforce with CPQ/B2B Commerce, launch the ServiceNow CPQ Configurator
from Product2, and persist configuration data to Salesforce objects for quoting and
amendments.

Integration categories at a glance
Integration categories
Category

Primary purpose

Where it’s configured

Typical data flow

Visualization (CDS,
kBridge, Threekit)

Show 2D/3D product
visuals that react to
user selections

Blueprint → Layout
(CSV/Editor)

ServiceNow CPQ
fields/sets → viewer
(1-way); optional
viewer → ServiceNow
CPQ (2-way)

eCommerce (Shopify,
Headless)

Embed configurator
on product/content
pages; create carts or
draft orders

Shopify app +
ServiceNow CPQ
runtime client

Storefront →
ServiceNow CPQ →
cart/draft order

Salesforce package
+ ServiceNow CPQ
Settings

Quote/Cart ↔
ServiceNow CPQ
runtime; optional
persistence to CLI/
CFD

Salesforce (Base,
Launch/configure
CPQ, B2B Commerce) from Product2, write
BOM/field data,
amendments

Limits and behaviors (visualization):
• Sets and product pickers: up to 25 indices/options sent to the viewer
• Active set index: can be published to the viewer when using set repeaters
• Two-way sync: supported for CDS and kBridge (fields; sets require a listener field + parsing
rule)
• Threekit supports one-way from ServiceNow CPQ; pair with set repeater guidance where
applicable
Related topics
Integrating ServiceNow CPQ with visualization tools
ServiceNow CPQ integration with Salesforce B2B Commerce
Request provisioning of an SFDC org with a ServiceNow CPQ environment

ServiceNow CPQ admin settings
Explore the admin settings in ServiceNow CPQ.
Several settings in ServiceNow CPQ control how ServiceNow CPQ interacts with the rest of your
application. To get to the Settings page in ServiceNow CPQ, navigate to the ServiceNow CPQ
Admin screen, select the arrow to expand the Utilities section, and then select the Settings tab
near the bottom of the menu.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1241


<!-- page 1242 -->
1. Admin Version: Determines which UI theme is used for the Admin interface. The setting is
maintained at the user level; each administrator can select their preference. If your ServiceNow
CPQ environment contains both Configuration Manager and ServiceNow Quote Experience,
we highly recommend you use the new Admin UI.
◦ The new Admin UI introduces top-level navigation and color theming that helps
administrators easily identify and access different administration areas.
◦ The Legacy setting retains the administration platform UI used since the application’s
inception.
2. Product Id Field: Determines the field that ServiceNow CPQ uses to match products when
using product rules. Select one of the following:
◦ Product Code: Corresponds to the Product2.ProductCode field in Salesforce
◦ Partner Id: Corresponds to the Product2.Id field in Salesforce

Note: the value of this field will change between environments, such as a Salesforce
sandbox org and a production org. For ease of migration across environments,
consider using either Product Code or External Id.
◦ External Id: Corresponds to the Product2.ExternalId field in Salesforce
3. Roll Up Partner Data: When enabled, this option combines and averages the price for all items
with the same partner ID when responding with easyXDM. This makes each line unique in the
payload instead of representing the information individually.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1242


<!-- page 1243 -->
4. BOM Types to Include in Save Request: Choose BOM types to include in API request when
saving the configuration. Select from the menu or type to enter custom BOM types. The default
options are Sales and Manufacturing.
The following video explains how to include multiple BOM types in API requests: Multi BOM
Enhancements
5. Push BOM Data to ServiceNow CPQ Salesforce Object: When enabled, ServiceNow CPQ
creates records in Salesforce of the LGK ConfigurationLineItem_c object containing
the BOM data when saving a configuration.
6. Push Config Data to ServiceNow CPQ Salesforce Object: When enabled, ServiceNow CPQ
creates records in Salesforce of the LGK ConfigurationFieldData_c object that
contains the config data when saving a configuration.
7. Save Configurations Asynchronously: When disabled, ServiceNow CPQ waits until the
configuration is saved in the database before closing the session. When enabled, ServiceNow
CPQ starts the save process and immediately closes the session. In most cases, enabling
this setting leads to faster workflows, but if a high volume of configurations is being edited
simultaneously, disabling this setting ensures that all configurations are saved when returning.
8. Refresh Token Username: This is the user name that ServiceNow CPQ uses for API syncing of
configuration line data, configuration data, and to populate the caches for Product2, pricebook,
and pricebook entries.
Salesforce objects are synchronized every thirty minutes. If you have an issue synchronizing
product, pricebook, or pricebook entries, reset the user name and wait thirty minutes to see
whether the issue has been resolved.
Set up a runtime client
Configure a runtime client. Doing so creates a token that you can use to authenticate runtime
calls. This can be useful when ServiceNow CPQ is embedded in a VisualForce page.

Before you begin

Role required: admin

About this task

Runtime clients can be set up that provide a token for authentication of runtime calls when
launching ServiceNow CPQ outside of the regular workflow. For example, ServiceNow CPQ may
be started through a quote in Salesforce when embedding ServiceNow CPQ in a Visualforce
page, Lightning web component, or HTML page.

Note: This authentication can be used only by end users launching a ServiceNow CPQ
configuration in runtime. To authenticate admin calls, users should leverage Admin API
Keys .

Procedure
1. In the Utilities tab of the navigation pane, click Runtime clients.
2. Click New.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1243


<!-- page 1244 -->
3. Name the runtime client.

4. Set the user ID.
Setting the user ID attaches the ID to all calls authenticated by this client. This can help track
the origin of the calls.
5. Set whether the permissions apply to Config or Config and Flightpath.
Config enables launching configurations. Flightpath helps with debugging by allowing for
accessing the flightpath data of the configuration.
6. Set an expiration date for the runtime client (optional).
The expiration date can be changed to extend or shorten the time frame during which this
token can be used.
7. Add a URL, such as https://<yourCPQUrlName>.<sector>.cpq or
*.salesforce.com, and then click Add Origin.
Users must specify the origin of calls made using this token to authenticate. Make sure that the
URL has no trailing slash. For example, use *.salesforce.com and not *.salesforce.com/.
You can continue adding origins by repeating this step. When all the origins have been
entered, click Save (6).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1244


<!-- page 1245 -->
8. Click to open the new runtime client, and copy the token.

Related topics
Use case: Embed ServiceNow CPQ UI in a Salesforce VisualForce page
ServiceNow CPQ: User Access Control
View access types, access areas, and user roles that can be managed via the User Access utility.

Note: This feature must be enabled by support request. Create a support case by using
the ServiceNow Support portal . For step-by-step instructions, see Create a case on Now
Support for CPQ Customers .
Use the User Access utility to manage access to ServiceNow CPQ Admin. Admin users have full
admin access unless their access level is modified via CSV import.
For basic user access in ServiceNow CPQ, see User access.

Access levels
• NONE
• READ
• EDIT
• ADMIN

Access areas
• END_USER
• CONFIG
Users with ADMIN can use the Matrix Loader, including product filters and the catalog
enrichment script MANAGED_TABLES.
• TRANSACTION
Users with ADMIN can use the Matrix Loader.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1245


<!-- page 1246 -->
• MANAGED_TABLES
• TABLE
Applies permissions for an individual table listed in addition to any MANAGED_TABLES access
level. Examples:
◦ EX: MANAGED_TABLES: NONE + TABLE “myTable” Edit = ability to edit “myTable” only
◦ EX: MANAGED_TABLES: READ + TABLE “myTable” Edit = ability to read all tables and edit
"myTable"
• DEPLOY
◦ Applies all blueprint, transaction, product catalog enrichment, and product filter deploys
◦ Roles are either NONE or ADMIN UTILITIES
• UTILITIES
◦ Logs, user access, runtime clients, admin API keys, external connections, settings,
webhooks, connections
◦ Products (for Ecommerce tenants)

Tables
User access can be limited to specific tables via CSV or API.

Note: These are additive permissions with the overall tables permission set, so if the user
has read access for all tables, the individual permission of NONE would have no effect.

User roles
• END_USER: This is the only permission for the runtime
• CONFIG_NONE / CONFIG_READ / CONFIG_EDIT / CONFIG_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
• TRANSACTION_NONE / TRANSACTION_READ / TRANSACTION_EDIT /
TRANSACTION_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
• MANAGED_TABLES_NONE / MANAGED_TABLES_READ / MANAGED_TABLES_EDIT /
MANAGED_TABLES_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
• DEPLOY_NONE / DEPLOY_ADMIN (no EDIT or READ): ADMIN everything deployment related,
including Product Filter Rules and Product Catalog Enrichment Deployments
• UTILITIES_NONE / UTILITIES_READ / UTILITIES_ADMIN (no EDIT)
◦ READ correlates to GET endpoints
◦ ADMIN correlates to everything else
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1246


<!-- page 1247 -->
Modifying access controls
Admin users can modify access via CSV upload (Admin > Utilities > User Access). The User
Access list shows existing users.

Steps:
1. Hover a tooltip to view a userʼs access.

2. Create a CSV file to add users, make changes to users, or delete users. (See below for sample
CSV files.)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1247


<!-- page 1248 -->
3. Import the CSV file.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1248


<!-- page 1249 -->
You will receive a message confirming success or failure.

Changes to user list are now made.

Sample CSVs
Default all-access admin CSV:
name,userName,area,access,action
User,email@example.com,DEPLOY,ADMIN,
User,email@example.com,UTILITIES,ADMIN,
User,email@example.com,CONFIG,ADMIN,
User,email@example.com,TRANSACTION,ADMIN,
User,email@example.com,MANAGED_TABLES,ADMIN,
Example complex-access CSV:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1249


<!-- page 1250 -->
name,userName,area,access,action
User 1,user.one@example.com,DEPLOY,ADMIN
User 2,user.two@example.com,UTILITIES,ADMIN
User 2,user.two@example.com,CONFIG,ADMIN
User 2,user.two@example.com,TRANSACTION,ADMIN
User 3,user.three@example.com,END_USER,END_USER
User 4,user.four@example.com,END_USER,END_USER,DELETE
User 5,user.five@example.com,CONFIG,ADMIN
User 5,user.five@example.com,TRANSACTIONS,ADMIN
User 5,user.five@example.com,MANAGED_TABLES,READ
User 5,user.five@example.com,UTILITIES,ADMIN
User 5,user.five@example.com,DEPLOY,ADMIN
User 6,user.six@example.com,CONFIG,ADMIN
CSV adding user to the table "sampleTable":
name,userName,area,access,variableName,action
John Smith,john.smith@example.com,CONFIG,ADMIN,,UPSERT
John Smith,john.smith@example.com,TRANSACTIONS,ADMIN,,UPSERT
John
Smith,john.smith@example.com,TABLE,ADMIN,sampleTableName,UPSERT
Jane Doe,jane.doe@example.com,MANAGED_TABLES,READ,,DELETE
Jane Doe,jane.doe@example.com,UTILITIES,,NONE
Using CPQ user access management
Manage access to the ServiceNow CPQ Admin interface. Grant or remove admin rights and
troubleshoot access issues.
The User Access utility allows managing access to selected areas of ServiceNow CPQ Admin.
Admin users have full admin access unless their access level is modified via CSV import.

Note: The User Access utility is enabled via a support request. Open a ticket by using
the ServiceNow Support portal . For step-by-step instructions, see Create a case on Now
Support for CPQ Customers .
ServiceNow CPQ Admins can control access to the ServiceNow CPQ Admin interface by
granting admin access only to specific users. All existing users have admin access, which can be
adjusted to end-user access as needed. New users automatically receive end-user access and
need to be explicitly granted admin access by a user with admin access.

Note: If a message appears that says "An unknown error occurred" when you try to
access ServiceNow CPQ Admin, admin access may not be toggled on. If you encounter this
message, contact a user with ServiceNow CPQ admin access to enable your access.

Setting up user access
Admin users can modify access via CSV upload (Admin > Utilities > User Access)
The User Access window displays the users currently in the system. To view a user's access,
move the cursor over the user. The access is displayed in a tooltip.
To add, change, or delete users, create a CSV file and import the file into Admin Assist.
• Username: Email address of the user, click to open a modal window for editing access. See
'Edit User' section, below.
• Access: Level of access a user has, can be END_USER or ADMIN,END_USER
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1250


<!-- page 1251 -->
◦ END_USER: Can create configurations using ServiceNow CPQ. This is for sales users,
partners, and similar roles.
◦ ADMIN: Can access the administrative side of ServiceNow CPQ to create and modify
blueprints, fields, rules, and other items.
• Toggle Admin Access: Select one or more users using the check box. Toggle Admin Access
adds or removes admin access for the selected users, depending on their current access
level.
• Import: At the bottom of the user access page is an exportable sample user access file. After
making the necessary modifications to the exported file, you can import it using the Import
button.

Editing a user
Individual users can be edited by clicking their username in the table, which launches an Edit
User window.
• Username: email address of the user being edited.
• Enable Admin Access: Toggle for controlling access to the Admin features of ServiceNow CPQ.
The toggle to the right indicates that the user has Admin privileges.
• Save / Cancel: Confirm any changes made or cancel to not save.

Additional considerations
Users are created and show up on the User screen in ServiceNow CPQ the first time they access
a ServiceNow CPQ instance and go through the authorization provider.
All existing users of a ServiceNow CPQ instance have END_USER and ADMIN access. Admin
access can be removed from users that do not require it.
Newly created users have END_USER permissions only. The access level can be changed by an
administrator following the above steps.

Troubleshooting
• Once granted access, new users may need to do one or more of the following:
◦ Restart the browser
◦ Clear the browser cache
◦ Remove ServiceNow CPQ session cookies before accessing ServiceNow CPQ Admin
• If users experience login issues after a CSV import, verify that the user names in the CSV
match the case used in the user records. If ServiceNow CPQ is integrated with Salesforce, user
names should be all lowercase to align with system requirements, as Salesforce does not allow
user names to be uppercase.
If necessary, edit the CSV so that user names are in lowercase, and import the user again.
Related topics
User access
User Access Control reference
User Access Control reference
Control Admin access levels using CSV imports. Assign NONE, READ, EDIT, or ADMIN
permissions to specific areas.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1251


<!-- page 1252 -->
Note: The User Access utility is enabled via a support request. Open a ticket by using
the ServiceNow Support portal . For step-by-step instructions, see Create a case on Now
Support for CPQ Customers .

Access levels
• NONE
• READ
• EDIT
• ADMIN

Access areas
• END_USER
• CONFIG
Users with ADMIN can use the Matrix Loader.
• TRANSACTION
Users with ADMIN can use the Matrix Loader, including product filters and the catalog
enrichment script.
• MANAGED_TABLES
• TABLE
Applies permissions for an individual table listed in addition to any MANAGED_TABLES access
level. Examples:
◦ MANAGED_TABLES: NONE + TABLE “myTable” Edit = ability to edit “myTable” only
◦ MANAGED_TABLES: READ + TABLE “myTable” Edit = ability to read all tables and edit
"myTable"
• DEPLOY
◦ Applies all blueprint, transaction, product catalog enrichment, and product filter deploys
◦ Roles are either NONE or ADMIN
• UTILITIES
◦ Logs, user access, runtime clients, admin API keys, external connections, settings,
webhooks, connections
◦ Products (for Ecommerce tenants)
• Access to specific resources
Tables: Users can be limited to specific tables they have access to. This is done via CSV as well
as API.

User roles
• END_USER: This is the only permission for the runtime
• CONFIG_NONE / CONFIG_READ / CONFIG_EDIT / CONFIG_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1252


<!-- page 1253 -->
• TRANSACTION_NONE / TRANSACTION_READ / TRANSACTION_EDIT /
TRANSACTION_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
• MANAGED_TABLES_NONE / MANAGED_TABLES_READ / MANAGED_TABLES_EDIT /
MANAGED_TABLES_ADMIN
◦ READ correlates to GET endpoints
◦ EDIT additionally correlates to POST PUT PATCH DELETE endpoints
◦ ADMIN additionally correlates to Matrix Loader endpoints
• DEPLOY_NONE / DEPLOY_ADMIN (no EDIT or READ): ADMIN everything deployment related,
including Product Filter Rules and Product Catalog Enrichment Deployments
• UTILITIES_NONE / UTILITIES_READ / UTILITIES_ADMIN (no EDIT)
◦ READ correlates to GET endpoints
◦ ADMIN correlates to everything else
Related topics
Using CPQ user access management
User access
User access
Learn how to grant or revoke admin access for a user. Existing users have admin access by
default, while new users have only end-user access.
ServiceNow CPQ Admins can control access to the Admin interface by granting admin access
only to specific users. All existing users have admin access, which can be adjusted to end-user
access as needed. New users automatically receive end-user access and need to be explicitly
granted admin access by a user with admin access.

Note: If you try to access ServiceNow CPQ Admin without admin access enabled, you
receive the message "An unknown error occurred." If you encounter this message, ask a
user who has admin access to enable your access.

Managing user access
Configure user access by visiting Utilities > User Access.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1253


<!-- page 1254 -->
1. Username: Email address of the user. Click to edit (see below)
2. Access: The level of access a user has (END_USER or ADMIN)
◦ END_USER: Can create configurations using ServiceNow CPQ. Typical for sales users,
partners, and so on
◦ ADMIN: Can access the administrative side of ServiceNow CPQ to create and modify
blueprints, fields, rules, and other objects
3. Toggle Admin Access: Select one or more users using the checkbox. Toggle Admin Access
adds or removes admin access for the selected users, depending on their current access level
4. Import: At the bottom of the user access page is a sample user access file that can be
exported. After making the necessary modifications to the exported file, you can import it using
the "Import” button
To edit a user, click a username in the table.

1. Username: email address of the user being edited
2. Enable Admin Access: Toggle for controlling access to the Admin features of ServiceNow CPQ.
The toggle to the right indicates that the user has Admin privileges
3. Save / Cancel – Confirm changes or cancel

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1254


<!-- page 1255 -->
Note:
• Users are created and show up on the User screen in ServiceNow CPQ the first time they
access a ServiceNow CPQ instance and go through the authorization provider.
• All existing users of a ServiceNow CPQ instance have END_USER and ADMIN access.
Admin access can be removed from users that do not require it.
• Newly created users have END_USER permissions only. The access level can be changed
by an administrator following the above steps.
• If you need additional assistance, open a support case by using the ServiceNow Support
portal . For step-by-step instructions, see Create a case on Now Support for CPQ
Customers .
Related topics
Using CPQ user access management
User Access Control reference

Request provisioning of an SFDC org with a ServiceNow CPQ environment
Learn how to submit a request through ServiceNow CPQ Support for environment setup.

Before you begin

Role required: admin

Procedure
1. Install Salesforce CPQ version 244 or later.
2. Provide the email address associated with a user in the org who will serve as the first Admin
user.
This user will grant other users access after they appear in the User Access list of users after
attempting to log in.
3. Create a user in the desired SFDC org for ServiceNow CPQ provisioning.
The user should have permissions to install packages. If a ServiceNow CPQ user cannot be
created, provide the My Domain URL of the org as well.
4. Open a case by using the ServiceNow Support portal
In the request, provide the following details:

.

◦ The SFDC org ID (Setup → Settings → Company Settings → Company Information →
Salesforce.com Organization ID)
◦ A short note explaining that you created a user with email and that we need to retrieve these
credentials
◦ The My Domain URL of the org and the org ID, if a ServiceNow CPQ user cannot be created
For step-by-step instructions for opening a support case, see Create a case on Now Support
for CPQ Customers .
ServiceNow CPQ Support and DevOps will notify you when the work is complete.

Integrating ServiceNow CPQ with visualization tools
Learn how ServiceNow CPQ connects to third-party visualization engines—CDS, kBridge, and
Threekit—to render 2D/3D product views that respond to configuration inputs in real time.
You can perform the following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1255


<!-- page 1256 -->
• Show live visuals as users configure: colors, dimensions, options, and bundles can update the
viewer instantly.
• Coordinate UI + visual states: publish field values, set rows, and selected products to the
renderer.
• (Optional) Write back from the viewer: for supported vendors, user actions in the canvas can
update fields.

Supported vendors at a glance
List of vendors
Vendor

Direction What you can send

What can be written
Notes
back

CDS

1-way
and 2way

Fields, Sets (first 25 rows),
product pickers (first 25
options), Active Set Index

Fields; Sets via
Good for CAD/2D/3D;
listener field JSON flexible mapping
+ rule parsing
objects

kBridge 1-way
and 2way

Fields, Sets (first 25 rows),
product pickers (first 25
options), Active Set Index

Fields; Sets via
Real-time 3D with rich
listener field JSON event & listener model
+ rule parsing

Threekit 1-way

Fields, Asset Id (static or via
field), Active Set Index (visual
focus only)

Not supported
(viewer →
ServiceNow CPQ)

Use for high-fidelity
visuals; map fields and
asset selection

Note: When sending sets or product pickers, ServiceNow CPQ publishes up to 25 rows/
options. Indices and options beyond 25 are not transmitted. When using set repeaters, you
can publish an Active Set Index trigger so the viewer shows the row the user is editing.

How the integration works
1. The layout component in the blueprint defines the visualization panel's position and size.
2. Connection settings authorize and route traffic (for example, the script or app URL, the auth
token, and the subdomain).
3. The mapping block selects what ServiceNow CPQ data to send:
◦ eventFields — field variable names and their viewer keys
◦ eventSets — set variable names (first 25 rows published as an array of objects)
◦ eventProductPickers — selected options (first 25) as an array of objects
◦ setActiveTriggers — Boolean fields that indicate the active index in a set repeater
4. (Two-way only) A listener field (ServiceNow CPQ text field) receives JSON from the viewer.
◦ Add a determination rule (or enrichment) to parse that JSON and update fields or set rows.
◦ If a listener field is present, only mappings explicitly configured for two-way will write back.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1256


<!-- page 1257 -->
Data exchanged
• Fields: Scalar values (text, number, Boolean, picklist selection).
• Sets: Array of row objects (first 25). Use the Active Set Index to keep the visual in sync with the
row being edited in a repeater.
• Product pickers: Array of selected option objects (first 25).
• Assets (Threekit): Provide a static assetId or an asset-ID field in ServiceNow CPQ to enable
dynamic asset selection.

Security and environments
• Auth and origin: Use vendor tokens and URLs appropriate to prod vs non-prod. Ensure your
ServiceNow CPQ Runtime Client origins match calling domains.
• CSP (Content Security Policy): Allow vendor script or app hosts for embedding and messaging.
Coordinate with your security team and ServiceNow CPQ support to add domains.
• Separation of concerns: Keep vendor credentials and tokens out of shared layouts across
environments. Swap tokens when promoting.

When to choose which tool
• If you need bidirectional edits in the canvas, choose kBridge or CDS and implement a listener
field and parsing rules.
• If you need high-fidelity 3D with asset management and one-way updates, choose Threekit
with an assetId or assetId field strategy.
• If you have a heavy set-driven UX, prefer CDS or kBridge for two-way set JSON handling and
Active Set Index synchronization.

General guidelines
• Map only what you need: Limit eventFields, eventSets, and eventProductPickers
to essential data for performance.
• Design for the 25-item cap: If users may exceed 25 set rows or product picker selections, add
guardrails (such as validation, paging, or summarization).
• Normalize for two-way: Define a stable JSON schema for listener payloads and centralize
parsing logic in a managed rule or enrichment.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1257


<!-- page 1258 -->
• Promote safely: Externalize environment-specific values such as tokens and URLs. Verify
visuals in test before production promotion.
• Troubleshoot systematically:
◦ Check admin logs for runtime or script errors.
◦ Verify CSP and network access to vendor domains.
◦ Use the viewer’s console/devtools and ServiceNow CPQ debugger inputs to reproduce
states.
Related topics
Integrating kBridge visualization
Integrating CDS or other third-party visualization tools
Integrating Threekit visualization
Integrating kBridge visualization
Integrate kBridge for real-time 3D visualization. Sync configuration inputs with visual updates to
enhance user experience.
ServiceNow CPQ supports several different 3D visualization options in the end-user
configuration experience. ServiceNow CPQ can be implemented to use kBridge as a
visualization component that is updated in real time in the ServiceNow CPQ UI as the user
changes configuration inputs (one-way communication). In addition, bidirectional (two-way)
communication may be defined so that user manipulations of the graphic update ServiceNow
CPQ configuration fields.
The following video shows how to integrate ServiceNow CPQ with kBridge for real-time updates:
KBridge Integration Setup Demo
The integration between ServiceNow CPQ and kBridge is set up in the ServiceNow CPQ
blueprint layout definition. The layout definition:
• defines where the kBridge visualization component will be rendered on the ServiceNow CPQ
UI
• specifies the kBridge connection
• identifies the ServiceNow CPQ field or set data to be sent
To create a kBridge component, the kbridge layout component type can be added in the
“type” column of the layout CSV file. Additional properties for the integration are set in the
“value” column.
This sample layout CSV file demonstrates the use of the kBridge component and parameter
inputs. See row 12.
kBridge_setsv2-layoutCSV

JSON value template
scriptUrl: string,
appUrl: string,
token: string,
sessionStartup: object
eventFields: object
eventSets: object
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1258


<!-- page 1259 -->
eventProductPickers: object
setActiveTriggers: array
listenerFields: object
height: number
width: number

kBridge connection
• scriptUrl: URL for kBridge script
• appUrl: URL for kBridge app
• token: Auth token from kBridge
• sessionStartup: Additional kBridge startup information; work with kBridge, your implementer
or kBridge administrator to determine the appropriate values to pass in this parameter for your
kBridge setup

ServiceNow CPQ data
• eventFields: Mapping of ServiceNow CPQ fields to kBridge
• eventSets: Mapping of ServiceNow CPQ sets to kBridge
• eventProductPickers: Mapping of ServiceNow CPQ product pickers to kBridge
• setActiveTriggers: ServiceNow CPQ set triggers
• listenerFields: For two-way data communication involving one or more ServiceNow
CPQ sets, this object specifies the ServiceNow CPQ text field variable name to which a JSON
representation of the set(s), manipulated in the kBridge visualization by the user, will be
returned to ServiceNow CPQ. The Admin must define a rule that parses the content of the
listenerFields and populates the appropriate set inputs.

Note:
◦ If a blueprint/layout has eventFields but not listenerFields, every event field
has two-way communication.
◦ If a listener field is added to the blueprint or layout, all event fields will communicate
only from ServiceNow CPQ to kBridge.
◦ Event sets and event product pickers pass information only from ServiceNow CPQ to
kBridge, and not from kBridge to ServiceNow CPQ.
◦ From a data standpoint, event sets and event product pickers data are passed the
same way to kBridge (in an array of objects).

Layout size
• height: element height in layout, value is in pixels
• width: element width in layout, value is in pixels

Example JSON values
{
scriptUrl: 'http://script.location';,
appUrl: 'http://app.script.location';,
token: 'abc-123-def-456',
sessionStartup: {
type: 'model',
revisionId: '1234-5678-90'
},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1259


<!-- page 1260 -->
eventFields: {
field1: { name: 'field-1', refChain:
'world.application.model' },
field2: { name: 'field-2', refChain:
'world.application.model' },
field3: { name: 'field-3', refChain:
'world.application.model' }
},
eventSets: {
set1: { name: 'set-1', refChain:
'world.application.model' },
},
eventProductPickers: {
picker1: { name: 'picker-1', refChain:
'world.application.model' },
},
setActiveTriggers: ['set.set2.triggerBoolean'],
listenerFields: {
listenerFieldName: { name: 'ServiceNow CPQTestSet',
refChain: 'world.application.model' }
},
height: 800,
width: 1200,
}
• name corresponds to the field or rule name in kBridge.
• refChain corresponds to the model path of this object in kBridge.

Reference
For a discussion of features available among supported visualization applications in integration
with ServiceNow CPQ, see Visualization Integrations: An Overview .
Integrating Threekit visualization
Integrate Threekit for visualization. Sync configuration inputs with visual updates to enhance user
experience.
ServiceNow CPQ can share field values with Threekit so that Threekit visualization is updated in
real time as the user changes ServiceNow CPQ configuration inputs.
Integration between ServiceNow CPQ and Threekit is accomplished in the blueprint layout
definition. The following layout CSV file contains a sample of how the ServiceNow CPQ
administrator defines where the Threekit visualization will be rendered in the UI, specifies the
Threekit environment authorization token, and identifies the ServiceNow CPQ field data to be
sent.
Layout_ThreeKit_in_sidebar [Google Sheet]
Notes:
• In the layout definition sample, the Threekit rendering displays in a sidebar BasicContainer
positioned on the upper right of the UI.
• The JSON provided in the value column of the ThreeKit element row contains the following
syntax:
{
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1260


<!-- page 1261 -->
"authToken": "3KIT_AUTH_TOKEN",
"assetIdField": "<LGK field that holds 3KIT Asset ID",
"apiSubdomain": "exampleThreekitSubdomain"
"eventFields": {
"LGK_FIELD1_VARNAME": "3KIT_FIELD1_VARNAME",
"LGK_FIELD2_VARNAME": "3KIT_FIELD2_VARNAME",
"LGK_FIELD3_VARNAME": "3KIT_FIELD3_VARNAME"
}
}
• authToken: an authorization token provided by the Threekit application environment.

Important: The authToken is how Threekit determines which of its environments
will serve the visual asset: production or non-production. Therefore, be sure that the
production ServiceNow CPQ environment passes the Threekit production authToken;
nonproduction ServiceNow CPQ environments must pass the Threekit non-production
authToken.
When copying a layout from one ServiceNow CPQ environment to another, be aware that this
manual edit must be made. Otherwise, non-production Threekit assets may be inadvertently
displayed in ServiceNow CPQ production layouts.
• assetIdField defines the name of the ServiceNow CPQ text field that holds the Threekit
asset IDs, as provided by Threekit. In this way, ServiceNow CPQ can pass a dynamic Threekit
asset ID. This helps Threekit optimize image load times. This feature provides flexibility, should
the Threekit model need to be broken into two or more asset definitions to facilitate a better
user experience.

Note: If your ServiceNow CPQ blueprint only passes one static Threekit asset ID,
you can replace the assetIdField parameter with assetId: <hard-coded
Threekit Asset ID>.
• apiSubdomain: The subdomain of your Threekit environment URL.
• eventFields contains key-value pairs where each key is the variable names of the
ServiceNow CPQ field passed to Threekit. The corresponding values are the variable names,
as defined in Threekit.
To learn more about the use of Threekit visualization with a set repeater, see Use case: Pairing
set repeaters and visualization components
For a discussion of the features available in supported visualization applications in integration
with ServiceNow CPQ, see Integrating ServiceNow CPQ with visualization tools.
Integrating CDS or other third-party visualization tools
Integrate CDS Visual or other third-party tools for technical visualization. Sync configuration
inputs with visual updates to enhance user experience.
ServiceNow CPQ can be implemented to share field values with third-party visualization tools
so that visualization is updated in real time as the user changes configuration inputs. This article
discusses integrating the CDS Visual tool as an example. Depending on the CDS model setup,
the visualization may render as CAD drawings, 2D images and 3D interactive images.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1261


<!-- page 1262 -->
The integration between ServiceNow CPQ and CDS is accomplished in the Blueprint layout
definition. The following layout CSV file contains a sample of how the ServiceNow CPQ
administrator defines where the CDS visualization will be rendered. It also specifies the CDS
environment and ServiceNow CPQ field data to be sent.
Layout_CDS_in_sidebar [Google Sheet]

Step-by-step guide
This article can help you decide how to add the CDS configuration.
1. Open the layout editor in your ServiceNow CPQ configurator.
2. Download your CSV layout file.
3. Open your CSV layout file, and add the CDS layout element fields (highlighted in detail below).
4. Re-upload your CSV layout file to ServiceNow CPQ. Your CDS layout element should now be
present in the layout.
5. Open the configuration options for your CDS layout element and add in the necessary JSON
data lines.

Technical configuration options
The integration between ServiceNow CPQ and CDS is accomplished in the Blueprint layout
definition. The following layout CSV file helps demonstrate how the administrator defines where
in the UI the CDS visualization will be rendered. It also specifies the CDS environment and the
ServiceNow CPQ field data to be sent.
The layout can be updated directly in the layout editor. In the layout editor, create a new section
named CDS in your CSV file using the fields highlighted in red below, and upload the new file to
layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1262


<!-- page 1263 -->
From here, you can open the settings for this layout element, and configure the following fields
using the CDS Properties JSON editor:

These properties can be configured in this element. The following table provides the name and
description for each element.
Properties of the CDS layout element
Property name

Required

eventFields

no

Description

Array or object of fields to
send to CDS.
An array will assume the
contained strings are both
ServiceNow CPQ variable
names, and CDS variable
names.
An object will have key:value
pairs. The Key is the
ServiceNow CPQ variable
name, and the value is the
CDS variable name.
Set fields are allowed to be
defined here, using the format:
set.
{setVariableName}.
{fieldVariableName}

eventSets

no

Array or object of sets to send
to CDS.
An array will assume the
contained strings are both
ServiceNow CPQ variable
names, and CDS variable
names.
An object will have key:value
pairs. The Key is the
ServiceNow CPQ variable
name, and the value is the
CDS variable name.
The set will be sent as a
whole, up to 25 indexes long:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1263


<!-- page 1264 -->
Properties of the CDS layout element (continued)
Property name

Required

Description

setVariableName: [
{
field1: 'value',
field2: 'value'
}
{
field1: 'value',
field2: 'value'
}
]
eventProductPickers

no

Sends the entire product
picker's data as an array of
objects to CDS.
An array will assume the
contained strings are both
ServiceNow CPQ variable
names, and CDS variable
names.
An object will have key:value
pairs. The Key is the
ServiceNow CPQ variable
name, and the value is the
CDS variable name.
The product picker will be sent
as a whole, up to 25 indexes
long.
Option ʼ1:
{
"eventProductPicke
rs": [
"productPicker1",
"productPicker2"
]
}
Option ʼ2:
{
"eventProductPicke
rs": {
"logikProductPicke
r1":

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1264


<!-- page 1265 -->
Properties of the CDS layout element (continued)
Property name

Required

Description

"cdsProductPickerN
ame1",
"logikProductPicke
r2":
"cdsProductPickerN
ame2"
}
}
domain

yes

Domain of CDS visualization

env

no

Defaults to”qa” if not provided

setActiveTriggers

no

An array of variable names
corresponding to a boolean
field in a set. The listed fields
will serve as a trigger for
denoting which index of the
set is active when being used
in a set repeater.
These are required if
using a Basic Container or
Expandable Section as the
repeated tier type

height

no

Height of the visualization
window in px - defaults to 500

width

no

Width of the visualization
window in px - defaults to 500

JSON string formatting
The final JSON string formatting should resemble the following:
{
"domain": "exampleDomain", "env": "qa"
"eventFields": ["field1", "field2", "field3"]
}

Notes
• In the layout definition sample, the CDS rendering will display in a BasicContainer sidebar
positioned in the upper right.
◦ CDS can pass ServiceNow CPQ a JSON object to a text field.
◦ Use advanced rules to parse the JSON responses from CDS.
• The JSON provided in the 'value' column (column I) of the CDS element row contains the
following syntax:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1265


<!-- page 1266 -->
{
"eventFields": [ "FIELD1",
"FIELD2", "FIELD3"
],
"domain": "CDS_DOMAIN", "env": "CDS_ENV_SECTOR"
}
domain: the name of the domain serving your project, as provided by CDS.
env: the name of the environment service for your project, as provided by CDS. Example: "qa".
The eventFields array contains the variable names of the ServiceNow CPQ fields that are
passed to CDS. In the past, the norm has been that CDS will match their variables to the
ServiceNow CPQ variable names. Confirm that this is the case for your implementation with
CDS.
eventFields must contain all fields that will be communicated between ServiceNow CPQ
and CDS (that is, both ServiceNow CPQ fields that control the CDS visual and fields that are
passed back to ServiceNow CPQ based on changes made in the CDS visualization).
• Sets can also be passed to CDS, although only the first 25 indexes can be sent. This mirrors
the above process except the property name is eventSets instead of eventFields.
• Array or object of sets to send to CDS:
◦ An array will assume the contained strings are both ServiceNow CPQ variable name and
CDS variable names.
◦ An object will have key:value pairs. The key is the ServiceNow CPQ variable name, and the
value is the CDS variable name.
◦ This will be sent as a whole, up to 25 indexes long using the following syntax:
setVariableName: [
{
field1: 'value', field2: 'value'
},
{
field1: 'value', field2: 'value'
},
]
• Product pickers can also be passed to CDS with a restriction of only the first 25 indexes
being able to be sent. This mirrors the above process, except the property name is
eventProductPickers instead of eventFields or setFields. The following two
syntaxes work:
{
"eventProductPickers": ["productPicker1", "productPicker2"]
}
{
"eventProductPickers": {
"logikProductPicker1": "cdsProductPickerName1",
"logikProductPicker2": "cdsProductPickerName2"
}
}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
• CDS can be set up for two-way communication. One-way communication updates the CDS
graphic when the user updates relevant ServiceNow CPQ fields. The second mode allows
the user to manipulate the CDS graphic, and CDS will update the relevant ServiceNow CPQ
field inputs. For standard fields, CDS writes back to the mapped ServiceNow CPQ field. If
ServiceNow CPQ sets are being used in a two-way communication setup, ServiceNow CPQ
and CDS administrators will need to coordinate the following setup:
◦ The ServiceNow CPQ Admin will define a distinct event field to which set data will be written
from CDS.
◦ The CDS admin will specify this field as the destination for set data.
◦ The ServiceNow CPQ Admin will define determination rules that parse the field and populate
the set.

Integrating ServiceNow CPQ with Shopify
The ServiceNow CPQ app for Shopify enables stores to seamlessly manage and sell
configurable products using ServiceNow CPQ advanced CPQ (Configure, Price, Quote) features.
Installation and setup are streamlined, and robust Admin options are provided for both technical
and non-technical users.
The ServiceNow CPQ app for Shopify is a fully featured connector for a Shopify store. The app
ensures the entire product catalog is available in ServiceNow CPQ for use with a ServiceNow
CPQ blueprint. The app also includes an app block to add a configurator to any page on a
storefront without the need to create a dedicated UI. The configurator app block is fully functional
out of the box which means customers can start adding configurable products to their cart as
soon as the storefront changes are published.
• The ServiceNow CPQ app brings your entire Shopify product catalog into ServiceNow CPQ,
allowing complex configurations for B2C and B2B sales.
• Features an app block to easily add a product configurator to any storefront page—no custom
code required.
• Provides live catalog sync from Shopify to ServiceNow CPQ every fifteen minutes (one-way
sync).
• Enables Shopify B2B Pricing by deferring to Shopify catalog prices for B2B users.
The ServiceNow CPQ app for Shopify is free to download on the Shopify app store:
Product Configuration

Setup
After downloading the ServiceNow CPQ app it will automatically appear in the Apps section of
the store.
To start using the app, the ServiceNow CPQ environment details and a token must be entered
in the ServiceNow CPQ settings section of the app landing screen. For more information about
creating a ServiceNow CPQ token, see Set up a runtime client.

Note: Ensure the storefront and the Admin URLs are added as an origin for the token.
All stores should also include the following static URL to their list of origins: https://shpfyconnect.ecommerce. .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
ServiceNow CPQ app Admin screen overview

• ServiceNow CPQ Settings: ServiceNow CPQ environment settings which is required in order
for the configurator to display
• Instructions: This block summarizes at a high level what is needed for a configurable product.
The ‘Add to Current Themeʼ button will also automatically place the app block on the product
page template.
• Configurable Products: Redirects to a page for ServiceNow CPQ enabled products in the
store catalog
• Order Configuration: Redirects to a ServiceNow CPQ specific create order page so that an
Admin can add a ServiceNow CPQ configurable product to an order

Managing products
When the app is installed and the ServiceNow CPQ settings have been successfully saved, an
automated catalog sync will begin and the custom ServiceNow CPQ attribute is added to the
product details Admin page.

Product catalog synchronization
Products are synced down from Shopify to ServiceNow CPQ every fifteen minutes. All products
in the store catalog will be synced to ServiceNow CPQ. Changes will be synced the next time the
job runs.
Products from Shopify will appear on the Products and Configurable Products table. The Shopify
GID is automatically mapped to the Product ID field on the table.

Note: The product syncs are one way. Changes to the product table will not be reflected in
the Shopify catalog.

Configurable products
In order for a product to appear on the Configurable Products table as well the configurator to
display, a product must have ServiceNow CPQ is Configurable attribute set to True.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
Using Shopify B2B pricing
In order to use Shopify B2B Pricing, all products associated to a ServiceNow
CPQ Blueprint must be present in a catalog. The catalog must also have at lease
one company location associated to it alongside a user who belongs to that

company.
When a user is logged in from an included company location, ServiceNow CPQ pricing will
default to the Shopify catalog price. This will overwrite any ServiceNow CPQ price rules for these
products. It is recommended that B2B specific blueprints are created to avoid any confusion
around pricing in this scenario.

Adding a configurator to a page
The ServiceNow CPQ Configurator can be added to any page via an included app block through
the page editor. The app block is automatically added to your store when the app is installed. You
can find the block under apps when adding a new page section.
The look and feel of the ServiceNow CPQ configurator is managed in ServiceNow CPQ Admin
through use of the layout editor. However, there are additional options in the ServiceNow CPQ
app block. If you encounter issues where the Font is too small or large, that can be modified in
the app block settings along with spacing.

Product Pages
For product pages, the ServiceNow CPQ app landing page has a shortcut to directly add the app
block to the product page template.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
The default behavior on a product page is to use the current product as the configurable product.
If the product is ServiceNow CPQ configurable, the configurator will display. If not, the app block
will remain hidden.
However, it is better to create a specific template for a ServiceNow CPQ enabled product page,
since modifications to the page content besides the app block could be needed.

Content pages
When adding a ServiceNow CPQ configurator to a non-product page, a specific product must
be selected for use.
By default, a select option will be displayed. When clicked, a list of all products will be shown.
Either click a product or enter a search term. Once selected, the product will be displayed in the
app block settings.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
To change the product used, click the current product then click ‘Replaceʼ to reopen the product

list.

Add to Cart vs Add to Order
The ServiceNow CPQ configurator app block provides two options for how it will function.
Either the app will add the configuration to the customerʼs cart directly, or a draft order of the
configuration can be created for the customer. To control the behavior of the configurator on the
page, the option ‘Checkout As Draft Orderʼ can be enabled or disabled.
When enabled, a customer will need to be logged in. If the customer is currently logged out,
the configurator will not be shown and instead a message to inform the customer to login
is displayed. Once logged in, the customer can complete the configuration as usual. After
completing the configuration, the configurator will close and display a success message. This
configuration will then show as a draft order in the Shopify orders screen in the Admin. The
customerʼs email used to login will be included in the order.

If the setting is disabled, once the configuration is completed. All items included in the
configuration are added directly to the customerʼs cart and the customer is redirected to the cart
page.

Managing configurable products in Shopify Admin
Configurable Products List:
On the ServiceNow CPQ app landing page, once the ServiceNow CPQ credentials have been
saved, a configurable product section is shown.
Clicking into the page will display a list of all products that are ServiceNow CPQ configurable
and any variants.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
On the Configurable Products page, each product has two buttons. The details button redirects
the Shopify user to that productʼs details page in the Shopify Admin so they can edit any
product details.
The order button will redirect the Shopify user to the Create Draft Order page and open the
configurator for the selected product.

Creating a draft order

On the Create Draft Order page, a Shopify user can select a ServiceNow CPQ configurable
product to launch itʼs configurator. Once a product is selected and the submit button is clicked,
the associated blueprint is displayed.

Once the configurator has been loaded, the Shopify user can complete a configuration just like
a customer. Once complete, all items in the configuration are added to a new draft order and the
user is redirect to that orderʼs page.

From the order page, the user can complete the order like any other Shopify order.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
Editing a Configurable Product in a draft order
On the draft order page, a Shopify user can edit a ServiceNow CPQ configurable product that
is included in the order. The user will select the product from the dropdown then click the
‘Reconfigureʼ button, which will redirect to the create draft order page.

The existing configuration will automatically load on the page and the user will then have the
ability to make any changes before saving. Once saved, the user will be redirected to the order.

Using the app with headless implementations
The ServiceNow CPQ Shopify app is not required for users who wish to integrate ServiceNow
CPQ with their Shopify storefront. However, the app is designed with headless implementations
in mind.
Here are some considerations when using the app for your headless implementation:
The app will streamline the setup with ServiceNow CPQ and reduce the overall need for
custom middleware by providing a product sync between platforms, a custom ServiceNow CPQ
Configurable product attribute and Draft Order functionality.
A Custom UI can be used in place of the ServiceNow CPQ app block which is completely
optional.
Saving a configuration, even heedlessly, will trigger the ServiceNow CPQ add to cart function
which facilitates dynamic pricing and attributes Automated add to cart on save can be disabled
through a DevOps request.

Clearing app settings
In any case where you need to clear the app settings, they can be manually deleted in your
Shopify store settings: Go to the Metafields and metaobjects page and select ServiceNow
CPQconfig.
Click the ‘More Actionsʼ drop down menu and click ‘Delete metaobjectʼ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
Configuring ServiceNow CPQ for SalesForce RLM
Install and configure the Salesforce Revenue Lifecycle Management package for ServiceNow
CPQ (v0.3 or later).

Prerequisites
This guide assumes the following:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
Salesforce (SF) environment:
• Your Salesforce environment has Revenue Lifecycle Management (RLM) license(s)
provisioned.
• The setup steps described in Salesforce RLM documentation

are complete:

◦ Enable RLM features in your SF org
◦ Enable Product Configurator
◦ Set up your user permissions set licenses and permission set groups for Admin user
Note that Salesforce Development states that its RLM and CPQ apps are incompatible.
Therefore, follow these steps:
• Uninstall the CPQ app, if it is installed.
• Uninstall any Salesforce CPQ for ServiceNow CPQ package that may be installed on the
Salesforce environment.
• If the ServiceNow CPQ environment previously had a Salesforce Subscription Management
for ServiceNow CPQ package installed on it, this must be uninstalled. Some Subscription
Management package elements conflict with the elements installed by the Salesforce
Revenue Lifecycle Management for ServiceNow CPQ package.
ServiceNow CPQ base package: Salesforce for CPQ Base package v2.2, or greater installed.

Set up ServiceNow CPQ Configuration for SalesForce RLM
This guide walks you through the installation and setup of the Salesforce Revenue Lifecycle
Management package for ServiceNow CPQ v0.3 or later. (This guide does not discuss NGP
setup. It will be added in a later version.)
As the current package is unmanaged, you will be required to uninstall v0.3 to install future
releases of this package.

Salesforce Product Catalog Management (PCM) → Setup Configurable Product
Bundle
1. App Launcher → Price Books: Activate "Standard Price Book"
2. App Launcher → Product Selling Models: Create a new Product Selling Model (PSM)
◦ PSM Name: "One Time"
◦ Selling Model Type: "One Time"

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
◦ Status: "Active"

3. Setup → Object Manager → Price Book Entry → Page Layouts → "Price Book Entry Layout":
Add "Product Selling Model" field to the layout
4. Setup → Object Manager → Product → Page Layouts → "Product Layout": Add the following
fields to the layout
◦ Configure During Sale - makes the product configurable or not
◦ Based On - associates a product to a class
◦ Display URL - used for product images
◦ Product Type
◦ Tax Policy
5. Add the following related lists to the Product Layout
◦ Product Selling Model Options
◦ Overridden Inherited Attributes
◦ Child Components
◦ Inherited Attributes
◦ Product Component Group
6. App Launcher → Product Catalog Management → Product Classification: Create a new
Product Classification
◦ Name: “Server Racks”
◦ Code: “RACK”
◦ Status: Active
7. App Launcher → Product Catalog Management → Products: Create a new Product
◦ Product Name: “Product Warranty - 1 Year”
◦ Active: true
◦ Product Code: “WARRANTY”
◦ Configure During Sale: “Not Allowed”
◦ Product Type: “— None —"
◦ Description: “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt.”
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
On the related list of the product, add a new Product Selling Model Option named "One Time."
Click "Add Price Book Entry" in the Price Books related list, and use the following options:
◦ Product Selling Model: "One time"
◦ List Price: 2000
◦ Active: True
◦ Price Book: Standard Price Book
8. App Launcher → Product Catalog Management → Products: Create another new Product
◦ Name: “Server Rack”
◦ Active: True
◦ Product Code: “RACK“
◦ Configure During Sale: “Allowed”
◦ Based On: “Server Racks”
◦ Product Type: “Bundle”
◦ Display URL: https://someimage.jpg
◦ Product Description: “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt.”
On the related list of the product, add a new Product Selling Model Option named "One Time."
Click "Add Price Book Entry" in the Price Books related list, and use the following options:
◦ Product Selling Model: "One time"
◦ List Price: 150000
◦ Active: True
◦ Price Book: Standard Price Book
On the related list of the product, create a new Product Componnent Group with the following
options:
◦ Product Component Group Name: “Warranties”
◦ Code: “WARRANTY”
◦ Sequence: 0
◦ Min Bundle Components: 0
◦ Max Bundle Components: 2
◦ Description: “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt.”
On the related list of the "Server Rack" product, click "Add" on the Child Components related
list, and add "Product Warranty - 1 Year" as a child component with the following options:
◦ Sequence: 0
◦ Quantity: 1
◦ Group: “Warranties”
◦ Allow quantity changes: true
◦ Price includes component: false

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
◦ Include component by default: true
◦ Min Quantity: 1
◦ Max Quantity: 3
◦ Product Relationship Type: "Bundle to Bundle Component Relationship"
Notes:
◦ You need to search this and type it - the dropdown is not automatic.
◦ After manually opening the Bundle-to-Bundle Component Relationship record from App
Launcher → Product Relationship Types, the record appears in this menu:
App Launcher → Product Relationship Types → Bundle to Bundle Component Relationship.
If you donʼt see it, you must manually create it by navigating to App Launcher → Product
Relationship Types → New, and setting the following options:
▪ Product Relationship Type Name: “Bundle to Bundle Component Relationship”
▪ Associated Product Role Category: “Bundle Component”
▪ Main Product Role Category: “Bundle Parent”
9. Create a new Attribute Category (App Launcher → Product Catalog Management → Attribute
Categories) with the following options:
◦ Name: “Server Rack Specifications”
◦ Code: “SPEC”
◦ Description: “Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum."
10. Create a new Attribute Definition (App Launcher → Product Catalog Management →
Attributes) with the following options:
◦ Name: “Load Capacity”
◦ Label: “Load Capacity”
◦ API Name: “LoadCapacity”
◦ Data Type: “Number”
◦ Default Value: 1500
◦ Active: true
◦ Code: “CAP”
◦ Description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
doloremque laudantium, totam rem aperiam."
11. Return to the related list of the new "Server Rack Specifications" attribute category you
created, and in its related list, under "Attributes", click "Assign" and add the "Load Capacity"
attribute to it.
12. App Launcher → Product Catalog Management → Product Classifications → "Server Racks"
→ "Attributes" tab: Click "Assign" → "Assign individual attributes" → add the "Load Capacity"
attribute.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
Salesforce Transaction Line Editor Setup
A Lightning Web Component is available to perform configure/reconfigure and view the Quote
Line Items in their bundled/hierarchical view. To add this component to the layout:
1. App Launcher → Sales → Quotes → open a quote.
2. Press the gear icon on the top-right corner of the page and select "Edit Page".

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


<!-- page 1281 -->
3. From left menu, drag Transaction Line Editor component onto the layout.

4. Save and Activate.

Salesforce Product Configuration Flows Setup
Instead of assigning a Configurator at the org level, a new object determines which configurator
to launch per product.
1. Search for and open the sObject, "Product Configuration Flow"
2. Create a new Config Flow record and set the Flow Identifier as "RLMConfiguratorScreen". If
you're only using one configurator, make this the Default as well.
If there are multiple config flows being used, the flow can be assigned to individual products or
product classifications through the Related records.

Salesforce Product Discovery Setup
Configure from Quote: With Product Discovery, products can be configured before being added
as a quote line.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
1. App Launcher → Sales → Quotes → open a quote.
2. Press the gear icon on the top-right corner of the page and select "Edit Object".
3. Go to Page Layouts; for the layouts being used, add the “Browse Catalog” action to the layout
and save.

Configure from account is not currently supported. In the future, the user will be able to configure
without reference to a quote. For instance, this could be used to launch product discovery from
the account page.
1. From a Catalog page, open the Admin gears and click “Edit Page”.
2. Under Components, search for and add the "Product List Page Component" onto the page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
3. Save, and if needed, Activate and assign as default.

ServiceNow CPQ Webhook Setup
1. If Webhooks are not enabled on your ServiceNow CPQ environment, create a Support case
and request Webhooks be turned on in the environment.
To create a support case, use the ServiceNow Support portal
see Create a case on Now Support for CPQ Customers .

. For step-by-step instructions,

2. When Webhooks are enabled, navigate to ServiceNow CPQ Admin Home → Utilities →
Webhooks, and create a new Webhook with the following settings:
◦ Integration Type: Salesforce
◦ Async: false
◦ Content: Either "All" or "BOM and System Fields"
◦ BOM Types: "sales" (others can optionally be added, but "sales" is required)

ServiceNow CPQ Product Selling Models Setup
In a product action, pricing fields for Revenue Lifecycle Management can be set, similar to
extended info. These are available in both simple and advanced product actions.
Example of simple product action setup:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
Available pricing map (ProductList.pricing) fields are:
• productSellingModelId
• startDate
• endDate
Assuming Product Selling Models have been created in Salesforce, the productSellingModelId
can be found in a subpage of Utilities and will automatically be suggested in the simple product
action UI.
Example productSellingModelId based on this image would be
"Term_Defined_TermDefined_1_Months_2023_03_02"

Salesforce: Enable Context Service
1. Setup → Feature Settings → Context Service → Context Service Settings: Set “Context
Definitions” to "On"
2. Refresh the page. If you donʼt see the next step, wait 10 seconds and try again.
If you still donʼt see the next step, wait 20 seconds and try again. This is an asynchronous
process.
3. Setup → Feature Settings → Context Service → Context Definitions: Confirm that under
“Standard Definitions”, the “Sales Transaction Context” is present and is “Active”.
a. Open dropdown menu for "SalesTransactionContext__stdctx" and press 'Extend'.
b. Populate the new Context Definition and Save.
c. Go to the Custom Definitions tab. Open the dropdown menu for the newly created Context
Definition and press 'Activate'.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
Salesforce: Enable Business Rules Engine (BRE) for Qualification
1. Setup → Feature Settings → Business Rules Engine → Business Rules Engine Settings: Toggle
on the switch to enable “Industries Cloud Common Decision Tables Access”
2. Setup → Context Service → Context Definition: Create a new custom context definition named
“BrowseContextdefinition” (this name must match exactly). Don't set any other fields.
3. Click “Next”
4. Add the following context nodes:
◦ Name: “PriceBook”
◦ Name: “Account”
◦ Name: “Catalog”
5. Under “Catalog”, add a child node of ”Category“
6. Under “Category”, add child nodes of “CategoryProduct” and “PricingProduct”
7. Under “CategoryProduct” add a child node of “Message”, and click Next.
8. Under “PriceBook”, click “Add Attributes” and add the PricebookID attribute:
◦ AttributeName: “PricebookId”
◦ Type: “INPUT”
◦ Data Type: “STRING”
9. Under “Account”, click “Add Attributes” and add attributes with the following AttributeNames, a
type of INPUT, and a data type of STRING:
◦ Id
◦ contactId
◦ AccountCity__c
◦ SLA__c
◦ CurrencyIsoCode
◦ Region__c
10. Under “Catalog”, click “Add Attributes” and add attributes with the following AttributeNames, a
type of INPUT, and a data type of STRING:
◦ Id
◦ CurrentDate
11. Under “Category”, click “Add Attributes” and add the following attributes with a data type of
STRING and the type as specified:
◦ CategoryId (Type: INPUT)
◦ IsCategoryQualified (Type: OUTPUT)
◦ CategoryDisqualifiedReason (Type: OUTPUT)
12. Under "CategoryProduct", click "Add Attributes" and add attributes with the following
AttributeNames, a type of INPUT, and a data type of STRING, unless otherwise specified:
◦ Id
◦ ProductId
◦ RootProductId
◦ ParentProductId
◦ CategoryId
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
◦ CatalogId
◦ Name
◦ Code
◦ MaxQuantity (Data Type: NUMBER)
◦ MinQuantity (Data Type: NUMBER)
◦ Quantity (Data Type: NUMBER)
◦ IsQualified (Type: OUTPUT; Data Type: NUMBER)
◦ Reason (Type: Output: Data Type: STRING)
13. Under "Message", click "Add Attributes" and add the following attributes with a type of OUTPUT
and a data type of STRING:
◦ Name
◦ Value
14. Under "PricingProduct", click "Add Attributes" and add the following attributes:
◦ PricingId
▪ Type: INPUT
▪ Data Type: STRING
◦ PricingProductId
▪ Type: INPUT
▪ Data Type: STRING
◦ ProductSellingModelId
▪ Type: INPUT
▪ Data Type: STRING
◦ ProductQuantity
▪ Type: INPUT
▪ Data Type: NUMBER
◦ UnitPrice
▪ Type: OUTPUT
▪ Data Type: CURRENCY
◦ NetUnitPrice
▪ Type: OUTPUT
▪ Data Type: CURRENCY
◦ PriceWaterFall
▪ Type: OUTPUT
▪ Data Type: STRING
◦ PricingErrorMessage
▪ Type: OUTPUT
▪ Data Type: STRING
15. Click Next.
16. For each of the following nodes, add node tags that exactly match the name of the node:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
◦ PriceBook
◦ Account
◦ Catalog
◦ Category
◦ CategoryProduct
◦ PricingProduct
17. For each of the following attributes, add the specified attribute tags:
◦ (For PriceBook:) PriceBookId: PriceBookId
◦ For Account:
▪ AccountCity_c: AccountCity
▪ SLA_c: SLA
▪ CurrencyIsoCode: CurrencyCode
◦ (For Catalog:) CurrentDate: CurrentDate
◦ For Category, give each attribute a tag that exactly matches the name:
▪ CategoryId
▪ IsCategoryQualified
▪ CategoryDisqualifiedReason
◦ For CategoryProduct, give each attribute a tag that exactly matches the name:
▪ ProductId
▪ RootProductId
▪ ParentProductId
▪ IsQualified
▪ Reason
◦ For PricingProduct, give each attribute a tag that exactly matches the name:
▪ PricingProductId
▪ ProductSellingModeId
▪ ProductQuantity
▪ PricingId
▪ UnitPrice
▪ NetUnitPrice
▪ PricingErrorMessage
For PriceWaterFall, assign a tag of price_water_fall. Click Save.
18. Open your newly created "BrowseContextDefinition" → click "Map Data" tab → click "Add
Mapping":
◦ Mapping Name: "BrowseOperation"
◦ Description: "Browse Operation"
◦ Mapping Type (select both):

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
▪ "Automatic Input Schema Mapping"
▪ "Automatic sObject Mapping"
◦ Mark as Default: TRUE
19. Setup → Context Service → Context Definitions: in "BrowseContextDefinition" menu, click
"Activate"
20. App Launcher → Business Rules Engine → Lookup Tables: Click “New” and select “Decision
Table”
◦ Name: “ProductQualificationDT”
◦ Description: “Qualification Rules decision table”
◦ API Name: “ProductQualificationDT”
◦ Source Object: “Product Qualification”
◦ Filter Result By: “Any Value”
◦ Usage Type: “Product Qualification”
On the next screen, because weʼre going for the simplest qualification rule, we have only a
single input and output (i.e. “Given a Product ID, tell me if its qualified or not”)
21. Next to “ProductId” set “Donʼt Use” to “Optional input”
22. Next to “IsQualified” set “Donʼt Use” to “Output”
23. Click “Next” and “Save"
24. Click the “Activate” button in the upper right corner to activate the decision table
25. App Launcher → Business Rules Engine → Expression Sets: Click "New" to create a new
Expression Set
◦ Name: “QualificationProcedure”
◦ Usage Type: “Product Qualification"
◦ Context Definition: “BrowseContextdefinition”
26. In the newly created expression set record home, see the “Expression Set Versions” table and
click the first row to launch the Expression Set Builder.
27. In the expression set builder, click the “+” button in the middle of the screen and select
“Evaluate Qualification”
◦ Lookup Table Details: “ProductQualificationDT”
◦ ProductId: “ProductId”
◦ IsQualified: “IsQualified”
◦ Reason: “Reason”
28. In the sidebar in the expression set builder, click the cog icon and set the “Rank” equal to 1
29. Click the Element Details tab and select “Include in Output”
30. Click “Save As”, wait for the full-page refresh, and then click “Activate”
At this point, your BRE Qualification Rules should be setup correctly. To end, we will simulate
the configuration to verify that it is working correctly.
31. In the Expression Set Editor, click the “Simulate button”
32. Select “Advanced” for the input and populate the ProductId field with your Cisco Server Rack
NX44 product ID

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
Leave the IsQualified and Reason fields as empty strings.
33. Click “Simulate”
Inspect the Output JSON to see if your product returns. "IsQualified" will be "null" and "Reason"
will be an empty string.

Salesforce: Pricing Procedure
1. App Launcher → search for and open "Pricing Procedures" → open the "Revenue
Management Default Pricing Procedure" → open the active Pricing Procedure and deactivate
it.
2. Return to the Revenue Management Default Pricing Procedure. Edit it.
Change the Context Definition to the custom definition that was extended from
"SalesTransactionContext__stdctx". Save.
3. Reactivate the Pricing Procedure Version.

Troubleshooting
Issue: The ServiceNow CPQ blueprint was loaded into the RLM org, but no products show in the
product catalog during quoting.
Diagnosis: This could mean that there's an issue with the Product Discovery settings (see the
Salesforce: Enable Context Service
section and beyond).
• Setup → Feature Settings → Decision Tables. Open both the ProductQualification and Price
Book Entries tables and perform the 'Refresh' action on each.
• If the refresh doesn't solved the problem, view the following Salesforce documentation:
◦ RLM Product
◦ Discovery Setup
Issue: At runtime, the user receives the following error in RLM:
System.IllegalArgumentException: Looks like you don't have access
to the place quote service. Salesforce Customer Support can help
with that
Diagnosis: This is a permission set issue. Make sure that the following three RLM permission sets
are assigned to the integration user that facilitates the ServiceNow CPQ integration.
• Product Catalog Management Designer
• ProductAndPriceConfiguration API
• Product Catalog Management Viewer

ServiceNow CPQ integration with Salesforce B2B Commerce
Learn how to configure ServiceNow CPQ to work with Salesforce B2B Commerce.

Prerequisites
This guide assumes the following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
• Commerce is enabled in Salesforce
• The ServiceNow CPQ Base Managed Package is installed
• System Administrator or similar access is available in order to perform the steps listed

Install files to Salesforce
1. If it isn't already installed, download and install the Salesforce Command Line Interface (CLI)
using the instructions here:
Install Salesforce CLI
2. Download and extract the cpq-b2b.zip file, which contains the components used for the B2B
integration, from github.com .
◦ On Mac, double-click the file. Its contents will be extracted automatically in the same
location.
◦ On Windows, right-click and select Extract All". Follow the prompts that appear on screen.
a. refer the following:
3. Start Terminal (Mac or Linux) or Powershell (Windows).
4. Navigate to the directory containing the extracted files. For example, if the files were extracted
in the Downloads folder, type and enter the command cd Downloads/cpq-b2b.
5. Run the ls command to see a list of files and folders in that directory.
You should see src and sfdx-project.json, as well as a plain text copy of this guide.

6. Run the following command, making the changes indicated just below:
sfdx auth:web:login --setalias myOrg -r
https://example-dev-ed.my .salesforce.com
◦ Replace the URL following -r with the one that the CPQ-B2B integration will be set up on.
◦ The text following --setalias is a nickname that is used to identify and reference the
correct Salesforce org. The example myOrg will be used for the purposes of this guide. Be
sure to use your own alias in the following steps.
The URL specified in the previous login command will be opened in the default browser.
7. Log in and authorize the "Salesforce CLI" connected app.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
8. In the command line, run the command sfdx force:source:deploy -p src -u
myOrg.
After a few moments, the command line will return a confirmation message, "Deploy
Succeeded."

If the Salesforce org isnʼt already open in a browser, it can be opened by running the
command sfdx force:org:open -u myOrg.

Post-installation setup in Salesforce
You must complete the following steps after installing the components to Salesforce.
Setting Field Level Security:
1. From Setup Home, go to the Object Manager tab, or navigate to Objects and Fields > Object
Manager.
2. From Object Manager, search for and open Cart Item (CartItem).

3. Go to Fields & Relationships. Search for and open the field Configuration Id
(ConfigurationId__c).
4. Click Set Field-Level Security.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
5. Make sure the Visible option is selected and Read-Only is not selected for profiles that will be
configuring products in Commerce, and then click Save.

A similar set of steps need to be followed for a Product2 field.
1. From Object Manager, search for and open Product (Product2).
2. Go to Fields & Relationships. Open the field ServiceNow CPQ Enabled
(LGK__IsConfigurable__c).
3. Click “Set Field-Level Security”. Make sure the Visible option is selected for any shopper
profiles. Read-Only can either be enabled or disabled.
4. Save.
More field level security permissions are required if using the Add to Cart API. First, from Object
Managed, search for and open Configuration Line Item (LGK ConfigurationLineItem c). Then,
make sure shopper profiles have Field-Level Security to Visible for the following fields:
• Quantity
• ProductId
• Price
• ConfigurationId
• Type

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
In addition, the following CartItem fields will need to be set to Visible (Read-Only must not be
checked):
• ConfigurationId (this should already be done for the UI integration)
• Quantity
• ProductId
• Price
• Type

Obtaining and applying the runtime token
1. In ServiceNow CPQ, create a Runtime Client, with an Origin matching the ServiceNow CPQ
base URL. Click Copy to get the client token.

2. In Salesforce, from Setup home, go to Custom Code > Custom Settings.
3. For ServiceNow CPQ Tenant, click Manage.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
4. If settings already exist, click “Edit”. Otherwise, click “New” above the “Default Organization
Level Value” header.

5. For the Runtime Client Token field, paste the copied token for the runtime client. Make sure the
URL field(s) are set to the same URL as one of the runtime clientʼs Origins in ServiceNow CPQ
Admin.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
6. Save.

Setting Visualforce page access
1. From Setup home, go to Feature Settings > Digital Experiences > All Sites.
2. For your store, click Workspaces.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
3. Go to Administration > Pages > Go to Salesforce Platform for Application Development

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
4. Under “Site Visualforce Pages”, click Edit.
5. Move commerceConfigurationWindow from Available to Enabled and save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
Configuring the Experience Builder
1. From the Commerce home page, open Experience Builder.
2. Click Home on the top left to open the list of pages. Search or navigate to Product and click
Product Detail. Either add the custom ServiceNow CPQ button to the existing Product Detail
page, or use the packaged page as a variation.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
◦ To add the button to an existing page:
a. Click the lightning bolt on the left and go to Custom Components (the last section in the
list).
b. Drag the Configurator from the list and move it to where you want it in the layout.

◦ To use the packaged page as a variation:
a. Reopen the page navigation menu on the top left.
b. On the Product Detail option, click the three dots and go to the Page Variations tab.
c. Click New Page Variation and choose “Configurable Product Detail” as the layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
d. Give the variation a name and click Create.

Add to Cart API
Endpoint: /services/apexrest/add-to-cart
Methods: Receives and returns application/json
POST: Use to add items to the currently active cart. (If a cart is not active, a cart is created.)
Requires the following:
• configurableProductId
• configurationId
• webstoreId
• effectiveAccountId

Note: webstoreId and effectiveAccountId are part of Salesforce Commerceʼs
standard APIs, so that information should be readily available to users.
configurableProductId and configurationId must correspond to the same
configurable product.
PATCH: Use to add items to a specified cart. Requires the following:
• configurableProductId
• configurationId
• cartId

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
Response: an array of cart item (CartItem) records.
Example request (create new quote):
{
"configurableProductId": "01t8a0000061GQPAA2",
"configurationId": "7e45beb9-790c-46ef-a05f-9195718bcda7",
"effectiveAccountId": "0018a00001nsFoNAAU",
"webstoreId": "0ZE8a000000XwckGAC"
}
Example request (add to existing quote):
{
"configurableProductId": "01t8a0000061GQPAA2",
"configurationId": "7e45beb9-790c-46ef-a05f-9195718bcda7",
"cartId": "0a68a000000kXQeAAM"
}
Example response:
[
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtlAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQPAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"SalesPrice": 10000.00,
"UnitAdjustedPrice": 10000.00,
"TotalLineAmount": 10000.00,
"TotalPrice": 10000.00,
"TotalPriceAfterAllAdjustments": 10000.00,
"LGK__ConfigurationId__c":
"7e45beb9-790c-46ef-a05f-9195718bcda7",
"Name": "LGK Machine",
"Id": "0a98a000000kWtlAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtkAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQOAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 1.00,
"SalesPrice": 0.00,
"UnitAdjustedPrice": 0.00,
"TotalLineAmount": 0.00,
"TotalPrice": 0.00,
"TotalPriceAfterAllAdjustments": 0.00,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
"Name": "Warranty",
"Id": "0a98a000000kWtkAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtjAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQKAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 1.00,
"SalesPrice": 0.00,
"UnitAdjustedPrice": 0.00,
"TotalLineAmount": 0.00,
"TotalPrice": 0.00,
"TotalPriceAfterAllAdjustments": 0.00,
"Name": "1.5T Magnet",
"Id": "0a98a000000kWtjAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtiAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQGAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 1.00,
"SalesPrice": 1.50,
"UnitAdjustedPrice": 1.50,
"TotalLineAmount": 1.50,
"TotalPrice": 1.50,
"TotalPriceAfterAllAdjustments": 1.50,
"Name": "MRI Platform Table",
"Id": "0a98a000000kWtiAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWthAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQLAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 1.00,
"SalesPrice": 2.50,
"UnitAdjustedPrice": 2.50,
"TotalLineAmount": 2.50,
"TotalPrice": 2.50,
"TotalPriceAfterAllAdjustments": 2.50,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
"Name": "MRI Scanner",
"Id": "0a98a000000kWthAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtgAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQRAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 25.00,
"SalesPrice": 1.00,
"UnitAdjustedPrice": 1.00,
"TotalLineAmount": 1.00,
"TotalPrice": 1.00,
"TotalPriceAfterAllAdjustments": 1.00,
"Name": "MRI Gradient Coils",
"Id": "0a98a000000kWtgAAE"
},
{
"attributes": {
"type": "CartItem",
"url":
"/services/data/v56.0/sobjects/CartItem/0a98a000000kWtfAAE"
},
"CartId": "0a68a000000kXDsAAM",
"Product2Id": "01t8a0000061GQHAA2",
"Type": "Product",
"CartDeliveryGroupId": "0a78a000000kWwxAAE",
"Quantity": 25.00,
"SalesPrice": 3.00,
"UnitAdjustedPrice": 3.00,
"TotalLineAmount": 3.00,
"TotalPrice": 3.00,
"TotalPriceAfterAllAdjustments": 3.00,
"Name": "MRI Radio Frequency Coils",
"Id": "0a98a000000kWtfAAE"
}
]
Related topics
ServiceNow CPQ and Salesforce base package overview
Salesforce amendments and ServiceNow CPQ
ServiceNow CPQ and Salesforce managed packages
Salesforce amendments and ServiceNow CPQ
A brief look at the ServiceNow CPQ amendments feature, which adds and updates fields in
existing objects.
The ServiceNow CPQ amendments feature follows the standard CPQ amendment model
by adding additional fields to existing objects as well as triggers to update these fields
appropriately.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
Prerequisites
The ServiceNow CPQ Extension for Salesforce CPQ must be installed in the org.

How the amendments feature works
When an amendment is created from a contract, generating a CPQ quote and CPQ quote
lines, a ServiceNow CPQ trigger on the CPQ quote line automatically populates the Committed
Configuration ID from the related subscription record and sets the Action Context to Amend.
When a reconfiguration of the quote line is saved, the configuration line item includes the prior
quantity and price.
When the standard Salesforce CPQ amendment process is completed, the contract is updated
with subscriptions using the new quantities and terms as expected.
The following fields are added to facilitate this functionality.

Object

Field

ConfigurationLineItem c

LGK CommittedConfigurationId c

ConfigurationLineItem c

LGK PriorQuantity c

ConfigurationLineItem c

LGK PriorPrice c

ConfigurationLineItem c

LGK ActionContext c

SBQQ QuoteLine c

LGK CommittedConfigurationId c

SBQQ QuoteLine c

LGK ActionContext c

SBQQ Subscription c

LGK ConfigurationId c

SBQQ Subscription c

LGK BomData c

You can disable this functionality in Setup > Custom Settings > Manage ServiceNow CPQ Tenant
> Edit > Disable Amendment Triggers.
Common Salesforce integration issues
Learn how to solve problems you may have integrating CPQ with Salesforce.
When Salesforce CPQ is a host for ServiceNow CPQ configurations, integrating the two sites
my lead to some common errors. Here is a list of known issues with their solutions and what to
check.
In general, when you see an error generated by Salesforce, you can use the Salesforce debug
logs
to find where that error is being triggered.
Another worthwhile step when investigating any integration issue is to confirm that the steps
in the Installation and setup guide for environments linked to Salesforce orgs were correctly
completed.

Note: If partner users are experiencing any of these issues, or you utilize RFQ APIs, first
see the Partner users/RFQ API sharing settings section at the end of this topic.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
Salesforce: “SBQQ: Too many SOQL queries: 101”

This error happens usually when a user creates a BOM that has more than 100 items, clicks
Quote in ServiceNow CPQ, and there are too many quote lines being created for the default
Salesforce CPQ behavior to handle.
Solution: confirm that Enable Large Configurations is set in the Salesforce CPQ Package
Settings.

This setting decreases the likelihood of hitting governor limits when your sales reps configure
a large bundle, but performs slower overall. To read more about this setting, see Enable Large
Configurations .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
Salesforce: “Attempt to de-reference a null object”

This error usually happens when an end user saves the quote in ServiceNow CPQ and before
they return to the QLE. It speaks to either a missing or inactive Pricebook entry for affected items,
or an issue with nested bundling.
Solution (no nested bundling): The Pricebook entry for the product is missing or inactive.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


<!-- page 1307 -->
Check all of the product's Pricebook entries. This error occurs if any of the following are true:
• A returned product is missing a Pricebook entry
• A returned product has an inactive Pricebook entry
• A returned product's related Pricebook is inactive
• The standard Pricebook is used by default but is inactive
Solution (nested bundling): If you have nested bundling enabled and your configuration has
products configurations that match the following structure, there is no direct solution. You can
either design your configurations to not encounter this Salesforce issue, or turn off nested
bundling.
Parent product
Nested child 1
Product X
Nested child 2
Product X
To learn more about this issue, see the following Salesforce.com topic:
Adding the Same product to Two Different Dynamic Nested Bundles via External Configurator
Throws an "Attempt to de-reference a null object" Error
If you decide to disable nested bundling, you can do so in SFDC through Setup > Installed
Packages > Salesforce CPQ > Additional Settings > Nested Bundles for External Configurator.

Please also submit a support ticket so that we can send this request to our DevOps team to turn
off this feature from the ServiceNow CPQ side. You will continue to encounter the issue until we
turn off this feature.

Note: Submit a support ticket by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
Not generating configuration line items or configuration field data sets
This functionality is not used by many implementations, but when it is, it is paramount that the
expected Salesforce Objects are created. Configuration line items (CLIs) and configuration field
data sets (CFDSs) are Salesforce objects that are managed by our base managed package, and
their creation is asynchronous with the data that is pushed to the quote line.
The moment that a user saves the configuration from ServiceNow CPQ, the process to create
these objects begins, regardless of whether you save the final quote lines created in the QLE.
When this occurs, there is usually only one place to check.
Solution: The creation of these objects depends on the following settings being enabled.
• (For CLIs) The Push BOM Data to ServiceNow CPQ Salesforce Object ServiceNow CPQ Admin
setting
• (For CFDSs) The Push Config Data to ServiceNow CPQ Salesforce Object ServiceNow CPQ
Admin setting
• The SFDC permissions of Refresh Token username

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
If these settings are not enabled, these objects will not be created when the user clicks Save.
If these settings are enabled, and you still do not see CLIs or CFDSs (or Extended Information
Field Mapping is not working), try the following:
• Check the logs
to see whether the error “Salesforce syncing of
LGK__ConfigurationLineItem__c object for configuration [******] did not complete successfully”
appears. There may be more information in the “Paused And Failed Flow Interviews” page in
your Salesforce Setup.
• Check the permissions of the integration user against the list in Required permissions for the
integration user.

Saving does not create child quote lines

ServiceNow CPQ BOM has the product ServiceNow CPQ environment.

Saving to Salesforce has only the parent Configurable product, not the ServiceNow CPQ
environment.
We only create quote line items when a BOM item fits these conditions:
• The BOM type of the item is specified in the “BOM Types to Include in Save Request” setting
• The product exists in our database from our product sync with Salesforce
This issue occurs when the user clicks Save from ServiceNow CPQ and they are met with only
the parent Configurable product that they launched the configuration from, and no child quote
lines that were created in the ServiceNow CPQ configurator. This usually means that there is a
disconnect between the product Object in Salesforce and the BOM item created in ServiceNow
CPQ.
Solutions:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
• Check whether the products exist in your Salesforce Site with the same product IDs that are
determined by your product rules. If the products exist, try updating a field in the product
record (such as “Active”), saving, reverting it, waiting 30 minutes, and then trying again.
Our product record sync relies on the Last Modified Date of the product2 records to speed up
performance. If your environment was repointed from another one, products that did not exist
in your last environment may now exist here and have a date that is older than the reconnect.
Wait for the product sync to complete every 30 minutes, and try to save the configuration
again.
• Confirm that the BOM items have the correct BOM types as defined in ServiceNow CPQ
Admin:

If your BOM item was of type Manufacturing and your ServiceNow CPQ Admin had only Sales
and Installation defined in the Settings tab, that item would not be returned to the QLE.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
• Check whether the parent configurable product has the related Dynamic feature defined:

If so, also confirm that the option selection method is also dynamic:

This related feature should be automatically created when you click ServiceNow CPQ Enabled
on the Configurable product, but some custom product triggers in your Salesforce org can
disrupt this automation. To trigger the feature creation again, try disabling ServiceNow CPQ
Enabled, saving, and then re-enabling it. Then, try to configure with that product.
(If using nested bundling, every product that has children quote line items associated with it
must have this dynamic feature related to its product, not just the top-level parent Configurable
Product.)

Saving does not create quote lines as expected
This usually happens when one of the fields on the child quote lines are being populated in a
way that is not reflected in the ServiceNow CPQ configuration. This is a tricky issue to track since
there isn’t a clear error.
Solution: Check to see whether the SFDC environment has any quote calculator plugin (QCP)
scripts, flows, or Apex triggers acting on the quote lines.
For QCP specifically, search custom scripts. Also check whether there is a script in the Quote
Calculator Plugin field (Setup > Installed packages > Salesforce CPQ > Plugin).
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
Review this custom script to see whether it is behaving as expected.

ServiceNow CPQ: “JSON string exceeds heap size limit”

This will happen if the LGK__BomData__c field contains too much data (such as a lot of quote
lines or extended information) and the user tries to reconfigure the quote.
Solution: Control how many items get written with the BOM Item Limit feature. To solve, count
the items in the BOM of the configuration that is causing the error. (The number of items is the
number of lines in the BOM. Items are separated by “{}” in the BomData field.) Then, create a
support case to set the tenant setting to half that number. If you are not using this Salesforce
field, have it set to zero.

Note: Create a support case by using the ServiceNow Support portal

. For step-by-step
instructions, see Create a case on Now Support for CPQ (Logik.ai) Customers .

Reconfigure doesn't save selections in ServiceNow CPQ
An end user can save a configuration correctly and it writes to the QLE without issues. However,
when the user tries to reconfigure, not all the selections are retained.
Solutions:
• Check whether this issue occurs only with a specific user or profile. Their permissions may be
set incorrectly.
• Check whether the product has the related Feature Name, Configuration Attributes, and Price
Books defined.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
• Check whether the Blueprint uses twinning, which could be triggering a rule to clear certain
selections, or has the On Configure/Reconfigure Enrichment set up incorrectly. To learn more
about this issue, see Scripting: Checking for first and subsequent configurations.

Saving doesn't create child quote lines
The configurable product you are attempting to configure with may have had an issue with the
ServiceNow CPQ enabled automation and did not create the necessary configuration attributes
for reconfiguring. To reconfigure, the Configuration ID attribute must be present, as this is where
the quote line references the previous configuration's UUID.
On the Configurable Product's details page, uncheck ServiceNow CPQ.io Enabled, save, then
recheck and see whether the configuration attribute has been created.

Cannot access ServiceNow CPQ Admin from SFDC
This issue may prevent admins from working on the design and implementation of ServiceNow
CPQ. There are many causes for this issue.

Solution:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
• If this is happening for only one user:
◦ Confirm that they have Admin access. See User access.
◦ Check whether they are running into browser issues. See Common browser issues while
using ServiceNow CPQ.
• If this is happening for a group of users:
◦ Confirm that their profile and permission group have the proper SFDC permissions.
See What to do if receiving an Insufficient Privileges or blank screen when launching a
configuration .
◦ Confirm that ServiceNow CPQ has been added to Trusted URLs in the Setup section,
with iFrame enabled. While this isn't necessary in all cases, we've seen this addition help
organizations with ServiceNow CPQ users from multiple different countries, or if they are
using Subscription Manager/RLM.

◦ If this is happening for every user, check whether the URL is correctly entered in Custom
Settings.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
This is usually one of the first steps done when integrating a ServiceNow CPQ environment
with an SFDC org. Sometimes, the user that sets it up will unintentionally set the URL as an
override for a profile (the bottom box) instead of accessible for all users (the middle box).

Cannot launch a configuration
The “Insufficient Privileges” error message from Salesforce is only one of many screens a user
can encounter when clicking the wrench icon in the QLE or when selecting a product after
clicking Edit lines in the quote.

When this issue occurs, other issues may include seeing the Content Blocked screen (as seen in
the Cannot Access ServiceNow CPQ Admin from SFDC issue), seeing a blank screen, or seeing
an error message display.
This can happen for a variety of reasons, including problems with the same permissions that are
necessary for accessing the ServiceNow CPQ Admin. However, this issue affects only end users
of the configurator (that is, sales/partner users).
Solutions:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
• If this is happening only for one Blueprint or when launching from one quote, check whether
there are any errors in the Logs tab of the ServiceNow CPQ Admin.

If you find no errors in the logs, review Common error messages and causes. This may be due
to an issue with the On Configure/Reconfigure script of the Blueprint, or with a twinned field
that is expected from the quote.
• If this is happening for only one user, check whether they are experiencing browser issues.
See Common browser issues while using ServiceNow CPQ.
• If this is happening for a group of users, check to see whether their profile and permission
group have the proper SFDC permissions. See What to do if receiving an Insufficient Privileges
or blank screen when launching a configuration
.
• If this is happening for every user, confirm that the URL is correct in Salesforce CPQ. Navigate
to Setup > Installed packages > Salesforce CPQ > Configure > Additional Settings > External
Configurator URL & Third Party Configurator.

This is usually one of the first steps done when integrating a ServiceNow CPQ environment
with an SFDC org. The URL will usually take the form of https://<domain-

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


<!-- page 1318 -->
name>.<sector>.ServiceNow CPQ.io/ui/configure, but it can vary based on
whether you use VisualForce pages to launch the configurator.
If your URL is not in the above form, your organization should have documentation for the
custom setup done for launching into the ServiceNow CPQ configurator.

Partner users/RFQ API sharing settings
Under Setup > Sharing Settings, check to see whether the following objects have Default External
Access set to Private:
• Pricebook
• Product Feature
• Quote
• Quote line
• Configuration Attribute
• Configuration line item

Salesforce CPQ needs access to these objects for part of our reconfigure integration to work.
Usually, you wouldn't need to edit the Sharing Settings for this object since it's created by the
Integration user, but in many cases, partner users could try to reference these records during
RFQ, so they will need it set to either Public Read-Only or Public Read/Write.

Salesforce platform issues
You may receive an "Error saving record" message:
Error saving record: We couldn't convert the configurable
product to a static product. Ensure that the child components
meet the requirements and try again.
This error can occur when you try to uncheck the LGK__IsConfigurable__c field on a
Product2 record. To resolve the issue, from the Salesforce app launcher, visit the ServiceNow
CPQ.io Admin Custom Settings page and enable the Skip Configurable Product Setup Trigger
setting.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
Refreshing a ServiceNow CPQ connected Salesforce org
Refreshing a Salesforce org severs the database sync between ServiceNow CPQ and Salesforce.
To get things working again, take these steps after the refresh.
When a ServiceNow CPQ connected Salesforce org is refreshed, the database sync between
ServiceNow CPQ and Salesforce will be temporarily broken. This is because a refresh
automatically changes many pieces of the Salesforce org, including the Salesforce org ID,
product IDs, and user names.
These ID changes are used for many integration points between the two systems, such as
the Refresh Token User Runtime APIs that depend on a User ID, the product, the Pricebook,
Pricebook entry sync, and the user access set up for the ServiceNow CPQ Admin.
To complete the ServiceNow CPQ side of the refresh, create a support case by using the
ServiceNow Support portal . For step-by-step instructions, see Create a case on Now Support
for CPQ Customers .
When you submit the support case, provide the following information:
• The current ServiceNow CPQ Environment URL
• The date the refresh will be performed
• What you'd like to do with the connected ServiceNow CPQ environment's existing data:
◦ Retain its data (a repoint)
◦ Start from scratch (decommission and create a new environment)
• The new SFDC org ID (if unknown at the time, simply give TBD)
• The SFDC My Domain URL (if changed)
• The SFDC Usernames for users that will need ServiceNow CPQ Admin access
• Whether you want to change the ServiceNow CPQ environment host name, and if so, what it
should be
• The provisioning username with the email address and system administrator privileges.
Once the environment is refreshed, you will need to:
• Send the new SFDC org ID
• Navigate to Salesforce Setup > Custom Settings > Manage ServiceNow CPQ tenant and modify
the ServiceNow CPQ URLs.
Navigate to SFDC > Setup > Custom Settings > Manage ServiceNow CPQ Tenant > Edit, and
change the Runtime Configuration URL and Administration URL.
• If using Salesforce CPQ, change the external configurator URL.
Navigate to SFDC > Setup > Installed Packages > Configure Salesforce CPQ > Additional
Settings, and change the external configurator URL to the new site with /ui/configure
appended to the end.
• Submit a new refresh token user name with system administrator permissions.
Navigate to ServiceNow CPQ Admin > Settings, and delete or reset Refresh Token Username.
• If using any Runtime APIs in SFDC, create new Runtime Clients.
Navigate to ServiceNow CPQ Admin > Runtime Clients, and create the new clients.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
ServiceNow CPQ and Salesforce managed packages
Learn about the ServiceNow CPQ Extension Package and the ServiceNow CPQ Extension for
Salesforce CPQ.
ServiceNow CPQ offers two managed packages for Salesforce(SFDC) orgs: the ServiceNow
CPQ Extension Package and the ServiceNow CPQ Extension for Salesforce CPQ. This article
discusses what each package does and how they are different. Details on how to set up or
upgrade an environment's managed packages are provided at the end of the article.

ServiceNow CPQ Extension Package
This is the base package for ServiceNow CPQ interacting with Salesforce. This package allows
the user to:
• Enable any SFDC Product2 record to be a ServiceNow CPQ configurable product through
custom fields added to the Product2 record. For detailed steps, see Configurable products.
• Launch the ServiceNow CPQ Admin from in Salesforce by navigating to the Salesforce
Products tab, select the list view of 'ServiceNow CPQ View', find a ServiceNow CPQ enabled
product, and click the corresponding Click Here link located in the View ServiceNow CPQ
Setup column or through the Product2 record itself by clicking the link in the View ServiceNow
CPQ.io Setup section on the product's page.
• Support embedding the ServiceNow CPQ UI in Salesforce applications outside of CPQ using
Visualforce. See Use case: Embed ServiceNow CPQ UI in a Salesforce VisualForce page.
• Call ServiceNow CPQ admin APIs using Salesforce Tokens. For detailed steps, see Admin
APIs: Authentication using a Salesforce-connected app.
Notable components of this package include:
• Configuration line item object: This object stores the product data that comes out of
a configuration including product id or code, price, BOM type, quantity, and extended
information. It also includes the unique configuration ID that ties the data back to a specific
configuration session and can be referenced in other flows or triggers in SFDC. Finally, it
allows users to populate quote line custom fields with information from ServiceNow CPQ. For
additional information, review the following video: Populate quote line Custom Fields.mp4

• Configuration field data object: This object stores the values set to fields in the configuration
and contains the unique configuration ID of that session in order to reference that information
upon reconfiguration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
• Custom settings to control the end points by setting the Administration URL and Runtime
Configuration URL. Navigate to the ServiceNow CPQ Admin custom settings Item:

And update these settings here:

ServiceNow CPQ Extension for Salesforce CPQ
In order to install the ServiceNow CPQ Extension for Salesforce CPQ. You must have the base
package and Salesforce CPQ installed on your org, and at least version 244 or later for your
Salesforce CPQ package. This package contains CPQ object specific enhancements over the
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
base package and leverage the ServiceNow CPQ configuration in Salesforce CPQ. This package
gives the user the ability to:
• Launch a ServiceNow CPQ configuration in a CPQ new or amendment quote flow.
• Populate prior quantity and price in the BOM object for amendment flows.
• Create child quote lines for the top quote line. Automatically populate the quantity and list
price values for each line item based on the information coming from ServiceNow CPQ. This
also sets the parent item to be the top line so that the line item appears as a bundle view in the
quote.

Notable components of this package include:
• Custom fields added to top level quote line object:
◦ Configuration UD: The universally unique identifier (UUID) of the configuration session. Used
upon reconfigure to restore configuration to previously determined state.
◦ Committed Configuration UD: When an amendment quote is created. This field is populated
with the Configuration ID. During an amendment, when Reconfigure is finished, the
Committed Configuration UD is used to populate Prior Quantity and Prior Price columns on
the Configuration Line Item object.
◦ BOM Data: Sales line item data serialized in JSON format. Allows for use of data with the
quote line calculator or other actions in Salesforce to perform some calculations or custom
logic on top of the BOM data coming from a ServiceNow CPQ configuration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
For more information on these objects and the user capabilities they add review the
following video: Delta BOM Feature.mp4
• Custom Salesforce REST endpoint that creates a quote and quote lines based on a previously
saved configuration, without going through Salesforce CPQ's UI. For more information, review
this video: Request for quote for Omnichannel using APIs.mp4
• Flightpath: allows the administrator to understand how the rules engine responds to end-user
inputs by presenting a visual interaction between inputs and triggered rule actions.
• Configuration Line Item to quote line flow: flow template to populate quote line fields from
Configuration Line Item object.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
The flow starts inactive and must be enabled.
Writes Configuration Line Item field to quote line as an example for reference, write the
extended info data to the BOM data field. This is where the user would define what fields
should be mapped, as well as an optional filter:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
• Triggers: Two triggers are included with this package.
◦ Product configurable trigger: This trigger is responsible for setting up configurable products
to be configurable. That includes providing the link to ServiceNow CPQ and making the
configurable product show up in the ServiceNow CPQ Admin (on the Configurable Products
page), as well as setting up some product-related data for basic functionality in CPQ quoting.
◦ Amendment quote line trigger: This trigger acts on the custom field Committed Configuration
ID. This field gets populated when an amendment quote is created. If the subscription lines
originated from a ServiceNow CPQ configuration, this trigger will automatically populate the
current Configuration UD to the Committed Configuration UD field. During an amendment,
when Reconfigure is finished, the Committed Configuration UD is used to populate Prior
Quantity and Prior Price columns on the Configuration Line Item object. The Configuration
UD custom field of the amended quote line is updated with new Configuration UD generated
during the reconfigure flow. The Configuration UD field on the original subscription is also
updated with the new value, so that amendments can be repeated with the latest changes
made during the amendment.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
You can disable these triggers through managing the ServiceNow CPQ Admin custom settings
referenced above:

All package components
To view all the components contained in each package, go to Setup, search for "Installed
Packages" in the Quick Find box, drill into either package, and click View Components. To
request an environment setup or upgrade, ensure that a user has been created with the email
address provisioning@cpq , and request the setup or upgrade through our support site . For
step-by-step instructions, see Create a case on Now Support for CPQ Customers .
Reconnect ServiceNow CPQ after refreshing the Salesforce org
Reconnect the ServiceNow CPQ environment to a new or refreshed SFDC org.

Before you begin

Role required: Admin

Procedure
1. Submit a support case through the support site.
Open a ticket by using the ServiceNow Support portal
Create a case on Now Support for CPQ Customers .

. For step-by-step instructions, see

Provide the new org ID, the My Domain URL, and the custom URL of the ServiceNow CPQ
environment. The custom URL will have the form https://<tenant>.<sector>.cpq.
2. If a ServiceNow CPQ user exists on the org, send a password reset request for the user.
3. If no ServiceNow CPQ user exists on the org, create a user.

Result

You will be notified when the migration of the ServiceNow CPQ environment to the new org is
complete.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
Trouble?
If ServiceNow CPQ has confirmed the migration is complete but you are unable to give a user
access to the org, follow these steps:
1. Navigate to the ServiceNow CPQ Tenant: Setup > Custom Settings > Click Manage next to the
ServiceNow CPQ Tenant.
2. Edit or confirm that the Administration URL is set to the custom URL of your ServiceNow CPQ
environment: https://<tenant>.<sector>.cpq.
3. Navigate to Installed Packages > Find Salesforce CPQ > Configure > Additional Settings, and
update the Salesforce CPQ External Configurator URL to your ServiceNow CPQ URL followed
by /ui/configure: https://<tenant>.<sector>.cpq/ui/configure.
Twinning: pulling Salesforce CPQ quote information into ServiceNow CPQ
You can set up Salesforce.com and ServiceNow CPQ to bring quote data into a ServiceNow CPQ
configuration at runtime.

Note: This article is relevant only to use cases that are integrated with Salesforce CPQ.
On occasion, the ServiceNow CPQ Admin will need to bring Salesforce.com (SFDC) quote
data into ServiceNow CPQ, to drive configuration, rules, calculations, and so on. This article
describes the setup in both SFDC and ServiceNow CPQ that will bring relevant quote data into a
ServiceNow CPQ configuration experience at runtime. This method of data transfer is nicknamed
Twin Field or "field twinning."
ServiceNow CPQ rules run differently depending on whether the account is a new prospect or an
existing customer. ServiceNow CPQ allows new prospects to select from a subset of offers such
as starter packages, whereas existing customers are limited to renewing their existing products
or upgrading to higher value products.

Prerequisites
The ServiceNow CPQ managed package installed in your SFDC environment should be version
0.8 (released February 4, 2022) or later. If the managed package has not been upgraded, log an
Upgrade SFDC Managed Package Request ticket in the Help Center.
Navigation in SFDC: Setup -> Object Manager -> quote (SBQQ Quote_c) -> Field Sets.
In the SFDC CPQ quote object (SBQQ_Quote_c), confirm that there is a field set named
ReferencedFields. If no field set named ReferencedFields exists, create it. Navigation in SFDC:
Setup -> Object Manager -> quote (SBQQ Quote_c) -> Field Sets.

Implementation
1. In SFDC, add a custom field to the SFDC CPQ quote object with the format <someName>LGK.
This will create a field with the API name <someName>LGK_c.
In ServiceNow CPQ, variable names begin with a lowercase character by default. Take care to
make sure your twinned quote object in SFDC begins with a lowercase character as well.
2. Add this custom field to the ReferencedFields field set on the quote object. In SFDC, navigate
to Setup -> Object Manager -> quote (SBQQ_Quote_c) -> Field Sets -> ReferencedFields. From
the list of quote fields, drag and drop your new custom field into the In the Field Set box.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
3. In ServiceNow CPQ, add a field with variable name <someName>.

Note: <someName> should be the same case-sensitive string as the one defined
in the SFDC API name of the corresponding field to import, <someName>LGK_c. This
ServiceNow CPQ field should not have LGK suffix. Twinned fields can have different field
types.
4. Associate this field to the Blueprint that will utilize it.
When a user transitions from a SFDC quote into ServiceNow CPQ, the new field in ServiceNow
CPQ, <someName>, will be populated with the data that SBQQ Quote_c. <someName>LGK_c
stored in SFDC.
In Salesforce, the ReferencedFields field set is a custom field set that can be created on
the Quote, Quote Line, and Quote Line Group objects. For more information, see SFDC:
ReferencedFields Field Set in Salesforce CPQ .

Capturing data from a configuration when amending a subscription contract
How to capture data from a prior configuration of a subscription contract.
When amending a pre-existing subscription contract, you may want to capture data relating to
the prior configuration. Through additional fields added to the Configuration Quote Line and the
CPQ Quote Line objects, you can access prior quantity and prior price for configuration items.
For additional information, view the following 19-minute video.
https://drive.google.com/file/d/10Uffs0C7aFWPqkLYRILqZcwgIq2-uxsp/view?usp=sharing
Related topics
ServiceNow CPQ integration with Salesforce B2B Commerce
ServiceNow CPQ and Salesforce base package overview
The ServiceNow CPQ and Salesforce base package lets the user use Salesforce Product2
records as configurable products in ServiceNow CPQ, launch the ServiceNow CPQ Admin from
Salesforce, and integrate the two applications in other useful ways.
The base package provides the minimum components and configuration for ServiceNow CPQ
interacting with Salesforce. This package allows the user to:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
• Enable Salesforce Product2 records to be a ServiceNow CPQ configurable product through
custom fields added to the Product2 record. For detailed steps, see Configurable products.
• Launch the ServiceNow CPQ Admin from Salesforce, from enabled Product2 records
• Embed the ServiceNow CPQ configuration UI in other Salesforce pages or applications outside
CPQ using Visualforce. See Use case: Embed ServiceNow CPQ UI in a Salesforce VisualForce
page.
• Access ServiceNow CPQ admin APIs using Salesforce tokens. For detailed steps, see Admin
APIs: Authentication using a Salesforce-connected app.

Product2 integration
The base package includes the ServiceNow CPQ Enabled checkbox and a link View ServiceNow
CPQ Setup that will be populated with a link to the ServiceNow CPQ Admin page when the
ServiceNow CPQ Enabled checkbox is checked.

Configuration line item field mapper
A flow is available that checks for user-created custom fields on the configuration line item
(LGK_ConfigurationLineItem_c), and compares it to data in the Extended Information and Pricing
Information fields on the record. If there are name matches, write the data from the Extended
Information or Pricing Information to the custom fields.
Name comparisons ignore case sensitivity, and the "_c" suffix on field names is optional. For
example, both "StartDate" and "startDate_c" in Extended Information or Pricing Information will
be considered a match for a Salesforce field named "StartDate_c". If the map contains the same
name both with and without the "_c" suffix, the Salesforce will save the value of the field with the
suffix.
If the same field names exist in both Extended Information and Pricing Information, the value in
Extended Information is written to the custom field.

Configuration line items
LGK__ConfigurationLineItem__c stores the product data (bill of materials) that comes out of a
configuration. (See below for a complete list of fields.)
The record stores the unique ServiceNow CPQ configuration ID that ties the data back to a
specific ServiceNow CPQ configuration session and can be referenced in other flows or triggers
in Salesforce.
Quote line fields can be populated with information from a ServiceNow CPQ configuration using
records of this object. For additional information, see the following video: Populate Quote Line
Custom Fields
ServiceNow CPQ writes the configuration line item objects when a ServiceNow CPQ
configuration is saved. The setting in ServiceNow CPQ Admin must be enabled.

Note: ServiceNow CPQ writes these records into Salesforce, but does not read them. Any
changes made to these records will not affect a ServiceNow CPQ configuration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1329


<!-- page 1330 -->
Configuration field data
LGK__ConfigurationFieldData__c stores the field values set in a configuration and contains the
unique ServiceNow CPQ configuration ID. (See below for a complete list of fields.)
Creates records for every field from a configuration, even if it has a blank or null value.
Writes the configuration Field Data objects when a ServiceNow CPQ configuration is saved. The
setting in ServiceNow CPQ Admin also needs to be enabled.

Note: ServiceNow CPQ writes these records into Salesforce, but does not read them. Any
changes made to these records will not affect a ServiceNow CPQ configuration.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
Configuration tenant
LGK__ConfigurationTenant__c controls aspects of the ServiceNow CPQ integration with
Salesforce.

A single record for org-wide defaults should be created and populated with the Administration
URL and Runtime Configuration URL values of your ServiceNow CPQ instance.
For security reasons, the Runtime Client Token field is deprecated. The Skip CPQ Post Install
Script checkbox disables product updates that run while installing ServiceNow CPQ's CPQ
extension package.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
Installing the Salesforce ServiceNow Quote Experience Integration Package
extension
Install the Salesforce ServiceNow Quote Experience Integration Package Extension to enable
ServiceNow Quote Experience with Salesforce.

Prerequisites
This guide assumes that your ServiceNow CPQ environment is integrated with a Salesforce org,
and that ServiceNow Quote Experience is enabled. If your Salesforce org has no ServiceNow
CPQ packages installed, install version 2.7 or later of the ServiceNow CPQ Managed Package.
For instructions, see Installation and setup guide for environments linked to Salesforce orgs.

Note: ServiceNow CPQ ServiceNow Quote Experience has no dependencies on
Salesforce CPQ. You can ignore any steps or references specific to Salesforce CPQ.
Submit a support ticket requesting ServiceNow Quote Experience is turned on in your
ServiceNow CPQ environment.

Note: Create a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

About the ServiceNow CPQ ServiceNow Quote Experience extension
The ServiceNow CPQ ServiceNow Quote Experience Extension is a package of components
that Salesforce administrators install on their Salesforce environment to facilitate the integration
between Salesforce and ServiceNow CPQ ServiceNow Quote Experience.
Contact ServiceNow customer support for information on the latest version and how to access
the managed package for installation.
Admins can install the package for admins only, for all users, or for specific profiles. The package
includes permission sets for ServiceNow Quote Experience that can be assigned to individuals
or replicated on profiles. To view the permissions sets, in Setup, go to Users, and then see the
ServiceNow CPQ.ai Full Access option in Permission Sets.
After it is installed, you can view the version of the package in the Installed Packages section of
Salesforce Setup.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


<!-- page 1333 -->
Salesforce: Enable custom address fields
The Salesforce environment must have Custom Address Fields enabled. If this feature is not
enabled, see this article for more information: Enable Custom Address Fields

Salesforce: Allow security exceptions for ServiceNow CPQ
Add trusted URLs:
1. From Salesforce Setup Home, go to Settings > Security > Trusted URLs. Create a new trusted
URL.
2. Provide an API name.
3. Enter the URL of the ServiceNow CPQ environment, as shown below.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
4. Under CSP Directives, make sure that at least frame-src (iframe content) is enabled, and click
Save.

Configure remote site settings:
1. From Salesforce Setup Home, go to Settings > Security > Remote Site Settings. Create a new
remote site.
2. Provide a name.
3. Enter the URL of the ServiceNow CPQ environment as shown in image below, and click Save.

Optionally, allow microphone access for Cosmo Converse (currently in beta). Cosmo Converse
allows the user to communicate via voice with ServiceNow Quote Experience By default, this
feature is not enabled. To use Cosmo Converse, submit a support ticket that describes your use
case. To prepare for Cosmo Converse, update Salesforce settings to allow microphone access.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
1. From Setup Home, go to Settings > Security > Session Settings.
2. Under Browser Feature Permissions, make sure that the check box for Include PermissionsPolicy HTTP header is disabled.
3. If necessary, click Save.

ServiceNow CPQ: Set up the runtime client token
The ServiceNow CPQ runtime client token facilitates authentication for communications from
Salesforce to ServiceNow CPQ. For steps to create a runtime client token in ServiceNow CPQ,
see Set up a runtime client. For this ServiceNow Quote Experience use case, please be sure
to enable permissions on this runtime client for TRANSACTION, and add a valid User ID that is
recognized by the corresponding Salesforce environment.
Note that in ServiceNow CPQ Admin, the runtime client token must be updated to include
TRANSACTION in its permissions and itself as an origin. (For example, the runtime client
token for https://test-txn.test02.cpq must have an origin of https://testtxn.test02.cpq.) Also, when a runtime client token includes TRANSACTION, a user must be
included. Make sure that the user has permission to perform the Create Transaction event.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
When you have set up the runtime client token, copy it to your local clipboard for use in the next
procedure.

Install the ServiceNow CPQ Transaction Runtime Token in Salesforce
1. From the Salesforce App Launcher, search for and open ServiceNow CPQ.io Admin Custom
Settings.
2. Press the Set button next to the Runtime Client Token field to enable it.
3. Paste the token from ServiceNow CPQ into the editable field, and click Save.

Note: The runtime client token isn’t displayed on the Admin Custom Settings page after
it’s been saved.

Salesforce: Update the Opportunity layout to Open ServiceNow Quote
Experience
1. In Salesforce, click the gear icon in the top right corner.
2. Navigate to Setup > Object Manager > Opportunity > Page Layouts.
3. Select the page layout to edit. (If you have multiple layouts, choose the one associated with the
relevant record type or user profiles.)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
4. Scroll down in the layout editor until you see the Related Lists section.

5. Drag the Transactions object from the list of available related lists on the top palette to the
desired position in the Related Lists section.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
6. Click the wrench icon for the Transaction object to open the properties for the related list.

7. In the Selected Fields section, select the Edit Transaction field from the Available Fields
column. Click Add to move it to the Selected Fields column. Rearrange the fields as needed,
and click OK to save the changes. After making the changes, click Save in the top left corner.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
8. Test the updated layout.
◦ As an end user (on the buyside of Salesforce), navigate to an Opportunity record.
◦ Ensure that the transaction related list appears on the page and that the Edit Transaction
link is visible and functional.

Troubleshooting: If the Transaction button is missing
If the transaction button is missing from the buyside opportunity detail page, follow these steps.
1. In the top right corner of the page, click the gear icon, and then click Edit Page. This opens the
Lightning App Builder for the Opportunity record page.

2. Select the Related Lists component of the page. In the Assign Page Layouts section, find the
name of the page layout currently assigned. (In the image, the correct layout is indicated with
the word "(previewed).")

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


<!-- page 1340 -->
3. Click the previewed layout and repeat steps 4 through 7 in the "Salesforce: Update the
Opportunity layout to Open ServiceNow Quote Experience section (above). Next, on the
buyside, navigate to an opportunity record. Check the Related Lists section to confirm that the
transaction object appears. Click the arrow, and create a new transaction to validate that the
Edit Transaction (EditLink__c) field is available.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
Salesforce: Set up custom field mappings
When a new ServiceNow CPQ transaction record is initiated in ServiceNow CPQ, it can be
helpful to transfer essential data from the Salesforce transaction record. This section sets up
field mappings that copy (or "twin") information from a field in Salesforce to a field in ServiceNow
CPQ, or visa versa, during the transaction creation flow. As an example, it is common for the
administrator to twin the value held in LGK__OpportunityId__c to the corresponding
ServiceNow CPQ transaction field, txn.opportunity.id.
1. In Salesforce, go to Setup.
2. In the Quick Find bar, search for Custom Metadata Types.
3. In the search results, under Custom Code, click Custom Metadata.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
4. To access the existing field mappings, locate ServiceNow CPQ.io Transaction Field Mapping
in the list of custom metadata types, and click the Manage Records link next to it.

5. Click New, fill out the required details, and then click Save.
Source fields:
◦ Environment: Choose the source of the field value:
▪ Select Salesforce for fields originating in Salesforce.
▪ Select ServiceNow CPQ for fields originating in ServiceNow CPQ.
◦ Object: Enter Transaction.
◦ Field: Specify the field name.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1342


<!-- page 1343 -->
▪ For Salesforce fields, include the __c suffix (for example, CustomField__c). Review
the exact field names from Salesforce > Setup > Object Manager > Transaction > Fields
and relationships.

▪ For ServiceNow CPQ fields, include prefixes such as txn. or txn.line. to denote the
field (for example, txn.TotalAmount). Be sure to use the exact field variable names
from Admin > Transaction > Associated Fields.

Target fields:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1343


<!-- page 1344 -->
◦ Environment: Indicate where the field value should be updated (Salesforce or ServiceNow
CPQ).
◦ Field: Enter the field name of the target in the same format (for example, Salesforce fields
with __c or ServiceNow CPQ fields with txn. prefixes).

Note:
• A field mapping record is included as a reference. This cannot be deleted, but its source
and target details can be edited. Verify that your custom added field record matches it.
• If you are uninstalling the managed package, any created records for new custom fields
must be deleted first.

Salesforce: Activate Transaction Line to Opportunity Line syncing and asset
flows

Note: By default, the following flows are active:
• ServiceNow CPQ.ai Copy Transaction
• ServiceNow CPQ.ai Create Transaction (Record Trigger)
• ServiceNow CPQ.ai Create Transaction (Screen)

1. From Salesforce Setup Home, search for "Flows". Click Process Automation > Flows.
2. Search for the following. You will perform step 3 for each:
◦ ServiceNow CPQ.io Opportunity Line Sync (Upsert)
◦ ServiceNow CPQ.io Opportunity Line Sync (Delete)
◦ ServiceNow CPQ.io Primary Transaction Change
3. For each of the three flows identified in step 2, activate one of the following options:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1344


<!-- page 1345 -->
◦ Option 1: Using the drop-down menu:
▪ Click the arrow to the right of the flow name.

▪ Select View Details and Versions.
▪ Click Activate for the most recent version of the flow.

◦ Option 2: Open the flow:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
▪ Click the flow name to open it in the Flow Builder.

▪ Click Activate at the top right of the Flow Builder.

Make sure all the flows are in active status.

Note: Opportunity line syncing is applied only to the transaction assigned to the Primary
Transaction opportunity field.

End-user flow: Launching a ServiceNow CPQ transaction from Salesforce
• Create a transaction record in Salesforce
There are several ways for the end user to initiate a ServiceNow CPQ transaction in Salesforce.
The most common flow starts on the Opportunity record.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
1. From an Opportunity record, click the arrow in the transaction's related list, and then click
New.

2. A new transaction opens with the Opportunity field populated. Fill in Account, Primary
Contact, and any optional fields. Click Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


<!-- page 1348 -->
3. A record-triggered flow in the managed package creates a new transaction in ServiceNow
CPQ. The UUID of the new ServiceNow CPQ transaction record updates in Salesforce
(LGK__TransactionUUID__c). If the transaction ID does not appear immediately,
refreshing the browser usually corrects the anomaly.

If the Transaction Id field remains unpopulated after a browser refresh, see the
Troubleshooting section below.
• Edit a transaction
From a Salesforce transaction (or a transaction related list), ServiceNow Quote Experience can
be launched using either the Edit Transaction button on the transaction detail page or the link
available via the Edit Transaction field. This loads a ServiceNow CPQ transaction based on the
Transaction Id field in the Salesforce record.
ServiceNow Quote Experience loads in an iFrame, replacing the current subtab in Salesforce.

Note: Salesforce's classic UI is not supported.
• Copy Transaction
By clicking the Clone button on the Salesforce transaction record, users can call a ServiceNow
CPQ Copy event to recreate the transaction and lines in ServiceNow Quote Experience. This
action is based on the transaction ID on the header record in Salesforce and results in a
cloned transaction record.

Note: Cloning a transaction from Salesforce does not automatically make copies of the
affiliated line records to the new transactions. To clone the lines to the new transaction,
launch the new (cloned) transaction record in ServiceNow Quote Experience, and initiate
a Salesforce sync.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
Troubleshooting: ServiceNow CPQ fails to launch with a “Transaction with id
‘null’ could not be found” error

This error occurs when the creation of a new ServiceNow CPQ transaction record is initiated via
API call from Salesforce and fails. This failure usually occurs due to one of two reasons:
• The Transaction runtime token is incorrectly set up or has expired. Review the steps in the
"ServiceNow CPQ: Set Up the runtime client token" section above.
• The user creating the ServiceNow CPQ transaction record from the Salesforce UI does not
have permission to do so.
To troubleshoot permissions errors, follow these steps.
1. In Transaction Administration, click Personas.
2. In the list of personas, observe which persona is labeled DEFAULT. The screenshot below
shows that "Sales Rep" is the default persona. By default, all new users are assigned this
persona.

3. Open each persona record. Find your user name. The user you are debugging should only be
visible in one persona. Once you find the appropriate persona, note the view that manages
this persona’s access. In the example, the user is among the listed user names in the Sales
Rep persona. This persona’s access is managed by the "sales" view.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
4. Open the view that manages the persona’s access. In our example, the view is named "sales".
To open the view, in ServiceNow CPQ Transaction Admin Home, go to Views, and then click the
managing view.

5. On the view detail page, click Access, click Events, and search for createTransaction.
In the initial stage, the create transaction event (varname: createTransaction) must be set to
Active.

To sum up: for any given user, the administrator must manage the items in the following table.

Issue

Correctio

User
Navigate to Personas in ServiceNow CPQ Transaction Admin, and select a
persona
assignment persona record.
• To add a user to a persona, click + Associate Users.
• To remove a user from a persona, select a user name, and then click Remove
Selected.
Persona
In ServiceNow CPQ Transaction Admin, go to Views, select a view record, and
view
then click Associated Personas.
assignment
View:
For information about how to perform fine-grained access administration
access to
each event, (recommended), see the Events CSV File section in Quote transaction views.
per stage
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Issue

Correctio

To administer access in a less precise way, go to Events in ServiceNow CPQ
Transaction Admin, Select the Create Transaction event, Select Edit Event
Access, and set the event access to Active. By default, the event is active across
all stages and views.

ServiceNow Quote Experience Integrations
Use integrations to exchange data with third-party sources, including Salesforce.
To gather information from external sources like Salesforce, admins create integrations.
These integrations define how to connect to a data source, extract information, and map it
into ServiceNow Quote Experience. Integrations can also send data from ServiceNow Quote
Experience to be mapped in a third-party environment
Before an integration can be defined for ServiceNow Quote Experience, the admin must first
create a connection to the third-party environment, much like an external connection in the
configuration environment. Connections are defined in the Utilities section of the Admin UI.

Creating a connection
Before an integration is defined, the admin must define a connection to the third-party source for
the data the integration uses.
To create a new connection, in the Utilities area of the Admin UI, click Connections. Then click +
New to display the New Connection page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
On the New Connection page, name the new connection and assign a variable name. Next,
choose the integration type: Salesforce or External.
If you are creating a connection to Salesforce, none of the other fields are required. ServiceNow
CPQ knows how to authenticate and knows the required endpoints to use when communicating
with Salesforce.
If you are creating an external integration, choose the authentication type. Supported
authentication methods are None, Bearer Token, and OAuth. If you choose Bearer Token,
use the Authentication Token field to provide the bearer token for the site with which you are
communicating. If you choose OAuth, use the Client ID, Client Secret, and Token URL fields to
provide the required OAuth information.
In the Host field, enter the URL to the third-party site with which you will be communicating.
In the Path field, enter the path to the endpoint that you are trying to access on the third-party
site.
Use the Additional Headers field to add any additional header information that is required by the
third-party site in order to execute the desired endpoint.

Creating an integration
To create a new integration, click + Add Integration. The New Integration window appears. Give
the new Integration a name and a variable name, and click Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
The Integration Editor page opens. Continue defining the new integration by configuring the
following settings:
• HTTP Method: You can perform either a GET, POST, PATCH, PUT, or DELETE operation,
depending on the endpoint that you are using on the third-party site.
• Line Item Details to Include: Define which type of line items you will work with in the
integration. Options are Selected Lines, Modified Lines, and Deleted Lines.
• Additional Path: Enter the query command to execute on the third-party site. If you are
connecting to Salesforce, this will probably be a SOQL query. On other platforms, it may be a
standard SQL query.
• Timeout: Defines the amount of time (in milliseconds) that the request will wait for a response
before declaring an error.
• Async: This toggle allows you to run the query asynchronously in the background so that the
user can continue working.
• Headers: You can use static text in header-level ServiceNow Quote Experience fields by using
simple handlebar syntax, you can set key-value pairs for headers, or you can combine both
these methods.{{txn.fieldname}}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
Next, you need to define the connection to the endpoint. Here you choose from a list of the
connections that you previously created in the Utilities area to define which third-party site to
connect to for this integration.

Finally, you need to define the transformation template, which lets you map third-party data to
ServiceNow CPQ fields or map ServiceNow CPQ data to third-party data source fields.
JSON is used to define the mapping, as in the following example.
{
"fields": [
{
"variableName": "txn.custom.tXNNumber",
"value": "{{#each records}}{{Name}}{{/each}}"
},
{
"variableName": "txn.opportunity.id",
"value": "{{#eachrecords}}{{LGK__OpportunityId__c}}
{{/each}}"
},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
{
"variableName": "txn.custom.primaryContact",
"value": "{{#eachrecords}}{{Contact.FirstName}}{{/each}}"
}
]
}
This example uses Mustache syntax for the Salesforce data that was extracted from the
Salesforce site. Each field mapping includes the variable name of the ServiceNow CPQ field that
receives the extracted data, followed by the value that identifies the Salesforce field where the
data was extracted. The #eachredords and /each nomenclature denote that each record in
the query response is searched for each of the three field values in the template.
You can use the Sample Return Data area and the Transformation Result area to troubleshoot
an Integration that is not working. If you perform the query in a tool like Postman, where you can
see and copy the query response, you can paste the query response in the Sample Response
Data area and then click Run Transformation below the Transformation Template area. The
query response data runs through the defined transformation template, and the results of the
Transformation is displayed in the Transformation Result area.

ServiceNow Quote Experience Integration - POST
Learn how to write data to a third-party application suh as Salesforce by using the POST
integration.

Prerequisites
This article assumes that you have a ServiceNow CPQ environment that is integrated to a
corresponding Salesforce environment. Before you continue, see Installing the Salesforce
ServiceNow Quote Experience Integration Package extension to complete the necessary
integrations.
When the end user initiates a function that writes ServiceNow CPQ data back to the
corresponding Salesforce transaction record, ServiceNow CPQ must have the Salesforce
transaction’s record identifier on hand. To understand how to retrieve the Salesforce transaction
ID and save it into ServiceNow CPQ for future use, see ServiceNow Quote Experience Integration
- GET.

Salesforce setup
In this example, we write LGK data to the Salesforce fields listed below. Review the Salesforce
Transaction and TransactionLine objects to ensure these fields are present.
Header fields (Salesforce object:LGK__Transaction__c)
• LGK__Stage__c holds the stage of the ServiceNow CPQ transaction.
• LGK__PricingExtendedNet__c is the transaction (header-level) net total.
• LGK__Id__c is mapped to the id of the parent transaction.
Line Fields (Salesforce object: LGK__TransactionLine__c)
• LGK__Quantity__c: the line-level quantity.
• LGK__PricingList__c: the line-level list price.
• LGK__PricingNet__c: the line net price, or discounted piece price.
• LGK__PricingExtendedNet__c: the line net total, or extended net price (includes
quantity).
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
• LGK__ParentTransactionLineId__c checks whether
txn.line.custom.parentLineReferenceId exists. If it does, it assigns the
corresponding line's id; otherwise, it sets the value to null.
• LGK__Product2Id__c is mapped to the partnerId of the product associated with the
current transaction line.

POST integration using Composite Graph
The LGK POST integration uses the Salesforce Composite Graph API to update multiple
Salesforce objects simultaneously in a single API call, allowing both header-level and line-level
fields to be updated in the same request.
The Salesforce Composite Graph API enables bundling multiple operations into a single
request, making it highly efficient for integrations. It allows writing to multiple Salesforce objects
in a single POST call, reducing API usage, ensuring data consistency, and enabling atomic
transactions—where either all operations succeed or none are applied. This simplifies integration
processes and improves error handling. For more details on the Composite Graph construct, see
Composite Graph | REST API Developer Guide | Salesforce Developers .
Because the Composite Graph API is a core Salesforce capability, no setup is necessary.
However, we introduce the concept here, before we populate a Composite Graph in the LGK
POST call, described below. In the example below for POST, the integration uses the previously
mentioned header-level and line-level fields in the Salesforce Setup section above, with the
option for users to add or remove fields as per their requirements.

ServiceNow Quote Experience setup
The transaction ID mappings mentioned in the Salesforce Setup section help ServiceNow
CPQ send the right line IDs to Salesforce and manage updates, deletions, and additions
effectively. By mapping LGK__TransactionId__c to the parent transaction ID, Salesforce
can link all line-level changes to the correct transaction, ensuring proper association. The
LGK__ParentTransactionLineId__c checks for a parent line reference; if present, it assigns the
corresponding line ID, ensuring that only valid lines are updated or deleted. If no reference
exists, it sets the value to null. The LGK__Product2Id__c maps to the product’s partner ID,
ensuring the correct product is linked to the line for accurate pricing and discount application.
These dynamic mappings ensure that Salesforce can accurately update quantities, delete
lines, and add new ones while preserving user's line-level discounts by maintaining proper
associations with transaction and product data.
This integration transform requires the use of two custom line fields, lineReferenceId
and parentLineReferenceId. These fields must be set up to store a variation of the
txn.line.id and (potentially) txn.line.parent.id system fields.

Rules
The Salesforce Composite Graph API does not support hyphens in certain identifiers, which
can cause issues when sending data that includes hyphenated IDs, such as the LGK line
IDs. To make the integration work, the system removes any hyphens present in the LGK line
IDs before sending them to Salesforce. This ensures that the IDs comply with Salesforce's
format requirements and that the integration functions correctly without errors related to invalid
characters. By removing the hyphens, the system ensures that all identifiers are accepted by
Salesforce, allowing the integration to process updates and other operations smoothly.
To remove hyphens by using a rule, create a determination rule action to make line-level
reference Id fields Salesforce-compatible. You can add both the lineReferenceId determination
action and parentLineReferenceId determination action in a single rule.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
Below are two determination scripts (transaction line level) for how the fields should be defined.
// lineReferenceId Determination Action
var original = txn.line.id;
var result = "";
for (var i = 0; i < original.length; i++) {
if (original.charAt(i) !== "-") {
result += original.charAt(i);
}
}
return result;
// parentLineReferenceId Determination Action
var original = txn.line.parent.id;
var result = "";
if (txn.line.parent.id != txn.id) {
for (var i = 0; i < original.length; i++) {
if (original.charAt(i) !== "-") {
result += original.charAt(i);
}
}
}
return result;
The rule should be configured as follows, with two determination
actions to handle txn.line.custom.lineReferenceId and
txn.line.custom.parentLineReferenceId:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
Add Connection
The screenshot below shows the external connection as “Salesforce” in the POST integration.
If you want to create a new connection, see the "Creating a Connection" section in ServiceNow
Quote Experience Integrations.

To POST data back to Salesforce, you need the Salesforce transaction record ID. If you have not
yet set up the GET integration to fetch the transaction ID, see ServiceNow Quote Experience
Integration - GET.

Add integration
1. Navigate to the Integrations section and create a new integration.
◦ HTTP Method: POST
◦ Additional Path:/services/data/vXX.X/composite/graph, where vXX.X is the
latest composite graph version. You can check for the latest version here .
◦ Line Item Details to Include: Selected Lines
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


<!-- page 1359 -->
◦ Connection: Salesforce

2. In the Request Transformation section, add this sample transaction JSON (header and linelevel fields may vary according to your preference):
{
"graphs": [
{
"graphId": "graph0",
"compositeRequest": [
{
"method": "PATCH",
"url" :
"/services/data/v61.0/sobjects/LGK__Transaction__c/LGK__Transac
tionUUID__c/{{txn.id}}",
"referenceId": "parentTransaction",
"body": {
"LGK__Stage__c": "{{txn.stage}}",
"LGK__NetTotal__c": "{{txn.pricing.total}}"
}
}
{{#if lines}}
{{~#each lines~}}
{{#if txn.line.product.partnerId}}
,
{
"method": "PATCH",
"url":
"/services/data/v61.0/sobjects/LGK__TransactionLine__c/LGK__Tra
nsactionLineId__c/{{txn.line.id}}",
"referenceId":
"line_{{txn.line.custom.lineReferenceId}}",
"body": {
"LGK__TransactionId__c": "@{parentTransaction.id}",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


<!-- page 1360 -->
"LGK__ParentTransactionLineId__c": {{#if
txn.line.custom.parentLineReferenceId}}"@{line_{{txn.line.custo
m.parentLineReferenceId}}.id}"{{else}}null{{/if}},
"LGK__Product2Id__c":
"{{txn.line.product.partnerId}}",
"LGK__Quantity__c": "{{txn.line.quantity}}",
"LGK__ListPrice__c": "{{txn.line.pricing.list}}",
"LGK__NetPrice__c": "{{txn.line.pricing.net}}",
"LGK__NetTotal__c":
"{{txn.line.pricing.extendedNet}}"
}
}
{{/if}}
{{/each}}
{{/if}}
]
}
]
}
This transformation template is added to the Transformation Template area of the Request
Transformation section as follows:

For more information about Handlebar syntax, see ServiceNow Quote Experience Integrations Handlebars syntax.

Debugging the POST call
To use the Integration Admin interface to debug a POST call that is not working as expected,
follow these steps:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
1. Copy the transaction ID for which the integration is not working, paste it in the small
Transaction ID box, and then click Fetch JSON.

The application populates the Sample Transaction JSON box.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
2. Click Run Transformation. This processes the transaction information contained in the
Sample Transaction JSON input through the transformation logic and generates a result that
you can test using Postman.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
For more information about setting up Postman to interface with your Salesforce org, see
Connect Postman to Salesforce .

Related topics
ServiceNow Quote Experience Integration - GET

ServiceNow Quote Experience Integration - GET
Learn how to access data from a third-party application such as Salesforce by using the GET
integration.
This article describes how to retrieve the Salesforce opportunity ID, together with transaction
details including the account name, opportunity name, shipping address, and billing address,
and write them into ServiceNow CPQ transaction fields. This pattern is relevant to any integration
that requires ServiceNow CPQ to request data from a third party.

Goal: End-user (buyside) flow
We begin by opening a ServiceNow Quote Experience transaction in Salesforce. Then, by
clicking Get SF Data in the buyside UI, we trigger the Get SF Data event. This event initiates
several integrations that connect to Salesforce, extracting the relevant transaction data
(opportunity ID, opportunity name, shipping address, billing address, account ID, and account
name) and populating the corresponding fields in the buyside UI.
In the buyside transaction UI, click Get SF Data.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
Notice that the details are all populated.

The rest of this article lists the steps in ServiceNow CPQ to create the integrations that get the
data from Salesforce.

Administration setup: Prerequisites
This guide assumes a ServiceNow CPQ environment with ServiceNow Quote Experience
features enabled, as well as installation of the CPQ ServiceNow Quote Experience Integration
Extension on a corresponding Salesforce environment. To view the installation instructions, see
Installing the Salesforce ServiceNow Quote Experience Integration Package extension.

ServiceNow CPQ: Add a connection
A connection record contains the data required to initiate a ServiceNow Quote Experience
Integration. This includes authentication details, host URL, path, and headers. To view a
connection record, in ServiceNow CPQ Admin, go to Utilities, and then click Connections.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
For information about adding a connection, see the "Creating a Connection" section in
ServiceNow Quote Experience Integrations. For the purposes of this article, we use a connection
to a Salesforce environment.

ServiceNow CPQ: Add the integration
1. Open ServiceNow CPQ Admin and go to the Integrations section.
2. Click Add Integration. Create a new integration using any suitable name. In this example, we
use the name "Get Oppty Id".

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
The integration details page shown above includes the following sections:
◦ Integration settings
◦ Request Transformation
◦ Connection to Endpoint
◦ Response Transformation
Details about these sections follow.
• Integration settings:
◦ HTTP method: GET
◦ Path: /services/data/vXX.X/query/?q=SELECT+Name,
+LGK__OpportunityId__c FROM+LGK__Transaction__c+WHERE
+LGK__ID__c='{{txn.id}}'
The GET request retrieves the Name and LGK__OpportunityId__c fields from the
LGK__Transaction__c object in Salesforce, filtering by the transaction ID “txn.id” in the
LGK__ID__c field.
In the path, <vXX.X> is the latest composite graph version. You can check for the latest
version here .
◦ Line Item Details to Include: Selected Lines
◦ Timeout: 2000 ms

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
Click Next.
• Request Transformation: Not required when we are building a GET Integration.
• Connection to Endpoint: For this example, we are querying Salesforce. If you are setting up an
integration with another system, select the appropriate connection.

Click Next.
• Response Transformation: See this sample response transformation template.
{
"fields": [
{
"variableName": "txn.custom.tXNNumber",
"value": "{{#each records}}{{Name}}{{/each}}"
},
{
"variableName": "txn.opportunity.id",
"value": "{{#each
records}}{{LGK__OpportunityId__c}}{{/each}}"
}
]
}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
Integration: Retrieve opportunity details
Create another integration to get additional details through txn.opportunity.id.
Now that we have the opportunity ID, the next step in the integration involves using it as a
reference to retrieve additional details from the opportunity and to populate the relevant LGK
transaction fields.

• Integration settings:
◦ HTTP method: GET

◦ Path: GET /services/data/vXX.X/query?q=SELECT
Id,Name,Owner.Username,AccountId,Account.Name,Account.BillingAddress,Accou
FROM Opportunity WHERE Id='{{txn.opportunity.id}}'
This query retrieves fields from an Opportunity record in Salesforce, based on the unique
ID of the opportunity. It also retrieves related account details, such as the account's name,
billing address, and shipping address. The query returns data for a specific opportunity
identified by {{txn.opportunity.id}}.
To get the field details from Salesforce, click Setup > Object Manager > Opportunity >
Fields & Relationships.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


<!-- page 1369 -->
◦ Line Item Details to Include: Selected Lines
◦ Timeout: 2000 ms

Click Next.
• Request Transformation: not required when building a GET integration.
• Connection to Endpoint:
Select Connection to Endpoint. For this example, we are querying Salesforce. If you are setting
up an integration with another system, select the appropriate connection.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
Click Next.
• Response Transformation: The following JSON snippet defines how to populate variables
defined in additional path by iterating over a collection of records.
For txn.custom.opportunity, it extracts the Name field from each record,
while for txn.custom.billToAddress, it extracts and concatenates the

Account.BillingAddress.street,Account.BillingAddress.city,Account.BillingAdd
field. The Handlebars {{#each}} loop is used to process each record, and the resulting
values depend on the system's handling, either as concatenated strings or arrays of values.
{
"fields": [
{
"variableName": "txn.custom.opportunity",
"value": "{{#each records}}{{Name}}{{/each}}"
},
{
"variableName": "txn.account.id",
"value": "{{#each records}}{{AccountId}}{{/each}}"
},
{
"variableName": "txn.custom.accountName",
"value": "{{#each records}}{{Account.Name}}{{/each}}"
},
{
"variableName": "txn.custom.quoteNumber",
"value": "{{#each records}}{{QuoteNumber}}{{/each}}"
},
{
"variableName": "txn.custom.billToAddress",
"value":
"{{records.[0].Account.BillingAddress.street}}{{records.[0].Ac
count.BillingAddress.city}}{{records.[0].Account.BillingAddress
.state}}{{records.[0].Account.BillingAddress.postalCode}}"
},
{
"variableName": "txn.custom.shipToAddress",
"value":
"{{records.[0].Account.ShippingAddress.street}}{{records.[0].A
ccount.ShippingAddress.city}}{{records.[0].Account.ShippingAddr
ess.state}}{{records.[0].Account.ShippingAddress.postalCode}}"
}
]
}
Trigger the integration when the end user clicks a button. You can now click Events to create a
new event or to select an existing one. In this case, we use the Get SF Data event (a button in the
UI) to connect to the integrations we previously created.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
Click Add New Action.

Click Integrations.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
Search for and add the "Get Oppty Id" integration.

Click Save. Then, click Add New Action and add "retrieveSFOptyData".

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


<!-- page 1373 -->
Click the up and down arrows next to the action items to arrange them in the desired order. (Here,
we are selecting "Get Oppty Id", followed by "Retrieve SF Opty Data", to fetch the opportunity ID
and retrieve relevant data.)

Click Save, and deploy the changes.
We have discussed how integrations can be added with events. Integrations can also be
configured at the stage level. To do so, navigate to Stages > Edit Settings > Add New Action >
Integration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Troubleshooting
When configuring integrations, it is crucial to ensure that the sequence of integrations is set up
correctly to retrieve accurate details. The order of execution plays a significant role in maintaining
data consistency and alignment.
To achieve this, follow these steps:
1. Fetch the opportunity ID: The opportunity ID serves as the key reference for linking related
data. This step is essential because the transaction details you retrieve later are directly
associated with a specific opportunity.
2. Fetch the transaction ID through opportunity details: Use the opportunity ID to fetch the
transaction ID. Because each transaction is linked to a particular opportunity, this approach
ensures that you accurately associate the correct transaction with its corresponding
opportunity.
By following this order, you can maintain the integrity of the integration and ensure that the data
flow remains seamless and reliable.
Related topics
ServiceNow Quote Experience Integration - POST

ServiceNow Quote Experience Integrations - Handlebars syntax
You can use the Handlebars templating language when you build an integration transformation
template.
Handlebars is a lightweight templating language used to generate dynamic content.
Administrators building integration transformation templates use the following key elements of
Handlebars syntax, together with enhancements specific to ServiceNow CPQ:
• Handlebars expressions: Enclosed in double curly braces {{ }}, expressions enable
administrators to insert variables, functions, or properties into the template. For example,
{{user.name}} renders the value of the name property of the user object.
• Built-in helpers include conditional helpers and iteration helpers.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
◦ Conditional helpers enable you to render content conditionally based on a value. For
example:
▪ #if renders content if the condition is true.
{{#if user.isActive}}
Active
{{/if}}
This snippet renders "Active" only if user.isActive is true.
▪ #unless – The opposite of ʼif, it renders content if the condition is false.
{{#unless user.isActive}}
Inactive
{{/unless}}
This snippet renders "Inactive" if user.isActive is false.
◦ Iteration helpers let you loop through lists or modify scope.
▪ #each loops through an array and renders content for each item.
{{#each users}}
<li>{{this.name}}</li>
{{/each}}
This snippet iterates through users and displays each user's name as a list item.
▪ #with changes the scope to a specific object.
{{#with user}}
<p>{{name}}</p>
{{/with}}
This snippet simplifies access to properties of user in the block.

Advanced Handlebars syntax for integrations
Here’s an explanation of each syntactical element used in the Integration Template, which
leverages the Handlebars templating language.
• {{#if lines}} {{/if}}

{{#if}} checks whether something is true.
The following snippet checks whether there is something in lines. If lines has a value (like
a list of items or some data), it will do something inside the block. If lines is empty or doesn’t
exist, it skips the block.
{{#if lines}}
We have lines to process!
{{else}}
No lines available.
{{/if}}
If lines exists, it shows "We have lines to process!". If not, it shows "No lines available."
• {{~#each lines~}} {{/each}}

{{#each}} repeats something for each item in a list.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
The following snippet iterates over each item in the lines list and renders the content inside
the block for every item. The ~ symbols are whitespace control characters in Handlebars. They
help remove any extra spaces or line breaks before and after the block, ensuring cleaner and
more compact output. (See below.)
{{~#each lines~}}
<p>{{this}}</p>
{{/each}}
The snippet goes through each item in lines and puts each item in a paragraph tag.
• {{#if <cpq line-level field varname>}} {{/if}}

{{#if <cpq ...}} checks whether a specific piece of data is true or exists. It checks
whether a specific field or value (like varname) in your data exists or is true. It's a way to check
for specific information in a more complex structure (like in a dataset).
{{#if logik.lineLevelField.isActive}}
The field is active!
{{else}}
The field is not active.
{{/if}}
This snippet checks whether logik.lineLevelField.isActive is true (like checking
if something is "active"). If it is, it shows "The field is active!" If not, it shows "The field is not
active."

The tilde (~)
The tilde (~), a control character, hides whitespace and line breaks, helping keep the output
clean. It makes HTML more compact and prevents spacing issues in output.
In some of the examples above, a leading tilde before #each removes whitespace before the
block starts. The trailing tilde after ʼeach removes whitespace after the block starts.

The zeroIfMissing custom helper
The zeroIfMissing helper prevents errors due to missing values and ensures numerical fields
always have a valid default value.
Custom Helper 'zeroIfMissing'
"price": {{zeroIfMissing txn.price}}, would become -> "price": 0
(or "price": 9.99, if txn.price is present)

The lgkFilter custom helper
The lgkFilter helper iterates through a collection and includes only items that meet a specified
condition.
{
"numericFiltered": [
{{#lgkFilter lines "txn.line.custom.someNumber > 10"}}
{
"id": "{{txn.line.product.id}}",
"someNumber": "{{txn.line.custom.someNumber}}"
}
{{else}}
{
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
"error": "Item could not be added (numeric condition)"
}
{{/lgkFilter}}
],
"textFiltered": [
{{#lgkFilter lines "txn.line.custom.status == Active"}}
{
"id": "{{txn.line.product.id}}",
"status": "{{txn.line.custom.status}}"
}
{{else}}
{
"error": "Item could not be added (text condition)"
}
{{/lgkFilter}}
]
}
This helper replaces #each and #unless blocks.
• Simple syntax: {{#lgkFilter lines "<predicate_field>"}}
• Conditional syntax: {{#lgkFilter lines "<predicate_field> <comparator>

<literal_value>"}}

• Supported comparators: <, >, <=, >=, !=, ==
• Complex conditions such as && are not supported
The else block is supported within the helper.
The helper throws an error when its syntax is incorrect and when fields cannot be parsed.
The helper performs comma joins internally for valid JSON output.

The @ symbol
The @ ensures that you're pulling the value from the outer or parent context and not from the
current context. It’s often used when the data you need is at a higher level in the structure, and
you want to avoid confusing it with the local data of the current scope.
In the expression "LGK__TransactionId__c": "@{parentTransaction.id}", the
@ symbol is used to reference a value from a parent context or object in templating systems, such
as Handlebars or other similar systems.
The @{} syntax tells the system to look at the parent context (the object or data outside the
current scope) and retrieve the value of parentTransaction.id.
For example, suppose you have an object like this:
{
"parentTransaction": {
"id": "12345"
}
}
When you use "LGK__TransactionId__c": "@{parentTransaction.id}",
the id from parentTransaction (which is 12345) will be used as the value for
"LGK__TransactionId__c".
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
Conditional assignment example
The line "LGK__ParentTransactionLineId__c":

{{#if txn.line.custom.parentLineReferenceId}}
"@{line_{{txn.line.custom.parentReferenceId}}.id}" {{else}}
null {{/if}} is part of a Handlebars template and conditionally sets the value of the field
LGK__ParentTransactionLineId__c.
• LGK__ParentTransactionLineId__c is the key where the resulting value will be
placed.
• {{#if txn.line.custom.parentLineReferenceId}} checks whether
txn.line.custom.parentLineReferenceId exists and has a value.
• @{line_{{txn.line.custom.parentReferenceId}}.id} creates a dynamic
reference to the id of a specific line based on parentReferenceId.
• {{else}} null {{/if}} sets the value to null if the condition is false.

Concatenating Salesforce fields with conditional punctuation
In Handlebars, concatenating multiple fields together with punctuation (like commas, spaces,
and conditional checks) can be done by combining variables in the template and using {{ʼif}}
blocks to handle conditional logic.
For example, you can use the following approach to concatenate fields such as street address,
street address2, city, state, and zip code for an address while ensuring that a comma and space
after street address2 are only included if street address2 is populated:
{{#if streetAddress}}
{{streetAddress}}
{{#if streetAddress2}}, {{streetAddress2}}{{/if}}
{{#if city}}, {{city}}{{/if}}
{{#if state}}, {{state}}{{/if}}
{{#if zipcode}}, {{zipcode}}{{/if}}
{{else}}
No address available
{{/if}}
This concatenates fields like streetAddress, streetAddress2, and city, ensuring that commas are
only included when the corresponding fields are populated.
Example output with streetAddress2: "123 Main St, Apt 4, San Francisco,

CA, 94105"
Example output without streetAddress2: "123 Main St, San Francisco, CA,

94105"

Conclusion
By using these key elements, administrators can create dynamic, flexible, and maintainable
integration transformation templates. Understanding and leveraging expressions, helpers,
blocks, conditionals, and parent context references enables handling complex data and logic
with ease.
For more information on Handlebars syntax, see the Handlebars documentation

.

Note: Handlebars syntax does not support all the features described in this external
document.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
ServiceNow Quote Experience Integrate Salesforce approvals
Integrate Salesforce approvals into ServiceNow Quote ExperienceServiceNow Quote
Experience.

Salesforce setup
Refer to these Salesforce Trailheads modules and documentation:
• Postman: Quick Start: Connect Postman to Salesforce
• Submit for Approval: Salesforce Developers: Submit a Record for Approval
An approval process in Salesforce automates record approval workflows in an organization. It
defines:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
• Approval Steps: The sequence of steps and approvers for a record, for example, sending a
time-off request to an employee’s manager for approval.
• Actions: Automated actions based on the approval outcome, such as updating records if
approved or sending notifications if rejected.
This streamlines the approval process and ensures consistency.

1. Go to Setup, click Approval Processes, and select the transaction record.
2. In Manage Approval Processes For, select Opportunity.
3. Click Create New Approval Process.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
4. Ensure that the Add the Submit for Approval and Approval History option is checked.
You can specify conditions, if applicable, in the Entry-Specific Criteria section.
5. Choose Automatically assign approvers and set it to anyone with the SysAdmin role.

6. Create a custom picklist field in the transaction record by navigating to Setup, clicking Object
Manager, and then clicking Transaction. Ensure that the field is not set as a multi-select
picklist.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
7. Give the picklist field three values to distinguish between Pending Approval, Approved, and
Rejected.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
8. Add the custom field to the Transaction Layout.

If you skipped the previous step, you can add the field to the Transaction Layout like so:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
9. Go back to the approval process, click Initial Submission Actions, click Add New, and then
select Field Update. Configure it with the required values.
10. To ensure that the relevant fields are updated based on the outcome of the approval
process, repeat step 9 for the Approval Actions and Rejection Actions sections. The following
screenshot shows the final rejection option.

If you included email alerts along with field updates, the approval process should resemble the
following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


