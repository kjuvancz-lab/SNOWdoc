# Zurich IT Service Management — Work with portfolios

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1978–1991 of 3857

Sections: Work with portfolios (p1978)

---

<!-- page 1978 -->
Related topics
Enterprise portfolios
Navigate portfolio types in Digital Portfolio Management
Create enterprise portfolios in Digital Portfolio Management

Work with portfolios in Digital Portfolio Management
You can create and organize personal portfolios to see several solutions in one place.
Administrators create enterprise portfolios. The service-type enterprise portfolios are created
using Service Portfolio Management tables. Business application and service instance portfolios
are created using enterprise portfolio tables. You can also see list modules of services and
applications that aren’t in a portfolio by using list modules.

Personal portfolios
Personal portfolios contain data from services, offerings, business applications, and service
instances into one space for you to view and report on. You can see how each item is
progressing according to the assigned roadmap and evaluate its performance based on key
performance indicators (KPIs) that interest you.

Personal portfolios overview
With a DPM manager role [sn_dpm.dpm_manager], you can see the personal portfolios that you
created and those portfolios that are shared with you. When you create a personal portfolio,
you pull in solution data from service and business applications, services, and service offerings
into one space for you to view. You don't have to own any of the items that you pull in to create
a personal portfolio. You can view how each item is progressing according to the assigned
roadmap and evaluate its performance based on key performance indicators (KPIs) that interest
you. You can also view a relationship map, as well as summaries, and current issues.
You can share a personal portfolio that you created with individuals or with a group. To share with
a group, the group must have the DPM [dpm_manager] role. To assign the DPM manager role to
groups, see Roles for Digital Portfolio Management.
You may be interested in services that your solutions depend on, for example, an outage or a
delay in a service. Personal portfolios surface the information so that you don't have to check on
the service status in its respective ServiceNow application.

Filtering personal portfolios
When you open a personal portfolio, a list of solution cards display with items that are in the
portfolio. The displayed cards depend on what is in the personal portfolio. If there are too many
items to view, you can select All items to filter the cards to display.
The following list provides all the possible solution types that you can filter on by selecting All
items. If you don't have one or more of these solution types in your personal portfolio, then that
solution type won't show up in the filter list.
• All services
• All offerings
• Technology management services
• Technology management service offerings
• Business services

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1978


<!-- page 1979 -->
• Business services offerings
• Service instances

Editing personal portfolios
To edit a solution that you open from the personal portfolio, you must have edit access based
on the access control list (ACL) for each solution that makes up the portfolio. For example, if
you're assigned a service editor role and you own a specific service and offering, then you can
edit those specific records that you open from the personal portfolio. But if you don’t have those
access rights, then you can only view the services and offerings in the personal portfolio and see
KPIs.

Tip: With a DPM admin role [sn_dpm.dpm_admin], you can hide certain tabs and tab
sections of solutions in a personal portfolio. For more information, see Configure the Digital
Portfolio Management experience.

Configuring personal portfolio solution cards
You can determine the information on each personal portfolio solution card through
configuration. To configure the solution cards, you must have the DPM admin role
[sn_dpm.dpm_admin]. For more information, see Configure personal portfolio solution cards in
the DPM Admin Center.
Related topics
Create a personal portfolio in Digital Portfolio Management
View relationship maps in Digital Portfolio Management
Personal and enterprise portfolio reference
Create a personal portfolio in Digital Portfolio Management
Create a personal portfolio using the Digital Portfolio Management (DPM) application. DPM
enables you to create, edit, and share personalized, unstructured portfolios of the services and
applications that you own or don't own but care about.

Before you begin

Role required: sn_dpm.dpm_manager

About this task

DPM supports services, service offerings, business applications, and service instances so you
can populate your personal portfolios with any of these items. Each item type is tagged and
color-coded as you drill into your personal portfolio.
• View personal portfolios that you created and those portfolios that are shared with you.
• Assign editors and viewers for the personal portfolios that you created.
• Edit your personal portfolio anytime when you want to add or remove solutions (business
services, technology management services, offerings, business applications, and service
instances).
• See all items that need attention, view their details to learn more, and take action if you have
proper permissions according to the item's access control list (ACL).
As you navigate the DPM landscape, you may find services, offerings, business applications,
and service instances that interest you. You can add those solutions to your personal portfolio
immediately, without having to return to the personal portfolio menu. You can also share your
personal portfolio with individuals and with groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1979


<!-- page 1980 -->
Note: The information on each personal portfolio solution card can be altered by
configuration. To configure the solution cards, you must have the DPM admin role
[sn_dpm.dpm_admin]. For more information, see Configure personal portfolio solution
cards in the DPM Admin Center.

Procedure
1. Navigate to Workspaces > Digital Portfolio Management.
2. Select the personal portfolios icon (

).

3. Select Create personal portfolio.
4. On the form, fill in the fields.
New personal portfolio form
Field

Description

Name

The name for the personal portfolio.

Owned by

The owner name of the personal portfolio.

Description

A clear description that makes sense to
others that share this portfolio.

Add collaborators

◦ Editors are users or groups that you
select to edit the personal portfolio.
◦ Viewers are users or groups that you
select to view the personal portfolio.

Note: You can only edit each item within a personal portfolio if you have edit access
based on the ACL for each item that makes up the portfolio. For groups to edit or view
personal portfolios, the group must have the DPM manager [dpm_manager] role. See
Roles for Digital Portfolio Management.

5. Select Next.
6. Add business applications, services, service offerings, and service instances to your personal
portfolio.
◦ Select each tabbed item to find the solution that you want to add to your personal portfolio,
or Search to find items. You can search for a solution title or an owner name to find all items
owned by that name.
◦ Select the items that you want to add, and then select Add selected items to add them to
your personal portfolio.

Note: Review each tab. Your search term may show results in one or more of the three
tabs: Business applications, Services/Offerings, or Service instances.

7. Select Review portfolio (total).
The Portfolio details provide two cards. One with a summary that contains the personal
portfolio name, description, and owner name and one with the list of collaborators.
8. Review the items in your personal portfolio and then select Create.
To add more items, select Back.

Note: If you select Back, review each tab to confirm your selections.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1980


<!-- page 1981 -->
9. Optional: Edit or Share your personal portfolio.
When you edit a personal portfolio, only those solutions that aren't already in the personal
portfolio are in the selection list to add. Share gives you the option to share your personal
portfolio with individuals, with groups, or with a combination of both.
Related topics
Personal portfolios
Personal and enterprise portfolio reference

Enterprise portfolios
Admins create enterprise portfolios for business applications and service instances using
the enterprise portfolio tables. Enterprise portfolios are structured in a nesting tree format to
navigate service-related items and taxonomy nodes.
https://player.vimeo.com/video/1022205557?
h=0df9f9affe&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Enterprise Portfolios enable you to roll up key metrics through each level of the portfolio
taxonomy. You can see the overall performance at the node and portfolio levels. Breakdowns
of key metrics enable you to see which areas of the portfolio are contributing to good or poor
performance.
Similar to personal portfolios, you can see performance snapshot information in enterprise
portfolios. You don't have to own any solutions to view enterprise portfolios.
Admins create enterprise portfolios. For more information, see Create enterprise portfolios in
Digital Portfolio Management.
There are three enterprise service portfolio templates to help you get started: EDUCAUSE Higher
Education IT Service Portfolio, IT Service Portfolio, and Sample Organizational Structure. For
more information, see Create enterprise service portfolios using a template.

Types of enterprise portfolios
You can create, view, and search across three different types of enterprise portfolios in DPM:
• Service portfolios
• Business application portfolios
• Service instance portfolios
Each enterprise portfolio type is clearly marked when you search for an enterprise portfolio. For
information about for each type, see Navigate portfolio types in Digital Portfolio Management.

Note: Even though service portfolios are visible in DPM, they’re still created using Service
Portfolio Management tables. Use the enterprise portfolio tables to create business
application portfolios and service instance portfolios.

Life-cycle stages
You can filter an enterprise portfolio by life-cycle stage. Service portfolios and business
application portfolios include the following life-cycle stages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1981


<!-- page 1982 -->
• Pre-operational — The solution doesn’t yet have operational data.
• Operational — The solution has operational data.
• Retired — The solution is no longer operational and isn't tracking new data, so data isn’t up to
date.
The life-cycle stages for Service instance portfolios are Operational or Retired.

Needs attention details
When viewing an enterprise portfolio, you can see the Needs attention details broken out by tabs
at the bottom of the portfolio view. For example, in a business application portfolio, the Needs
attention tabs include critical incidents, problems, outages, alerts, and tech risks.
Admins can show or hide business applications in a portfolio based on its life-cycle stage. For
more information, see Configure the Digital Portfolio Management experience.
Related topics
Navigate enterprise portfolios in Digital Portfolio Management
Create enterprise portfolios in Digital Portfolio Management
DPM Portfolio Builder Overview
Enterprise portfolios are created directly in the DPM Portfolio Builder. Before May 2025, they
were created using Service Portfolio Management tables. Enterprise portfolios for business
applications and service instances were created from enterprise portfolio tables.
Navigate portfolio types in Digital Portfolio Management
Navigate three types of enterprise portfolios in the Digital Portfolio Management (DPM)
application — service, business applications, and service instance. The way to create a portfolio
depends on the type. As of May 2025, Enterprise portfolios are created directly in DPM. Business
application and Service instance portfolios are created using the enterprise portfolios tables in
the DPM module in UI16.
Enterprise portfolios are structured in a nesting content tree format so you can easily navigate
each type of enterprise portfolio. Access Enterprise portfolios using the Enterprise portfolio
icon ( ). For more information about accessing enterprise portfolios, see Navigate enterprise
portfolios in Digital Portfolio Management.
Each type of enterprise portfolio offers unique data pertinent to its type. See the DPM Academy
Learning Resources, especially the video series, for more information about the difference
between each portfolio, how they should be used, and who they are for.

Service portfolios
As of May 2025, you can create service enterprise portfolios directly in the DPM Workspace.
Service enterprise portfolios are structured in a nested content tree with the taxonomy node, and
then services that are in the service portfolio. You can create a portfolio from scratch or use one
of the provided templates. For more information on service enterprise portfolio templates, see
Navigate service enterprise portfolio templates in DPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1982


<!-- page 1983 -->
Portfolio structure for services
Section

Description

Taxonomy
node

• The first level in the content tree under the service enterprise portfolio.
• The following information is provided for the taxonomy node:
◦ Header with a short description, owned by name, and total subscribers.
◦ Performance snapshot metrics for availability, open incidents, incidents not
updated for 5 days, and new requests.
◦ Needs attention cards for critical incidents, outages, and changes.
• The View details link provides the following information about the taxonomy
node.
◦ Header with the service portfolio name, manager name, and total subscribers.
◦ Overview tab with performance snapshot metrics and the breakdown of
services in the category.

Note: DPM versions prior to 2.2.15 may have duplicate services showing
in the Service breakdown section. For information, see KB1123710

.

◦ Taxonomy node tab with all the taxonomy nodes related to the portfolio.
◦ Services tab that lists all services in the portfolio, with their parent,
classification (business or technical), phase, status, criticality, and owned by
name. You can also select Create business service or Create technology
management service to perform those tasks in Service Builder.
◦ Info tab with a description and general information about the taxonomy node.
◦ Needs attention panel that lists critical incidents, outages, and changes.
Service
and
service
offering

• The next two levels in the content tree under the taxonomy node. Services and
service offerings can be either technical or business.
• The header:
◦ Short description.
◦ Owned by name.
◦ Delivery manager name.
◦ Total subscribers.
◦ Phase (if using CSDM fields, then life-cycle Stage)
◦ Status (if using CSDM fields, then life-cycle Status)

Note: For information about CSDM life-cycle field names, see Apply the
CSDM guidelines to Digital Portfolio Management.
• The performance snapshot metrics for availability, open incidents, incidents not
updated for 5 days, and new requests.
• The Needs attention cards for critical incidents,outages, and changes.
• The More menu icon (

) enables you to:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1983


<!-- page 1984 -->
Portfolio structure for services (continued)
Section

Description

◦ Add the service or service offering to a personal portfolio. For more
information, see Create a personal portfolio in Digital Portfolio Management.
◦ Add the service to your DPM homepage. For more information, see Digital
Portfolio Management Workspace homepage.
◦ Edit the service or service offering in Service Builder. For more information, see
Create a service in Service Builder.
• The View details link launches the service or service offering details. For more
information, see the Service and service offerings section in Digital Portfolio
Management related applications and data sources.

Business application portfolios
The DPM Workspace displays enterprise portfolios in a nested content tree starting with the
enterprise taxonomy node at the top level (there could be more than one). After the top node,
it lists the business applications that are in the enterprise portfolio. Here’s an example of a
business application enterprise portfolio content tree.
Business application enterprise portfolio content tree example

Important: The image shows the Portfolio field as Enterprise business applications. To
select a different type of enterprise portfolio from the one you're in, delete the value in the
Portfolio field, and then select the field (again) to see the other portfolio types (service,
business, or service instance).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1984


<!-- page 1985 -->
Portfolio structure for business application
Section

Enterprise
taxonomy
node

Description

• The first level in the content tree under the business application enterprise
portfolio. Could contain a second or third level if it has child enterprise
taxonomy nodes.
• The header:
◦ Short description.
◦ Owned by name.
◦ Managed by name.
◦ Total subscribers
• The portfolio success metrics for availability, incidents with a breached service
level agreement (SLA), incidents caused by changes, and successful changes.
• Needs attention cards for critical incidents, outages, changes,alerts, risks, and
audits.
• The View details link provides the following information about the enterprise
taxonomy node.
◦ Header with the Owned by name and the Managed by name.
◦ Overview tab with portfolio success metrics and the breakdown of business
applications in the enterprise taxonomy node.
◦ Taxonomy nodes tab that lists all the related taxonomy nodes.
◦ Business applications tab with a list of the business applications that are in
the enterprise taxonomy node.
◦ Info tab with a description and general information about the enterprise
taxonomy node.
◦ Needs attention panel that lists critical incidents, outages, changes, alerts,
risks, and audits, for the enterprise taxonomy node.

Business
application

• The next level in the content tree under the enterprise taxonomy node.
• The header:
◦ Short description.
◦ Application owner name.
◦ Business owner name.
◦ Total subscribers.
◦ Status.
The Overall risk is empty.
• The portfolio success metrics for availability, incidents with a breached SLA,
incidents caused by changes, and successful changes.
• The Needs attention cards for critical incidents, changes, risks, and audits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1985


<!-- page 1986 -->
Portfolio structure for business application (continued)
Section

Description

• The More menu icon ( ) enables you to add the business application to a
personal portfolio. For more information, see Create a personal portfolio in
Digital Portfolio Management.
• The View details link launches the business application details. For more
information, see the Business applications section in Digital Portfolio
Management related applications and data sources.

Service instance portfolios
The information in service instance portfolios is similar to that of business application portfolios
with some differences that pertain to service instances.
For information about KPI groups in service instance portfolios, see View service instance
details.
Portfolio structure for service instance
Section

Description

Enterprise
taxonomy
node

• The first level in the content tree under the service instance enterprise portfolio.
Could contain a second or third level if it has child enterprise taxonomy nodes.
• The header:
◦ Short description.
◦ Owned by name.
◦ Managed by name.
◦ Total subscribers.
• The portfolio success metrics for availability, mean days to resolve (MTTR),
incidents caused by changes, and successful changes.
• The Needs attention cards for critical incidents, outages, changes, alerts, risks,
and audits.
• The View details link provides the following information about the enterprise
taxonomy node.
◦ Header with the Owned by name and the Managed by name.
◦ Overview tab with portfolio success metrics and the breakdown of service
instances in the enterprise taxonomy node.
◦ Service instances tab with a list of the service instances that are in the
enterprise taxonomy node.
◦ Info tab with a description and general information about the enterprise
taxonomy node.
◦ Needs attention panel that lists critical incidents, outages, changes, alerts,
risks, and audits for the enterprise taxonomy node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1986


<!-- page 1987 -->
Portfolio structure for service instance (continued)
Section

Description

Service
instance

• The next level in the content tree under the enterprise taxonomy node.
• The header:
◦ Short description.
◦ Owned by name.
◦ Managed by name.
◦ Operational status.
The Overall risk is empty.
• The portfolio success metrics for availability, incidents with a breached SLA,
incidents caused by changes, and successful changes.
• The Needs attention cards for critical incidents, changes, outages, risks, and
alerts.
• The More menu icon ( ) enables you to add the service instance to a personal
portfolio. For more information, see Create a personal portfolio in Digital Portfolio
Management.
• The View details link launches the service instance details. For information on
what this screen includes, see the Service instances section in Digital Portfolio
Management related applications and data sources.

Related topics
Enterprise portfolios
Navigate enterprise portfolios in Digital Portfolio Management
Navigate service enterprise portfolio templates in DPM
Navigate three service enterprise portfolio templates: EDUCAUSE Higher Education IT Service
Portfolio, IT Service Portfolio, and Sample Organizational Structure.
Navigate the three enterprise service portfolio templates and decide which one to use.
Templates are structured in a nesting content tree format with taxonomy nodes and services
with descriptions. This structure helps you easily navigate your portfolio. For more information on
creating a portfolio using one of these templates, see Create enterprise service portfolios using a
template.
Sample Organizational Structure Template
Description

What does it include?

This template
provides guidance
on how to use your
organizational
chart to organize
services IT
provides to the
business.

Enterprise taxonomy nodes
with child nodes, placeholder
names, and descriptions.
The descriptions provide
suggestions on how to build out
each branch of the portfolio.
Taxonomy nodes include:

Is it for me?

The template is an example of how large
organizations could be organized under
the Chief Information Officer (CIO). Use
this template as a springboard. Update
it to match your organizational structure
by adding services and additional
taxonomy nodes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1987


<!-- page 1988 -->
Sample Organizational Structure Template (continued)
Description

What does it include?

Is it for me?

• Chief Information Security
Officer (CISO)
• Development Director
• Enterprise Architect Director
• Governance and Compliance
Director
• Innovation Director
• IT Operations Director
• Project Management Office
(PMO) Director
• Vendor Management Director
IT Service Portfolio Template
Description

What does it include?

The IT Service
Enterprise taxonomy nodes:
Portfolio template
• Application Development & Deployment
provides a way
• Cybersecurity & Compliance
to manage both
the strategic and
• Data & Analytics Services
operational aspects of
• End User & IT Support
technology within an
organization. It helps
• Enterprise Operations & Support
align your IT services
• Infrastructure & Cloud Services
with your business
strategy.
• IT Governance & Strategy

Is it for me?

If you're looking to
improve the strategic
and operational
management of
technology within
your organization, this
template serves as a
valuable starting point
and can be tailored
to meet your specific
needs.

Child taxonomy nodes. For example, End
User & IT Support includes:
• Collaboration & Productivity Tools
• Device Management
• End-User Support & Service Desk
Services that relate to each of the taxonomy
nodes. For example, under IT Governance &
Strategy, IT Policies & Compliance:
• AI Governance & Ethical AI
• Auditing
• Breach Management & Remediation
• Business Continuity Planning &
Management
• Investigations
• Records Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1988


<!-- page 1989 -->
IT Service Portfolio Template (continued)
Description

What does it include?

Is it for me?

For example, AI Governance & Ethical
AI service tracks the development,
deployment, and management of AI systems.
It establishes policies and frameworks for
data privacy, security, and compliance with
regulations like GDPR. By implementing
ethical AI practices, organizations can
mitigate risks, improve transparency, and
ensure AI solutions align with societal and
business values.

EDUCAUSE Higher Education IT Service Portfolio Template
Description

The EDUCAUSE Higher Education IT
Service Catalog Portfolio template is
designed to organize and describe
IT services specifically for higher
education institutions. It aims
to provide clear and accessible
information about various tools,
resources, and programs that
address the unique challenges and
opportunities in higher education IT.

What does it include?

Enterprise taxonomy nodes:
• Administrative and Business
• Communication and
Collaboration
• Desktop and Mobile Computing
• Information Security
• Infrastructure
• IT Professional Services
• Research
• Teaching and Learning
You can further add taxonomy
nodes to best suit your institution.
Services that relate to each of the
taxonomy nodes:

Is it for me?

To determine if
this template is for
you, consider its
focus on higher
education IT
challenges. Does
your institution
face specific IT
challenges that are
common in higher
education?
If you’re looking to
drive innovation
and excellence
in higher
education through
technology, this
template could
be a valuable
resource for you.

• Alumni and Advancement
• Athletics
• Auxiliary Systems
• Business Capability and
Process Automation
• Data, Reporting, and Analytics
• Facilities Management
• Faculty Information Systems
• Financial Procurement Systems
• Human Resource Systems
• Library Systems
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1989


<!-- page 1990 -->
EDUCAUSE Higher Education IT Service Portfolio Template (continued)
Description

What does it include?

Is it for me?

• Medical and Health Systems
• Student Information Systems
For example, under Administrative
and Business, the services relate
to the administrative and business
functions of an institution.
Another example is the Library
Systems service. This includes
access to digital collections like
HathiTrust, inter-library loan (ILL),
and infrastructure services like
a digital media lab or micro-form
scanners. You can edit each
service to add an Owned by
name, Delivery manager, Vendor,
Estimated spend, and more.
For overview information on enterprise portfolios, see Enterprise portfolios. For more detailed
information on enterprise portfolios, see Navigate portfolio types in Digital Portfolio Management.
Create enterprise service portfolios using a template
Admins can create enterprise portfolios from scratch or by using a template. Enterprise portfolios
are structured in a nesting tree format to facilitate navigation of service-related items and
taxonomy nodes. Similar to personal portfolios, you can see key metrics to assess the portfolio
performance.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Workspaces > Digital Portfolio Management.
2. Select the enterprise portfolios icon (

).

3. Select Create enterprise portfolio.
4. Select the type of enterprise portfolio: service portfolio, business application portfolio, or
service instance portfolio.
Templates are only available for service portfolios.
5. In the dialog box, choose to build your portfolio from scratch or use a template.
Option

Build your own portfolio

Steps

a. Select Create portfolio.
b. In the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1990


<!-- page 1991 -->
Option

Steps

a. Select Choose template.
Use a template for creating a service portfo­ b. Select a way to use the template: Either ap­
ply everything from the template or exclude
lio
services.
c. Select Use template.
Create Enterprise Portfolio form
Field

Description

Name

Portfolio name in the Enterprise portfolios tab of the DPM Workspace.

Short description

Short description of the portfolio in the header area of the DPM
Workspace.

Description

Description of the portfolio in the service header in the DPM
Workspace.

Portfolio type

The type of enterprise portfolio.
◦ Business Application Portfolio
◦ Service Instance Portfolio

Portfolio owner

Name of the user responsible for the portfolio.

Portfolio manager

Name of the user who manages the portfolio.

Portfolio
Stakeholders

Individuals or groups that have an interest in the enterprise portfolio.

6. Select Save.
7. Add KPI groups.
For more information on KPI groups, see Create KPI groups and mappings in Digital Portfolio
Management.
8. Select Add taxonomy node.
9. In the dialog box, select an existing taxonomy node or create one.
You can add a parent, child, sibling, or duplicate node. For more information on enterprise
taxonomy nodes, see Table 2 in Navigate portfolio types in Digital Portfolio Management.
Create enterprise portfolios in Digital Portfolio Management
Admins create enterprise portfolios for business applications and service instances. Enterprise
portfolios are structured in a nesting tree format to navigate service-related items and taxonomy
nodes. Similar to personal portfolios, you can see metrics to assess the portfolio performance.

Before you begin
• Plugin required: enterprise portfolios
• Role required: sn_dpm.dpm_admin

About this task

Create enterprise portfolios to monitor business applications and service instances. Enterprise
Portfolios enable you to roll up key metrics through each level of the portfolio taxonomy. You can
see the overall performance at the node and portfolio levels. A breakdown of key metrics enables
you to see which areas of the portfolio are contributing to good or to poor performance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1991


