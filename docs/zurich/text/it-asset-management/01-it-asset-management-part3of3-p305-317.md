# Zurich IT Asset Management — IT Asset Management / Software Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 305–317 of 2359 | Part 3 of 3

Sections: IT Asset Management (p5); Software Asset Management (p10); Explore (p11); Configure (p194); Using Software Asset Workspace (p200); Using Software Asset Management classic (p275)

---

<!-- page 305 -->
a. Select Edit in the Software Installation related list.
b. In the Edit Members page, move the software installations from the Collection box to the
Software Installation List box.
Only the software installations that are assigned to the specified user appear in the
Collection box.
c. Select Save.
The software installation you added appears in the Software Installations related list. The
state of the removal candidate moves from Attention Required to Ready and a name is
generated in the Name field. Continue to select Edit to add more software installations.
If you decide to remove all software installations, then the state reverts back to Attention
Required and the name no longer appears in the Name field. For the name to be generated
and for the removal candidate to be in Ready state, at least one software installation must be
selected in the removal candidate form.
5. Select Reclaim.
Once your software installation is reclaimed and removed from your system, the Software
Installation column becomes empty. You can refer to the following fields on the Software
installation related list to give you insights into the history of the reclaimed software
installation.
◦ Display name
◦ Product
◦ Publisher
◦ Software model
You may select any action button on the form to further configure the removal candidate.
Action buttons are dependent on the removal candidate's justification and state.
Action buttons
Action

Description

Update

Update the removal candidate.

Close Complete

Reclaim rights and close the removal
candidate.

Close Skipped

Close the removal candidate without
reclaiming rights.

Delete

Delete removal candidate.

Reconciliation and product results
Field descriptions for the reconciliation results, product results, and software product results.

Reconciliation results
Reconciliation results are listed in the navigation path Software Asset > Reconciliation >
Historical Results

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
Reconciliation Results form
Field

Description

Number

Unique identifying number that is generated during the reconciliation process.

Last
reconciled

Date of last reconciliation run.

Ran for

All publishers, or specific publishers.

Publishers

Only shown if publishers were specified on which to run reconciliation.

Group

Group specified on which to run reconciliation. Values include None, Country,
Department, Company, Region, and Cost Center.

Subgroup

Subgroup specified on which to run reconciliation. Values include None, Country,
Department, Company, Region, and Cost Center.

Status

Status of the reconciliation.
• Completed
• In Progress
• Failed

Progress

Percent complete and progress bar for the reconciliation run.

Progress
summary

Specific step within the reconciliation process.

Note: This list column is not shown by default. You can personalize your list
column settings to add it, if desired.

Software product results
You can access Software Models, Unlicensed Installs, and Removal candidates related lists from
a product result record.
A product result for a licensable product is generated after reconciliation even if there are no
software models defined for the product.

Note: A Software Model Results record is only created when a software model or
entitlement exists for the product.
For licensable products, a software model is automatically created for any unlicensed installs,
subscriptions, or options in the Product Results list that do not have an entitlement by default.
See properties to change the com.snc.samp.automaticsmrcreation property setting.
You can also set the com.snc.samp.automaticsmcreation property to have a software
model created automatically for not-licensable products, if desired.
To view more information about a specific software product result, select an entry from the
Product Results list. Refer to the following table for field descriptions.
Product Results form
Field

Description

Number

Unique product result number that is
generated during the reconciliation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
Product Results form (continued)
Field

Description

Publisher

Publisher of the software.

Product

Name of software product.

Group

Group to which the product result belongs.

Subgroup

Subgroup to which the product result belongs.

Latest

Indicates whether this product result is from
the most recent reconciliation run.

Reconciliation result

Unique reconciliation result number that is
generated during the reconciliation process.

Status

Status of the product.
• Compliant
• Not Compliant

True-up cost

Estimated cost of remediating non-compliance
based on the lowest number of rights needed.

Over-licensed amount

Estimated cost of rights not being used. The
sum of all Over Licensed amount values from
every software model result.

Potential savings

Estimated cost of savings if software
installations are reclaimed. The sum of all
potential savings from all removal candidates.

Licensed installs

Total number of installations that are licensed
for the product.

Unlicensed installs

Total number of installations that are
unlicensed for the product.

Software Model Results
Status

Status of the software model.

Software model

Name of the software model.

Unlicensed installs

Total number of installations that are
unlicensed for the associated software
product.

True-up cost

Estimated cost of remediating non-compliance
based on the lowest number of rights needed.

Over-licensed amount

Estimated cost of rights not being used.

Potential savings

Estimated cost saved if reclamation
candidates are reclaimed.

Licensed Installs
Display name

Name of the licensed software installation.

Publisher

Publisher of the software product.

Version

Version of the software product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
Product Results form (continued)
Field

Description

Discovery model

Software discovery model that represents the
installed software product.

Installed on

Device on which the product is installed.

Assigned to

User to which the product is assigned.

Unlicensed Installs
Display name

Name of the unlicensed software installation.

Publisher

Publisher of the software product.

Version

Version of the software product.

Installed on

Device on which the product is installed.

Assigned to

User to which the product is assigned.

Unlicensed Subscriptions

Note: This related list is only shown if the software product is a subscription.
Publisher

Publisher of the software product associated
with the unlicensed subscription.

Product

Name of the software product associated with
the unlicensed software subscription.

User

Name of the user associated with the
unlicensed software subscription.

User principal name

Email address of the associated user.

Software model

Software model associated with the
unlicensed software subscription.

Subscription profile

Integration profile associated with the
unlicensed software subscription.

Unlicensed Users

Note: This related list contains SAP system users and is only shown for SAP publisher.
Display name

Unique display name.

User

User in the SAP system.

SAP user id

SAP ID of the user with access to an SAP
system.

Email

SAP user email.

Names

First and last names of the SAP user.

User type

The type of user in the SAP system.
• Dialog
• System

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
Product Results form (continued)
Field

Description

License type

The named user type value assigned to the
user in the specified SAP system.

Named user type

Normalized named user type assigned to the
user in the specified SAP system.

SAP client

SAP client from which the user information
was pulled.

Removal Candidates
Number

Removal candidate number.

Name

Name of the removal candidate.

Justification

Justification for becoming a removal
candidate.
• Low Usage (default)
• Unallocated
• Unlicensed
• Restricted Software

Product

Name of the product.

Publisher

Name of the publisher.

State

State of the removal candidate.
• Attention Required
• Ready
• Awaiting User
• Awaiting Approval
• Approval
• Awaiting Revocation
• Closed Complete
• Closed Skipped

Potential savings

Savings to be gained from reclaiming unused
software installations.

Create averages for product life cycles in Software Asset Management classic
Create averages to calculate software End of Life (EOL) and End of Support (EOS) life cycles in
the Software Asset Management classic application.

Before you begin

Role required: model_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
About this task

You can create averages that can be used globally for all products and publishers or you
can create averages specific to a product or a publisher. These averages are used to create
calculated life cycles for products. For details on calculated life cycles, see Product life cycles.

Procedure
1. Navigate to Software asset > Software lifecycle averages.
2. Select New to open the Software lifecycle averages page.
3. On the form, fill in the fields.

Field

Description

Type

The type of option you select for creating life
cycles. Choose from the following options:
◦ Custom industry average: Refers to the
industry averages based on the GA dates.
◦ Product: Refers to a specific product. This
includes custom products too.
◦ Publisher: Refers to a specific publisher.
This includes custom publishers too.

Display name

A unique name for this life cycle average
record.

Product

his field appears only if you select the value
Product in the Type field

Publisher

This field is automatically populated once you
select a product. If you selected the value
Publisher in the Type field, then you select a
publisher.

Domain

Indicates the domain in which your instance
is located.

Average end of life period (months)

Specify the number of months for the EOL life
cycle.

Average end of support period (months)

Specify the number of months for the EOS life
cycle.

Active

Indicates that the life cycle average record
will be used for creating software life cycles.

4. Select Submit.
The record is created and appears in the Software lifecycle averages list view.

Add a software client access record in Software Asset Management classic
Add a client access record to track and manage the users or devices that are accessing a
particular version of your server software using a client access license (CAL).

Before you begin

Role required: sam_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
Note: You can also use the sam_user role to view and read client access records.
However, you cannot use this role to create client access records.

About this task

Software Asset Management uses client access records to reconcile server software based on
the following license metrics:

Metric group

Citrix

License metric

• Per User
• Per User/Device

Common

• User CAL
• Device CAL
• User/Device CAL

IBM

• Authorized User
• Authorized User Value Unit
• Employee User Value Unit
• External User Value Unit

Microsoft

• User CAL
• Device CAL
• Per Core (with CAL)

Oracle
CrowdStrike

Named User Plus
• Reserved Hourly Average Sensor
• Sensor Subscription

Note: These license metrics are
available with Yokohama Patch 1,
Software Asset Management - SaaS
License Management (sn_sam_saas_int)
15.0.8, and Software Asset Management
(sn_itam_samp) 2.1.0 version onwards.
If you are on any version for Yokohama
below Patch 1, refer KB1801232 .
License metrics are set on the software entitlement form and can be accessed from the Metric
Attributes related list on the software model form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
Important: You can enable the Software Asset Management application to automatically

create client access records for Oracle Database Server using the Auto-generate client
access for allocations option on the corresponding software model. To use this option,
you must request the Data Collection for Oracle Global Licensing and Advisory Services
application from the ServiceNow Store. See Software model fields for more details on the
Auto-generate client access for allocations option. See Request Data Collection for Oracle
Global Licensing and Advisory Services (GLAS) for more details on the Data Collection for
Oracle Global Licensing and Advisory Services application.

Procedure
1. Navigate to All > Software Asset > Administration > Client Access and then select New.
2. On the Client Access form, fill in the fields.
Client Access form
Field

Description

Name

Name of the client access record.

Software model

Software model of the server that you are
granting users or devices access to.

Type

Type of CAL that is associated with the client
access record. Select one of the following
options:
◦ User CAL: Licenses each user that
accesses the associated server, regardless
of the number of devices that each user is
using to access the server.
For example, if two users are accessing
Microsoft Windows Server, the
corresponding software entitlement must
include two User CALs.
If you select this option, you can assign the
associated User CALs to specific users.
See step 3 for more details.
◦ Device CAL: Licenses each device that
accesses the specified server, regardless
of the number of users that are using each
device to access the server.
For example, if two devices are
accessing Microsoft Windows Server, the
corresponding software entitlement must
include two Device CALs.
If you select this option, you can assign
the associated Device CALs to specific
devices. See step 3 for more details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
Field

Description

◦ User/Device CAL: Licenses each user
or device that accesses the associated
server.

Note: If you are using a Citrix
software model, the User/Device CAL
type is based on the user/device
licenses that are assigned to your
users or shared devices.
For example, if two users and two devices
are accessing Microsoft Windows Server,
the corresponding software entitlement
must include two User CALs and two
Device CALs.
If you select this option, you can assign
the associated User and Device CALs to
specific users and devices. See step 3 for
more details.
◦ Authorized User: Licenses each user who
accesses an IBM software product.

Note: This CAL type is applicable to
IBM software only.
◦ Authorized User Value Unit: Licenses the
number of select users who access an IBM
software product.

Note: This CAL type is applicable to
IBM software only.
◦ Employee User Value Unit: Licenses
the total number of users within your
organization who access an IBM software
product.

Note: This CAL type is applicable to
IBM software only.
◦ External User Value Unit: Licenses
the total number of users outside your
organization who access an IBM software
product.

Note: This CAL type is applicable to
IBM software only.
WebLogic application

Oracle WebLogic Server application to which
your users or devices are granted access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
Field

Description

Note: This field appears only if you
select an Oracle WebLogic Server
software model.
Database instance

Note: This field appears only if you

Oracle database instance that accesses and
manages the data in your Oracle database.

select an Oracle Database Server
software model.
Source

Note: This field appears only if you
select an Oracle Database Server
software model.

Source of your Oracle data. This field is
automatically set to one of the following
options:
◦ ServiceNow: Indicates that the client
access record data was generated
automatically through the SAM - Sync Autogenerated Client Access with DB Server
Users scheduled job, which runs daily or
on-demand.
◦ Internal: Indicates that the client access
record data was added manually.

Count

Number of unique users or devices that are
granted access to the associated server.
On automatically generated client access
records for Oracle Database Server or
Oracle WebLogic Server, this field populates
automatically based on the number of users
or devices that are currently added to the
record. See step 3 for more information on
how to add users or devices to the client
access record.

Note: If you are using a Citrix software
model and User/Device CAL type, the
Count field is based on the number of
user/device licenses that are assigned
to your users or shared devices.
PaaS

Note: This field appears only if you
select an Oracle Database Server
software model.

Option to indicate whether your Oracle
database instance is managed by the
Amazon Relational Database Service (RDS)
on Amazon Web Services (AWS).

Cost Center

Cost center of the users or devices that are
granted access to the associated server.

Department

Business department of the users or devices
that are granted access to the associated
server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
Field

Description

Location

Geographic location of the users or devices
that are granted access to the associated
server.

Company

Company of the users or devices that are
granted access to the associated server.

3. To assign the associated CALs to specific users or devices, add those users or devices to your
client access record based on the CAL type that you selected in the Type field.
By assigning CALs to specific users or devices, you can prevent those users or devices from
being counted multiple times across different client access records during reconciliation.
◦ If you set the Type field to User CAL, User/Device CAL, Authorized User, Authorized User
Value Unit, Employee User Value Unit, or External User Value Unit, add the users that you
want to assign your user-based CALs to.

Note: If you are using a Citrix software model and User/Device CAL type, add the
users that you want to assign a user/device license to.
a. Select the Users tab.
b. In the User field of the Client Access User Breakdowns list, double-click Insert a new
row....

Note: If you are using an Oracle Database Server software model, double-click

Insert a new row... in the Database user field of the Client Access User Breakdowns
list instead.
c. When prompted, search for and select a user that you want to assign a user-based CAL to.
d. Select the Save icon (

).

The Device, Active, User Type, and Source fields populate automatically for the specified
user. However, you can modify the Device, Active, and User type fields as needed.
e. Repeat steps b-d for each user that you want to assign a user-based CAL to.
◦ If you set the Type field to Device CAL or User/Device CAL, add the devices that you want
to assign your device CALs to.

Note: If you are using a Citrix software model and User/Device CAL type, add the
devices that you want to assign a user/device license to.
a. Select the Devices tab.
b. In the Device field of the Client Access Device Breakdowns list, double-click Insert a new
row....
c. When prompted, search for and select a device that you want to assign a device CAL to.
d. Select the Save icon (

).

The Active and Source fields populate automatically for the specified device. However,
you can modify the Active field as needed.
e. Repeat steps b-d for each device that you want to assign a device CAL to.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
4. To track and license the configuration items (CIs) that the associated server is installed on, add
them to the client access record.

Important: This step is not applicable if your client access record is associated with

an Oracle WebLogic Server software model or you have enabled the License all installs
accessed by clients option on the associated software model. If this option is enabled,
CIs are licensed based on conditions that you specify on the software model, such as
software install conditions. See Software model fields for more details on this option.
For Windows Server, each server installation requires Per Core (with CAL) rights that are
licensed separately from the User and Device CAL rights in associated client access
records. Other products like Oracle Java do not require rights to be licensed separately for
server installations. For example, if you use CALs to license the users and devices that are
accessing Oracle Java, you can enable Software Asset Management to automatically mark
the corresponding Oracle Java installations as licensed. In this scenario, Software Asset
Management licenses the Oracle Java installations as part of CAL licensing.
To enable this capability, you must add all CIs that a given server is installed on to the
associated client access record. By specifying these CIs, you can enable Software Asset
Management to determine which server installations your users and devices are connected
to. After all users and devices on the client access record are licensed, all server installations
on the specified CIs are marked as licensed. No additional licenses are consumed for these
installations.
a. Select the Devices with Installations tab.
b. In the Device field of the Client Access Installed Devices list, double-click Insert a new
row....
c. When prompted, search for and select a CI that the associated server is installed on.
d. Select the Save icon ( ).
The Active field populates automatically for the specified CI. However, you can modify this
field as needed.
e. Repeat steps b-d for each CI that the associated server is installed on.
5. Select Update.

What to do next

After you create a client access record, reconciliation runs on the associated server software
as a scheduled job or on-demand. You can view your reconciliation results in the License
Workbench. Use these results to determine your license compliance position and to remediate
any non-compliance.
You can remediate non-compliance for your server software using the following remediation
options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
• Purchase Rights: Generates a purchase order when the number of rights needed is greater
than the number of rights owned across all client access records for the specified server
software.
• Create Allocations: Allocates rights to unlicensed users or devices that have been added to
the client access records for the specified server software.
• Remove Allocations: Removes rights from licensed users or devices when sufficient rights are
unavailable.

Add a custom software product in Software Asset Management classic
If a software product does not exist in the Software Library, you can add a custom product.
Custom products enable you to normalize and account for homegrown software, or software that
is not yet part of the Software Library.

Before you begin

Role required: sam_admin

About this task

The product and publisher combination is used during discovery model normalization. If the
custom product exists, a message is shown.

Procedure
Navigate to All > Software Asset > Administration > Custom Products and create a new record
(see table for field descriptions).
Custom Software Product form
Field

Description

Publisher

Publisher of the custom software product. If it
does not exist, a new one can be created on
the Publisher field Companies lookup list.

Product

Name of the custom software product.

Subscription software

Option that indicates that the software has a
subscription.

Product type

Product type of the custom software product.
• Child: A subcomponent of main software
(not licensable).
• Driver: A software product that controls a
device.
• Licensable: A software product that is
licensable.
• Not Licensable: A software product that is
not licensable.
• Patch: A software product designed to
update, fix, or improve an existing computer
program.
• Unknown: A software product that is
unknown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


