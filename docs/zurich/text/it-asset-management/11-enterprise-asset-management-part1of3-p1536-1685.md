# Zurich IT Asset Management — Enterprise Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1536–1685 of 2359 | Part 1 of 3

Sections: Enterprise Asset Management (p1536); Explore (p1537); Configure (p1620); Manage enterprise models and assets (p1638); Manage enterprise asset inventory and contracts (p1751); Manage work orders for your enterprise assets (p1847); Use Service Catalog for requests and flows (p1877); Manage enterprise assets and tasks using Mobile Agent application (p1887)

---

<!-- page 1536 -->
Name

Table

Description

Show is
Software Model
Shows the Is an option field if the selected
an option [cmdb_software_product_model] Manufacturer name starts with Oracle.
if Oracle
User roles installed with Model Management
Model Management includes user roles.

Contains
Roles

Role

Description

category_manager model
Can create, edit, and delete model categories.
manager
model_manager

none

Can create new CMDB models. The model manager role can
control the base models and any model extensions that are not
hardware, software, or consumables. Hardware and consumable
models are controlled by the asset manager (asset) role.
Software models are controlled by the software asset manager
(sam) role.

Enterprise Asset Management
Enterprise Asset Management is a business application that manages the entire life cycle of your
enterprise connected and non connected assets.
Watch this short video for an introduction to the Enterprise Asset Management application.
Introduction to the Enterprise Asset Management application
The Enterprise Asset Management application provides a comprehensive and end to end
solution for maintaining your assets, minimizing costly downtime, and maximizing the asset
usable life.
You can also listen to the Enterprise Asset Management TechBytes podcast on the ServiceNow
Community .

Get started

Explore

Configure

Manage

Learn the key features
and business value
that the Enterprise
Asset Management
application offers.

Configure the Enterprise
Asset Management
application to meet
your specific needs.

Create and manage
your enterprise
models and assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
Procure

Dispatch

Workflows

Create and manage
your enterprise asset
inventory and contracts.

Create and manage
work orders for
enterprise assets.

Mobile experiences

Acquire

Reference

Use the Mobile application
to create and manage
enterprise assets
and asset tasks.

Use the Procurement
application to source
and receive requested
enterprise assets.

Get details about roles,
field descriptions,
domain separation,
and terminology.

Use the Service
Catalog application
to create catalog
requests for workflows.

Troubleshoot and get help
• Ask questions and explore other resources for Enterprise Asset Management in the
ServiceNow community
• Contact Customer Service and Support

Exploring Enterprise Asset Management
Use the Enterprise Asset Management application to optimize the quality and performance of
assets by reducing downtime, increasing asset utilization, and extending asset lifespan while
reducing operating costs for asset-intensive organizations.

Enterprise Asset Management overview
The Enterprise Asset Management automates the full lifecycle of your physical business assets
with prescriptive workflows. With Enterprise Asset Management, you can maximize the return
on your enterprise assets, control capital and operating costs, and reduce risk by tracking and
managing your assets from planning to disposal.

Enterprise Asset Management users
User

Description

Enterprise administrators

Work involves planning strategic initiatives,
managing capital planning, and optimizing
asset returns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
User

Description

Enterprise asset managers

Work involves decreasing downtime,
extending asset life, and rationalizing
inventory.

Enterprise technicians

Work involves increasing productivity and
improving response time.

Medical asset managers

Similar to the tasks carried out by an
enterprise asset manager, though specifically
within the healthcare sector.

Medical technicians

Similar to the tasks carried out by an
enterprise asset technician, though
specifically within the healthcare sector.

Facility asset manager

Similar to the tasks carried out by an
enterprise asset manager, though specifically
within the facility management sector.

Facility technician

Similar to the tasks carried out by an
enterprise asset technician, though
specifically within the facility management
sector.

Operational technology asset manager

Similar to the tasks carried out by an
enterprise asset manager, though specifically
within the operation technology sector.

Operational technology asset technician

Similar to the tasks carried out by an
enterprise asset technician, though
specifically within the facility management
sector.

Enterprise Asset Management workflow
The following illustration describes the tasks involved in the Enterprise Asset Management
workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Workflow depicting different users using the Enterprise Asset Management

1. A user in any role initiates a request for an asset using the Service Catalog application
2. The request is created and sent for approval.
3. Following approval, the asset manager begins the process of sourcing the requested asset.
4. The asset manager evaluates whether to source the asset locally from a stockroom, transfer it
from another location, or create a new purchase order.
5. The asset manager decides to create a new purchase order to source the asset.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
6. Upon receipt of the purchase order, the field technician deploys the asset.
7. The asset manager uses work order and work order tasks to track and manage work for the
asset.
8. Additionally, the asset manager can create contracts for the asset and manage by taking
actions on contracts that are nearing expiration or already expired.
9. The asset manager can also track the total cost of ownership for the asset.
10. As the asset approaches the end of its useful life, the asset manager assesses whether to
replace or dispose of the asset.
11. Based on the decision, the asset manager initiates either a refresh flow or a disposal flow for
the asset.

Enterprise Asset Management benefits
Benefit

Feature

Get visibility into all aspects
of your assets such as
dashboards, asset count by
model, lifecycle state, model
category, and the overall
performance of assets.

Enterprise Asset Workspace

Use your own customized
workspace for medical and
facility industries.

Configurable workspaces
for medical and facilities
industries

Users

• Enterprise administrator
• Enterprise asset manager

• Medical asset manager
(for the Medical Asset
Workspace)
• Medical asset technician
(for the Medical Asset
Workspace)
• Facility asset manager
(for the Facility Asset
Workspace)
• Facility asset technician
(for the Facility Asset
Workspace)
• Enterprise administrator
• System administrator

Maximize asset value with
comprehensive cost analysis
of owning and managing
assets.

Asset Total Cost of Ownership Enterprise asset manager
for Enterprise Asset
Management

Track, manage, and maintain
discrete enterprise and linear
assets.

Linear assets in Enterprise
Asset Management

Onboard single and multiple
assets using playbooks.

Playbooks for Enterprise Asset Enterprise asset manager
Management

Enterprise asset manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
Benefit

Feature

Users

Simplify enterprise asset
offboarding process using a
reclamation workflow.

Enterprise asset reclamation

Enterprise asset manager

Rate assets by risk level
and generate color-coded
heatmaps.

Risk scoring

Enterprise administrator

Track and manage work for
your enterprise assets by
using work orders.

Managing work orders for your Enterprise asset manager
enterprise assets

Create and manage enterprise Create and manage contracts
asset contracts.
for enterprise assets

• Enterprise administrator
• Enterprise asset manager

Get defective enterprise
assets in a stockroom
repaired quickly using the
Repair flow.

Repair flow

Enterprise asset manager

Locate and pick the assets in
your stockroom efficiently by
using the ServiceNow Mobile
Agent application.

Inventory picking for
Inventory user
Enterprise Asset Management

Track asset movement from
Managing inventory by putting Inventory user
the receiving bay of the
away enterprise assets
inventory to the designated
space within the stockroom
using the Asset put away task.
Return assets that are in your
personal stockroom easily by
creating Drop off tasks.

Drop off tasks

• Enterprise asset technician
• Enterprise asset manager

Receive enterprise and
Receiving enterprise and
consumable assets at
consumable assets at
stockrooms from any workflow stockrooms
at a centralized location

Asset managers/ Inventory
users

Assess how effectively and
Asset performance reports
efficiently assets fulfill their
intended functions within your
organization using the Asset
performance reports.

Asset managers

Track and manage stockrooms Inventory reports
efficiently by evaluating the
inventory reports.

Inventory users

Enhance maintenance
efficiency with standardized
and predefined failure and
resolution codes.

Enterprise administrators/
Inventory administrators/
Inventory users/Enterprise
asset technicians

Failure and resolution codes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
What to explore next
To learn more about configuring and using the Enterprise Asset Management application, see
the following topics:
• Configuring Enterprise Asset Management
• Managing enterprise models and assets
• Managing enterprise asset inventory and contracts
• Managing work orders for your enterprise assets
• Using Service Catalog for Enterprise Asset Management requests and flows

Enterprise Asset Workspace
Use the Enterprise Asset Workspace to get a comprehensive view of all your assets and manage
them efficiently.

Enterprise Asset Workspace landscape
The Enterprise Asset Workspace is a unified medium with multiple views. The views give you
visibility into all your assets, models, stockroom and stockroom types. You can also create
multiple workflows such as transfer orders, disposal orders, and also provides access to
analytics via dashboards.

Note: Include the Enterprise Asset Classes and Enterprise Model

Classes properties from the Asset Properties table in update sets whenever you move
any changes from one environment to another. For details on update sets, see Update Sets
transfer .
You can navigate to the Enterprise Asset Workspace in the following two ways:
• If the Next Experience UI Framework is turned on your instance: Select Workspaces and then
select Enterprise Asset Workspace.
• If the Next Experience UI Framework is turned off on your instance: On the left navigation bar,
enter Enterprise Asset Workspace. Select to open the Enterprise Asset Workspace
menu in a new tab.
The Enterprise Asset Workspace contains the following views:
• Enterprise asset overview for Enterprise Asset Workspace
• Asset Analytics overview for Enterprise Asset workspace
• Inventory overview for Enterprise Asset Workspace
• Enterprise asset estate overview for Enterprise Asset Workspace
• Enterprise model management overview for Enterprise Asset Workspace
• Normalization overview for Enterprise Asset Management
• Contract and lease management overview for Enterprise Asset Workspace

Inline editing
Ensure that you enable Inline editing in your ServiceNow instance to directly make changes to
fields instead of opening the record and changing the field on the form.

Note: Once you enable inline editing in your ServiceNow instance, it is enabled for all
ServiceNow applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
Enterprise asset overview for Enterprise Asset Workspace
Use the Enterprise asset overview as the landing page for the Enterprise Asset Workspace to get
insights into key metrics.
Use the Enterprise asset overview dashboard to perform the following tasks:
• Identify and attend to critical action items that require your immediate attention such as
entering missing manufacture data, model number, or asset tag information.
• Search for and track asset requests, transfer orders, stock orders, asset refresh requests,
disposal orders, and Return Merchandise Authorization (RMA) orders.
Enterprise asset overview

To access detailed information and take relevant action, select the relevant widget. You can
also narrow down your results by using the Location, Stockroom, Model category, and
Classification filters. For detailed information on the Classification filter, see Classification
codes.
Quick links on the dashboard
Widget

Description

Asset requests

Number of requested items where the item’s
model is a consumable or an enterprise
model.

Transfer order lines

Number of active transfer order lines.

Stock orders

Number of requested inventory stock order
items.

Refresh requests

Number of open assets refresh order requests.

Recall orders

Number of open recall orders.

Disposal orders

Number of open disposal orders.

Loaner asset orders

Number of requested loaner asset orders.

RMA orders

Number of open Return Merchandise
Authorization (RMA) orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


<!-- page 1544 -->
Asset Analytics overview for Enterprise Asset workspace
Use the Asset Analytics view to get a detailed view of all your assets, their overall performance,
and the asset total cost of ownership (TCO).

Enterprise Asset Dashboard
Use the Enterprise Asset Dashboard to get comprehensive information on all your enterprise
assets.
You can filter the data based on location, stockroom, model category, and classification.

360 asset view
Widget

Description

Asset count by model category

Number of assets grouped by the model
category such as Medical General, Medical
Diagnostic.

Asset count by lifecycle state

Number of assets grouped by the lifecycle
state such as Retired, In use, and In stock.

Asset value by model category

Cost of assets grouped by the model category
such as Vehicle, Cameras, and Field Devices.

Overall performance
Widget

Description

Model lifecycle overview

Overview of the model lifecycle grouped
by the lifecycle phase such as General
Availability, End of Life, End of Support, and
End of Sale.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1544


<!-- page 1545 -->
Overall performance (continued)
Widget

Description

Discovered and undiscovered asset count

Comparison of the number of discovered
and undiscovered assets grouped by model
category.

Assets available for refresh by model category Number of assets that have already expired
or the current day is the expiry date, and are
eligible for a refresh.

Asset TCO
This tab provides a detailed view of the TCO and displays key metrics that show the real-time
status of assets regarding TCO benchmarks.
You can create new comparative reports and view existing ones.
You can filter the data based on location, stockroom, model category, and classification.
Select View all to view a list of all the comparative reports. Only reports that have at least one
active report source are displayed with the exception of an offline report (where the cost type
is either Actual TCO or Projected TCO). To update data sources on an offline report, open the
report and select Run update job. This button only appears on an offline report. Once this job is
complete, the latest collection date gets updated.

Note: Offline reports will not appear in the list of comparative reports until the latest
collection date is populated.
You can select New to create a TCO report.
Select a report icon to directly open a report or select the report name to open the report form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1545


<!-- page 1546 -->
Widget

Description

Reached benchmark TCO

Number of assets that reached the benchmark
TCO.

Approaching benchmark TCO

Number of assets that are approaching the
benchmark TCO

Capital planning

Number of assets for capital planning. The
Assets for capital planning are assets that are
not retired and their current life cycle phase is
true.

Top 10 models with highest average TCO

A bar chart showing the top 10 models with the
highest average TCO.

Assets reached benchmark cost by category

Number of assets by category that reached
the benchmark cost.

Assets expense distribution

The asset expense distribution based on the
following cost types:
• Purchase - Asset
• Purchase - Part
• Configuration
• Software
• Contract - Lease
• Contract - Warranty

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1546


<!-- page 1547 -->
Widget

Description

• Contract - Maintenance
• Contract - Service
• Contract - Other
• Utilities
• Shipment
• Labor - Maintenance
• Labor - Repair
• Labor - General
• Resold value
Monthly asset expense distribution (last 12
months)

Distribution of assets over the last 12 months,
based on the following cost types:
• Purchase - Asset
• Purchase - Part
• Configuration
• Software
• Contract - Lease
• Contract - Warranty
• Contract - Maintenance
• Contract - Service
• Contract - Other
• Utilities
• Shipment
• Labor - Maintenance
• Labor - Repair
• Labor - General
• Resold value

Asset performance
The Asset performance tab provides details on the average values of the following key
performance indicators (KPIs):
• Availability
• Mean time between failures (MTBF)
• Mean time to repair (MTTR)

Note: For more details on calculation of KPIs, see Asset performance reports in the
Enterprise Asset Workspace.
By default, the Model category filter is applied to the KPI reports. To further narrow down and
focus on specific data, you can also select any one of the following filters:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1547


<!-- page 1548 -->
• Domain
• Location
• Classification
• Model

Note: You can apply a maximum of two filters to any KPI report.
You can see a weekly trend of the average KPI values in the report. The Asset Availability
list provides KPI details for all enterprise assets that are tracked. The average KPI values are
calculated based on the assets in this list.
When you select any KPI report, the KPI Details page appears. This page enables you to explore
the information within that KPI. You can set targets you want to achieve and also set signals to
notify you of any significant changes in the KPI.
Asset performance dashboard

Widget

Description

Availability Average availability percentage of all enterprise assets that are tracked, calculated
by dividing the total asset availability percentage by the number of assets listed in
the Asset availability report.
MTBF

Average MTBF of all enterprise assets that are tracked, calculated by dividing the
total Asset MTBF by the number of assets listed in the Asset availability report.

MTTR

Average MTTR of all enterprise assets that are tracked, calculated by dividing the
total Asset MTTR by the number of assets listed in the Asset availability report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1548


<!-- page 1549 -->
Widget

Description

Asset
Report that lists the availability and other related KPIs of all enterprise assets that
availability are tracked.

Data Visualizations
The Data Visualizations tab enables the asset managers to view and create data visualizations
in the Visualization Designer. As an asset manager, you can view the visualizations that are
bookmarked, certified, owned by you, and shared with you. You can only edit the visualizations
that you created.
Data Visualizations tab

Inventory overview for Enterprise Asset Workspace
Use the Inventory view in the Enterprise Asset Workspace to optimize inventory thresholds and
automate re-order process. You can create workflows and view detailed information on your
inventory.
Take care of any urgent inventory related action items such as entering a missing stockroom type
or stockroom name.
You can access the Inventory view by navigating to Enterprise Asset Workspace > Inventory.
To access detailed information and take relevant action, select any widget. You can also narrow
your results by using the Location, Stockroom, and Model category filters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1549


<!-- page 1550 -->
Inventory view

Use the following tabs to view your inventory:
• Overview: Get a glimpse of all your inventory data such as open transfer order lines, open
asset audits, and loaner asset orders by status.
• All stockrooms: Create new stockroom and view stockrooms where your inventory is stored.
• Stockroom types: Create new storeroom types and view the various types of storerooms
available for your inventory.
• Stock rules: Create new stock rules and view a list of existing stock rules.
• Asset audits: Create new asset audit records and view existing ones.
• Disposal orders: Create disposal order workflows for assets that have reached their end of life
cycle or are no longer functional.
• Loaner asset orders: View all loaner asset orders and take appropriate actions.
• RMA orders: View all Return Merchandise Authorization (RMA) orders for your defective
assets and take appropriate actions.
• RMA order lines: View all Return Merchandise Authorization (RMA) order lines within your
RMA orders and take appropriate actions.
• Transfer orders: Create transfer order workflows for moving assets between your stockrooms.
• Recall orders: Create recall order workflows for assets that have been recalled by the asset
vendor.
• Reclamation requests: View and fulfill all your reclamation requests.
• Resale orders: View and fulfill all your asset resale requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1550


<!-- page 1551 -->
• Move orders: Create and view move orders for assets that need to be moved from one
location to another.
• Repair orders: View the list of repair orders submitted for repair of assets with your stockroom.
You can also create repair orders.
Enterprise asset estate overview for Enterprise Asset Workspace
Use the Enterprise asset estate view in the Enterprise Asset Workspace to create and manage
your assets. You can also view details such as asset life cycle by state, disposed assets this year,
and asset requests.
Take care of any urgent asset related action items such as entering a missing asset tag or asset
function.
You can access the Enterprise asset estate view by navigating to Enterprise Asset Workspace >
Enterprise asset estate.
To access detailed information and take relevant action, select any widget. You can also narrow
your results by using the Location, Stockroom, and Model category filters.
Enterprise asset estate view

Enterprise asset estate overview
Widget or chart

Description

Asset warranty expirations this year

Count of assets that are expiring this current
year.

Asset requests

Count of enterprise and consumable requests
in the catalog.

Assets refresh request

Count of assets that are pending refresh.

Lease contract expiration in 90 days

Contracts expiring in 90 days.

Assets eligible for refresh

Assets nearing end of life and which are
eligible for refresh.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1551


<!-- page 1552 -->
Enterprise asset estate overview (continued)
Widget or chart

Description

Disposed assets this year

Assets disposed this current year.

Assets disposed by model category

Assets disposed until the current date in this
year and grouped by their model category.

Enterprise asset risk heat map

Displays the risk heat map for number of
assets that have the likelihood and impact
values. To view this heat map, ensure that the
band score records in the Risk Score module
are frozen.

Procurement overview for Enterprise Asset Workspace
View and manage procurement-related details such as procurement requests, purchase orders,
sourcing tasks, and receiving slips through the Enterprise Asset Workspace.
The Procurement view in the Enterprise Asset Workspace provides access to actions for
managing your open requests, pending purchase orders and transfer orders, and requests that
need manager approval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1552


<!-- page 1553 -->
Procurement view

Select any widget or chart to view more specific details. You can also narrow down your results
by using the Location, Stockroom, and Domain filters.

Note: The Domain filter is available only when you’ve enabled the Domain Extensions
Installer (com.glide.domain.msp_extensions.installer) and Domain Separation (plugin
com.snc.pa.domain_support) plugins.
Procurement overview
Widget or chart

Description

Purchase
order pending
delivery

Count of purchase orders that aren't received and aren't canceled. Only
purchase orders that have a status of Requested, Ordered, or Pending
Delivery are displayed.

Requests
pending
approval

Count of sourceable and active requests with the request state of Pending
approval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1553


<!-- page 1554 -->
Procurement overview (continued)
Widget or chart

Description

Expenditure by Cost that you've paid to each of your vendors for procuring the inventory. Only
vendor
purchase orders that have a status of Ordered, Pending Delivery, or Received
are listed.
Orders by
vendor

Counts of purchase orders that have been ordered, are pending delivery, or
have been received by individual vendors.

Requests by
state for last
30 days

Requests created in the last 30 days grouped by their state.

Requests
that require
sourcing

List of requests for which a purchase order, local order, or transfer order hasn't
been initiated.

Open
purchase
orders

List of purchase orders that have been requested or ordered or have not been
delivered.

Enterprise model management overview for Enterprise Asset Workspace
Use the Enterprise model management view in the Enterprise Asset Workspace to create and
manage enterprise models. You can also view details such as model lifecycle overview, model
status, and enterprise models up for end of life.
Take care of any urgent model related action items such as entering a missing model number or
manufacture name.
You can access the Enterprise model management view by navigating to Enterprise Asset
Workspace > Enterprise model management.
To access detailed information and take relevant action, select any widget. You can also narrow
your results by using the Model category filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1554


<!-- page 1555 -->
Enterprise model management view

Model overview
Widget or chart

Description

Enterprise models up for end of life this year

Count of enterprise models whose start date
of the end of life phase is the current year.

Consumable models up for end of life this year Count of consumable models whose start date
of the end of life phase is the current year.
Missing data

Count of models that have missing model
name, manufacturer, and model number.

Model lifecycle overview

Count of models that are present in each life
cycle stage such as General Availability, End of
Support, End of Life, and End of Sale.

Alternate equipment maintenance models

Count of models for which alternate
equipment maintenance is enabled and are
grouped by model categories.

Model status

Current count of models based on the status
of the models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1555


<!-- page 1556 -->
Model overview (continued)
Widget or chart

Description

Enterprise model risk heat map

Displays the risk heat map for number of
models that have the likelihood and impact
values. To view this heat map, ensure that the
band score records in the Risk Score module
are frozen.

Note: If risk likelihood, risk impact, and
risk score are not frozen, the heat map
is rendered in a draft mode with no risk
values in the model record. If only one
of these vectors is frozen, the heat map
is not rendered. If all three vectors are
frozen, the heat map is rendered in a
production mode and the risk values are
populated in the model record.
Normalization overview for Enterprise Asset Management
Use the Normalization view in the Enterprise Asset Workspace to view information related to
normalization such as normalization status, model content service download, lifecycle overview.
You can also create custom enterprise model types, product models, and model libraries from
this view.
You can access the Normalization view by navigating to Enterprise Asset Workspace >
Normalization.
Enterprise model normalization

Normalization widgets
Widget

Source

Enterprise models up for end
of life

Enterprise Model Lifecycle
[sn_eam_model_lifecycle]

Description

The beginning phase of the
end of life for enterprise

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1556


<!-- page 1557 -->
Normalization widgets (continued)
Widget

Source

Description

models. Shows the count of
enterprise models whose start
date of the end of life phase
is either the current month,
quarter, or year.

Note: Only enterprise
model life cycle records
that are active, model
status is in production,
and life cycle type is
Publisher appear in This
month, This quarter, or
This year
Normalization status

Lifecycle overview

Normalization status of all the
enterprise models. View the
count of enterprise models
that were normalized and
those models that didn't get
normalized. For details on
the normalization status,
see Normalization status for
enterprise models.
Enterprise Model Lifecycle
[sn_eam_model_lifecycle]

The count of enterprise
models that are present in
each life cycle stage: General
availability, end of support,
end of extended support, and
end of sale.

Note: Only enterprise
model life cycle records
that are active appear in
this widget.
Enterprise model content
service download.
• Days until next content
download
• Days since last content
download

Data Services
Download Schedules
[cds_client_schedule]

The days since the content
service library was last
downloaded on your instance
and the days remaining for the
next download to take place.

Contract and lease management overview for Enterprise Asset Workspace
Use the Contract and lease management view in the Enterprise Asset Workspace to create and
manage your enterprise asset contracts.
You can access the Contract and lease management view by navigating to Enterprise Asset
Workspace > Contract and lease management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1557


<!-- page 1558 -->
Contract and lease management view

Use the following tabs to view and manage your enterprise asset contracts:
• Overview: Get a glimpse of all your contract data, including the contract expenditure by type,
contract expenditure by vendor, and expiring contracts. You can narrow down this data by
using the Domain, Type, and Vendor filters.
In addition, view all important actions for your enterprise asset contracts.
• All contracts: Create and view contracts for your enterprise assets. Supported contract types
include lease, insurance, maintenance, warranty, purchase agreement, non-disclosure, terms
& conditions, service, purchase order, software license, and subscription.
• Lease contracts: Create and view contracts for your leased enterprise assets.
• Leased assets: View all leased enterprise assets across your organization.
• Lease-end assets: View all leased enterprise assets that are associated with contracts for
which the lease-end process has begun. Take action on any of the leased enterprise assets
that do not have a State of Complete.
• My contracts: View all enterprise asset contracts that you are managing.
• My contract tasks: View all open tasks for the enterprise assets that are associated with the
contracts you are managing.
• My contract approvals: View all enterprise asset contract and contract renewal requests that
are waiting for your approval.
• Terms and conditions: Create and view terms and conditions for your enterprise asset
contracts.
For more information on contracts, see Contract Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1558


<!-- page 1559 -->
Asset operations overview for Enterprise Asset Workspace
Use the Asset operations view in the Enterprise Asset Workspace to track and manage
shipments, service catalog requests, requested items, catalog tasks, and contract renewal
requests.
Use the Asset operations view to perform the following tasks:
• View and create shipments
• Create shipment notifications
• View the list of all import records that were performed in any stockroom. For more details, see
Import and receive assets in bulk at your stockroom in the Enterprise Asset Workspace.
• View onboarding requests and tasks
• Create and view move orders.
• Create onboarding orders to onboard multiple enterprise assets at one go. For more details,
see Onboarding multiple enterprise assets in the Enterprise Asset Workspace.
• Create Calculated model lifecycle templates for enterprise models. For more details, see
Manage the lifecycle of enterprise models with calculated lifecycle templates.
Asset operations view

After you’ve created your request in the Service Catalog application, you can view the request,
the requested items, the catalog tasks, and source the request from the Enterprise Asset
Workspace.

Note: All requests created for hardware assets and enterprise assets are listed in the

Requests list section. Similarly all catalog tasks created for hardware assets and enterprise
assets are listed in the Catalog tasks list section. The Requested items list section only
shows the requested items pertaining to enterprise assets.
Work management overview for Enterprise Asset Workspace
Use the Work management view in the Enterprise Asset Workspace to create and manage
maintenance plans, work orders, and work order tasks.

Important: Before you can access and use the Work management view, edit your Field
Service Management configurations as needed. See Edit Field Service Management
configurations for the Work management view for detailed instructions.
You can access the Work management view by navigating to Enterprise Asset Workspace >
Work management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1559


<!-- page 1560 -->
Note: Only users with the system administrator (admin), enterprise asset manager
(sn_eam.enterprise_asset_manager), and agent (wm_agent) roles can access the Work
management view.
To access detailed information and take relevant action, click any widget. You can also narrow
your results by using the Location filter.
Work management view

Use the following tabs to view and manage your work orders, work order tasks, maintenance
plans, and other relevant work order information:

Note: The tabs that appear on the Work management view differ based on your assigned
role.
• Overview: Get a glimpse of all your work order data, such as part requirements for open
orders, active work orders by state, work orders per month, and active maintenance plans.

Note: This tab appears if you have the system administrator (admin) or enterprise asset
manager (sn_eam.enterprise_asset_manager) role.
• Calibrations and conditions: Get a glimpse of all your calibration data and an overview of
asset conditions.

Note: This tab appears if you have the system administrator (admin) or enterprise asset
manager (sn_eam.enterprise_asset_manager) role.
• My work: View all open requests and tasks that are associated with your work orders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1560


<!-- page 1561 -->
Note: This tab appears if you have the system administrator (admin) or agent
(wm_agent) role.
• Maintenance plans: Create and view maintenance plans for your enterprise assets.

Note: This tab appears if you have the system administrator (admin) or enterprise asset
manager (sn_eam.enterprise_asset_manager) role.
• Work orders: Create and view work orders for any planned or ad-hoc work that you want to
perform on your enterprise assets.

Note: This tab appears if you have the system administrator (admin), enterprise asset
manager (sn_eam.enterprise_asset_manager), or agent (wm_agent) role.
• Work order tasks: View all work order tasks that are associated with your work orders.

Note: This tab appears if you have the system administrator (admin), enterprise asset
manager (sn_eam.enterprise_asset_manager), or agent (wm_agent) role.
• Asset tasks: View all tasks for the enterprise assets that are associated with your work orders.

Note: This tab appears if you have the enterprise technician
(enterprise_asset_technician) or agent (wm_agent) role.
• Work order templates: Create and view templates for your work orders.

Note: This tab appears if you have the system administrator (admin) or enterprise asset
manager (sn_eam.enterprise_asset_manager) role.
• Checklist templates: Create and view checklist templates for your work orders.

Note: This tab appears if you have the system administrator (admin) or enterprise asset
manager (sn_eam.enterprise_asset_manager) role.
• My stockroom assets: View enterprise assets that are available within your stockrooms.

Note: This tab appears if you have the system administrator (admin) or agent
(wm_agent) role.
• My asset pickup tasks: View all scheduled pickup tasks for the enterprise assets that are
associated with your work orders.

Note: This tab appears if you have the system administrator (admin) or agent
(wm_agent) role.
Admin center overview for Enterprise Asset Workspace
Use the Admin center view in the Enterprise Asset Workspace to perform all your configuration
and administrative tasks.
Only the Enterprise admin [sn_eam.enterprise_admin] and the Enterprise asset manager
[sn_eam.enterprise_asset_manager] roles can view and perform operations in the Admin center
view.
Use the Admin center to perform the following tasks:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1561


<!-- page 1562 -->
• Configure model and asset tabs
• Create model categories
• Create and import classification codes
• Create sources for classification codes
• Create linear asset types
• Create stockroom types
• Import enterprise models and assets
• Workflow assignments
• Create and view task rate and labor rate cards
• Create configuration values for risk likelihood, risk impact, and risk scores
• Create shipment carriers
• Integrate with third-party shipping carriers
• Create a knowledge article
• Opt-in to Enterprise Asset Management
• Create failure and resolution codes
• Set up the configurations to monitor the key performance indicators (KPIs) of the enterprise
assets

Expanded Model and Asset Classes Store application
The Expanded Model and Asset Classes Store application adds model and asset classes that
extend out-of-the-box classes within the Configuration Management Database (CMDB) class
hierarchy. These extensions include class descriptions, identification rules, identifier entries, and
dependent relationships. The application also adds model categories and API categories.

Note: This application is compatible with the Rome and later family releases.
For more information on the CMDB, see Configuration Management Database (CMDB)

.

In addition to extending CMDB model and asset classes, the Expanded Model and Asset
Classes application creates model categories that associate model and asset classes with
CMDB configuration item (CI) classes. The Enterprise Asset Management application uses these
classes and model categories to create asset and model records that can be used to track and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1562


<!-- page 1563 -->
®

manage enterprise assets. Discovery tools, such as the ServiceNow Discovery application, can
also use these classes and model categories to create asset and model records for discovered
CIs. See Model categories for more information on model categories.
The Expanded Model and Asset Classes application also adds the API and Managed API model
categories, which allow the Configuration Management Database (CMDB) application to create
and associate application models with API and Managed API CMDB CI classes. API CMDB CI
classes provide classifications for APIs (application programming interfaces), which are sets
of definitions and protocols that enable computer programs to communicate with each other.
Managed API CMDB CI classes provide classifications for APIs that are discovered through
gateways or management services, such as Amazon API Gateway. By associating application
models with these CMDB CI classes, the Configuration Management Database (CMDB)
application can create version-agnostic representations of your APIs. These representations can
then provide a more holistic view of each API during reporting and analysis. For more information
on API and Managed API CMDB CI classes, see API extension classes .

Enterprise model classes added by the application
The Expanded Model and Asset Classes application adds the Enterprise good model
[sn_ent_model] class, Firmware model [sn_ent_firmware_model] class, and Discovered
firmware model [sn_ent_discov_firmware_model] class, which extend the base Product model
[cmdb_model] class. The Enterprise good model [sn_ent_model] class includes classifications
for various enterprise model types, which are categorized into the following industry-based child

classes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1563


<!-- page 1564 -->
Enterprise Good Model Child Classes
Enterprise good model child class

Description

Medical model

Classifies medical-based enterprise models, such as ER
Medical Cart Kit and ECG Electrodes.

[sn_ent_medical_model]
Medical device model
[sn_ent_medical_device_model]

Classifies medical device-based enterprise models, such
as Blood Pressure Monitor and MRI Patient Table.

Note: When you upgrade to version 1.2.0 or
later of the Expanded Model and Asset Classes
application, the application automatically runs
the Update medical device category
fix script to associate the Medical Device model
[sn_ent_medical_device_model] class with
the existing Medical device model category.
However, you may need to manually reclassify
existing enterprise models under the Medical
device model category from the Medical model
[sn_ent_medical_model] class to the Medical
Device model [sn_ent_medical_device_model]
class. Refer to KB1182183
for detailed instructions.
Product Instance Identifier (PID) which is a unique
and common identifier that links the asset, CI, and IBI
classes is generated for the assets of Medical Device
model category. PID is generated based on the PID
configurations applicable for the Medical Device model
category.
The Product Instance Identifier Configurations
[product_instance_identifier_configuration] table
stores the PID configurations. By default, the following
configurations are available:
• PID - Serial number that includes a parameter
defined based on the Serial number field of the Asset
[alm_asset] table.
• PID - Parent that includes parameters defined based
on the Parent and Model Component ID fields of the
Asset [alm_asset] table.
When many PID configurations are associated with
the Medical Device model category, the configuration
with the highest priority is considered first during
the generation of the PID. The PID - Serial number
configuration is mostly given the highest priority.
Medical drug model
[sn_ent_drug_model]
Facility model
[sn_ent_facility_model]

Classifies medical drug-based enterprise models, such
as Amoxicillin and Prilosec.
Classifies facility-based enterprise models, such as
HVAC Split System and Wire Shelf.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1564


<!-- page 1565 -->
Enterprise Good Model Child Classes (continued)
Enterprise good model child class

Description

Transportation model

Classifies transportation-based enterprise models, such
as Disc Brake Rotor Front and Fuel Cell Car.

[sn_ent_transportation_model]
Industrial model
[sn_ent_industrial_model]
Retail model
[sn_ent_retail_model]
Tactical equipment model
[sn_ent_tactical_model]
Construction model
[sn_ent_construction_model]
Wearable model
[sn_ent_wearable_model]
Multimedia production equipment
model
[sn_ent_mm_prod_equip_model]
System and smart card model
[sn_ent_system_smart_card_model]
Payment card model
[sn_ent_payment_card_model]

Classifies industrial-based enterprise models, such as
CNC Milling Machine and Laser Cutting Machine.
Classifies retail-based enterprise models, such as Retail
Counter Scale and 80mm Thermal Receipt Printer.
Classifies tactical equipment-based enterprise models,
such as K19 Plate Carrier and Triple Mag Pouch.
Classifies construction-based enterprise models, such
as Excavator and Hex Breaker Hammer Kit.
Classifies wearable asset-based enterprise models, such
as N95 Respirator and High-vis Safety Vest.
Classifies multimedia production equipment-based
enterprise models, such as Production Camera and
Modular Broadcast Console.
Classifies system card- and smart card-based enterprise
models, such as Smart Card and Magnetic Stripe Card.
Classifies payment card-based enterprise models, such
as Debit Card and Credit Card.

Important: In the Zurich release, the Classification (classification) column in the
Enterprise good model [sn_ent_model] table has been deprecated and renamed as
Classification (deprecated). The data from this column is available in the new Classification
(classification_code) column in the Product model [cmdb_model] table.
Reports in the Enterprise Asset Workspace that previously referred to the Classification
column in the Enterprise good model table now reference the new Classification
(classification_code) column in the Product model table.

Enterprise asset classes added by the application
The Expanded Model and Asset Classes application adds the Enterprise asset
[sn_ent_asset] class, which extends the Base asset [alm_base] class. The
Enterprise asset [sn_ent_asset] class includes classifications for various enterprise

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1565


<!-- page 1566 -->
asset types, which are categorized into the following industry-based child

classes:
Enterprise Asset Child Classes
Enterprise asset child class

Description

Medical asset

Classifies medical-based enterprise assets, such as hospital
beds and X-ray machines.

[sn_ent_medical_asset]
Facility asset
[sn_ent_facility_asset]
Transportation asset
[sn_ent_transportation_asset]
Industrial asset
[sn_ent_industrial_asset]
Retail asset
[sn_ent_retail_asset]
Tactical equipment asset
[sn_ent_tactical_asset]

Classifies facility-based enterprise assets, such as coffee
makers and HVAC systems.
Classifies transportation-based enterprise assets, such as
airplanes and brake pads.
Classifies industrial-based enterprise assets, such as forklifts
and casting machines.
Classifies retail-based enterprise assets, such as display
cases and clothing racks.
Classifies tactical equipment-based enterprise assets, such
as hydration carriers and tactical plate carriers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1566


<!-- page 1567 -->
Enterprise Asset Child Classes (continued)
Enterprise asset child class

Description

Construction asset

Classifies construction-based enterprise assets, such as
sledgehammers and hand saws.

[sn_ent_construction_asset]
Wearable asset
[sn_ent_wearable_asset]
Multimedia production
equipment asset

Classifies wearable enterprise assets, such as helmets and
uniforms.
Classifies multimedia production equipment, such as video
mixers and broadcast sync generators.

[sn_ent_mm_prod_equip_asset]
System and smart card asset
[sn_ent_sys_smart_card_asset]

Classifies system cards and smart cards, such as magnetic
stripe cards.

Service model classes added by the application
The Expanded Model and Asset Classes application adds the following child classes to the base
Service model [cmdb_service_product_model] class. These child classes provide classifications
for various service model types.
Service Model Child Classes
Service model child class

Role required for read access

Description

Card service model

sn_ent.card_service_model_viewer

Classifies
service
models that
are based on
card offerings
from banks
and financial
institutions,
such as credit
cards and gift
cards.

sn_ent.deposit_account_model_viewer

Classifies
service
models that
are based
on deposit
accounts
offered by
banks and
financial
institutions,
such as
savings and
checking
accounts.

[sn_ent_card_service_model]

Deposit model
[sn_ent_deposit_account_model]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1567


<!-- page 1568 -->
Service Model Child Classes (continued)
Service model child class

Role required for read access

Description

Loan model

sn_ent.loan_account_model_viewer

Classifies
service
models that
are based on
loan options
offered by
banks and
financial
institutions,
such as
personal
loans and
mortgage
loans.

sn_ent.line_of_credit_model_viewer

Classifies
service
models that
are based
on lines of
credit offered
by banks
and financial
institutions,
such as
overdrafts
on savings
and checking
accounts.

sn_ent.financial_services_model_viewer

Classifies
service
models that
are based
on financial
services
offered by
banks and
financial
institutions,
such as safe
lockers and
wire services.

sn_ent.investment_model_viewer

Classifies
service
models that
are based
on wealth
management
options
offered by
banks and
financial

[sn_ent_loan_account_model]

Line of credit model
[sn_ent_line_of_credit_model]

Financial service model
[sn_ent_financial_services_model]

Investment model
[sn_ent_investment_model]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
Service Model Child Classes (continued)
Service model child class

Role required for read access

Description

institutions,
such as
mutual
funds and
retirement
planning.
Personal lines insurance product
model

sn_ent.b2c_ins_policy_model_viewer

Classifies
service
models that
are based
on personal
lines
insurance
policies
offered by
insurance
carriers, such
as coverage
and payment
plans for
personal auto
insurance.

sn_ent.b2b_ins_policy_model_viewer

Classifies
service
models that
are based on
commercial
lines
insurance
policies
offered by
insurance
carriers, such
as coverage
and payment
plans for
commercial
property
insurance.

[sn_ent_b2c_ins_policy_model]

Commercial lines insurance product
model
[sn_ent_b2b_ins_policy_model]

Group life insurance product model

sn_ent.group_life_ins_policy_model_viewer Classifies
service
[sn_ent_group_life_ins_policy_model]
models that
are based
on group life
insurance
policies
offered by
insurance
carriers, such
as coverage
and payment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
Service Model Child Classes (continued)
Service model child class

Role required for read access

Description

plans for
group term
life insurance.
Individual life product model

sn_ent.indiv_life_ins_policy_model_viewer

Classifies
service
models that
are based
on individual
life insurance
policies
offered by
insurance
carriers, such
as coverage
and payment
plans for
individual
whole life
insurance.

sn_ent_medical_insurance_model_viewer

Classifies
medical
insurance
models,
including
health
insurance
plans and
government
insurance
programs
such as
Medicare or
Medicaid.

sn_ent.social_benefit_model_viewer

Classifies
service
models that
are based
on social
insurance
programs and
means-tested
assistance
programs,
such as
social
security
and the
Supplemental
Nutrition
Assistance

[sn_ent_indiv_life_ins_policy_model]

Medical insurance model
[sn_ent_medical_insurance_model]

Social benefit model
[sn_ent_social_benefit_model]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
Service Model Child Classes (continued)
Service model child class

Role required for read access

Description

Program
(SNAP).
Investigative service model

N/A

Classifies
service
models that
are based on
the types of
cases that
government
and private
agencies
investigate,
such as fraud
and assault.

[sn_ent_investigative_service_model]

Contract model classes added by the application
Contract model class

Role required for read access

Description

Permit model

contract_manager

The Permit model is an
extension of the Contract
model table and is used to
model licenses and permits
that have been issued and
entitles the recipients to
perform certain activities
or make use of specific
resources.

[sn_ent_permit_model]

Firmware model and Discovered firmware model classes
The Expanded Model and Asset Classes application adds the Firmware model
[sn_ent_firmware_model] and Discovered firmware model [sn_ent_discov_firmware_model]
classes. These firmware model class tables extend the tables that the CMDB CI Data Foundation
application installs.
The Firmware installation [cmdb_firmware_install] table added with the CMDB CI class model
application stores the installation records based on the firmware embedded into assets. Based
on the records in the Firmware installation table, the Discovered firmware model and Firmware
model tables store the details of the firmware.

AI model classes added by the application
The Expanded Model and Asset Classes application adds the AI system component
product model [cmdb_ai_systems_component_product_model] class, which extends the
Software component model [cmdb_sw_component_model] class. The application also adds
the AI content product model [cmdb_ai_content_product_model] class, which extends
the Content product model [cmdb_content_product_model] class. Both the Software
component model [cmdb_sw_component_model] class and Content product model
[cmdb_content_product_model] class extend the base Product model [cmdb_model] class.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
The AI system component product model [cmdb_ai_systems_component_product_model] class
classifies product models that are based on AI system components, such as machine learning,
Natural Language Processing (NLP), and generative or agentic AI.
The AI content product model [cmdb_ai_content_product_model] class includes classifications
for various AI content model types, which are categorized into the following child classes:
AI content product model child classes
AI content product model child class

Description

AI model product model

Classifies content models for the AI models that are used
to generate AI system responses without any human
intervention. Examples of AI models include Now LLM and
GPT 3.5 Turbo.

[cmdb_ai_model_product_model]
AI dataset product model

Classifies content models for the datasets that are used
to train and test AI models. Examples of datasets include
[cmdb_ai_dataset_product_model] Wikipedia and Google Open Images.
AI prompt product model

Classifies content models for the prompts, or instructions,
that are given to AI models to generate AI system
[cmdb_ai_prompt_product_model] responses without any human intervention. Examples of
prompts include sets of instructions to generate x-char
summaries for given inputs in specific tones or voices.

AI asset classes added by the application
The Expanded Model and Asset Classes application adds the AI digital asset
[alm_ai_digital_asset] class, which extends the Information asset [alm_information_asset] class.
The Information asset [alm_information_asset] class extends the base Asset [alm_asset] class.
The AI digital asset [alm_ai_digital_asset] class includes classifications for various AI asset
types, which are categorized into the following child classes:
AI digital asset child classes
AI digital asset child class

Description

AI system digital asset

Classifies the software artifacts that provide machine learning
(ML) and AI capabilities for generating outputs, such as
[alm_ai_system_digital_asset] decisions, recommendations, content, and predictions.
Examples include incident summarization and fraud detection
capabilities.
AI model digital asset
[alm_ai_model_digital_asset]

Classifies the AI models that are used to generate AI system
responses without any human intervention. Examples include
Now LLM and GPT 3.5 Turbo.

AI dataset digital asset

Classifies the datasets that are used to train and test AI
models. Examples include Wikipedia and Google Open
[alm_ai_dataset_digital_asset] Images.
AI prompt digital asset

Classifies the prompts, or instructions, that are given to AI
models to generate AI system responses without any human
[alm_ai_prompt_digital_asset] intervention. Examples include sets of instructions to generate
x-char summaries for given inputs in specific tones or voices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


<!-- page 1573 -->
Requesting the Expanded Model and Asset Classes application
You must request the Expanded Model and Asset Classes application from the ServiceNow
Store.
Visit the ServiceNow Store
website to view all available applications and for information about
submitting requests to the Store. For cumulative release notes information for all released
applications, see the ServiceNow Store version history release notes .
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter Expanded Model and Asset Classes and then click Search.
4. Select the result called Expanded Model and Asset Classes.
5. On the Expanded Model and Asset Classes page, click Request Install.
The ServiceNow Request for App Installation - Expanded Model and Asset Classes dialog box
opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - Expanded Model and Asset Classes dialog box
Field

Description

Instance
Name

Name of the instance on which you want to install the application. After you enter
the instance name, click Validate Instance to verify that the instance exists.

Reason
for
request

Reason for requesting the application.

7. Click Request.
8. Click Close.
If your request is approved, you will receive an email with detailed instructions on how to install
the application. You can then install the application according to the instructions in the email.

Verifying successful application installation
After you request and install the Expanded Model and Asset Classes application, verify that all
enterprise model and asset classes have been added to the CMDB class hierarchy successfully.
1. From your ServiceNow instance, navigate to All > Configuration > CI Class Manager.
2. Click Hierarchy to display the CI Classes list, where you can view all classes within the CMDB
class hierarchy.
3. Verify that all enterprise model and asset classes have been added to the list.
4. (Optional) Select a class to verify the corresponding class description, identification rules,
identifier entries, and dependent relationships.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
Warning: Uninstalling the Expanded Model and Asset Classes application may
compromise the integrity of the Enterprise Asset Management application, resulting in
unexpected behavior.

OT Asset Management
Operational Technology (OT) Asset Management is a specialized offering within the suite
of Enterprise Asset Management solutions for managing Operational Technology (OT) and
Operational Equipment (OE) assets. With OT Asset Management, you can effectively manage the
lifecycle of OT and OE assets.
OT Asset Management is a licensable application that helps you to manage assets of
the Industrial model category for Operational Technology. The OT Asset Management
(com.sn_otam) application is available on the ServiceNow Store. When this application is
installed on your ServiceNow instance, the Enterprise Asset Management application also gets
installed. For more information, see Install OT Asset Management.
The OT Asset Management application provides the functionalities, features, and workflows of
Enterprise Asset Management that support roles related to Operational Technology.
OT Asset Management licensing
®

The ServiceNow platform uses a licensing method where your organization is charged for using
the OT Asset Management application. In this licensing model, all assets of the Industrial and
Hardware model categories are charged based on the Subscription unit ratio.
®

The ServiceNow OT Asset Management licensing is based on resource categories. A resource
category is a group of related model categories. The OT Asset Management application supports
some default resource categories. These resource categories enable assets of the Industrial
and Hardware model categories to use the features and workflows of the OT Asset Management
application. Any asset of the Industrial and Hardware model category is counted toward a
Subscription Unit based on the predefined ratio of number of assets to subscription units.
When you create a custom model category with a licensable Industrial or Hardware model
category as its parent, the custom model category is automatically associated with the resource
category of the parent model category. Based on the resource category, the assets of these
custom model categories are licensed and counted toward a Subscription Unit.

Note: When the OT Asset Management application is activated on your ServiceNow
instance, all the OT Asset Management license resource categories are opted in by default.
OT Asset Management license resource categories
Resource
category

Subscription
Model category
unit ratio

Unclassed
OT

1:1

OT
Supervisory
System

1:1

• Industrial
• Industrial General

• OT Supervisory
• OT Supervisory EWS
• OT Supervisory Historian
• OT Supervisory HMI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
OT Asset Management license resource categories (continued)
Resource
category

Subscription
Model category
unit ratio

• OT Supervisory OPC
• OT Supervisory SCADA
OT Control
System

3:1

• OT Control
• OT Control 3D Printer
• OT Control CNC
• OT Control DCS
• OT Control DPU
• OT Control IED
• OT Control Module
• OT Control PLC
• OT Control RTU
• OT Control SCADA
• OT Control Server

OT Field
Devices

10:1

• OT Field Actuator
• OT Field Device
• OT Field Drive
• OT Field Robot
• OT Field Sensor

Industrial
Consumable

25:1

Any consumable asset created using any of the preceding model
categories.

Operational
Equipment

1:1

Not applicable

Hardware resource categories
OT Servers

1:1

Any model category which contains Server in the name and
belongs to the alm_asset or alm_hardware class. Examples:
• AIX Server
• ESX Server
• HPUX Server
• Linux Server
• Netware Server
• OS/X Server
• Solaris Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
OT Asset Management license resource categories (continued)
Resource
category

Subscription
Model category
unit ratio

• UNIX Server
• Windows Server
OT Network
Gear

5:1

• IP Router
• IP Switch
• Network Gear

OT Storage

3:1

Storage Device

OT End User
Computers

4:1

Computer

OT Mobile
Devices

10:1

Mobile Device

OT Monitors

15:1

Monitor

OT Printers

10:1

Printer

OT
Unclassified
Hardware

1:1

Hardware

The Subscription unit ratio is the ratio of the number of assets to the number of subscription
units. For example, the subscription unit ratio of Industrial Consumable is 25:1, where 25 assets
require a single unit of license. If 1 license costs $100, then 25 industrial consumable assets cost
$100 and 50 industrial consumable assets cost $200.
You can view the subscription details of your OT Asset Management application using the ITAM
License Report. For more details, see View the license report for the OT Asset Management
application.

OT hardware assets in OT Asset Management licensing
The OT Asset Management licensing model includes a few default hardware resource categories
to license OT hardware assets.
In the OT Asset Management licensing model, only hardware assets with the OT entity flag
set to true are licensed and counted toward a Subscription unit under the hardware resource
categories of OT Asset Management licensing. The OT Asset Management workflows support OT
hardware assets.

Note: Non-OT Hardware assets with the OT entity flag set to false can't use the features
and workflows of the OT Asset Management application even if you have installed the
application. The non-OT hardware assets aren't licensed under OT Asset Management.
The Hardware Asset Management (HAM) licensing model includes default resource categories
equivalent to the hardware resource categories of OT Asset Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
Comparison of resource categories
OTAM hardware resource category

Equivalent HAM resource category

OT Servers

Servers

OT Network Gear

Network Gear

OT Storage

Storage

OT End User Computers

End User Computers

OT Mobile Devices

Mobile Devices

OT Monitors

Monitors

OT Printers

Printers

OT Unclassified hardware

Unclassified Hardware

When both OT Asset Management and Hardware Asset Management applications or licensed
HAM solutions are activated, and HAM resource categories are opted in, consider the following
points:
• OT hardware assets are licensed only under the hardware resource categories of OT Asset
Management licensing.
• Non-OT hardware assets are licensed only under the resource categories of HAM licensing.
• OT Asset Management workflows support only OT hardware assets.
• HAM workflows support both OT hardware assets and non-OT hardware assets.
For more details on licensing hardware assets, see Licensing framework for Hardware Asset
Management solutions.
View the license report for the OT Asset Management application
View details of the subscriptions consumed by your organization for the OT Asset Management
application by using the ITAM License Report.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

The EAM Populate Licensing Data job runs every Sunday and populates the ITAM License
Report. Any changes to the license consumption will reflect on the ITAM license report only after
the weekly license count calculation.

Procedure
1. Navigate to All > ITAM Licensing > ITAM License Report.
2. Search for the OT Asset Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
You can view the following information on subscriptions consumed for the resource categories
for the OT Asset Management application.
◦ Application: Name of the application that is activated on your ServiceNow instance. The
ITAM License Report can be grouped by the application.
◦ Resource Category: Managed OT resource types available for the OT Asset Management
application. The resource types include the following:
▪ Unclassed OT
▪ OT Supervisory System
▪ OT Control System
▪ OT Field Devices
▪ Industrial Consumable
▪ Operational Equipment
▪ OT Servers
▪ OT Network Gear
▪ OT Storage
▪ OT End User Computers
▪ OT Mobile Devices
▪ OT Monitors
▪ OT Printers
▪ OT Unclassified Hardware
◦ Resource Subcategory: Subcategories of a Resource category.
◦ Resource Total Count: Asset count of the managed OT resources that is grouped by
Resource categories and Model categories.
◦ Subscription Unit Ratio: Predefined ratios that determine how many assets of a Resource
category require a subscription. For example, the defined ratio of 25:1 for Industrial
Consumable means that every 25 assets of that resource category require one Subscription
Unit.
◦ Total Subscription Units Consumed: The number of subscriptions per Resource category
that your organization consumed. The licensing module calculates this number by applying
the Subscription Unit Ratio to the Resource Total Count for each Resource Category.
OT Asset Workspace
The OT Asset Workspace is the intuitive and streamlined user interface of the OT Asset
Management application to manage your Operational Technology (OT) and Operational
Equipment (OE) assets.

OT Asset Workspace overview
The OT Asset Workspace is a unified medium with multiple views that help you manage your OT
and OE assets efficiently. The views provide you with visibility into all the important aspects of
your assets, such as dashboards on Asset count by model, lifecycle state, model category, and
overall performance of assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
OT Asset Workspace roles
Role title

Contains roles

Description

OT asset manager

• model_manager

This role has full access to the
OT Asset Workspace.

• model_admin

[sn_otam.ot_asset_manager]

Note: Given that
this role is part of the
Enterprise Admin
(sn_eam.enterprise_admin)
role, the Enterprise
Admin role also has
complete access to the
OT workspace.
This role is for users who
perform tasks and update OT
• sn_eam.enterprise_mobile_user
hardware asset records as
part of the OT hardware asset
• canvas_user
lifecycle.
• sn_eam.asset_technician

OT technician
sn_otam.ot_asset_technician

OT Asset Workspace views
Efficiently manage your assets by utilizing the different views available in the OT Asset
Workspace.
The following table mentions all the views that the OT Asset Workspace consists of, a brief
description of each view, and the tabs or lists that are present in each view:

Name of the view

Description of the view

Tabs/lists in the view

OT asset overview

View important actions and
quick links to active tasks.

No tabs in this view.

Asset analytics

Manage resources efficiently
by tracking the Total Cost of
Ownership (TCO) of assets.

Inventory

View details of the entire asset
inventory and stockrooms that
enable you to perform inventory
tasks.

OT asset estate

View the asset functions and
maintain accurate hardware and Overview, All assets, All
enterprise, Industrial,
consumable records.

Overview, Asset TCO, Asset
performance, and Data
visualizations.
Overview, All
stockrooms,Stock rules,
Transfer orders, Asset
audits,Loaner asset orders,
RMA orders, RMA line
orders, Repair orders,
Recall orders, Reclamation
requests, Resale orders, and
Disposal orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
Name of the view

Description of the view

Tabs/lists in the view

Hardware, Consumables, and
Pallets.
OT model management

View details of different types
of OT models that are being
managed.

Procurement

View and manage details of all
ongoing procurement activities.

Contract and lease
management

View and manage all asset
contracts.

Asset operations

View asset operations related
to shipment, onboarding, move
orders, and calculated model
lifecycle.

Work management

Create and manage
Overview, Calibrations, My
maintenance plans, work orders, work, Maintenance plans,
and work order tasks.
Work orders, Work order
tasks, Asset tasks, Work
order templates, Checklist
templates, My stockroom
assets, and My asset pickup
tasks.

OT model normalization

View information related to
normalization of models.

Overview, All models,
All enterprise,
Industrial, Hardware,
Firmware,Firmware
discovered, and Pallet.
Overview, Requests, Request
items, Purchase orders,
Receiving slips, Advance
shipment, and Catalog tasks.
Overview, All contracts,
Lease contracts, Leased
assets, Lease-end assets,
Renewals, Renewal lines, My
contracts, My contract tasks,
My contract approvals, and
Terms and conditions.
Shipment, Onboarding,
Moves, and Calculated model
lifecycle.

Overview, Custom OT model
types, Custom OT product
models, Custom OT model
libraries, Custom firmware
UNSPSC, Custom firmware
products, Custom firmware
versions, and Custom
firmware CPE

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


<!-- page 1581 -->
Name of the view

Description of the view

Tabs/lists in the view

Note: The Custom

firmware UNSPSC,
Custom firmware
products, Custom
firmware versions, and
Custom firmware CPE
tabs are available only in
the OT Asset Workspace.
For more information on
these tabs, refer to the
following topics:
• Create a custom
United Nations
Standard Products
and Services
Code (UNSPSC)
classification for
firmware in your
operational technology
(OT) assets
• Create a custom
firmware product
for your operational
technology (OT) assets
• Create a custom
firmware version
for your operational
technology (OT) assets
• Create a custom
Common Platform
Enumeration (CPE)
mapping for firmware
in your operational
technology (OT) assets
Admin center

Perform configuration and
administrative tasks related to
TCO configuration.

Model and asset tabs,
Model categories, Model
classifications, Stockroom
types, Bulk import,
Roles-to-class access,
Workflow assignments,
Calibration configuration,
TCO configuration, Risk
configuration, Other
configuration, Shipping,
Asset knowledge base, and
Normalization opt-in.
As an OT asset manager and
OT asset technician, you can
only make changes to the
Task rate card and Labor rate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1581


<!-- page 1582 -->
Name of the view

Description of the view

Tabs/lists in the view

card options under the TCO
Configuration list.

Hardware models and OT hardware assets in OT Asset Workspace
OT managers can create hardware models and OT hardware assets in the OT Asset Workspace.
The Hardware tab in the OT model management and OT asset estate views lists the hardware
models and OT hardware assets for all categories.
You can publish hardware models, more than once, to the enterprise catalog using the Publish
button in the OT model management view. The Publish button appears only if there isn't already
an active enterprise catalog item for that specific hardware model.

Note: Only the OT asset manager (sn_otam.ot_asset_manager) and the enterprise admin
(sn_eam.enterprise_admin) can publish hardware models.
Hardware models and OT hardware assets are also integrated into the following Enterprise Asset
Management flows:
• Asset request
• Asset refresh
• Stock order
• Single and multi-asset onboarding
• Return Merchandise Authorization (RMA)
• Repair
• Disposal
• Bulk import

Note:
Starting with the Zurich release, the bulk import templates include the OT entity and
Parent asset attribute columns. When the OT Asset Management application is
activated, you can bulk import hardware assets and models in both the Enterprise Asset
Workspace and the OT Asset Workspace only if the OT entity column is marked as TRUE.
With the Parent asset attribute field, you can choose to identify the parent of a child
asset using either the Asset tag, Serial number, or MAC address.
To view instructions for bulk importing assets, select the Bulk import instructions icon
[

] on the contextual side bar.

• Asset reclamation

Note: When a reclamation request for an OT hardware asset is created in the OT
Asset Workspace, a hardware reclamation request line is generated and displayed in
the Hardware Asset Reclamation Lines tab.
• Advanced shipment notification (ASN)

Note: Starting with the Zurich release, the Download template for Advanced Shipment

Notification includes the OT entity column. When this column is set to TRUE for hardware
models, it creates OT hardware assets in the OT Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1582


<!-- page 1583 -->
• Asset audits
• Asset Total Cost of Ownership (TCO)

Note: You can create a TCO report using a hardware model as a benchmark model, by
selecting Hardware in the Report table field and then selecting the required hardware
model in the Benchmark model field.
• Lease contract

Note: The Begin lease-end process option is available if the contract includes OT
hardware assets.
• Risk

Note: The Enterprise asset risk heat map in the OT asset estate view and the Enterprise
model risk heat map in the OT model management view also include hardware models
with OT entity flag set to TRUE.
• Asset resale
• Loaner
• Move orders
• Recall
• Stock rule

Note: The OT stock rule check box on the stock rule form indicates whether the stock
rule was created in the OT Asset Workspace.
This check box appears for all models in both the OT Asset Workspace and Enterprise
Asset Workspace only when the OT Asset Management application is activated.
However, only the OT asset manager can select or deselect this check box in the OT
Asset Workspace.
If you have activated the Hardware Asset Management application, the
com.sn_otam.enable_ot_stock_rule asset property enables you to separate
OT and non-OT hardware assets in stock rules and stock rule reports. If you set this
property to true and select the OT stock rule check box, only OT hardware assets are
included. If the OT stock rule check box isn't selected, only non-OT hardware will be
included. By default, for existing stock rules, this property is set to false, and the OT
stock rule is also set to false. This means that both OT and non-OT hardware assets are
included in the stock rules and reports, regardless of the OT entity flag.
Furthermore, you can generate maintenance plans and work orders for OT hardware assets.
All OT hardware assets are automatically tagged as an OT entity. When an OT hardware asset is
sourced from an existing stockroom via a transfer order or from the local stockroom, the asset
is automatically tagged as an OT entity. Similarly, during the receiving process of OT hardware
assets procured via a purchase order, the asset is automatically tagged as an OT entity. The OT
entity field appears in the Hardware asset form in OT asset estate view and is selected by default
for all OT hardware assets.
You can evaluate how effectively your assets are functioning and being used through the reports
based on asset key performance indicators in the Asset performance tab of the Asset analytics
view. The asset performance report is also available on the contextual sidebar of the asset
record, displayed by selecting the Asset availability and related KPIs icon [ ].
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1583


<!-- page 1584 -->
You can receive assets from any workflow directly at the stockroom using the unified receiving
functionality in the OT asset Asset Workspace. You can receive assets in any of the following
ways:
• Receive a single asset
• Receive multiple assets in the shipments
• Import assets in bulk and receive them
You can also manage supply and demand in your stockrooms effectively with inventory demand
reports. To view the reports, follow these steps
1. Navigate to the Inventory view.
2. Select the All stockrooms tab.
3. Select a stockroom for which you want to view the inventory reports.
4. Select the Inventory insights tab.

Consumables in OT Asset Workspace
Consumables can be created in the OT Asset Workspace for hardware models, OT hardware
assets, and industrial assets.
• For hardware models: Create consumables while creating a hardware model by selecting
Create consumable asset from the Asset tracking strategy drop-down. Once selected, all
OT hardware assets for the given hardware model will be consumables. After a consumable
is created, the following related lists appear in the hardware model form: Compatibles,
Substitutes, Consumables, Vendor catalog items, Consumable model lifecycle, Skills,
Knowledge, Application.
• For OT hardware assets: Create consumables from the Consumables tab in the OT asset
estate view by selecting Hardware asset in the Type drop-down.
• For industrial assets: Create consumables from the Consumables tab in the OT asset estate
view by selecting Industrial asset in the Type drop-down.
Any consumable model that you create in the OT Asset Workspace, has the consumable model
category.
Related topics
OT Asset Workspace roles
Enterprise Asset Workspace
Asset and Configuration Item (CI) synchronization for Operational Technology (OT) assets
Maintain synchronization between asset and CI for OT assets through MAC address on the asset
and the Network Adapter CI.
Synchronization between asset and CI is achieved using the Serial number field. However, an
OT asset need not necessarily have a serial number, but it’s associated with a MAC address.
Therefore, the asset-CI synchronization for OT assets includes the MAC address (mac_addr)
field in the Asset [alm_asset] table in addition to the serial number.
A CI can have multiple MAC addresses. The Network Adapter [cmdb_ci_network_adapter] table
stores all the MAC addresses and also has a reference field to the CI [cmdb_ci] table. Therefore,
the relationship between MAC address and CI is maintained.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1584


<!-- page 1585 -->
Synchronization from asset to CI
When an asset is created with a MAC address, synchronization happens as follows:
1. A CI is created.
2. A record for the corresponding MAC address is created in the Network Adapter
[cmdb_ci_network_adapter] table with a reference to the CI.
When the MAC address of an asset is updated, the existing record in the Network Adapter
[cmdb_ci_network_adapter] table isn't updated. Instead, a new record is created in the Network
Adapter [cmdb_ci_network_adapter] table.

Synchronization from CI to asset
When a CI is created with a MAC address, synchronization happens as follows:
1. An asset is created.
2. The MAC address of the CI is copied to the asset.
If there's an existing CI, then the associated asset is updated with the MAC address only if the
asset doesn't have it already.

Rules for generating CI names
A CI name follows a format that's based on the following conditions:
Conditions and CI name
Condition

CI name format

Asset has a Serial number

Concatenation of Serial number and Model name separated by
hyphen. For example, SN123 - DemoModel.

Asset has a Serial number
and a MAC address

Concatenation of Serial number and Model name separated by
hyphen. For example, SN123 - DemoModel.

Asset has no Serial number Concatenation of MAC address and Model name separated by
but has a MAC address
hyphen. For example, 88-22-33-66-888-AB - DemoModel.
Asset has no Serial number Model name
and MAC address
Whenever there are updates to Serial number or MAC address fields, the CI name is
synchronized only under the following conditions:
• CI name isn't updated manually.
• The Discovery source is SNassetmanagement, which means that the CI is created from an
asset.
• CI name hasn't been modified by CMDB.

Note: The sn_itam_common.mac_address_sync system property enables you to
synchronize asset and CI using the Mac address. By default, this system property is set to
false. To enable synchronization through the Mac address, set this system property to true
by navigating to Enterprise Asset Workspace > Admin center > Other configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1585


<!-- page 1586 -->
OT entity synchronization between asset and CI
The CI [cmdb_ci] table has the OT entity [cmdb_ot_entity] field. Also, the Asset [alm_asset] has a
corresponding OT entity [ot_entity] field. Synchronization of the OT entity happens as follows:
• When a CI is created with the OT entity reference set on the CI, the OT entity [ot_entity] field in
the Asset [alm_asset] table is set to true.
• When an asset with the OT entity set to true is created, a corresponding CI and an OT entity
are created on the CMDB side. The OT entity reference is then set on the CI.

Important: After a CI is marked as an OT entity, it can't be reverted to a non-OT entity.
Enterprise Asset Management for Healthcare
The Enterprise Asset Management for Healthcare application is a licensable application that on
activation enables you to manage healthcare-specific models, assets, and workflows.
The Enterprise Asset Management for Healthcare (com.sn_eamhc) application is available on the
ServiceNow Store. When you install this application on your ServiceNow instance, the Enterprise
Asset Management application also gets installed. For more information, see Installed with
Enterprise Asset Management for Healthcare.
This application provides functionalities, features, and workflows of Enterprise Asset
Management that support healthcare-related roles and asset models.
Related topics
Exploring Enterprise Asset Management

Configurable workspaces for medical and facilities industries
Use configurable workspaces for creating and managing medical and facility assets and models.

Overview of configurable workspaces for medical and facilities industries
Configurable workspaces are available for the following applications to work specifically on
medical and facilities industries:
• Enterprise Asset Management for Healthcare
• Enterprise Asset Management for Facilities
Configurable workspaces give you a personalized experience as you get to work on assets
and models pertaining to your industry. The following table mentions the applications, their
corresponding workspaces, and benefits of using each workspace.

Application

Configurable workspace

Benefits

Enterprise Asset Management Medical Asset Workspace
for Healthcare

Create and manage medical
assets and models.

Enterprise Asset Management Facility Asset Workspace
for Facilities

Create and manage facilities
assets and models.

Note: The normalization process only runs in the Enterprise Asset Workspace and doesn't
run for medical models and facility models within their specific workspaces.
If you’re logged in as a medical asset manager or a medical asset technician, by default you
only get to see the medical asset category in the Medical asset estate view and the medical
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1586


<!-- page 1587 -->
model category in the Medical model management view. Similarly if you’re logged in as a facility
asset manager or a facility asset technician, you only get to see the facility asset category in the
Facility asset estate view and the facility model category in the Facility model management
view.
If you’re logged in to a specific workspace, you may see other assets and model categories
that aren’t specific to your industry and have been added by the Enterprise admin or the
system administrator role. As an example, if you’re logged in as a medical asset manager or a
medical asset technician, you may see other assets and model categories such as construction,
transportation, or facilities. However, you can't create or modify anything in these categories as
these are read only.
You can evaluate how effectively your assets are functioning and being used through the reports
based on asset key performance indicators in the Asset performance tab of the Asset analytics
view. The asset performance report is also available on the contextual sidebar of the asset
record, displayed by selecting the Asset availability and related KPIs icon [ ].
You can receive assets from any workflow directly at the stockroom using the unified receiving
functionality in the Medical Asset Workspace and Facility Asset Workspace. You can receive
assets in any of the following ways:
• Receive a single asset
• Receive multiple assets in the shipments
• Import assets in bulk and receive them
You can also manage supply and demand in your stockrooms effectively with inventory demand
reports. To view the reports, follow these steps
1. Navigate to the Inventory view.
2. Select the All stockrooms tab.
3. Select a stockroom for which you want to view the inventory reports.
4. Select the Inventory insights tab.

Workspace roles
The workspace that you can access depends on the role with which you log in to your
ServiceNow instance. You can only view the workspace for which you have access.
Roles needed for accessing workspaces
Workspace

Role needed

Medical Asset Workspace
• Medical asset manager
(sn_eamhc.medical_asset_manager)
• Medical asset technician
(sn_eamhc.medical_asset_technician)
• Enterprise admin
[sn_eam.enterprise_admin]
• System administrator [sys_admin]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1587


<!-- page 1588 -->
Roles needed for accessing workspaces (continued)
Workspace

Role needed

Facility Asset Workspace
• Facility asset manager
(sn_eamhc.facility_asset_manager)
• Facility asset technician
(sn_eamhc.facility_asset_technician)
• Enterprise admin
(sn_eam.enterprise_admin)
• System administrator (sys_admin)
Medical Asset Workspace and Facility Asset
Workspace

• Medical asset manager
(sn_eamhc.medical_asset_manager)
and facility asset manager
(sn_eamhc.facility_asset_manager)
• Medical asset technician
(sn_eamhc.medical_asset_technician)
and facility asset technician
(sn_eamhc.facility_asset_technician)
• Enterprise admin
(sn_eam.enterprise_admin)
• System administrator (sys_admin)

Medical Asset Workspace, Facility Asset
Workspace, and Enterprise Asset Workspace

• Enterprise admin
(sn_eam.enterprise_admin)
• System administrator (sys_admin)

Accessing the Admin center
Only the Enterprise admin role and the system administrator role can make configuration
changes in the Admin center of the Medical Asset Workspace and the Facility Asset Workspace.
The Medical asset manager, Medical asset technician, Facility asset manager, or Facility asset
technician can't make any changes in the Admin center except for the Task rate card and the
Labor rate card options under the TCO configuration list.

Roles to class mapping for configurable workspaces
In configurable workspaces, roles can access classes in addition to the default seeded classes
for each specific role.
New roles are assigned to each configurable workspace. New roles are based on the following
applications and their designated workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1588


<!-- page 1589 -->
Application

Designated workspace

Roles

Enterprise Asset Management Medical Asset Workspace
for Healthcare

• sn_eamhc.medical_asset_manager

Enterprise Asset Management Facility Asset Workspace
for Facilities

• sn_eamfam.facility_asset_manager

Operational Technology (OT)
Asset Management

• sn_otam.ot_asset_manage

OT Asset Workspace

• sn_eamhc.medical_asset_technician

• sn_eamfam.facility_asset_technician

• sn_otam.ot_asset_technician

A default configuration of classes is seeded for each role that maps to its corresponding model
category.
The following mapping is a default configuration that is seeded for the Medical, the Facilities, and
the OT technician roles.

Note: The manager roles include the respective technician roles for Enterprise Asset
Management for Healthcare, Enterprise Asset Management for Facilities, and Operational
Technology (OT) Asset Management applications.
Roles to classes access
Enterprise roles

Seeded model categories

Medical technician

Medical

sn_eamhc.medical_asset_technician

Seeded enterprise classes for
roles

sn_ent_medical_model
sn_ent_medical_device_model
sn_ent_medical_asset

Facility technician

Facilities

sn_eamfam.facility_asset_technician
OT technician
sn_otam.ot_asset_technician

Industrial, Hardware

sn_ent_facility_model
sn_ent_facility_asset
sn_ent_industrial_asset
sn_ent_industrial_model,
alm_hardware
cmdb_hardware_product_model
sn_ent_firmware_model
sn_ent_discov_firmware_model

The Roles to classes access table shows the various classes that each role has access
to by default. For example, the facility technician role has access to the facility classes:
sn_ent_facility_model and sn_ent_facility_asset. When a facility technician logs in to the Facility
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1589


<!-- page 1590 -->
Asset Workspace, they will automatically get access to only the models and assets related to the
Facilities model category.
Based on the mapping, roles get access to the respective asset and model classes. The roles
further get access to the workflow tasks and work orders related to those classes. Additionally,
you can view information only pertaining to your classes on all dashboards in the workspace.
For example, a medical asset manager role can initiate disposal orders only for medical assets
because of access configuration. Similarly, a facilities technician role can only work on disposal
tasks created for facility assets.
The Enterprise admin (sn_eam.enterprise_admin) role can modify the default configuration to
add more classes to a role. So, the roles for the Medical Asset Workspace, the Facilities Asset
Workspace, and the OT Workspace can be configured to access additional classes from different
model categories. For example, the Medical technician role can get access to the Facilities
classes. Similarly, the Facilities technician role can get access to the Transportation classes.
For more details on adding additional classes to a role, see Map enterprise roles to enterprise
classes.

Note: A soft filter exists in configurable workspaces that shows information relevant to a
particular workspace. You can remove that filter to display assets and models for all classes
but only read access is available for the other classes.

Mobile Agent application for Enterprise Asset Management
®

You can use the ServiceNow Mobile Agent application to create, update, and view your
enterprise assets. You can also use the application to scan enterprise assets for inventory audits
and to complete verifications and departures for asset disposals.
The ServiceNow Mobile Agent application is supported on both iOS and Android devices. You
can download the application from the Apple App Store
or Google Play Store .
See Mobile Agent app

for more information on the Mobile Agent application.

Related topics
Managing enterprise assets and tasks using the Mobile Agent application

Model categories
Model categories define relationships between asset classes, product model classes, and
Configuration Management Database (CMDB) configuration item (CI) classes in the Enterprise
Asset Management application.
Each model category is divided into sub-categories that correspond to a model class, an asset
class, and an existing CMDB CI class. Multiple model categories can be assigned to a single
model class and a single asset class. A CI class can be assigned to only a single model category.
However, it is not mandatory to assign a CI class to a model category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1590


<!-- page 1591 -->
Various base model categories are available for you to choose from. The top tier model
categories are as follows:
• Medical
• Facility
• Transportation
• Industrial
• Retail
• Construction
• Tactical equipment
• Wearable
• Multimedia production equipment
For the complete list of available model categories and their corresponding CMDB CI, asset, and
model classes, see Enterprise model categories and corresponding classes.

Note: If you do not wish to use any of the existing sub-categories within a top tier model
category, you can create your own sub-categories. See Create model categories for
detailed instructions.

Warning: ServiceNow strongly recommends that you use only the existing top tier model
categories.

Multi-component models and assets in Enterprise Asset Management
Multi-component models and multi-components assets help you track the maintenance of your
enterprise assets.

Multi-component model
An Enterprise Asset Management model associated with one or more model components is
defined as a multi-component model.
A model component can be a consumable or an enterprise model. The same model can be listed
more than once as a model component of a multi-component model. For example, consumable
model component A can be repeated thrice for the multi-component model.
Every model component has the following three relationships with a multi-component model
each with a true or false value:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1591


<!-- page 1592 -->
• Required: If the value is true, then the model component is essential for the multi-component
model to work and can't be permanently removed.
• Hot Swappable: If the value is true, then the model component can be swapped while the
multi-component model is operational
• Repairable: If the value is true, then the model component can be repaired.
A model component's relationship to a multi-component model is mutually exclusive. For
example if a multi-component model comprises of two model component A's, each model
component A can have its own relationship with the multi-component model.
There are two types of multi-component models: Pre-assembled and user-assembled models.
You can change a pre-assembled or a user-assembled multi-component model to a simple
model by disassociating all its model components, while the model is still in the Build state.
Once you save the model record, the multi-component model is changed to a simple model and
all associations to model components are removed.

Multi-component asset
Multi-component assets are created from a multi-component model.
If a consumable model component is listed more than once in a multi-component model,
they are merged into a single record regardless of whether the Required, Hot Swappable, or
Repairable fields are the same or not.
There are two kinds of assets: consumable assets and serialized assets.
For enterprise model components, serialized child assets are created that are based on the
model component. For example, Child Asset B is the child asset created for Model Component B.
The model component relationship defined with the multi-component model is extended and
visible in the child asset records. Swapping of child assets can only be performed with the same
model component. A child asset can't be swapped with a different model component.
Relationship between multi-component model and multi-component asset

Pre-assembled and user-assembled assets
Assets associated with pre-assembled and user-assembled multi-component models are
referred to as pre-assembled and user-assembled multi-components assets, respectively.
• Pre-assembled asset: when the parent asset is created, the child assets are automatically
created. Child assets are created in the same stockroom where the parent asset is created.
The child assets inherit the parent asset's properties such as stockroom, state, sub status. No
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
asset tag or serial tag is attached to the child asset when it's created. You can add additional
child assets, add-ons, even if it's not defined in the model component. When an add-on asset
is added, the Asset type field displays the value Pre-assembled with add-on.
• User-assembled asset: assemble assets using assets present in the parent asset stockroom.
◦ Assemble the assets yourself by using the Assemble button in the asset record. For details,
see Select assets for user-assembled asset.
◦ Automatically assemble assets via the Auto-assemble button to trigger a process to
automatically select assets from a stockroom and associate the assets to a parent asset. If
the required quantity of assets isn’t available in the stockroom, an error appears and you
can't automatically assemble assets. Use the Assemble button to assemble the assets on
your own.
◦ Release all child and add-on assets from the parent asset. For details on releasing assets,
see Release assets from the parent asset.
You can swap child assets for any multi-component asset that is in one of the following states:
• In-Use
• In-Maintenance
• In Stock Defective
• In Stock Pending Repair

Note: For more details on swapping assets, see Swap assets for parent multi-component
asset.

Multiple model components for an enterprise model
You can add multiple model components to an enterprise model at one go by specifying the
quantity. The Quantity field in the Add model components dialog lets you create multiple
serialized components and consumable components for a single enterprise model.
• For serialized components: each row in the Add model components dialog box is split into
multiple model components based on the quantity. For example, if the Quantity field has a
value of 10 for a row, then 10 model component records are created.
• For consumable components: one model component is created per row. For example, if the
quantity field has a value of 10 for a row, then only one model component record is created
with the quantity as 10.
For consumable child models, one child asset is created per component, with a quantity equal to
the quantity of the component. For serialized child models, assets are created per component.
When you create assets, the consumable assets do not merge. Consumable assets are
individual assets with a quantity. For example, model component A record has a quantity value of
two and the model component B record has a quantity value of three. So two assets are created.
One asset record with quantity two and the other asset record one with quantity three.
The add on assets of consumables are however merged as they are not linked to a model
component. For example, model A has two components of consumable model C. When you
create a complex asset from that model, two child assets get created of that same model C.

Component number usage for consumable components
Since consumables don't have an asset tag or serial numbers, the Component number field in
the model component form helps you to identify and keep track of child consumables. While
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1593


<!-- page 1594 -->
creating a consumable component record, ensure to enter a value in the Component number
field.
For consumable components, the component number gets propagated to the display name of
the child asset as a prefix.

Component number usage for serialized components
For serialized components, it's optional to enter a component number. You can specify a
component number if the value you enter in the Quantity field is 1. If you enter a value of more
than one in the Quantity field, then the Component number field is disabled. However, the
component numbers are automatically generated by the system. You can go to the model
component form and change the component number if you want.
For serialized components, if an asset tag isn't mentioned, then the component number is
propagated as the asset tag. If you later decide to add an asset tag, the component number gets
overridden by the asset tag.

Bulk import of your enterprise models and assets
Use a subflow to import enterprise models and assets of multiple types to your ServiceNow
instance at one go. You can also perform a bulk update on existing models and assets.

Overview of Bulk import
Use the Enterprise Asset workspace to do a bulk transfer of all your enterprise models and asset
from a different database to the ServiceNow instance.
Create an import record by downloading a template in the form of a spreadsheet (.xlsx). Ensure
that you enter valid values in all the mandatory fields before uploading the template. Attach the
template to the import record and select Import to begin the import process.
After you select Import, the EAM Bulk Import subflow gets triggered. Scheduled jobs are initiated
and data in the spreadsheet is copied to the appropriate staging tables. The staging tables are
validated and records are created in the ServiceNow instance.

Modes
Modes refer to the type of import that you want to process. There are modes for only importing
models, assets, and a combined mode for both models and assets. You can choose from the
following available modes:
• Create models
• Update models
• Create assets
• Update assets
• Create models and assets
• Update models and assets

Templates
Based on the mode you select in the import record, you can download the corresponding
template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
Note: Ensure that you enter valid values in all the mandatory fields for the import process
to run effectively. For a list of all the mandatory fields, see Mandatory fields in the bulk
import spreadsheets.
Modes and templates
Modes

• Create models

Corresponding template

Model template

• Update models

• Create assets

Asset template

• Update assets

• Create models and assets

Model and asset template

• Update models and assets

Note: From the Yokohama release onward, the MAC address field is available in the
Download template of the following Bulk import modes:
• Create assets
• Update assets
• Create models and assets
After a successful import, the MAC address that you provided in the template is added to
the MAC address [mac_addr] field in the Asset [alm_asset] table.
When the OT Asset Management application is activated, you can bulk import hardware
assets and models in both the Enterprise Asset Workspace and the OT Asset Workspace
only if the OT entity column is marked as TRUE.
Starting with the Zurich release, the bulk import templates include OT entity and Parent
asset attribute columns. When the OT Asset Management application is activated, you can
bulk import hardware assets and models in both the Enterprise Asset Workspace and the
OT Asset Workspace only if the OT entity column is marked as TRUE. With theParent asset
attribute field, you can choose to identify the parent of a child asset using either the asset
tag, serial number, or MAC address.
To view instructions for bulk importing assets, select the Bulk import instructions icon [
on the contextual side bar.

]

You can customize the templates to add more columns. Make the following modifications to add
more columns:
1. Add the new columns to the staging tables.
2. Modify the list view on the Database view table [sn_eam_import_template] to
include the columns you want to display in the spreadsheet. Enter the string
sn_eam_import_template.list in the filter field on your instance's navigation bar.
3. Add field mappings in the Model or Asset transform map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
Scheduled jobs
The following scheduled jobs execute as part of the EAM Bulk Import subflow.

The scheduled jobs execute based on the mode that you select.
The EAM Bulk Import - Upload File job is executed for all modes. For the Create Model or Update
Model modes, the EAM Bulk Import - Transform Asset doesn't execute. Similarly, for the Create
asset or Update asset modes, the EAM Bulk Import - Transform Model doesn't execute.
For example, if you select the Create models and assets mode, the scheduled job, EAM Bulk
Import - Upload file uploads the data from the spreadsheet to the three staging tables.
Then the Scheduled job, EAM Bulk Import - Transform Model executes the model
and model component transform maps. After the model transform maps are complete, the EAM
Bulk Import -Transform Asset scheduled job executes the asset transform map.

Staging tables
The data that you enter in the spreadsheet is copied to one or more of the following staging
tables:
• Model Import Staging [sn_eam_model_import_row]​
• Model Component Import Staging [sn_eam_mc_import_row]​
• Asset Import Staging [sn_eam_asset_import_row]​

Enterprise Asset Management normalization
The Enterprise Asset Management normalization process enables you to normalize your
manufacturer, model name, model number, and model type data of your enterprise models.

Normalization overview
The normalization process compares the discovered manufacturer, discovered model,
discovered model type, and the discovered model number values against the ServiceNow
repository of normalized equivalents in the Enterprise Asset Management Content Service.
To standardize your enterprise models, the data must be normalized. You can manually update
the model records with the normalization content, or you can compare your data against the
Enterprise Asset Management Content Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
Scheduled jobs for Normalization
The following are the scheduled jobs that run during the normalization process.

Scheduled job

EAM - Daily Job

Description

Sets the time when data is pulled by the
Enterprise Asset Management Content
Service. This job runs only once, when the
normalization process is started for the first
time.
If a model has gone beyond its end of its
lifecycle date, this job enables the Content
lifecycle phase check box in the Enterprise
Model Lifecycle tab in a model record.

EAM - Content Upload

A daily job that uploads any content to the
Enterprise Asset Management Content
Service that you have added in the following
custom tables:
• Custom Enterprise Model Type
[sn_eam_cd_custom_model_type]
• Custom Enterprise Manufacturer
[sn_eam_cd_custom_manufacturer
• Custom Enterprise Product Model
[sn_eam_cd_custom_product_model]
• Custom Enterprise Model Library
[sn_eam_cd_custom_model_library]

Note: This job only runs if you have
opted in to the Enterprise Asset
Management Content Service.
EAM - Enterprise Lifecycles

Updates the model record with information
about newly created or deleted life cycles.

EAM - Normalization

Normalizes all the models that haven't been
normalized.

EAM - Apply latest content changes

Updates any changes in the content tables
to the Enterprise Asset Management Content
Service.

Tables installed with Enterprise Asset Management normalization
Several normalization tables are installed with the activation of the Enterprise Asset
Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
Tables installed
Table

Description

Custom Enterprise Model Type
[sn_eam_cd_custom_model_type]

Stores custom enterprise model type records.

Custom Enterprise Manufacturer
[sn_eam_cd_custom_manufacturer]

Stores custom enterprise manufacturer
records.

Custom Enterprise Product Model
[sn_eam_cd_custom_product_model]

Stores custom enterprise product model
records.

Custom Enterprise Model Library
[sn_eam_cd_custom_model_library]

Stores enterprise model library records.

Enterprise Model Type
[sn_eam_cd_model_type]

Stores enterprise model type records.

Enterprise Manufacturer
[sn_eam_cd_manufacturer]

Stores enterprise model manufacturer records.

Enterprise Product Model
[sn_eam_cd_product_model]

Stores enterprise product model records.

Enterprise Model Library
[sn_eam_cd_model_library]

Stores enterprise model library records.

Enterprise Lifecycle Definition
[sn_eam_cd_lifecycle_definition]

Stores lifecycle phase of an enterprise model
and associated dates.

EAM Content Audit [sn_eam_content_audit]

Stores the content values that changed.

Manage Enterprise Library
[sn_eam_manage_cd_library]

Stores import and export content data.

Enterprise Asset Configurations
[sn_eam_configuration]

Stores opt-in and opt-out data.

Risk scoring
Calculate a risk score for an enterprise model record based on two vectors: likelihood and
impact.
Assets associated to a model inherit the risk score values of the model. However, you can
override the model risk scores by defining risk scores for the assets that are different from the
risk score values specified on the model.
Access the Risk modules for the Enterprise Asset Management application by navigating to
Asset > Enterprise Risk Configuration. Use the following modules to enter configuration values
for likelihood, impact, and score.
• Risk Likelihood
• Risk Impact
• Risk Score

Note: For details on configuring values for likelihood, impact, and score, see Create
configuration values for risk likelihood, Create configuration values for risk impact, or Create
configuration values for risk scores.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
After you’ve configured the values in the Risk modules and frozen them, the heat maps are
rendered on the following views on the Enterprise Asset Workspace:
• Enterprise asset estate view: heat map for asset scores
• Enterprise model management view: heat map for model risk scores.
If a model is no longer in the Build stage and you update the Model's risk scores, you can
propagate the updated values to the associated assets using the Update risk button on the
model form. On clicking this button, the EAM - Update model risk values to
asset scheduled job runs and updates the risk values for all the assets associated with this
model.

Note: If the model is in the Build stage, the Update risk button doesn't appear.
Zebra MotionWorks RFID integration for Enterprise Asset Management
You can integrate your ServiceNow instance with third-party Zebra MotionWorks location
solutions to import and view real-time radio-frequency identification (RFID) location data for your
enterprise assets.
RFID is an asset tracking technology that uses radio frequencies to transfer location and
identification data for your assets. This data is stored and transferred through RFID tags, which
are small devices that are either attached to or embedded in each asset. Each RFID tag consists
of the following components:
• An antenna that receives and transmits radio frequencies so that you can transfer location and
identification data for the associated asset. The antenna receives and transmits these radio
frequencies each time you scan the RFID tag.
• A unique microchip or integrated circuit (IC) that stores location and identification data for the
associated asset.
• A substrate that holds the other two components together.
Zebra MotionWorks location solutions use RFID technology to track the real-time locations of
your assets and inventory automatically. When you integrate your ServiceNow instance with
Zebra MotionWorks location solutions, this RFID location data is imported into your instance so
that you can identify and track your enterprise assets. Any data changes that Zebra MotionWorks
location solutions detect are automatically updated on your ServiceNow instance.
For more information on Zebra MotionWorks, refer to the Zebra MotionWorks Location Solutions
website .

Importing RFID location data from Zebra MotionWorks location solutions
When you import RFID location data from Zebra MotionWorks location solutions, the data is
added to the RFID Stage Asset [sn_itam_common_rfid_stg_asset] table based on the enterprise
assets that it is associated with. The Enterprise Asset Management application automatically
creates a separate table entry for each enterprise asset that you import this RFID location data
for.
After the RFID location data is added to the RFID Stage Asset [sn_itam_common_rfid_stg_asset]
table, the Enterprise Asset Management application uses the RFID Resource Data transform
map to process and then map this data to the RFID Asset [sn_itam_common_rfid_asset] table.
However, RFID location data can be mapped to the RFID Asset [sn_itam_common_rfid_asset]
table only for enterprise assets that contain serial numbers.
On successful mapping, you can run the RFID Asset Mapping Job scheduled job daily
or on-demand to then map the resulting data from the RFID Asset [sn_itam_common_rfid_asset]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


<!-- page 1600 -->
table to the Asset [alm_asset] table. However, this data mapping is dependent on the existence
of corresponding asset records within the Asset [alm_asset] table.
• If a corresponding asset record already exists for an enterprise asset that you want to map
data for, it automatically updates each time the RFID location data for that enterprise asset
changes. In addition, the Status of the enterprise asset changes from New to Matched in the
RFID Asset [sn_itam_common_rfid_asset] table.
• If a corresponding asset record does not already exist, data for that enterprise asset cannot
be mapped from the RFID Asset [sn_itam_common_rfid_asset] table to the Asset [alm_asset]
table. The Status of the enterprise asset changes from New to Unmatched in the RFID Asset
[sn_itam_common_rfid_asset] table.
You can view and take action on these unmatched enterprise assets by using the Unmatched
RFID tags important action that appears on the Overview tab of the Enterprise asset estate
view. For more information on the Enterprise asset estate view, see Enterprise asset estate
overview for Enterprise Asset Workspace.
You can view your asset records in the Enterprise asset estate view of the Enterprise Asset
Workspace. For details on the RFID fields that are included in each asset record, see Asset fields
for enterprise assets.

Note: If you are importing RFID location data for parent enterprise assets with one or more
child enterprise assets, RFID location data for those child enterprise assets is based on the
RFID tags that they are associated with.
• If a child enterprise asset contains an RFID tag, RFID location data for that asset is based
on that RFID tag.
• If a child enterprise asset does not contain an RFID tag, RFID location data for that
asset is based on the RFID tag of the parent enterprise asset. If you remove the parent
enterprise asset, all RFID location data is cleared for the child enterprise asset.

Enterprise asset reclamation
Use a reclamation workflow to coordinate an employee's offboarding process that lets you
request, assess, and reclaim enterprise assets.
When an employee leaves an organization or moves to a different role, retrieving the assets
assigned to the employee needs extensive coordination between the Human Resources
department and the enterprise asset managers. You can create an offboarding service catalog
request, which initiates a prescriptive workflow to efficiently retrieve assets and restock them in
the inventory, reassign them, send them for repair, or dispose as required.
You can create an asset reclamation request via the Service Catalog application. After the
request is created, reclamation line items are created that comprise a series of tasks. These
tasks can only be accessed and performed by the sam_user role. After all the tasks are closed,
the reclamation line item is complete. After all the reclamation line items are complete, the
catalog request is also completed.

Note: To use the Service Catalog application to reclaim enterprise assets, you must install
the Enterprise Asset Management application.
When you create a reclaim asset request via the Service Catalog application, an asset
reclamation request is created. For each enterprise asset assigned to the departing employee,
an enterprise asset reclamation line is created for the assets you select in the Reclaim Asset
Service Catalog. Each enterprise asset reclamation line is closed through the following
Enterprise Asset Reclamation Tasks:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
• Schedule drop off, Schedule pickup, or Schedule shipment task based on which reclamation
method you select in the Reclaim Asset form
• Receive asset
• Evaluate
The Enterprise Asset Reclamation Line also has a stage field, which changes when you close a
Enterprise Asset Reclamation Task as follows:
• Pending
• Pending evaluation
• Complete

Asset conditions in Enterprise Asset Management
Assessing the condition of assets in your organization aids in effective maintenance planning,
resource allocation, and managing the asset life cycle.

Overview of asset conditions
You need to evaluate assets based on specific conditions to ensure reliability. Asset health helps
your organization in various ways:
• Maximizes asset life.
• Reduces unplanned downtime.
• Improves operational effectiveness and safety.
• Helps to comply with regulations and industry standards.

Roles for asset conditions
The following are the two new roles added for the asset conditions feature:
• Asset technician (sn_smart_asmt.actor) role added to the Enterprise technician
(sn_eam.asset_technician) role
• Asset manager (sn_smart_asmt.template_manager) role added to the Enterprise asset
manager (sn_eam.asset_manager) role

Asset condition workflow
The asset condition workflow comprises of the following stages:
Create condition templates
Create condition templates and associate condition attributes that you have
defined to a condition template. Create questions and enable scoring in the
templates to indicate whether the condition attributes for a model or asset passed
or failed. For more details, see Create condition templates for condition attributes.
Define condition attributes
Enterprise asset managers define condition attributes for evaluating models and
assets. For more details, see Define condition attributes on enterprise models and
assets.
Schedule condition evaluations
The Enterprise asset manager schedules evaluations via maintenance plans or
work orders. For more details, see Schedule condition evaluations for enterprise
models or assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


<!-- page 1602 -->
Perform condition evaluations
The technician performs the evaluation via the web interface or through the mobile
application. Once the evaluation is complete, a score and a result are calculated.
The Enterprise asset manager either accepts or rejects the evaluation. For more
details, see Perform condition evaluation from the Enterprise Asset Workspace and
Perform condition evaluation from a mobile application.
View the evaluation reports
The Enterprise asset manager views the report for the evaluation. For more details,
see Review the asset condition results.

Plugin dependencies for asset conditions
The following are the plugin dependencies that are required to use asset conditions:

Plugin Name

Plugin ID

app-smart-assessment-core

com.sn_smart_asmt

sn-smart-assessment-connected

com.sn_smart_assessment_connected

sn-smart-assessment-designer

com.sn_smart_assessment_designer

app-smart-assessment-scoring

com.sn_smart_scoring

app-smart-assessment-mobile

com.snc.smart_assessment_mobile

mobile scripted screen

com.glide.sg.scriptedscreen

Domain separation supported
The asset conditions feature supports domain separation.

Asset groups in Enterprise Asset Management
Asset groups in Enterprise Asset Management provide organizations with a systematic approach
to asset structuring for complex asset ecosystems thereby improving data integrity and providing
actionable insights.

Overview of asset groups in Enterprise Asset Management
An asset group is a logical grouping of assets.
Asset groups can be used in the Enterprise Asset Workspace, Facility Asset Workspace, Medical
Asset Workspace, and the Operational Technology (OT) Asset Workspace.
An asset group can have multiple subgroups; however a subgroup can be a part of only one
asset group. Asset groups and subgroups can have assets and an asset can belong to multiple
groups.
Asset groups are listed in the Asset groups subtab, located within the Asset groups tab in the
Enterprise asset estate view. The asset groups and the descendant asset groups are displayed
in a content tree. For details on creating asset groups and subgroups, see Create an asset
group in Enterprise Asset Management and Create an asset subgroup in Enterprise Asset
Management.
Enterprise Asset Management administrators can configure the Asset groups tab to show or
hide in the Enterprise Asset Workspace, Facility Asset Workspace, Medical Asset Workspace,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
and the OT Asset Workspace. For more details, see Configure tabs in the Enterprise Asset
Workspace.
An asset group or subgroup can optionally refer to a service instance that helps in pulling in all
related assets from a chosen node in that hierarchy. Alternatively, a subgroup can be defined
without referencing the subgroup to a service instance, allowing users to manually select assets.
For details on adding assets to asset groups, see Add assets to an asset group or subgroup.
A subgroup inherits some fields from its parent group. For details on the fields that get inherited,
see Fields inherited from a parent asset group to a sub group.

Sites in asset groups
A site is an ISA-95 hierarchical entity model. Sites are entity records in the Equipment Model
Entity [cmdb_ci_ot_isa_entity] table, organized in a hierarchical structure with site being the toplevel entity, followed by area, work center, and work unit. Each level of the ISA-95 entity model
can be associated with CIs.
You can associate an asset group to a site. Associating an asset group to a site enables all CIs
associated with that specific site to be also associated with the asset group.

Note: Only assets from the associated site and its specific location can be added to the
asset group. You don’t have access to add assets from outside the associated site and
location.
If an asset group references a service instance, and that service instance is an entity record in
the Equipment Model Entity [cmdb_ci_ot_isa_entity] table, the Site field in the asset group record
is automatically populated.
If an asset group doesn't refer to a service instance, or it's referring to a service instance that
doesn't have entity records in the cmdb_ci_ot_isa_entity table, then a site for that asset group
doesn't exist and that asset group gets listed under the Unassigned site group in the Asset
groups subtab.
All sites for asset groups are listed in the Sites subtab, located within the Asset groups tab in
the Enterprise asset estate view. For details on creating sites, see Create sites in the Enterprise
Asset Management.

Considerations for asset groups
The following are some considerations to keep in mind for asset groups:
• An asset group can’t contain itself as a sub group.
• An asset group can’t have a model or model category as it's a separate entity.
• An asset group can have a service instance link only if its parent group has one or if it has no
parent.
• An asset group can't be deleted if it contains subgroups and assets. To delete an asset group,
the sn_eam.enterprise_asset_manager or the sn_eam.enterprise_admin role must first remove
the subgroups and assets within the asset group.

Considerations for adding assets to asset groups
The sn_eam.enterprise_admin role and the sn_eam.enterprise_asset_manager role can create
asset groups and add assets to asset groups.
The Service instance field on the asset form refers to the Application Service
[cmdb_ci_service_auto] table and to its following descendant tables:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
• Mapped Application Service [cmdb_ci_service_discovered] table
• Calculated Application Service [cmdb_ci_service_calculated] table
• Equipment Model Entity [cmdb_ci_ot_isa_entity] table
Keep the following considerations in mind while adding assets to asset groups:
• If the asset group isn’t referring to a service instance, the cmdb_ci_service_auto table, or any of
its descendent tables, you can add any asset that is not included in any asset group.
• If the asset group is referring to a service instance, the cmdb_ci_service_auto table, or any of
its descendent tables, you can add assets whose asset CI has a CI relationship to the service
instance, the cmdb_ci_service_auto table, or any of its descendent tables, referenced by the
asset group.​
• You can only add assets without a parent. The child assets won’t be added automatically to
the asset group. Any assets that have as their parent the asset that was just added to the asset
group won’t be added automatically. For example, you add a pre-assembled asset that has no
parent. The child assets of that pre-assembled asset won’t also be added.
• Assets that are from the same location as the asset group’s location or a descendent of the
asset group’s location.
• Only hardware and enterprise assets can be added.
• Consumable asset, linear assets, linear segments, and pallets can't be added.​
• If a subgroup isn’t referring to a service instance, the cmdb_ci_service_auto table, or any
of its descendent tables, but an ancestor asset group is referring to a service instance,
the cmdb_ci_service_auto table, or any of its descendent tables, you can only add assets
whose asset CI has a CI relationship to a service instance, the cmdb_ci_service_auto table,
referenced by the ancestor asset group.
• Asset should only be in the In use or In maintenance state.​

Considerations for asset groups in flows and in the Enterprise Asset Workspace
Asset groups won't be available in the following flows and scenarios:
• Asset resale flow.
• Transfer order lines.
• Repair order lines.
• Disposal orders.
• While creating shipment assets.
• Contracts.
• Move orders.
• Any flow where the asset requires a model.
Additionally, the asset hierarchy contextual side panel doesn't appear for asset groups and all
assets and enterprise assets lists don't show asset groups.

Plugin dependencies for asset groups
Install the sn_isa_model plugin for using asset groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
Classification codes
Use classification codes to organize and categorize your enterprise models and use them
effectively.

Overview of classification codes
Create classification codes to increase the visibility and efficiency of your enterprise models. For
details, see Create sources for classification codes.
You can also import multiple classification codes at one go to your ServiceNow instance. For
details, see Import classification codes.
Classification codes are assigned to models, are based on model categories, and each code has
a source.
A classification code can be based on one or more model categories. For example, the facility
model category is assigned to Code A and the medical model category is assigned to Code
B. You can assign a code to each model you create. When you create a facility model, you can
assign the classification code, Code A to that model. Similarly, when you create a medical model,
you can assign Code B to that model.
A source is a system of classification for a particular industry. OmniClass, for example, is a
classification system for the construction sector. Some sources have a hierarchical structure with
a parent-child relationship. In such a hierarchical system, there's only one parent for each code.
Your data infrastructure determines whether a source adheres to a hierarchical structure or not.
For details, see Create sources for classification codes.
Use the parent-child relationship between models to filter out models and assets based on a
classification code. You can filter reports on dashboards based on classification codes.
You can create and edit classification codes in the Enterprise Asset Workspace by navigating to
Enterprise model management view > Classification.
When a classification code is created, the ancestor list for that code is generated automatically.
When a parent of an existing code is updated, the ancestor list of that code and all its children
gets updated.

Filter using classification codes
You can filter models based on classification codes in the following Enterprise Asset Workspace
views:
• Enterprise asset overview
• Enterprise asset dashboard
• Inventory
• Enterprise model management
• Enterprise asset estate
When you select a code in the Classification filter and apply the filter, you see reports for all the
models aligned to that code, as well as all their ancestors.

Roles used
You need the following roles to work with classification codes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
Role title

Contains roles

Classification manager
sn_eam.enterprise_admin
[sn_eam.enterprise_classification_manager]

Model manager
[model_manager]

Description

This role has complete access
to the classification code
table. This role can create
classification codes as well as
edit and view them.

This role can only view
sn_eam.enterprise_asset_manager
classification codes.

Failure and resolution codes in Enterprise Asset Management
Enhance maintenance efficiency with standardized and predefined failure and resolution codes.
Failure codes are used to identify the exact reason an asset has failed, while resolution codes
specify the method used to resolve the issue.

Benefits of failure and resolution codes
• The predefined codes help in consistent reporting, analysis, and tracking of issues and their
resolutions.
• The hierarchical structure of the codes, with each code having a parent-child relationship,
offers a detailed and organized approach to maintenance.
• The Failure code and Resolution code fields in the Repair flow task forms help asset
technicians to record the reason for failure of an asset and the resolution used for its repair.

Hierarchy of codes
A code can have a parent and a path. For example, Major engine failure can be a parent failure
code, with child codes like Engine oil dried out or Carburetor broken down.
When a code is created, its path is generated by tracing back to the root code. For example:
• For Code A that doesn't have any parents, the path is Code A.
• For Code B that has a parent Code A, the path is Code A, Code B.
• For Code C that has a parent Code B, the path is Code A, Code B, Code C.

Note: The parent code is of the same type as the child code. For example, the parent of a
failure code is another failure code, and the same applies to resolution codes. If the parent
changes, the path of the children is automatically updated. A failure code or resolution
code can be linked to only one parent code.
For more details, see Manage failure and resolution codes.

Playbooks for Enterprise Asset Management
Playbooks provide a step-by-step guidance for setting up your assets with important information.

Playbook overview
A playbook takes a workflow and breaks it into multiple lanes. The workflow for a playbook is
generally created using the Exploring playbooks . Each lane in a playbook includes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


<!-- page 1607 -->
• A list of activities that you review.
• Status indicators that display the current state of each activity.
• Check marks that indicate where you are in the workflow.
As you mark an activity complete in a lane, you move to the next activity. You can save an activity
at any time and return to the playbook later. After you complete all the activities in a lane, you
move to the next lane. As you keep completing activities and lanes, the status keeps getting
reflected in the left-hand panel. An Activity log, on the right-hand side of the playbook shows all
the data that you’ve entered for each activity.

Playbook layout
The playbook is divided into the following parts:
• lanes on the left-hand side.
• work area in the center.

Available playbooks for Enterprise Asset Management
Use the following playbooks to complete various Enterprise Asset Management workflows:
• Asset onboarding playbook: Allows you to onboard a single asset.
• Multi-asset onboarding playbook: Allows you to onboard multiple assets at one go.
• Calibration event playbook: Allows you to track and manage the asset calibrations that you are
performing as part of your work orders.

Asset onboarding playbook
The asset onboarding playbook provides context at each step of the process and helps you
enter critical information for your assets.
Each asset can have only one onboarding process and for each onboarding process, there's an
onboarding task to track the process.
The Asset Onboarding Task [sn_itam_common_asset_onboarding_task] table tracks the asset
onboarding process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


<!-- page 1608 -->
Multi-asset onboarding playbook
The multi-asset onboarding playbook enables you to onboard multiple assets for a single model
at one go.
As an enterprise asset technician, you can perform any of the following tasks to onboard multiple
assets:
• Create a catalog request.
• Create an Onboarding order in the Enterprise Asset Workspace.
After the catalog request or the Onboarding order is submitted, an Onboard Asset Task is
created. The enterprise asset manager can complete the Onboard Asset task by using the
playbook associated with the task. After the onboarding task is completed, the catalog request
and the requested item's state changes to Closed Complete.
The Multi-asset onboarding playbook has a series of activities that can be either skipped or
marked as complete. The Deployment activity in the playbook enables the enterprise asset
manager to specify the following details and create a deploy task:
• The person for whom the asset is assigned
• Location where the asset should be deployed

Note: You can work on the Deployment activity only after you have reviewed all the
preceding activities in the Multi-asset onboarding playbook.
The deploy task for multi-asset onboarding can be either created as an
Enterprise asset deployment task or a Work order task by configuring the
com.sn_eam.default_deployment_task asset property using the enterprise_admin
role. By default, the Value field of this asset property is set to sn_eam_deploy_asset_task and
an Enterprise asset deployment task is created. However, you can create a work order task by
setting the Value field to wm_task.
For details on using the multi-asset playbook, see Create a multi-asset onboarding process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
Calibration event playbook
The Calibration event playbook enables you to track and manage the asset calibrations that you
are performing as part of your work orders. This playbook is available in any work order task that
has a Work type of Calibration.
For more details on using the Calibration event playbook on your ServiceNow instance,
see Complete and close a work order for an enterprise asset. For more details on using the
®
®
Calibration event playbook in the ServiceNow Mobile Agent application, see Take action on
an enterprise asset using the Mobile Agent application.

Linear assets in Enterprise Asset Management
Use linear assets to expand your asset management portfolio and increase diversification by
creating and managing linear assets.

Overview of linear assets
A linear asset is an asset that has a physical length or dimension, such as roads, railways,
pipelines, power transmission lines, and telecommunication networks. These assets are often
characterized by their linear topology, which means that they have a defined starting point and
ending point, and can be represented as a sequence of interconnected segments or nodes.
You can create segments on linear assets, associate discreet asset to linear assets, and
find relationships between linear assets such as overlapping assets, continuing assets, and
intersecting assets. For details on the terminology used for linear assets, see Terminology for
linear assets.
You can create and manage linear assets and segments using geographic (geo) maps. Geo
maps are integrated into the Enterprise Asset Management.

Extent of support for linear assets
Linear assets are supported keeping the following considerations in mind:
• Support for linear assets that are modeled by geopoints.
• Support for signed decimal degree geopoints up to seven digits after the decimal point. For
example [37.3800091, -121.9635865].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
• Support for each linear asset extends to up to 1000 geopoints, 500 markers, and 500
segments.
• Support for up to 1000 work orders on a linear asset per month.

Geo maps for linear assets
Geo maps are visual representations of the Earth's surface or a specific region, displaying
various features such as landforms, bodies of water, cities, roads, and other geographical
elements.
sn-geo-map is the UI component used to support the map visualization in linear assets.
The Enterprise Asset Manager [sn_eam.enterprise_asset_manager] has access to the geo map.
A geo map helps you perform the following actions on the workspace:
• Draw linear assets to define coordinates.
• Pick up segment start and end markers.
• Pick up markers for discrete assets.
• View related assets such as discrete assets, overlapping assets, intersecting assets,
continuing assets, and segments.
For more information on using the Geomap icon to connect geo coordinate points on a map,
watch this short video Connect geo coordinate points on a map

Knowledge articles for Enterprise Asset Management
Create and attach knowledge articles about enterprise models.
Use the Enterprise Asset Workspace or the Knowledge Management application to create
articles about Enterprise Asset Management application. You can create articles on subjects
such as troubleshooting, configuration. For information on creating knowledge articles, see
Create a knowledge article for Enterprise Asset Management.
After an article is created and published, the enterprise technician [enterprise_asset_technician]
role can attach the articles to enterprise models.
To search or view articles in your instance, type Enterprise Asset Knowledge Base in
the navigation bar. All articles on Enterprise Asset Knowledge Base are listed.
You can also see the asset's model knowledge articles in the Model Knowledge related list in the
asset form. The work order and the work order task forms also has the Parts Knowledge related
list.

Asset Total Cost of Ownership for Enterprise Asset Management
Asset managers like to know the Total Cost of Ownership (TCO) for assets to gain insights into
the total cost of assets and enable capital planning.
During an asset's life span, assets incur costs, which include initial capital costs, costs
associated with purchasing new parts, labor costs, and contract costs. TCO for an asset is the
sum of all these expenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
Benefits of TCO
• Track and analyze expenses such as procurement, maintenance, repairs, and disposal across
the asset hierarchy.
• Gain better visibility and control over asset-related expenses throughout the life-cycle.
• Bench mark asset costs against similar assets and asset models to compare performance.

TCO calculation
TCO is the sum of all the expenses that occurred on the asset during its lifetime. TCO is
calculated for the asset by adding the amount for all the expense lines that are created against
the asset. The total cost of an asset is updated whenever an expense line is added.
Considerations while calculating TCO:
• Initial TCO includes the purchase cost coming from the expense line created when an asset
record is created.
• When a new asset record is created, a new expense line is created using the cost field on the
asset record.
• When the cost field is updated, the existing expense line record is also updated.
• For simple and complex assets, TCO is calculated by aggregating all the expense lines
associated with the asset. Whenever a new expense line is added to the asset, the TCO
reflects the updated total automatically.
• For serialized assets, asset TCO is the sum of all expense lines under that asset.
• For complex assets, the cost incurred on the child is also added to the TCO of the parent
asset.
• If a child asset is swapped, there will be one expense line created that is the operational cost.
The capital cost of new child assets is also added to the parent TCO. The last_used field in the
swap asset is populated and this field is used to query any expense lines created after that.
The last_used field on the swapped out asset is populated as it goes back to the stockroom.
• The cost of child assets is part of the parent asset cost for a complex asset and thus expense
lines for child assets are empty.
• If a child asset is removed, its expense lines persist and the parent TCO doesn't get affected.
• In the case of user-assembled assets, parent and child both have expense lines and the child
expense line roll ups to the parent and the amount is added to the parent TCO.
• For multi-hierarchy assets, any expense line created on the child asset is referenced by a
many-to-many relationship between all the parents in the hierarchy.
• Consumables are set to merge and split and so are the expense lines. Any expense lines
created by task rate cards are added to the TCO. The calculation applies for simple assets.
In case consumables are used as child assets, then their expense lines are rolled up to the
parent. TCO won’t be tracked for individual consumables.
• The value obtained by reselling assets is added as a negative cost to TCO. For leased assets
that have a monthly lease payment, create expense lines on the start date of the lease for
every month.
• The Asset field on expense lines is populated with the asset reference from the task record.
• Expense lines created after closing a work order task or an incident will have its Asset field
populated from the asset reference on the work order task or incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
TCO benchmark and threshold
After you specify a TCO benchmark cost, the TCO benchmark threshold is automatically
calculated by multiplying the TCO Benchmark by the TCO benchmark threshold percentage.
You can manually override the TCO benchmark threshold by changing the percentage in the
asset_tco_benchmark_threshold_percentage system property.
You can manually override the TCO benchmark threshold by changing the value on the TCO
benchmark threshold field in the Financial section of a model form.
If you update the TCO benchmark, the TCO benchmark threshold gets recalculated.

Rate cards, expense lines, and expense categories
The Enterprise Asset Management application automatically sums the time worked records
and calculates the total cost by multiplying the rate cards. Rate cards are created for each task
across all workflows. Rate cards capture costs on a per task basis or on the time consumed. The
Enterprise Asset Management application supports the following rate cards:
• task rate cards: Cost captured by tasks.
• labor rate cards: Cost captured by the time consumed on an hourly basis. Labor rates can be
defined at the user level.

Note: To use rate cards, you must activate the ServiceNow® Cost Management
(com.snc.cost_management) plugin.
By default, the task rate card is used. To change to using the labor rate card, open a task rate
record and select the Use time worked field.
After a task is closed, an expense line is created based on the task time worked captured. An
expense category is then attributed to the expense line. The expense lines amounts are added
to the total cost on the asset. The expense lines appear under the Expense line related list under
the asset.

Time capturing for tasks
Each task has a time capturing capability that creates time worked records for you.
You can start, record time, pause, resume, and close your tasks as described below:
1. Select Start Work to begin your work. This moves the status of the task from Open to Work in
Progress. You can then either select Start Timer or Record Time to capture time.
◦ Start Timer: Automatically captures time. After you select this button, the timer is initialized.
◦ Record Time: Manually enter the time in hours, minutes, and seconds in the Record Time
dialog box and select Save to capture the time record.
2. Select Pause Work to pause work. After you pause your work, the timer stops and a task work
record automatically gets created in the Time Worked tab. Every time you pause your work, a
task work record gets created. Based on the number of times you pause work, multiple task
work records get created.
3. Select Resume to resume your work and restart the timer. You can also select Close Task to
close your task.
When you select Close task, the time as well as the task gets closed. To arrive at the total
time spent on a task, all task work record entries created for that task are added up and then
multiplied with the labor rate to arrive at the total cost for a task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
TCO reports
There are two types of TCO reports; TCO comparison and TCO vs benchmark. TCO comparison
reports are stacked by expense category.

Normalize TCO
Normalizing TCO refers to averaging the cost over the useful life and the asset life. The
normalized calculation is for Projected TCO reports, which are only offline.

Domain separation
TCO reports support domain separation.

Upgrade considerations
If you’re upgrading to Zurich, after the scheduled job TCO Upgrade for Enterprise Assets runs,
the following updates are made:
• The Asset field on task records is populated on all the expense lines using the source table
mentioned in the Source ID field. The source table defines from where the expense line
has been created. Whether it’s being created for a task, a configuration item, a contract, or
for a purchase asset. When the scheduled job TCO Upgrade for Enterprise Assets runs,
it searches for all task records and populates asset references from the task record to the
corresponding expense line for the task. Similarly, the same scheduled job searches for all
configuration items (CI) and populates asset references from the CI to the corresponding
expense lines.
• The Expense category field, introduced in Zurich, is populated based on the source of the
expense line. There are several expense categories for tasks. For example, the expense lines
created for a purchase asset and for a contract asset have different expense categories.
Similarly, there are different expense categories for CIs too.
• The following three fields in an asset record get populated:
◦ cmn_asset_tco: View this field in the Financial section in an asset record.
◦ cmn_end_of_useful_life: View this field in an asset record by selecting the vertical ellipsis
next to Asset Details and then select Show XML.
◦ cmn_first_used: View this field in an asset record by selecting the vertical ellipsis next to
Asset Details and then select Show XML.
• Any expense lines created on simple assets will be added up to asset_tco.
• For pre-assembled and user-assembled assets, any expense lines created on assets will also
roll up to the parent TCO.
Related topics
Configuring Total Cost of Ownership for enterprise assets

Repair flow to fix defective enterprise assets within a stockroom
Use the repair flow to get the defective enterprise assets in your stockroom fixed so that the
repaired assets can be used in different Enterprise Asset Management workflows.
By using the Repair flow, your organization can internally fix the assets that are damaged or out
of the warranty period. The repaired assets can be put back to use after validation. There's no
external vendor involved in the repair of defective assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
As an asset manager, you can request repair of assets that are either defective or pending repair
in your stockroom by submitting repair orders. For more details, see Request repair of defective
enterprise assets. The repair flow is triggered when you submit a repair order. A repair order
has repair order lines that are associated with repair tasks for the assets. The asset technician
completes the repair tasks associated with the repair order. The repair flow completes after the
repaired asset is evaluated. For more details, see Manage repair of defective assets in your
stockroom in the Enterprise Asset Workspace and Manage enterprise asset repair tasks using
the Mobile Agent application.

Stages in the Repair flow
1. Troubleshoot: Stage to evaluate the defective asset and assess the following:
◦ Issues with the asset
◦ Parts required
◦ Steps to repair the defective asset
At this stage, an asset technician confirms if the asset is repairable, redeployable, or
unrepairable. The Repair flow proceeds to the next stage only if the asset is repairable.
Otherwise the repair order is marked as Complete.
2. Repair: Stage to confirm repair of the defective asset. In this task, the asset is either repaired,
redeployed, or marked as unrepairable.
The repair flow proceeds to the next stage only if the asset is repaired. Otherwise the repair
order is marked as Complete.
3. Evaluate: Stage to perform a quality control check of the repaired asset. Based on the
evaluation results, the asset is either redeployed or disposed of. The Repair flow is completed
after asset evaluation.

Note: You can specify the reason for the asset failure using failure codes in the
Troubleshoot asset and Repair asset tasks. You can also specify the solution that you
applied to address the asset issue using the resolution codes in the Repair asset task.
These details are also available on the repair order line form. For more details, see Failure
and resolution codes in Enterprise Asset Management.

Inventory picking for Enterprise Asset Management
As an inventory user working in large stockrooms, use the Inventory picking feature to pick the
assets in the stockroom easily and facilitate the asset pick-up by technicians.
The Inventory picking feature includes adding an Asset pick task in the following Enterprise
Asset Management workflows:
• Standard Enterprise Asset Request
• Enterprise Refresh Request
• Sourcing workflow

Note: The Asset pick task is available only if it’s enabled explicitly for a stockroom that's
used to source asset requests, refresh requests, or sourcing requests. For details, see
Enable the Asset pick task for your stockroom in the Enterprise Asset Workspace.
The Asset pick task enables you to pick the assets from any aisle and space within your
stockroom. You can then drop the picked asset to a specified place within the stockroom. After

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
you complete the Asset pick task, asset technicians can pick up the assets to fulfill the requests
assigned to them.
For more information on the Asset pick task, see Manage enterprise asset picking within your
stockrooms and Manage enterprise asset pick tasks using the Mobile Agent application.

Managing inventory by putting away enterprise assets
Use the Asset put away feature to track asset movement efficiently in the inventory.
The Asset put away task enables you to track asset movement from the receiving bay of the
inventory to the designated space within the stockroom. The Asset put away task confirms that
when an asset is received in the inventory, you have filled the aisle-space information for it. An
Asset put away task is automatically created in the Enterprise Asset Management when the
following required business rules are met:
• When an enterprise asset is created in the Enterprise Asset Management and the Aisle-space
field value isn’t available, an Asset put away task is created. Open the Asset put away task and
updated the Drop off location field value, to move the asset to designated aisle-space in the
stockroom.

Note: You can create an Asset put away task manually for the in stock assets in the
inventory. For more information about manually creating an Asset put away task in the
Enterprise Asset Management, see Create an Asset put away task in the Enterprise Asset
Workspace.
• When the Stockroom field is updated for an enterprise asset in the Asset Details form, an
Asset put away task is created. Open the Asset put away task and update the Drop off location
field value, to move the asset to the designated aisle-space in the stockroom.

Note: You can create the Asset put away task for a stockroom only if the stockroom is
enabled to perform warehouse tasks. For more information about enabling the feature, see
Enable the asset put away task for your stockroom in the Enterprise Asset Workspace.
In the Enterprise Asset Workspace, the inventory users can perform the following actions:
• Create an Asset put away task manually for the in stock assets. For more information, see
Create an Asset put away task in the Enterprise Asset Workspace.
• View the open put away tasks related to the inventory and stockroom. For more information,
see View open put away tasks for your stockroom in the Enterprise Asset Workspace.
• Update the Drop off location field for the open task in the Put away form and close it. For more
information, see Close an Asset put away task in the Enterprise Asset Workspace.
Using the ServiceNow Agent application, you can scan the in stock assets in the inventory and
put away them in the scanned drop-off location. After the asset is placed in the drop-off location
within the stockroom, you can close the Asset put away task. For more information on the mobile
experience for Asset put away task, see Manage enterprise asset put away using the ServiceNow
Agent application.

Receiving enterprise and consumable assets at stockrooms
As an enterprise asset manager or enterprise asset technician, you can receive assets at a
stockroom from any workflow using the unified and standardized receiving mechanism.
With the standardized receiving process, you don't need to be familiar with the specific workflow
to which the assets belong. Therefore, you can receive hardware and consumable assets from
different shipments originating from sources, like transfer orders, purchase orders, or any other
workflows seamlessly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
Requirements and limitations
• You can receive enterprise assets in the Hardware Asset Workspace only if the Enterprise
Asset Management applications is activated.
• You can receive hardware assets in the Enterprise Asset Workspace only if the Hardware Asset
Management application is activated.
• You can only receive complete quantity of consumables.
• You can receive assets from a purchase order line only in the Zurich or later releases.

Asset receiving mechanisms
You can receive a single asset or multiple assets in bulk using any of the following options on the
enhanced stockroom form:
• Receive assets: You can either search for an asset using its Asset Tag, Serial Number, or MAC
address and receive it, or select one or more assets from the list of inbound shipment assets
and receive them. For more details, see Receive an enterprise asset at a stockroom in the
Enterprise Asset Workspace and Receive assets from inbound shipments at your stockroom in
the Enterprise Asset Workspace.
• Import assets: You can download the Excel template, add the asset details that you want
to receive, and import the Excel template. During the import process, the system performs
validations, and you can view the imported asset records, validation status, and comments in
the Import asset row [sn_itam_cmn_import_asset_row] table. Based on the validation status,
you can select and receive the assets. If there are any issues with the asset records, you must
address those issues before you can receive the assets. For more details, see Import and
receive assets in bulk at your stockroom in the Enterprise Asset Workspace.
When any asset is received at the stockroom, the following changes happen:
• The State of the asset changes from In transit to In stock.
• The stockroom field on the asset form is automatically updated.
• The receive tasks in the source workflows associated with the asset that you received are
automatically closed.

Asset performance reports in the Enterprise Asset Workspace
Gain insights into the overall operational efficiency of your organization's enterprise assets by
using the asset performance reports available in the Asset analytics view.
Asset performance involves assessing how effectively and efficiently assets fulfill their intended
functions within an organization. The evaluation includes measuring and analyzing key
performance indicators (KPIs), such as:
• Asset availability to determine when the asset is operational.
• Mean time between failures (MTBF) to measure reliability.
• Mean time to repair (MTTR) to measure repair efficiency.
• Total asset task time summary to measure the total time worked on the related tasks for an
asset and its child assets.

Benefits of tracking asset performance
Reduce unplanned downtime
Monitoring asset health in real-time help prevent and predict issues before they
cause downtime.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
Improve maintenance efficiency
Metrics like MTTR and MTBF help you schedule maintenance more effectively,
reducing wasted time, and improving technician efficiency.
Maximize asset life and return on investment (ROI)
By detecting early signs of wear and tear and scheduling timely repairs,
organizations can make their equipment last longer and delay the need for
replacements.
Enhance financial planning
Insights into performance help identify models or locations that aren't performing
well or have ongoing problems, guiding better investment choices.
Align operations with service levels
Tracking availability helps assets meet the required uptime targets set by service
level agreements (SLAs), compliance standards, or production schedules.

Considerations, requirements, and limitations
• Asset key performance indicators (KPIs) aren't calculated for pallets, consumable, and bundle
assets.
• Asset KPIs aren't calculated by default.
• To track the asset KPIs that include Asset availability, MTBF, and MTTR, you must perform the
following configurations:
1. Opt in to the model categories of the assets for which you want to monitor the KPIs.

Note: If a model category has child categories, selecting the parent category for
performance tracking doesn’t automatically include the child categories. You should
opt in to the specific child categories you want to track.
2. Define an operation schedule, which is a collection of schedule entries that specify the
operational status and total operational duration for any entity that references the schedule.
The schedule entries define calendar hours of operation within a schedule.
For details, see Create an operational schedule for enterprise assets

Note: If an operational schedule isn't defined, the Default operation schedule is
applied.
3. Create an Asset schedule to associate the assets with an operational schedule.

Note: If an asset isn't associated with an operational schedule, the Default asset
schedule will be applied.
• The calculation of asset KPIs for enterprise assets begins when the asset transitions to the In
use state for the first time.
• KPIs are tracked until the state of the asset changes to Retired or Missing.

Calculation of asset KPIs
The KPIs are calculated based on the tasks associated with the asset and the
operational schedule of the asset. The KPI values are stored in the Asset availability
[sn_ent_asset_availability] table, which extends the Service Availability table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
Performance tracking for assets that belong to a model category opted in for performance
tracking begins when the asset’s state changes to In use for the first time. A record is then
created in the Asset Availability table with Asset availability % set to 100. The Asset availability
% value decreases when the asset experiences an outage.
Outage record creation
An outage record is created in the Outages [cmdb_ci_outage] table when:
• The state of an asset changes from In use to any of the following:
◦ In stock - Pending repair
◦ In stock - Pending disposal
◦ In stock - Defective
• A work order task is created
• An incident is created
The outage record is closed when:
• The status of the asset changes back to In use.
• The work order task is closed.
• The incident is closed.
The duration of the outage is calculated when the repair task is closed.
Classification of outages
• Planned outage: The task type is Planned maintenance or Calibration.
• Unplanned outage: The task type is Break-Fix.
Handling overlapping outages
Outages can overlap due to multiple events being logged within the same time
window. To maintain accurate KPI calculations, overlapping outages are handled
with these rules:
1. Overlaps between unplanned outages:
◦ When multiple unplanned outages occur during overlapping time periods, they
are not treated as separate outages. Instead, they are merged into a single
outage to help prevent downtime from being overstated.
◦ The total duration of this combined outage is calculated by merging all
overlapping time intervals.
◦ A sample outage calculation is here:
a. Outage A: 10:00 AM – 12:00 PM
b. Outage B: 11:30 AM – 1:00 PM
Result: The resulting outage window is 10:00 AM – 1:00 PM (a single 3-hour
outage).
2. Overlaps between planned and unplanned outages:
◦ When a planned outage overlaps with an unplanned outage, the system
prioritizes the unplanned outage. The reason is that unplanned failures have
a significant impact on asset reliability and performance, and should be fully
accounted for in downtime metrics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
◦ The overlapping period is classified as an unplanned outage, while any
remaining time is classified as a planned outage.
◦ A sample outage calculation is here:
a. Planned outage: 2:00 PM – 4:00 PM
b. Unplanned outage: 3:00 PM – 5:00 PM
c. Overlapping period: 3:00 PM – 4:00 PM
d. Resulting outage window: 2:00 PM – 5:00 PM
Result:
▪ The period from 2:00 PM to 3:00 PM is counted as planned outage time.
▪ The period from 3:00 PM to 5:00 PM is counted as unplanned outage time.
Passing on outages through the asset hierarchy
In an asset hierarchy, outage on assets or their child assets are handled as follows:
• If a child asset with the Required field set to true experiences an outage, its
parent asset will also have the outage.
• If a parent asset has an outage, all its child assets will also have the outage.
Asset KPIs
Asset KPI

Formula

Asset availability
(in %)

Mean time
between failures
(MTBF) (in hours)
Mean time to repair
(MTTR) (in hours)

(Operating hours - Total planned downtime Total unplanned downtime)/(Operating hours Total planned downtime)
(Operating hours - Total planned downtime Total unplanned downtime)/(Total unplanned
outages)
(Total unplanned downtime)/(Total unplanned
outages)

Definition of the variables used in the KPI calculations is as follows:

Variable

Definition

Operating
hours

The duration from when the asset first transitioned to the In use state until the
current date and time within the asset schedule.

Planned
downtime

The duration from when the asset transitioned from the Work in progress state
to the Closed complete state for work order tasks of the work types Planned
Maintenance or Calibration, within the asset schedule.

Unplanned The duration from when the asset transitions from the In use state to any repair
downtime state, such as In stock - Pending repair, In stock - Pending disposal, or In stock Defective, until it returns to the In use state, within the asset schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
Variable

Definition

If there's no repair state present on the asset through a repair order or other
processes, the Work in progress duration of the Breakfix work order task type is
used to determine the outage duration. However, if there are overlapping durations
between the repair state and the Breakfix work order tasks, the combined duration
of both is considered. The asset schedule is also considered when determining
the outage duration.
Total
The count of total outage records for an asset excluding planned outages
unplanned accounting for overlaps. Overlapping and concurrent outages are consolidated as
outages
one outage.

Accessing asset KPI reports
• Contextual side bar: You can view the following reports on the contextual side bar:
◦ Asset availability and related KPIs report for an individual asset.
◦ Asset task time summary report for all enterprise assets.
• Asset performance tab on the Asset analytics view: You can view the average values of the
KPIs, including Average availability, Average MTTR, and Average MTBF, for all the assets
that are being tracked. Additionally, you can see a list of the assets that contributed to the
calculation of these KPIs. For details, see Asset Analytics overview for Enterprise Asset
workspace.

Scheduled job for calculation of asset KPIs
• The Calculate asset performance KPIs scheduled weekly job runs every
Saturday to calculate the KPIs for the assets that belong to the model categories opted in for
performance tracking. These KPIs are then reflected in the Asset availability and related KPIs
report, which displays the most recent KPI values.

Note: To track historical KPIs for existing assets in the opted-in model categories, run

the Calculate availability for historical data job. This job considers
the following tasks associated with an asset to calculate the outages and KPIs:
◦ RMA task
◦ Work order task
◦ Repair task
◦ Troubleshoot task
◦ Evaluate task
◦ Recall task
• The Asset availability data collection scheduled weekly job runs every
Sunday to calculate the average values of the KPIs that includes Average availability, Average
MTTR, and Average MTBF. The job then generates the reports in the Asset performance tab of
the Asset analytics view.

Configuring Enterprise Asset Management
Configure the Enterprise Asset Management application to manage the life cycle of your
enterprise connected and non connected assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
Configuration overview
Configuring the Enterprise Asset Management application by system administrators involves
performing the following tasks. Depending on your organization's needs and requirements, some
configuration tasks are optional.
Enterprise Asset Management configuration
Task

Required/optional

Resource

Install the Enterprise Asset
Management application

Required to use the
Enterprise Asset Management Install Enterprise Asset
Management
application.
Enterprise Asset Workspace

Opt-in to the Enterprise Asset
Management Content Service

Install the Enterprise Asset
Management for Healthcare
application

Optional. This task enables
your organization to share
unnormalized enterprise
model data with ServiceNow
to improve the normalization
process,
Optional. This application
provides functionalities,
features, and workflows of
Enterprise Asset Management
that support healthcarerelated roles and asset
models

Opt-in to Enterprise Asset
Management Content Service
Enterprise Asset Management
normalization
Install Enterprise Asset
Management for healthcare
Enterprise Asset Management
for Healthcare

Install OT Asset Management
application

Optional. This application
helps you to manage assets of Install OT Asset Management
the Industrial model category
Install OT Asset Management
for Operational Technology.

Install the Enterprise Asset
Management for Data
Center and Network Asset
Management (DCNAM)
application

Optional. This application
provides the functionalities,
features, and workflows of
Enterprise Asset Management
but for mission-critical facilitybased enterprise assets and
linear assets only

Install Enterprise Asset
Management for Data
Center and Network Asset
Management (DCNAM)

Install the Enterprise Asset
Management for Providers
application

Optional. This application
adds DaaS provider-based
functionalities and workflows
to the base Enterprise Asset
Management application

Install Enterprise Asset
Management for Providers

Install the EAM Demo Data
application

Optional. This application
Install EAM Demo Data
provides demo data for the
Enterprise Asset Management
application.

Install Enterprise Asset Management
®

Request the Enterprise Asset Management application from the ServiceNow Store so that you
can track and manage your enterprise assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
Before you begin

Role required: sys_admin

About this task

The following plugins and applications are automatically installed with the ServiceNow Enterprise
Asset Management application:

Name

Description

Plugins
Asset Management
(com.snc.asset_management)

Procurement
(com.snc.procurement)
Field Service Management
(com.snc.work_management)
Enterprise Asset Management Core
(com.sn_eam_core)
Asset Management Workspace Recommendations plugin

Provides functionalities to integrate the physical,
technological, contractual, and financial aspects
of information technology assets. See Asset
Management
for more information on asset
management.
Provides the capability to source and receive
requested assets so that you can fulfill service
catalog requests. See Procuring enterprise assets
for more information on procurement.
Provides the capability to manage work orders and
related tasks. See Field Service Management
for
more information on Field Service Management.
Provides core functionalities, such as normalization,
for the Enterprise Asset Management application.
Provides actionable recommendations for users in
configurable workspaces.

(com.sn_itam_recomm)
SM Planned Maintenance
(com.snc.planned_maintenance)
Physical Assets
(com.sn_phy_assets)
Indoor Mapping for Assets
com.sn_ima
Work Management
(com.snc.work_management)
Performance Analytics
(com.snc.pa)
Playbook Experience Core

Provides the capability to manage regular
preventative maintenance of assets. See Planned
Maintenance
for more information on Planned
Maintenance.
Marker that aligns features for physical assetbased applications, including the Hardware Asset
Management and Enterprise Asset Management
applications.
Provides the capability to track the location of the
assets using indoor maps.
Provides the capability to manage your work orders,
work order tasks, maintenance plans, and other
relevant work order information.
Provides dashboards containing actionable data
visualizations that help you improve your business
processes and practices.
Provides a step-by-step guidance for setting up your
assets with important information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
Name

Description

(com.glide.playbook_experience.config)
Process Automation Designer for App
Engine

Provides a simplified and task-oriented view of
processes.

(com.glide.pad.license)
Cost Management

Provides options to plan and control business costs.

(com.snc.cost_management)
Applications
Expanded Model and Asset Classes

Adds enterprise model and asset classes that
extend out-of-the-box product model and asset
classes within the CMDB class hierarchy. In addition,
creates model categories that associate these
enterprise model and asset classes with CMDB
configuration item (CI) classes. See Expanded
Model and Asset Classes Store application for more
information on this application.

CMDB CI Class Models

Adds class models that extend the CMDB
class hierarchy, including class descriptions,
identification rules, identifier entries, and dependent
relationships. See CMDB CI Class Models store
app
for more information on this application.

Asset Management Common

Provides features that are common to the Hardware
Asset Management, Software Asset Management,
and Enterprise Asset Management applications,
including the catalog item to request asset
reclamation.

GRC: Risk Heatmap

Provides a heatmap component that enables you
to visualize the risk posture of your organization.
See Risk heatmap for classic risk assessment
or Operational risk heatmap for Advanced Risk
Assessment in the Risk Workspace
for more
information on risk heatmaps.

Smart Assessment Core
(com.sn_smart_asmt)

Foundational application that is required for
the smart assessment engine to work. This is
required for the Assessment designer, Assessment
component and Migration tools.

sn-smart-assessment-connected
Respond to assessments quickly using the
(com.sn_smart_assessment_connected) Assessment response component. Its userfriendly and simple design enables users to submit
assessments with more efficiency.
sn-smart-assessment-designer
(com.sn_smart_assessment_designer)

Create assessment templates and add instructions,
questions, and reference information to an
assessment template.

Basic Scoring for Smart Assessments
(com.sn_smart_scoring)

Scoring in Smart Assessment Engine is a systematic
way to evaluate responses to various questions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
Name

Description

within an assessment. By attributing scores to
answers, you can translate qualitative responses
into quantitative data, offering each evaluation's
measurable and comparable outcome.
Smart Assessment for Mobile
(com.snc.smart_assessment_mobile)

Application for smart assessment engine to work on
mobiles.

ISA Equipment Model
(com.sn_isa_model)

Data model for ISA-95 Equipment model entities and
templates.

Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter Enterprise Asset Management and then select Search.
4. Select the result called ServiceNow Enterprise Asset Management.
5. On the ServiceNow Enterprise Asset Management page, select Request Install.
The ServiceNow Request for App Installation - ServiceNow Enterprise Asset Management
dialog box opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - ServiceNow Enterprise Asset Management
dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

7. Select Request.
8. Select Close.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.

Install Enterprise Asset Management for healthcare
You can install the Enterprise Asset Management for Healthcare application (com.sn_eamhc) if
®
you have the admin role.The application includes demo data and installs related ServiceNow
Store applications and plugins if they are not already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: sys_admin

About this task

The following items are installed with Enterprise Asset Management for Healthcare:
• Store applications
• Roles
• Plugins
For more information, see Installed with Enterprise Asset Management for Healthcare.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Enterprise Asset Management for Healthcare application (com.sn_eamhc) application
(com.sn_eamhc) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
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

Install OT Asset Management
You can install the OT Asset Management application (com.sn_otam) if you have the admin role.
®
The application includes demo data and installs related ServiceNow Store applications and
plugins if they aren’t already installed.

Before you begin

Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: sys_admin

About this task

The following items are installed with OT Asset Management:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
• Plugins
• Store applications
• Roles
For more information, see Installed with OT Asset Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the OT Asset Management application (com.sn_otam) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you’re displayed.
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

Install EAM Demo Data
You can install the EAM Demo Data application (com.sn_eam_demo_data) if you have the admin
role. The application includes demo data for the Enterprise Asset Management application.

Before you begin

Warning:

Do not install the EAM Demo Data application in any production environments, as it can
cause data loss and corruption. The application is intended for internal use only.
Please consult with your account manager prior to installing the application. If you install
the application without prior consent, ServiceNow is not responsible for any data loss or
corruption that may occur.
• Review the EAM Demo Data
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Install the Enterprise Asset Management (com.sn_eam) application or one of the following
Enterprise Asset Management-dependent applications on your ServiceNow instance:

Note: For instructions on how to install the Enterprise Asset Management application,
see Install Enterprise Asset Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
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

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the EAM Demo Data application (com.sn_eam_demo_data) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select the Load demo data check box.
6. Select Install.

Opt-in to Enterprise Asset Management Content Service
Opt in to the Enterprise Asset Management Content Service to share unnormalized enterprise
model data from your organization with ServiceNow to improve the normalization process.

Before you begin

Role required: sn_eam.enterprise_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Normalization opt-in.

2. Select Opt-In Agreement to read the agreement and then select the check box, Yes, I have
read and accept the Opt-in Agreement.
3. Select Opt-In.

After you opt in, the Enterprise Models, Enterprise Model Lifecycles, Firmware Discovery
Models, Firmware Model Lifecycles, Custom Firmware Models KPIs, and Custom Firmware
CPE mapping are automatically enabled. The Custom Enterprise Product Models KPI is
automatically disabled.
4. To disable a KPI, select the toggle button next to the KPI and then select Save.
5. To opt out, select I would like to opt my company out of the Enterprise Asset Management
Content Service Program and then select Opt-Out.
After you opt out, the Enterprise Models, Enterprise Model Lifecycles, Custom Enterprise
Product Models, Firmware Discovery Models, Firmware Model Lifecycles, Custom Firmware
Models KPIs, and Custom Firmware CPE mapping are disabled and your company no longer
contributes to the improvement of the normalization process. You still receive incremental
content updates, based on what the Content Service team can create from other sources. Your
company can rejoin the Enterprise Asset Management Content Service at any time.

Configure Google Maps to integrate with linear assets
Configure the integration between Google Maps and geomaps, a ServiceNow component, that
provides Google Maps functionality while working on linear assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
Before you begin

Role required: sys_admin

About this task

sn-geo-map is the UI component used to support the map visualization in linear assets. For
more details on geomaps, see the section titled Geo Maps for linear assets in Linear assets in
Enterprise Asset Management.

Procedure
1. Obtain a Google Maps API key.
A Google Maps API Key is an alphanumeric key. For information, refer to Google
documentation.
2. In your ServiceNow instance, navigate to System Properties > All Properties.
3. Search for the system property google.maps.key and open it.
4. Enter the Google Maps API key in the Value field.
5. Select Save.
Google Maps and geomaps are integrated, enabling you to work on linear assets.

Create sites in the Enterprise Asset Management
Create a site for asset groups in the Enterprise Asset Management application.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

For detailed information on what sites are and how are they used in asset groups, see Asset
groups in Enterprise Asset Management.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate > Asset groups.
2. Select Sites.
3. Select New to open the Create New Equipment Model Entity page.
4. On the form, fill in the fields.

Field

Description

Entity name

Name of the equipment model entity.

Short code

Short code that is assigned to this equipment
model entity.

Parent

Parent of the entity. Once a parent is
selected, the Template field is automatically
populated

Path

Auto-generated based on the short code and
the hierarchy.

Template

The template that defines the hierarchy of the
parent according to the ISA-95 hierarchical
entity model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
Field

Description

Location

Location of the equipment model entity. For
example, Atlanta Building 64 would be the
location for each associated equipment
model that is located there.

Level

The hierarchical levels of a site with site
being at the highest level, followed by area,
work center, and work unit.

Site

Refers to an ISA-95 hierarchical entity model.
Sites are entity records in the Equipment
Model Entity [cmdb_ci_ot_isa_entity] table,
organized in a hierarchical structure.

Company

Name of the company that this entity belongs
to.

Business Unit

Business unit of the company that this entity
belongs to.

Short Description

A description of the site entity.

Assigned to

The person primarily responsible for the
entity.

Support group

The group to contact if you encounter any
issues with the entity.

Managed by

Name of the assigned person who owns and
is responsible for managing this entity.

Managed by group

The group who maintains the entity.

Process criticality

Measure of how critical, or important, the
equipment model entity is to the process.
Select the process criticality for the entity. For
example:
◦ 1 - most critical.
◦ 2 - somewhat critical.

Operational status

Current operational status of the entity:
◦ Operational: Entity that is fully operational
in the production process.
◦ Non-Operational: Entity that is nonoperational in the production process.

5. Select Save.
The newly created site appears in the Sites tab.

Map enterprise roles to enterprise classes
Gain additional access to model categories by mapping individual enterprise roles to additional
enterprise classes.

Before you begin

Role required: sn_eam.enterprise_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
About this task

To map enterprise roles to enterprise classes, you need to first provide roles access to the
classes and then expose the tabs associated with those classes in the designated workspace.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Admin center.
2. Select Roles-to-class access
3. Select the role record that you want o configure.
The respective class access rules page opens. For example, if you select the Facility asset
technician enterprise class access rules record, the Facility asset technician enterprise class
access rules page opens.
4. Select a model category from the Additional model categories list.
The classes related to the model category appear in the Class names.
5. Select Save.
The role is now assigned to the classes that you selected. You need to now expose the model
and asset tabs related to these classes by navigating to the Model and asset tabs in the Admin
center.
6. Select Model and asset tabs in the Admin center.
7. Select the model category name, that you assigned to the role, to open the class tab
configuration page.
8. Select Include in tab and Include in dialog box.
9. Select Save.
Role access is granted to the additional classes and the model and asset tabs associated with
those classes are automatically visible in the specific workspace. Additionally, all dashboards
are updated with data pertaining to the classes that you configured.

Manage failure and resolution codes
Improve maintenance efficiency by managing the failure and resolution codes in the Admin
center of the Enterprise Asset Workspace.
As an enterprise administrator or inventory administrator, you can perform the following actions
in the Admin center:
• Create a source for failure and resolution codes.
• Create failure and resolution codes.
• Import failure and resolution codes through Excel template.
As an inventory user or enterprise asset technician, you can perform the following actions:
• View the available failure and resolution codes by navigating to Workspaces > Enterprise
Workspace > Admin center > Failure and resolution and selecting the Codes list.
• View the sources for failure and resolution codes by navigating to Workspaces > Enterprise
Workspace > Admin center > Failure and resolution and selecting the Sources list.
• Select the failure and resolution codes in the Repair flow task forms. For more details, see
Troubleshoot assets requested for repair in the Enterprise Asset Workspace and Complete the
repair asset task in the Enterprise Asset Workspace.
Create a source for failure and resolution codes
Create a source to be associated with any failure or resolution code. The source for a code could
be internal, external, or even from a manufacturer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
Before you begin

Role required: sn_eam.enterprise_admin or inventory_admin

About this task

You should have at least one source before creating failure or resolution codes.

Note: Sources of the codes are stored in the Asset service source
[sn_ent_asset_service_source] table.

Procedure
1. Navigate to Workspaces > Enterprise Workspace > Admin center > Failure and resolution.
2. In the Failure and resolution list, select Sources.
Any existing sources are shown in the sources list.
3. Select New.
4. On the form, fill in the fields.
Create New Asset service source form
Field

Description

Source

Name of the source.
For example, External or Internal.

Description

Brief description of the source.

5. Select Save.

Result

The source that you created is shown in the Sources list.
Create a failure or resolution code
Create a failure or resolution code to help enterprise asset technicians identify either the asset
failure or the solution to the asset problem.

Before you begin

The source for the code that you want to create should already be available. For more details,
see Create a source for failure and resolution codes.
Role required: sn_eam.enterprise_admin or inventory_admin

About this task

Failure and resolution codes are stored in the Asset service source [Asset service code] table.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Admin center > Failure and
resolution.
2. In the Failure and resolution list, select Codes.
Any existing codes are shown in the Codes list.
3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
Create New Asset service code form
Field

Description

Display
name

Name of the code that's automatically generated based on the values in the
Code and the Description fields when the code is created. For example, if the
Code field has a value F1001 and the Description field is Power failure, then the
Display name is F1001-Power failure.

Code

Unique identifier used to identify an asset failure or the solution to it. For
example, F1001 or R1001.

Description Brief description that explains what the code signifies. For example, Power
failure.
Type

Type of code. The following values are available:
◦ Failure
◦ Resolution

Parent

Code of the parent.

Note: The parent code is of the same type as the child code. For
example, the parent of a failure code is another failure code, and the same
applies to resolution codes.
Model
categories

Model categories to which the code can be applied.

Note: When you select a parent on the code, the model category is
inherited from the parent code. However, you can still update the this field.
If you don't select any model category, the code applies to all model
categories.

Source

Source of the code. This field is required.

5. Select Save.

Result

The code that you created is shown in the Codes list.
Import failure and resolution codes in bulk
Import multiple failure and resolution codes via Excel templates in the Admin center to assist
enterprise asset technicians in diagnosing asset issues and their resolutions.

Before you begin

The source for the codes that you want to import should already be available. For more details,
see Create a source for failure and resolution codes.
Role required: sn_eam.enterprise_admin or inventory_admin

About this task

Note: The import records are stored in the Asset service import
[sn_itam_common_asset_service_import] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Admin center > Failure and
resolution.
2. In the Failure and resolution list, select Import.
3. Create an asset service import.
a. Select New.
b. Download, update, and save the code import template.
i. Select Download Template.
ii. Fill in the template with the details of the codes.
The template has the following fields:
▪ Code: A unique identifier used to identify an asset failure or the solution to it. For
example, F1001 or R1001. This field is required to import the template.
▪ Description: A brief description that explains what the code signifies. For example,
Power failure.
▪ Type: Type of code. You can either specify Failure or Resolution in this field. This
field is required to import the template.
▪ Parent code: Code of the parent.

Note: The parent code is of the same type as the child code. For example, the
parent of a failure code is another failure code, and the same applies to resolution
codes.
▪ Model categories: Model categories to which the code can be applied.

Note: When you select a parent on the code, the model category is inherited from
the parent code. However, you can still update this field.
If you don't specify any model category, the code applies to all model categories.
▪ Source: Source of the code.
iii. Save the template.
c. On the Create New Asset service import form, fill in the details.
i. In the Name field, provide a name for the asset service import.
ii. Select Attach file and then select the code import template that you created in step b.
4. Select Import.

Result
• The Code import result section shows the following details:
◦ Code rows
◦ Code inserts
◦ Code ignored

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
◦ Code skipped
◦ Code errors
• If the import is successful, the Status of the asset import changes from Draft to Completed.
• If there are no issues with the template, all the codes that you imported are shown in the
Codes list.

Configure settings to monitor asset key performance indicators (KPIs) in the
Enterprise Asset Workspace
Set up the necessary configurations in the Admin Center to enable the tracking of KPIs for your
enterprise assets. These settings enable you to monitor and manage the performance your
assets.
As an enterprise administrator, configure the following settings to monitor asset KPIs:
1. Opt in to model categories to track performance KPIs for enterprise assets.
2. Create an operational schedule for enterprise assets.
3. Map enterprise assets to an operational schedule.
For details on asset performance and the related reports, see Asset performance reports in the
Enterprise Asset Workspace and Asset Analytics overview for Enterprise Asset workspace.
Opt in to model categories to track performance KPIs for enterprise assets
Monitor the performance KPIs of enterprise assets in your organization by enabling the KPI
tracking for the models to which the assets belong.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Admin center > KPI configuration.
2. From the KPI configuration list, select KPI opt in.
3. From the list of model categories, select the one for which you want to enable the KPI tracking.
4. On the Asset performance tracking form, select the Track performance KPI check box.
5. Select Save.

What to do next

Create an operational schedule for enterprise assets.
Create an operational schedule for enterprise assets
Define the scheduled operational time, which is the duration during which the asset will be in
use, by creating an operational schedule.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

An operational schedule record is stored in the Asset schedule
[sn_itam_common_asset_schedule] table. If an operational schedule isn't defined, the Default
operation schedule (24/7) hours is applied.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
Note: The calculation of asset key performance indicators (KPIs) begins when the asset
first moves to the In Use state. Therefore, the linked operational schedule must cover the
entire period for accurate results.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Admin center > KPI configuration.
2. From the KPI configuration list, select Operational schedules.
3. Select New.
4. On the form, fill in the fields.
Create New Operation schedule form
Field

Description

Name

Unique name for the operational schedule.

Parent

Parent schedule that constraints the new schedule.
For more details, see Parent and child schedules

Time zone

.

Time zone for the schedule. If you select Floating, the time zone is relative to
whatever process is accessing the item at the time.
◦ For example, if an enterprise administrator in Amsterdam sets a floating
schedule for 8:00A.M. to 5:00P.M., a user in San Jose sees the schedule as
8:00 A.M. to 5:00 P.M.
◦ When a schedule is defined in a specific time zone, users in different time
zones see the schedule with their own time zone applied.

Description Description of the operational schedule.
5. Select Save.
6. Add one or more schedule entries to the operational schedule.
a. Select the Schedule Entries tab.
b. Select New.
c. On the Schedule Entry New record, fill in the fields.
For details on Schedule Entry New record fields, see Schedule entry fields

.

d. Select Submit.
A schedule entry is created and listed under the Schedule Entries tab.

Note:
You can’t edit a schedule or its entries. If you want to stop using an asset schedule, you
can deactivate it by deselecting the Active check box. You can then create a schedule as
needed.
7. Optional: To view the calendar view of the schedule with the schedule entries, select Show
schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
What to do next

Map enterprise assets to an operational schedule.
Map enterprise assets to an operational schedule
Create an asset schedule to map the enterprise assets to an operation schedule.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

An asset schedule record is stored in the Asset schedule policy [sn_asset_cmn_schdule_policy]
table.

Note: If an asset isn't associated with an operational schedule, the Default asset schedule
(24 hours, 7 days a week or 24/7) will be applied.
The Asset performance - Map schedule policies job runs weekly to sync the
mapping between assets and the operational schedule.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Admin center > KPI configuration.
2. From the KPI configuration list, select Asset schedules.
3. Select New.
4. On the form, fill in the fields.
Create New Asset schedule form
Field

Description

Name

Unique name for the asset schedule.

Source
table

Source table for the assets. You can select any of the following tables:
◦ Enterprise asset [sn_ent_asset]
◦ Construction asset [sn_ent_construction_asset]
◦ Facility asset [sn_ent_facility_asset]
◦ Industrial asset [sn_ent_industrial_asset]
◦ Linear asset [sn_eam_linear_asset]
◦ Medical asset [sn_ent_medical_asset]
◦ Retail asset [sn_ent_reatail_asset]
◦ Tactical equipment asset [sn_ent_tactical_asset]
◦ Transportation asset [sn_ent_transportation_asset]
◦ Wearable asset [sn_ent_wearable_asset]
◦ Hardware [alm_hardware]

Condition Set a condition to select the assets that you want to associate with the
operational schedule. For example, if you set the Department field to IT, the
operational schedule is inked to all assets within the IT department.

Note: Select the source table before setting the condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
Field

Description

Schedule Operational schedule that you want to associate with the assets.
Priority

Order in which schedules should be applied to an asset when there are
overlapping schedules.

Active

Indicates whether the asset schedule is active.

5. Select Save.
6. Optional: To sync the mapping between the assets and the operational schedules on
demand, select Sync KPI records.

Managing enterprise models and assets
Create and manage your enterprise models and assets throughout their life cycle.

Overview of managing assets and models
Create and manage your enterprise models and assets by performing the following tasks.

Task

Role required

Create multi-component
models and assets

• sn_eam.enterprise_admin

Create enterprise models and
assets

• sn_eam.enterprise_admin

Create enterprise model
components

• sn_eam.enterprise_admin

Create and import
classification codes

Resources

• Create a multi-component
model
• sn_eam.enterprise_asset_manager
• Create a multi-component
asset

• Create enterprise models

• sn_eam.enterprise_asset_manager
• Create enterprise assets
Create enterprise model
components
• sn_eam.enterprise_asset_manager

• sn_eam.enterprise_admin (for
creating classification codes)

• Create classification
codes

• sn_eam.enterprise_asset_manager
• Import classification
(for importing classification
codes
codes)
Add or clone calibration
attributes to an enterprise
model and asset

• sn_eam.enterprise_admin

• Add calibration attributes
to an enterprise model
• sn_eam.enterprise_asset_manager
• Clone calibration
attributes to an enterprise
model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
Task

Role required

Resources

• Add calibration attributes
to an enterprise asset
• Clone a calibration
attribute to an enterprise
asset
Create linear assets and
linear asset types

sn_eam.enterprise_asset_manager

Create pallet assets

Create pallet assets in the
• sn_eam.enterprise_asset_manager
Enterprise Asset Workspace
• sn_eam.enterprise_asset_technician

Configure TCO for assets

sn_eam.enterprise_asset_managerConfiguring Total Cost of
Ownership for enterprise
assets

Create asset onboarding
process and multi-asset
onboarding process.

sn_eam.enterprise_asset_manager

Track assets using Indoor
maps

• Create linear assets
• Create linear asset types

• Create an asset
onboarding process
• Create a multi-asset
onboarding process

Track assets using indoor
maps in the Enterprise Asset
• sn_eam.enterprise_asset_manager
Workspace
• sn_eam.enterprise_admin

Manage enterprise asset
shipments

sn_eam.enterprise_admin

Managing enterprise asset
shipments

Manage enterprise asset
move orders

sn_eam.enterprise_asset_managerManaging enterprise asset
move orders

Manage risk scores

sn_eam.enterprise_admin

Managing risks scores
in Enterprise Asset
Management

Normalize enterprise models

sn_eam.enterprise_admin

Normalizing enterprise
models

Manage incidents

itil

Managing incidents
in Enterprise Asset
Management

Create knowledge articles

sn_eam.enterprise_admin

Create a knowledge
article for Enterprise Asset
Management

Create and manage enterprise models
Create and manage your enterprise models to keep track of your enterprise assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
Create a multi-component model
Create a multi-component model to define more than one model component based on the same
product model.

Before you begin

For details on multi-component models, see Multi-component models and assets in Enterprise
Asset Management.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. Create a model by navigating to Enterprise Asset Workspace > Enterprise model
management
You can create a pre-assembled or an user-assembled model. For details on creating a model,
see Create enterprise models.
2. After you created a model, add model components to the model.
For details on creating model components, see Create enterprise model components.
3. Once you added the model components to the model, change the status of the model to In
Production.
4. Select Publish to Enterprise Asset Catalog to publish your model to the catalog.
Create enterprise models
Create a model based on a top tier Enterprise Asset Management model category. Use models to
manage and keep track of your assets.

Before you begin

You can create a model based on any of the following Enterprise Asset Management model
categories:
• Construction
• Medical
• Transportation
• Industrial
• Facility
• Retail
• Tactical equipment
• Wearable
• Pallet

Note: Only consumables created from models in the Enterprise Asset Management
application can be used if the Asset strategy tracking for the model is set to create
consumable asset.

Note: The Enterprise Asset Management application supports only facilities models that
fall under the Facility model [sn_ent_facility_model] child class of the Enterprise good
model [sn_ent_model] class. The application does not support facilities models that are
listed in the Facility Models [cmdb_facility_product_model] table.
Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1640


<!-- page 1641 -->
Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise model management
2. Select the tab for the model type that you want to create.
◦ Select the All enterprise tab for all available enterprise model types.
◦ Select the tab for a specific enterprise model type, such as Facility, Industrial, Medical,
Retail, or Transportation.
◦ Select the All models tab for pallet models.
3. Select New.
If you are creating a pallet model, select New pallet model.
If you select New on any tab other than the All models tab, a dialog box opens, prompting you
to specify the type and category of the new model that you are creating. Proceed to step 4 to
fill in the fields in the dialog box.
If you select New pallet model on the All models tab, you are automatically redirected to the
Create New Product Model page. Proceed to step 6 to fill in the fields on the page.
4. In the dialog box, fill in the fields.

Field

Description

Type

The type of model you want to create.
Choose from the following options:

Note: This field appears only if you

selected New on the All enterprise tab.

◦ Enterprise Good Model
◦ Construction Model
◦ Facilities Model
◦ Industrial Model
◦ Medical Model
◦ Retail Model
◦ Transportation Model
◦ Tactical Equipment Model
◦ Wearable Model

Model category

The category that the model belongs to.

5. Select Create.
The Create New Product Model page appears. The model is in Build status by default and the
model category is a read-only field set to the category that you chose. You can change the
status only after you have saved the model record.
6. On the form, fill in the details.
For a detailed description of the fields, see Model fields for Enterprise Asset Management.
7. Select Save.
The model is created along with the related tabs such as Model Components, Assets,
Enterprise Model Lifecycles, Compatibles,Substitutes, and Vendor Catalog Items. You can
perform additional configuration on the model by entering details in the related tabs.
8. Change the status of the model to In Production once you are done configuring the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
9. Select Publish to Enterprise Asset Catalog to publish your model to the Service
Catalog.Publish to Enterprise Asset Catalog appears only when you change the status of the
model to In Production.
Enterprise models can be deleted only by the sn_eam.enterprise_admin role.
10. You may select Update risk if you updated the model's risk scores and want to propagate the
updated scores to the associated assets too.
After the EAM - Update model risk values to asset scheduled job is
completed, the risk values for all the assets associated with this model is updated.
Create enterprise model components
Create model components and add them to a model. A model comprising of one or more model
components is a multi-component model.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

The model category for the component can differ from that of the model. You can choose a
different model category for the model component. You can add model components to a model
only when the model is in Build status.

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise model management.
2. Select the All enterprise tab or the specific model tab for which you want to create model
components.
3. Select a model to open the model record.
The Create New Model Component page opens.
4. Select the Model Components tab and select New.
5. On the form, fill in the details.
For detailed description of the fields, see Model fields for Enterprise Asset Management.
6. Select Save.
The newly created model component appears in the Model Components tab and by default, is
in the In production status even though the model is in Buildstatus.
Create model categories
You can create model categories for the Enterprise Asset Management application.

Before you begin

Various base model categories are already available for you to choose from.
Keep the following in mind while creating model categories:
• When you create a configuration item (CI) class in the Configuration Management Database
(CMDB), you can also create a corresponding model category to associate that CI class with.
By associating a CI class with a model category, you can then associate that CI class with the
corresponding asset and product model classes.
• If you associate a CI class with a model category that is already associated with an asset class,
the asset and CI synchronization capability automatically triggers, creating assets for all CIs
under the given CI class. If an asset is not created automatically, you can create it manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
• The Allow pre-allocated, Allow in bundle, and Allow as main options are available only if the
model category is associated with an asset class.

Note: These options are not applicable to enterprise model categories.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Model categories.
2. Select New.
The Create New Model Category page appears.
3. On the form, fill in the fields.
Create New Model Category form
Field

Description

Name

Display name of the model category in the Service Catalog.

Parent
category

Parent model category that this model category falls under.

UNSPSC
code

United Nations Standard Products and Services Code (UNSPSC) for all products
under the model category.

Picture or
icon

Visual representation of the model category in the Service Catalog.

CI class

CMDB CI class that you want to associate with the model category.

Important: You can select a CI class only when you are creating the
model category. You can't select one after you have created the model
category.
Product
model
class
Asset
class

Product model class that you want to associate the model category with.

Asset class that you want to associate the model category with. You can select
a default asset class, such as Enterprise Asset, or any new asset class that you
have created. If you select Consumable or Software License, the CI class field
becomes read-only since consumables and software licenses do not create
CIs. If you specify a CI class and then select Consumable or Software License,
theCI class field automatically changes to None.

Important: You can select an asset class after you have created the
model category, but you can't change it after it has been selected.
After you associate the model category with an asset class, the Enterprise Asset
Management application can automatically create assets based on the given
model category.
Allow preallocation

Option to allow items under this model category to be added and tracked as preallocated assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


<!-- page 1644 -->
Field

Description

Allow in
bundle

Option to allow items under this model category to be used in bundles.

Allow as
main

Option to allow items under this model category to be used as the main
component in a bundle.

Is product
instance

Option that indicates if you are using a product instance to identify and
synchronize the assets, CIs, and install base items (IBIs) under this model
category.

Enforce CI Option to prevent the Enterprise Asset Management application from
verification automatically creating assets for a specific model category when CIs are added
manually or found through Discovery. This option enables you to review and
verify new CIs before adding them as assets.
4. Select Save.

Result

The model category is created. You can perform additional configurations on the model category
by entering details in the Product Models tab.
Add a substitute model for an enterprise model
On an enterprise model record, specify the related models that you can substitute the enterprise
model with.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise model management view.
2. Select either the All enterprise tab or the tab for a specific model category, such as
Construction.
3. From the list of available enterprise models, select the enterprise model that you want to add
substitute models for.
4. On the Substitutes tab of the enterprise model record, add substitute models for the given
enterprise model.
a. On the Substitutes tab, select Add.
b. In the Add model substitute dialog box, select the check box for each model that you want to
add as a substitute model.

Note: The dialog box displays only the enterprise models that have the same Asset
tracking strategy as the given enterprise model and do not have a State of Build.
c. Select Add.
The dialog box closes and you return to the Substitutes tab.
d. On the Substitutes tab, select the Refresh list icon (
substitute models.

) to populate the list of newly added

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
Create classification codes
Create classification codes and assign them to enterprise models and model categories to
increase the efficiency of enterprise models.

Before you begin

Each classification code is assigned to one or many model categories. Classification codes are
stored in the Enterprise model classification [sn_ent_model_classification] table.
Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise model management > Classification.
2. Select New.
3. On the form, fill in the details.

Field

Classification

Description

The display name of the classification code
record which is automatically generated after
the record is saved.
The display name is a concatenation of the
classification code, its description, and the
source.

Code

The classification code.
Based on your data infrastructure, the code
may adhere to a hierarchical structure.

Description

Description of the classification code.

Parent

Parent of the classification code. If you select
a parent, the model categories assigned to
the parent code are automatically populated
in the Model categories field. This field is
however editable. You can delete a model
category that is automatically populated or
you can add another model category.

Source

The source system that a classification code
is based on. For example, OmniClass is a
classification system for the construction
industry.

Model categories

Mode categories assigned to the code.

4. Select Save.
The display name of the classification code is generated and displayed in the Classification
field. The display name represents the code, the description, and the source. You can view the
new classification code record in the Classifications list view page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


<!-- page 1646 -->
Create sources for classification codes
Create sources that you can then assign to classification codes.

Before you begin

A source is a system of classification for a particular industry. For more details on sources, see
Classification codes.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Asset operations.
2. Select Create sources under Classifications and then select New.
3. On the Create New Enterprise model classification source page, enter a name of the source in
the Source field.
4. Enter a description of the source in the Description field.
5. Select Save.
The source appears in the Create sources page.
Import classification codes
Import multiple classification codes at one go to your ServiceNow instance.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Model classifications >
Import.
2. Select New.
3. On the Create New Enterprise Classification Import page, enter a name for the import in the
Import field.
4. Select Download template to download a spreadsheet.
5. Enter the details in the spreadsheet.
Ensure that you fill out either the Code or the Description column in the spreadsheet. Use
commas to specify more than one model category in the Model categories column.
6. Select Attach File to upload the spreadsheet (.xlsx).
7. Select Import to perform a validation check on the spreadsheet.
After you select Import, the Status field changes from Draft and moves to Pending, Uploading,
Transforming. After the import process is completed, the status changes to either Completed,
Completed with errors, or Failed. The details of the import process are displayed in the
Enterprise Classification Import and Classification import results sections.
8. Select the Classification Import Stagings related list to view the details of the spreadsheet
that you uploaded and also view any errors you received.
9. Open any record for which you got an error.
10. Fix the error, upload the spreadsheet, and import the record again.
Add calibration attributes to an enterprise model
Add calibration attributes to an enterprise model to specify and manage the calibrations that are
required for the associated enterprise assets throughout their life cycles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1646


<!-- page 1647 -->
Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

You can add calibration attributes at the enterprise model level or at the individual enterprise
asset level. Alternatively, you can create common calibration attributes that are not associated
with any enterprise models or enterprise assets. For details on how to add calibration attributes
to an individual enterprise asset, see Add calibration attributes to an enterprise asset. For details
on how to create common calibration attributes, see Create a calibration attribute library.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace.
2. From the Enterprise Asset Workspace, open the Enterprise model management view.
3. Select either the All enterprise tab or the tab for a specific model category, such as
Construction.
4. From the list of available enterprise models, select the enterprise model that you want to add
calibration attributes to.
5. On the Calibration attributes tab of the enterprise model record, select New.
6. On the form, fill in the fields.
Create New Calibration Attribute form
Field

Description

Attribute details
Name

Name of the calibration attribute.

Short
Brief description of the calibration attribute.
description
Criticality

Criticality level that indicates how important the calibration attribute is.

Service
frequency

Frequency at which you must perform the calibration.

Category

Type of calibration.

Note: The Enterprise Asset Management application includes default
calibration categories such as Electrical, Flow, Humidity, and Pressure. You
can create additional calibration categories for any calibrations that do not
fall under the default categories. For detailed instructions, see Create a
calibration category for your enterprise asset calibrations.
Active

Option that indicates if the calibration attribute is active.

Order

Order in which the calibration attribute applies to the enterprise model. If your
enterprise model contains more than one calibration attribute, the attribute with
the lowest numerical value applies to the model first.

Important: You must use a unique numerical value for each calibration
attribute.
Calibration properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1647


<!-- page 1648 -->
Field

Description

Value type

Method by which you want to measure tolerance conformance. Select one of
the following options:
◦ Accuracy % full scale: Fixed percentage of accuracy that your calibration
measurements must fall within at any point within the enterprise asset's full
measurement range. The corresponding tolerance limits remain the same at
every point within the measurement range. For example, if a measurement
range is 100 units and the accuracy percentage is set to ±1%, the tolerance
limits are ±1 unit at every point within the measurement range.
◦ Accuracy % point: Fixed percentage of accuracy that your calibration
measurements must fall within at a specific point within the enterprise
asset's full measurement range. The corresponding tolerance limits increase
or decrease proportionally based on the value of the point that you are
comparing your calibration measurement against. For example, if your
accuracy percentage is set to ±1% and you want to compare your calibration
measurement against a point that has a value of 50 units, the tolerance limits
for this specific point are ±0.5 units. If you want to compare your calibration
measurement against a point that has a value of 60 units, the tolerance limits
increase to ±0.6 units.
◦ Range: Measurement range that your calibration measurements must fall
within. The corresponding tolerance limits are based on the lowest and
highest acceptable point values within the range.
◦ Less than: Value within the enterprise asset's full measurement range that
your calibration measurements must fall below. The corresponding tolerance
limit is based on the highest acceptable point value within the range.
◦ Greater than: Value within the enterprise asset's full measurement range that
your calibration measurements must lie above. The corresponding tolerance
limit is based on the lowest acceptable point value within the range.
◦ True/false: Option to assess any qualitative elements of the calibration.

Scale

Full measurement range that you're measuring tolerance conformance against.

Note: This field appears only if you set the Value type field to Accuracy
% full scale.
Unit

Unit of measurement that you're using to measure tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options:
◦ Accuracy % full scale
◦ Accuracy % point
◦ Range
◦ Less than
◦ Greater than
Accuracy
(%)

Percentage of accuracy that your calibration measurements must fall within.

Note: This field appears only if you set the Value type field to either
Accuracy % full scale or Accuracy % point.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1648


<!-- page 1649 -->
Field

Description

Resolution

Smallest distinguishable change in value that you can detect and measure. The
higher the resolution is, the more specific the change in value is.

Note: This field appears only if you set the Value type field to one of the
following options:
◦ Accuracy % full scale
◦ Accuracy % point
Quality standard
Quality
standard

Set of requirements and guidelines that you must follow when performing the
calibrations.

Note: You can create quality standards manually in the Admin center
view of the Enterprise Asset Workspace. See Create a quality standard for
your enterprise asset calibrations for detailed instructions.
Instrument
Instrument Model of the instrument that you must use to perform the calibrations.
model
Instruction General instructions or instrument settings that you must follow when
performing the calibrations.
7. Select Save.
The form closes and you are automatically redirected to the new calibration attribute record.
8. Specify the points at which you can measure tolerance conformance.

Important: You must specify one or more points within each enterprise asset's
measurement range. If you do not specify at least one point, the calibration attribute
cannot be set to Active.
a. On the calibration attribute record, select Add calibration points.
The Calibration points dialog box opens.
b. In the dialog box, fill in the fields.
Calibration points dialog box
Field

Description

Point
name

Name of the point.

Expected Value that you want to measure tolerance conformance against. If you set the
value
Value type field to either Accuracy % full scale or Accuracy % point in the
Create New Calibration Attribute form, enter the value of the point that you
want to measure against. If you set the Value type field to True/false, select a
Boolean value of either true or false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1649


<!-- page 1650 -->
Field

Description

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form.
▪ Accuracy % full scale
▪ Accuracy % point
▪ True/false
Order

Order in which you want to use the point to measure tolerance conformance.
If your calibration attribute contains more than one point, the point with the
lowest numerical value is calibrated first.

Important: You must use a unique numerical value for each point.
Lower
Lowest acceptable value that the calibration measurement can reach to stay in
tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form:
▪ Accuracy % full scale
▪ Accuracy % point
▪ Range
▪ Greater than
If you set the Value type field to either Accuracy % full scale or Accuracy
% point, this field is read-only.
Upper
Highest acceptable value that the calibration measurement can reach to stay in
tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form:
▪ Accuracy % full scale
▪ Accuracy % point
▪ Range
▪ Less than
If you set the Value type field to either Accuracy % full scale or Accuracy
% point, this field is read-only.

c. To add an additional point to the calibration attribute, select the Add Content icon (
then fill in the fields.
Repeat this step for each point that you want to add.

) and

d. Select OK.
The dialog box closes and the points appear on the Calibration points tab of the calibration
attribute record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1650


<!-- page 1651 -->
What to do next

Create work orders to track the calibrations that are made to the associated enterprise
assets. These work orders must use a work order template with tasks that have a Work type of
Calibration. For more information on work orders, see Managing work orders for your enterprise
assets.
Clone calibration attributes to an enterprise model
Clone an existing calibration attribute to an enterprise model to add a calibration attribute with
similar settings.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise model management view.
2. Select either the All enterprise tab or the tab for a specific model category, such as
Construction.
3. From the list of available enterprise models, select the enterprise model that you want to clone
a calibration attribute to or from.
4. On the Calibration attributes tab of the enterprise model record, use one of the following
options to clone a calibration attribute:
◦ To clone a calibration attribute from this enterprise model to another enterprise model, use
the following steps:
a. From the list of available calibration attributes, select the check box for the calibration
attribute that you want to clone.
b. Select Clone to models.
c. In the Select models dialog box, select the Clone as active check box to automatically set
the cloned calibration attribute to active.
d. Select the check box for the enterprise model that you want to clone the calibration
attribute to.
e. Select Clone.
The calibration attribute is cloned to the selected enterprise model.

Note: If the selected enterprise model already contains another calibration
attribute with the same name, this attribute is cloned with a numeric suffix appended
to the name.
◦ To clone a calibration attribute from another enterprise model to this enterprise model, or to
clone a common calibration attribute from your calibration attribute library to this enterprise
model, use the following steps:
a. Select Clone from.
b. In the Select attribute to clone dialog box, select the Clone as active check box to
automatically set the cloned calibration attribute to active.
c. Select the check box for the calibration attribute that you want to clone.
d. Select Clone.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1651


<!-- page 1652 -->
The calibration attribute is cloned to the enterprise model and appears in the list of
available calibration attributes.

Note: If the enterprise model already contains another calibration attribute with the
same name, this attribute is cloned with a numeric suffix appended to the name.
View the enterprise model hierarchy in the Enterprise Asset Workspace
View the hierarchy details of pre-assembled and user-assembled enterprise models in a tree-like
format in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

The Model hierarchy option is shown only for a model that's associated with a parent or that has
model components. Model hierarchy isn't shown for simple, consumable, and hardware models.
The parent hierarchy details of a model aren't displayed.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Model management.
2. Select the pre-assembled or user-assembled model.
3. Select the Hierarchy icon ( ) on the contextual sidebar.
The model hierarchy is shown in a tree-like format. All the model components of the model that
you selected are displayed.
On the model hierarchy, the following details are displayed:
◦ A number at the right of the model shows the total number of model components associated
with that model.
◦ Quantity is displayed only for consumable models.
◦ The component number is added as a prefix to the model component.
Manage the lifecycle of enterprise models with calculated lifecycle templates
Manage the complete lifecycle of enterprise models by creating calculated lifecycle templates
and associating these templates with the models.
Create Calculated model lifecycle templates in the Enterprise Asset Workspace
Create Calculated model lifecycle templates to manage the complete lifecycle of the models
efficiently.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Asset Operations.
2. From the Calculated model lifecycle list, select Calculated model lifecycle templates.
The list of existing Calculated model lifecycle templates is displayed.
3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1652


<!-- page 1653 -->
Create New Calculated Lifecycle Template form
Field

Description

Name

Name of the Calculated lifecycle template.

Description

Brief information about the template.

Active

Option to indicate that the Calculated lifecycle template is available for use.

5. Select Save.
The Calculated Lifecycle formulas tab is displayed with the list of calculated lifecycle formulas
for the following lifecycle phases:
◦ End of Extended Support
◦ End of Life
◦ End of Sale
◦ End of Support
◦ End of General Availability
6. Define the calculated lifecycle formula for a lifecycle phase.
a. Select the calculated lifecycle formula.
b. In the Phase start and Phase end fields, enter the number of months for calculating the start
date and end date of the lifecycle phase.
c. Select Save.
The calculated lifecycle formula is updated with the values that you entered in the Phase start
and Phase end fields.

What to do next

Associate the Calculated model lifecycle template with an enterprise model. For details, see
Associate an enterprise model with a Calculated model lifecycle template.
Associate an enterprise model with a Calculated model lifecycle template
Associate an enterprise model with a Calculated model lifecycle template to populate the
lifecycle details of the model automatically.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Enterprise model management.
2. Select the All enterprise tab.
3. Select the model that you want to associate with a Calculated model lifecycle template.
4. In the Model Details section of the Model form, enter the template details.
a. In the Calculated lifecycle template field, select the calculated model lifecycle template that
you want to apply to the model.
b. In the Calculated lifecyle start date, select the date from which the Phase start date and
Phase end date are calculated for each lifecycle phase defined in the Calculated lifecycle
template that you selected.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1653


<!-- page 1654 -->
Result

The list of lifecycle phases with details such as Phase start date, Phase end date, and Source is
displayed in the Enterprise Model Lifecycles tab.

Create and manage enterprise assets
Create and manage enterprise assets throughout their life cycle.
Create a multi-component asset
Track and manage your assets by creating a multi-component asset from a multi-component
model.

Before you begin

For details on multi-component models, see Multi-component models and assets in Enterprise
Asset Management.
Role required:
• sn_eam.enterprise_admin
• sn_eam.enterprise_asset_manager

Procedure
1. Create a model by navigating to Enterprise Asset Workspace > Enterprise model
management
For details on creating a model, see Create enterprise models.
2. After you created a model, add model components to the model.
For details on creating model components, see Create enterprise model components.
3. Create assets from the multi-component model.
You can create a pre-assembled or an user-assembled asset.
For details on creating an asset, see Create enterprise assets. Once you create assets, child
assets are automatically created.
a. If you create a user-assembled asset, open the asset record.
b. Select either of the two to assemble assets:
▪ Assemble: gives you a choice to choose the assets present in the parent asset's
stockroom. Once you select the assets, select Assemble. For details on assembling
assets, see
▪ Auto assemble: triggers a process that automatically selects assets from a stockroom
and associates those assets with the parent asset. If the required quantity of assets is not
available, an error appears.
c. If you want to release all child assets, select Release all assets.
This process releases all child assets from the parent asset and assigns them back to the
parent stockroom.
The released assets move to In Stock status. Release all assets is only visible on screen
when assets are associated with a parent asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1654


<!-- page 1655 -->
4. To swap child assets, in the Details tab select SWAP.
The multi-component asset needs to be in the In maintenance state to swap assets. You can
swap multiple child assets at one go with other assets from the same model in any stockroom.
The model must be in the In stock state and Available sub state.
Create enterprise assets
Create assets for specific model categories in the Enterprise Asset Management application.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Enterprise asset classes have a one to one mapping to product model classes and model
categories. Enterprise asset classes are mapped to existing CI classes where applicable.
There are two kinds of assets: consumable assets and serialized assets. Consumable assets
don’t have an asset tag or a serial number.

Note: This topic provides details on how to create enterprise, construction, facility,
industrial, medical, retail, tactical equipment, transportation, and wearable assets. For
details on how to create pallet assets, see Create pallet assets in the Enterprise Asset
Workspace.
Unique identifiers for assets
When you create an asset that belongs to a model category linked to a CI class
with identification rules defined for fields like the Asset tag, Serial number, or
MAC address, you should provide details for at least one of these fields. The
identification rules for a CI class are defined in the CMDB Identification and
Reconciliation engine (IRE). For more details, see Identification rules
and Create a
CI identification rule . These rules help to uniquely identify the asset through these
required fields and maintain accurate asset records. However, specifying the values
for these fields is optional in the following scenarios:
• When you are creating an asset in the Build or On order state.
• When you are creating an asset that belongs to a model category without a CI
class.
• When you are creating an asset that belongs to a model category linked to a CI
class without any identification rules defined.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate.
2. Select the All enterprise tab to select from all the Enterprise Asset Management models or
select a specific asset tab such as Facility, Industrial, Medical, Retail, Transportation, and
Consumable.
3. Select New.
4. In the dialog box, fill in the fields.

Field

Description

Type

The type of asset you want to create. Choose
from the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1655


<!-- page 1656 -->
Field

Description

◦ Enterprise Asset
◦ Construction Asset
◦ Facilities Asset

Note: The Enterprise Asset
Management application
supports only facilities assets
that fall under the Facility asset
[sn_ent_facility_asset] child class of
the Enterprise asset [sn_ent_asset]
class. The application does not
support facilities assets that are listed
in the Facility [alm_facility] table.
◦ Industrial Asset
◦ Medical Asset
◦ Retail Asset
◦ Transportation Asset
◦ Tactical Equipment Asset
◦ Wearable Asset

Note: This field only appears if you

selected New from the All enterprise
tab.
Model category

The model category that the asset belongs to.
Based on the model category selected, the
asset can be linked to a configuration item.

5. Select Create.
The Create new asset page appears. By default, the asset is in Build state. You can change the
status only after you’ve saved the asset record.
6. In the Create New asset page, fill in the details.
For a detailed description of the fields, see Asset fields for enterprise assets.
7. Select Save.
The asset is created along with a Configuration Item (CI) for this asset. Child assets are
automatically created for the newly created asset. You can perform additional configuration
on the asset by entering details in the other tabs such as Child Assets, Contracts, Expense
Lines, and All Related Tasks.

Note: The All Related Tasks tab shows a list of the related tasks such as Disposal task,
Resale task, Recall task, Work order task, and Move task associated with the asset. The
Recall task and the Work order task associated with the child assets are also shown in
the All Related Tasks tab.
For the pre-assembled industrial assets, the MAC address field is also shown in the Child
Assets tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1656


<!-- page 1657 -->
8. After you’re done performing the additional configuration on the asset, you can change the
status of the asset to In Use.
The asset can be deleted only by the sn_eam.enterprise_admin role.
Create linear assets
Create linear assets to diversify your Enterprise Asset Management portfolio.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise asset estate > Linear assets.
2. Select New.
3. On the form, fill in the fields.
Field

Description

Name

Unique name of the linear asset.

Linear asset type

Type of the linear asset. Select from the list
or you can create your own asset type.

Description

Description of the linear asset.

Location

Vicinity of your linear asset. To draw a lin­
ear asset, select the Geomap icon to dis­
play the map. After you enter the location,
the map will properly focus and zoom to
that vicinity.
For more information on using the Geomap
icon to connect geo coordinate points on a
map, watch this short video Connect geo
coordinate points on a map
Boundary width of the linear asset.

Boundary width

The boundary width helps in associating
discrete assets with linear assets. The dis­
crete asset's location must fall within the
linear asset's boundary widths. For exam­
ple, if the boundary width of a linear asset
is 500 feet, a discrete asset can be associ­
ated to it only if the discrete asset is within
250 feet of that linear asset.

Width unit

The width of the linear asset in units.

Length unit

The unit the length of the linear asset is
measured in.

Length

The length of the linear asset. This input
field is optional. If it isn’t filled out, it’s calcu­
lated using the coordinates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1657


<!-- page 1658 -->
Field

Description

Start marker

The start point of the linear asset.

End marker

The end point of the linear asset.
A list of two or more geographical (geo)
points. Each geo point has a latitude
and longitude. For example, [[37.377323,
-121.961947], [37.380582, -121.976565]].

Coordinates

If you already have the linear asset's coor­
dinates, you can paste them into this field.
Otherwise, you can use the Geomap icon
in the Attachmentssection to draw the geo
points on a map.
The start marker and the end marker are
created based on the first and the last co­
ordinates. Markers are common location
records associated with the Geolocation
type. In the common location hierarchy, all
markers of a linear asset are placed under
Vicinity Geolocation, which is under Vicin­
ity. Vicinity refers to the location of the lin­
ear asset.

4. Select Save.
The linear asset is created and appears in the Linear assets list. You can perform additional
configuration on the linear asset by entering details in the other related lists such as Linear
segments, Discreet assets, Related linear assets, Contracts, and Expense lines.
Create linear asset types
Create linear asset types to categorize linear assets.

Before you begin

The following predefined linear asset types are already part of the base system:
• Railroad
• Roadway
• Sewer
• Sidewalk
• Utility cable
• Trail
Follow these steps to create customized linear asset types.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Linear asset types.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1658


<!-- page 1659 -->
3. Enter a name for the linear asset type in the Name field.
4. Select a parent for the linear asset type from the Parent list.
5. Select Save.
The new linear asset type appears in the Linear asset types related list. If you don't see it in the
related list, select the Refresh List icon on the right side of the page.
Create segments for linear assets
Create segments for linear assets to assign work orders to the segments. You can also create
maintenance plans for the segments.

Before you begin

Linear segments are parts of a linear asset. When creating a linear segment, you must
enter values for any two of the following fields and the value for the third field is populated
automatically. For example, when you enter the start and end markers, the Length field is
automatically filled in. Similarly, entering the start marker and length populates the End marker
field.
• Start marker
• End marker
• Length
If you enter start marker or end marker on the map, markers must be within 10 feet from the
linear asset line. This value can be customized by changing the value of the asset_property
com.eam.linear_segment_marker_boundary.
For details on creating work orders and maintenance plans, see Create a work order for an
enterprise asset and Create a maintenance plan for your enterprise assets.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Linear assets.
2. Open the linear asset record on which you want to add segments.
3. Select the Linear segments related list.
4. Select New.
5. On the form, fill in the details.
Field

Description

Name

Name of the linear segment.

Linear asset type

The linear asset type of the linear asset

Linear asset

The linear asset that the segment belongs to.

State

The current state of the linear asset.

Description

A brief description of the linear segment.

Location

Location of the linear asset.

Start marker

Start point of the linear segment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1659


<!-- page 1660 -->
Field

Description

End marker

End point of the linear segment.

Length

The length of the linear segment.

Length unit

The unit the length of the linear segment is
measured in.

6. Select Save.
The linear segments appear in the Linear segments related list.
Associate a discrete asset to a linear asset
Associate a discrete asset to a linear asset in order to query and find these assets from the linear
asset at a later point of time.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Linear assets.
2. Open the linear asset record with which you want to associate a discrete asset.
3. Select the Discrete assets related list.
4. Select New.
5. On the form, fill in the fields.
Field

Description

Discrete asset

Name of the discrete asset.

Linear asset

Name of the linear asset that the discrete as­
set is associated to.
Marker of the discrete asset. You can either
select an existing marker or select the loca­
tion picker to create a marker.

Marker

Description

Marker must be within the linear asset bound­
ary, which is defined by the boundary width
of the linear asset.
Description of the discrete asset.

6. Select Save.
Find linear asset relationships
You can find relationships between linear assets such as overlapping, continuing, or intersecting
assets.

Before you begin

You may want to find a relationship between linear assets to associate them with each other. For
example, you want to associate a linear asset with another linear asset such as an intersecting
asset, in order to find all intersecting linear assets for the given linear asset. Similarly, you want
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1660


<!-- page 1661 -->
to associate a linear asset with another linear asset such as an overlapping asset, in order to find
all overlapping linear assets for that given linear asset. Once relationships are found between
linear assets, records are created for the related linear assets.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Linear assets.
2. Open a linear asset record for which you want to find relationships with other linear assets.
3. Select Find relationships.
A confirmation message box appears.
4. Select Find relationships in the confirmation message box.
A search is performed for relationships between this linear asset and other linear assets. A
message appears if any relationships have been identified, and for any relationship found,
records are created in the Related linear assets related list.
5. Select Save.
6. Select the Related linear asset related list to view the identified relationships.
For each record, the kind of relationship it has with the linear asset is mentioned such as
continuing, overlapping, or intersecting.
Create pallet assets in the Enterprise Asset Workspace
Create pallet assets to track and manage the pallets that can transport and store your enterprise,
hardware, base, bundle, and consumable assets.

Before you begin

Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. On the All assets tab, select New pallet asset.
3. On the form, fill in the fields.
Create New Pallet form
Field

Description

Pallet Details
Vendor

Vendor that the pallet was purchased from. If the pallet was automatically
created from a procurement purchase order, the Vendor field is automatically
set to the same vendor that was specified on the purchase order.

Model

Pallet model that the pallet is associated with.

Asset tag

Alphanumeric value that your organization assigns to the pallet for tracking
purposes.

State

Current state of the pallet.
This field is automatically set to In stock. However, you can also set this field to
one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1661


<!-- page 1662 -->
Field

Description

◦ In transit
◦ Retired
◦ Missing
Stockroom Stockroom that the pallet is located in.
Aisle and
space

Stockroom aisle and space that the pallet is located in.

Parent

Parent asset of the pallet.

Comments Message that you want to apply to the pallet.
Pallet type

Type of pallet. Select one of the following options:
◦ Pallet
◦ Bin
◦ Box
◦ Container
◦ Other

Substate

Current substate of the pallet, such as Available or Reserved. The options that
are available in the Substate field change based the option that you select in
the State field.

Reserved
for

User who the pallet is reserved for.

Location

Physical location of the pallet.

Note:
If you set the location to a specific place and then set the

sn_itam_common.sn_enable_indoormap_for_assets system
parameter to true on your ServiceNow instance, the pallet asset record,
which is generated after you fill in all fields and save this form, includes an
interactive map that shows the real-time location of the asset.
This map is still included in the pallet asset record when you open the
record from an associated work order task or stockroom record.
The map does not display by default. To display the map, select the
Location map icon ( ) on the sidebar of the pallet asset record.
Disposal
Disposal
vendor

Vendor that is assigned to carry out the disposal order for the pallet.

Vendor
disposal
order ID

ID number that is assigned to the disposal order by the disposal vendor.

Disposal
date

Date on which the disposal order is completed.

Resold
value

Estimated price that the pallet can be resold for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1662


<!-- page 1663 -->
Field

Description

Scheduled Date on which you want to retire the pallet.
retirement
Retired
date

Actual date on which you retired the pallet.

Beneficiary Organization that receives the pallet after it is retired.
Resale
price

Value of the pallet when it is retired.

Activities
Work
notes

Work notes related to the pallet.

4. Select Save.
Add assets to a pallet in the Enterprise Asset Workspace
Add enterprise, hardware, base, bundle, or consumable assets to a pallet so that you can track
and manage them as a group.

Before you begin

To add hardware, base, or bundle assets to a pallet, install and activate the Hardware Asset
®
Management application on your ServiceNow instance. To install and activate the application,
request it from the ServiceNow Store .
Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician

About this task

You can add an asset to a pallet only under the following conditions:
• The State field on the pallet asset record is set to In stock.
• The State field on the asset record is set to one of the following options:
◦ On order
◦ In stock
◦ In transit
• The Stockroom field on the asset record is either empty or set to the same stockroom as the
pallet.
• The asset isn’t associated with another parent asset.

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. On the All assets tab, select the pallet that you want to add assets to.
The pallet asset record opens.
3. Select the Assets tab.
4. Add assets to the pallet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1663


<!-- page 1664 -->
◦ To add enterprise, hardware, base, or bundle assets to the pallet, use the following steps:
a. Select Add assets.
The Add assets dialog box opens.
b. In the dialog box, select the check box for every asset that you want to add to the pallet.
c. Select Add.
◦ To add consumable assets to the pallet, use the following steps:
a. Select Add consumables.
The Add consumable to pallet dialog box opens.
b. In the Consumable field, search for and select the consumable asset that you want to add
to the pallet.
c. In the Quantity field, specify the quantity of the consumable asset that you want to add to
the pallet.
d. Select Add.

Result

The assets are added to the Assets tab of the pallet asset record.
Remove assets from a pallet in the Enterprise Asset Workspace
Remove any enterprise, hardware, base, bundle, or consumable assets that you no longer want
to track and manage as part of a pallet.

Before you begin

To remove hardware, base, or bundle assets from a pallet, install and activate the Hardware Asset
®
Management application on your ServiceNow instance. To install and activate the application,
request it from the ServiceNow Store .
Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. On the All assets tab, select the pallet that you want to remove assets from.
The pallet asset record opens.
3. Select the Assets tab.
4. From the list of available assets, select the check box for each asset that you want to remove
from the pallet.
5. Select Remove.

Result

The assets no longer appear on the Assets tab.
Using pallet assets to manage your asset inventory in the Enterprise Asset Workspace
You can manage your asset inventory by using pallets and the assets contained within those
pallets in your transfer orders, disposal orders, resale orders, and various consumption
workflows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1664


<!-- page 1665 -->
Moving pallets between stockrooms
You can use transfer orders to move in-stock pallets from one stockroom to another. If you’re
moving a pallet that contains assets, those assets are also moved as part of the same
transfer order. If you move only the assets that are contained within a pallet, those assets are
automatically removed from the corresponding pallet asset record after the Ready for fulfillment
task is closed.
For more information about transfer orders, see Create a transfer order in Enterprise Asset
Workspace.

Disposing of pallets
When a pallet is nearing the end of its life cycle or is no longer functional, you can dispose of it
using a disposal order. If the pallet contains any assets, you can choose to dispose of the pallet
and its assets using any of the following options:

Note: You can dispose of only the enterprise assets and enterprise-based consumable
assets that are contained within your pallets. If a pallet contains any hardware, bundle, or
hardware-based consumable assets, those assets are automatically updated with a State of
Invalid and can’t be processed as part of a disposal order.
• Dispose of both the pallet and all assets that are contained within that pallet.
• Dispose of both the pallet and only certain assets that are contained within that pallet. Any
assets that you choose to retain are automatically removed from the corresponding pallet
asset record.
• Dispose of the pallet but retain all assets that are contained within that pallet. If you select this
option, all assets are automatically removed from the corresponding pallet asset record.
• Retain the pallet but dispose of all assets that are contained within that pallet. If you select this
option, all assets are automatically removed from the corresponding pallet asset record.
• Retain the pallet but dispose of only certain assets that are contained within that pallet. Any
assets that you dispose of are automatically removed from the corresponding pallet asset
record.
For more information about disposal orders, see Create a disposal order in the Enterprise Asset
Workspace.

Reselling pallets
To help reduce waste and save costs, you can use resale orders to resell any pallets that you’re
no longer using. If a pallet contains any assets, you can choose to resell the pallet and its assets
using any of the following options:

Note: You can’t resell any hardware assets, asset bundles, and non-enterprise
consumable assets that are contained within your pallets.
• Resell both the pallet and all assets that are contained within that pallet.
• Resell both the pallet and only certain assets that are contained within that pallet. Any assets
that you choose to retain are automatically removed from the corresponding pallet asset
record.
• Resell the pallet but retain all assets that are contained within that pallet. If you select this
option, all assets are automatically removed from the corresponding pallet asset record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1665


<!-- page 1666 -->
• Retain the pallet but resell all assets that are contained within that pallet. If you select this
option, all assets are automatically removed from the corresponding pallet asset record.
• Retain the pallet but resell only certain assets that are contained within that pallet. Any assets
that you resell are automatically removed from the corresponding pallet asset record.
For more information on resale orders, see Create an asset resale flow.

Consuming assets within a pallet
Assets that are contained within a pallet can be consumed through various asset workflows.
Return Merchandise Authorization (RMA) flow
A Return Merchandise Authorization (RMA) is an agreement between a buyer and
seller that allows the buyer to return, replace, or request the repair of a defective
product within the specified warranty period. When an asset within a pallet
becomes defective, you can initiate its replacement or repair by using an RMA
order. Any assets that you include in an RMA order are automatically removed from
the corresponding pallet asset record.
For more information about RMA orders, see Requesting a Return Merchandise
Authorization (RMA) for defective enterprise assets.
Local Order subflow
You can source and fulfill asset requests using assets that are available in
the requester's local stockroom. When an asset within a pallet is sourced and
consumed locally as part of an asset request, it’s automatically removed from the
corresponding pallet asset record after the Enterprise Confirm asset task is closed.
For more information on sourcing assets from local stockrooms, see Source
requests from Enterprise Asset workspace.
Loaner Request flow
If you need to use an asset for only a short period of time, you can request to loan
that asset by using a loaner request. When an asset within a pallet is loaned out, it’s
removed from the corresponding pallet asset record after the Prepare task for the
loaner request is closed.
For more information on loaning assets, see Request a loaner asset in Enterprise
Asset Workspace.
Leased Asset Return flow
If a contract for a leased asset is nearing its expiration, you can return the leased
asset to the asset vendor before incurring any penalty fees. When a leased asset
within a pallet is returned to the asset vendor, it is automatically removed from the
corresponding pallet asset record after the Shipment task for the asset is closed.
For more information about returning leased assets, see Return a leased enterprise
asset.
Swap tasks from the IT Service Management Asset Management application
®

The ServiceNow Asset Management application enables you to track and manage
your assets. If you use the application to swap an asset within a pallet, that asset
is automatically removed from the corresponding pallet asset record after it’s
swapped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1666


<!-- page 1667 -->
For more information on the Asset Management application, see Asset
Management .
Update enterprise assets that have unknown enterprise models
If an enterprise asset is associated with an unknown enterprise model, update it with a known
enterprise model so that you can accurately categorize and track it.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Note: You can update the enterprise model only for serialized and multi-component
enterprise assets.

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. Select either the All enterprise tab or the tab for a specific enterprise asset type, such as
Medical.
3. From the list of available enterprise assets, select an enterprise asset for which the Model field
is set to Unknown Model.
The asset record opens. All asset record fields are read-only.
4. On the asset record, select Update.
The To what type of enterprise asset would you like to change? dialog box opens.
5. In the dialog box, fill in the fields.
To what type of enterprise asset would you like to change? dialog box
Field

Description

Type

Enterprise asset type that you want to categorize the enterprise asset under.

Model
Enterprise model category that you want the enterprise asset to belong to. The
category enterprise asset can be linked to a corresponding configuration item (CI) based on
the enterprise model category that you select.
Model

Enterprise model that you want to associate the enterprise asset with.

6. Select Update.
The dialog box closes and you automatically return to the asset record. If the update is
successful, the asset record fields become editable.

Note: If the selected enterprise asset type, enterprise model category, and enterprise
model update the enterprise asset to a user-assembled multi-component asset, the
State field on the asset record automatically changes to Build. The Assemble and Auto
assemble buttons also appear on the asset record. You can use these buttons to initiate
the assembly process for the enterprise asset. For more information on user-assembled
multi-component assets, see Select assets for user-assembled asset.
Swap assets for parent multi-component asset
Swap child assets that are part of a multi-component asset. You can swap out only one child
asset at a time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1667


<!-- page 1668 -->
Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

About this task

You can swap assets that are in the following states:
• In use, only if the child asset is hot swappable
• In maintenance
• In stock (Substate Defective or Pending repair)
The swap functionality is available only for the parent asset of a multicomponent asset.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise model management.
2. Select a multi-component record.
3. Select the Assets tab and select a parent asset.
4. Select Swap.
5. In the Swap asset dialog box, fill in the details.
a. In the Asset to swap out field, select the child asset that you want to swap.
The Asset Tag and the Serial Number fields are displayed. These fields are automatically
populated only if the details are available in the Asset [alm_asset] table. Otherwise, you must
manually enter the details in these fields to proceed with the Swap action.

Note: The Asset Tag and the Serial Number fields aren't displayed for consumables.
b. In the Choose stockroom for asset swap field, select the stockroom from which you want to
choose an asset to swap with your asset.
c. To display assets that are based on substitute models, select the Include assets based on
substitute models check box.
Assets of a substitute model are shown in the Replacement asset field only if they meet the
following criteria:
▪ The asset function isn’t a loaner or the asset function is empty.
▪ The State or Substate is In Stock or Available.
▪ The potential replacement asset's Parent field is empty.
▪ Stockroom is the same as the value entered in the stockroom field.
When the assets that meet the substitute model criteria aren't shown in the Replacement
asset field, search for the model name because the search query refreshes with each
keystroke.
d. In the Replacement asset field, select the asset that you want to swap with.
You can only choose from the similar assets that are available in the stockroom that you
selected.
e. In the Quantity field, enter the quantity of assets that you want to swap.
This field is automatically populated with the quantity of the asset that you want to swap.
However, you can change the value in this field only if the asset is a consumable. For all the
other assets, this field is a read-only field. You can't swap more than the actual quantity of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1668


<!-- page 1669 -->
the consumable. For example, if you have five consumables, you can either swap less than 5
or swap all the five consumables.
f. Select OK.

Result
• The asset is successfully swapped and the new asset inherit the State and Status of the parent
asset.
• The state of the swapped-out asset changes to In stock and the substate changes to Pending
repair. If the asset is a consumable, the state changes to In stock and the and substate
changes to Pending disposal.
• The stockroom of the swapped out asset changes to the stockroom that you selected in the
Choose stockroom for asset swap field.
Select assets for user-assembled asset
Create a user-assembled asset by selecting assets from the parent asset's stockroom.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Open the user assembled model and open an asset record from the Assets tab.
2. Select Assemble to open the Select assets dialog box.
3. Fill in the form details.

Field

Description

Model component

The model components associated with the multicomponent model.

Quantity

Quantity of the model component.

Asset

Assets from the parent stockroom. For consumable
assets, the quantity of the asset in the stockroom is
also mentioned.

Action

Indicates if the corresponding model component is
required or not. A enabled cross indicates that you
can remove the model component. A disabled cross
indicates that this is a required model component.
If you remove a model component, the Select more
model components drop-down box appears allowing
you to restore the model components that you
removed.

4. Select Assemble.
The assets you selected are added to the parent asset. You can view these assets in the Child
Assets tab. All consumable assets are displayed as a single record, instead of individual
records.
Release assets from the parent asset
Release a child asset that is no longer required to be associated with its parent asset.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1669


<!-- page 1670 -->
Before you begin

Role required: sn_eam.enterprise_admin

About this task

You can release only one child asset at a time from a user-assembled, pre-assembled, or a single
asset.
You can release an asset that isn't required or an add-on asset that's in one of the following
states:
• In use
• In maintenance
• In stock (Substate as Pending disposal)
• In stock (Substate as Pending repair)

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate.
2. Select the parent asset record from which you want to release assets.
3. Select Release assets.
4. In the Release asset dialog box, fill in the details.
a. In the Asset to release field, select the child asset that you want to release.
The Asset Tag and the Serial Number fields are displayed. These fields are automatically
populated only if the details are available in the Asset [alm_asset] table. Otherwise, you must
manually enter the details in these fields to proceed with the Release action.

Note: The Asset Tag and the Serial Number fields aren't displayed for consumables.
b. In the Select stockroom for released assets field, select the stockroom to which the child
asset should be released.
c. In the Quantity field, enter the quantity of assets that you want to swap.
This field is automatically populated with the quantity of the asset that you want to swap.
However, you can change the value in this field only if the asset is a consumable. For all the
other assets, this field is a read-only field. You can't swap more than the actual quantity of
the consumable. For example, if you have five consumables, you can either swap less than 5
or swap all the five consumables.

Result
• The asset that you released isn't listed in the Child assets tab.
• The state of the released asset changes to In stock and the substate changes to Pending
disposal.
Create additional child assets
Create additional child assets for the model even if the assets are not defined in the model
component.

Before you begin

Role required: sn_eam.enterprise_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1670


<!-- page 1671 -->
Procedure
1. Navigate to Enterprise Asset Workspace and select either Enterprise asset estate or
Enterprise model management to access the Child Assets related list tab.
2. Select Add to select assets from a stockroom.
Add is visible only if the asset is in one of the following states:
◦ In Build
◦ In Use
◦ In Maintenance
◦ In Stock Defective
◦ In Stock Pending Repair
3. Select a stockroom and assets in the Select child asset to add dialog box.
4. Select Add.
Configuring Total Cost of Ownership for enterprise assets
Configure your Total Cost of Ownership (TCO) to track your assets.
Configuring TCO involves the following procedures:
• Create task rate cards to capture costs per task type.
• Create labor rate cards to capture costs by the time consumed on an hourly basis.
• Create a TCO report to compare the actual or projected TCO of assets and a TCO report
source.
• Create a TCO report source to add sources to a TCO report.
• Create expense lines for closed tasks.
Create a TCO report in Enterprise Asset Workspace
Create a TCO report to compare the actual or projected TCO of assets or to compare the actual
or projected asset TCO with the benchmark cost of the enterprise model.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Asset analytics > Asset TCO.
2. Select Newon the right side of the page.
Field

Description

Name

Name of the report.
The type of report. Choose from the following
options:

Type

◦ TCO comparison: Evaluates cost of multiple
group of assets with each other.
◦ TCO vs benchmark: Evaluates how efficient­
ly an asset or group of assets is managed in
relation to industry or market standards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1671


<!-- page 1672 -->
Field

Description

Report Table

The table this report is based on. This is a
read-only field with the value Enterprise as­
set.
The total cost type of the report.
◦ Actual TCO: The TCO value of the selected
asset.
▪ If both Actual TCO and Real time report
check boxes are selected, the generated
TCO report is real-time based on the Real
time report selection.
▪ If only Actual TCO is selected, the gener­
ated TCO report is offline.
◦ Projected TCO: This value is referenced
from the following formulas and the generat­
ed report is only offline.

Total cost type

▪ When useful life of the asset is equal to or
greater than asset life, the Projected TCO
(at end of life) is calculated by using the
following formula: Normalized TCO
* Useful life, where Normalized
TCO (TCO per month) is (Purchase
cost / Useful life) + (Sum
of operational cost / Asset
life).
▪ When useful life of the asset is lower
than asset life, the Projected TCO (at end
of life) is calculated by using the follow­
ing formula: Normalized TCO *
Asset life, where Normalized TCO
(TCO per month) is (Purchase cost
+ Sum of operational cost) /
Asset life).

Description

Show benchmark

Description of the report.
Shows the benchmark threshold on the TCO
comparison report.
This field appears only if you select TCO com­
parison as your report type.

Benchmark model

The enterprise model for the benchmark
threshold.

Real time report

When selected, generates real-time data on
the report. You can deselect this check box to
make it an offline report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1672


<!-- page 1673 -->
Field

Description

Workspace

The workspace that you are currently logged
into. By default, the value for this field is EAM.
This is a read-only field.

3. Select Save.
The report is created and the TCO report sources related list appears. You can now add the
report sources.
Create a TCO report source in Enterprise Asset Workspace
Create a TCO report source to add report sources to a TCO report.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Asset analytics > Asset TCO.
2. Open the report for which you want to create report sources from the Comparative reports
section.
3. Select the TCO report sources tab.
4. Select New.
5. On the form, fill in the fields.
Create New TCO report source
Field

Description

Name

Name of the report source

Active

Indicates if the report source is active or not.
By default, this check box is selected.

Note: You can have a maximum of
four active report sources for a TCO
comparison report at any given time. If
you want to add another active report
source, you need to inactivate a report
source.
For a TCO comparison report, you can have
a maximum of four active report sources at
any given time. If you want to add another
active report source, you need to inactivate
an existing report source.
For a TCO vs benchmark report, you can only
have only one active report source.
Report table

The table this report is based on.

Set conditions

Specify a filter to select assets with certain
conditions.

Description

Description of the report source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1673


<!-- page 1674 -->
6. Select Save.
The new report source is added to the TCO report sources tab.
Create a task rate card in Enterprise Asset Workspace
Create a task rate card to capture costs per task type in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

Task rate cards are included in the base system. Except for the Number field, all other fields on
the default task rate cards are editable. You can't delete any of the base system task rate cards.
The following steps are to create a task rate card.
®

To use task rate cards, you must activate the ServiceNow Cost Management
(com.snc.cost_management) plugin.

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > TCO configuration > Task rate
card.
2. Select New.
3. On the form, fill in the fields.
Create New Task Rate Card
Field

Description

Number

A unique number automatically created for
each task rate card.

Name

Name of the task rate card.

Table

The table this rate card is created for.

Order

Order in which the task rate card applies to
the same task.
When more than one task rate card applies to
the same task, the one with the lowest order
is used.

Summary type

Select a summary that relates to the task rate
card.

Active

Indicates if the task rate card is being used or
not. By default, this check box is selected.

Short description

Short description of the task rate card.

Use time worked

By default, this check box isn’t selected.
This denotes that the task rate is used for
capturing costs.
If you want to use the labor rate option where
cost is captured based on the time worked,
select this check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1674


<!-- page 1675 -->
Field

Description

Task rate

Rate of the task along with the currency code.

Default labor rate

The hourly rate to apply to the time worked
entries if the worker doesn’t have a labor rate
card.
This field appears only when the Use time
worked check box is selected.

Set conditions

Filter to run on the table selected to
determine whether this rate card applies to
a given task. This field uses the Condition
Count Widget to preview what records would
be returned by the conditions.

Description

Detailed description of the task rate card.

4. Select Save.
After a task rate card is created, expense lines are created based on the value in the Use time
worked field.
Create expense lines for closed tasks in Enterprise Asset Workspace
Automatically create expense lines for previously closed tasks, that originally had no expense
lines, in order to calculate costs for those tasks.

Before you begin

If you haven't used task rate cards, then expense lines do not get created. When you upgrade to
Zurich, you can automatically create expense lines in bulk for all your closed tasks. This is only a
one time process that runs on active task rate cards with a populated task rate value. Using time
worked will not result in creation of expense lines if the time worked records are not present for
tasks.

Note: To use task rate cards, you need to activate the ServiceNow® Cost Management
(com.snc.cost_management) plugin.
In order to avoid creation of duplicate expense lines, keep the following factors in mind:
• Configure the task rate cards.
• Configure the conditions within each task rate card.
• Specify the amount you want to use for each task.
• Do not create duplicate task rate cards where you create multiple task rate cards for the same
task and condition.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > TCO configuration > Task rate
card.
2. Select Create expense lines for tasks.
A confirmation message box opens.
3. Select Create expense lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1675


<!-- page 1676 -->
The background job Asset Common Expense Lines for Historical tasks runs only once and
looks for closed tasks without any expense lines and creates expense lines for all those closed
tasks. Once the expense lines are created, the Create expense lines for tasks button is no
longer visible.
Create a labor rate card in Enterprise Asset Workspace
Create a labor rate card to capture costs by the time consumed on an hourly basis.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

Labor rate cards are included in the base system. Except for the Number field, all other fields on
the default labor rate cards are editable. You can't delete any of the base system labor rate cards.
The following steps are to create a labor rate card.

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > TCO configuration > Labor rate
card.
2. Select New.
3. On the form, fill in the fields.
Create New Labor Rate Card
Field

Description

Number

A unique number automatically created for
each labor rate card.

Name

Name of the labor rate card.

Rate code

Code for each labor rate card.

Rate type

Standard rate type. You can add your own
rate types.

Active

Indicates if the labor rate card is being used
or not. By default, this check box is selected.

Short description

Short description of the labor rate card.

Hourly rate

The currency code and the cost per hour.

Set conditions

Filter to run on the table selected to
determine whether this rate card applies to
a given task. This field uses the Condition
Count widget to preview what records would
be returned by the conditions.

Description

Detailed description of the labor rate card.

4. Select Save.
After a labor rate card is created, expense lines are created based on the value in the Use time
worked field.
Add calibration attributes to an enterprise asset
Add calibration attributes to an enterprise asset to specify and manage the calibrations that are
required for the asset throughout its life cycle.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1676


<!-- page 1677 -->
Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

You can add calibration attributes at the individual enterprise asset level or at the enterprise
model level. Alternatively, you can create common calibration attributes that are not associated
with any enterprise assets or enterprise models. For details on how to add calibration attributes
to an enterprise model, see Add calibration attributes to an enterprise model. For details on how
to create common calibration attributes, see Create a calibration attribute library.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace.
2. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
3. Select either the All enterprise tab or the tab for a specific enterprise asset category, such as
Facility assets.
4. From the list of available enterprise assets, select the enterprise asset that you want to add
calibration attributes to.
5. On the Calibration attributes tab of the enterprise asset record, select New.
6. On the form, fill in the fields.
Create New Calibration Attribute form
Field

Description

Attribute details
Name

Name of the calibration attribute.

Short
Brief description of the calibration attribute.
description
Criticality

Criticality level that indicates how important the calibration attribute is.

Service
frequency

Frequency at which you must perform the calibration.

Category

Type of calibration.

Note: The Enterprise Asset Management application includes default
calibration categories such as Electrical, Flow, Humidity, and Pressure. You
can create additional calibration categories for any calibrations that do not
fall under the default categories. For detailed instructions, see Create a
calibration category for your enterprise asset calibrations.
Active

Option that indicates if the calibration attribute is active.

Order

Order in which the calibration attribute applies to the enterprise asset. If your
enterprise asset contains more than one calibration attribute, the attribute with
the lowest numerical value applies to the asset first.

Important: You must use a unique numerical value for each calibration
attribute.
Calibration properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1677


<!-- page 1678 -->
Field

Description

Value type

Method by which you want to measure tolerance conformance. Select one of
the following options:
◦ Accuracy % full scale: Fixed percentage of accuracy that your calibration
measurements must fall within at any point within the enterprise asset's full
measurement range. The corresponding tolerance limits remain the same at
every point within the measurement range. For example, if a measurement
range is 100 units and the accuracy percentage is set to ±1%, the tolerance
limits are ±1 unit at every point within the measurement range.
◦ Accuracy % point: Fixed percentage of accuracy that your calibration
measurements must fall within at a specific point within the enterprise
asset's full measurement range. The corresponding tolerance limits increase
or decrease proportionally based on the value of the point that you are
comparing your calibration measurement against. For example, if your
accuracy percentage is set to ±1% and you want to compare your calibration
measurement against a point that has a value of 50 units, the tolerance limits
for this specific point are ±0.5 units. If you want to compare your calibration
measurement against a point that has a value of 60 units, the tolerance limits
increase to ±0.6 units.
◦ Range: Measurement range that your calibration measurements must fall
within. The corresponding tolerance limits are based on the lowest and
highest acceptable point values within the range.
◦ Less than: Value within the enterprise asset's full measurement range that
your calibration measurements must fall below. The corresponding tolerance
limit is based on the highest acceptable point value within the range.
◦ Greater than: Value within the enterprise asset's full measurement range that
your calibration measurements must lie above. The corresponding tolerance
limit is based on the lowest acceptable point value within the range.
◦ True/false: Option to assess any qualitative elements of the calibration.

Scale

Full measurement range that you're measuring tolerance conformance against.

Note: This field appears only if you set the Value type field to Accuracy
% full scale.
Unit

Unit of measurement that you're using to measure tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options:
◦ Accuracy % full scale
◦ Accuracy % point
◦ Range
◦ Less than
◦ Greater than
Accuracy
(%)

Percentage of accuracy that your calibration measurements must fall within.

Note: This field appears only if you set the Value type field to either
Accuracy % full scale or Accuracy % point.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1678


<!-- page 1679 -->
Field

Description

Resolution

Smallest distinguishable change in value that you can detect and measure. The
higher the resolution is, the more specific the change in value is.

Note: This field appears only if you set the Value type field to one of the
following options:
◦ Accuracy % full scale
◦ Accuracy % point
Quality standard
Quality
standard

Set of requirements and guidelines that you must follow when performing the
calibrations.

Note: You can create quality standards manually in the Admin center
view of the Enterprise Asset Workspace. See Create a quality standard for
your enterprise asset calibrations for detailed instructions.
Instrument
Instrument Model of the instrument that you must use to perform the calibrations.
model
Instruction General instructions or instrument settings that you must follow when
performing the calibrations.
7. Select Save.
The form closes and you are automatically redirected to the new calibration attribute record.
8. Specify the points at which you can measure tolerance conformance.

Important: You must specify one or more points within the enterprise asset's
measurement range. If you do not specify at least one point, the calibration attribute
cannot be set to Active.
a. On the calibration attribute record, select Add calibration points.
The Calibration points dialog box opens.
b. In the dialog box, fill in the fields.
Calibration points dialog box
Field

Description

Point
name

Name of the point.

Expected Value that you want to measure tolerance conformance against. If you set the
value
Value type field to either Accuracy % full scale or Accuracy % point in the
Create New Calibration Attribute form, enter the value of the point that you
want to measure against. If you set the Value type field to True/false, select a
Boolean value of either true or false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1679


<!-- page 1680 -->
Field

Description

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form.
▪ Accuracy % full scale
▪ Accuracy % point
▪ True/false
Order

Order in which you want to use the point to measure tolerance conformance.
If your calibration attribute contains more than one point, the point with the
lowest numerical value is calibrated first.

Important: You must use a unique numerical value for each point.
Lower
Lowest acceptable value that the calibration measurement can reach to stay in
tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form:
▪ Accuracy % full scale
▪ Accuracy % point
▪ Range
▪ Greater than
If you set the Value type field to either Accuracy % full scale or Accuracy
% point, this field is read-only.
Upper
Highest acceptable value that the calibration measurement can reach to stay in
tolerance conformance.

Note: This field appears only if you set the Value type field to one of the
following options in the Create New Calibration Attribute form:
▪ Accuracy % full scale
▪ Accuracy % point
▪ Range
▪ Less than
If you set the Value type field to either Accuracy % full scale or Accuracy
% point, this field is read-only.

c. To add an additional point to the calibration attribute, select the Add Content icon (
then fill in the fields.
Repeat this step for each point that you want to add.

) and

d. Select OK.
The dialog box closes and the points appear on the Calibration points tab of the calibration
attribute record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1680


<!-- page 1681 -->
9. Optional: If your enterprise asset also contains calibration attributes at the enterprise model
level, enable this enterprise asset level attribute to override an existing enterprise model level
attribute.
a. On the calibration attribute record, select the Details tab.
b. In the Identification section of the Details tab, select the Search for Record icon ( ) next to
the Override field.
The Override dialog box opens.
c. In the dialog box, select the enterprise model level attribute that you want to override.
The dialog box closes and you automatically return to the calibration attribute record.
d. Select Save.
The enterprise model level attribute is removed from the Calibration attributes tab of the
enterprise asset record.

What to do next

Create work orders to track the calibrations that are made to your enterprise asset. These work
orders must use a work order template with tasks that have a Work type of Calibration. For more
information on work orders, see Managing work orders for your enterprise assets.
Clone a calibration attribute to an enterprise asset
Clone an existing calibration attribute to an enterprise asset to add a calibration attribute with
similar settings.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. Select either the All enterprise tab or the tab for a specific enterprise asset category, such as
Facility assets.
3. From the list of available enterprise assets, select the enterprise asset that you want to clone a
calibration attribute to or from.
4. On the Calibration attributes tab of the enterprise asset record, use one of the following
options to clone a calibration attribute:
◦ To clone a calibration attribute from this enterprise asset to another enterprise asset, use the
following steps:
a. From the list of available calibration attributes, select the check box for the calibration
attribute that you want to clone.
b. Select Clone to assets.
c. In the Select assets dialog box, select the Clone as active check box to automatically set
the cloned calibration attribute to active.
d. Select the check box for the enterprise asset that you want to clone the calibration
attribute to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1681


<!-- page 1682 -->
e. Select Clone.
The calibration attribute is cloned to the selected enterprise asset.
◦ To clone a calibration attribute from another enterprise asset to this enterprise asset, use the
following steps:
a. Select Clone from.
b. In the Select attribute to clone dialog box, select the Clone as active check box to
automatically set the cloned calibration attribute to active.
c. Select the check box for the calibration attribute that you want to clone.
d. Select Clone.
The calibration attribute is cloned to the enterprise asset and appears in the list of
available calibration attributes.
Create a calibration category for your enterprise asset calibrations
Create a calibration category to indicate the type of calibration that you need to perform on your
enterprise assets.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

You can specify the calibrations that are required for your enterprise assets by using calibration
attributes. When you create a calibration attribute, you must select a calibration category to
indicate the type of calibration that you need to perform. The Enterprise Asset Management
application includes default calibration categories such as Electrical, Flow, Humidity, and
Pressure. You can create additional calibration categories for any calibrations that do not fall
under the default categories.
For more details on calibration attributes, see Add calibration attributes to an enterprise asset or
Add calibration attributes to an enterprise model.

Procedure
1. From the Enterprise Asset Workspace, open the Admin center view.
2. From the left navigation menu of the Admin center view, navigate to Calibration configuration
> Category.
3. Select New.
4. On the form, fill in the fields.
Create New Category form
Field

Description

Name

Name of the calibration category.

Description

Detailed description of the calibration category.

5. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1682


<!-- page 1683 -->
Result

The calibration category is available to use in your calibration attributes.
Create condition templates for condition attributes
Create a condition template and associate the template to condition attributes for enterprise
models and assets.

Before you begin

Role required: Asset technician (sn_smart_asmt.actor) and Asset manager
(sn_smart_asmt.template_manager).

About this task

Create condition templates before defining condition attributes on enterprise models and
assets.

Procedure
1. From the Enterprise Asset Workspace, navigate to either of the views:
◦ Admin center
◦ Enterprise asset estate
◦ Enterprise model management
2. Depending on the view you are in, do one of the following:
◦ Admin center: Select New in the Asset condition templates page.
◦ Enterprise asset estate or Enterprise model management: Select the All enterprise tab or
the tab for a specific model or asset category, such as Construction. Open an enterprise
model or asset, select the Condition attributes related list, select New, and then select
Create condition template.
3. In the Create new condition template dialog box, enter a name for the template.
4. Select Create.
The fields in the General tab are automatically populated.
The template opens in the Assessment Workspace that belongs to the Governance, Risk, and
Compliance application.
The fields in the General tab are automatically populated.
5. Select the Scoring tab to add scores to the overall template.
Scoring helps to evaluate the condition of assets and indicates whether the condition
evaluation passed or failed. Scoring can be also added for each section in the Questions tab
and also for each question.
6. Select Enable scoring
You must enable scoring to make results available for the condition attributes. For more details
on scoring, see Create Smart Assessment templates for BIA .
7. After entering the details in the Scoring tab, select Save.
8. Select the Questions tab to create sections and questions.
You can create sections and questions in this tab and enable scoring for any specific section
and for individual questions. For more details on creating questions, sections, and scoring, see
Create Smart Assessment templates for BIA .
9. After entering all the details in the Questions tab, select Save.
10. Select Publish
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1683


<!-- page 1684 -->
The questions and scores are published. Publishing finalizes the template and makes the
template ready to be used for evaluation.
If you don’t publish the template, the template won’t be available in the condition template
picker when creating condition attributes.
Define condition attributes on enterprise models and assets
Define the conditions to be inspected on enterprise models and assets throughout their life
cycle.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Once condition attributes are defined on an enterprise model, all the assets for that models
inherit the condition attributes.
Before defining condition attributes, create a condition template from the Admin center view. You
can also create condition templates while defining condition attributes from the enterprise asset
or enterprise model page.

Procedure
1. Navigate to All > Enterprise Asset Workspace.
2. Navigate to either of the two views.
◦ Enterprise asset estate: For adding condition attributes to an asset.
◦ Enterprise model management: For adding condition attributes to a model.
3. Select either the All enterprise tab or the tab for a specific model or asset category, such as
Construction.
4. From the list of available enterprise models or assets, open the enterprise model or asset that
you want to define the condition attributes on.
5. Select New on the Condition attributes related list.
6. On the form, fill in the fields.
Create New Condition Attribute form
Field

Description

Attribute details
Name
Model or Asset

Name of the condition attribute.
The model or asset the condition attribute is being added to.

The Model field appears in the
Enterprise model management
view. The Asset field appears
in the Enterprise asset estate
view.
Short description

Brief description of the condition attribute.

Weight

Desired weight for each line. The total sum of weights for all
lines of an asset should equal one.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1684


<!-- page 1685 -->
Field

Description

Attribute type

Type of attribute.

This field appears only in the
Enterprise asset estate view.
Category

Type of condition.

Note: The Enterprise Asset Management application
includes many default condition categories such as
Area, Concentration, Density, and Electrical.
Condition template

The template that the condition is associated with.
You can select an existing template or select Create
condition template to create a template.

Criticality

Criticality level that indicates how important the condition
attribute is.

Service frequency

Frequency at which you must perform the condition.

Pass condition minimum

Enter a minimum numerical value for the condition to pass.
The value can't be less than zero.

Pass condition maximum

Enter a maximum numerical value for the condition to pass.
The value can't be more than 100.
For example, if you enter the value 100 in this field and
the value 0 in the Pass condition minimum field, then if
the overall score is between this range of 0-100, the result
indicates that the condition passed.

Order

Order in which the condition attribute applies to the
enterprise model or the asset. If your enterprise model
or asset contains more than one condition attribute, the
attribute with the lowest numerical value applies to the
model or the asset first.

Active

Option that indicates if the condition attribute is active.
Select this check box.

7. Select Save.
The form closes and you’re automatically redirected to the new condition attribute record.
Create an asset group in Enterprise Asset Management
Create asset groups to create a logical group of entities that includes assets, locations, and
users.

Before you begin
Role required:

• sn_eam.enterprise_admin
• sn_eam.enterprise_asset_manager
• sn_eamfam.facility_asset_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1685


