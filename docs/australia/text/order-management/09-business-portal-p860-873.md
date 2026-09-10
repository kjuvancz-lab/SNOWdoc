# Australia Sales Customer Relationship Management — Business Portal

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 860–873 of 1645

Sections: Business Portal (p860); Configuring agent tools in Sales CRM (p869); Use (p873)

---

<!-- page 860 -->
Quotes and quote line items help channel partners track products associated with submitted
quotes, reducing turnaround time and promoting transparency between enterprises and
partners.

Note: The Quote Self-service application is installed along with Quote Management for
Channel Partners.

Key benefits of Quote creation via Self-Service
The Quote Self-Service application (com.sn_quote_self_service) offers the following benefits to
channel partners.
• Guided quote creation playbook in the Partner portal.
• Self-service catalog browsing, product configuration, and quote building reduces quote
turnaround time from days to minutes.
• Partners can modify quotes directly in the portal to edit, revise, apply discounts, and download
without requesting changes through internal teams.
• Full audit trail and version history for all quote activities promotes trust and transparency in the
partner ecosystem.
Related topics
Using Partner Relationship Management

Configuring the Business Portal
Enable B2B customers to self-serve key processes such as order creation, order case
management, invoice management, request for quote (RFQ) creation by configuring the
Business Portal (sn_b2b_portal).

Configuration overview
1. Install the following applications and features in the specified order using the Application
Manager to set up the Business Portal:
a. Order Management Portal: sn_ord_mgmt_portal
b. Product Catalog Management Portal: sn_prd_pm_portal
c. Customer Service Portal: sn_csm_portal

Note: The Business Portal application (sn_b2b_portal) is automatically installed when
you install the Customer Service Portal.
d. UI Components for Customer Portals: sn_ciwf_ui_cmpnt
e. Sales Cart plugin: sn_sales_cart
f. Customer Request for Quote plugin: sn_cust_rfq
2. Enable the Business Portal
Enable the Business Portal (sn_b2b_portal) so customers can browse products and create
orders.
3. Configuring product catalog visibility on the Business Portal

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
By default, only users with the sn_customerservice.customer role can view the product
catalog on the Business Portal. After setting up your product catalog and pricing, use the
CustomerPortalCatalogAccessUtil script include to extend catalog visibility to additional users.
4. Install Sales Cart
Provide easy order creation and checkout processes to your customers through the Sales Cart
application.
5. (Optional) Install Customer Request for Quote
Enable B2B customers to request for quotes (RFQ) from the Business Portal. Installing this
application also installs the Request for Quote module in the CSM Configurable Workspace,
which enables sales agents to generate quotes from the RFQs.
6. (Optional) Install apps for self-service order case management
Install the applications or features that provide the self-service options that you want to offer
customers for managing order and invoice cases on the Business Portal.

Additional configurations and customizations
The following tasks help you further customize and configure the Business Portal to support selfservice Sales Customer Relationship Management workflows for B2B customers:
• Add a logo to the sales cart PDF
Customize and embed your company logo in sales cart summary PDFs to ensure consistent
branding and alignment with corporate identity standards.
• Modifying the data retention and table cleanup policy for the Sales Cart application
A default data retention and table cleanup policy automatically deletes records from the Sales
Cart application based on predefined conditions that match your organization's policies.
• Modify terms and conditions for the sales cart
Add order checkout terms and conditions in the CartTermsAndCo document template block for
your Business Portal.
Related topics
Customer self-service using the Business Portal
Business Portal reference for Sales Customer Relationship Management
Enable the manage order operations agent on the Business Portal

Enable the Business Portal
Admins can enable the Business Portal (sn_b2b_portal) so customers can browse products and
create orders.

Before you begin

The application scope must be set to Business Portal. You can change the application scope
using the application picker

in the Unified Navigation bar.

Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
About this task

To set up the Business Portal and Sales Customer Relationship Management self-service
enhancements, first install the Business Portal plugins, which are available in the app store.
See Configuring the Business Portal for more information.

Procedure
1. Navigate to All > Service Portal > Portals.
2. Select Business Portal.
3. Clear the Inactive box.
4. Select Save.
The Business Portal is enabled.

What to do next

Customize the Business Portal to match your organization's branding and user experience
requirements. For more information, see Setup Business and Consumer Portal .
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Configuring product catalog visibility on the Business Portal
Only authorized customers can view the product catalog on the Business Portal by default. After
setting up your product catalog and pricing, use the CustomerPortalCatalogAccessUtil script
include to extend catalog visibility to additional users.
When customers access the Business Portal, the product catalog is visible by default to users
who have the sn_customerservice.customer role and are registered in the ServiceNow CRM
software. This default visibility is controlled by the CustomerPortalCatalogAccessUtil script.
To grant product catalog visibility to other users, use the CustomerPortalCatalogAccessUtil script
to extend access to those users. Navigate to All > Activity Subscriptions > Administration >
Script Includes. In the Name column, search for CustomerPortalCatalogAccessUtil.
You must also set up your product catalog and configure pricing to help ensure that the correct
products and prices are available to customers on the portal. For more information, see
Configuring product offerings and catalogs and Configuring product pricing.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Post-upgrade order migration for the Business Portal
Migrate draft proxy order carts to the new sales cart to avoid having your customers lose
products they added to their carts on the Business Portal

Before you begin

Ensure that the Sales Cart application has been installed. For more information, see Install Sales
Cart.
Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
About this task

Note: If you have used the Business Portal and are upgrading to the Zurich release,

you must run the Migrate proxy orders to sales cart scheduled job after
installing the Sales Cart application. This job migrates the draft proxy order carts to the new
sales cart and prevents your customers from losing products added to their carts on the
Business Portal.
The Migrate proxy orders to sales cart scheduled job performs the
following actions:
• Migrates items from customers' existing cart to the new sales cart
• Creates cart-related records in the Sales Cart tables
• Updates the value of the sn_sales_cart.show_cart_migration_msg property
to false
Until you run the this job, the following message is displayed to your customers on the Business
Portal:
A system update cleared your cart. Please contact your
administrator for help.

Procedure
1. Select All > System Definition > Scheduled Jobs.
2. On the Scheduled Jobs page, enter Migrate proxy orders to sales cart in the
search field.
3. Select the job.
4. On the Scheduled Script Execution page, select Execute Now.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Install Sales Cart
You can install the Sales Cart plugin (sn_sales_cart) if you have the admin role. The application
®
installs related ServiceNow Store applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Sales Cart
listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with the Sales Cart plugin (sn_sales_cart):

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with Sales Cart.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Sales Cart plugin (sn_sales_cart) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

What to do next

A sample logo is applied to the sales cart PDF by default. To customize and add your logo, see
Add a logo to the sales cart PDF.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Add a logo to the sales cart PDF
Customize and embed your company logo in sales cart summary PDFs to ensure consistent
branding and alignment with corporate identity standards.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. In the Name search field, enter db_image table and select the Images table.
3. On the Tables details page, select Show List from the Related Links section.
4. In the Name search field, enter sn_sales_cart.sales_cart_download_logo.png
and select the record.
5. If a message appears about the application scope, select here to be able to edit the record.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
6. Update the logo by selecting Update next to the Image field.
a. Select Update next to the Image field.
b. Select the Choose File button and select the image file on your computer that you want to
use.
c. Select OK.
7. On the Images page, verify that your logo file uploaded successfully.

Note: You might have to change the application scope again.
8. Select Update.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Modifying the data retention and table cleanup policy for the Sales Cart
application
A default data retention and table cleanup policy automatically deletes records from the Sales
Cart application based on predefined conditions. You can modify these conditions to match your
organization's policies.
By default, records in the complete state are deleted from the Sales Cart [sn_sales_cart] table if
they meet either of the following conditions:
• Records older than six months
• Records that haven't been updated for more than six months
Modify the data retention and table cleanup frequency depending on your expected load and
volume. For more information, see Modify data retention policy for ATF test results .
Related topics
Table cleanup
Autoflush form

Modify terms and conditions for the sales cart
Add order checkout terms and conditions in the CartTermsAndCo document template block for
your Business Portal.

Before you begin

Role required: admin

About this task

The CartTermsAndCo document template block in the Sales Cart Demo Template and Sales Cart
Terms and Conditions Default document templates is used for displaying terms and conditions in
the cart summary PDF and while checking out respectively.

Procedure
1. Navigate to All > Document Templates > Document Template Blocks.
2. Select CartTermsAndCo.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
3. Select the record from the Document Template Block Contents related list.
4. If a message appears about the application scope, select here to be able to edit the record.
5. Add your terms and conditions in the Body section.
6. Select Update.
Related topics
Document Templates
Create block content in Document Templates

Install Customer Request for Quote
You can install the Customer Request for Quote application [sn_cust_rfq] if you have the admin
®
role. The application includes demo data and installs related ServiceNow Store applications
and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Customer Request for Quote
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Customer Request for Quote:
• Plugins
• Roles
• Tables
For more information, see Components installed with Customer Request for Quote.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Customer Request for Quote application (sn_cust_rfq) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal

Making self-service order and invoice case management available on the
Business Portal
Install the necessary applications based on the self-service order and invoice case management
options that you want to offer customers on the Business Portal.

Note: For information about activating the Business Portal itself, see Enable the Business
Portal

Case management applications
The following apps must be installed from the ServiceNow Store to enable your customers to
create and view order cases from the Business Portal:
• Order Case Self Service [sn_ord_case_ss]
• Order Case Playbook [sn_ord_case_pb]
These plugins have the following dependencies:
• Customer Service Portal [com.snc.customer_service_portal]
• Order Operations Case Management [sn_order_case]
• Playbooks for Customer Service Management [sn_csm_playbook]
If your customers need to only view order cases in the Business Portal, you don't need to install
the Order Case Playbook [sn_ord_case_pb] and Playbooks for Customer Service Management
[sn_csm_playbook] plugins.

Invoice and invoice case management applications
The following apps must be installed from the ServiceNow Store to enable your customers to
manage invoices and invoice cases from the Business Portal:
• Invoice Self-Service [sn_invoice_ss]
• Invoice Case Self-Service [sn_invoice_case_ss]
• Invoice Case Playbook [sn_inv_case_pb]
These plugins have the following dependencies:
• Customer Service Portal [com.snc.customer_service_portal]
• Invoice Operations Case Management [sn_csm_invoice]
• Playbooks for Customer Service Management [sn_csm_playbook]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
If your customers only need to view invoice cases in the Business Portal, you don’t need to
install the Invoice Case Playbook [com.sn_inv_case_pb] and the Playbooks for Customer Service
Management [sn_csm_playbook] plugins.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal
Install the order case management apps for Business Portal
You can install the order case management applications if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

Note: Demo data is unavailable with these applications.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
The applications for order case management are:
◦ Order Case Self Service (sn_ord_case_ss)
◦ Order Case Playbook (sn_ord_case_pb)
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Related topics
Customer self-service for Sales Customer Relationship Management
Customer self-service using the Business Portal
Install the invoice management apps for Business Portal
You can install the invoice case management applications if you have the admin role.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

Note: Demo data is unavailable with these applications.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the applications using the filter criteria and search bar.
The applications for invoice and invoice case management are:
◦ Invoice Self-Service (sn_invoice_ss)
◦ Invoice Case Self-Service (sn_invoice_case_ss)
◦ Invoice Case Playbook (sn_invoice_case_pb)
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Related topics
View invoices on the Business Portal
Business Portal reference for Sales Customer Relationship Management

Configuring agent tools in Sales Customer Relationship
Management
The applications in Sales Customer Relationship Management share common features and tools
for agents.
This section describes common features that you can configure for your agents, such as
location-based transactions.
Related topics
Order management
Using Order Management
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Configuring location-based product transactions
In Sales Customer Relationship Management, agents can create opportunities, quotes, and
orders tailored to customer location. These transactions are called location-based product
transactions.
When the product offerings and services available to customers vary based on location,
your agents can use a location filter in the product catalog UI to select a service location and
view only the products and services appropriate for that location. Agents can then add the
appropriate products to an opportunity, quote, or order. Agents can also copy products and
services from one location to another within the same transaction, which eliminates the need to
create another opportunity, quote, or order for each location.
Location filter in the product catalog UI and service location in the line item view
for quotes

How location-based transactions work
Admin and product catalog admin configuration
Admins activate location-based transactions by enabling the

sn_sales_common.enable_location_based_transactions system
property.
Product catalog admins use the product eligibility rule entity filters to identify
eligible and ineligible product entities (catalogs, categories, and product offerings).
They also set up decision rules in product eligibility matrices, to specify the context
variables, such as billing state or the service location variables (introduced in the
November 2024 release), for controlling the display of eligible catalogs, categories,
or product offerings.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
Rule entity filters and product eligibility rule matrices

In the following example of the Product Offering Catalog Eligibility matrix, a rule
entity filter for ineligible catalogs and the context variable, service state, are used to
filter the product catalog displayed.
Example product offering catalog eligibility matrix

Agent experience for location-based transactions
When agents specify a service location, the product catalog UI displays the
eligible catalog, categories, or offerings for that location, depending on the product
eligibility entities configured. When they select a simple or fixed product, the line
item is created automatically for the specified location. If they select a configurable
product, they use the product configurator to customize the product options. A line
item is created automatically when they save the product configuration.
Your agents can then copy line items to another location in the same transaction
(opportunity, quote, or order). They can indicate that only eligible line items be
copied to the specified location.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Example order line item copy

For details on how agents add products to an opportunity, quote, or order by
location, see the following:
• Use location filter to add opportunity line items.
• Copy opportunity line items to a location.
• Filter catalogs by location in a quote.
• Copy locations for quote line items.
• Filter product catalog by location.

Setting up location-based transactions
Admins and product catalog admins complete the following configuration tasks to set up
location-based transactions.
Location-based transaction configuration tasks
Step

Description

Role

Activate location-based Enable the
Admin
transactions
sn_sales_common.enable_location_based_transactions
system property.
Create rule entity filters

Define the rule entity filters that make
catalogs, categories, and product
offerings either eligible or ineligible for
display.

Product catalog admin

Define product
eligibility rules

Set the product eligibility rules by
selecting the context variables,
such as the service location context
variables, that control the display of
product catalog, category, or offerings.

Product catalog admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Related topics
Order management
Using Order Management
Activate location-based transactions
Turn on location-based transactions for opportunities, quotes, and orders by using the
sn_sales_common.enable_location_based_transactions system property.

Before you begin

Role required: admin

About this task
The sn_sales_common.enable_location_based_transactions system property
enables your agents to select a customer location and view only the eligible products for that
customer location when adding product lines to an opportunity, quote, or order. This feature also
enables agents to copy line items to another location within the same transaction (opportunity,
quote, or order).

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the sn_sales_common.enable_location_based_transactions system
property.
3. In the Value field, enter true.
4. Select Update.
The location filter is displayed in the product catalog interface. Agents can use the filter to
select a location when adding product lines to an opportunity, quote, or order. The catalog
displays the eligible product offerings for the location. After adding products from the catalog,
agents can then copy selected products (line items) to another location within the same
transaction, without having to create another opportunity, quote, or order for a different
customer location.

What to do next

Define the product eligibility rule filters and matrices that control the product offerings displayed
by location.
Related topics
Order management
Using Order Management

Using Sales Customer Relationship Management
applications
As agents and managers, you use the CSM Configurable Workspace to complete various tasks
when using the Sales Customer Relationship Management applications.
From the workspace you can access product catalogs to see the product offerings available in
your organization and select them for Sales Customer Relationship Management transactions.
You use a configurator interface, either the CPQ Configurator or the Configurator to customize
configurable products that you add to opportunities, quotes, and orders or to make changes in
sold products and product inventory.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


