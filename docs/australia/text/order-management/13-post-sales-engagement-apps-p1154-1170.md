# Australia Sales Customer Relationship Management — Post-sales engagement apps / Partner Relationship Management

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1154–1170 of 1645

Sections: Post-sales engagement apps (p1154); Partner Relationship Management (p1154)

---

<!-- page 1154 -->
Field

Description

Short description

(Optional) A brief description summarizing the task.

Work notes

(Optional) Records activities by internal users.

6. Select Save.

What to do next

Monitor the business process task from the sales process dashboard. For more information, see
Monitoring and tracking sales activities.
Related topics
Configuring Lead-to-Cash Process Management
Lead-to-Cash Process Management

Using post-sales engagement applications
Learn how to use post-sales engagement applications.
Customer Life Cycle Management Workflows
Modify, suspend, resume, or disconnect the sold products and their complete hierarchy.

Using Partner Relationship Management
Install the Partner Relationship Management plugin
(com.snc.partner_relationship_management) to enable administrators and channel partners
to collaborate through the Partner portal and PRM workspace. As an Enterprise Partner
Relationship Manager, you can manage partner relationships, approvals, and sales activity. As
a channel partner, you can access the Partner portal to register deals, create quotes, and track
opportunities—all from a single, branded experience.

What you can do
Enterprise Partner Relationship Managers:
• Set up partner hierarchies, tiers, and territories
• Configure approval workflows for deal registrations and quotes
• Define product catalogs and discount governance by partner tier
• Monitor partner sales activity and deal pipeline
• Manage partner staff and access controls
• Track deal registrations through approval stages
Channel Partners:
• Register deals through guided workflows
• Create and submit quotes for enterprise approval
• Track quote status and deal registrations in real-time
• Manage staff members and team access
• View opportunities and orders
• Access knowledge articles and engage with the community
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
:

Partner portal
Partner portal is the partner-facing workspace where partners manage sales activity, quotes, and
deal registrations.

From the Partner Portal, you can use and access the following features.
Partner portal home page for logged-in users
Task

Description

Create

Allows channel partners to create deal
registrations, cases, or quotes.
To learn more about creating deal
registrations, see Register a deal on Partner
portal.
To learn more about creating quotes, see
Create a Quote via Self-Service for Channel
Partners.

Sales

Overview of deal registrations, opportunities,
and quotes.
View deal registrations in the Draft,
Submitted, and Approved states.
View Self-service quotes
View a list of all active opportunities and their
detailed analytics.

Services

Provides access to all cases and quick links to
open cases that require action.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
Partner portal home page for logged-in users (continued)
Task

Description

Catalog

List of all services that can be performed by a
channel partner.

Partner Center

List of all the channel partners.

Knowledge

Select Knowledge on the header to view the
kb_home page.
You can search the knowledge base or view
a list of top-rated or most viewed knowledge
base articles.

General Inquiry

Raise concerns or queries with the enterprise.
To learn more about general inquiry, see Raise
an inquiry on Partner Portal.

Browse catalog

List of all catalog forms.

Cases

Provides access to all cases and quick links to
open cases that require action.

My Lists

Lists of deal registrations, opportunities,
quotes, orders, and cases associated to the
channel partner.
Select Opportunity to view detailed
information about the line items and activity
associated with an oportunity.

Quick Links

Links to knowledge articles and other
information.

Tours

View a tour for additional guidance on how the
Partner Portal works.
Your administrator determines whether tours
appear on pages.

Profile menu

Select your profile picture to view your profile
or log out of the Partner portal.

Search

Search for support articles and other requests.
Enter a search word or term and select Search
to view the results.

Deal Registration
Channel partners register deals through a structured workflow in the Partner Portal. To register a
deal:
1. Select Create > Register a Deal.
2. Enter deal details: account name, amount, close date, and product category.
3. The deal is saved in Draft status.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
4. Submit for enterprise approval when ready.
5. Track approval progress in the Sales section.
Enterprise managers configure approval workflows by territory, partner tier, and deal amount.
Partners receive real-time notifications when their deal is approved or needs revision.

Quote Management
Channel partners create and submit quotes directly from the Partner Portal. To create a quote:
1. Select Create > Create Quote.
2. Select a customer and add products from the approved catalog.
3. Configure quantities and optionsApply pre-approved discounts (within limits).
4. Add attachments or internal notes.
5. Submit for approval.
To track quotes:
• View all quotes in the Sales section.
• Filter by status: Draft, Submitted, or Approved.
• Track approval progress in real-time.
• Download approved quotes as PDF.
• View full version history and activity.
Enterprise managers define approval rules by quote amount, partner tier, and product category.
Approved quotes can automatically convert to opportunities for downstream order processing.

CSM configurable workspace for PRM (For Administrators)
The PRM workspace is where enterprise administrators configure partner programs, approvals,
and governance.
Key configuration areas:
• Partner setup: Define partner hierarchies, tiers, programs, and territory assignments.
• Approval workflows: Configure multi-stage approval rules for deal registrations and quotes by
territory, tier, and amount.
• Product catalog management: Manage which products each partner tier can access. Set
discount limits and approval thresholds.
• User roles and permissions: Assign roles to Partner Managers, Admins, and Agents. Control
what each user sees and can approve.
• Reporting and analytics: Track partner deal pipeline, quote activity, and approval metrics.
Monitor channel revenue.
• Integration settings: Configure automatic opportunity conversion from approved deals. Map
custom fields for downstream workflows.
Related topics
Raise an inquiry on Partner Portal
Register a member on Partner portal

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


<!-- page 1158 -->
Create Channel Partner record
Create and track channel partner records on the partner workspace to manage and store all
information related to the channel partners.

Before you begin

Role required: sn_prm.enterprise_partner_admin

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Channel Partners from the Partner Relationship Management.
3. Select New.
4. On the form, fill in the fields.
To learn more about the fields in the channel partner details section, see Channel partner
table fields.
Business Profile section
Field

Description

Revenue per year

Revenue per year for the channel partner
entity.

Number of employees

Number of employees in the channel partner
entity.

Supported Industries

Industries that the channel partner supports.

5. In the Channel Partner Company Info section of the form, fill in the contact details including
the Website, Email, and Phone of the channel partner.
6. In the Company Address section of the form, fill in the address of the physical location of the
channel partner, such as Street, State, and more.
7. Select Save.
Related topics
Partner Relationship Management
Using Partner Relationship Management
View Channel Partner information on partner workspace
View consolidated channel partner information through the multiple tabs on workspace.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager or sn_prm.enterprise_partner_agent

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list view.
2. Select Channel Partners from the Partner Relationship Management module.
3. Open a channel partner record from the list.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
You can view all the information related to cases, child channel partners, sold products, or
install base items associated with the channel partner.
To learn more about the components on the channel partner record, see Channel Partner
components on workspace.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Register Partner Staff on workspace
Register a new partner member or transfer existing staff within a partner organization.

Before you begin

Role required: sn_prm.enterprise_partner_admin

About this task

The Enterprise Partner Relationship Manager [sn_prm.enterprise_partner_rel_manager] of the
channel partner can also register partner staff on the workspace.

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list view.
2. Select Channel Partners from the Partner Relationship Management module.
3. Open a channel partner record from the list and select Register Partner Staff.
4. On the form, fill in the fields.
To learn more about the fields on the Register member form, see Member registration form.
5. Upload a file or document in the Add attachments section.
This is an optional field.
6. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Create cases for channel partners
Create customer service cases for channel partners to manage customer queries and offer
resolution.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager or sn_prm.enterprise_partner_agent

About this task
Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Cases from the Partner Relationship Management module.
3. Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
4. On the form, fill in the fields.
To learn more about the fields on the case form, see Case form

.

5. Select Save.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Update deal registration record
Create a deal registration record or perform actions on an existing record on the CSM
Configurable Workspace.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

About this task

After a deal is created on the Partner portal and is in the Submitted state, an agent on the
CSM/FSM Configurable Workspace can see the same deal. The information in the fields is
automatically populated from the Partner portal.

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Deal Registration > Submitted to see a list of submitted deals.
To learn how to create a deal and submit it, see Register a deal on Partner portal. The details
in the deal registration form are auto-filled based on the selections made in the Partner
portal by the B2B deal registration initiator (sn_prm_dr.partner _b2b_deal_reg_initiator),
B2C deal registration initiator (sn_prm_dr.partner _b2c_deal_reg_initiator), deal
registration initiator (sn_prm_dr-partner_deal_reg_initiator), and deal registration manager
(sn_prm_dr.partner_deal_reg_manager).
3. Perform one of the following actions based to update the status of the deal.
◦ Select Assign to me to assign the deal to yourself. This option is available only to agent
personas.
This changes the state of the deal to Under Review. In this state, you can perform one of the
following actions on the deal.
▪ Reject the deal and fill in the Closure notes.
▪ Mark as Duplicate and fill in the Closure notes.
▪ Cancel Deal Registration to cancel the deal.
◦ Select Submit for approval to submit the deal.
The deal registration is moved to the Approvals related list. The state of the deal registration
changes to Pending Approval and an approval request is sent to the deal registration
relationship contributor (dn_prm_dr.enterprise_deal_reg_rel_contributor) and the deal
registration relationship manager (sn_prm_dr.enterprise_deal_reg_rel_manager) for the

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
channel partner associated with the deal registration. After the deal registration is approved,
the state changes to Approved.

4. After a deal is approved, you can perform one of the following actions on the approved deal.
◦ Select Cancel Deal Registration
Enter the closure notes on the deal registration. This changes the closure code to Rejected.
◦ Select Close if there’s inactivity.
◦ Select Convert to Opportunity to associate the deal to an opportunity.
The state of the deal changes to Closed and the closure code is updated to Converted.
The deal registration is successfully converted to an opportunity.
All line items from the deal registration form are transferred to opportunity line items with the
help of Primitives. To learn more about Primitives, see LeadtoCashCore - Scoped .
Related topics
Register a deal on Partner portal

Raise an inquiry on Partner Portal
Raise a query or concern with the enterprise on the Partner Portal.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager, sn_prm.external_partner_manager or
sn_prm.external_partner_ associate

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select My requests.
3. From the drop-down, select Submit a request.
4. Select General Inquiry.
5. On the form, fill in the fields.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
To learn more about the fields on the inquiry form and their descriptions, see General Inquiry
form.
6. Select Submit.
Related topics
Using Partner Relationship Management
Register a member on Partner portal

Register a member on Partner portal
Register a new partner member or transfer existing staff within a partner organization.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager, sn_prm.external_partner_manager,
sn_prm.enterprise_partner_admin

About this task

Assign each member of staff certain responsibilities and accesses to perform daily operations
and tasks.

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select My requests.
3. From the drop-down, select Submit a request.
4. Select Register Member.
5. On the form, fill in the fields.
To learn more about the fields on the member registration form and their descriptions, see
Member registration form.
6. Select Submit.
Related topics
Using Partner Relationship Management
Raise an inquiry on Partner Portal

Register a deal on Partner portal
Register a deal on the Partner portal to update its state and trigger the end-to-end life cycle of
the deal.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select Requests.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
3. From the drop-down, select Submit a request > Register a

deal.
4. On the Create New Deal Registration screen, enter the required information on the Deal
registration information form.
To learn more about the fields on this form, see Deal registration table fields.
5. On the Deal registration type screen, select the preferred deal registration type.
The deal registration types are listed based on the channel partner and partner programs
selected in the Partner Program deal type relationship (sn_prm_dr_pp_deal_type) table.
6. On the Customer information screen, select an existing account or create an account or
consumer.
To create an account, select Can't find account details? and fill in the fields. To learn more
about the fields, see Deal registration table fields.
7. On the Product offerings screen, select the list of product offerings that the customer is
interested in.
This is an optional step and can be skipped.
8. On the Additional information screen, provide a description of the deal registration.
You can also add attachments to support additional information.
9. Select Review to review all the details and select Submit.
As an agent you can update the status of the field on the CSM/FSM Configurable Workspace.
To learn more, see Update deal registration record.

Result

A deal registration is created with an associated account, a channel partner, and a partner
program. The state of the deal registration is Submitted. Multiple deal lines with an associated
product offering are also created. You can also view the list of all deal registrations, along with the
deals in Draft and Approved states on the Partner portal home page.

Note: Select Actions from the details page to edit or delete the deal registration. You can
only delete deal registrations that are in the Draft state.
Related topics
Partner Relationship Management
Partner Relationship Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
Create a Quote via Self-Service for Channel Partners
Use the Quote Self-Service plugin (com.sn_quote_self_service) to create and submit a configured
quote directly from the Partner portal.

Before you begin

Role required: sn_prm_qm.quote_partner_ui along with one of the following roles:
• sn_prm.external_partner_manager
• sn_prm.partner_sales_manager
• sn_prm_sales.partner_b2b_sales_rep
• sn_prm_sales.partner_b2c_sales_rep

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select Create, then select Create Quote from the drop-down, or select
Catalog > All Services > Create Quote.
3. On the quote form, review the following tabs and fill in the required fields:
◦ Quote details tab: Enter customer and quote-level information.

◦
◦ Additional details tab: Specify billing and shipping addresses.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
◦

◦
◦ Product offerings catalog tab: Browse and select products to include in the quote.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
◦
◦ Line items tab: Confirm selected products and quantities.

◦

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
◦ Review and submit tab: Review the complete quote details before submission.

◦
For field descriptions and additional information about the quote creation form, see Quote
creation via Self-Service fields for Channel Partners.
4. On the Review and Submit tab, verify the quote details, then select Review and Submit.
The system creates the quote with your associated account or consumer information,
channel partner details, and selected line items. A confirmation screen displays.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
5. Download the quote, or select Edit quote to reopen it for further editing.

6. After creating a quote, use the overflow menu (ʼ) to perform any of the following actions:
◦ Edit a quote
◦ Submit a quote for review
◦ Download a quote
◦ Create a revision of a quote
◦ Cancel a quote
◦ Delete a quote

Result

You can view the list of all quotes, along with quotes in Draft and Submitted states, on the
Partner portal home page.
The Partner portal displays quotes in the following states: Draft, In review, Completed, and
Accepted.
Related topics
Quote creation via Self-Service
Using Partner Relationship Management

View opportunity analytics on Partner portal
View detailed analytics related to the opportunities accessible to you on the Partner portal.

Before you begin

Role required: sn_prm_opptym.oppty.parnter_ui

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select Sales > Opportunities.
3. In the Opportunity analytics you can view an overview of all the opportunities by stage and
revenue.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
Opportunity analytics
Analytics

Description

Estimated total revenue

The total value of all active opportunities.

Opportunities by stage

Breakdown of opportunities across sales
stages and the number of deals at each
stage.

Opportunities past estimated closed date

The number of opportunities that are past the
estimated closed date.

Active opportunities

Number of active opportunities that are not
yet closed or lost.

Stalled opportunities

Opportunities with no significant activity
or progress for a defined period, indicating
potential risk.

Opportunities created from deal registrations Number of opportunities that are converted
from a deal registration.
5 highest-value active opportunities

The top 5 opportunities filtered by highest
amount value.

To learn more about the fields on the Opportunity list, see Add and view the details of an
opportunity.
4. View all the opportunities that the user has access to from the All opportunities tab.
Related topics
Partner Relationship Management
Partner Relationship Management

View quote analytics on Partner portal
View detailed analytics related to all the quotes associated to a channel partner on the Partner
portal.

Before you begin

Role required: sn_prm_qm.quote_partner_ui along with and one of the following roles:
• sn_prm.external_partner_manager
• sn_prm.partner_sales_manager
• sn_prm_sales.partner_b2b_sales_rep
• sn_prm_sales.partner_b2c_sales_rep

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select Sales > Quotes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
3. In the Quote Analytics you can view an overview of all the quotes by stage and

revenue.
Quote Analytics
Analytics

Description

Quotes marked as completed

Total volume of quotes that have reached
a completed state within the selected
timeframe.

Quotes by stage

Distribution of active quotes across their
current stages.
◦ Draft
◦ In review
◦ Completed
◦ Accepted

Quotes in review

Displays the total volume of quotes currently
in the In review stage, awaiting enterprise
partner action or approval.

Stalled quotes

Quotes with no significant activity or progress
for a defined period, indicating potential risk.

Quotes nearing expiry

Displays the total volume of quotes
approaching their expiration date.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


