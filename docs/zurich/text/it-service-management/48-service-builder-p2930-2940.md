# Zurich IT Service Management — Service Builder / Roles installed with Service Builder / Service Builder approval flow +2 more

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2930–2940 of 3857

Sections: Service Builder (p2930); Install (p2932); Roles installed with Service Builder (p2932); Service Builder approval flow (p2933); Create a service (p2935); Create a service offering (p2937)

---

<!-- page 2930 -->
Roles installed
Role title [name]

Description

Contains roles

Business
Stakeholder

Users with this role can view and approve
records within all products of ITSM.

• pa_viewer.business_stakeholder

[business_stakeholder]

• approver_user.business_stakeholder

Note: The business_stakeholder

• cmdb_read.business_stakeholder

role contains the following ITSM
roles: sn_request_comments_write,
sn_incident_comments_write roles.

Service Builder
®

Create and edit services and service offerings using the ServiceNow Service Builder
application. Service Builder is an interactive, guided experience as you create and edit services
and service offering details. Even though Service Builder is a feature of Service Portfolio
Management, its plugin is part of the Digital Portfolio Management list of products in the
ServiceNow Store.

Tip: Refresh the browser to replay the demo video.
Service Builder overview
Create and maintain definitions of your business and technology management services and
offerings through a guided experience in Service Builder. You can edit service definitions
anytime before you publish as well as update already-published services using version control.
After your services and offerings are published, you can view and edit them in the Services tab
of Service Builder or in its parent application Service Portfolio Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2930


<!-- page 2931 -->
Walk-through experience with contextual guidance
Service Builder provides contextual guidance for each step tab as you create your services and
service offerings. From the Service Builder Dashboard tab, create a service by selecting one of
the two options:
• Create a business service
• Create a technology management service
After you select an option, Service Builder provides an organizer for you to see the steps to
create a

service.
Selecting Continue takes you through each step, starting with the Details tab as described in the
following Service Builder tabs table.
Service Builder tabs
Tab

Definition

Details

General information about the service such as name, type, and classification.

Team

Service team information including the owner, delegate, and business contacts.

Service
Measurement criteria for the service performance.
Performance
Manage
Offerings

General information about the service offering. This tab has its own set of tabs to
enter or edit the offering's details, team, operations, financials, and performance
criteria.

Review and
Submit

Comprehensive view of the services and offerings you created. You can make
changes, if necessary. After review, submit for publishing.

You can edit your services and offerings at any time. You can also duplicate them (create a copy)
to edit services, as needed so that you can create other services and offerings quickly. The
contextual guidance in the experience walks you through how to do these tasks.
After you edit a service or an offering, the published version stays active until the draft that you’re
working on becomes the new published version. For more information, see Service Builder
approval flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2931


<!-- page 2932 -->
Service Builder home page tabs
Home page
tab

Description

Dashboard The default landing page where you can create a business service or a technology
management service. You can also view services that you interacted with in the
last few days from the dashboard view.
Services

List of all services along with their state, classification, phase, status, and owner. If
you have editing access to the services and service offerings, you can edit them
from this tab.

Related topics
Service Builder approval flow
Create a service in Service Builder
Create a service offering in Service Builder

Install Service Builder
You can install the Service Builder application (sn_service_builder) using the admin role. The
application installs related plugins that aren’t already installed. It also installs the Service Builder
components plugin to enable UI components for the product.

Before you begin

Confirm that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Search for Service Builder.
3. Select Install and follow the onscreen instructions.
If the application doesn't display in your search, then request it from the ServiceNow Store.
◦ Visit the ServiceNow Store

website.

◦ Search for Service Builder.
◦ Follow the online screen instructions to install the application.
▪ If the Compatibility release differs from what you want, then select Other App Versions.
▪ Open the version that you want, and then select View Details.
▪ Select Install and follow the onscreen instructions.

Roles installed with Service Builder
®

Roles are added to Service Builder with the activation of ServiceNow Service Portfolio
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2932


<!-- page 2933 -->
Roles

Note: If you're able to edit a service, you can also edit child offerings, even if you don't
directly own the offering. As long as you can edit a service, you can edit any of its child
offerings.
Service Builder roles
Role

Description

Service admin

The service admin role can create services and edit any
services, even services that they didn't create.

Service author

The service author role can create services and edit the
services that they create.

Service editor

The service editor role can edit services that they own. They
can't create services.

Service Builder is a feature of Service Portfolio Management. Its plugin (sn_service_builder) is
activated from the base system and activates related plugins that aren’t already active.

Note: Even though Service Builder is a feature of Service Portfolio Management, its plugin
is part of the Digital Portfolio Management list of products in the ServiceNow Store.
Related topics
Installed with Service Portfolio Management

Service Builder approval flow
As you create and edit services and service offerings in Service Builder, various states get
assigned and change on the services' way to being published (approved). Administrators enable
the standard approval flow and can even customize it using the subflow option in Workflow
Studio.

Standard approval flow
By default, the approval flow in Service Builder is set to approve services automatically.
When editing a service or offering in Service Builder, the standard approval flow is as follows:
• As you edit a service or offering, it's in a Draft state.
• After you submit your service or offering, it moves into the Awaiting approval state.
• After your service or offering is approved, it moves into the Published state.
You can edit (checkout) a service or a single offering, one at a time. You can also edit a service
without checking out its child offerings — The offerings remain in the Published state until they’re
separately checked out.
When you check out an offering to edit it, the offering and its parent service both get checked
out. The rest of the child offerings of that parent service remain in the Published state. After
you finish editing the offering, submit it to the parent service so the offering can be republished
(offerings are published via the parent service).

Service states
See the following table for each state in the standard service and service offering approval flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2933


<!-- page 2934 -->
State

Published

Description

When a new service or offering is created and submitted in Service Builder, the
item goes through an approval process before it's assigned to the Published
state. The Published state indicates that the item is the version being used by the
application and available for others.
When you edit a published item, Service Builder automatically checks out the item
for you and creates a copy for you to work on. The copy is set to the Draft state.

Draft

A service item is in the Draft state in one of these scenarios:
• A new service or offering is being created in Service Builder and hasn’t yet been
submitted.
• An existing published service or offering has been checked out for editing in
Service Builder.
◦ When the item is being edited, Service Builder checks out the item and creates
a copy of it and its related records (offerings and subscribers).
◦ The copy is in a Draft state.

Note: In the Draft state (checked out), the item displays in both Service
Builder and in Service Portfolio Management in one or more of the
following ways:
▪ The word [DRAFT] is in front of the checked out item name.
▪ A red dot (

) is next to the item, signifying that it's read only.

▪ A clear triangle warning symbol (
) is next to the item name,
signifying it's the new copy (DRAFT) that's being worked on.
◦ The published item remains in the Published state and the Checked out field
is set to True.
◦ After editing and submitting the item, the edits to the draft are merged with the
related published item, and then the draft version is deleted.
Awaiting
approval

After submitting your service or service offering, your submission goes through
an approval process. Your organization's approval flow confirms that the service is
created according to standards such as naming conventions, descriptions, proper
use of commitments, and key performance indicators (KPIs). It also enables a
quality check to confirm services aren't duplicative.
The following lists the tasks for each persona in the approval flow:
• Service owners create or edit services and offerings in the Draft state and then
submit them for approval.
• Process owners and portfolio owners review and approve services and offerings
before they approve them for publishing.
• Process owners and admins can access the 'Service Builder publish' subflow
in Workflow Studio to set up and modify the approval flow based on the
organizations needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2934


<!-- page 2935 -->
Important:
• You can only edit an item when it's in a Draft state. You can't edit a published item that
has been checked out.
• An item in the Draft state is always inactive and doesn't show up in a search or when
you're browsing.
• You can't change the Active flag of an item in the Draft state.
• The approval process is available starting with the Utah release and after. Depending on
your organization, the approval process could take some time. Contact your administrator
if you have questions about the approval process time.

Enable and customize an approval flow
Administrators enable the approval flow that comes with the base system by updating the
'Service Builder publish' subflow in Workflow Studio.
Administrators can also create a customized approval flow that best meets the organization's
needs. See the following for more information about these tasks in Workflow Studio:
• Edit a flow
• Ask for Approval action
• Create a flow in Workflow Studio

Create a service in Service Builder
Create a service in Service Builder to model, map, and document your own business and
technology management services and offerings that relate to your data in Service Portfolio
Management.

Before you begin

Role required: service_admin, service_author, portfolio_admin, or portfolio_editor

About this task

The Service Builder framework offers you the option to create a business service or a technology
management service. Once you select the type of service that you want to create, the workflow
guides you through the process of adding information in a logical order:
1. Details
2. Team
3. Service Performance
4. Manage Offerings
5. Review & Submit

Tip: You can cancel out of creating a service anytime by selecting the Cancel button (next
to the Save button). Also, to return to the home page at any time while creating or editing a
service, select

.

Procedure
1. Navigate to All > Service Portfolio Management > Service Builder.
2. From the landing page, select the type of service that you want to create: Business or
Technical.
3. Review the Getting Started screen, and then select Continue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2935


<!-- page 2936 -->
4. On the form, fill in the fields.

Tip: When you check out a service that's already been created (to review or edit it), the
word [DRAFT] displays in front of the service name. Once checked back in as saved, the
service name doesn't have [DRAFT] in front of it.
Details form
Field

Description

Service
name

Unique name that reflects the nature of the service. The name should be
technology agnostic.

Consumer
type

Definition of who the service is to be provided for.

Portfolio

A hierarchical categorization of services that enables you to organize your
services and report on them at each level of the portfolio taxonomy.

Node

Taxonomy nodes enable you to organize and categorize services in your portfolio.
Services can only be added to the lowest level taxonomy node of the portfolio.

Lifecycle
status

The stage and status for the service that you're creating.
If you have the CSDM Activation plugin installed [com.snc.cmdb.csdm.activation],
then the CSDM compliant lifecycle fields display.
If you don't have the plugin installed, then the legacy Service Portfolio
Management phase and status fields display.
For information on the different types of fields, see Apply the CSDM guidelines to
Digital Portfolio Management.

Description A concise description of your service to verify that it makes sense to the end user
or consumer of the service.
Business
criticality

Business criticality for the service:
• 1 — most critical
• 2 — somewhat critical
• 3 — less critical
• 4 —not critical

Business
need

The business justification for the service. Some examples are how it reduces
costs and how it increases employee productivity.

5. Select the Team tab or Continue to Team.
6. On the form, fill in the fields.
Team from
Field

Description

Owned by

Person accountable for the service and can edit this service at any time. This
person is the service owner. Service owners must have the service_author role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2936


<!-- page 2937 -->
Field

Description

Managed by

Person responsible for the day-to-day management of this service.

Delegate

Person that can edit this service and who can act on behalf of the service owner.
Delegates must have the service_editor role.

Delivery
manager

Person that has responsibility for the delivery of this service.

Business
relationship
manager

Person that provides business requirements to the service owner. This person
helps to define the vision, strategy, and desired outcomes for the service and
works closely with the service owner.

Business
contact

Person that contributes business requirements to the service, or who has a
vested interest in the service performance.

Vendor

Vendor that may help deliver and support this service or may provide the
required tooling or technology to deliver this service.

Department

Department that is accountable for the management of this service.

Company

Company that is accountable for the management and delivery of this service
(could be a vendor).

Stakeholders Individuals that have a vested interest in this service.
7. Select the Additional Details tab or Continue to Additional Details.
8. In the field, provide relevant details about your service.
9. Select the Service Performance tab or Continue to Service Performance.
10. In the field, select the KPI group that you want to measure this service by.
11. Select the Manage Offerings tab or Continue to Manage Offerings.
The Manage Offerings tab displays those offerings that this service is provided for and how
it’s provided to them. Here you can edit an offering or create a new offering. It contains tabs for
the offering's details, team, operations, financials, and performance. A service must have at
least one offering to be published. Select a tooltip (
entry.

) to see a description for each tab's field

12. Select Continue to Review and Submit.
13. Scroll down the page to review all your entries and if needed, make edits to any of your entries.
14. Select Submit.

Create a service offering in Service Builder
Create a service offering to define and view the products or applications that make up your
service in Service Builder.

Before you begin

Role required: service_author or service_editor

About this task

A service offering represents how a service is provided and who it is for. A service must have
at least one offering to be published. The workflow guides you to create a service offering in a
logical order:
1. Details
2. Team
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2937


<!-- page 2938 -->
3. Operations
4. Financials
5. Offering performance

Tip: You can cancel out of creating a service anytime by selecting the Cancel button (next
to the Save button). Also, to return to the home page at any time while creating or editing a
service, select

.

To create a service and service offering, you must be assigned the service_author role. To edit
(not create) a service or service offering, you must be assigned the service_editor role.

Procedure
1. Navigate to All > Service Portfolio Management > Service Builder.
2. To add or edit a service offering, select the service and then select the Manage offerings tab.
3. To add a new service offering, select New.
4. On the form, fill in the fields.
Details form
Field

Description

Offering
name

Unique name for the offering that associates with the parent service.

Consumer
type

The consumer type determines if the service is provided internally to the
business or to the employees, or externally to customers, or to both. The options
are:
• Internal
• External
• Internal and External

Business
criticality
Lifecycle
status

Signifies the importance of this offering to business operations. The value of
this field could be used to trigger business logic. For example, your most critical
offerings may warrant special treatment for disaster recovery.
The stage and status for the service that you're creating.
If you have the CSDM Activation plugin installed
[com.snc.cmdb.csdm.activation], then the CSDM compliant lifecycle fields
display.
If you don't have the plugin installed, then the legacy Service Portfolio
Management phase and status fields display.
For information on the different types of fields, see Apply the CSDM guidelines
to Digital Portfolio Management.

Description

A concise description of the service offering to ensure that it makes sense to the
end user or consumer of the service.

Prerequisites Defines anything that is required to request or use this service offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2938


<!-- page 2939 -->
5. Select the Team tab or select Continue to Team.
6. On the form, fill in the fields.
Team form
Field

Description

Owned by

Person accountable for the service offering and can edit the service at any time.
This person is the service owner. Service owners must have the service_author
role.

Managed by

Person responsible for the day-to-day management of this service.

Delegate

Person that can edit the service offering and who can act on behalf of the
service owner. Delegates must be assigned the service_editor role.

Delivery
manager

Person responsible for the daily management and delivery of the service
offering.

Support
group

Group that provides expert support to the service offering. This group is usually
a level 2 support team.

Change
group

Team responsible for providing change management for the service offering.

Vendor

Vendor that may help deliver and support the service offering. This field helps
show and track accountability for service offering delivery.

Department

Department that is accountable for the management of this service.

Company

Company that is accountable for the management and delivery of this service
(could be a vendor).

Stakeholders Individuals that have a vested interest in the service offering.
7. Select the Operations tab or select Continue to Operations.
8. On the form, fill in the fields.
Operations from
Field

Description

Selected
groups

Subscriber groups that have an interest in the service offering.

Selected
departments

Departments that have an interest in the service offering.

Selected
locations

Users by location.

Selected
users

Individuals impacted by the service offering.

Selected
companies

Individuals impacted by the service offering that are defined by the core
company table. These individuals represent all users related to a given
company.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2939


<!-- page 2940 -->
Field

Description

Note: You may need to scroll down to see the remaining fields on this
form.
Selected
Select commitments, for example, service level agreements and availability
commitments commitments. Commitments may be defined in a contract for the service
offering or based on standards defined by your company.
Service level Service level requirements for the service offering.
requirements
Active
contract

Active contract to maintain awareness of the service commitments.

Additional
contracts

Supporting, secondary, or past contracts related to the service offering.

Selected
Catalog item to track the request activity for all catalog items associated with
catalog items this offering. A single offering can have multiple catalog items.
Offerings I
depend on

Other service offerings that your service offering depends on. For example,
if another offering experiences an outage, your offering availability may be
impacted or degraded as a result.

Service
instance I
depend on

Applies to business services. Service instances that the service offering
depends on.

9. Select the Financials tab or select Continue to Financials.
10. On the form, fill in the fields.
A Service Offering Cost unit is a unit of measurement of the service offering. For example, let's
say your service is Microsoft Suite. The cost unit would be the number of users. It could also
be the API calls. A cost model that's Per unit refers to the price per unit. In this case, it would
be the price per Microsoft Suite user or API call. The Estimated Spend for the Per unit cost
model is determined by the price per unit and units per period. A cost model that's Fixed refers
to a predetermined and agreed-upon total cost. For example, you set a specific price for your
Microsoft Suite service and stick to it. The cost unit is still the same (users or API calls), but the
Estimated Spend is determined by the agreed-upon price.
Financials form
Field

Description

Price
model

How the service offering is to be priced. Your selection determines the next field to
display.

Price unit

If the price model is set to Per Unit, then enter the price unit in this field. For
example, license or subscription.

Price

If the price model is set to Fixed, then enter the price in this field. Be sure to enter
the currency symbol as well (for example, $ for United States dollar).

Unit
If the price model is set to Per Unit, then use this field to describe what is included
description in the unit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2940


