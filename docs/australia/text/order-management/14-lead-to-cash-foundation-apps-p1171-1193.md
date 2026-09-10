# Australia Sales Customer Relationship Management — Lead-to-cash foundation apps / Business Portal

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1171–1193 of 1645

Sections: Lead-to-cash foundation apps (p1171); Business Portal (p1175); Integrate (p1194)

---

<!-- page 1171 -->
Analytics

Description

5 highest-value active quotes

The top 5 quotes filtered by highest amount
value.

4. You can also view all the active quotes from highest to lowest in quote amount.
To learn more about the fields on the Quotes list, see Quote details forms.
5. View all the quotes that the user has access to from the All Quotes tab.

Using lead-to-cash foundation applications
Learn how to use lead-to-cash foundation applications.
Related topics
Configuring the lead-to-cash foundation applications
Lead-to-cash foundation

Using product catalogs
The product catalog provides a visual display of the available product offerings that can be
added to a Sales Customer Relationship Management transaction, such as an opportunity,
quote, or order. Use the catalog interface to add simple products and complex products that can
be further customized.
Agents use the Catalog tab (related list) for a transaction in the CSM Configurable Workspace
to open the product catalog. Customers engaged in self-service transactions such as placing
orders, use the product catalog in the Business Portal.

Note: When you start a lead, the Catalog tab displays only simple products that can be
added and do not require further customization.
Starting with the Product Catalog Management Core v17.0.0 release, the product catalog
interface supports semantic search queries powered by AI Search, in addition to keyword
searches.

Product catalog interface with simple search
The product catalog interface helps agents and customers find product offerings by navigating
product catalogs and categories. Or, they can use the search bar to match by product name,
code, or description.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
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
When a product offering is a derived product, the product tile displays a message indicating
that the product is derived.

Product catalog interface with AI Search
AI Search in the product catalog interface helps agents and customers find relevant product
offerings by using semantic search queries, in addition to keyword searches.
Entering a query term or phrase in the search bar, for example sedan, finds all catalog items
that contain that term as a characteristic, any parent products containing child products with
this characteristic, and related products that have semantic similarity. In AI Search, semantic
similarity means that the context of the query, such as the user, the catalog selected, and the
terms entered, are evaluated to return the most useful catalog items first.
AI Search provides other features to enhance the search process:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
• Search query language options: Use Boolean operators, wildcards, and multi-term and quoted
phrases in queries to broaden or narrow search results.
• Auto-complete suggestions: When you start entering text in the search bar, AI Search displays
auto-complete suggestions to help you get directly to the results you need. Suggestions may
include recent search queries, recently viewed search results, or search queries or results that
match the terms that you're typing into the search bar.
• Auto-corrections of misspelled or incomplete words: If your queries contain misspelled
words or are incomplete, AI Search automatically replaces those search query terms with
correct spellings, based on the search sources (product offerings and service specifications).
Typo corrections are shown before search results.
• Sort by filter: Organize how search results are returned, for example, by relevancy or product
description. Control the order, descending or ascending, in which the results are displayed.
Product catalog interface with AI Search

For more information on search queries and the search query language that you can use to find
catalog items, see Use AI Search in product catalogs.

Note: Check your entitlements to determine if you have access to this feature.
Related topics
Configuring the lead-to-cash foundation applications
Lead-to-cash foundation
Use AI Search in product catalogs
As an agent or customer, use AI Search queries in the product catalog to find relevant
product offerings or service specifications. For example, you can search by product offering
characteristics or other attributes, when adding products in Sales Customer Relationship
Management transactions.

Before you begin

Role required: sales agent, order agent, customer

About this task

With AI Search, you can use semantic queries to find relevant product offerings or service
specifications for a transaction. Your queries can contain terms or phrases to find catalog items.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
AI Search considers the context for your search, such as the user intent, to return appropriate
results. As you enter your query, AI Search provides various features to make your search more
efficient.
• Auto-complete suggestions: When you start entering text in the search bar, AI Search displays
auto-complete suggestions to help you get directly to the results you need. Suggestions might
include recent search queries, recently viewed search results, or queries that match the terms
you're entering in the search bar. Select one of the suggestions to display the product offering.
• Auto-correction: If your queries are incomplete or misspelled, AI Search automatically replaces
misspelled search query terms with spellings found in indexed content. Typo corrections are
displayed above search results.
• Search result order: You can use Sort by filter to organize your results by Relevancy, Display
name, Code, or Description.

Procedure
1. Access the product catalog through a Sales Customer Relationship Management transaction,
such as a quote created in the CSM Configurable Workspace or an order created in the
Business Portal.
2. Select the Catalog tab and choose the catalog.
3. In the sort filter, select the order for your search results:
◦ Relevancy: Lists the most relevant records first, based on rank and order. This option is
selected by default.
◦ Display name: Lists results by the display names for each product offering.
◦ Code: Lists products by a code that is assigned to each offering, either system-created or
set by the product catalog admin when the product offering is created.
◦ Description: Lists results by the description for each product offering.
You can use the ascending or descending filter to further order the results by Display name,
Code, or Description.
4. Enter a search term in the search bar, then press Return to generate the search results.
As you're entering a query, auto-complete suggestions are displayed if your query matches
any indexed terms. You can select one of the suggestions to display the product offering.
The following table lists examples of terms, phrases, and operators that you can enter in your
queries.
Search query language
Search
query

Search
by query
term

Description

Specify terms and quoted phrases in the search query to find products that
contain the same terms or phrases.
◦ Single-term search: Enter a specific term to find all catalog items that
contain the term. For example, sedan returns any products that contain
this characteristic, parent products containing child products with this
characteristic, and related products that have semantic similarity to this search
term or results.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
Search
query

Description

◦ Multi-term search: Enter multiple words in a phrase to find catalog items that
contain any of the terms in a phrase. For example, connected car returns
catalog items that contain the terms connected and car.
◦ Quoted phrase search: Use double quotes to return catalog items for a specific
phrase, such as "connected car".

Note: AI Search ignores letter case for search query terms and phrases.
Search
Separate query terms and phrases with Boolean operators to override the default
using
matching logic for the search query:
Boolean
◦ OR: Enter this Boolean disjunction operator to find products that contain any of
operators
the terms or phrases separated by OR.
◦ - (hyphen): Enter this Boolean negation operator to exclude products
containing the term or phrase that immediately follows the hyphen.
Search
Use wildcard operators to find records that contain indexed terms matching a
using
wildcard pattern:
wildcards
◦ %: Enter this single-character wildcard operator in a search query term to match
any one character in an indexed term. For example, fib%r finds all products
with the word fiber.
◦ *: Enter this string wildcard operator in a search query term to match any string
of zero or more characters in an indexed term.
◦ ***: Enter this universal wildcard operator to find all indexed terms.

Note: The % and * operators must follow at least three non-wildcard
characters to get appropriate results. Otherwise the search returns only the
catalog items that are an exact match.

5. Do one of the following:
◦ If the search results returned a product that you are adding, select the product offering
so that it can be added as a line item to the transaction. If the product that you select is
customizable, the configurator opens so that you can configure the offering.
◦ If you're continuing with another query, select Clear to remove the current search and sort
option, then enter a new query in the search bar. The sort option is reset to Relevancy, which
is the default value.
Related topics
AI Search query language

Customer self-service using the Business Portal
Business-to-business (B2B) customers can use the Business Portal to browse product catalogs,
create product orders, create and view order cases, manage invoice and invoice cases, and
request for quotes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
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
• Request order changes using Now Assist Virtual Assistant
• Request order changes via calls

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

Managing invoices and invoice cases
From the Business Portal, customers can view their invoices and invoice line details, including
quantities, billing and shipping locations, and product information. If they notice a discrepancy
such as a quantity mismatch, incorrect part number, or wrong billing or shipping location, they
can submit a dispute using the self-service playbook, which guides them through the process
step by step. They can dispute multiple line items on a single invoice, or raise issues across
multiple invoices at once. For more information, see:
• View invoices on the Business Portal
• Dispute a specific line item on an invoice against your account using the Business Portal
• Dispute multiple invoices against your account using the Business Portal
• View invoice case details in the Business Portal
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
Access the Business Portal
Customers can access the Business Portal from their instance to browse products and create
orders.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Go to your instance and select the URL.
2. Edit the instance URL and append /business_portal to the end after the com.
The Business Portals opens.
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

Create orders from the Business Portal
Browse products in a product catalog and create orders in Order Management.

Before you begin

Role required: sn_customerservice.customer

About this task

The following illustration describes the process to create orders from the Business Portal:
Self-service order checkout process


<!-- page 1178 -->
d. Enter the quantity of the item you want to order in the Quantity field.
e. Select Add to add products to the cart.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
d. Select Continue.
e. Verify the details on the Review page and select Submit.

Result

The order is created and you're redirected to the Order details page. You can view your account
details, order amount, order lines, and so on.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


<!-- page 1180 -->
b. Browse the products in the catalog.
c. If a product you want to order has specific configurations, select Customize and select the
product options.
d. In the Quantity field, enter the quantity of the item you want to order.
e. Select Add to add products to the cart.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1180


<!-- page 1181 -->
Field

Description

Overall budget

Allocated spend capacity for purchasing the selected products in US
dollars (USD).

Short
description

Note to the seller about your quote request.

c. Select Continue.
d. On the Selected products page, review the products that you've added to the quote request.
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
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1181


<!-- page 1182 -->
6. Check the status of your quote request in the State field in the RFQ header section.
For more information, see Request for quote (RFQ) states.
7. If the agent has converted the RFQ to a quote, a View quote button is available for you to view
the quote details.
Related topics
View quotes from the Business Portal

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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1182


<!-- page 1183 -->
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

Create quotes from request for quotes (RFQs)
Create quotes from RFQ requests submitted by your customers via the Business Portal so you
can share the quote with them and expedite the quote-to-order process.

Before you begin

Role required: sn_sales_common.sales_agent

About this task

To create a quote from an RFQ, you must first assign an RFQ record to an agent and change its
state to In review.

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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1183


<!-- page 1184 -->
Request updates for one or more orders
Request changes to the expected order fulfillment date and shipping location for one or more
orders or to draw attention to an issue by creating an order case from the Business Portal.

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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1184


<!-- page 1185 -->
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

e. Select Update.
f. Select Next on the Add and specify changes form.
5. Verify the requested changes and submit the order case on the Review and submit page.
◦ If you need to make more changes, navigate to the required page from the Activities section
and repeat the modification process.
◦ If the changes are accurate, select Submit.

Result

The order case is created with the order case lines corresponding to the orders you updated,
and the state of the order case changes to New.
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1185


<!-- page 1186 -->
Field

Description

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
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1186


<!-- page 1187 -->
Result

The order case is created with the order case line items corresponding to the order line items
you updated, and the state of the order case changes to New.
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

View order case details
View the list of order cases and their state from the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted requests > View cases & tasks.
3. Select My Order Cases from the Categories menu to view order cases.
4. Select a case to view its state and other details.
Order case states
State

Description

New

A new order case that is submitted.

Draft

The order case that has not yet been submitted.
Order case lines in the Draft state can still be modified.

Work in Progress

The order case is being handled by the sales agent.

Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

View invoices on the Business Portal
Access your invoices and invoice line details from the Business Portal to track billing information
and identify discrepancies.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Navigate to Requests > View submitted requests > View invoices.
The following table provides the details displayed on the list view.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1187


<!-- page 1188 -->
Invoices list view on the Business Portal
Column

Description

Number

Unique, system-generated invoice ID starting with the prefix ARINV.

Short description Brief description about your invoice.
Invoice date

Date on which the invoice was created.

Due date

Date on which the invoice is due for payment.

Account

Name of the customer or business entity in the business-to-business
(B2B) model.

Customer
contact

Primary contact for your account.

Billing location

The billing address that appears on the original invoice.

Shipping to
location

Reference to the location to which the order on the invoice is shipped.

3. Select an invoice record number to view its details.
Related topics
Dispute a specific line item on an invoice against your account using the Business Portal
Dispute multiple invoices against your account using the Business Portal
View invoice case details in the Business Portal

Dispute a specific line item on an invoice against your account using the
Business Portal
Challenge discrepancies in invoiced quantity, part number, billing location, or shipping location
for a single invoice line item via the Business Portal using the playbook experience.

Before you begin

Role required: sn_customerservice.customer

About this task

This task describes how to create an invoice case using the playbook experience in the
Business Portal. The playbook experience enables you to dispute various invoice discrepancies
depending on the scope you select, including quantity, part number, billing location, and
shipping location issues.
Creating invoice cases using the Now Assist panel limits disputes to quantity issues only. For
more information, see Dispute invoice issues using Now Assist Virtual Assistant.

Procedure
1. Log in to the Business Portal.
2. Navigate to Requests > Submit a request > Submit a case > Submit an invoice case.
3. Create a new invoice case.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1188


<!-- page 1189 -->
a. On the form, fill in the fields.
Create New Invoice Case form
Field

Description

Account

The account for which you’re creating the case.

Request
source

This option should be set to Specific invoice lines, single invoice to dispute
one or more invoice lines from a single invoice.

Contact

The name of the customer contact for this case.

Invoice

The invoice you want to dispute.

Priority

The urgency level assigned to the invoice case. The available priorities are:
▪ 1 - Critical
▪ 2 - High
▪ 3 - Moderate
▪ 4 - Low (default)

Short
Optional brief description.
description
b. Review the details before proceeding to the next step.
All fields become read-only after once you select Next and go to the Add and specify
changes page.
c. Select Next.
An invoice case is created with its State as Draft.
4. Select the invoice lines that you want to add to the invoice case.
a. On the Add and specify changes form on the Create invoice case page, select Add.
b. On the Add invoice line item to case window, select one or more invoice lines and select
Add.
For a description of the Add invoice line items to case list view, see Invoice line item details
on Business Portal.
Invoice case lines are created corresponding to the invoice records.
c. Select the invoice case lines that you want to edit and select Edit.
Select a single invoice case line to make specific changes to a specific invoice. Select
multiple invoice case lines to make the same changes for all invoices.

Note:
If you no longer want to change an invoice case line item, select it, select the dropdown button next to Edit, and select Delete to remove it from the list of items to be
modified.
d. Modify any or all of the values in the Edit item dialog box.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1189


<!-- page 1190 -->
Field

Description

Disputed quantity The quantity you believe should have been invoiced instead of the
amount shown in Invoiced quantity.
Disputed part
number

The correct part number if the Invoiced part number is incorrect.

Disputed billing
location

The correct billing location if the Invoiced billing location is incorrect.

Disputed
shipping location

The correct shipping location if the Invoiced shipping location is
incorrect.

e. Select Update.
f. Select Next on the Add and specify changes form.
5. Verify the requested changes and submit the invoice case on the Review and submit page.
◦ If you need to make more changes, navigate to the required page from the Activities section
and repeat the modification process.
◦ If the changes are accurate, select Submit.

Result

The invoice case is created with the invoice case lines corresponding to the invoices you
updated, and the state of the invoice case changes to New.

What to do next

Track the status of your invoice case. For more information, see View invoice case details in the
Business Portal.
Follow up on your invoice case. For more information, see Communicate and share supporting
documents for an invoice case from Business Portal.
Related topics
Invoice case details on the Business Portal

Dispute multiple invoices against your account using the Business Portal
Challenge discrepancies in billing or shipping locations that affect multiple invoices via the
Business Portal using the playbook experience.

Before you begin

Role required: sn_customerservice.customer

About this task

This task describes how to create an invoice case using the playbook experience in the
Business Portal. The playbook experience enables you to dispute various invoice discrepancies
depending on the scope you select. For multiple invoices, you can report billing location and
shipping location issues.
Creating invoice cases using the Now Assist panel limits disputes to quantity issues only. For
more information, see Dispute invoice issues using Now Assist Virtual Assistant.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1190


<!-- page 1191 -->
Procedure
1. Log in to the Business Portal.
2. Navigate to Requests > Submit a request > Submit a case > Submit an invoice case.
3. Create an invoice case.
a. On the form, fill in the fields.
Create New Invoice Case form
Field

Description

Account

The account for which you’re creating the case.

Request
source

This option should be set to Invoice header details, multiple invoices to
dispute multiple invoices against your account.

Contact

The name of the customer contact for this case.

Priority

The urgency level assigned to the invoice case. The available priorities are:
▪ 1 - Critical
▪ 2 - High
▪ 3 - Moderate
▪ 4 - Low (default)

Short
Optional brief description.
description
b. Select Next.
An invoice case is created with its state as Draft.
4. Select the invoices that you want to add to the invoice case.
a. Select Add on the Add and specify changes form on the invoice case page.
b. On the Add invoices to case window, select the invoices for which you want to create a case
and select Add.
For a description of the Add invoices to case list view, see Add invoices to case list.
Invoice case lines are created corresponding to the invoices that you selected.
c. Select the invoice case lines that you want to edit and select Edit.
If you no longer want to change an invoice case line item, select it, select the drop-down
button next to Edit and select Delete to remove it from the list of items to be modified.
d. Modify the billing or shipping location, or both, on the Edit item dialog box.

Field

Description

Disputed billing
location

The correct billing location if the Invoiced billing location is
incorrect.

Disputed shipping
location

The correct shipping location if the Invoiced shipping location is
incorrect.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1191


<!-- page 1192 -->
e. Select Update.
f. Select Next on the Add and specify changes form.
5. Verify the requested changes and submit the invoice case on the Review and submit page.
◦ If you need to make more changes, navigate to the required page from the Activities section
and repeat the modification process.
◦ If the changes are accurate, select Submit.

Result

The invoice case is created with the invoice case line items corresponding to the invoices you
updated, and the state of the invoice case changes to New.

What to do next

Track the status of your invoice case. For more information, see View invoice case details in the
Business Portal.
Follow up on your invoice case. For more information, see Communicate and share supporting
documents for an invoice case from Business Portal.

Resume an invoice case in Business Portal
Pick up an invoice case where you left off by resuming draft invoice cases from Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted requests > View cases & tasks.
3. From the Categories list, select My Invoice Cases.
4. Select the invoice case to resume.

Note: Invoice cases must be in the Draft state to edit and submit.
5. Select the Process tab.
6. Submit your invoice case using the invoice creation playbook.
◦ Dispute a specific line item on an invoice against your account using the Business Portal
◦ Dispute multiple invoices against your account using the Business Portal

Result

The invoice case is created and its state changes to New.

What to do next

Track the status of your invoice case. For more information, see View invoice case details in the
Business Portal.
Follow up on your invoice case. For more information, see Communicate and share supporting
documents for an invoice case from Business Portal.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1192


<!-- page 1193 -->
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

View invoice case details in the Business Portal
View invoice case details, status, activity history, and attachments from the Business Portal.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted requests > View cases & tasks.
3. Select My invoice cases from the Categories menu to view invoice cases.
4. Select a case to view its state and other details.
For a description of the Invoice case lines list view, see Invoice case details on the Business
Portal.
For more information about invoice states, see Invoice case states on Business Portal.

What to do next

Communicate and share supporting documents for an invoice case from Business Portal
Related topics
Configuring the Business Portal
Customer self-service for Sales Customer Relationship Management

Communicate and share supporting documents for an invoice case from
Business Portal
Stay engaged on your invoice dispute case by communicating with a billing specialist and
uploading supporting documents, such as proof of delivery or receipts, directly from the
Business Portal to help expedite resolution.

Before you begin

Role required: sn_customerservice.customer

About this task

After an invoice case is created either through the Now Assist Virtual Assistant or manually via
the playbook experience, you can use the invoice case record in the Business Portal to stay
engaged throughout the resolution process. View case history or send messages to the billing
specialist handling your case and respond to any requests they raise using the Activity tab.
Upload supporting documents, such as proof of delivery, goods receipt notes, or any other
evidence relevant to your dispute, using the Attachments tab.
You can use these tabs proactively without waiting to be contacted, for example, to share
additional context or upload documents immediately after your case is created.

Procedure
1. Log in to the Business Portal.
2. Select Requests > View submitted requests > View cases & tasks.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1193


