# Zurich IT Asset Management — Enterprise Asset Management for Providers

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1988–2018 of 2359

Sections: Enterprise Asset Management for Providers (p1988)

---

<!-- page 1988 -->
Note: Subscription consumption information is generated and grouped by resource
category. For more information on resource categories, see Enterprise Asset
Management for Data Center and Network Asset Management (DCNAM) licensing.
Subscription consumption information
Field

Description

Application

Name of the application.

Resource
Category

Resource category that is supported by the application.

Resource
Subcategory of the given resource category.
Subcategory
Resource
Total Count

Total number of assets within the given resource category and subcategory.

Subscription Predefined ratio that indicates how many assets within the given resource
Unit Ratio
category require a subscription. For example, a ratio of 25:1 indicates that one
subscription is required for every 25 assets within the resource category.
Total
Total number of subscriptions that you have consumed for the given resource
Subscription category and subcategory. The ITAM licensing module calculates this value by
Units
applying the Subscription Unit Ratio to the Resource Total Count.
Consumed

Enterprise Asset Management for Providers
Enterprise Asset Management for Providers is a licensable application that enables Device as
a Service (DaaS) providers, vendors, and manufacturers to manage all DaaS-related activities,
including the fulfillment of Return Merchandise Authorization (RMA) requests, from a single
location.
The Enterprise Asset Management for Providers (com.sn_eam_provider) application is a
specialized offering within the suite of Enterprise Asset Management solutions. The application
adds DaaS provider-based functionalities and workflows to the Enterprise Asset Management
application, including the capabilities to create and manage provider-based RMA response
orders and inbound asset orders.
You can install and use the application only if you've already installed the Enterprise Asset
Management (com.sn_eam) application or one of the following Enterprise Asset Managementdependent applications on your ServiceNow instance:
• OT Asset Management (com.sn_otam)
• Enterprise Asset Management for Healthcare (com.sn_eamhc)
• Enterprise Asset Management for Facilities (com.sn_eamfam)
• Enterprise Asset Management for Data Center and Network Asset Management
(com.sn_eam_dcnam)

Install Enterprise Asset Management for Providers
You can install the Enterprise Asset Management for Providers application
®
(com.sn_eam_provider) if you have the admin role. The application installs related ServiceNow
Store applications if they are not already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1988


<!-- page 1989 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Enterprise Asset Management for Providers
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
• Install the Enterprise Asset Management (com.sn_eam) application or one of the following
Enterprise Asset Management-dependent applications on your ServiceNow instance:

Note: For instructions on how to install the Enterprise Asset Management application,
see Install Enterprise Asset Management.
◦ OT Asset Management (com.sn_otam)
For instructions on how to install this application, see Install OT Asset Management.
◦ Enterprise Asset Management for Healthcare (com.sn_eamhc)
For instructions on how to install this application, see Install Enterprise Asset Management
for healthcare.
◦ Enterprise Asset Management for Facilities (com.sn_eamfam)
◦ Enterprise Asset Management for Data Center and Network Asset Management
(com.sn_eam_dcnam)
For instructions on how to install this application, see Install Enterprise Asset Management
for Data Center and Network Asset Management (DCNAM).
Role required: admin

About this task

The following items are installed with Enterprise Asset Management for Providers:
• Roles
• Store applications
• Tables
For more information, see Components installed with Enterprise Asset Management for
Providers.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Enterprise Asset Management for Providers application (com.sn_eam_provider) using
the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1989


<!-- page 1990 -->
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

Managing Return Merchandise Authorization (RMA) response orders for
defective Device as a Service (DaaS) assets
If you are a DaaS provider, vendor, or manufacturer, you can fulfill RMA requests from your
customers by creating and managing provider-based RMA response orders.
To successfully fulfill an RMA request, you must perform the following tasks in the RMA response
order workflow:
1. Create an RMA response order
2. Create corresponding RMA response order lines
3. Complete the RMA response order
Create a Return Merchandise Authorization (RMA) response order for defective Device as a
Service (DaaS) assets
Create an RMA response order to track and manage the process of repairing or replacing the
defective DaaS assets that are associated with an RMA request.

Before you begin

Role required: sn_eam_provider.provider_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the navigation menu of the Asset operations view, navigate to Provider > Provider RMA
response order.
3. Select New.
4. On the form, fill in the fields.
Create New RMA response form
Fields

Description

External
RMA
number

Customer-provided reference number for the RMA request that you want
to fulfill. You can use this reference number to track the source of the RMA
response order.

DaaS
account

DaaS account of the customer who submitted the RMA request. You can use
this information to determine which assets are leased to the account.

Contact
Email

Email address of the customer who submitted the RMA request.

Delivery
address

Address of the customer who submitted the RMA request.

Requested
for

Name of the customer who submitted the RMA request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1990


<!-- page 1991 -->
Fields

Description

Customer
mobile
number

Mobile phone number of the customer who submitted the RMA request.

Device
location

Geographic location of the assets that are associated with the RMA request.

RMA
Customer-provided justification for the RMA request.
justification
5. Select Save.

What to do next

Create corresponding RMA response order lines for the DaaS assets that you want to repair
or replace. For detailed instructions, see Create a Return Merchandise Authorization (RMA)
response order line for a defective Device as a Service (DaaS) asset.
Create a Return Merchandise Authorization (RMA) response order line for a defective Device
as a Service (DaaS) asset
Create an RMA response order line for each defective DaaS asset that you want to repair or
replace through an RMA response order. Use each order line to track and manage the tasks that
you must complete to repair or replace the given asset.

Before you begin

Role required: sn_eam_provider.provider_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the RMA response order lines list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
Provider RMA response order

b. From the list of available RMA response or­
ders, select the order that you want to cre­
ate an RMA response order line for.
c. On the RMA response order record, select
the RMA response order lines tab.

Provider RMA response order line

From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1991


<!-- page 1992 -->
Create New RMA response order line form
Field

Description

Model

Model of the asset that you want to repair or replace.

Assigned User who is assigned to repair or replace the specified asset.
to
Asset

Asset that you want to repair or replace.

Note: The list of available assets is automatically filtered to display only the
assets that meet the following criteria:
◦ The asset is associated with the model specified in the Model field.
◦ The DaaS asset option is enabled on the corresponding asset record.
◦ The DaaS account field on the corresponding asset record matches the
DaaS account specified in the associated RMA response order.

5. Select Save.

Result
• The RMA response order line is added to the associated RMA response order.
• An RMA assessment task is automatically generated for the RMA response order line.

What to do next

Perform all tasks that are required for completing the RMA response order line so that you
can complete and close the associated RMA response order. For detailed instructions, see
Completing a Return Merchandise Authorization (RMA) response order for defective Device as a
Service (DaaS) assets.
Completing a Return Merchandise Authorization (RMA) response order for defective Device
as a Service (DaaS) assets
After you create an RMA response order with corresponding RMA response order lines, you must
perform various tasks to complete and close the order.
Based on the action that you want to take on your defective DaaS assets, you must complete
a specific set of tasks for each RMA response order line within an RMA response order. After
you complete all tasks for an order line, it moves to the Completed stage. After every order line
reaches the Completed stage, the order is closed.
Tasks for supported RMA actions
Supported RMA
action

On-site repair

Tasks

1. RMA assessment task to assess the defective DaaS asset.
2. Schedule task to schedule a visit to the customer site.
3. Evaluate RMA asset task to evaluate the defective DaaS asset.
4. Repair asset task to repair the defective DaaS asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1992


<!-- page 1993 -->
Tasks for supported RMA actions (continued)
Supported RMA
action

Tasks

5. Evaluate asset task to evaluate the repaired DaaS asset.
6. The customer redeploys or disposes of the repaired DaaS asset.
On-site
replacement

1. RMA assessment task to assess the defective DaaS asset.
2. Schedule task to schedule a visit to the customer site.
3. Evaluate RMA asset task to evaluate the defective DaaS asset.
4. Ship task to have the customer ship the defective DaaS asset to you.
5. Receive asset task to verify that you received the defective DaaS asset
from the customer.
6. Complete an inbound asset order to provide the customer with a new
DaaS asset.

Off-site repair

1. RMA assessment task to assess the defective DaaS asset.
2. Ship task to have the customer ship the defective DaaS asset to you.
3. Receive asset task to verify that you received the defective DaaS asset
from the customer.
4. Evaluate RMA asset task to evaluate the defective DaaS asset.
5. Repair asset task to repair the defective DaaS asset.
6. Evaluate asset task to evaluate the repaired DaaS asset.
7. Ship task to ship the repaired DaaS asset back to the customer.
8. Receive asset task to verify that the customer received the repaired DaaS
asset.
9. The customer redeploys or disposes of the repaired DaaS asset.

Off-site
replacement

1. RMA assessment task to assess the defective DaaS asset.
2. Ship task to have the customer ship the defective DaaS asset to you.
3. Receive asset task to verify that you received the defective DaaS asset
from the customer.
4. Evaluate RMA asset task to evaluate the defective DaaS asset.
5. Complete an inbound asset order to provide the customer with a new
DaaS asset.

Complete the RMA assessment task for a defective Device as a Service DaaS asset
Complete the RMA assessment task for a defective DaaS asset by assessing the asset and
determining the action that you want to take on it. You can choose to repair it, replace it, or reject
the associated RMA request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1993


<!-- page 1994 -->
Before you begin

Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
Provider RMA response order

c. On the RMA response order record, select
the RMA response order lines tab.
d. From the list of available RMA response or­
der lines, select the order line that you want
to assess the asset for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

Provider RMA response order line

b. From the list of available RMA response or­
der lines, select the order line that you want
to assess the asset for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the RMA assessment task that you
want to complete.
4. On the Details tab of the RMA assessment task, fill in the fields.
Details tab
Field

Description

Assessment
action

Action that you want to take on the asset. Select one of the following
options:
◦ On site: Option to repair or replace the asset at the customer site.
◦ Off site: Option to repair or replace the asset at your organization's
site.
◦ Denied: Option to reject the RMA request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1994


<!-- page 1995 -->
Field

Description

Assignment
group

Group that the task is assigned to.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The RMA assessment task closes with an updated state of Closed Complete.
• If you set the Assessment action field to On site, a corresponding Schedule task is
automatically generated.
• If you set the Assessment action field to Off site, a corresponding Ship task is automatically
generated.
• If you set the Assessment action field to Denied, the associated RMA response order line
moves to the Rejected stage.

What to do next
• If you set the Assessment action field to On site, complete the corresponding Schedule
task by scheduling a visit to the customer site. For detailed instructions, see Complete the
Schedule task for a defective Device as a Service DaaS asset.
• If you set the Assessment action field to Off site, complete the corresponding Ship task by
having the customer ship the asset to you. For detailed instructions, see Complete the Ship
task for a defective Device as a Service DaaS asset.
Complete the Schedule task for a defective Device as a Service DaaS asset
If you want to perform an on-site repair or replacement for a defective DaaS asset, complete the
Schedule task for the asset by scheduling a visit to the customer site.

Before you begin

Before you can begin the Schedule task, you must complete the preceding RMA assessment
task by assessing the asset and selecting the option to perform an on-site repair or replacement.
For detailed instructions, see Complete the RMA assessment task for a defective Device as a
Service DaaS asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1995


<!-- page 1996 -->
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.
Provider RMA response order

d. From the list of available RMA response or­
der lines, select the order line that you want
to schedule a customer site visit for.

Note: You must select an order line
that you have already completed the
RMA assessment task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

Provider RMA response order line

b. From the list of available RMA response or­
der lines, select the order line that you want
to schedule a customer site visit for.

Note: You must select an order line
that you have already completed the
RMA assessment task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.
Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Schedule task that you want to
complete.
4. On the Details tab of the Schedule task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Scheduled date

Date and time at which you plan to visit the customer site.

Assignment group Group that the task is assigned to.
Assigned to

User who the task is assigned to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1996


<!-- page 1997 -->
Field

Description

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Schedule task closes with an updated state of Closed Complete.
• A corresponding Evaluate RMA asset task is automatically generated.

What to do next

Complete the corresponding Evaluate RMA asset task by going to the customer site and
evaluating the asset. For detailed instructions, see Complete the Evaluate RMA asset task for a
defective Device as a Service DaaS asset.
Complete the Evaluate RMA asset task for a defective Device as a Service DaaS asset
Complete the Evaluate RMA asset task for a defective DaaS asset by evaluating the asset and
determining whether you want to repair or replace it.

Before you begin

Before you can begin the Evaluate RMA asset task, you must complete the preceding task.
• If you are performing an on-site repair or replacement, you must complete the preceding
Schedule task by scheduling a visit to the customer site. For detailed instructions, see
Complete the Schedule task for a defective Device as a Service DaaS asset.
• If you are performing an off-site repair or replacement, you must complete the preceding Ship
task by having the customer ship the asset to you. For detailed instructions, see Complete the
Receive asset task for a defective Device as a Service DaaS asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
Provider RMA response order

b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1997


<!-- page 1998 -->
Navigation option

Procedure

d. From the list of available RMA response or­
der lines, select the order line that you want
to evaluate the asset for.

Note: If you are performing an onsite repair, you must select an order
line that you have already completed
the Schedule task for. If you are per­
forming an off-site repair or replace­
ment, you must select an order line
that you have already completed the
Receive asset task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.
b. From the list of available RMA response or­
der lines, select the order line that you want
to evaluate the asset for.

Note: If you are performing an onProvider RMA response order line

site repair, you must select an order
line that you have already completed
the Schedule task for. If you are per­
forming an off-site repair or replace­
ment, you must select an order line
that you have already completed the
Receive asset task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Evaluate RMA asset task that you
want to complete.
4. On the Details tab of the Evaluate RMA asset task, fill in the fields.
Details tab
Field

Description

Assignment group Group that the task is assigned to.
Evaluation result

Result of the evaluation. Select one of the following options:
◦ Repairable: The asset can be repaired.
◦ Replace: The asset is unrepairable and must be replaced.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1998


<!-- page 1999 -->
Field

Description

Issue identified

Reason that the asset is defective.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Evaluate RMA asset task closes with an updated state of Closed Complete.
• If you set the Evaluation result field to Repairable, a corresponding Repair asset task is
automatically generated for both on-site and off-site repairs.
• If you set the Evaluation result field to Replace and you are performing an on-site
replacement, a corresponding Ship task is automatically generated.
• If you set the Evaluation result field to Replace and you are performing an off-site
replacement, a corresponding inbound asset order is automatically created.

What to do next
• If you set the Evaluation result field to Repairable, complete the corresponding Repair asset
task by repairing the asset. For detailed instructions, see Complete the Repair asset task for a
defective Device as a Service DaaS asset.
• If you set the Evaluation result field to Replace and you are performing an on-site
replacement, complete the corresponding Ship task by shipping the asset to your organization.
For detailed instructions, see Complete the Ship task for a defective Device as a Service DaaS
asset.
• If you set the Evaluation result field to Replace and you are performing an off-site
replacement, complete the corresponding inbound asset order to provide the customer with
a new asset. For detailed instructions, see Completing an inbound asset order for requested
Device as a Service (DaaS) assets.
Complete the Repair asset task for a defective Device as a Service DaaS asset
Complete the Repair asset task for a defective DaaS asset by repairing the asset either on-site or
off-site.

Before you begin

Before you can begin the Repair asset task, you must complete the preceding Evaluate RMA
asset task by evaluating the asset and indicating that it is repairable. For detailed instructions,
see Complete the Evaluate RMA asset task for a defective Device as a Service DaaS asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1999


<!-- page 2000 -->
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.
Provider RMA response order

d. From the list of available RMA response or­
der lines, select the order line that you want
to repair the asset for.

Note: You must select an order line
that you have already completed the
Evaluate RMA asset task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

Provider RMA response order line

b. From the list of available RMA response or­
der lines, select the order line that you want
to repair the asset for.

Note: You must select an order line
that you have already completed the
Evaluate RMA asset task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.
Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Repair asset task that you want
to complete.
4. On the Details tab of the Repair asset task, fill in the fields.
Details tab
Field

Description

Assignment
group

Group that the task is assigned to.

Repair result Result of the repair. Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2000


<!-- page 2001 -->
Field

Description

◦ Repaired: The asset was repaired.
◦ Unrepairable: The asset is unrepairable and must be replaced.
Issue
identified

Reason that the asset is unrepairable. Fill in this field only if you set the Repair
result field to Unrepairable.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Repair asset task closes with an updated state of Closed Complete.
• If you set the Repair result field to Repaired, a corresponding Evaluate asset task is
automatically generated.
• If you set the Repair result field to Unrepairable, a corresponding Ship task is automatically
generated.

What to do next
• If you set the Repair result field to Repaired, complete the corresponding Evaluate asset
task by evaluating the repaired asset and determining if it can be redeployed. For detailed
instructions, see Complete the Evaluate asset task for a defective Device as a Service DaaS
asset.
• If you set the Repair result field to Unrepairable, complete the corresponding Ship task by
having the customer ship the asset to you for replacement. For detailed instructions, see
Complete the Ship task for a defective Device as a Service DaaS asset.
Complete the Evaluate asset task for a defective Device as a Service DaaS asset
After you repair a defective DaaS asset, complete the Evaluate asset task by evaluating the asset
and determining if it can be redeployed.

Before you begin

Before you can begin the Evaluate asset task, you must complete the preceding Repair asset
task by repairing the asset. For detailed instructions, see Complete the Repair asset task for a
defective Device as a Service DaaS asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2001


<!-- page 2002 -->
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.
Provider RMA response order

d. From the list of available RMA response or­
der lines, select the order line that you want
to evaluate the repaired asset for.

Note: You must select an order line
that you have already completed the
Repair asset task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

Provider RMA response order line

b. From the list of available RMA response or­
der lines, select the order line that you want
to evaluate the repaired asset for.

Note: You must select an order line
that you have already completed the
Repair asset task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.
Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Evaluate asset task that you want
to complete.
4. On the Details tab of the Evaluate asset task, fill in the fields.
Details tab
Field

Description

Assignment Group that the task is assigned to.
group
Evaluation
result

Result of the evaluation. Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2002


<!-- page 2003 -->
Field

Description

◦ Redeployable: The repair was successful, so the asset can be redeployed.
◦ To be disposed: The repair was unsuccessful, so the asset must be disposed
of.
Issue
identified

Reason that the repair was unsuccessful. Fill in this field only if you set the
Evaluation result field to To be disposed.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Evaluate asset task closes with an updated state of Closed Complete.
• If you set the Evaluation result field to Redeployable and you performed an on-site repair, the
RMA response order line moves to the Completed stage. The customer can redeploy the asset
at any time.
• If you set the Evaluation result field to Redeployable and you performed an off-site repair, a
corresponding Ship task is automatically generated.

What to do next
• If you set the Evaluation result field to Redeployable and you performed an off-site repair,
complete the corresponding Ship task by shipping the repaired asset back to the customer so
that it can be redeployed. For detailed instructions, see Complete the Ship task for a defective
Device as a Service DaaS asset.
• If you set the Repair result field to Unrepairable, the customer must dispose of the asset. For
detailed instructions, see Create a disposal order in the Enterprise Asset Workspace.
Complete the Ship task for a defective Device as a Service DaaS asset
If you want to perform a replacement or an off-site repair for a defective DaaS asset, you must
complete the associated Ship task by having the customer ship the asset to you. If you choose to
repair the asset, you must complete the associated Ship task by shipping the asset back to the
customer after a successful repair.

Before you begin

Before you can begin the Ship task, you must complete the preceding task.
• If you are performing an on-site replacement, you must complete the preceding Evaluate
RMA asset task by evaluating the asset and indicating that it must be replaced. For detailed
instructions, see Complete the Evaluate RMA asset task for a defective Device as a Service
DaaS asset.
• If you are performing an off-site repair or replacement, you must complete the preceding RMA
assessment task by assessing the asset and indicating that it must be repaired or replaced offsite. For detailed instructions, see Complete the RMA assessment task for a defective Device
as a Service DaaS asset.
• Before you can ship a repaired asset back to a customer, you must complete the preceding
Evaluate asset task by evaluating the asset and verifying that it was repaired successfully. For
detailed instructions, see Complete the Evaluate asset task for a defective Device as a Service
DaaS asset.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2003


<!-- page 2004 -->
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.
Provider RMA response order

d. From the list of available RMA response or­
der lines, select the order line that you want
to ship the asset for.

Note: You must select an order line
that you have already completed the
Evaluate RMA asset, RMA assess­
ment, or Evaluate asset task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.
b. From the list of available RMA response or­
der lines, select the order line that you want
to ship the asset for.
Provider RMA response order line

Note: You must select an order line
that you have already completed the
Evaluate RMA asset, RMA assess­
ment, or Evaluate asset task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Ship task that you want to
complete.
4. On the Details tab of the Ship task, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2004


<!-- page 2005 -->
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Note: This field is editable only if you are shipping the asset to the
customer.
Shipping
carrier

Shipping carrier through which you are shipping the asset. For example,
DHL.

Ship from

Geographic location that you are shipping the asset from.

Ship date

Date and time at which you shipped the asset.

Assignment
group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Note: This field is editable only if you are shipping the asset to the
customer.
Tracking
number

Tracking number that you can use to track the status and location of the
asset shipment.

Ship to

Geographic location that you are shipping to asset to.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Ship task closes with an updated state of Closed Complete.
• A corresponding shipment record is automatically created for the asset shipment. A reference
to the shipment record is populated in the Shipment order field of the Ship task. You can view
and manage the shipment record from the Shipments list of the Asset operations view. For
detailed instructions, see View and add enterprise asset shipments.
• A corresponding Receive asset task is automatically generated.

What to do next

Complete the corresponding Receive asset task by confirming that the shipped asset was
received. For detailed instructions, see Complete the Receive asset task for a defective Device
as a Service DaaS asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2005


<!-- page 2006 -->
Complete the Receive asset task for a defective Device as a Service DaaS asset
After a customer ships a defective DaaS asset to you for repair or replacement, or after you ship
a repaired DaaS asset back to a customer, complete the Receive asset task by verifying that the
asset was received successfully.

Before you begin

Before you can begin the Receive asset task, you must complete the preceding Ship task by
having the customer ship the asset to you or by shipping the asset back to the customer. For
detailed instructions, see Complete the Ship task for a defective Device as a Service DaaS asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order.
b. From the list of available RMA response or­
ders, select the order that you want to com­
plete.
c. On the RMA response order record, select
the RMA response order lines tab.
Provider RMA response order

d. From the list of available RMA response or­
der lines, select the order line that you want
to verify the asset receipt for.

Note: You must select an order line
that you have already completed the
Ship task for.
e. On the RMA response order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
RMA response order line.

Provider RMA response order line

b. From the list of available RMA response or­
der lines, select the order line that you want
to verify the asset receipt for.

Note: You must select an order line
that you have already completed the
Ship task for.
c. On the RMA response order line record, se­
lect the Asset tasks tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2006


<!-- page 2007 -->
Navigation option

Procedure

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Receive asset task that you want
to complete.
4. On the Details tab of the Receive asset task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Note: This field is editable only if you are verifying that a customer
received the asset.
Asset

Asset that was shipped.

Asset received Option that indicates if the asset was received. Select either Yes or No.
Assignment
group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Note: This field is editable only if you are verifying that a customer
received the asset.
Tracking
number

Tracking number that you can use to track the status and location of the
asset shipment.

Stockroom

Stockroom that the asset was added to.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Receive asset task closes with an updated state of Closed Complete.
• If you successfully received a defective DaaS asset from a customer for an on-site
replacement, the RMA response order line moves to the Completed stage. A corresponding
inbound asset order is automatically created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2007


<!-- page 2008 -->
• If you successfully received a defective DaaS asset from a customer for an off-site repair or
replacement, a corresponding Evaluate RMA asset task is automatically generated.
• If a customer successfully received a DaaS asset that you repaired, the RMA response order
line moves to the Completed stage.

What to do next
• If you successfully received a defective DaaS asset from a customer for an on-site
replacement, complete the corresponding inbound asset order to provide the customer with
a new asset. For detailed instructions, see Completing an inbound asset order for requested
Device as a Service (DaaS) assets.
• If you successfully received a defective DaaS asset from a customer for an off-site repair
or replacement, complete the corresponding Evaluate RMA asset task by evaluating the
asset and determining whether you want to repair or replace it. For detailed instructions, see
Complete the Evaluate RMA asset task for a defective Device as a Service DaaS asset.

Managing inbound asset orders for requested Device as a Service (DaaS)
assets
If you are a DaaS provider, vendor, or manufacturer, you can create and manage provider-based
inbound asset orders to provide your customers with the DaaS assets that are requested through
your Return Merchandise Authorization (RMA) response orders.
To successfully fulfill a request, you must perform the following tasks in the inbound asset order
workflow:
1. Create an inbound asset order
2. Create corresponding inbound asset order lines
3. Complete the inbound asset order
Create an inbound asset order for requested Device as a Service (DaaS) assets
Create an inbound asset order to track and manage the process of providing your customers
with the DaaS assets that are requested through your Return Merchandise Authorization (RMA)
response orders.

Before you begin

Role required: sn_eam_provider.provider_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the navigation menu of the Asset operations view, navigate to Provider > Provider
inbound orders.
3. Select New.
4. On the form, fill in the fields.
Create New Inbound asset order form
Field

Description

External
request
reference

Customer-provided reference number for the asset request that you want to
fulfill. You can use this reference number to track the source of the inbound
asset order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2008


<!-- page 2009 -->
Field

Description

DaaS
account

DaaS account of the customer who submitted the asset request. You can use
this information to determine which assets are leased to the account.

Delivery
address

Address of the customer who submitted the asset request.

Requested
for

Name of the customer who submitted the asset request.

Estimated
delivery
date

Estimated delivery date of the assets that you are sending to the customer.

5. Select Save.

What to do next

Create corresponding inbound asset order lines for the DaaS assets that you want to provide
to your customers through the inbound asset order. For detailed instructions, see Create an
inbound asset order line for a requested Device as a Service (DaaS) asset.
Create an inbound asset order line for a requested Device as a Service (DaaS) asset
Create an inbound asset order line for each DaaS asset that you want to provide to your
customers through an inbound asset order. Use each order line to track and manage the tasks
that you must complete to provide the given asset to the customer.

Before you begin

Role required: sn_eam_provider.provider_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Inbound asset order lines list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order.
Provider inbound asset order

b. From the list of available inbound asset or­
ders, select the order that you want to cre­
ate an inbound asset order line for.
c. On the inbound asset order record, select
the Inbound asset order lines tab.

Provider inbound asset order line

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider in­
bound asset order line.

3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2009


<!-- page 2010 -->
Create New Inbound asset order line form
Field

Description

Model

Model of the asset that you want to provide to the customer.

Assigned to

User who is assigned to provide the asset to the customer.

5. Select Save.

Result
• The inbound asset order line is added to the associated inbound asset order.
• An Asset selection task is automatically generated for the inbound asset order line.

What to do next

Perform all tasks that are required for completing the inbound asset order line so that you
can complete and close the associated inbound asset order. For detailed instructions, see
Completing an inbound asset order for requested Device as a Service (DaaS) assets.
Completing an inbound asset order for requested Device as a Service (DaaS) assets
After you create an inbound asset order with corresponding inbound asset order lines, you must
perform various tasks to complete and close the order.
You must complete the following tasks for each inbound asset order line within an inbound asset
order:
1. Asset selection task to select the DaaS asset that you want to provide to the customer.
2. Asset pick task to pick the DaaS asset from the specified stockroom.
3. Asset prepare task to prepare the DaaS asset for shipment.
4. Asset ship task to ship the DaaS asset to the customer.
5. Receive task to verify that the customer received the DaaS asset.
After you complete all tasks for a given order line, it moves to the Completed stage. After every
order line reaches the Completed stage, the order is closed.
Complete the Asset selection task for a requested Device as a Service (DaaS) asset
Complete the Asset selection task for a requested DaaS asset by selecting an asset that
matches the criteria specified in the associated inbound asset order line.

Before you begin

Role required: sn_eam_provider.provider_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2010


<!-- page 2011 -->
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order.
b. From the list of available inbound asset or­
ders, select the order that you want to com­
plete.
Provider inbound asset order

c. On the inbound asset order record, select
the Inbound asset order lines tab.
d. From the list of available inbound asset or­
der lines, select the order line that you want
to choose an asset for.
e. On the inbound asset order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order line.

Provider inbound asset order line

b. From the list of available inbound asset or­
der lines, select the order line that you want
to choose an asset for.
c. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Asset selection task that you
want to complete.
4. On the Details tab of the Asset selection task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Stockroom

Stockroom that you are selecting the asset from.

Assignment
group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Asset

Asset that you are selecting for the inbound asset order line. Select an asset
that meets the following criteria:
◦ Matches all criteria specified in the order line.
◦ The DaaS asset option is enabled in the corresponding asset record.
◦ An account is specified in the DaaS account field of the corresponding
asset record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2011


<!-- page 2012 -->
Field

Description

Note: For more information on the DaaS asset and DaaS account
fields, see Asset fields for enterprise assets.
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes
(Private)

Notes about that task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Asset selection task closes with an updated state of Closed Complete.
• A corresponding Asset pick task is automatically generated.

What to do next

The provider asset technician must complete the corresponding Asset pick task by picking the
asset that you selected for the inbound asset order line. For detailed instructions, see Complete
the Asset pick task for a requested Device as a Service (DaaS) asset.
Complete the Asset pick task for a requested Device as a Service (DaaS) asset
Complete the Asset pick task for a requested DaaS asset by picking the asset that a provider
asset manager selected for an inbound asset order line. You must pick the asset from the
stockroom that the provider asset manager specified when selecting the asset.

Before you begin

Before you can begin the Asset pick task, a provider asset manager must complete the
preceding Asset selection task by selecting an asset for the inbound asset order line. For
detailed instructions, see Complete the Asset selection task for a requested Device as a Service
(DaaS) asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Provider inbound asset order

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order.
b. From the list of available inbound asset or­
ders, select the order that you want to com­
plete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2012


<!-- page 2013 -->
Navigation option

Procedure

c. On the inbound asset order record, select
the Inbound asset order lines tab.
d. From the list of available inbound asset or­
der lines, select the order line that you want
to pick an asset for.

Note: You must select an order line
that a provider asset manager has al­
ready completed the Asset selection
task for.
e. On the inbound asset order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order line.
b. From the list of available inbound asset or­
der lines, select the order line that you want
to pick an asset for.
Provider inbound asset order line

Note: You must select an order line
that a provider asset manager has al­
ready completed the Asset selection
task for.
c. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available asset tasks, select the task number for the Asset pick task that you
want to complete.
4. On the Details tab of the Asset pick task, fill in the fields.
Details tab
Field

Description

Asset pick task
Assignment group Group that the task is assigned to.
Assigned to

User who the task is assigned to.

Due date

Date and time at which you must complete the task.

Drop off location

Location where the asset must be delivered.

Notes
Short description

Brief description of the task.

Description

Detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2013


<!-- page 2014 -->
Field

Description

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Asset pick task closes with an updated state of Closed Complete.
• A corresponding Asset prepare task is automatically generated.

What to do next

Complete the corresponding Asset prepare task by preparing the picked asset for shipment. For
detailed instructions, see Complete the Asset prepare task for a requested Device as a Service
(DaaS) asset.
Complete the Asset prepare task for a requested Device as a Service (DaaS) asset
Before you ship the DaaS asset that you picked for an inbound asset order line, complete the
Asset prepare task for it by completing any necessary pre-shipment checklists and by inspecting
it for defects.

Before you begin

Before you can begin the Asset prepare task, you must complete the preceding Asset pick task
by picking the asset from the stockroom that the provider asset manager specifies. For detailed
instructions, see Complete the Asset pick task for a requested Device as a Service (DaaS) asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
asset inbound order.

Provider inbound asset order

b. From the list of available inbound asset or­
ders, select the order that you want to com­
plete.
c. On the inbound asset order record, select
the Inbound asset order lines tab.
d. From the list of available inbound asset or­
der lines, select the order line that you want
to prepare an asset for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2014


<!-- page 2015 -->
Navigation option

Procedure

Note: You must select an order line
that you have already completed the
Asset pick task for.
e. On the inbound asset order line record, se­
lect the Asset tasks tab.
a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order line.

Provider inbound asset order line

b. From the list of available inbound asset or­
der lines, select the order line that you want
to prepare an asset for.

Note: You must select an order line
that you have already completed the
Asset pick task for.
c. On the inbound asset order line record, se­
lect the Asset tasks tab.
From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

Provider asset tasks

3. From the list of available tasks, select the task number for the Asset prepare task that you want
to complete.
4. On the Details tab of the Asset prepare task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Stockroom

Stockroom that the asset is located in.

Assignment group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes
(Private)

Notes about the task that are visible to all users within your
organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2015


<!-- page 2016 -->
Result
• The Asset prepare task closes with an updated state of Closed Complete.
• A corresponding Asset ship task is automatically generated.

What to do next

Complete the corresponding Asset ship task by shipping the prepared asset to the customer
that the asset is requested for. For detailed instructions, see Complete the Asset ship task for a
requested Device as a Service (DaaS) asset.
Complete the Asset ship task for a requested Device as a Service (DaaS) asset
After you prepare the DaaS asset that you picked for an inbound asset order line, complete the
Asset ship task for it by shipping it to the customer that it is requested for.

Before you begin

Before you can begin the Asset ship task, you must complete the preceding Asset prepare task
by preparing the asset for shipment. For detailed instructions, see Complete the Asset prepare
task for a requested Device as a Service (DaaS) asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order.
b. From the list of available inbound asset or­
ders, select the order that you want to com­
plete.
c. On the inbound asset order record, select
the Inbound asset order lines tab.
Provider inbound asset order

d. From the list of available inbound asset or­
der lines, select the order line that you want
to ship an asset for.

Note: You must select an order line
that you have already completed the
Asset prepare task for.
e. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider inbound asset order line

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order line.
b. From the list of available inbound asset or­
der lines, select the order line that you want
to ship an asset for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2016


<!-- page 2017 -->
Navigation option

Procedure

Note: You must select an order line
that you have already completed the
Asset prepare task for.
c. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Asset ship task that you want to
complete.
4. On the Details tab of the Asset ship task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Shipping carrier

Shipping carrier through which you are shipping the asset. For example,
DHL.

Ship from

Geographic location that you are shipping the asset from.

Ship date

Date and time at which you shipped the asset.

Assignment
group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Tracking number Tracking number that you can use to track the status and location of the
asset shipment.
Ship to

Geographic location that you are shipping to asset to.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes
(Private)

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Asset ship task closes with an updated state of Closed Complete.
• A corresponding shipment record is automatically created for the asset shipment. A reference
to the shipment record is populated in the Shipment order field of the Asset ship task. You can

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2017


<!-- page 2018 -->
view and manage the shipment record from the Shipments list of the Asset operations view.
For detailed instructions, see View and add enterprise asset shipments.
• A corresponding Receive task is automatically generated.

What to do next

Complete the corresponding Receive task by verifying that the customer successfully received
the shipped asset. For detailed instructions, see Complete the Receive task for a requested
Device as a Service (DaaS) asset.
Complete the Receive task for a requested Device as a Service (DaaS) asset
After you ship the DaaS asset that you prepared for an inbound asset order line, complete the
Receive task for it by verifying that the customer received it successfully.

Before you begin

Before you can begin the Receive task, you must complete the preceding Asset ship task by
shipping the asset. For detailed instructions, see Complete the Asset ship task for a requested
Device as a Service (DaaS) asset.
Role required: sn_eam_provider.provider_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. Open the Asset tasks list.
Navigation option

Procedure

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order.
b. From the list of available inbound asset or­
ders, select the order that you want to com­
plete.
c. On the inbound asset order record, select
the Inbound asset order lines tab.
Provider inbound asset order

d. From the list of available inbound asset or­
der lines, select the order line that you want
to verify the asset receipt for.

Note: You must select an order line
that you have already completed the
Asset ship task for.
e. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider inbound asset order line

a. From the navigation menu of the Asset oper­
ations view, navigate to Provider > Provider
inbound asset order line.
b. From the list of available inbound asset or­
der lines, select the order line that you want
to verify the asset receipt for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2018


