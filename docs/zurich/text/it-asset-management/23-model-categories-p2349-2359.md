# Zurich IT Asset Management — Model categories / IT Asset Management content request process / Create IT Asset Management content request +3 more

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2349–2359 of 2359

Sections: Model categories (p2349); Domain separation and Product Catalog (p2354); IT Asset Management content request process (p2355); Create IT Asset Management content request (p2355); Licensing for IT Asset Management (p2356); Subscription summary for IT Asset Management application (p2357); View license report for the IT Asset Management application (p2358)

---

<!-- page 2349 -->
The product model has been successfully imported into the target ServiceNow instance and
appears on the models page.
4. In the target ServiceNow instance, perform these steps to import the update set XML file that
contains the catalog item.
a. Navigate to System Update Sets > Retrieved Update Sets.
b. In the Related Links section, select Import Update Set from XML.
c. Select Choose File and select the update set XML file saved previously in Step 2.
d. Select Upload.
The imported update set record is available as a retrieved update set with state Loaded.
e. Open the retrieved update set and select Preview Update Set.
Review updates and resolve any errors.

Result

The catalog items are imported into the target ServiceNow instance.

What to do next

Navigate to the Hardware Models or Software Models page in the target ServiceNow instance,
View the imported hardware or software model record, along with its catalog items that are
published.

Model categories
Model categories associate CI classes with asset classes. Model categories are part of the
Product Catalog application.
The model category configuration determines if the ServiceNow platform creates an asset from
a CI, and, if so, what class of asset. Asset classes in the base system are Hardware, Software
License, and Consumable. You can associate a model category to many models and a model to
many model categories. For example, a specific model of a computer can be a Computer and a
Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2349


<!-- page 2350 -->
Models diagram

Any item that is provided as a service or sold to your customer is tracked as an Install Base Item
(IBI). The Model category table associates Asset class, CI class, and Install Base Item (IBI) class.

Note: The Install Base Item class field is available on the Model category form
only when the Customer Service Install Base Management [com.snc.install_base]
plugin is installed. Currently, only the Medical device install base item
[sn_hcls_medical_device_install_base_item] is supported when the Healthcare and Life
Sciences Service Management Core application is installed. For more details, see Medical
device install base item table . When an IBI class is created, it associates with an asset
when the asset exists, otherwise an asset is created.
The fields in the Asset class and the IBI class are synchronized as follows:
1. When an IBI class is updated, the Account, Consumer, Location, and Install date field changes
are synchronized with the corresponding fields of the Asset class.
2. When an Asset class is updated, the Location and Install date field changes are synchronized
with the corresponding fields of the IBI class.
Related topics
CMDB classifications and class dependency
Create an asset class

View model categories
Default model categories are included with product catalog. You can view a list of default
categories and the categories that you created.

Before you begin

Role required: model_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2350


<!-- page 2351 -->
Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category to view its details.

Create model categories
You can add custom model categories for your instance.

Before you begin

Role required: model_manager

About this task

When you create model categories, keep the following in mind:
• The base system provides a model category for each CI class in the CMDB. As you create
cmdb_ci classes, create a corresponding row in the model category table for the model table
to be used.
• If you select an Asset class on any existing model category, the system automatically creates
assets for all configuration items associated with the model category, if configured to do so. If
an asset is not created automatically, you can create the asset manually. After an asset class is
selected for a model category, the asset class cannot be changed.
• The Allow pre-allocated, Allow in bundle, and Allow as main options are only available if an
asset class is specified for the model category.
• If you select Consumable or Software License for the asset class, the Allow in bundle option
is available, but not Allow pre-allocation or Allow as main.
• When a CI is created from a model category that requires asset tracking, the system
automatically creates an asset record for the asset class specified in the model category. It
then links that asset record to the CI. If a model is specified, the model category of the CI is
determined by a combination of the CI class and the list of categories supported by the model.
Asset tracking is specified on the model record.
• When an asset is created from a model category that requires CI tracking, the system
automatically creates a CI record of the class specified by the category and links it to the asset.
• The Model Categories list (Product Catalog > Product Model > Model Categories) shows all
the CI classes and what asset class is generated on the asset side.

Procedure
1. Navigate to Product Catalog > Product Model > Model Categories and select New.
2. On the form, fill in the fields.
Model Category fields
Field

Description

Name

A descriptive name for this category.

CI class

If a CI class is needed, it must be specified when you create the model category.
You can't add the CI class the model category later.

Asset
class

Default options and any new asset classes you’ve created. Setting the asset
class triggers the creation of assets depending on the model category selected.
You can add an asset class to the model category later, but can't be changed
after it’s added. If you select Consumable or Software License, the CI class
field becomes read-only because consumables and software licenses don’t

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2351


<!-- page 2352 -->
Field

Description

create CIs. If you specify a CI class and then select Consumable or Software
License, theCI class field is changed to None automatically.
◦ Asset: An item that can be tracked individually.
◦ Consumable: An asset not tracked individually, such as keyboards.
◦ Hardware: A physical piece of computer equipment, such as a laptop or
server.
◦ Software License: A legal statement defining the uses of software, such as the
number of installations allowed or the terms of distribution.
Install
base item
class

Class to track the asset as an Install base item.

Note: This field is available only when the Customer Service
Install Base Management [com.snc.install_base] plugin is
installed. Also, currently, only the Medical device install base item
[sn_hcls_medical_device_install_base_item] is available when the
Healthcare and Life Sciences Service Management Core application is
installed.

Product
model
class

Class table where the models are stored. The default values are:
◦ Application
◦ Consumable
◦ Contract
◦ Facility
◦ Hardware
◦ Service
◦ Software
After you select a value, the table content, form views, and overall functionality
of the models created in the model category gets impacted.

Is product
instance

Identifies whether the model category is associated with Product Instance,
which is a logical grouping of asset, CI, and IBI class.

Note: This check box is read-only and is supported only for Medical
device model category. After you select this option, Product Instance
Identifier (PID), a unique identifier for asset, CI, and IBI class is generated
whenever you create an asset of that model category. However, for the
existing assets, the PID is generated only when any of the asset fields such
as Serial number, Model component ID, or Parent is updated.
Allow preallocation

Add and track items in this category asCreate pre-allocated assets.

Allow in
bundle

Use items in this category in bundles.

Allow as
main

Use items in this category as the main component in a bundle.

Enforce CI Prevents the system from automatically creating assets in a specific model
verification category when CIs are added manually or found with Discovery. This option

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2352


<!-- page 2353 -->
Field

Description

enables an administrator to review and verify new CIs before adding them as
assets.
3. Select Submit.
Related topics
Discovery

Create assets manually
The ServiceNow AI Platform does not create an asset automatically under certain conditions. You
can create an asset manually as needed.

Before you begin

Role required: model_manager

About this task

The conditions under which an asset is not automatically created include the following.
• Forced CI verification: If you select the Enforce CI verification check box in the Model
Category form, the system does not create an asset automatically when a CI is created
or discovered. When Enforce CI verification is enabled, newly created CIs do not trigger
an automatic creation of an asset. Instead, these newly created CIs have their Requires
verification field automatically set to true, which displays the following UI actions for the CI:
◦ Create Asset: Creates an asset and sets Requires verification to false.
◦ Merge CI: Merges duplicates of a CI. This action is useful if an asset for the CI was created
in a separate process, which created an associated CI. Then a second CI was created either
manually or via the discovery source - and the duplicate CIs did not properly coalesce.
• Configuration errors: In rare cases, the system can fail to create the asset automatically. This
failure can occur if you assign the model and model category to the CI in the wrong sequence.
Follow these steps to create an asset manually.

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category that has no assigned CI class.
3. Click Create Assets.
This action creates assets from all CIs deferred for verification in this model category. This
option is only available for users with the admin role.

Edit model categories
All default model categories can be edited, except for the Contract model category. You can edit
any custom model categories that you created at any time.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2353


<!-- page 2354 -->
3. Edit the fields as needed.

Note: If a CI class is needed, you must specify it when you create the model category.
You can't add the CI class to the model category later.
4. Click Update.

Delete model categories
If a model category is no longer needed, you can delete it.

Before you begin

Role required: model_manager

About this task

Only model categories that are not referenced by any models can be deleted.

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Select the check box beside the model category Name.
3. From the Actions on Selected Rows menu below the list, click Delete.
4. Click Delete.

Domain separation and Product Catalog
Domain separation is supported in the Product Catalog. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

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

How domain separation works in Product Catalog
The domain owner's employees and tenants can use the same processes if the work is done in
the correct domain. When adjusting any configuration, you should be in the domain where you're
doing the work. Use the domain picker to select the correct domain to work in.
Related topics
Domain separation for service providers
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2354


<!-- page 2355 -->
IT Asset Management content request process
The IT Asset Management Content Service team manages and supports content requests from
IT Asset Management customers.
The IT Asset Management Content team reviews content requests and delivers them through the
regular bi-weekly content updates.
Examples of content requests include but are not limited to the addition of or update to
Publishers, Products, Publisher Part Numbers, Discovery Maps and Lifecycle Dates. While
you have the ability to add Custom Data (Publishers, Products, etc.) to your instance, it is
recommended that you leverage out-of-box content for ITAM use cases. If you were to create
custom data that has since been delivered through the Content Service, references should be
updated to the out of box content, and custom data should be deleted.
Content requests fall into the following categories:
• New content: you require content that is not currently in the Content Library. You can request
new content by submitting a catalog request through the Now Support portal
• Content correction: you require previously delivered content to be corrected. You can request
content update by filing a case with ServiceNow Customer Support through the Now Support
portal.
For more details on content requests, see this Knowledge base article on the ServiceNow Now
Support https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0790305

.

Create IT Asset Management content request
Create request for new content via the Service Catalog application for the IT Asset Management
content service.

Before you begin

Content request can be made for the Software Asset Management content service and the
Hardware Asset Management content service.
Role required: customer user or partner user

Procedure
1. Login to the ServiceNow Now Support portal.
2. Navigate to Automation Store > Service Catalog.
3. Search and select the catalog item Asset Management Content Request.
On the Catalog Item form, the Catalog Request number (CR), Requested by, and the
Company fields populate automatically.
4. Fill in the details on the form.

Field

Description

Title

Summary of your request.

Description

Details of your request.

Selected instance

Instance you are requesting the content for.

Watch list

Add individuals within your organisation to
view the progress of this request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2355


<!-- page 2356 -->
Field

Description

Content category

The content category for your request. You
can select the Software Asset Management
content service or the Hardware Asset
Management content service.

Attachment

Attach an excel sheet with the needed
information about the content requested.

5. Click Submit.
6. You can view your current content requests by navigating to Automation Store > Service
Catalog > My Content Requests
The default filter only shows your active requests. If you want to see all your requests
(including closed ones), you need to adjust the filter.

Licensing for IT Asset Management
The ServiceNow platform uses a new licensing method where your organization is charged
®
for using the IT Asset Management applications: ServiceNow Software Asset Management
®
application and ServiceNow Hardware Asset Management application.
For licensing purposes, CI types are assigned to CI categories. The customer contract for your
organization determines the ratios of CI allocation for each CI category. Information from the
customer contract is synchronized with the ServiceNow platform. These are the following CI
categories:
• Network Gears
• Servers
• End User Computers

Note: CI types are the same as CI classes.
Depending on the needs of your organization, you can purchase subscriptions for the
application separately (a la carte) or together (in bundles). When you purchase subscriptions in
bundles, you get the same number of subscriptions for all applications covered by the bundle.
For example, for a bundle of 500 that covers the Software Asset Management and Hardware
Asset Management applications, your organization receives 500 subscriptions for Software
Asset Management and 500 subscriptions for Hardware Asset Management.
Bundle subscriptions cover specific applications. You cannot use bundle subscriptions for
other applications, even if these other applications are part of the same bundle. For example,
you purchased a bundle of 500 covering Software Asset Management and Hardware Asset
Management, and you used up all 500 Software Asset Management subscriptions. You cannot
use the spare Hardware Asset Management subscriptions for Software Asset Management.
If your organization consumes more subscriptions than you initially estimated, you can purchase
a larger bundle that better suits the needs of your organization. Your organization may consume
subscriptions of IT Asset Management applications at different levels. If so, you can purchase
a bundle that sufficiently covers most of the required applications and also purchase a la carte
subscriptions for the application that consumes more subscriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2356


<!-- page 2357 -->
Subscription summary for IT Asset Management application
You can view how many subscriptions for IT Asset Management applications your organization
purchased and allocated.
Review the configuration item (CI) allocation and allocation level to see how your organization
uses IT Asset Management application subscriptions and plan upcoming subscription needs.
Navigate to ITAM Licensing > ITAM Subscription Summary to view the subscription summary.
View the following statistics on subscriptions purchased a la carte and by bundles:
Name
The name of either subscription bundle or IT Asset Management application, if your
organization purchased subscriptions per application separately (a la carte).
Purchased
The number of purchased subscriptions per bundle or application (a la carte).
Allocated
The number of consumed subscriptions from a bundle or application (a la carte).
For bundles, this field shows the highest number of consumed subscriptions by
applications that are part of the bundle. For example, if Software Asset Management
consumed 300 subscriptions and Hardware Asset Management consumed 200
subscriptions, this field shows 300 for the bundle covering these applications.
The color code indicates the percentage of the subscriptions that your organization
consumed. By default, the color code threshold is 90%.
• Green — Your organization has used less than 90% of purchased subscriptions.
• Yellow — Your organization has used more than 90%, but less than 100% of
purchased subscriptions.
• Red — Your organization has used 100% or more and exceeded the number of
purchased subscriptions. Purchased subscriptions are overdrawn.
Start date/End date
The dates for which this subscription is valid.
The licensing module calculates and displays subscription consumption as follows:
Subscriptions by bundle only
When you purchase subscriptions in bundles, you get the same number of
subscriptions for all IT Asset Management applications covered by the bundle.
For example, for a bundle of 500 that covers Software Asset Management and
Hardware Asset Management, your organization receives 500 subscriptions
for Software Asset Management and 500 subscriptions for Hardware Asset
Management.
The licensing module subtracts the number of consumed subscriptions from the
bundle subscriptions for the relevant application. Bundle subscriptions cover
specific applications. You cannot use bundle subscriptions for other applications,
even if these other applications are part of the same bundle. For example, you
purchased a bundle of 500 covering Software Asset Management and Hardware
Asset Management, and you used up all 500 Software Asset Management
subscriptions. You cannot use the spare Hardware Asset Management
subscriptions for Software Asset Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2357


<!-- page 2358 -->
If your organization exceeds the number of purchased subscriptions, the bundle
size is automatically adjusted to the number of consumed subscriptions. When
that happens, the licensing module recalculates levels of consumption for all
applications covered by the same bundle.
The Subscriptions window displays the actual number of consumed subscriptions
under Allocated. The red color dot in Allocated indicates that the bundle is
overdrawn.
Subscriptions a la carte only
The licensing module subtracts the number of consumed subscriptions from the
a la carte subscriptions for the relevant application. The Subscriptions window
displays the information for purchased and allocated subscriptions for IT Asset
Management applications.
If your organization exceeds the number of purchased subscriptions for an IT Asset
Management application, you cannot use unconsumed subscriptions for another
application.
If your organization exceeds the number of subscriptions, the Subscriptions window
shows the relevant a la carte subscription is overdrawn.
Subscriptions for the same applications both in bundle and a la carte
If you purchased IT Asset Management subscriptions both in bundle and a la carte,
the licensing module always subtracts the number of consumed subscriptions
from the bundle before deducting from the number of subscriptions purchased
a la carte. For example, there is a bundle of 500 subscriptions covering Software
Asset Management and Hardware Asset Management. In addition, there are 250
subscriptions for Software Asset Management purchased a la carte. The first
500 subscriptions consumed by Software Asset Management are consumed
by the bundle. Only when Software Asset Management exceeds the number
of subscriptions in the bundle, the licensing module starts deducting from
subscriptions purchased a la carte and shows them as subscriptions allocated to
Software Asset Management.
If your organization exceeds the number of subscriptions purchased in bundle
and a la carte, the licensing module considers it as overdrawn from the a la carte
subscriptions. In this case, the Subscriptions window indicates that the a la carte
subscriptions are overdrawn.

View license report for the IT Asset Management application
Resources that the IT Asset Management applications discover, monitor, and provision are
configuration items (CIs) stored in the CMDB. The ITAM licensing module combines this
information on CIs with the information on subscriptions your organization purchased to produce
statistics on subscription use by IT Asset Management applications.

Before you begin

The process of collecting and aggregating information for licensing purposes consists of the
following interactions. As a result, you can view the statistics on how your organization uses
purchased subscription units.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2358


<!-- page 2359 -->
1. The IT Asset Management applications count CIs and assign them to CI categories daily.
2. The IT Asset Management applications daily report CI count by CI category to the IT Asset
Management licensing module. If features of the same application report the same CIs as their
resources, the CI count is manipulated to remove the duplication.
3. The licensing module correlates the daily average CI counts for IT Asset Management
applications with the licensing information from the customer contract to produce license
statistics.
Role required:
• admin
• usage_admin

Procedure
1. Navigate to All > ITAM Licensing > ITAM License Report.
2. Select an application to view the subscription for a particular CI category.

You can view the following information on CI count and subscriptions purchased for each IT
Operations Management application separately (a la carte):
◦ Resource Category: CI categories for IT Asset Management applications.
◦ Resource Total Count: CI count for CIs organized by CI categories, for each IT Asset
Management application.
◦ Subscription Unit Ratio: Ratios define how many CIs of a certain CI category require a
subscription. The Software Asset Management application has pre-defined values for End
User Computers (4:1), for Servers (1:1), for Storage Volumes (3:1), for Databases (3:1), and for
Subscription Users (15:1).
◦ Total Subscription Units Consumed: The number of subscriptions per CI category for each
IT Asset Management application that your organization consumed. The licensing module
calculates this number by applying the subscriptions ratio to the CI count number for each
application's CI category.
For licensing purposes, the Software Asset Management application only considers CIs with
software installs discovered within the last 90 days or those where the last discovered as
empty. Additionally, all CIs are excluded that have a column added to the cmdb_ci_hardware
table and that column name is referenced in the property labeled Enter the name of

the true/false field added to cmdb_ci_hardware table to exclude
software installed on selected devices from Software Asset
Management. For more information on excluding CIs, see Exclude software assets on CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2359


