# Zurich Customer Service Management — Portal reference / Customer Service Cases list / Engagement Messenger reference

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1880–1907 of 2452

Sections: Portal reference (p1880); Customer Service Cases list (p1887); Engagement Messenger reference (p1889)

---

<!-- page 1880 -->
Portal reference
Customer, consumer, and business portal reference topics provide additional information about
form fields, user roles and others.

Business Portal user roles
Different roles allow customers to create and edit cases and manage users from the Business
portal.
Business Portal user roles
User role

Customer
[sn_customerservice.customer]

What this user can do on the Business Portal

• Create a case for this user's account.
• View a list of cases created by this user.
• Edit cases created by this user.
• Search for information.

Customer case manager

• Create a case for this user's account and for child
accounts.
[sn_customerservice.customer_case_manager]
• View a list of cases created by this user and view
cases for child accounts.
• Edit cases created by this user and edit cases for
child accounts.
• Search for information.
• Create a case on behalf of another contact in this
account.
• View a list of cases belonging to this account.
• Edit cases belonging to the account.

Note: The customer case manager
role is not automatically added to the
sn_customerservice.contact_role_assignment
system property. To expose this role to customer
and partner administrators, navigate to Customer
Service > Administration > Properties and add it
to this property.
Customer administrator

• Create a case for this user's account.

[sn_customerservice.customer_admin] • Create a case on behalf of another contact for this
account.
• View a list of cases belonging to this account.
• Edit cases belonging to this account.
• Search for information.
• Manage users for this account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1880


<!-- page 1881 -->
Business Portal user roles (continued)
User role

Partner
[sn_customerservice.partner]

What this user can do on the Business Portal

• Create a case for this user's account.
• Create a case on behalf of customer accounts.
• View a list of cases belonging to this user.
• Edit cases belonging to this user.
• Search for information.

Partner administrator
[sn_customerservice.partner_admin]

• Create a case for this user's account.
• Create a case on behalf of customer accounts.
• View a list of cases belonging to this account and to
customer accounts.
• Edit cases belonging to this account and to customer
accounts.
• Manage users for this account and for customer
accounts.

Customer Orders form
The following table describes the fields available on the Customer Orders form.
Customer Orders form
Field

Description

Keyword Search

Search bar to filter customer orders using
keywords like Order Number or Name.

Number

Unique identifier for each customer order.

Short description

Brief summary for the order.

Account

Customer account that is linked to the order.

Contact

Primary contact person for the order.

Channel partner

Channel partner associated with the customer
order.

Order date

Date and time when the order was created.

Status

Current status of the order.

Customer Service Portal user roles
Several different roles allow customers to create and edit cases and manage users from the
customer portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1881


<!-- page 1882 -->
Customer Service Portal user roles
User role

Customer
[sn_customerservice.customer]

What this user can do on the Customer Service Portal

• Create a case for this user's account.
• View a list of cases created by this user.
• Edit cases created by this user.
• View a list of assets belonging to this user's account.
• Search for information.

Customer case manager

• Create a case for this user's account and for child
accounts.
[sn_customerservice.customer_case_manager]
• View a list of cases created by this user and view
cases for child accounts.
• Edit cases created by this user and edit cases for
child accounts.
• View a list of assets belonging to this user's account
and to child accounts.
• Search for information.
• Create a case on behalf of another contact in this
account.
• View a list of cases belonging to this account.
• Edit cases belonging to the account.

Note: The customer case manager
role is not automatically added to the
sn_customerservice.contact_role_assignment
system property. To expose this role to customer
and partner administrators, navigate to Customer
Service > Administration > Properties and add it
to this property.
Customer administrator

• Create a case for this user's account.

[sn_customerservice.customer_admin] • Create a case on behalf of another contact for this
account.
• View a list of cases belonging to this account.
• Edit cases belonging to this account.
• View a list of assets belong to this user's account.
• Search for information.
• Manage users for this account.
Partner
[sn_customerservice.partner]

• Create a case for this user's account.
• Create a case on behalf of customer accounts.
• View a list of cases belonging to this user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1882


<!-- page 1883 -->
Customer Service Portal user roles (continued)
User role

What this user can do on the Customer Service Portal

• Edit cases belonging to this user.
• View a list of assets belong to this user's account.
• Search for information.
Partner administrator
[sn_customerservice.partner_admin]

• Create a case for this user's account.
• Create a case on behalf of customer accounts.
• View a list of cases belonging to this account and to
customer accounts.
• View a list of assets belong to this account and to
customer accounts.
• Edit cases belonging to this account and to customer
accounts.
• Manage users for this account and for customer
accounts.

Consumer Service Portal properties
Properties that the system administrator can set to limit the number of registered products
per consumer, the number of open cases per consumer, and the number of attachments per
consumer record.
Consumer Service Portal properties
Property

Description

consumer_max_attachments_per_record

Maximum consumer attachable items per record.
• Type: integer
• Default value: 5
• Location: Customer Service > Administration
> Properties

consumer_max_new_cases_daily

Maximum new cases that a consumer can create
per day.
• Type: integer
• Default value: 10
• Location: Customer Service > Administration
> Properties

consumer_max_comments_per_case_daily

Maximum comments that a consumer can post
per day on a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1883


<!-- page 1884 -->
Consumer Service Portal properties (continued)
Property

Description

• Type: integer
• Default value: 25
• Location: Customer Service > Administration
> Properties
consumer_max_products

Maximum registered products per consumer.
• Type: integer
• Default value: 25
• Location: Customer Service > Administration
> Properties

create_case.description.enable_html_editor Enable the flag to add description using the
HTML editor on the Create Case form page.
• Type: boolean
• Default value: True for new customers and
False for upgrade customers.
• Location: Customer Service > Administration
> Properties

Rate limit rule form for guest user access to catalog items
The REST API Rate Limit Rule form enables you to set the number of API requests in an hour by
guest users.
REST API Rate Limit Rule form fields
Field

Description

REST API resource

Rest API resource. This field is auto-populated
depending on the values entered in the other
fields.

Name

Unique name for the rate limit rule.

REST API

REST API selected from the list of all externalfacing REST APIs for the instance.
Select Service catalog.

Version

Version of the REST API. Values listed depend
on the REST API selected.
Select latest.

Resource

Resource for the version. Values listed depend
on the Version selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1884


<!-- page 1885 -->
REST API Rate Limit Rule form fields (continued)
Field

Description

For example,
• Buy Item
• Submit a Record Producer
• Validate Variable Regex (If the item
consists of a variable which requires Regex
Validation)
• Checkout Order Guide
• Variable display value
• Check requested for delegation on item
Active

Check box to indicate that the rate limit rule is
active.
Rate limit rules are activated by default as
soon as you create them. You can deactivate
rate limit rules to stop enforcing a rate limit or
activate rate limit rules to resume enforcing a
rate limit.

Request limit per hour

Maximum number of requests permitted in an
hour.

Note: Whenever you update the value
of this field, the ServiceNow AI Platform
resets the count of requests to 0 and
deletes all violations for the current hour.
Apply to

Users restricted by this rule:
• Single user applies the rate limit to a
specific user.
• Users with role applies the rate limit to all
users with a specific role.
• All users applies the rate limit to all users.
Select Users with role.

Role

Role to which the rate limit applies.
Select public.

Note: Appears only when you select
Users with role at the Apply to field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1885


<!-- page 1886 -->
Sitemap Generator for the Consumer Service Portal
®

The ServiceNow Sitemap Generator application enables you to efficiently define and
automatically generate XML sitemaps.

Sitemap Generator configuration requirements for the Consumer Service Portal
The sitemap is generated from a script or static XML. Validating sitemaps isn't handled
automatically, so verify when creating a sitemap that its contents meet the following
requirements:
• Includes only the knowledge base and catalogs configured for the Consumer Service Portal
• Includes only Consumer Service Portal pages with unauthenticated user access
• Excludes Consumer Service Portal URLs that aren't publicly accessible
• Excludes pages that respond with a 301 redirect
• Excluded retired and expired knowledge base articles
• Includes hreflang support for knowledge articles
For information about sitemap requirements for search engine optimization (SEO), see Build and
submit a sitemap
in the Google documentation.

Portal usage calculation
Portal usage enables you to track how your customers and employees are using the portal. The
Customer Portal Usage dashboard provides information about portal visits resulting in session
counts.
To view the Customer Portal Usage dashboard, navigate to All > Customer Service >
Administration > Portal Usage.

Note: You can ignore the bot session usage that is captured as part of this dashboard.
Note: This definition tracks usage for customer service portals based on the user roles
and ignores usage for non CSM portals or roles. Sessions are tracked for the following
roles:
• External roles: sn_esm_user, sn_customerservice.requester,
sn_communities.community_user
• Internal roles: sn_customerservice.self_contributor
A user session is a period of activity on the Customer or Consumer Service Portal by any of the
following session types:
• Guest session: Session where the user isn't logged in
• Bot session: Separate count of sessions generated due to bots and crawlers
• External session: Session where the user is an external user, typically a customer, or consumer
who is logged in

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1886


<!-- page 1887 -->
The aggregate session count is based on the following

calculations:

.

A user session times out after a specific period of inactivity.
User access to the self-service portals is tracked as follows: per session, per day, and per portal.
If the same user logs in from multiple browsers or devices, each login is counted as a separate
visit. Each first call of a portal page starts a session and, the usage metrics are calculated for the
24 hours window.
The default session timeout is 30 minutes. This setting can be adjusted using a system property.
For more information about modifying the session timeout setting, see Manage user sessions .

Site visit calculation examples
A user logs in, logs out, and then logs in again.
Example of a site visit calculation for a user who logs in, logs out, and then logs in again
Step

User activity

Billable count incremented

1

User visits the portal as an anonymous or guest
user

Yes

2

User logs in

No

3

User logs out

No

4

User logs in immediately after logging out

Yes

A user logs in and continues the session past midnight:
Example of a site visit calculation for a user who logs in and continues the session past
midnight
Step

User activity

Billable count incremented

1

User visits the portal as an anonymous or guest
user

Yes

2

User logs in

No

3

User session continues past midnight

Yes

4

User logs out

No

Customer Service Cases list
The Cases list displays a list of customer service cases for the current user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1887


<!-- page 1888 -->
Users with the sn_customerservice_agent or sn_customerservice_manager roles can view the
Cases list in the Customer Service Management application. The default view of the Cases list
includes the following columns:
• Number
• Short description
• Contact
• Account
• Channel
• State
• Priority
• Assigned to
• Updated
• Case Report (add a column to access this table if needed)
External customers can view a list of cases from the customer portal. For external users with
the sn_customerservice.customer or sn_customerservice.customer_admin roles, the Cases list
displays a subset of case information, including:
• Number
• Short description
• Product
• Priority
• State
• Updated
For external users with the sn_customerservice.partner or sn_customerservice.partner_admin
roles, the Account column is also displayed.

Cases displayed in the Case list by user role
The cases included in the Case list are determined by user role.
Internal and External for the Case List
User Role

Cases Included in Case List

Internal roles
sn_customerservice.customer_admin All cases
sn_customerservice_manager

All cases

sn_customerservice_agent

All cases

External roles
sn_customerservice.customer_admin

• Cases created for the customer administrator's
account
• Cases created by contacts who have a contact
relationship with the customer administrator's
account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1888


<!-- page 1889 -->
Internal and External for the Case List (continued)
User Role

Cases Included in Case List

Note: A contact relationship enables a contact
with the customer role or customer admin role
to manage the account for which the contact
relationship has been established.
sn_customerservice.customer

• Cases created by the customer
• Cases created by an agent for the customer

sn_customerservice.partner_admin

• Cases created by the partner:
◦ For their own account
◦ For a customer account
• Cases created for the partner administrator's account

sn_customerservice.partner

• Cases created by the partner
• Cases created by an agent for the partner
• Cases created for the same account
• Cases created from a partner account

Engagement Messenger reference
Reference topics provide additional information about Engagement Messenger.

Greeting feature configuration
Understand the configuration of the Greeting feature in the Engagement Messenger to configure
the field values.
Greeting feature configuration form
Field

Enable for unauthenticated users

Unauthenticated user greeting

Description

Option for enabling this feature for guest
users who visit the website that hosts the
messenger.
Text that is displayed in the header of the
messenger home page to greet a guest user.
For example, Hello!

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1889


<!-- page 1890 -->
Greeting feature configuration form (continued)
Field

Description

Enable for authenticated users

Authenticated user greeting

Option for enabling this feature for users
who sign in into the website that hosts the
messenger.
Text that is displayed in the header of the
messenger home page to greet a user who
signs in into the website.
This field is automatically set to Hi, <user>!,
where <user> indicates the name of the user
who has logged in.
The other variables that you can use with
<user> are the following:
• <title> which indicates the salutation such as
Mr., Ms., or Dr. as per the details in the Users
[sys_user] table.
• <part_of_day> which displays the greeting
based on the part of the day of the user's
region. For example, Good morning, Good
afternoon, or Good evening.

Greeting message

Tagline for the user greeting on the header of
the messenger home page.
[[URL|Display Text]] indicates format to
define URL and display text. For example,
[[https://www.example.com|
Example]]

Greeting feature widget

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1890


<!-- page 1891 -->
Knowledge feature configuration
Understand the configuration and related lists of the Knowledge feature in Engagement
Messenger to configure the field values.
Knowledge feature configuration form
Field

Show articles by

Description

Article category that is shown on the home
page of the messenger. You can select one of
the following categories:
• Featured articles: Articles that are based on
the keywords that are associated with the
articles.
For information on displaying articles in
the Featured content section, see Add a
knowledge article to featured content .
• Most viewed articles: Articles that have the
highest view among the articles of your
knowledge base.
The articles shown in the messenger are from
the knowledge bases that you add in the
Knowledge bases field.

Article count

Number of articles that are shown on the
messenger home page.
The articles are shown based on the option
that you select in the Show articles by field.

Knowledge Bases

List of knowledge bases that are associated
with your messenger module.
Use the Edit option ( ) and search to add a
knowledge base to your messenger module.

Enable copy permalink

Option for enabling your customer to copy the
permalink of a knowledge article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1891


<!-- page 1892 -->
Knowledge feature widget

Note the following points while you are configuring the Knowledge feature on your Engagement
Messenger module:
• To add knowledge bases to your messenger module, verify that the knowledge_admin role is
manually assigned to the user with Engagement Messenger admin [sn_csm_ec.ec_admin] role.
• If the knowledge base that you added to the Engagement Messenger has no articles, then the
homepage of the messenger UI does not display any knowledge article widget even when you
select a value for the Show articles by and Article count fields.
Note the following points regarding the live preview of Knowledge feature. However, the actual
functionality of the feature is not affected when the Engagement Messenger is deployed in your
website.
• The list of articles that is shown in the messenger live preview depends on the application
access that the knowledge_admin has to the articles.
If the knowledge_admin does not have access to any articles, then no content is displayed in
the preview. In such a case, only a title Featured articles or Most viewed articles is displayed.
• Changing the value of the Show articles by field refreshes only the title and not the content in
the messenger preview.

Search feature configuration
Understand the configuration of the Search feature in Engagement Messenger to configure the
field values.
Search feature configuration form
Field

Description

Search message

Text that is used for the search feature widget
in the messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1892


<!-- page 1893 -->
Search feature configuration form (continued)
Field

Description

Placeholder text

Placeholder text that appears in the search
box.

Enabled for unauthenticated users

Option for enabling this feature for guest
users who visit the website that hosts the
messenger.

Note:
• You also must configure EC AI
Homepage Search widget, Typeahead
Search widget, and AI Search Assist
widget for public access to enable
AI search for unauthenticated users.
For more information, see Enable AI
Search in Engagement Messenger for
unauthenticated users.
• Starting with the Vancouver release,
the chat client was enabled by
default only for authenticated
users. To enable the chat client for
unauthenticated users to be able to
access Virtual Agent chat and Live
Agent chat, you must enable the
$sn-va-web-client-app and

sn_va_web_client_app_embed
pages for public access. For more
information, see Make UI pages public
or private .
Enabled for authenticated users

Option for enabling this feature for users
who sign in to the website that hosts the
messenger.

Search application

Application that is used to power the search
functionality in Engagement Messenger.
This field is automatically set to Engagement
Messenger AI Search Config.
To configure the new search application,
navigate to Engagement Messenger
> Modules > Administration > Search
Applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1893


<!-- page 1894 -->
Search feature widget

In addition to configuring these fields for Engagement Messenger, you must configure AI Search
in your ServiceNow instance and then enable Typeahead Search and AI Search Assist widgets
so that the unauthenticated users can use the AI search feature from Engagement Messenger.
For more information on enabling Typeahead Search and AI Search Assist widgets for
Engagement Messenger, see Enabling AI search in the Customer and Consumer Service Portals
for unauthenticated users.
For more information of AI Search configuration, see Configuring AI Search

.

For more information on the availability of AI Search in your instance, see the AI Search
Availability [KB0867751]
article.

Note:
• In the Firefox browser, AI Search results aren’t displayed on the Engagement Messenger
home page.
• If AI Search isn’t enabled:
◦ The search feature won’t be available for users if the messenger module is created on
or after version 5.6.
◦ Zing search is used for messenger modules created before version 5.6.

Case management feature configuration
Understand the configuration of the Cases feature in Engagement Messenger to configure the
field values.
Cases feature configuration form
Field

Description

Title text

Title for the feature widget in the messenger.

Subtitle text

Description for the feature widget in the
messenger.

Feature launch message

Text for the Case form launcher widget in the
messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1894


<!-- page 1895 -->
Cases feature configuration form (continued)
Field

Description

For example, if a user provides feedback to
a knowledge article that it wasn't helpful, the
messenger displays a widget to create a case.
Clicking this widget launches a case form for
the user to fill and submit.
Feature launch description

Description for the Case form launcher widget
in the messenger.

Note: The Case feature is not available for the guest users.

Cases feature widget

Cases feature launcher widget

Catalog feature configuration
Understand the configuration of the Catalog feature in Engagement Messenger to configure the
field values.
Catalog feature configuration form
Field

Description

Title text

Title for the feature widget in the messenger.

Subtitle text

Description for the feature widget in the
messenger.

Catalogs

List of catalogs that are associated with your
messenger.
Use the Edit option ( ) and search for a
catalog to add to your messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1895


<!-- page 1896 -->
Catalog feature widget

Note: When you upgrade Engagement Messenger application from v1.0.0 to a newer
version, the Catalog feature is disabled for all the existing messenger modules. However,
AI search results from the home page of the Engagement Messenger still show catalogs
to the users. For more information, see the Known issues in Engagement Messenger
[KB0952509]
article.

Field service feature configuration
Understand the configuration of the field service feature in Engagement Messenger module to
configure the values.
To enable the field service feature, ensure that you activate the Field Service Management Customer Experience plugin (com.snc.fsm_customer_experience) in your ServiceNow instance.
Once the plugin is active, navigate to the Features section of the guided configuration view of
your Engagement Messenger module and enable the Field service feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1896


<!-- page 1897 -->
Field service features

Field service feature configuration fields
Field

Description

Title text

Title for the feature widget in the messenger.

Subtitle text

Description for the feature widget in the
messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1897


<!-- page 1898 -->
Enabling technician tracking from Engagement Messenger
When a technician is assigned to resolve your customer's field service request, they can track

their technician from Engagement Messenger.
To enable this functionality, ensure that you meet the following criteria:
• Activate the Field Service Management - Customer Experience plugin
(com.snc.fsm_customer_experience).
• in the sys_user table, enable the Geolocation tracked field for all your field service agents who
would be assigned to the customer work orders.
For more information, see Location tracking

.

Walk-up feature configuration
Understand the configuration of the Walk-up feature in Engagement Messenger module to
configure the field values.
To enable walk-up feature for your customers, ensure that you activate the following plugins in
your ServiceNow instance:
• Walk-up for CSM plugin (com.snc.walkup_for_csm) for authenticated users
• Guest Walk-up Experience for Customer Service plugin (sn_guest_walkup_cs) for
unauthenticated users
Once the plugin is active, navigate to the Features section of the guided configuration view of
your Engagement Messenger module and enable the Field service feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1898


<!-- page 1899 -->
Walk-up feature

Walk-up feature configuration fields
Field

Description

Title text

Title for the feature widget in the messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1899


<!-- page 1900 -->
Walk-up feature configuration fields (continued)
Field

Description

Subtitle text

Description for the feature widget in the
messenger.

Enable for unauthenticated users

Enable for authenticated users

Option for enabling the walk-up feature for
guest users who visit the website that hosts
the messenger.
Option for enabling the walk-up feature for
users who sign in into the website that hosts
the messenger.

Click Configure walk-up here to configure details of your customer support centres. For more
information, see Configure Walk-up Experience locations.

Chat feature configuration form fields
Description of the Chat feature configuration form fields.
Chat feature configuration form
Field

Title text

Reference chat topic

Description

Title for the chat feature widget on the
messenger home page. The default title is
Chat with an agent.
The topic that enables contextual chat for case
or work order.
This field is automatically set to EC Contextual
help.

Message for when chat is offline

Enabled for unauthenticated users

The message that appears on a messenger
when an agent is offline and Virtual Agent
isn’t set up. The default message is Our
customer support is offline.
Option for enabling the Live and Virtual Agent
chat feature for guest users who visit the
website that hosts the messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1900


<!-- page 1901 -->
Chat feature configuration form (continued)
Field

Description

Note:
Starting with the Vancouver release, the
chat client was enabled by default only
for authenticated users. To enable the
chat client for unauthenticated users
to be able to access Virtual Agent chat
and Live Agent chat, you must enable
the $sn-va-web-client-app and

sn_va_web_client_app_embed
pages for public access. For more
information, see Make UI pages public or
private .
Enabled for authenticated users

Option for enabling the Live and Virtual Agent
chat feature for users who sign in to the
website that hosts the messenger.

Feature launch messaging
Feature launch message
Feature launch description

Title of a chat card when it’s initiated from a
chat feature.
Description of a chat launcher that is within a
feature launch message.

Global chat settings
Change the default mode for chatting

Determines the default mode for
chatting, either synchronously (Chat) or
asynchronously (Messaging).
For information on how to set the default chat
mode, see Change the default chat mode for
the Chat feature.

Configure advanced chat options

Determines the chat options for managing
various conversation features.
For more information, see Chat Setup
configuration form.

Email notifications for unread messages

Determines the email settings for sending
email summaries for unread messages.
For more information on how to enable
email notifications for a specified duration,
seeConfigure email notifications for unread
chat messages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1901


<!-- page 1902 -->
Chat feature configuration form (continued)
Field

Description

Note: The green color next to Status
indicates that the email notification is
enabled.

Agent chat widget

Chat feature launcher widget

Callback feature configuration form
Description of the Callback feature configuration form fields.
• For more information about how to configure Omnichannel Callback for Customer Service
Management (CSM), seeConfiguring Omnichannel Callback for Customer Service
Management
• For more information about how to manage a callback from an agent using Engagement
Messenger, see Working with callback requests using Engagement Messenger
Callback feature configuration form
Field

Description

Choose how to display the card

The type of display for the feature card on
the messenger's home page. The available
options are:
• Use an image in a card: Shows a feature
card as a clickable image.
• Use a title and subtitle in a card: Shows a
title and subtitle text as a display feature
card

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1902


<!-- page 1903 -->
Callback feature configuration form (continued)
Field

Description

Image

An image that appears as a feature card on the
messenger's home page and has a portal or
catalog link embedded in it.

Note: This field appears only when Use
an image in a card is selected from the
Choose how to display the card field.
Use a title and subtitle in a card

• Title text: Title of the feature widget in the
messenger.
• Subtitle text: Description for the feature
widget in the messenger.

Note: This field appears only when Use

a title and subtitle in a card is selected
from the Choose how to display the card
field.
Page type

The portal page that opens within the
messenger when the user clicks on the feature
card. By default em_show_callback is set
to a portal page. For more information, see
Requirements for embedding portal pages in
Engagement Messenger .

Enable for authenticated users

Option for enabling the Callback feature for
users who sign in to the website that hosts the
messenger.

Configurable Cards feature configuration
The Configurable Cards feature enables you to add and customize the features in Engagement
Messenger that aren’t available by default.
Show a portal page or catalog item configuration form
Field

Description

Choose how to display the card

The type of display for the feature card on
the messenger's home page. The available
options are:
• Use an image in a card: Shows a feature
card as a clickable image.
• Use a title and subtitle in a card: Shows a
title and subtitle text as a display feature
card

Image

An image that appears as a feature card on the
messenger's home page and has a portal or
catalog link embedded in it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1903


<!-- page 1904 -->
Show a portal page or catalog item configuration form (continued)
Field

Description

The requirements for using images are:
• Supported formats are .jpg, .png, .bmp,
and .gif.
• Dimensions are a minimum of 120x370px
and a maximum of 250x370px.

Note: This field appears only when Use
an image in a card is selected from the
Choose how to display the card field.
Use a title and subtitle in a card

• Title text: Title of the feature widget in the
messenger.
• Subtitle text: Description for the feature
widget in the messenger.

Note: This field appears only when Use

a title and subtitle in a card is selected
from the Choose how to display the card
field.
Page type

The type of page that opens when the feature
card is clicked.
• Catalog Item: The catalog item that opens
within the messenger when the user clicks
on the feature card.
• Portal Page: The portal page that opens
within the messenger when the user clicks
on the feature card. You can configure
additional parameters to load specific
content from the portal page. For more
information about embedding portal
pages on Engagement Messenger, see
Requirements for embedding portal pages
in Engagement Messenger .

Enable for unauthenticated users

Option for enabling this feature for guest
users who visit the website that hosts the
messenger.

Enable for authenticated users

Option for enabling this feature for users
who sign in to the website that hosts the
messenger.

Note: Engagement Messenger honors access permissions defined for the portal page
or catalog item. If the users do not have access, the feature card will not appear on the
messenger.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1904


<!-- page 1905 -->
Use an image in a card

Use title and subtitle in a card

Show links to related websites configuration form
Field

Description

Title text

Title of the feature card in the messenger.

Show an image for each link

Option to display an image along with a link on
the messenger's home page.

Add up to five links

Displays external website links on the
messenger’s home page.

Note: You can add a maximum of five
links.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1905


<!-- page 1906 -->
Show links to related websites configuration form (continued)
Field

Description

Enable for unauthenticated users

Option for enabling this feature for guest
users who visit the website that hosts the
messenger.

Enable for authenticated users

Option for enabling this feature for users
who sign in to the website that hosts the
messenger.

Featured links

Show records from any table form fields
Field

Description

Choose a way to display records

Determines the appearance of records on the
messenger.
• Each record displays as a link: Shows a title
and list of records from the selected table
on the messenger's home page. It displays
up to five records on the messenger home
screen.
• Each record displays as a card: Shows
a feature card through which users can
access data from the selected table.

Enable for unauthenticated users

Option for enabling this feature for guest
users who visit the website that hosts the
messenger.

Enable for authenticated users

Option for enabling this feature for users
who sign in to the website that hosts the
messenger.

Homepage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1906


<!-- page 1907 -->
Show records from any table form fields (continued)
Field

Description

Title text

Title of the feature card displayed in the
messenger.

Subtitle text

Description for the feature card displayed in
the messenger.

Display of records
Choose table

Number of records to show

Determines the table that the card displays
records from, either on your ServiceNow
instance or from a remote third-party source.
The total records to be shown as links on the
messenger's home page. The maximum value
is five.

Note: This field is applicable only

when Each record displays as a link
is selected from the Choose a way to
display records field.
Page title

Title of the messenger page that appears
when a custom feature card is clicked.

Note: This field is applicable only

when Each record displays as a card
is selected from the Choose a way to
display records field.
Display field

The field from the selected table that you want
to use as the primary display field.

Details field

The fields to display on the card that represent
your data. You can select up to four detail
fields.

Note: Applicable only when Each

record displays as a card is selected
from the Choose a way to display
records field.
Portal page to open

The portal page to display when the user
selects any link or card.

Condition for records

Condition that restricts the records that
appear in a list in the messenger.

Note: Engagement Messenger honors Access Control rules (ACLs) defined for any
tables in your ServiceNow instance. If users don’t have access, the feature card doesn't
appear on the messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1907


