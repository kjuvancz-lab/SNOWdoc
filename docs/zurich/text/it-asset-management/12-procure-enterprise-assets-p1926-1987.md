# Zurich IT Asset Management — Procure enterprise assets

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1926–1987 of 2359

Sections: Procure enterprise assets (p1926); References (p1927)

---

<!-- page 1926 -->
5. Scan the enterprise assets that you physically received at your stockroom.
a. Tap Scan.
b. Provide the asset tag information.
Follow any of these steps for each enterprise asset that you received at your stockroom:
▪ Scan the asset tag of the enterprise asset that you received using the camera on your
mobile device.
▪ Enter a value in the Asset tag field and tap the Enter key on the keyboard of your mobile
device.
The enterprise assets are automatically added to the Review tab.
6. Acknowledge the receipt of the enterprise assets that you scanned.
a. Tap Receive.
The Receive screen opens and the Asset tag field displays the count of assets that you
scanned.
b. Tap Submit.
The Received field in the Details tab shows the count of assets that you received.
When you receive all the enterprise assets, the value in the Expected field matches the value
in the Received field.
7. After receiving all the enterprise assets, tap Close Task.

Result

The state of the Receive drop off task and the associated Drop off task changes to Closed
Complete.

Procuring enterprise assets
®

You can use the ServiceNow Procurement application to source and receive requested
enterprise assets so that you can fulfill service catalog requests.

Overview of procuring enterprise assets
With the Procurement application, you can
• track and manage service catalog requests,
• create and manage purchase orders,
• create and manage transfer orders,
• and receive assets.
See Procurement

for more information on procuring assets.

Source requests from Enterprise Asset workspace
You can create a request in the Service Catalog application and source that request from the
Enterprise Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1926


<!-- page 1927 -->
Before you begin

You can source a request by using assets from the requester's local stockroom, if stock is
available in the local stockroom. If stock is unavailable in the local stockroom, you can get the
assets transferred from other stockrooms or create a purchase order.
Role required: proc_user

Procedure
1. Navigate to Enterprise Asset Workspace > Procurement > Catalog tasks.
2. Open the sourcing task for the request and select Source request.
3. On the Sourcing page, select either of these three options:
◦ Consume: If the stock is available in your local stockroom.
If the Asset pick task is enabled for the source stockroom, the task is added to the Enterprise
Asset Refresh Request and Enterprise Asset Request flows.
◦ Transfer: If the stock isn’t available in your local stockroom and you want to source the
request via a transfer order.

Note: If you create a transfer order and want the local stockroom to be
included in the list of stockrooms to choose from, the admin must turn on the
glide.asset.procurement.sourcing.local_stock_transfer
property.
◦ Purchase: If the stock isn’t available in your local stockroom and you want to source a
request via a purchase order.
4. Fill in the required fields based on the option that you choose.
5. Select Submit.
A task for transfer order line or purchase order line is created if you selected Transfer or
Purchase. You can open the request to view the task.

Enterprise Asset Management reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Enterprise Asset Management.

Domain separation and Enterprise Asset Management
Domain separation is supported in Enterprise Asset Management. Domain separation enables
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1927


<!-- page 1928 -->
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

Overview
Domain separation support in the product enables service providers to offer managed
services for enterprise asset management to their customers. This feature also caters to large
organizations who manage their subsidiaries as independent domains.

How domain separation works in Enterprise Asset Management
In Enterprise Asset Management, domain separation occurs in two stages: data separation
and process separation. There are two system properties that are used to enable or disable the
separation. In the Tokyo release, both data and process are domain-separated.

Note:
The Recommended practice
configuration record.

is to avoid customizing the base system domain

Required plugins
• Domain separation extension (com.glide.domain.msp_extensions.installer)
• Performance Analytics – Domain Support (com.snc.pa.domain_support)
• Work management (com.snc.work_management)

Other supported plugins
• Service Catalog – Domain Separation (com.glideapp.servicecatalog.domain_separation)
• Procurement (com.snc.procurement)
To learn more, see Domain separation explained
Importance of Default domain .

, Contains queries and domain access

, and

Related topics
Domain separation for service providers

Enterprise Asset Management roles
The following roles help you to configure and use the Enterprise Asset Management application
to manage the life cycle of your assets, parts, and their hierarchical relationships.
After access has been granted to a role, all the groups or users assigned to the role are granted
the access. Roles can contain other roles, and any access granted to a role is granted to any role
that contains it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1928


<!-- page 1929 -->
Enterprise Asset Management roles
Role title

Enterprise asset manager
[sn_eam.enterprise_asset_manager]

Contains roles

Description

This role has access to all
• sn_eam.enterprise_asset_technician Enterprise Asset Management
features except administrative
• inventory_user
functions.
• contract_manager
• category_manager
• procurement_user
• wm_initiator
• cmdb_query_builder
• cmdb_read
• plan_maint_admin
• wm_task_initiator

Enterprise admin
[sn_eam.enterprise_admin]

• inventory_admin
• catalog_manager

This role has full access to the
Enterprise Asset Management
application as well as the OT
Asset Workspace.

• report_user
• sn_eam.enterprise_asset_manager
• asset
• procurement_admin
• sn_ent.classification_manager
• sn_otam.ot_asset_manager
Enterprise technician
[enterprise_asset_technician]

• sn_eam.enterprise_mobile_user
• sn_eam.enterprise_asset_editor

This role is for users who perform
work tasks and update asset
records as part of the asset
lifecycle. This role has access
to the following enterprise asset
tasks:
• all RMA tasks except the
Prepare task
• all recall tasks
• all disposal tasks
• all loaner tasks except the
Prepare task
• enterprise asset audit
• lease-end Collection,
Preparation, and Shipment
tasks

Enterprise mobile user

none

This role has access to scan
assets from a mobile application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1929


<!-- page 1930 -->
Role title

Contains roles

Description

[sn_eam.enterprise_mobile_user]
Agent

as well as dispose assets from a
mobile application.
none

This role is for users who
perform work on enterprise
assets and record details in the
corresponding work orders and
work order tasks.

[wm_agent]

Note: The wm_agent

role must contain an
additional role such as
enterprise_asset_manager,
enterprise_asset_technician,
or any other role to log
into the Enterprise Asset
Workspace.

OT Asset Workspace roles
The following roles help you to manage the OT Asset Management application.
Access to the OT Asset Workspace depends on the role assigned to you.
• OT asset manager [sn_otam.ot_asset_manager]: Provides full access to the OT Asset
Workspace.
• OT asset technician [sn_otam.ot_asset_technician]: Provides limited access to the OT Asset
Workspace.

Asset fields for enterprise assets
A detailed description of all asset fields in the Enterprise Asset Management application.
Asset Details
Field

Description

Display name

Name of the asset as it appears in record
lists. Automatically set when asset is created,
based on Asset Tag and Model fields.

Model

Specific product model of the asset.

Note: If you are creating a consumable
asset, you can select any product model
that meets the following criteria:
• The Model type is set to Consumable.
• The product model falls under the
Enterprise good model [sn_ent_model]
class or any of its child classes.
Model category

Model grouping of the asset. Based on the
model category selected, the asset can be
linked to a configuration item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1930


<!-- page 1931 -->
Asset Details (continued)
Field

Description

Parent

Parent asset of the asset. When a parent link
is defined, the fields related to assignment
and state of the child assets is set to readonly and are populated based on the parent
assignment and state fields.

Asset type

Type of multi-component asset. The following
are the types of multi-component assets:
• Pre-assembled
• User-assembled
• Simple
• Simple with add-on
• Pre-assembled with add-on
• User-assembled with add-on

Asset tag

Alphanumeric information assigned by your
organization to help track the asset.

Configuration item

CI automatically created when this asset is
created. The name that appears in this field
is based on Serial number and Model. Point
to the reference icon to see the configuration
item details inherited from the asset record.

Serial number

Serial number of this asset.

State

The current state of the asset. By default, the
newly created asset is in Build state. Once you
configure the asset and its components, you
can change the status of the model.
The other state options are:
• On order
• In stock
• In transit
• In use
• In maintenance
• Retired
• Missing

Substate

Current substate of the asset, such as
Available or Reserved. The values in the
Substate list change based what you select
from the State list.

Asset function

Function as which the asset is used such as
Primary, Secondary, Shared, or Loaner.

Stockroom

Stockroom that the asset is located in.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1931


<!-- page 1932 -->
Asset Details (continued)
Field

Description

Note: This field appears only if you set
the State field to In stock.
Aisle and space

Aisle and space details of the asset within the
stockroom. This field appears only when the
state of the asset is In stock or Build.

Reserved for

User who the asset is reserved for.

Note: This field appears only if you set
the State field to In stock or In transit.
Quantity

Number of items this asset represents. An
asset always has a quantity of one unless one
or more of these points are true.
• It is a consumable. Quantity is unrestricted
because consumables are tracked in
groups.
• It is pre-allocated. Quantity is unrestricted
when Model category and Model are
defined and Substate is set to Preallocated.

Eligible for refresh

Indicates whether or not the asset is eligible
for a refresh. If the date in the Installed field
is in the past, this check box is shown. This
check box is selected automatically two
months before the number specified in the
model's Useful life (months) field.
When the EAM- Calculate Asset
Refresh Eligibility weekly scheduled
job runs, it calculates all of the assets that are
eligible for refresh.

Location

Current physical location of the asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1932


<!-- page 1933 -->
Asset Details (continued)
Field

Description

Note:
If you set the location to a specific
building, floor, or place, and then set the

sn_itam_common.sn_enable_indoormap_for_as
system parameter to true on your
ServiceNow instance, the Enterprise
Asset Management application
automatically populates a corresponding
location hierarchy of up to three levels,
including the campus, building or
structure, and floor that the asset
is currently located in. The location
hierarchy depicts the hierarchical
relationship between the specified
location and the corresponding parent
locations. You can view the location
hierarchy in the Location Hierarchy
section of the asset record, which is
generated after you fill in all fields and
save the form.

Note:
If you set the location to a
specific place and then set the

sn_itam_common.sn_enable_indoormap_for_as
system parameter to true on your
ServiceNow instance, the asset record,
which is generated after you fill in all
fields and save the form, includes an
interactive map that shows the real-time
location of the asset. This map is still
included in the asset record when you
open the record from an associated work
order task or stockroom record.
The map does not display by default.
To display the map, select the Location
map icon ( ) on the sidebar of the asset
record.
Assigned to

Person using or primarily responsible for this
item. This field is visible when the asset state
is In Use.

Assigned

Date on which the asset was assigned to a
user.

Managed by

Person who maintains the asset. This can be
different from the person in the Owned by
field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1933


<!-- page 1934 -->
Asset Details (continued)
Field

Description

Installed

Date on which the asset was assigned to the
person mentioned in the Assigned to field.

Owned by

Person who has financial ownership of the
asset. This can be different from the person in
the Managed by field.

Warranty expiration

The date the warranty expires.

Company

Company or organization to which this asset
belongs.

Department

Department to which the asset belongs.

RFID tag

Real-time radio-frequency identification
(RFID) tag that is associated with the asset.
See Zebra MotionWorks RFID integration
for Enterprise Asset Management for more
information on RFID tags.

Note: If this asset is a child of another
asset and does not contain its own RFID
tag, the RFID tag field populates with
the RFID tag of the parent asset. If you
remove the parent asset, the RFID tag
field is cleared for this asset.
MAC address

MAC address of the asset.

Important: From the Yokohama
release onward, the value in this field is
populated based on the MAC address
[mac_addr] field in the Asset [alm_asset]
table. The MAC address [mac_address]
field in the Hardware [alm_hardware]
table is deprecated.
This field isn't shown on the asset form
for consumables and pallets.
Support group

Group responsible for maintaining and
managing the asset.
The support group can belong to any of the
following group types:
• Asset managers
• Asset techs

Supported by

Specific individual from the support group who
is assigned to support the asset.

Comments

Message to add if any.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1934


<!-- page 1935 -->
Financial form
Field

Description

Vendor

Vendor from which the asset was purchased.
For assets automatically created from
purchase orders in Procurement, the default
value of the Vendor field is the vendor
specified on the purchase order.

Opened

Date on which the requested item record was
opened. The system automatically populates
the field when a request line is specified.

Invoice number

Number of the invoice.

GL account

General ledger account number with which
the asset is associated.

Request line

Requested item to which the asset is linked.

Cost

Price at which the asset was purchased.

Cost center

Cost center under which the asset was billed.

Acquisition method

How the asset was acquired. Base system
choices are Purchase, Lease, Rental, Loan,
and RMA Replacement.
For assets automatically created from
purchase orders in Procurement, the default
value is Purchase

PO number

Purchase Order under which the asset was
billed.

Depreciation form
Field

Description

Depreciation

Depreciation method that is applied. Base
system choices are Declining Balance and
Straight Line. The depreciation value is
defaulted from the associated Model.

Residual date

Number of days that have passed since the
Depreciation effective date.

Depreciation effective date

Date on which the specified depreciation
method begins.

Residual value

Value in the Cost field with the depreciation
method applied.

Salvage value

Estimated value of an asset at the end of its
useful life. This value must be less than or
equal to the Cost of the asset.

Depreciated amount

Amount the asset has depreciated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1935


<!-- page 1936 -->
Lease Contract
Field

Description

Lease contract

Name of the lease contract that applies to the
asset.

Lease expiration date

Date on which the lease contract expires

Lease term (months)

Length of the lease contract, in months.

Monthly lease payment

Amount that you must pay monthly for the
lease contract.

Note: You can set this field to any
currency of your choice.

Disposal form
Field

Disposal order number

Disposal vendor

Description

A unique number assigned to the asset
disposal order.
The vendor assigned to carry out the asset
disposal order.

Scheduled retirement

Scheduled date on which the asset is retired.

Retired date

Actual date on which the asset was retired.

Vendor disposal order ID

Resale price

Disposal date

Beneficiary

Order number assigned by the vendor
assigned to carry out the asset disposal order.
Value of the asset when it is retired. For
example, if the asset is donated, the value
used when reporting taxes.
The date when the asset disposal order
process is completed.
Organization that receives the asset when it is
retired.

Asset Audit
Field

Description

Audit number

Audit number of the asset.

Audit type

Type of audit that was carried out on the asset.

Last audit date

Date on which the last audit was done.

Last audit state

State of the last audit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1936


<!-- page 1937 -->
Asset Audit (continued)
Field

Description

Audited by

Person who performed the last audit.

RFID

Note: If this asset is a child of another asset, the RFID location data that
is mapped to and populated in these RFID form section fields is based
on the RFID tag to which the asset is associated.
• If this asset contains its own RFID tag, all RFID location data is based
on that RFID tag.
• If this asset does not contain its own RFID tag, all RFID location data
is based on the RFID tag of the parent asset. If you remove the parent
asset, all RFID location data is cleared from the RFID form section
fields for this asset.

Field

Description

RFID tag

Real-time radio-frequency identification (RFID) tag that is associated with the asset.
For more information on RFID tags, see Zebra MotionWorks RFID integration for
Enterprise Asset Management.

Type

Type of RFID tag that is associated with the asset.

Tag
source

Source of the asset's RFID location data that is stored and transferred through the
RFID tag.

Serial
number

Serial number of the asset.

Last blink Time at which the RFID tag was last scanned.
time
Last blink Amount of time that has passed since the RFID tag was last scanned.
elapsed
time
Latitude

Latitudinal value of the asset.

Longitude Longitudinal value of the asset.
Active

Option that indicates if the RFID tag is active. RFID location data can be mapped to
the asset only if you select this option.

Site name Name of the site that the asset is located in.
Zone
group

Interrogation zone group that the asset belongs to.

Zone
group
dwell

Amount of time for which the asset belongs to the specified interrogation zone
group.

Zone

Interrogation zone that the asset is located in.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1937


<!-- page 1938 -->
RFID

Note: If this asset is a child of another asset, the RFID location data that
is mapped to and populated in these RFID form section fields is based
on the RFID tag to which the asset is associated.
• If this asset contains its own RFID tag, all RFID location data is based
on that RFID tag.
• If this asset does not contain its own RFID tag, all RFID location data
is based on the RFID tag of the parent asset. If you remove the parent
asset, all RFID location data is cleared from the RFID form section
fields for this asset.
(continued)
Field

Description

Zone
dwell

Amount of time for which the asset is located in the specified interrogation zone.

Grid-x

X coordinate of the asset within the designated RFID grid. The RFID system uses
the XYZ coordinates to pinpoint the location of the asset.

Grid-y

Y coordinate of the asset within the designated RFID grid. The RFID system uses
the XYZ coordinates to pinpoint the location of the asset.

Grid-z

Z coordinate of the asset within the designated RFID grid. The RFID system uses
the XYZ coordinates to pinpoint the location of the asset.

Status

Status of mapping RFID location data to the asset. If the data is successfully
mapped to the asset, this field is set to Matched. If the data is not mapped to the
asset, this field is set to Unmatched.

Important: RFID location data can be mapped to the asset only if you
select the Active option in the RFID form section.

Tip: You can view and take action on the asset records that have an RFID

Status of Unmatched by using the Unmatched RFID tags important action
that appears on the Overview tab of the Enterprise asset estate view. For
more information on the Enterprise asset estate view, see Enterprise asset
estate overview for Enterprise Asset Workspace.
Activities
Field

Description

Work notes

Work notes are updated for the following
cases:
• Updates to Assigned To, Managed To State,
Substate, and Reserved fields of asset.
The columns for these fields are audited by
default and any update is recorded in the
work notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1938


<!-- page 1939 -->
Activities (continued)
Field

Description

• Work notes are updated when asset is
received by a purchase order and transfer
order. These work notes help in tracking life
cycle of the asset.

Device as a Service
Field

Description

DaaS asset

Option that indicates if the given asset is a Device as a Service (DaaS) asset.

DaaS account DaaS account that the asset is leased to.

Enterprise model categories and corresponding classes
Enterprise model categories and their corresponding Configuration Management Database
(CMDB) configuration item (CI), asset, and model classes.

Medical model categories
Medical model categories and corresponding CMDB CI, asset, and model classes
Model
category

CMDB CI class

Asset class

Model class

Medical
General

N/A

sn_ent_medical_asset sn_ent_medical_device_model

Healthcare
Device

cmdb_ci_hc_device

sn_ent_medical_asset sn_ent_medical_device_model

Medical
Device

cmdb_ci_med_device

sn_ent_medical_asset sn_ent_medical_device_model

Patient
Monitoring

cmdb_ci_med_patient_monitoring

sn_ent_medical_asset sn_ent_medical_device_model

Patient
Implants

cmdb_ci_med_patient_implant

sn_ent_medical_asset sn_ent_medical_device_model

Surgical
cmdb_ci_med_surgical_instrument sn_ent_medical_asset sn_ent_medical_device_model
Instruments
Clinical
Devices

cmdb_ci_med_clinical_device

sn_ent_medical_asset sn_ent_medical_device_model

Lab
Equipment

cmdb_ci_med_lab_equipment

sn_ent_medical_asset sn_ent_medical_device_model

Diagnostic
Imaging

cmdb_ci_med_diagnostic_imaging sn_ent_medical_asset sn_ent_medical_device_model

Therapeutic cmdb_ci_med_therapeutic_device
Devices

sn_ent_medical_asset sn_ent_medical_device_model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1939


<!-- page 1940 -->
Medical model categories and corresponding CMDB CI, asset, and model classes
(continued)
Model
category

Dental
Equipment

CMDB CI class

Asset class

Model class

cmdb_ci_med_dental

sn_ent_medical_asset sn_ent_medical_device_model

Facility model categories
Facility model categories and corresponding CMDB CI, asset, and model classes
Model
category

CMDB CI class

Asset class

Facility
General

cmdb_ci_facility_hardware

sn_ent_facility_asset sn_ent_facility_model

Electrical

cmdb_ci_power_eq

sn_ent_facility_asset sn_ent_facility_model

Automatic
Transfer
Switch

cmdb_ci_ats_power_eq

sn_ent_facility_asset sn_ent_facility_model

Power
Generator

cmdb_ci_generator_power_eq

sn_ent_facility_asset sn_ent_facility_model

UPS

cmdb_ci_ups_power_eq

sn_ent_facility_asset sn_ent_facility_model

HVAC

cmdb_ci_hvac

sn_ent_facility_asset sn_ent_facility_model

Fuel Tank

cmdb_ci_fuel_tank

sn_ent_facility_asset sn_ent_facility_model

Structure

cmdb_ci_building_facility

sn_ent_facility_asset sn_ent_facility_model

Plumbing

cmdb_ci_building_plumbing

Model class

sn_ent_facility_asset sn_ent_facility_model

Security

cmdb_ci_security

sn_ent_facility_asset sn_ent_facility_model

Cameras

cmdb_ci_ip_camera

sn_ent_facility_asset sn_ent_facility_model

AV Displays

cmdb_ci_display

sn_ent_facility_asset sn_ent_facility_model

AV
Equipment

cmdb_ci_multimedia

sn_ent_facility_asset sn_ent_facility_model

Service
Industry
Equipment

cmdb_ci_service_industry_equipment

sn_ent_facility_asset sn_ent_facility_model

Domestic
Appliances

cmdb_ci_domestic_appliance

sn_ent_facility_asset sn_ent_facility_model

Cleaning
Equipment

cmdb_ci_cleaning_equipment

sn_ent_facility_asset sn_ent_facility_model

Furniture
and Fixtures
Circuit
Breaker

cmdb_ci_building_furniture
cmdb_ci_circuit_breaker

sn_ent_facility_asset sn_ent_facility_model
sn_ent_facility_asset sn_ent_facility_model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1940


<!-- page 1941 -->
Facility model categories and corresponding CMDB CI, asset, and model classes (continued)
Model
category

CMDB CI class

Asset class

Model class

Fuse Alarm
Panel

cmdb_ci_fuse_alarm_panel

sn_ent_facility_asset sn_ent_facility_model

Inverter

cmdb_ci_inverter

sn_ent_facility_asset sn_ent_facility_model

Maintenance cmdb_ci_maintenance_bypass_panel sn_ent_facility_asset sn_ent_facility_model
Bypass
Panel
Power Panel

cmdb_ci_power_panel

sn_ent_facility_asset sn_ent_facility_model

Rectifier

cmdb_ci_rectifier

sn_ent_facility_asset sn_ent_facility_model

Remote
Power Panel

cmdb_ci_remote_power_panel

sn_ent_facility_asset sn_ent_facility_model

Switchgear

cmdb_ci_switchgear

sn_ent_facility_asset sn_ent_facility_model

Transformer

cmdb_ci_transformer

sn_ent_facility_asset sn_ent_facility_model

Note: The CI classes of the following facility model categories have Goods
[cmdb_ci_good] as their parent CI class:
• Plumbing
• Service Equipment
• Domestic Appliances
• Furniture and Fixtures

Transportation model categories
Transportation model categories and corresponding CMDB CI, asset, and model classes
Model category CMDB CI class

Asset class

Model class

Transportation cmdb_ci_transport sn_ent_transportation_asset sn_ent_transportation_model​
General
Aircraft

cmdb_ci_aircraft

sn_ent_transportation_asset sn_ent_transportation_model​

Ship

cmdb_ci_ship

sn_ent_transportation_asset sn_ent_transportation_model​

Train

cmdb_ci_train

sn_ent_transportation_asset sn_ent_transportation_model​

Vehicle

cmdb_ci_vehicle

sn_ent_transportation_asset sn_ent_transportation_model​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1941


<!-- page 1942 -->
Industrial model categories
Industrial model categories and corresponding CMDB CI, asset, and model classes
Model
category

CMDB CI class

Asset class

Model class

Industrial
General

cmdb_ci_ot

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control

cmdb_ci_ot_control

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
CNC

cmdb_ci_ot_cnc

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
DCS

cmdb_ci_ot_dcs

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
DPU

cmdb_ci_ot_dpu

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
IED

cmdb_ci_ot_ied

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
3D Printer

cmdb_ci_ot_industrial_3d_printer sn_ent_industrial_asset sn_ent_industrial_model​

OT Control cmdb_ci_ot_opc_server
OPC Server

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
Module

cmdb_ci_ot_control_module

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
PLC

cmdb_ci_ot_plc

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
RTU

cmdb_ci_ot_rtu

sn_ent_industrial_asset sn_ent_industrial_model​

OT Control
SCADA

cmdb_ci_ot_scada_server

sn_ent_industrial_asset sn_ent_industrial_model​

OT Field
Device

cmdb_ci_ot_field_device

sn_ent_industrial_asset sn_ent_industrial_model​

OT Field
Actuator

cmdb_ci_ot_industrial_actuator

sn_ent_industrial_asset sn_ent_industrial_model​

OT Field
Drive

cmdb_ci_ot_industrial_drive

sn_ent_industrial_asset sn_ent_industrial_model​

OT Field
Robot

cmdb_ci_ot_industrial_robot

sn_ent_industrial_asset sn_ent_industrial_model​

OT Field
Sensor

cmdb_ci_ot_industrial_sensor

sn_ent_industrial_asset sn_ent_industrial_model​

OT Quality
Inspection
Control
System

cmdb_ci_ot_qics

sn_ent_industrial_asset sn_ent_industrial_model​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1942


<!-- page 1943 -->
Industrial model categories and corresponding CMDB CI, asset, and model classes
(continued)
Model
category

CMDB CI class

Asset class

Model class

OT
cmdb_ci_ot_supervisory
Supervisory

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_ews
Supervisory
EWS

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_historian
Supervisory
Historian

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_hmi
Supervisory
HMI

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_opc_client
Supervisory
OPC

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_scada_client
Supervisory
SCADA

sn_ent_industrial_asset sn_ent_industrial_model​

OT
cmdb_ci_ot_supervisory
Supervisory
System

sn_ent_industrial_asset sn_ent_industrial_model​

Operational cmdb_ci_oe
Equipment

sn_ent_industrial_asset sn_ent_industrial_model​

Retail model categories
Retail model categories and corresponding CMDB CI, asset, and model classes
Model category

CMDB CI class

Asset class

Model class

Retail General

N/A

sn_ent_retail_asset

sn_ent_retail_model

Payment Device

cmdb_ci_payment

sn_ent_retail_asset

sn_ent_retail_model

POS Device

cmdb_ci_pos

sn_ent_retail_asset

sn_ent_retail_model

Construction model categories
Construction model categories and corresponding CMDB CI, asset, and model classes
Model
category

CMDB CI class

Construction
cmdb_ci_construction
General

Asset class

Model class

sn_ent_construction_asset​ sn_ent_construction_model​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1943


<!-- page 1944 -->
Construction model categories and corresponding CMDB CI, asset, and model classes
(continued)
Model
category

CMDB CI class

Asset class

Model class

Construction
sn_ent_construction_asset​ sn_ent_construction_model​
cmdb_ci_construction_equipment
Equipment
Tools
Test Tools

sn_ent_construction_asset​ sn_ent_construction_model​

cmdb_ci_construction_tool

sn_ent_construction_asset​ sn_ent_construction_model​

cmdb_ci_testing_equipment

Note: The CI classes of the following construction model categories have Goods
[cmdb_ci_good] as their parent CI class:
• Construction General
• Test Tools

Tactical equipment model categories
Tactical equipment model categories and corresponding CMDB CI, asset, and model classes
Model category

CMDB CI class

Tactical
Equipment
General

cmdb_ci_tactical_equipment

Tactical Gear
Weapons
Forensic
Supplies
Ammunition

cmdb_ci_tactical_ppe
cmdb_ci_weapon
cmdb_ci_forensic_supply
cmdb_ci_ammunition

Asset class

Model class

sn_ent_tactical_asset​ sn_ent_tactical_model​

sn_ent_tactical_asset​ sn_ent_tactical_model​
sn_ent_tactical_asset​ sn_ent_tactical_model​
sn_ent_tactical_asset​ sn_ent_tactical_model​
sn_ent_tactical_asset​ sn_ent_tactical_model​

Note: The CI class of the Tactical Equipment General model category has Goods
[cmdb_ci_good] as its parent CI class.

Wearable model categories
Wearable model categories and corresponding CMDB CI, asset, and model classes
Model category CMDB CI class

Asset class

Wearable
Clothing

sn_ent_wearable_asset​ sn_ent_wearable_model​

cmdb_ci_wearable_clothing

Model class

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1944


<!-- page 1945 -->
Wearable model categories and corresponding CMDB CI, asset, and model classes
(continued)
Model category CMDB CI class

Asset class

Humanitarian
PPE

sn_ent_wearable_asset​ sn_ent_wearable_model​

Uniforms

cmdb_ci_humanitarian_ppe
cmdb_ci_wearable_uniform

Model class

sn_ent_wearable_asset​ sn_ent_wearable_model​

Multimedia production equipment model categories
Multimedia production equipment model categories and corresponding CMDB CI, asset, and
model classes
Model
category

CMDB CI class

Asset class

Model class

Media
Control and
Routing
Equipment

cmdb_ci_media_control_routing_equipment sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Contribution
Equipment

cmdb_ci_contribution_equipment

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Audio
Production
Equipment​

cmdb_ci_audio_production_equipment

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Video
Production
Equipment

cmdb_ci_video_production_equipment

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Video
Playout
Equipment

cmdb_ci_video_playout_equipment

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Video
Precision
Monitor

cmdb_ci_video_precision_monitor

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Signal
cmdb_ci_signal_processor_amplifier
Processor
and Amplifier

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Broadcast
Sync
Generator

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

cmdb_ci_broadcast_sync_generator

Teleprompter cmdb_ci_teleprompter

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Production
Camera

cmdb_ci_production_camera

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

Stage and
Studio
Lighting

cmdb_ci_stage_studio_lighting

sn_ent_mm_prod_equip_asset sn_ent_mm_prod_

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1945


<!-- page 1946 -->
Mandatory fields in the bulk import spreadsheets
A list of the mandatory fields in the model, asset, and model and asset templates for bulk import
in the Enterprise Asset Workspace.

Mandatory fields for model template
Field/column

Mandatory for creating models

Mandatory for updating models

Index

Yes

Yes

Manufacturer

Yes

Yes

Model Name

Yes

Yes

Model Number

Yes

Yes

Model category

Yes

Yes

Model type

Yes

Yes

Parent model manufacturer

Yes

No

Note: Representing the
row number can be used
to identify a specific row.
However, you need to fill
this in manually.

Note: Not applicable
for single models.
Parent model name

Yes

No

Note: Not applicable
for single models.
Parent model number

Yes

No

Note: Not applicable
for single models.
Component number

Yes

No

Note: Not applicable
for single models.
Component quantity

Yes

No

Note: Not applicable
for single models.
Required

Yes

No

Note: Not applicable
for single models.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1946


<!-- page 1947 -->
Field/column

Mandatory for creating models

Mandatory for updating models

Hot swappable

Yes

No

Note: Not applicable
for single models.
Repairable

Yes

No

Note: Not applicable
for single models.

Mandatory fields for asset template
Field/column

Mandatory for creating assets

Mandatory for updating assets

Index

Yes

Yes

Manufacturer

Yes

Yes

Model

Yes

Yes

Model Name

Yes

Yes

Model Number

Yes

Yes

Parent model manufacturer

Yes

Yes

Note: Representing the
row number can be used
to identify a specific row.
However, you need to fill
this in manually.

Note: Not applicable
for single assets.
Parent model name

Yes

Yes

Note: Not applicable
for single assets.
Parent model number

Yes

Yes

Note: Not applicable
for single assets.
Component number

Yes

Yes

Note: Not applicable
for single assets.
Asset Tag

Conditional

Conditional

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1947


<!-- page 1948 -->
Field/column

Serial Number

MAC Address

Parent asset

Quantity

Mandatory for creating assets

Mandatory for updating assets

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

Conditional

Conditional

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

Conditional

Conditional

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

Conditional

Conditional

Note: Required for

Note: Required for

child assets when parent
model information is
provided.

child assets when parent
model information is
provided.

Conditional

No

Note: Required for

Note: Consumable

consumable assets
(positive number).

assets cannot be
updated.

State

Yes

No

Sub state

Yes

No

Stockroom

Conditional

Conditional

Location

Note: Required for In

Note: Required for In

stock and Build states.

stock and Build states.

Conditional

Conditional

Note: Required for In

Note: Required for In

stock, In use, and Build
states.

stock, In use, and Build
states.

Install status

Yes

Yes

Substatus

Conditional

Conditional

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1948


<!-- page 1949 -->
Field/column

Component ID

Mandatory for creating assets

Mandatory for updating assets

Note: Required for In

Note: Required for In

stock state only.

stock state only.

Conditional

No

Note: Required for
child assets when
applicable.
OT entity

Conditional

Conditional

Note: Required as true

Note: Required as true

for hardware models
when the OT Asset
Management application
is activated.

for hardware models
when the OT Asset
Management application
is activated.

Mandatory fields for model and asset template

Field/column

Mandatory for creating models
and assets

Mandatory for updating models
and assets

Index

Yes

Yes

Manufacturer

Yes

Yes

Model Name

Yes

Yes

Model Number

Yes

Yes

Model category

Yes

Yes

Model type

Yes

Yes

Parent model manufacturer

Yes

Yes

Note: Representing the
row number can be used
to identify a specific row.
However, you need to fill
this in manually.

Note: Not applicable
for single models and
single assets.
Parent model name

Yes

Yes

Note: Not applicable
for single models and
single assets.
Parent model number

Yes

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1949


<!-- page 1950 -->
Field/column

Mandatory for creating models
and assets

Mandatory for updating models
and assets

Note: Not applicable
for single models and
single assets.
Component number

Yes

No

Note: Not applicable
for single models and
single assets.
Component quantity

Yes

No

Note: Not applicable
for single models and
single assets.
Required

Yes

No

Note: Not applicable
for single models and
single assets.
Hot swappable

Yes

No

Note: Not applicable
for single models and
single assets.
Repairable

Yes

No

Note: Not applicable
for single models and
single assets.
Asset Tag

Serial Number

Conditional

Conditional

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

Conditional

Conditional

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1950


<!-- page 1951 -->
Field/column

Mandatory for creating models
and assets

Mandatory for updating models
and assets

MAC Address

Conditional

Conditional

Parent asset

Note: At least one

Note: At least one

unique identifier is
required for nonconsumables based on
model category.

unique identifier is
required for nonconsumables based on
model category.

Yes

No

Note: Not applicable
for single models and
single assets.
Quantity

Yes

No

State

Yes

No

Sub state

Yes

No

Stockroom

Conditional

Conditional

Location

Note: Required for In

Note: Required for In

stock and Build states.

stock and Build states.

Conditional

Conditional

Note: Required for In

Note: Required for In

stock, In use, and Build
states.

stock, In use, and Build
states.

Unit of measurement fields
Field/column

Mandatory for creating models

Mandatory for updating models

Dimensions Unit

Conditional

Conditional

Weight Unit

Volume Unit

Note: Required if

Note: Required if

length, width, height, or
depth is provided.

length, width, height, or
depth is provided.

Conditional

Conditional

Note: Required if the

Note: Required if the

weight_decimal value is
provided.

weight_decimal value is
provided.

Conditional

Conditional

Note: Required if the

Note: Required if the

volume is provided.

volume is provided.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1951


<!-- page 1952 -->
Field/column

Mandatory for creating models

Mandatory for updating models

Current Unit

Conditional

Conditional

Power Unit

Voltage Unit

Cooling Unit

Pressure Unit

Temperature Unit

Note: Required if the

Note: Required if the

value is provided for
Current.

value is provided for
Current.

Conditional

Conditional

Note: Required if the

Note: Required if

rated_power value is
provided.

rated_power is provided.

Conditional

Conditional

Note: Required if

Note: Required if

the voltage value is
provided.

voltage is provided.

Conditional

Conditional

Note: Required if the

Note: Required if the

cooling value is provided
(Enterprise models only).

cooling value is provided
(Enterprise models only).

Conditional

Conditional

Note: Required if

Note: Required if

the pressure value is
provided (Enterprise
models only).

the pressure value is
provided (Enterprise
models only).

Conditional

Conditional

Note: Required if the

Note: Required if the

temperature value is
provided (Enterprise
models only).

temperature value is
provided (Enterprise
models only).

Reference fields validation
The values entered in the following columns should exist in the database:
• PO Number
• Assigned To
• Department
• Company
• Cost Center
• Asset Depreciation
• Aisle Space Location
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1952


<!-- page 1953 -->
Normalization status for enterprise models
Description of the normalization statuses for enterprise models.

Status

Description

New

The model is created and has not yet run
through the normalization process.

Normalized

After normalization, values for normalized
manufacturer, product, model name, model
number and model type are populated.
Under specific conditions, certain fields that
are typically read-only can be edited.

Partially Normalized

After normalization, values are populated for
normalized manufacturer, product, and model
type and the model number is blank.

Manufacturer Normalized

After normalization, values for normalized
manufacturer is populated and the rest of the
columns are blank after normalization.

Match Not Found

The normalization process could not match
any of the fields of the model.
Match Not Found status could occur if a
normalization rule for the software does not
exist.

Model fields for Enterprise Asset Management
A detailed description of all model fields in the Enterprise Asset Management application.

Model Details
Field

Description

Display name

Name of the model. A system property called

glide.cmdb_model.display_name.shorten controls how
software model display names are generated.
Manufacturer

The company that built the model.

Name

The manufacturer-assigned name of the model or abstract name
specified by the model manager, such as Field Agent Laptop.

Short description

A brief description of the model.

Model categories

The category to which the model belongs to. This is a read-only field.

Model type

Type of multi-component model. The following are the options to choose
from:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1953


<!-- page 1954 -->
Field

Note: This
field doesn’t
appear if you’re
creating a
pallet model.
Asset tracking
strategy

Description

• Simple
• Consumable
• Pre-assembled
• User-assembled
Process that is used to track the asset. Options are Leave to category,
Create consumable asset, Don't create assets.

Note: This
field doesn’t
appear if you’re
creating a
pallet model.
Asset tracking unit

Unit that is used to measure the asset. Options are Individual Unitand
Fixed Fee.

Acquisition method

The method for purchasing the model. Options are Both, Buy, or Lease.

Model number

The specific model number assigned to the item by the manufacturer.

Barcode

The barcode number assigned to the model. Barcodes are assigned by
the manufacturer.

Owner

The person responsible for the model.

Status

The status of the model. By default, the newly created model is in Build
status. Once you define the model and its components, you can change
the status of the model. The other status options are In Production,
Retired, and Sold.

Picture

An image that represents the model. Select the Attach image link
to choose and attach an image. Once you attach the image, the link
changes to View image.

Certified

The option that determines whether the model is approved for use.

Comments

Information about the model that would be helpful for others to know.

Calculated lifecycle
template

Lifecycle template to calculate lifecycle dates. This template can be
assigned to models

Calculated lifecycle
start date

Start date from which the Phase start date and Phase end date are
calculated for each lifecycle phase defined in the Calculated lifecycle
template that you selected.

Financials
Field

Description

Cost

The cost of a single unit of the model.

TCO benchmark cost

Specify a TCO benchmark cost for the model.

TCO benchmark threshold

The TCO benchmark threshold is a
percentage of the TCO benchmark cost

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1954


<!-- page 1955 -->
Field

Description

where you want to be alerted that the cost
is approaching the benchmark. By default
the percentage is 75%. For example, if the
TCO benchmark cost is $100 then the TCO
benchmark threshold is $75.
If you set the TCO benchmark cost, this field is
automatically calculated.
You can change the percentage in the

asset_tco_benchmark_threshold_percentage
system property.
Average assets TCO

Expenditure type

Indicates the average Asset TCO value for all
assets in the report source. For example, if you
have 10 assets in a report source, and adding
up all of the Asset TCO values for all assets
totals 100,000, then the average asset TCO is
10,000.
The type of expenditure. Choose from the
following:
• Capex: Capital expenditure is a one-time
expenditure, where the value is realized over
the years. For example, a photocopier.
• Opex: Operational expenditure is an
ongoing expenditure. For example, toners
for the photocopier.

Useful life (months)

The number of months that the model can be
used for.

Depreciation

The depreciation scheme for the model.

Salvage value

The estimated value that an asset realizes
upon its sale at the end of its useful life. This
value must be less than or equal to the cost of
the asset.

Failure Risk
Values in the Likelihood and Impact fields appear only if the configuration records for risk
likelihood and risk impact are frozen.

Field

Description

Failure
likelihood The likelihood values for the risk score.
The configuration values that you created for risk likelihood appear as options in
this field. The options appear in the format of value-label. For example, 1Low where 1 is the value and Low is the label. For details, see Create configuration
values for risk likelihood.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1955


<!-- page 1956 -->
Field

Description

Failure
impact

The impact values for the risk score.
The configuration values that you create for risk impact appear as options in this
field. The options appear in the format of value-label. For example, 2-Medium
where 2 is the value and Medium is the label. For details, see Create configuration
values for risk impact.

Failure
The risk score is automatically populated based on the likelihood and impact
risk score values.

Normalization
Field

Description

Normalized
manufacturer

Normalized name of the manufacturer.

Normalized
model name

Normalized name of the model.

Normalized
model
number

Normalized number of the model.

Normalization
status

Current normalization status of the model.

Normalized
model type

Normalized type of the model.

Exclude
from sharing
with content
service

Option that excludes specific content from being shared with the Enterprise
Asset Management Content Service. This option is applicable only if you have
opted in to the Enterprise Asset Management Content Service.

Product Catalog

Note: The Product Catalog fields only appear for consumable models.
Field

Description

Catalog Item

Name of the catalog item.

Description

Description of the catalog item.

Picture

Picture depicting the product model.

Model Components tab
Use this tab to create model components. One or more than one model components is required
to create a multi-component model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1956


<!-- page 1957 -->
Note: The Model components tab is visible only if the model is a multi-component

model. If the Multi-component field on the Model page has either of the two values:
Pre-assembled or User-assembled, the Model Components tab is visible. If the Multicomponent field has the value Not Applicable, the Model Components tab is not visible.

Field

Description

Model
category of
component

Model category of the component.

Component

Component of the model. Only model components that belong to the model
category you selected appear in this list.

Required

If the check box is selected, the model component is required for the complex
model to work and can't be permanently removed.

Hot
swappable

By default, this check box is selected. Indicates that the model component can
be swapped while the multi-component model is operational. This check box is
selected by default.

Repairable

Indicates that the model component can be repaired. This check box is selected
by default.

Enterprise Model Lifecycles tab
Use this tab to specify life cycle information for the enterprise model.

Field

Description

Model

Name of the model.

Lifecycle type

Type of lifecycle.
• Internal
• Publisher

Lifecycle phase

Phase of the lifecycle.
• General Availability
• End of Sale
• End of Support
• End of Extended support
• End of Life

Source

Source of the lifecycle of the model.

Description

Description of the lifecycle.

Phase start date

Date the lifecycle phase starts.

Phase end date

Date the lifecycle phase ends.

Risk

Risk associated with the lifecycle.
• Very High
• High

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1957


<!-- page 1958 -->
Field

Description

• Moderate
• Low
• None
Active

Indicates that the lifecycle of the model is active.

Vendor Catalog Items tab

Note: The Vendor Catalog Items tab appears only for consumable models.
Field

Description

Name

Display name of the vendor catalog item.

Vendor

Name of the product vendor.

Product Model

Product model associated with the vendor catalog item.

Out of Stock

Option that indicates if the product is out of stock.

Application

Application that contains the product record.

Product ID

Manufacturer product ID.

List Price

List price of the product before any discounts are applied.

Vendor Price

Vendor price of the product.

Rank tier

Vendor rank tier.

Short Description

Description of the product.

General
Product Catalog Item

Product catalog item that was created when the item was published.

UPC

Universal Product Code (UPC) of the product.

Description

Description of the product.

Picture

Picture of the product.

Active

Option that indicates if the product is active or not.

Information
Specifications

Product specifications that come from the vendor.

Features

Product features that come from the vendor.

Contract fields for Enterprise Asset Management
A detailed description of all contract fields in the Enterprise Asset Management application.

Contract
Field

Description

Vendor

Vendor that is associated with the lease contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1958


<!-- page 1959 -->
Field

Description

Contract
number

Unique number that is used to identify and track the lease contract. You can
obtain this number from the vendor.

Name

Name of the lease contract.

Parent contract Parent contract that the lease contract is associated with.
Start date

Date on which the lease contract begins.

End date

Date on which the lease contract ends.

Contract
administrator

User who manages the lease contract and communicates with the vendor.

Approver

User who approves or rejects the lease contract.

Business
owner

User who manages the lease contract from a business perspective.

Description

Description of the lease contract.

Financial
Field

Description

Invoice
payment
terms

Terms that describe how and when you must make payments for the lease
contract.

Payment
schedule

Frequency at which you must make each lease contract payment.

Payment
amount

Amount that you must pay for each lease contract payment.

Applicable
taxes

Taxes that are applied to the lease contract. Select one of the following options:

Note: You can set this field to any currency of your choice.

• Exempt: The lease contract is exempt from taxes.
• Sales: Sales taxes are applied to the lease contract.

Lease term
(months)

Length of the lease contract, in months.

Vendor
account

Vendor account to which you must make each lease contract payment.

Purchase
order

Purchase order that is associated with the lease contract.

Cost center

Cost center that is financially responsible for the lease contract.

Has rate
card

Option that indicates if the lease contract has an associated contract rate card,
which provides detailed cost information for the contract.
See Create a contract rate card

for more information on contract rate cards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1959


<!-- page 1960 -->
Maintenance plan fields for Enterprise Asset Management
A detailed description of all maintenance plan fields in the Enterprise Asset Management
application.

Maintenance Plan
Field

Description

Active

Option that indicates if the maintenance plan is active.

Name

Name of the maintenance plan.

Short description

Brief description of the maintenance plan.

Target Assets
Field

Description

Table

Target Enterprise Asset Management table that lists the enterprise assets that
you want to apply the maintenance plan to. The default table is Enterprise
asset.

Filter
conditions

Filter conditions that enable you to apply the maintenance plan to only specific
subsets of enterprise assets.
You can add multiple filter conditions to a single maintenance plan using the
following options:
• or: Enables you to specify any of the conditions that an enterprise asset can
meet to have the maintenance plan applied to it.
• and: Enables you to specify all the conditions that an enterprise asset must
meet to have the maintenance plan applied to it.
• + New condition set: Enables you to specify additional sets of conditions that
an enterprise asset can meet to have the maintenance plan applied to it.

Apply to new Option to apply the maintenance plan to any subsequent enterprise assets
matching
that are added to the target Enterprise Asset Management table and meet the
records
specified filter conditions.
Task
creation
policy

Policy that specifies what action you want to take when the maintenance plan is
applied to an enterprise asset that is already under maintenance.
Select one of the following options:
• Leave alone: Prevents the creation of tasks for the new maintenance plan and
the deletion of tasks that are associated with the existing maintenance plan.
• Cancel existing: Deletes all tasks that are associated with the existing
maintenance plan.
• Add to existing: Adds both new tasks and existing active tasks to the new
maintenance plan.

Maintenance schedule fields for Enterprise Asset Management
A detailed description of all maintenance schedule fields in the Enterprise Asset Management
application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1960


<!-- page 1961 -->
Maintenance Schedule
Field

Description

Name

Name of the maintenance schedule.

Short
Brief description of the maintenance schedule.
description
Trigger

Trigger that specifies the type of conditions that must be met for the maintenance
to run.
Select one of the following options:
• Duration: Triggers the maintenance to run based on time. If you select this
option, the Duration Details form section appears, where you can specify more
details about the trigger.
• Meter: Triggers the maintenance to run based on a specific enterprise asset
field value. If you select this option, the Meter Details form section appears,
where you can specify more details about the trigger.
• Condition: Triggers the maintenance to run based on filter conditions. If you
select this option, the Condition Details form section appears, where you can
specify more details about the trigger.
• Script: Triggers the maintenance to run based on advanced script criteria. If
you select this option, the Script Details form section appears, where you can
specify more details about the trigger.
• Duration or Meter: Triggers the maintenance to run based on time or a specific
enterprise asset field value, whichever comes first. If you select this option, the
Duration Details and Meter Details form sections appear, where you can specify
more details about the trigger.

Active

Option that indicates if the maintenance schedule is active.

Duration Details

Note: This form section appears only if you set the Trigger field to Duration or Duration or
Meter in the Maintenance Schedule form section.

Field

Description

Trigger
Frequency at which you want the maintenance to run.
type
Select one of the following options:
• Interval: Runs the maintenance at a specified time interval. If you select this option,
the Days, Hours, Minutes, and Seconds fields appear, where you can specify the
amount of time that must pass before the maintenance runs again.
• Weekly: Runs the maintenance once a week. If you select this option, theDue day of
week and Due time fields appear, where you can specify the day and time at which
you want the maintenance to run each week.
• Monthly: Runs the maintenance once a month on a specific date. If you select this
option, the Due day of month and Due time fields appear, where you can specify the
date and time at which you want the maintenance to run each month.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1961


<!-- page 1962 -->
Field

Description

• Annually: Runs the maintenance once a year on a specific date and month. If you
select this option, the Due month, Due day of month, and Due time fields appear,
where you can specify the month, date, and time at which you want the maintenance
to run each year.
• Week in Month: Runs the maintenance once a month during a specific week of the
month. If you select this option, the Due week in month and Due time fields appear,
where you can specify the week and time at which you want the maintenance to run
each month.
• Day in Week in Month in Year: Runs the maintenance once a year on a specific day,
week, and month. If you select this option, the Due month, Due week in month, Due
day of week, and Due time fields appear, where you can specify the month, week,
day, and time at which you want the maintenance to run each year.
Lead
time

Number days required for the scheduled maintenance work.

Meter Details

Note: This form section appears only if you set the Trigger field to Meter or Duration or
Meter in the Maintenance Schedule form section.

Field

Description

Field

Enterprise asset field that you want to match against to trigger the maintenance to run.

Every Field value that an enterprise asset must match to trigger the maintenance to run.

Condition Details

Note: This form section appears only if you set the Trigger field to Condition in the
Maintenance Schedule form section.

Field

Description

Filter
Condition Filter conditions that trigger the maintenance to run
You can add multiple filter conditions to the trigger using the following options:
• or: Enables you to specify any of the conditions that an enterprise asset can meet
to trigger the maintenance to run.
• and: Enables you to specify all the conditions that an enterprise asset must meet
to trigger the maintenance to run.
• + New condition set: Enables you to specify additional sets of conditions that an
enterprise asset can meet to trigger the maintenance to run.

Script Details

Note: This form section appears only if you set the Trigger field to Script in the
Maintenance Schedule form section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1962


<!-- page 1963 -->
Field

Description

Script

Script specifying the advanced criteria that triggers the maintenance to run.

Work plan fields for Enterprise Asset Management
A detailed description of all work plan fields in the Enterprise Asset Management application.

Work Plan
Field

Description

Number

Unique number for the work plan.

Name

Name of the work plan.

Short
Brief description of the work plan.
description
Effective
start

Effective start date from when the work plan is active.

Effective
end

Effective end date until when the work plan is active.

Active

Option that indicates if the work plan is available to use.

Forecast
work
orders

Option to specify if this work plan is applicable to estimate and generate the
upcoming work orders.
If this option is selected, you can view the Generate work orders option by
selecting the More Actions ellipsis icon. This generates a work order for the
schedule per asset.

Conditions
Field

Description

Table

Target Enterprise Asset Management table that the work plan is associated
with. The default table is Enterprise asset.

Category

Determine whether the work plan is applicable for either category: original
equipment scheduling (OEM) or alternative equipment scheduling (AEM).

Apply to new
matching
records

Option to apply the work plan to any subsequent enterprise assets that are
added to the target Enterprise Asset Management table and meet the specified
filter conditions.

Task creation
Specify what to do when a work plan runs based on a schedule occurrence that
policy
is already in progress.
Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1963


<!-- page 1964 -->
Field

Description

• Leave alone: Prevents the creation of tasks for the new work plan and the
deletion of tasks that are associated with the existing work plan.
• Cancel existing: Deletes existing tasks associated with the plan and creates
tasks to replace them.
• Add to existing: Allows new tasks to replace the existing active tasks for the
specific schedule occurrence of a plan.
Filter
conditions

Filter conditions that enable you to apply the work plan to specific subsets of
enterprise assets.
You can add multiple filter conditions to a single work plan using the following
options:
• or: Enables you to specify any of the conditions that an enterprise asset can
meet to have the maintenance plan applied to it.
• and: Enables you to specify all the conditions that an enterprise asset must
meet to have the maintenance plan applied to it.
• + New condition set: Enables you to specify additional sets of conditions that
an enterprise asset can meet to have the maintenance plan applied to it.

Work plan schedule fields for Enterprise Asset Management
A detailed description of all the work plan schedule fields in the Enterprise Asset Management
application.

Planned Work Schedule
Field

Description

Name

Name of the work plan schedule.

Short
Brief description of the work plan schedule.
description
Trigger

Trigger that specifies the type of conditions that must be met for the work plan to
run.
Select one of the following options:
• Duration: Triggers the work plan to run based on time. If you select this option,
the Duration Details form section appears, where you can specify more details
about the trigger.
• Meter: Triggers the work plan to run based on a specific enterprise asset field
value. If you select this option, the Meter Details form section appears, where
you can specify more details about the trigger.
• Condition: Triggers the work plan to run based on filter conditions. If you select
this option, the Condition Details form section appears, where you can specify
more details about the trigger.
• Script: Triggers the work plan to run based on advanced script criteria. If you
select this option, the Script Details form section appears, where you can
specify more details about the trigger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1964


<!-- page 1965 -->
Field

Description

• Duration or Meter: Triggers the work plan to run based on time or a specific
enterprise asset field value, whichever comes first. If you select this option, the
Duration Details and Meter Details form sections appear, where you can specify
more details about the trigger.
Active

Option that indicates if the work plan schedule is active.

Duration Details

Note: This form section appears only if you set the Trigger field to Duration or Duration or
Meter in the Planned Work Schedule form section.

Field

Description

Trigger
type

Frequency at which you want the work plan to run.
Select one of the following options:
• Interval: Runs the work plan at a specified time interval. If you select this option,
the Days, Hours, Minutes, and Seconds fields appear, where you can specify
the amount of time that must pass before the work plan runs again.
• Weekly: Runs the work plan once a week. If you select this option, the Due day
of week and Due time fields appear, where you can specify the day and time at
which you want the work plan to run each week.
• Multiple days of the week: Runs the work plan multiple days in a week. If you
select Multiple days of the week, the Due days of week field appears so you can
specify on which days in a week the planned work should be performed.
• Monthly: Runs the work plan once a month on a specific date. If you select this
option, the Due day of month and Due time fields appear, where you can specify
the date and time at which you want the work plan to run each month.
• Annually: Runs the work plan once a year on a specific date and month. If
you select this option, the Due month, Due day of month, and Due time fields
appear, where you can specify the month, date, and time at which you want the
work plan to run each year.
• Week in Month: Runs the work plan once a month during a specific week of
the month. If you select this option, the Due week in month and Due time fields
appear, where you can specify the week and time at which you want the work
plan to run each month.
• Day in Week in Month in Year: Runs the work plan once a year on a specific day,
week, and month. If you select this option, the Due month, Due week in month,
Due day of week, and Due time fields appear, where you can specify the month,
week, day, and time at which you want the work plan to run each year.

Lead time Number of days required for the scheduled work plan.
Preserve
calculated Option to restart the interval calculation from the time when the work order was
completed.
interval
This check box appears when Interval, Monthly, or Annually is selected for
Trigger type and Fixed is selected for the Monthly type and Annually type field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1965


<!-- page 1966 -->
Meter Details

Note: This form section appears only if you set the Trigger field to Meter or Duration or
Meter in the Planned Work Schedule form section.

Field

Description

Field

Enterprise asset field that you want to match against to trigger the work
plan to run.

Every

Field value that an enterprise asset must match to trigger the work plan
to run.

Preserve calculated
meter

Option to restart the meter calculation based on the value defined in
the Every field.

Condition Details

Note: This form section appears only if you set the Trigger field to Condition in the
Planned Work Schedule form section.

Field

Description

Filter
Condition Filter conditions that trigger the work plan to run
You can add multiple filter conditions to the trigger using the following options:
• or: Enables you to specify any of the conditions that an enterprise asset can meet
to trigger the work plan to run.
• and: Enables you to specify all the conditions that an enterprise asset must meet
to trigger the work plan to run.
• + New condition set: Enables you to specify additional sets of conditions that an
enterprise asset can meet to trigger the work plan to run.

Script Details

Note: This form section appears only if you set the Trigger field to Script in the Planned
Work Schedule form section.

Field

Description

Script

Script specifying the advanced criteria that trigger the work plan to run.

Effectivity Details
Field

Description

Start
planned

Option based on which the planned work schedule should determine its start date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1966


<!-- page 1967 -->
Field

Description

schedule
on

• Date
• Field Value
• Schedule

Effective
Start
Effective
start
reference

Effective start date from when the planned work is scheduled to work.

Field value that should be used to determine the start date of the planned work.
Effective start reference displays the list of fields from the table that is selected to
create conditions for the work plan. For example, Printer [cmdb_ci_printer].
This field appears only when Field Value is selected from Start planned schedule
based on.

Schedule

Name of the schedule that should be used to calculate the start date of the work
plan.
This field appears only when Schedule is selected from Start planned schedule
based on.

End
planned
schedule
based on

Determines the end date of a planned work schedule.
• Date
• Field Value
• Frequency

Expense line fields for Enterprise Asset Management
A detailed description of all expense line fields in the Enterprise Asset Management application.

Expense Line
Field

Description

Number

Unique number that is used to identify and track the expense line. This field
populates automatically.

Date

Date on which you are creating the expense line. This field is automatically set to
the current date.

Inherited

Option that indicates if the expense line is inherited from a parent expense line.
If you enable this option, the Parent field appears below the Inherited field. In the
Parent field, search for and select the parent expense line that this expense line
is inherited from. The following fields are then inherited from the parent expense
line and can no longer be modified:
• Source ID
• Asset
• Contract
• User

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1967


<!-- page 1968 -->
Field

Description

• Configuration Item
• Task
• Cost center
Source ID

Enterprise asset that you want to associate with the expense line. Based on the
enterprise asset that you select, the corresponding fields in the Source form
section populate automatically.

Amount

Cost of the enterprise asset that you want to associate with the expense line.
To indicate that you have received a credit towards the enterprise asset, enter a
negative number.

Note: You can set this field to any currency of your choice.
Process
date

Date and time at which the expense line is processed.

State

State of the expense line.

Summary
type

Expense line category. Select one of the following options:
• Grow Business: Expense lines for enterprise assets that are used to help your
business grow.
• Run Business: Expense lines for enterprise assets that are used to help your
business run.
• Transform Business: Expense lines for enterprise assets that are used to help
transform your business.

Short
Brief description of the expense line.
description

Source
Field

Description

Asset

Enterprise asset that you want to associate with the expense line.

Fixed asset

Fixed asset that contains the selected enterprise asset.
A fixed asset is a container that holds one or more individual assets. If the
enterprise asset that you selected in the Asset field is contained within a fixed
asset, the Fixed asset field populates automatically.

Contract

Contract that the selected enterprise asset is associated with.

User

User who the selected enterprise asset is assigned to.

Configuration Configuration item (CI) that is associated with the expense line.
item
Task

Task that is associated with the expense line.

Cost center

Cost center that is financially responsible for the selected enterprise asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1968


<!-- page 1969 -->
Fields inherited from a parent asset group to a sub group
A list of all the fields that are inherited from the parent asset group to a subgroup.

Column label

Inherited from parent?

Appears on asset group form

Assigned

Yes, if empty; can be edited.

Yes

Assigned to

Yes, if empty; can be edited.

Yes

Company

Yes, if empty; can be edited.

Yes

Cost Center

Yes, if empty; can be edited.

No

Department

Yes, if empty; can be edited.

Yes

Life cycle stage

Yes

No

Life cycle stage status

Yes

No

Location

Yes, if empty; can be edited
but must be a location that
descends from the parent
group's location.

Yes

Managed by

Yes, if empty; can be edited.

Yes

Owned by

Yes, if empty; can be edited.

Yes

Retired date

Yes

Yes

State

Yes, can be edited.

Yes

Sub state

Yes; can be edited.

Yes

Support group

Yes, if empty; can be edited.

Yes

Supported by

Yes, if empty; can be edited.

Yes

Enterprise asset disposal order stages
An enterprise asset disposal order goes through various stages in the disposal process before
it’s completed. With each stage, the task that's associated with that stage changes too.
Closing a task in the asset disposal process completes that task and automatically creates the
next task in the process. For example, after you close the Schedule Pickup task, the state for that
task changes to Closed Complete and the next task, Asset Departure, is created. This process
continues until you close all the tasks required for disposing of the selected assets. After you
close all the tasks, the disposal order is completed.
Enterprise asset disposal order stages
Enterprise disposal stages

Task

Description

Draft

Verify Assets

Asset disposal record is
created.

Scheduling

Schedule Pickup

Scheduling details for the
asset disposal order.

Transit

Asset Departure

Verified assets are ready for
departure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1969


<!-- page 1970 -->
Enterprise asset disposal order stages (continued)
Enterprise disposal stages

Task

Description

Confirmation

Vendor Confirmation

Asset disposal order is
confirmed by the vendor.

Documentation

Disposal Documentation

Documentation for the
disposal record is attached.

Completed

None

Asset disposal record request
is completed.

Cancelled

None

Disposal order can be
canceled only until the transit
stage.

Terminology for linear assets
Terms commonly used for linear assets in the Enterprise Asset Management application.

Linear asset terms and their description
Term

Linear asset

Description

An asset that has a physical length or
dimension, such as roads, railways, pipelines,
and power transmission lines.
Linear assets have a series of geopoints; at
least a start and end point and have segments
with different attributes.

Geo point

Geo points, or graphical coordinates, are a
way of expressing a location on the earth's
surface using a set of numerical values.
Geo points consists of latitudes, longitudes,
and altitudes and can be visualized on a
map. In the Enterprise Asset Management
application, geo point latitude and longitude
refer to the coordinate format defined by WGS
84 and uses signed decimal degrees.

Route

Geo points of a linear asset form a route.
Routes can be plotted and visualized on a
map.

Boundary width

Maximum width of the linear asset. It’s used to
validate whether a cmn_location is on-route or
not.

Marker

A point location that can be identified on or
near a linear asset. A marker should contain
a geo point so it can be visualized on a map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1970


<!-- page 1971 -->
Term

Description

If the geo point is on the route of the linear
asset, then it’s an on-route marker.
Segment

Discrete asset

A section of a linear asset with certain
attributes. A segment consists of a start point
and an end point, or a start point and length.
Discrete assets are enterprise assets and
consumables. Discrete assets can be
associated to a linear asset and be managed
as part of the linear asset.

Overlap asset

A linear asset relationship where two or
more linear assets are in close proximity and
within the boundary width. For example, a
northbound and a southbound highway. A
linear asset can be defined for a northbound
highway and another linear asset for a
southbound highway.

Intersect asset

A linear asset relationship where linear
assets have an intersect point. For example,
intersecting roads, where two or more roads
meet or cross each other.

Continue asset

A linear asset relationship for linear assets
that have a start and an end marker. For
example, a highway that after a particular point
changes into another highway.

Installed with Enterprise Asset Management for Healthcare
The user role components, plugins, and applications are installed with activation of the
com.sn_eamhc plugin.

Roles installed
Role title [name]

Description

Medical asset manager

Manages
sn_eam.enterprise_asset_manager
healthcarespecific models
and assets in
Enterprise Asset
Workspace

[sn_eamhc.medical_asset_manager]

Medical asset technician

Performs tasks
related to
[sn_eamhc.medical_asset_technician] healthcarespecific assets.

Contains roles

sn_eam.enterprise_asset_technician

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1971


<!-- page 1972 -->
Plugins installed
Name

Description

Asset Management
(com.snc.asset_management)

Provides functionalities to integrate the physical,
technological, contractual, and financial aspects of
information technology assets.

Procurement (com.snc.procurement)

Provides the capability to source and receive
requested assets so that you can fulfill service
catalog requests.

Enterprise model normalization
(com.sn_eam_core)

Provides information related to normalization such
as normalization status, model content service
download, and life-cycle overview.

Asset Management Workspace
- Recommendations
(com.sn_itam_recomm)

Provides actionable recommendations for users in
configurable workspaces.

SM Planned Maintenance
(com.snc.planned_maintenance)

Provides the capability to manage regular
preventative maintenance of assets.

Work Management
(com.snc.work_management)

Provides the capability to manage your work orders,
work order tasks, maintenance plans, and other
relevant work order information.

Performance Analytics (com.snc.pa)

Provides dashboards containing actionable data
visualizations that help you improve your business
processes and practices.

Playbook Experience
Provides a step-by-step guidance for setting up your
(com.glide.playbook_experience.config) assets with important information.
Playbooks for App Engine
(com.glide.pad.license)

Provides a simplified and task-oriented view of
processes.

Cost Management
(com.snc.cost_management)

Provides options to plan and control business costs.

Applications installed
Name

Description

ServiceNow Enterprise
Asset Management
(com.sn_eam)

Manages the complete life cycle of your enterprise connected and
non-connected assets.

Expanded Model
and Asset Classes
(com.sn_ent)

Adds enterprise model and asset classes that extend out-of-the-box
product model and asset classes within the CMDB class hierarchy.
In addition, creates model categories that associate these enterprise
model and asset classes with CMDB configuration item (CI) classes.

CMDB CI Class Models Adds class models that extend the CMDB class hierarchy, including
(com.sn_cmdb_ci_class) class descriptions, identification rules, identifier entries, and
dependent relationships.
Asset Management
Provides features that are common to the Hardware Asset
Common
Management, Software Asset Management, andEnterprise Asset
(com.sn_itam_common)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1972


<!-- page 1973 -->
Name

Description

Management applications, including the catalog item to request
asset reclamation.
Physical Assets
(sn_phy_assets)

Marker that aligns features for physical asset-based applications,
including the Hardware Asset Management and Enterprise Asset
Management applications.

Risk Heat Map
(com.sn_risk_heatmap)

Provides a heatmap component that enables you to visualize the risk
posture of your organization.

Geo Map Component
(com.sn_geo_map)

Provides the capability to track the location of the assets using
indoor maps.

Installed with OT Asset Management
The user role components, plugins, and applications are installed with activation of the
com.sn_otam plugin.

Roles installed
Role title [name]

Description

Contains roles

OT asset manager

Manages Operational Technologyspecific models and assets in the
OT Asset Workspace.

sn_eam.asset_manager

[sn_otam.ot_asset_manager]

OT asset technician

Performs tasks related to
Operational Technology-specific
[sn_otam.ot_asset_technician] assets in the OT Asset Workspace.

sn_eam.asset_technician

Plugins installed
Name

Description

Asset Management
(com.snc.asset_management)

Provides functionalities to integrate the physical,
technological, contractual, and financial aspects of
information technology assets.

Procurement (com.snc.procurement)

Provides the capability to source and receive
requested assets so that you can fulfill service
catalog requests.

Enterprise model normalization
(com.sn_eam_core)

Provides information related to normalization such
as normalization status, model content service
download, and life-cycle overview.

Asset Management Workspace
- Recommendations
(com.sn_itam_recomm)

Provides actionable recommendations for users in
configurable workspaces.

SM Planned Maintenance
(com.snc.planned_maintenance)

Provides the capability to manage regular
preventative maintenance of assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1973


<!-- page 1974 -->
Name

Description

Work Management
(com.snc.work_management)

Provides the capability to manage your work orders,
work order tasks, maintenance plans, and other
relevant work order information.

Performance Analytics (com.snc.pa)

Provides dashboards containing actionable data
visualizations that help you improve your business
processes and practices.

Playbook Experience
Provides a step-by-step guidance for setting up your
(com.glide.playbook_experience.config) assets with important information.
Playbooks for App Engine
(com.glide.pad.license)

Provides a simplified and task-oriented view of
processes.

Cost Management
(com.snc.cost_management)

Provides options to plan and control business costs.

Applications installed
Name

Description

Enterprise Asset
Management
(com.sn_eam)

Manages the complete life cycle of your connected and nonconnected enterprise assets.

Expanded Model
and Asset Classes
(com.sn_ent)

Adds enterprise model and asset classes that extend out-of-the-box
product model and asset classes within the CMDB class hierarchy.
In addition, creates model categories that associate these enterprise
model and asset classes with CMDB configuration item (CI) classes.

CMDB CI Class Models Adds class models that extend the CMDB class hierarchy, including
(com.sn_cmdb_ci_class) class descriptions, identification rules, identifier entries, and
dependent relationships.
Hardware Asset
Management
(sn_hamp)

Provides advanced workflow, automation, and mobile capabilities
that enable you to manage the complete life cycle of your
organizational assets, including hardware and consumable assets.

Asset Management
Provides features that are common to the Hardware Asset
Common
Management, Software Asset Management, and Enterprise Asset
(com.sn_itam_common) Management applications, including the catalog item to request
asset reclamation.
Physical Assets
(sn_phy_assets)

Marker that aligns features for physical asset-based applications,
including the Hardware Asset Management and Enterprise Asset
Management applications.

Risk Heat Map
(com.sn_risk_heatmap)

Provides a heatmap component that enables you to visualize the risk
posture of your organization.

Geo Map Component
(com.sn_geo_map)

Provides the capability to track the location of the assets using
indoor maps.

Components installed with Enterprise Asset Management for Data Center and
Network Asset Management (DCNAM)
Several types of components are installed with activation of the com.sn_eam_dcnam plugin,
including user roles, plugins, and applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1974


<!-- page 1975 -->
Roles installed
Role title [name]

Description

DCNAM asset manager

Manages critical
facility-based
enterprise models
and assets for
telecommunications
networks. In addition,
manages linear assets
for telecommunications
networks.

[sn_eam_dcnam.dcnam_asset_manager]

Performs asset and
work tasks related to
critical facility-based
[sn_eam_dcnam.dcnam_asset_technician]
enterprise assets
and linear assets for
telecommunications
networks.
DCNAM asset technician

Contains roles

sn_eam.asset_manager

sn_eam.asset_technician

Plugins installed
Name

Description

Asset Management
(com.snc.asset_management)

Provides functionalities to integrate the physical,
technological, contractual, and financial aspects of
information technology assets.

Procurement (com.snc.procurement)

Provides the capability to source and receive
requested assets so that you can fulfill service
catalog requests.

Enterprise model normalization
(com.sn_eam_core)

Provides information related to normalization such
as normalization status, model content service
download, and life-cycle overview.

Asset Management Workspace
- Recommendations
(com.sn_itam_recomm)

Provides actionable recommendations for users in
configurable workspaces.

SM Planned Maintenance
(com.snc.planned_maintenance)

Provides the capability to manage regular
preventative maintenance of assets.

Work Management
(com.snc.work_management)

Provides the capability to manage your work orders,
work order tasks, maintenance plans, and other
relevant work order information.

Performance Analytics (com.snc.pa)

Provides dashboards containing actionable data
visualizations that help you improve your business
processes and practices.

Playbook Experience
Provides a step-by-step guidance for setting up your
(com.glide.playbook_experience.config) assets with important information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1975


<!-- page 1976 -->
Name

Description

Playbooks for App Engine
(com.glide.pad.license)

Provides a simplified and task-oriented view of
processes.

Cost Management
(com.snc.cost_management)

Provides options to plan and control business costs.

Applications installed
Name

Description

ServiceNow Enterprise
Asset Management
(com.sn_eam)

Manages the complete life cycle of your enterprise connected and
non-connected assets.

Expanded Model
and Asset Classes
(com.sn_ent)

Adds enterprise model and asset classes that extend out-of-the-box
product model and asset classes within the CMDB class hierarchy.
In addition, creates model categories that associate these enterprise
model and asset classes with CMDB configuration item (CI) classes.

CMDB CI Class Models Adds class models that extend the CMDB class hierarchy, including
(com.sn_cmdb_ci_class) class descriptions, identification rules, identifier entries, and
dependent relationships.
Asset Management
Provides features that are common to the Hardware Asset
Common
Management, Software Asset Management, andEnterprise Asset
(com.sn_itam_common) Management applications, including the catalog item to request
asset reclamation.
Physical Assets
(sn_phy_assets)

Marker that aligns features for physical asset-based applications,
including the Hardware Asset Management and Enterprise Asset
Management applications.

Risk Heat Map
(com.sn_risk_heatmap)

Provides a heatmap component that enables you to visualize the risk
posture of your organization.

Geo Map Component
(com.sn_geo_map)

Provides capabilities to track asset locations using indoor maps.

Components installed with Enterprise Asset Management for Providers
Several types of components are installed with activation of the com.sn_eam_provider plugin,
including user roles, applications, and tables.

Roles installed
Role title [name]

Description

Contains roles

Provider asset manager

Manages all
DaaS-related
activities,
including the
fulfillment
of Return
Merchandise
Authorization

• sn_eam.asset_manager

[sn_eam_provider.provider_asset_manager]

• sn_eam_provider.provider_asset_technician

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1976


<!-- page 1977 -->
Role title [name]

Description

Contains roles

(RMA)
requests.
Performs
sn_eam.asset_technician
tasks related
to DaaS
[sn_eam_provider.provider_asset_technician]
assets.
Provider asset technician

Applications installed
Name

Description

ITAM Common forDaaS
(sn_daas_common)

Provides asset management services to DaaS providers, vendors,
and manufacturers to support their DaaS offerings.

Tables installed
Table

Description

RMA response

Information about your RMA response orders,
including the originating account and the
delivery address.

[sn_daas_common_rma_response_order]

RMA response order line
[sn_daas_common_rma_response_orderline]
Inbound asset order
[sn_itam_common_inbound_asset_order]
Inbound asset order line
[sn_itam_common_inbound_asset_orderline]

Information about each asset that is associated
with your RMA response orders, including the
model of the asset.
Information about your inbound asset orders,
including the originating account and the
delivery address.
Information about each asset that is associated
with your inbound asset orders, including the
model of the asset.

Scheduled jobs and tables installed with normalization of firmware models
Scheduled jobs that run during the normalization of firmware models embedded into Operational
Technology (OT) assets and tables that store firmware normalization details are installed with the
OT Asset Management application.
Scheduled jobs for Firmware normalization
Scheduled job

Firmware Content
Upload

Description

• Uploads data from the firmware tables to the CDS Client Staging
[cds_client_staging] table.
• Skips the upload if Content Data Service (CDS) hasn’t pulled all data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1977


<!-- page 1978 -->
Scheduled jobs for Firmware normalization (continued)
Scheduled job

Description

• Uses the Firmware configuration [sn_itam_firmware_configuration]
table to identify the firmware tables from which the content should be
pushed.
• Skips the upload if normalization hasn't run after the latest pull.
Firmware Content
File Manager
Firmware – Daily
Job

Triggers during on-premise content import and export actions.

• Sets the time when the data is pulled by the Content Data Service
(CDS).
• Sets current life-cycle phase of model life cycles.

Firmware – Apply
latest content
changes

Processes changes in the content tables after content pull.

Firmware Generate
Lifecycles

Updates firmware model records with the recently updated content lifecycle details. This is a weekly job.

Firmware
Normalization

Normalizes firmware models using the newly downloaded content.

Tables installed with firmware model normalization
Table

Description

Firmware model normalization
[sn_itam_firmware_model_norm]

Stores the normalization rule and hash used to
perform normalization of firmware models.

Firmware product
[sn_itam_firmware_product]

Stores firmware product records.

Custom firmware product
[sn_itam_cust_firmware_product]

Stores custom firmware product records.

Firmware product version
[sn_itam_firmware_product_version]

Stores firmware product version records.

Custom firmware product version
Stores version records of custom firmware
[sn_itam_cust_firmware_product_version] products.
Firmware publisher
[sn_itam_firmware_publisher]

Stores firmware publisher records.

Custom firmware publisher
[sn_itam_cust_firmware_publisher]

Stores custom firmware publisher records.

Firmware lifecycle definition
[sn_itam_firmware_lifecycle_def]

Stores the life-cycle phase of firmware models.
Also stores the start and end date of each life-cycle
phase.

Firmware model lifecycle
[sn_itam_firmware_model_lifecycle]

Stores life-cycle definitions of firmware models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1978


<!-- page 1979 -->
Tables installed with firmware model normalization (continued)
Table

Description

Firmware normalization map
[sn_itam_firmware_norm_mapping]

Stores the hash values that are used to normalize
discovered firmware models.

Firmware CPE mapping
[sn_itam_firmware_cpe_mapping]

Stores details of mapping between firmware and
CPE.

Custom firmware CPE mapping
[sn_itam_cust_firmware_cpe_mapping]

Stores custom firmware and CPE mapping details.

Firmware content audit
[sn_itam_firmware_content_audit]

Stores content values that changed.

Manage firmware library
[sn_itam_firmware_manage_library]

Stores import and export content data.

Firmware configuration
[sn_itam_firmware_configuration]

Stores opt-in and opt-out data.

Asset put away task fields
Fields on the Asset put away task form help you create a put away task for the in stock assets.
Create New Asset put away task form
Field

Description

Number

This field is automatically set to the Asset put away task
number.

State

Displays the current state of the Asset put away task.
When a new task is created, this field is automatically
set to Open.

Asset

Asset for which the put away task is created. All the in
stock assets are listed.

Task name

This field is automatically set to Put away.

Stockroom

This field is automatically populated when the asset is
selected.

Assignment group

Assignment group to which you want to assign the
Asset put away task.

Drop off location

Aisle and space in the stockroom where you want to put
away the hardware asset. This value is required to close
the Asset put away task.

Assigned to

Person from the assignment group who is primarily
responsible for the Asset put away task.

Due date

Date by which the Asset put away task should be
closed.

Notes

The Short description and Description field values are
automatically populated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1979


<!-- page 1980 -->
Enterprise Asset Management for Data Center and Network Asset
Management (DCNAM)
Enterprise Asset Management for Data Center and Network Asset Management (DCNAM) is a
licensable application that enables you to manage the life cycles of your mission-critical facilitybased enterprise assets and linear assets for telecommunications networks.
The Enterprise Asset Management for DCNAM (com.sn_eam_dcnam) application is a specialized
offering within the suite of Enterprise Asset Management solutions. The application provides the
functionalities, features, and workflows of Enterprise Asset Management but for mission-critical
facility-based enterprise assets and linear assets only.
When you install the application on a ServiceNow instance, the Enterprise Asset Management
application is also installed automatically. For more information on installing the application, see
Install Enterprise Asset Management for Data Center and Network Asset Management (DCNAM).

Install Enterprise Asset Management for Data Center and Network Asset
Management (DCNAM)
You can install the Enterprise Asset Management for DCNAM application (com.sn_eam_dcnam)
®
if you have the admin role. The application installs related ServiceNow Store applications and
plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Enterprise Asset Management for DCNAM
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Enterprise Asset Management for DCNAM:
• Plugins
• Store applications
• Roles
For more information, see Components installed with Enterprise Asset Management for Data
Center and Network Asset Management (DCNAM).

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Enterprise Asset Management for DCNAM application (com.sn_eam_dcnam) using
the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1980


<!-- page 1981 -->
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

Critical Environment Asset Workspace
The Critical Environment Asset Workspace is the intuitive and streamlined user interface of
the Enterprise Asset Management for Data Center and Network Asset Management (DCNAM)
application.

Critical Environment Asset Workspace landscape
The Critical Environment Asset Workspace is a unified medium with multiple views. These views
give you comprehensive visibility into your mission-critical facility-based enterprise assets and
linear assets so that you can manage them effectively throughout their life cycles.

Critical Environment Asset Workspace views
The Critical Environment Asset Workspace consists of the following

views.
Critical Environment Asset Workspace views
View

Description

Critical
View important actions and quick links
Environment for active tasks.
asset
overview
Asset
analytics

Track the Total Cost of Ownership (TCO)
and overall performance of your facilitybased enterprise assets and linear
assets.

Available tabs or lists

None

• Overview
• Asset TCO
• Asset performance
• Data Visualizations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1981


<!-- page 1982 -->
Critical Environment Asset Workspace views (continued)
View

Description

Inventory

View and manage the inventory and
stockrooms for your facility-based
enterprise assets and linear assets.

Available tabs or lists

• Overview
• All stockrooms
• Stock rules
• Transfer orders
• Asset audits
• Loaner asset orders
• RMA orders
• RMA order lines
• Repair orders
• Recall orders
• Reclamation requests
• Resale orders
• Disposal orders

Critical
View, create, and manage facility-based
Environment enterprise assets and linear assets.
asset estate

• Overview
• Asset indoor map

Note: This tab appears only
under the following conditions:
◦ You've installed the Indoor
Mapping for Assets
application on your
ServiceNow instance.
◦ You've configured the option
to display the tab.
For more information, see
Track assets using indoor
maps in the Enterprise Asset
Workspace.
• Asset groups
• Linear assets
• All assets
• All enterprise
• Facility
• Consumable
Critical
View, create, and manage facility-based
Environment enterprise models.
model
management

• Overview
• All models

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1982


<!-- page 1983 -->
Critical Environment Asset Workspace views (continued)
View

Description

Available tabs or lists

• All enterprise
• Facility
Procurement View and manage all procurement
details and activities, including
procurement requests and sourcing
tasks.

• Overview
• Requests
• Requested items
• Purchase orders
• Receiving slips
• Advance shipment
• Catalog tasks

Contract
View, create, and manage contracts for
and lease
your facility-based enterprise assets
management and linear assets.

• Overview
• All contracts
• Lease contracts
• Leased assets
• Lease-end assets
• Renewals
• Renewal lines
• My contracts
• My contract tasks
• My contract approvals
• Terms and conditions

Asset
operations

Track and manage shipments,
stockroom receiving, onboarding, move
orders, and calculated model life-cycle
templates.
If you have installed the Enterprise
Asset Management for Providers
application on your ServiceNow
instance, you can also track and
manage provider-based RMA response
orders and inbound asset orders for
Device as a Service (DaaS) assets.

• Provider

Note: This tab appears
only if you've installed the
Enterprise Asset Management
for Providers application on
your ServiceNow instance.
For more information on this
application, see Enterprise
Asset Management for
Providers.
• Shipment
• Stockroom receiving
• Onboarding

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1983


<!-- page 1984 -->
Critical Environment Asset Workspace views (continued)
View

Description

Available tabs or lists

• Moves
• Calculated model lifecycle
Work
Create and manage maintenance plans,
management work orders, and work order tasks.

• Overview
• Calibrations and conditions
• My Work
• Maintenance plans
• Work orders
• Work order tasks
• Asset tasks
• Work order templates
• Checklist templates
• My stockroom assets
• My asset pickup tasks

Admin
center

Perform configuration and
administrative tasks, including bulk
imports and model category creation.

• Model and asset tabs
• Model categories
• Model classifications
• Failure and resolution
• Site configuration
• Linear asset types
• Stockroom types
• Bulk import
• Roles-to-class access
• Workflow assignments
• Calibration configuration
• Asset condition configuration
• TCO configuration
• KPI configuration
• Risk configuration
• Other configurations
• Shipping
• Asset knowledge base
• Normalization opt-in

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1984


<!-- page 1985 -->
Critical Environment Asset Workspace views (continued)
View

Description

Available tabs or lists

• Product catalog
• Reference lists

Enterprise Asset Management for Data Center and Network Asset
Management (DCNAM) licensing
The Enterprise Asset Management for Data Center and Network Asset Management (DCNAM)
application supports a unit-based subscription licensing model in which you must pay a
recurring fee for assets to use the application. You can determine the licensing requirements and
costs for these assets based on their resource categories and corresponding subscription unit
ratios.
Resource categories group specific types of assets together and enable them to use the features
and workflows of an application. Each resource category is associated with a corresponding
subscription unit ratio, which you can use to group the given assets against a standardized cost.
You can use this information to determine the total licensing requirements and costs for assets
within each resource category. For example, a ratio of 25:1 indicates that one subscription is
required for every 25 assets within a given resource category. If one subscription costs $100 and
you have 50 assets within that resource category, you must purchase two subscriptions for a
total of $200.
The Enterprise Asset Management for DCNAM application supports the following resource
categories.

Note: These resource categories are automatically enabled when you activate the
Enterprise Asset Management for DCNAM application on your ServiceNow instance.
Enterprise Asset Management for DCNAM resource categories
Resource
category

Subscription
unit ratio

Critical
environment
asset

10:1

Supported asset model categories

This resource category supports assets that are associated
with the following model categories:
• Automatic Transfer Switch
• AV Displays
• AV Equipment
• Cameras
• Circuit Breaker
• Electrical
• Facility General
• Fuel Tank
• Fuse Alarm Panel
• HVAC
• Inverter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1985


<!-- page 1986 -->
Enterprise Asset Management for DCNAM resource categories (continued)
Resource
category

Subscription
unit ratio

Supported asset model categories

• Maintenance Bypass Panel
• Plumbing
• Power Generator
• Power Panel
• Rectifier
• Remote Power Panel
• Security
• Service Industry Equipment
• Structure
• Switchgear
• Transformer
• UPS
• Facilities
Linear asset

2:1

N/A

Linear asset
segment

4:1

N/A

Note: These resource categories support serialized assets only. You are not charged for
any consumable assets.
You can view subscription consumption information for the Enterprise Asset
Management for DCNAM application by using the ITAM Licensing Resource Counts
[itam_licensing_resource_counts] table. For more details, see View your subscription
consumption for the Enterprise Asset Management for Data Center and Network Asset
Management (DCNAM) application.

View your subscription consumption for the Enterprise Asset Management for
Data Center and Network Asset Management (DCNAM) application
Use the ITAM Licensing Resource Counts [itam_licensing_resource_counts] table to gain insight
into your subscription consumption for the Enterprise Asset Management for Data Center and
Network Asset Management (DCNAM) application.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

The EAM Populate Licensing Data scheduled job runs every Sunday to generate subscription
consumption information for the application. Any changes to your subscription consumption are
reflected only after the weekly scheduled job runs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1986


<!-- page 1987 -->
Procedure
1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter itam_licensing_resource_counts_list.do.
The ITAM Licensing Resource Counts [itam_licensing_resource_counts] table opens.
3. In the table, locate all entries for the Enterprise Asset Management for DCNAM application.

If the table includes multiple applications, you can locate all entries for the Enterprise Asset
Management for DCNAM application by using any of the following options:
◦ If you want to sort the table by application, use the following steps:
a. Select the Column options icon

next to the Application column name.

Alternatively, right-click the Application column name.
b. Select an option to sort the applications in either ascending or descending alphabetical
order.
▪ To sort the applications in ascending alphabetical order, select Sort (a to z).
▪ To sort the applications in descending alphabetical order, select Sort (z to a).
You can then locate all entries for the Enterprise Asset Management for DCNAM application.
◦ If you want to group the table by application, use the following steps:
a. Select the Column options icon

next to the Application column name.

Alternatively, right-click the Application column name.
b. Select Group By Application.
You can then expand the Application: Enterprise Asset Management for DCNAM group to
view all entries for the application.
◦ If you want the table to display only the Enterprise Asset Management for DCNAM
application, use the following steps:
a. On the table header, set the search filter to Application.
b. In the corresponding search box, enter Enterprise Asset Management for
DCNAM.
c. Press the Enter key.
Alternatively, you can right-click the Enterprise Asset Management for DCNAM application
name in the table and then select Show Matching.
4. View the following subscription consumption information for the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1987


