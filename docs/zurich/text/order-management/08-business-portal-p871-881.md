# Zurich Sales and Order Management — Business Portal / Agent tools in SOM

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 871–881 of 1408

Sections: Business Portal (p871); Agent tools in SOM (p878)

---

<!-- page 871 -->
Demo data install task

Description

d. In the System Plugin Order Management
for Channel Partners data model window,
under Related Links, select Install Demo
Data Only.

Result

You have successfully installed the Quote Management for Channel Partners
(com.snc.partner_relationship_management_qm) application.

Configuring the Business Portal
As an admin, you can configure the Business Portal (sn_b2b_portal) so your customers can
browse products and create orders in Sales and Order Management.

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
3. Install Sales Cart
Provide easy order creation and checkout processes to your customers through the Sales Cart
application.
4. (Optional) Install Customer Request for Quote
Enable B2B customers to request for quotes (RFQ) from the Business Portal. Installing this
application also installs the Request for Quote module in the CSM Configurable Workspace,
which enables sales agents to generate quotes from the RFQs.
5. (Optional) Install apps for self-service order case management
Install the applications or features that provide the self-service options that you want to offer
customers for managing order cases on the Business Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Additional configurations and customizations
The following tasks help you further customize and configure the Business Portal to support selfservice Sales and Order Management workflows for B2B customers:
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
Business Portal reference for Sales and Order Management
Enable the manage order operations agent on the Business Portal
Standalone agents in Order Management

Enable the Business Portal
Admins can enable the Business Portal (sn_b2b_portal) so customers can browse products and
create orders.

Before you begin

Role required: admin

About this task

To set up the Business Portal and Sales and Order Management self-service enhancements, first
install the Business Portal plugins, which are available in the app store.
See Configuring the Business Portal for more information.

Procedure
1. In the CSM Configurable Workspace, select All > Portals.
2. Select Business Portals.
3. Clear the Inactive box.
4. Select Save.
The Business Portal is enabled.

Post-upgrade order migration for the Business Portal
Migrate draft proxy order carts to the new sales cart to avoid having your customers lose
products they added to their carts on the Business Portal

Before you begin

Ensure that the Sales Cart application has been installed. For more information, see Install Sales
Cart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Role required: admin

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
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with Sales Cart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Sales Cart plugin (sn_sales_cart) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
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
6. Update the logo by selecting Update next to the Image field.
a. Select Update next to the Image field.
b. Select the Choose File button and select the image file on your computer that you want to
use.
c. Select OK.
7. On the Images page, verify that your logo file uploaded successfully.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
Note: You might have to change the application scope again.
8. Select Update.

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
3. Select the record from the Document Template Block Contents related list.
4. If a message appears about the application scope, select here to be able to edit the record.
5. Add your terms and conditions in the Body section.
6. Select Update.
Related topics
Document Templates
Create block content in Document Templates

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
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
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Installing apps for self-service order case management on the Business Portal
Install the necessary plugins based on the self-service options that you want to offer customers
for managing order cases on the Business Portal.
The apps that must be installed from the ServiceNow Store to enable your customers to create
and view order cases from the Business Portal:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
• Order Case Self Service [sn_ord_case_ss]
• Order Case Playbook [sn_ord_case_pb]
These plugins have the following dependencies:
• Customer Service Portal [com.snc.customer_service_portal]
• Order Operations Case Management [sn_order_case]
• Playbooks for Customer Service Management [sn_csm_playbook]
If you want your customers to be able only to view order cases in the Business Portal, you do
not need to install the Order Case Playbook [sn_ord_case_pb] plugin and the Playbooks for
Customer Service Management [sn_csm_playbook] plugin is not necessary.
You must also activate the Business Portal to make it accessible for your customers. The
Business Portal is inactive by default. For more information, see Configure Business Portal

.

Install Order Case Self Service
You can install the Order Case Self Service application (sn_ord_case_ss) if you have the admin
role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Order Case Self Service
application listing in the ServiceNow Store for
information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

Note: Demo data is unavailable with the Order Case Self Service application.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Order Case Self Service application (sn_ord_case_ss) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
Install Order Case Playbook
You can install the Order Case Playbook application (sn_ord_case_pb) if you have the admin
role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Order Case Playbook
application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

Note: Demo data is unavailable with the Order Case Playbook application.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Order Case Playbook application (sn_ord_case_pb) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

Configuring agent tools in Sales and Order Management
The applications in Sales and Order Management share common features and tools for agents.
This section describes common features that you can configure for your agents, such as
location-based transactions.

Configuring location-based product transactions
In Sales and Order Management, agents can create opportunities, quotes, and orders tailored to
customer location. These transactions are called location-based product transactions.
When the product offerings and services available to customers vary based on location,
your agents can use a location filter in the product catalog UI to select a service location and
view only the products and services appropriate for that location. Agents can then add the
appropriate products to an opportunity, quote, or order. Agents can also copy products and
services from one location to another within the same transaction, which eliminates the need to
create another opportunity, quote, or order for each location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


