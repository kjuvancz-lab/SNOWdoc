# Zurich Sales and Order Management — Lead-to-cash foundation apps / Business Portal

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1124–1139 of 1408

Sections: Lead-to-cash foundation apps (p1124); Business Portal (p1129); Integrate (p1140)

---

<!-- page 1124 -->
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

Note: Select Actions from the details page to cancel the deal registration.
Related topics
Update deal registration record

Using lead-to-cash foundation applications
Learn how to use lead-to-cash foundation applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1124


<!-- page 1125 -->
Using product catalogs
The product catalog provides a visual display of the available product offerings that can be
added to a Sales and Order Management transaction, such as an opportunity, quote, or order.
Use the catalog interface to add simple products and complex products that can be further
customized.
Agents use the Catalog tab (related list) for a transaction in the CSM Configurable Workspace
to open the product catalog. Customers engaged in self-service transactions such as placing
orders, use the product catalog in the Business Portal.

Note: When you start a lead, the Catalog tab displays only simple products that can be
added and don't require further customization.
Starting with the Product Catalog Management Core v17.0.0 release, the product catalog
interface supports semantic search queries powered by AI Search, in addition to keyword
searches.

Product catalog interface with simple search
The product catalog interface enables agents and customers to find product offerings by
navigating product catalogs and categories. Or, they can use the search bar to match by product
name, code, or description.
Product catalog interface with simple search

The catalog view has the following features for selecting products:
• Catalog navigation tree: Catalog and a list of its categories used to organize product offerings.
Selecting a category filters the display and shows only the product tiles for that category.
• Search bar: Option for finding product offerings using simple searches by product name,
code, or description. The search feature displays the product tiles that match the product
name, code, or search string (description).
• Product tiles: Cards that depict each product, which has a brief description, optional image,
and an option to add or customize the product offer. The Add option displays when the
product is a simple (fixed) product offering. The Customize option displays for configurable
product offerings that have different options and attributes that can be selected. Selecting
Customize opens the product configurator for configuring the product offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1125


<!-- page 1126 -->
Product catalog interface with AI Search
AI Search in the product catalog interface enables agents and customers to find relevant product
offerings by using semantic search queries, in addition to keyword searches.
Entering a query term or phrase in the search bar finds all catalog items that contain sedan as a
characteristic, any parent products containing child products with this characteristic, and related
products that have semantic similarity. In AI Search, semantic similarity means that the context of
the query, such as the user, the catalog selected, and the terms entered, are evaluated to return
the most useful catalog items first.
AI Search provides other features to enhance the search process:
• Search query language options: Use Boolean operators, wildcards, and multi-term and quoted
phrases in queries to broaden or narrow search results.
• Auto-complete suggestions: When you start entering text in the search bar, AI Search displays
auto-complete suggestions to help you get directly to the results you need. Suggestions may
include recent search queries, recently viewed search results, or search queries or results that
match the terms you're typing into the search bar.
• Auto-corrections of misspelled or incomplete words: If your queries contain misspelled
words or are incomplete, AI Search automatically replaces those search query terms with
correct spellings, based on the search sources (product offerings and service specifications).
Typo corrections are shown above search results.
• Sort by filter: Organize how search results are returned, for example, by relevancy or product
description. Control the order, descending or ascending, in which the results are displayed.
Product catalog interface with AI Search

For more information on search queries and the search query language that you can use to find
catalog items, see Use AI Search in product catalogs.

Note: Check your entitlements to determine if you have access to this feature.
Use AI Search in product catalogs
As an agent or customer, use AI Search queries in the product catalog to find relevant
product offerings or service specifications. For example, you can search by product offering
characteristics or other attributes, when adding products in Sales and Order Management
transactions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1126


<!-- page 1127 -->
Before you begin

Role required: sales agent, order agent, customer

About this task

With AI Search, you can use semantic queries to find relevant product offerings or service
specifications for a transaction. Your queries can contain terms or phrases to find catalog items.
AI Search considers the context for your search, such as the user intent, to return appropriate
results. As you enter your query, AI Search provides various features to make your search more
efficient.
• Auto-complete suggestions: When you start entering text in the search bar, AI Search displays
auto-complete suggestions to help you get directly to the results you need. Suggestions may
include recent search queries, recently viewed search results, or search queries or results that
match the terms you're typing into the search bar. Select one of the suggestions from the list to
display the product offering.
• Auto-correction (typo handling): If your queries are incomplete or misspelled, AI Search
automatically replaces misspelled search query terms with spellings found in indexed content.
Typo corrections are displayed above search results.
• Search result order: You can use the Sort by filter to organize your results by Relevancy,
Display name, Code or Description.

Procedure
1. Access the product catalog through a Sales and Order Management transaction, such as a
quote created in the CSM Configurable Workspace or an order created in the Business Portal.
2. Select the Catalog tab to open the catalog interface, then choose the appropriate catalog.
3. In the sort filter, select how you want your search results to be listed:
◦ Relevancy: Lists the most relevant records first, based on rank and order. You cannot
change the order of the results (ascending or descending). This option is selected by
default.
◦ Display name: Lists results by the Display names for each product offering.
◦ Code: Lists products by a Code that was assigned to each offering, either system-created or
set by the product catalog admin when the product offering was created.
◦ Description: Lists results by the Description for each product offering.
You can use the ascending or descending filter to further order the results by Display name,
Code, or Description.
4. Enter a search term in the search bar, then press Return to generate the search results.
As you’re entering a query, auto-complete suggestions are displayed if your query matches
any indexed terms. You can select one of the suggestions to display the product offering.The
following table provides examples of terms, phrases, and operators that you can enter in your
queries.
Search query language
Search query

Description

Search by query terms

Specify terms and quoted phrases in the search
query to find products that contain the same terms or
phrases.
◦ Single-term search: Enter a specific term to
find all catalog items that contain the term. For
example, sedan finds any products that contain

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1127


<!-- page 1128 -->
Search query

Description

this characteristic, parent products containing
child products with this characteristic, and related
products that have semantic similarity to this
search term or results.
◦ Multi-term search: Enter multiple words in a
phrase to find catalog items that contain any of
the terms in a phrase. For example connected
car returns catalog items that contain the terms
connected and car.
◦ Quoted phrase search: Use double quotes to
return catalog items for a specific phrase, such as
"connected car".

Note: AI Search ignores letter case for search
query terms and phrases.
Search using Boolean operators

Separate query terms and phrases with Boolean
operators to override the default matching logic for
the search query:
◦ OR: Enter this Boolean disjunction operator to find
products that contain any of the terms or phrases
separated by OR.
◦ - (hyphen): Enter this Boolean negation operator
to exclude products containing the term or phrase
that immediately follows the hyphen.

Search using wild cards

Use wildcard operators to find records that contain
indexed terms matching a wildcard pattern:
◦ %: Enter this single-character wildcard operator in
a search query term to match any one character
in an indexed term. For example, fib%r finds all
products with the word fiber.
◦ *: Enter this string wildcard operator in a search
query term to match any string of zero or more
characters in an indexed term.
◦ ***: Enter this universal wildcard operator to find
all indexed terms.

Note: The % and * operators must follow
at least three non-wildcard characters to get
appropriate results. Otherwise the search
returns only the catalog items that are an exact
match.

5. Do one of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1128


<!-- page 1129 -->
◦ If the search results returned a product that you want to add, select the product offering
so that it can be added as line item to the transaction. If the product that you select is
customizable, the configurator opens so that you can configure the offering.
◦ If you want to continue with another query, select Clear to remove the current search and
sort option, then enter a new query in the search bar. The search query and sort option are
cleared. The sort option is reset to Relevancy, which is the default value.
Related topics
AI Search query language

Customer self-service using the Business Portal
Customers can use the Business Portal to browse product catalogs, create product orders,
create and view order cases, and request for quotes.

Creating orders using the Business Portal
The Business Portal uses the product catalog to let customers browse and configure products.
Customers can also build orders and submit them for fulfillment.
• Create orders from the Business Portal
• View an order on the Business Portal

Creating and viewing order cases
Customers can create and view order cases for orders or order line items using the Business
Portal.
• Request updates for one or more orders
• Request updates for items in a single order
• View order case details
• Request order changes using Now Assist for Order Management
• Using the AI voice agents for Now Assist for Order Management

Creating requests for quotes (RFQs)
Customers can request for quotes for products or services they're interested in via the Business
Portal. They can specify budget and pricing preferences, and submit quote requests without
engaging a sales agent. Simplify the RFQ life cycle from submission and internal review to
quote generation and customer acceptance, ensuring faster turnaround times and improved
transparency.
• Submit a request for quote from the Business Portal
• View requests for quotes (RFQs) on the Business Portal
• View quotes from the Business Portal
• Create quotes from request for quotes (RFQs)

Access the Business Portal
Customers can access the Business Portal from their instance to browse products and create
orders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1129


<!-- page 1130 -->
Before you begin

Role required: sn_customerservice.customer

Procedure
1. Go to your instance and select the URL.
2. Edit the instance URL and append /business_portal to the end after the com.
The Business Portals opens.

Create orders from the Business Portal
Browse products in a product catalog and create orders in Order Management.

Before you begin

Role required: sn_customerservice.customer

About this task

The following illustration describes the process to create orders from the Business Portal:
Self-service order checkout process

Procedure
1. Log in to the Business Portal.
2. Browse the product catalog, select products, and add them to the cart.
a. Select Product Catalog.
If you are a contact of an account with an active sales agreement, only the products listed in
the sales agreement are displayed.
b. Browse the products in the catalog.
c. If a product you want to order has specific configurations, select Customize and select the
product options.
d. Enter the quantity of the item you want to order in the Quantity field.
e. Select Add to add products to the cart.
3. Review the cart contents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1130


<!-- page 1131 -->
.
a. Select the Cart icon
The information listed in the following table is displayed.
My cart fields
Field

Description

Number

Unique cart ID.

State

State of the cart.

Created

Cart creation timestamp.

Qty

Product quantity.

Unit list price

Price of a single item.

Cumulative monthly price

Total cost of a product and its child items, if any, over a month.

Cumulative one time price One-time price of the product and its child items, if any.
b. If you need to modify the quantity or customization for a product in the cart, select the Edit
icon

and modify the details.

c. If you want to delete an item, select the Delete icon

.

4. Optional: Add instructions for your order in the Instructions field.
5. Optional: Save a copy of your cart in PDF format by selecting Download.
The default filename contains the cart ID. The PDF content and format is based on the Sales
Cart Demo Template document template.
6. Check out.
a. Select Proceed to Checkout.
b. On the Terms and conditions page, select the confirmation checkbox after reading the terms
and conditions of the seller and select Continue.
The terms and conditions are fetched from the Sales Cart Terms and Conditions Default
document template.
c. On the Shipping details page, review the shipping and billing addresses and modify them if
necessary by selecting the Edit icon

.

Note: The address that you specify while checking out is only used for that order. It
doesn't change your stored address in the seller's system.
d. Select Continue.
e. Verify the details on the Review page and select Submit.

Result

The order is created and you're redirected to the Order details page. You can view your account
details, order amount, order lines, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1131


<!-- page 1132 -->
Related topics
View an order on the Business Portal
Modify terms and conditions for the sales cart

View an order on the Business Portal
Customers can view their orders using the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted request > View orders.
The View order window has the following controls.
◦ To search for orders - use the search option.
◦ To sort, and filter orders - use the filter.
◦ To export as a PDF, Excel, or CSV - use the Action icon

.

◦ To open an order - select the order number.
◦ To navigate back to the main window - use the breadcrumbs.
Related topics
Create orders from the Business Portal

Submit a request for quote from the Business Portal
Browse products and submit a request for quote (RFQ) based on your budget and pricing
preferences for those products directly through the Business Portal, eliminating the need to
engage a sales agent.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Browse the product catalog, select products, and add them to the cart.
a. Select Product Catalog.
If you are a contact of an account with an active sales agreement, only the products listed in
the sales agreement are displayed.
b. Browse the products in the catalog.
c. If a product you want to order has specific configurations, select Customize and select the
product options.
d. In the Quantity field, enter the quantity of the item you want to order.
e. Select Add to add products to the cart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1132


<!-- page 1133 -->
3. Review the cart contents.
a. Select the Cart icon
.
The information listed in the following table is displayed.
My cart fields
Field

Description

Number

Unique cart ID.

State

State of the cart. For more information, see Request for quote
(RFQ) states.

Created

Cart creation timestamp.

Qty

Product quantity.

Unit list price

Price of a single unit of product or service before adjustments.

Cumulative monthly
price

Total cost of a product and its child items, if any, over a month.

Cumulative one time
price

One-time price of the product and its child items, if any.

b. If you need to modify the quantity or customization for a product in the cart, select the Edit
icon

and modify the details.

c. If you want to delete an item, select the Delete icon

.

4. Create the Request for quote.
a. Select Request for quote.
A request for quote record is created in the Draft state starting with the prefix RFQ.
b. On the Details form, fill in the fields.
Create request for quote - Details form
Field

Description

Quote required
by

Date and time by which you require the quote from the seller.

Overall budget

Allocated spend capacity for purchasing the selected products in US
dollars (USD).

Short
description

Note to the seller about your quote request.

c. Select Continue.
d. On the Selected products page, review the products that you've added to the quote request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1133


<!-- page 1134 -->
e. Optional: Specify a cumulative target price to propose the total amount you'd like to pay for
each top-level product.
i. Select the Edit icon

.

ii. In the Cumulative target price field, enter a value.
iii. Select Update.
5. Verify the details on the Review page.
6. Select Submit.

Result

The state of the quote request changes to Submitted.
The RFQ is submitted for further processing and you're redirected to the Request for quotes
details page that displays the list of your submitted quote requests.

What to do next

View the quote details on the Business Portal after the sales agent reviews and generates
a quote for your request. For more information, see View requests for quotes (RFQs) on the
Business Portal.
Related topics
View quotes from the Business Portal

View requests for quotes (RFQs) on the Business Portal
Access, review, and track all your submitted quote requests directly from the Business Portal
without having to contact a sales agent.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Navigate to Requests > View submitted requests > View request for quotes.
3. Select an RFQ record to view its details.
4. View the pricing information, product offering, quantity ordered, and other details by selecting
the Request for quote lines tab.
5. View the order instructions, billing, and shipping details by selecting the Other information
tab.
6. Check the status of your quote request in the State field in the RFQ header section.
For more information, see Request for quote (RFQ) states.
7. If the agent has converted the RFQ to a quote, a View quote button is available for you to view
the quote details.
Related topics
View quotes from the Business Portal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1134


<!-- page 1135 -->
View quotes from the Business Portal
View quotes generated for your account directly from the Business Portal. The list includes
quotes generated from requests for quotes (RFQs) submitted by you and quotes created offline
by a sales agent via the CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Navigate to Requests > View submitted requests > View quotes.
The following table provides the details displayed on the list view.
Quotes list view on the Business Portal
Column

Description

Number

Unique, system-generated quote ID starting with the prefix QT.

Short description

Brief description about your quote request.

Contact

Primary contact person for the account.

Quote date

Date on which the quote was created.

Expiration date

Date on which the validity of the quote ends.

Term (months)

Duration of the contract or subscription expressed in months.

State

Status of the quote. For more information, see Request for quote (RFQ)
states.

Contract start
date

Date when the contract becomes effective.

Contract end date Date when the contract ends.
Total one-time
price

Aggregate of all one-time charges across quote lines.

Total monthly
price

Sum of all monthly recurring charges for the quote.

Total annual price

Sum of all annual recurring charges for the quote.

Total amount

Overall deal value, including all one-time and recurring charges.

3. Select a quote record number to view its details.

Create quotes from request for quotes (RFQs)
Create quotes from RFQ requests submitted by your customers via the Business Portal so you
can share the quote with them and expedite the quote-to-order process.

Before you begin

Role required: sn_sales_common.sales_agent

About this task

To create a quote from an RFQ, you must first assign an RFQ record to an agent and change its
state to In review.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1135


<!-- page 1136 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Request for Quotes > All.
4. Select the RFQ record.
5. Assign the RFQ to an agent.
a. Select the Search for Record icon
assignment group.

of the Assignment group field and select an

b. Select the Search for Record icon

of the Assign to field and select the agent's name.

6. In the Status field, select In review from the drop-down menu.
7. Select Save.
The Convert to quote button becomes available.
8. Review the RFQ details such as address, pricing information, notes, and RFQ line item details.
9. After you've verified the information, select Convert to quote to generate a quote.
A quote record is created in the Draft state starting with the prefix QT. A success message
containing a link to the quote ID is displayed. Your customers can view the quote from the RFQ
record via the Business Portal.
10. Optional: View the generated quote in one of the following ways:
◦ Select View quote.
◦ Select the quote ID hyperlink from the success message that's displayed.
The latest revision of the quote is displayed.

What to do next

View quotes, generate PDFs share to share quotes with customers for acceptance, create sales
agreements, or convert quotes to orders to continue the sales process. For more information, see
Using Quote Management.
Related topics
View requests for quotes (RFQs) on the Business Portal

Request updates for one or more orders
Request changes to the expected order fulfillment date and shipping location for one or more
orders or to draw attention to an issue by creating an order case from the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > Submit a request > Submit a case > Submit an order case.
3. Create a new order case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1136


<!-- page 1137 -->
a. On the form, fill in the fields.
Create New Order Case form
Field

Description

Account

The account for which you’re creating the case.

Contact

The name of the customer contact for this case.

Scope of
request

This option should be set to Order header details, multiple orders to create
a case for one or more orders.

Priority

The available assigned priorities are:
▪ 1 - Critical
▪ 2 - High
▪ 3 - Moderate
▪ 4 - Low (default)

Short
description

Optional brief description.

b. Select Next.
An order case is created with its State as Draft.
4. Select the orders that you want to add to the order case.
a. On the Add and specify changes form on the order case page, select Add.
b. On the Add orders to case window, select one or more orders and select Add.
Order case lines are created corresponding to the order records.
c. Select the order case lines you want to edit and select Edit.
Select a single order case line to make specific changes to a specific order. Select multiple
order case lines to make the same changes for all orders.

Note:
If you no longer want to make changes to an order case line item, select it, select the
drop-down button next to Edit, and select Delete to remove it from the list of items to be
modified.
d. Modify any or all of the values in the Edit item dialog box.

Field

Description

Requested expected date

The date you want your order to be fulfilled.

Requested shipping location

The location to which you want your order to be shipped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1137


<!-- page 1138 -->
e. Select Update.
f. Select Next on the Add and specify changes form.
5. Verify the requested changes and submit the order case on the Review and submit page.
◦ If you need to make more changes, navigate to the required page from the Activities section
and repeat the modification process.
◦ If the changes are accurate, select Submit.

Result

The order case is created with the order case lines corresponding to the orders you updated,
and the state of the order case changes to New.

Request updates for items in a single order
Request changes for the expected order fulfillment date, shipping location, or quantity for
specific items in an order by creating an order case from the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > Submit a request > Submit a case > Submit an order case.
3. Create a new order case.
a. On the form, fill in the fields.
Create New Order Case form
Field

Description

Account

The account for which you’re creating the case.

Contact

The name of the customer contact for this case.

Scope of
request

This option should be set to Specific order lines, single order to create a
case for specific order line items in a single order.

Order
number

The order for which you want to create the case.

Priority

The available assigned priorities are:
▪ 1 - Critical
▪ 2 - High
▪ 3 - Moderate
▪ 4 - Low (default)

Short
Optional brief description.
description
b. Select Next.
An order case is created with its State as Draft.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1138


<!-- page 1139 -->
4. Select specific order items that you want to add to the order case.
a. Select Add on the Add and specify changes form on the order case page.
b. On the Add orders line items to case window, select the order items for which you want to
create a case and select Add.
Order case lines are created corresponding to the order items you selected.
c. Select the order case lines you want to edit and select Edit.
If you no longer want to make changes to an order case line item, select it, select the dropdown button next to Edit and select Delete to remove it from the list of items to be modified.
d. Modify one or more of the values on the Edit item dialog box.

Field

Description

Requested expected date

The date you want your order to be fulfilled.

Requested shipping location

The location to which you want your order to be shipped.

Requested quantity

The quantity of the item you want to purchase.

e. Select Update.
f. Select Next on the Add and specify changes form.
5. Verify the requested changes and submit the order case on the Review and submit page.
◦ If you need to make more changes, navigate to the required page from the Activities section
and repeat the modification process.
◦ If the changes are accurate, select Submit.

Result

The order case is created with the order case line items corresponding to the order line items
you updated, and the state of the order case changes to New.

View order case details
View the list of order cases and their state from the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted requests > View cases & tasks.
3. Select My Order Cases from the Categories menu to view order cases.
4. Select a case to view its state and other details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1139


