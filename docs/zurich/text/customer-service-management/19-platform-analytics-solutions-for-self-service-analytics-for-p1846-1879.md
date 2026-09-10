# Zurich Customer Service Management — Platform Analytics Solutions for Self-Service Analytics for Customer Service / Configurable Portal Widgets reference

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1846–1879 of 2452

Sections: Platform Analytics Solutions for Self-Service Analytics for Customer Service (p1846); Reference (p1853); Configurable Portal Widgets reference (p1854)

---

<!-- page 1846 -->
Dashboard report types (continued)
Title

Type

Description

Customer Satisfaction

Gauge

Displays the results of the
customer satisfaction survey
that a customer is asked to
take after a case is closed.

Open Cases By Product

Semi-Donut

Displays the number of open
cases for each product.

Major issue management analytics
Provides indicators on the Customer Service dashboards for major cases and child cases.
Action indicators are available on the Customer Service dashboards when the
Performance Analytics - Content Pack - Customer Service Management - Advanced plugin
(com.snc.pa.customer_service_advanced) is activated.

Note: Activate the Major Issue Management plugin (com.sn_majorissue_mgt) to view the
related indicators. Without this plugin, the indicators may not display correctly.
Indicators:
• Number of Open Major Cases (by day, week, month)
• Percentage of Resolved Major Cases (by day, week, month)
• Number of Cases which are Child of Major Case
• Percentage of Major Case Candidates (by day, week, month)
• Percentage of Child Cases which are Auto Created from Major Case
• Number of customers impacted by major issue

Platform Analytics Solutions for Self-Service Analytics for
Customer Service
Platform Analytics Solutions contain prepackaged Performance Analytics and Reporting content
for use with other ServiceNow AI Platform products. This Platform Analytics Solution quantifies
the value of self-service using the Self-Service Analytics dashboard for customer service.
The following roles and tasks are associated with this Solution:
• ServiceNow AI Platform administrator (admin): Install and activate this Platform Analytics
Solution and make any necessary changes to system properties.
• Performance Analytics administrator (pa_admin): Review the indicators, breakdowns, widgets,
and dashboards. Set up and start data collection. Share the dashboards with appropriate
stakeholders.
• Customer service manager (sn_customerservice_manager): Use the Self-Service Analytics
dashboard to view case metrics to understand the current performance of self-service at your
organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1846


<!-- page 1847 -->
Related topics
Configure the Platform Analytics Solution for Self-Service Analytics for Customer Service
Self-Service Analytics

Self-Service Analytics dashboard for Customer Service Management
Measure and track the effectiveness of self-service content through user activities on selfservice portals to enrich the content and address any self-service gaps.​
Overview tab

Knowledge tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1847


<!-- page 1848 -->
Communities tab

Catalog tab

Virtual agent tab

You can access this dashboard by navigating to All > Platform analytics > Library >
Dashboards, and search for Self-Service Analytics dashboard. To edit this dashboard, you must
set the application scope to Self-Service Analytics for Customer Service using the application
picker .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1848


<!-- page 1849 -->
Note:
• On the Knowledge tab, you can report knowledge gaps for unsuccessful searches. For
more information, see Report knowledge gaps based on unsuccessful searches.
• The Communities tab is available when the Communities plugin (com.sn_communities) is
activated.
• The Virtual Agent tab is available when the Glide Virtual Agent plugin
(com.glide.cs.chatbot) is activated.

End user and roles
End user and goal

Required role

Customer service manager: Can view case
metrics like backlog, resolution rates, SLA,
customer satisfaction, and KPIs to understand
the current performance of self-service at an
organization.

sn_customerservice_manager

Use case
Example 1
A user faces an issue with a purchased product. To resolve the issue, the user logs
in to the portal, and searches for and views content. However, the user does not find
any content helpful and creates a case.​
Example 2
A user faces an issue with a purchased product. To resolve the issue, the user logs
in to the portal, searches for and views content, marks the content as helpful, and
continues to do other activities without creating a case.​
The self-service content was available in both examples. However, in example 1, the user did not
find the content helpful and therefore it did not help deflect the case creation. The Self-Service
Analytics for Customer Service dashboard enables you to capture not deflected, deflected, or
potentially deflected instances with details such as what the user was searching for using the
searched terms, the content viewed, and the task created.

Indicators
Indicators define a performance measurement taken at regular intervals of a business service,
an activity, or organizational behavior. These performance measurements result in a series of
indicator scores over time.
When an administrator activates the Self-Service Analytics for Customer Service
plugin (com.snc.pa.self_service_analytics_csm), the Self-Service Analytics PA
(com.snc.pa.self_service_analytics) is also activated. Both plugins include indicators for the SelfService Analytics dashboard for customer service.
The Self-Service Analytics for Customer Service plugin includes the following indicators:
Catalog: Deflections
A monthly count of catalog requests after which the primary activity (case creation)
is either found (no deflection) or not found (confirmed or potential deflection) within
an activity window.
Communities: Deflections
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1849


<!-- page 1850 -->
A monthly count of community content types after which the primary activity
(case creation) is either found (no deflection) or not found (confirmed or potential
deflection) within an activity window.
Knowledge: Deflections
A monthly count of knowledge articles after which the primary activity (case
creation) is either found (no deflection) or not found (confirmed or potential
deflection) within an activity window.
Number of cases resolved
A monthly count of resolutions addressed by customer service agents.

Note: The Resolutions by Channel widget on the Overview tab of the SelfService Analytics dashboard for customer service displays this indicator as
Assisted.
Number of Deflections
A monthly count of deflections for all self-service channels (Knowledge,
Communities, Catalog, Virtual Agent).
Self-Service: Confirmed Deflections
A monthly count of deflections after which the primary activity (case creation)
was not found depending on the activity type (helpful knowledge articles, helpful
community content, catalog requests) within an activity window. An increase in
value indicates better performance.
Self-Service: Cost Saved
A monthly calculation of the cost saving for a deflection. The score is calculated
according to the formula ([[Self-Service: Confirmed Deflections]]
+ [[Self-Service: Potential Deflections]]) * 20.

Note: By default, the cost saved by each deflection is set to $20. However,
you can modify the formula and set a different cost. To edit the formula,
navigate to Performance Analytics > Formula Indicators, search for and
click the Self-Service: Cost Saved indicator, and edit the numeric value in the
Formula field. For more information, see Create a formula indicator .
Self-Service: Potential Deflections
A monthly count of deflections after which the primary activity (case creation) was
not found depending on the activity type (knowledge articles views, community
content views, Virtual Agent conversations) within an activity window. An increase in
value indicates better performance.
VA: Deflections
A monthly count of Virtual Agent conversations after which the primary activity
(case creation) is not found (potential deflection) within an activity window.
The Self-Service Analytics PA plugin includes the following indicators:
Catalog: Percentage of requests
A monthly calculation of the percentage of catalog usage compared with the use
of other self-service channels. The score is calculated according to the formula
[[Number of Catalog requests]] / ([[Knowledge: Articles
viewed this month]] + [[Communities: Views this month]] +
[[Number of Catalog requests]] + [[VA: Conversations this
month]]) * 100.
Catalog: Success Rate
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1850


<!-- page 1851 -->
A monthly calculation of the percentage indicating the success of the catalog as a
self-service channel. The score is calculated according to the formula [[Number
of Catalog requests]] / [[Catalog: Views this month]] *
100.
Catalog: Views this month
A monthly count of catalog item views. An increase in value indicates better
performance.
Communities: Helpful Feedback
A monthly count of helpful Community content types.
Communities: Percentage of community viewed
A monthly calculation of the percentage of Community content types usage
compared with the usage of other self-service channels. The score is calculated
according to the formula [[Communities: Views this month]] /
([[Communities: Views this month]] + [[Knowledge:
Articles viewed this month]] + [[Number of Catalog
requests]] + [[VA: Conversations this month]]) * 100.
Communities: Views this month
A monthly count of Community content type views. An increase in value indicates
better performance.
Knowledge: Articles viewed this month
A monthly count of knowledge articles views. An increase in value indicates better
performance.
Knowledge: Helpful Feedback
A monthly count of knowledge articles marked as helpful or rated either 4 or 5.
Knowledge: Percentage of articles viewed
A monthly calculation of the percentage of knowledge articles usage compared
with the usage of other self-service channels. The score is calculated
according to the formula [[Knowledge: Articles viewed this
month]] / ([[Knowledge: Articles viewed this month]] +
[[Communities: Views this month]] + [[Number of Catalog
requests]] + [[VA: Conversations this month]]) * 100.
Number of Catalog requests
A monthly count of catalog requests.
Percentage of helpful Community Content
A monthly calculation of the percentage indicating the success of Communities
as a self-service channel. The score is calculated according to the formula
[[Communities: Helpful Feedback]] / [[Communities: Views
this month]] * 100.
Percentage of helpful Knowledge Articles
A monthly calculation of the percentage indicating the success of Knowledge
as a self-service channel. The score is calculated according to the formula
[[Knowledge: Helpful Feedback]] / [[Knowledge: Articles
viewed this month]] * 100.
Self-Service: Engagements
A monthly calculation of the total of views from all self-service channels. The
score is calculated according to the formula [[Knowledge: Articles
viewed this month]] + [[Communities: Views this month]] +
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1851


<!-- page 1852 -->
[[Catalog: Views this month]] + [[VA: Conversations this
month]].
Self-Service: Success Rate
A monthly calculation of the percentage indicating the success of self-service
channels. The score is calculated according to the formula [[Self-Service:
Successful Engagements]] / [[Self-Service: Engagements]]
* 100
Self-Service: Successful Engagements
A monthly count of helpful content from all self-service channels. The score is
calculated according to the formula [[Knowledge: Helpful Feedback]]
+ [[Communities: Helpful Feedback]] + [[Number of Catalog
requests]] + [[VA: Successful Conversations]].
VA: Conversations this month
A monthly count of Virtual Agent conversations. An increase in value indicates
better performance.
VA: Percentage of Conversations
A monthly calculation of the percentage of Virtual Agent conversation
usage compared with the usage of other self-service channels. The score
is calculated according to the formula [[VA: Conversations this
month]] / ([[Knowledge: Articles viewed this month]] +
[[Communities: Views this month]] + [[Catalog: Views this
month]] + [[VA: Conversations this month]]) * 100.
VA: Success Rate
A monthly calculation of the percentage indicating the success of Virtual Agent as
a self-service channel. The score is calculated according to the formula [[VA:
Successful Conversations]] / [[VA: Conversations this
month]] * 100
VA: Successful Conversations
A monthly count of Virtual Agent conversations that were not directed to live agents.
An increase in value indicates better performance.

Breakdowns
Breakdowns enable you to group or filter indicator scores by a qualitative attribute.
This dashboard includes the following breakdowns:
Channel
Enables you to view indicator scores by a self-service channel such as Knowledge,
Communities, Catalog, or Virtual Agents.
Communities Content Type
Enables you to view indicator scores by a Community content type such as answer,
blog, comment, document, event, question, or video.
Knowledge Base
Enables you to view indicator scores by knowledge base.
Knowledge Category
Enables you to view indicator scores by knowledge article category.
Type of Deflection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1852


<!-- page 1853 -->
Enables you to view indicator scores by deflection type: no deflection, confirmed
deflection, and potential deflection.

Data visualization
Title

Type

Description

Unsuccessful Searches

Bar

A monthly collection of
searches for knowledge
articles with no results or
results with no clicks.

Related topics
Self-Service Analytics

Report knowledge gaps based on unsuccessful searches
Report a knowledge gap from the Unsuccessful Searches report in the Self-Service Analytics
dashboard for customer service.

Before you begin

Role required: sn_customerservice_manager

About this task

The Unsuccessful Searches report in the Self-Service Analytics dashboard for customer service
reports a collection of searches for knowledge articles with no results or results with no clicks.
You can report a knowledge gap for such unsuccessful searches.

Procedure
1. Navigate to All > Self-Service > Dashboards.
2. Click Self-Service Analytics.
3. On the Knowledge tab, on the Unsuccessful Searches report, click a bar.
4. Click Report Knowledge Gap.
5. In the Description field, describe the knowledge gap.
By default, the Description field shows frequently appearing words in the associated
collection. You can also enter custom instructions for addressing the knowledge gap. When
entering instructions, you can provide a summary of your analysis so that knowledge authors
have the necessary information to create an article from the feedback task.
6. Click Submit.

Result

If a collection is reported as a knowledge gap, a feedback task of type Unsuccessful search is
created in the Knowledge Management application. If the assignment rules are set, the feedback
task is assigned to an ownership group or an author.
Related topics
Self-Service Analytics dashboard for Customer Service Management

Customer Service Management reference
Reference topics provide additional information about the Customer Service Management
application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1853


<!-- page 1854 -->
Reference information

Links to topics

Customer Service lists and forms

• Customer Service Cases list
• Customer Service forms
• Chat Setup configuration form

Components installed with Customer Service
Management applications

• Components installed with CSM
workspaces
• Components installed with additional
plugins for Customer Service Management
• Components installed with CSM
workspaces

Engagement Messenger topics

• Components installed with Engagement
Messenger
• Engagement Messenger reference
• Feature context parameters supported in
Engagement Messenger
• Engagement Messenger translation tables

Portal topics

• Portal Banner widget JSON parameters
• Portal Data List widget JSON parameters
• Default highlight color for different case
states

CSM Query Rules

The system uses query rules to filter the
records in CSM-related tables that are
accessible by users with CSM roles.

Configurable Portal Widgets reference
Reference topics for Configural Portal Widgets.

Configurable Portal widget library
The Configurable Portal widget library is a collection of prebuilt and reusable widgets that
enables you to configure the portal homepage.
Configurable Portal widgets
Widget

Description

Portal Polaris Header
widget

Display access key features and pages from any place in portal. It
shows logo, search, profile, and others on level 1 of the header, and
menu items on level 2 of the header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1854


<!-- page 1855 -->
Configurable Portal widgets (continued)
Widget

Description

The appearance of menu items in level 2 of the header is
determined by the Portal Mega Menu widget selected.
Portal Mega Menu widget

The menu on the header of the portal home page to navigate to
different pages. It displays topics in a menu format organized
hierarchically.

Portal Browse Taxonomy
widget

Display taxonomy topics along with the articles and catalog items
related to them.

Portal Banner widget

Banner to display the announcements, new product or feature
highlights, and important information on the top of the page.

Portal Banner Carousel
widget

Displays multiple banners in a carousel to display information on
multiple announcements, features, and products.

Portal Quick Links widget

Display different links for quick access including links to a
knowledge article, a catalog item, a custom page, or an external
URL. You can also select different layouts for quick links cards.

Portal Knowledge Quick
Links widget

Display a list of articles for quick access. Articles can be selected
based on featured articles, most viewed articles and more criteria
or can be selected manually.

Portal Catalog Quick
Links widget

Displays catalog items for important request items based on the
criteria.

Portal Case Cards widget

Displays case records according to the filter criteria. You can
display case details such as state, update, date, and more in a card
format.

Portal Data List widget

Displays a list of cases, appointments, work orders, or other records
from any ServiceNow table in list or card format.

Portal FAQ widget

Displays a list of frequently asked articles from a selected
knowledge table that are categorized based on knowledge article
category or related product.

Portal Polaris Footer
widget

Display important information at the bottom of each page. The
information includes company information and logo, site links,
external links, and social media links.

Portal Object widget

Display key information of a record from the tables available on
®
ServiceNow table. Your users can also take related actions on the
selected record.

Portal Taxonomy Topic
widget

Displays topics as cards on your portal page enabling your users
to access knowledge articles and catalog items related to a topic
displayed on your portal in a Portal Browse Taxonomy widget.

Configurable Portal widgets instance options
Reference topics provide information about the instance options for all the Configurable Portal
widgets.
Portal Browse Taxonomy widget instance options form
Instance options enable you to configure the Portal Browse Taxonomy widget on the portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1855


<!-- page 1856 -->
Behavior fields on the Instance form
Instance
option

Description

Records
Per View

The number of catalog items and knowledge articles to appear by default on the
widget. The default value is 9.

Glyph for
Article
Cards

The glyph to appear on the cards, which is chosen from a set of predefined
glyphs.

Show
Author

Option to display the author's name.

Show View Option to display the total number of views of an article.
Count
Show Last
Updated

Option to display the date of the last changes made to an article.

Show
Rating

Option to display the rating received on an article.

Article
View Page

The article page that opens when the article card is accessed.

Catalog
Card
Display
Style

The display style of a catalog card inside the widget.

The appearance of the star rating is defined by the
( glide.knowman.show_star_rating) system property.

By default, this field is set to the Knowledge Article View (kb_article_view) page.

The available choices are:
• Icon: An image that appears next to a catalog item. Each catalog item can have
its own image. This image is defined by the catalog item entry in the Catalog
item [sc_catalog_item] table.
• Glyph: Glyph that appears next to all catalog items.
The default display style is Icon.

Note: Currently, if you select None, the display style is set to Icon.
Glyph for
Catalog
Items

Displays a window to select a symbol for a catalog items.

Note: The value in this field is used only when Glyph is selected in the
Catalog Card Display Style field.

Catalog
Item Page

The Catalog item page that opens when the catalog item is accessed.

Display
icon for
topics

Option to display an icon for the taxonomy topics.

Catalog
Order

The Catalog Order Guide page that opens when the catalog order guide is
accessed. For details, see Order guides

By default, this field is set to the Catalog Item [sc_cat_item] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1856


<!-- page 1857 -->
Behavior fields on the Instance form (continued)
Instance
option

Guide
Page

Description

By default, this field is set to the Order guide [sc_cat_item_guide] table.

Related topics
Portal Browse Taxonomy widget
Add and configure the Portal Browse Taxonomy widget
Portal Header notification, approval, and survey form
Notifications, approval, and, survey forms fields for portal header.
Notification form
Field

Description

Label

Name that appears for the item on the header. The default text is
Notification.

Parent
Menu

This field should already contain the name of the menu you’re adding items to.

Order

Value that determines where the item appears in the menu in relation to other
menu items.

Type

The type of page the item links to. You must select Scripted List from the list.

Application Application for the menu item
Condition

Determines what conditions are required for menu items to show on the header.

Glyph

Icon that appears next to the item.

Approval form
Field

Description

Label

Name that appears for the item on the header. The default text is Approval.

Parent
Menu

This field should already contain the name of the menu you’re adding items to.

Order

Value that determines where the item appears in the menu in relation to other
menu items.

Type

The type of page the item links to. You must select Scripted List from the list.

Application Application for the menu item
Condition

Determines what conditions are required for menu items to show on the header.

Glyph

Icon that appears next to the item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1857


<!-- page 1858 -->
Survey form
Field

Description

Label

Name that appears for the item on the header. The default text is Survey.

Parent
Menu

This field should already contain the name of the menu you’re adding items to.

Order

Value that determines where the item appears in the menu in relation to other
menu items.

Type

The type of page the item links to. You must select Scripted List from the list.

Application Application for the menu item
Condition

Determines what conditions are required for menu items to show on the header.

Glyph

Icon that appears next to the item.

Related topics
Configure notification, approval, and survey for your portal header
Portal Banner widget instance options form
Instance options enable you to configure the Portal Banner widget on a portal page.
Presentation fields on the Instance form
Instance
option

Heading

Description

Required title of a Portal Banner widget to greet a user who signs in into the
website. The default text is Home Page Banner.
The heading field supports placeholder variables such as <user>, <title>, and
<part_of_day>. For example, you could display a banner title such as Hello
Mr. Luddy! Good Morning.
• <user>: The name of the logged-in user.
• <title>: The salutation of the logged-in user. The <title> variable details are
retrieved from the User [sys_user] table.
• <part_of_day>: Displays the greeting based on the part of the day of the user's
region. For example, Good morning, Good afternoon, or Good evening.

Description

Required subtitle that appears below the heading. The default description is
This is home page description.

Background
Image

Image to appear as the background on the banner.

Note: You can select images from the Images [db_image] table or
upload a new image to it. For more information, see Storing images in the
database .

Heading
Text Color
Hex code

Color of the heading text in hex code format.
The default value is ‑FFFFFF (white).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1858


<!-- page 1859 -->
Presentation fields on the Instance form (continued)
Instance
option

Description

Description
Text Color
Hex code

Color of the description text color in hex code format.

Alignment

Alignment of the banner content inside the widget.

The default value is ‑FFFFFF (white).

The available options are:
• Left
• Center
The default alignment is Center.

Note: Currently, if you select None, the alignment is set to Left.
Show
Search bar

Option to display the search bar on the Portal Banner widget to search content.

Note: You can enable the AI search for a banner widget to get quick
results. For more information, see Enable and configure AI Search in
Service Portal .

Show
Primary
Button

Option to display the primary button on the Portal Banner widget.

Primary
Label of the primary button.
Button Label
Primary
Button URL

The URL that opens an internal web page or a portal page in the same tab and
an external page or a portal in a new tab. The two types of primary URLs are:
• Absolute URL: The full URL including its protocol (http or https). For example:
https://example.servicenow.com/scripts/sn_csm_ec.
js?v=3.1
• Relative URL: A URL that includes only the path that comes after the domain.
For example:
scripts/sn_csm_ec.js?v=3.1

Show
Secondary
Button

Option to display a secondary button on the banner widget.

Secondary
Label of a secondary button.
Button Label
Secondary
Button URL

The URL that opens an internal web page or a portal page in the same tab and
an external page or a portal in a new tab. The two types of secondary URLs are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1859


<!-- page 1860 -->
Presentation fields on the Instance form (continued)
Instance
option

Description

• Absolute URL: The full URL including its protocol (http or https). For example:
https://example.servicenow.com/scripts/sn_csm_ec.
js?v=3.1
• Relative URL: A URL that includes only the path that comes after the domain.
For example:
scripts/sn_csm_ec.js?v=3.1
Search
Placeholder
Text

Placeholder text for the search option.
The default text is Search articles and request items.

Behavior fields on the Instance form
Instance
option

Buttons
Condition
Script

Description

Script to show or hide the primary or secondary button.
You can use the scripted extension point to implement the condition script. By
default, the new script displays both buttons and doesn’t include any condition.
For more information, see Provide web page link buttons to display on the Portal
Banner widget.

Widget
Option to embed an additional widget on the Portal Banner widget.
Placeholder
You can include only widgets from the Widgets [sp_widget] table.
Widget
Option
Schema

Defines the parameters of the widget that you want to add.
For more information, see Add a widget in the Portal Banner widget.

Related topics
Portal Banner widget
Add and configure the Portal Banner widget
Provide web page link buttons to display on the Portal Banner widget
Add a widget in the Portal Banner widget
Portal Banner Carousel widget instance options form
Instance options enable you to configure the Portal Banner Carousel widget on a portal page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1860


<!-- page 1861 -->
Data fields on the Instance form
Instance
option

Description

Slides

The images to appear on the widget chosen from a set of predefined slides or
slides that you have created.
For more information, see Create a slide for the Portal Banner Carousel widget.

Presentation fields on the Instance form
Instance option

Description

Title color

Color of the title for all carousel slides in hex code format.
The default value is ‑FFFFFF (white).

Alignment

The alignment of content inside the widget for all carousel slides.
The available options are:
• Left
• Center
The default alignment is Left.

Note: Currently, if you select None, the alignment is set to Left.
Related topics
Portal Banner Carousel widget
Add and configure the Portal Banner Carousel widget
Create a slide for the Portal Banner Carousel widget
Portal Case Cards widget instance options form
Instance options enable you to configure the Portal Case Cards widget on a portal page.
Data fields on the Instance form
Instance
Description
option

Case
Table

Table from which the records shown as case cards on the widget are selected.

Query

Query to filter the case records.

By default, this field is set to the Cases [sn_customerservice_case] table and the
extended table is Complaint Case [sn_complaint_case].

The default query shows cases that are awaiting information or are resolved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1861


<!-- page 1862 -->
Data fields on the Instance form (continued)
Instance
Description
option

Note: If no query is provided, all case records are displayed in the widget. For
more information, see Generate an encoded query string through a filter
Sort by

.

Field in the Cases [sn_customerservice_case] table that determines the field by
which cases are sorted when displayed on the widget.
The default value is Last updated.

Sort
Order

The order in which the cases appear on the widget.
The available options are:
• z to a
• a to z
The default sort order is z to a.

Note: Currently, if you select None, the order is set to z to a.

Presentation fields on the Instance form
Instance
option

Description

Title

Required title of a Portal Case cards widget. The default text is Track case
updates.

Description

Subtitle that appears below the heading.

Behavior fields on the Instance form
Instance
option

Description

Max Cases
to Display

Number of cases to appear by default on the widget. The default value is 10.

Card Title

Required title of the Case Cards widget.

State
Highlight
Color

Color of the background and text for the different states of a case in hex code
format.

Card Display Display style for a case card inside the widget.
style
The available options are:
• Show case fields
• Show latest activity
• Title only
The default display style is Show the latest activity
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1862


<!-- page 1863 -->
Behavior fields on the Instance form (continued)
Instance
option

Description

Note: Currently, if you select None, the display style is set to Show latest
activity.
Select Case
Fields

Display case fields for a case card in the widget, which are chosen from a set of
predefined set of fields in the Cases [sn_customerservice_case] table.
You can show a maximum of three fields.
This field is available only when Show case fields is selected from Card display
style.

Case View
Page

The portal page that displays the details of a case record when the case card is
accessed.
By default, this field is set to the Case (csm_ticket) page.
Option to display all cases when View all is accessed on the widget.

View All
Page

The View all option on the Portal Case Cards widget is displayed under the
following conditions:
• The number of cases resulting from the query provided in the Query field is
more than the defined value in the Max Cases to Display field
• A page has been selected from a set of predefined set of pages

Hide Empty Option to hide the widget when no records are available to display.
Case Widget
If this option isn’t selected, an empty widget shows the text defined in the Empty
State Text option.
Empty State
Text

The text displayed in the widget when Hide Empty Case Widget isn’t selected
and the widget has no records to display.
The default text is No updates right now.

Related topics
Portal Case Cards widget
Add and configure the Portal Case Cards widget
Display the integer values of all case states
Portal Quick Links widget instance options form
The instance options enable you to configure the Portal Quick Links widget on a portal page.
Presentation fields on the Instance form
Instance
option

Description

Title

Required title of a Portal Quick Links widget. The default text is Quick Links.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1863


<!-- page 1864 -->
Presentation fields on the Instance form (continued)
Instance
option

Description

Show
Option to switch between carousel view and grid view.
Carousel
Quick
Links

Field from which you can select the catalog items, knowledge articles, or URL to
show as quick links on the widget.
By default, this field is set to the pre-defined Quick Links from the
sn_ex_sp_quick_link table.
You can also create a quick link and add it to the Quick Links [sn_ex_sp_quick_link]
table. For more information, see Create a quick link .
You can display title, short description, background image, and icon fields on the
card in the widget.
Following are the fields of the table
• Content type: options are: article, catalog item, external link and page
• Content: select the content
• Quicklink name
• Title: Displays as a title of quick link card
• Short description: Displays as description of quick link card
• Background image: Displays as thumbnail quick link card when card display style
is thumbnail
• Icon: Displays as an icon on quick link card when card display style is icon on top
or left

Behavior fields on the Instance form
Instance option

Description

Card Display Style

Display the style of a card tile on the widget.
The available options are:
• Thumbnail
• Icon on top
• Icon on left
• Simple text
• Tile only
The default display style is Thumbnail.

Note: Currently, if you select None, the style is set to Thumbnail.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1864


<!-- page 1865 -->
Related topics
Portal Quick Links widget
Add and configure the Portal Quick Links widget
Portal Knowledge Quick Links widget instance options form
The instance options enable you to configure the Portal Knowledge Quick Links widget on a
portal page.
Data fields on the Instance form
Instance
option

Description

Knowledge Table from which the records shown as a card on the widget are selected.
Table
By default, this field is set to the Knowledge [kb_knowledge] table.
Display
Articles

Displays knowledge articles from the associated knowledge base.
The available options are:
• Manually select: Displays knowledge articles chosen in the Manually Select
Articles field.
• Dynamic query: Displays knowledge articles that meet the condition of a query
in the Knowledge [kb_knowledge] table defined in the Dynamic Query field.
If no query is provided, all knowledge articles are displayed in the widget. For
more information, seeGenerate an encoded query string through a filter
• Criteria based: Displays knowledge article based on the criteria Most viewed,
Most useful, and Featured. The criteria is determined by the View field in the
Knowledge [kb_knowledge] table.
The default selection is Criteria based.

Note: Currently, if you select None, the selection is set to Criteria based.
Manually
Select
Articles

The knowledge base articles to appear on the widget that are chosen manually
from a set of predefined articles associated with the portal using the knowledge
base ID of the article.
This field applies only when Manually select is selected from Display Articles.

Dynamic
Query

Query to filter the records to display on the widget

Criteria
Based

Displays articles on the widget based on the selected criteria.
The available options are:
• Most Viewed
• Most Useful
• Featured
This field applies only when Criteria based is selected from Display articles.

Note: Currently, if you select None, the criteria is set to Most Viewed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1865


<!-- page 1866 -->
Data fields on the Instance form (continued)
Instance
option

Sort by

Description

Determines the field in the Knowledge [kb_knowledge] table by which quick links
are sorted and displayed on the widget.
The default value is View Count.
This field applies only when Manually select or Dynamic query is selected from
Display articles.

Sort Order The order in which knowledge articles appear on the widget. By default, the order
is z to a
The available options are:
• z to a
• a to z
This field applies only when Manually select or Dynamic query is selected from
Display articles.

Note: Currently, if you select None, the order is set to z to a.

Presentation fields on the Instance form
Instance
option

Description

Title

Required title of a Portal Knowledge Quick Links widget. The default text is
Article Quicklinks.

Behavior fields on the Instance form
Instance option

Description

Show Carousel

Option to switch between carousel view and grid view.

Max Quicklinks
to Display

Number of knowledge article quick links to appear by default on the widget.

Note:
The default value is 10.

Glyph

Glyph to appear on all cards chosen from a set of predefined glyphs.

Show Author

Option to display the author's name.

Show View
Count

Option to display the total number of views of an article.

Show Last
Updated

Option to display the date of the last changes made to an article.

Show Rating

Option to display the rating received on an article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1866


<!-- page 1867 -->
Behavior fields on the Instance form (continued)
Instance option

Description

The appearance of the star rating is defined by the
(glide.knowman.show_star_rating) system property.
Article View
Page

The article page that opens when the article card is accessed.
By default, this field is set to the Knowledge Article View (kb_article_view)
page.

Related topics
Portal Knowledge Quick Links widget
Add and configure the Portal Knowledge Quick Links widget
Portal Catalog Quick Links widget instance options form
The instance options enable you to configure the Portal Catalog Quick Links widget on a portal
page.
Data fields on the Instance form
Instance option

Description

Catalog Item
Table

Table from which the records shown as a card on the widget are selected.

Display Catalog
Items

Displays catalog items according to the selection.

By default, this field is set to the Item [sc_cat_item)] table.

The available options are:
• Manually select
• Dynamic query
The default selection is Dynamic query.

Note: Currently, if you select None, the selection is set to Dynamic
query.
Manually Select
Catalog Items

The catalog items to appear on the widget chosen manually from a set of
predefined catalog items that are associated with the portal.
This field applies only when Manually select is selected from Display
Articles.

Dynamic Query

Query to filter catalog records to display on the widget.
By default, this field is set to the Service Catalog items [sc_cat_item] table.
This field applies only when Dynamic query is selected from Display
articles.

Sort by

Field in the Service Catalog items [sc_cat_item] table that determines the
field by which records are sorted and displayed on the widget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1867


<!-- page 1868 -->
Data fields on the Instance form (continued)
Instance option

Description

This field applies only when Manually select or Dynamic query is selected
from Display articles.
Sort Order

The order in which the catalog items appear on a widget.
The default sort order is Z to A.

Presentation fields on the Instance form
Instance
option

Title

Description

Required title of a Portal Catalog Quick Links widget. The default text is Catalog
Quick Links.

Behavior fields on the Instance form
Instance option

Description

Show Carousel

Option to switch between carousel view and grid view.

Max Quicklinks to
Display

Number of catalog items to appear by default on the widget.

Card Display Style

The display style of a card on the widget.

The default value is 10.

The available options are:
• Thumbnail
• Icon on top
• Icon on left
• Simple text
• Title only
The default display style is Thumbnail.

Note: Currently, if you select None, the display style is set to
Thumbnail.
Catalog Item page

The Catalog item page that open when the catalog item is accessed.
By default, this field is set to the Service Catalog items [sc_cat_item]
page.

Related topics
Portal Catalog Quick Links widget
Add and configure the Portal Catalog Quick Links widget

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1868


<!-- page 1869 -->
Portal Data List widget instance options form
The instance options enable you to configure the Portal Data List widget on a portal page.
Data fields on the Instance form
Instance
option

Description

Data

Defines the configuration of different categories in the navigation within the widget.

Dynamic Option to display records dynamically based on the configuration provided in the
data list parameter of a portal page URL.

Note:
• The configuration enables administrator to display records from any tables
by passing following URL parameters: table, filter, sort order, view, and target
view page.
• When the Dynamic data list is selected, the JSON configuration in the Data
field is not available.

Presentation fields on the Instance form
Instance option

Description

Categories heading

Required title for all categories. The default text is Categories.

Behavior fields on the Instance form
Instance option

Description

Layout

Layout type of the case records and their details displayed in the widget.
The available options are:
• List view (for both desktop and mobile)
• Card view (for both desktop and mobile)
• List view (for desktop) & Card view (for mobile)

Note: Currently, if you select None, the layout is set to List view
(for desktop) & Card view (for mobile).
The default configuration is List view (for desktop) & Card view (for
mobile).
Number of records
per page (Desktop)

The number of cases to appear by default on the widget in the desktop.
The default value is 20. The maximum value is 1000.

Number of records
per page (Mobile)

The number of cases to appear by default on the widget on a mobile
device. The default value is 8.

Show search

Option to display a search field in the widget.

Show export actions Option to enable the export of records in pdf, Excel, and csv formats.
Categories
condition script

Script to show or hide the data list category on the widget. For more
information, see Hide or show categories in the Data List widget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1869


<!-- page 1870 -->
Behavior fields on the Instance form (continued)
Instance option

Description

The default script is DataListCategoryConditionScript.
Related topics
Portal Data List widget
Add and configure the Portal Data List widget
Hide or show categories in the Data List widget
Portal FAQ widget instance options form
The instance options enable you to configure the Portal FAQ widget on a portal page.
Data fields on the Instance form
Instance
option

Table

Description

Table from which the records shown as frequently asked questions (FAQs) on the
widget are selected.
By default, this field is set to the Knowledge [kb_knowledge] table.

Question The field of the table set in the Table field that contains the questions.
Field
Records with an empty question field aren't displayed on the widget.
Answer
Field

The field of the table set in the Table field that contains the answer.

Query

Query to filter FAQs.

Records with an empty answer field aren’t displayed on the widget.

If this field is empty, the widget displays all the FAQs.
You can include fields from the provided table only in the encoded filter query. For
more information, see Generate an encoded query string through a filter
Sort by

Field in the Knowledge [kb_knowledge] table that determines the field by which
FAQs are sorted and displayed on the widget.
By default, the field is set to View Count.

Sort
Order

The order of the FAQs on the search result page on the widget.
The available options are:
• z to a
• a to z
The default order is z to a.

Note: Currently, if you select None, the order is set to z to a.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1870


<!-- page 1871 -->
Presentation fields on the Instance form
Instance
option

Title

Description

Required title of a Portal FAQ widget. The default text is Frequently Asked
Questions.

Behavior fields on the Instance form
Instance option

Description

Display search

Option to display a Search field on the widget.

Search Bar
Placeholder text for the search field label. The default text is Search FAQs.
placeholder text
FAQ View Page

The article page that opens when the Read more option is selected by the
user.
By default, this field is set to the kb_article_view.

FAQ per page

The number of FAQs to appear by default on the widget.
The default value is set to 5.

Browse Options The filter options that appear in the widget and can be selected by the user.
The available options are:
• Knowledge Category
• Related products
The default option is Knowledge Category.

Note: Currently, if you select None, the filter option is set to
Knowledge Category.
Show Read
More

Displays the entire content of an article when the related FAQ is accessed on
the widget.
The available options are:
• Always: Display the Show Read More option on a widget for both complete
and incomplete preview content
• Exceeds preview: Display the Show Read More option only when the
article content exceeds the preview limit on the widget
The default option is Exceed preview.

Note: Currently, if you select None, the filter option is set to
Knowledge Category.
Related topics
Portal FAQ widget
Add and configure the Portal FAQ widget
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1871


<!-- page 1872 -->
Portal Object widget instance options form
Instance options enable you to configure the Portal Object widget on a portal page.
Data fields on the Instance form
Instance
Description
option

Table

Table from which the fields of the selected record are shown as cards on the widget.
The default table is the Asset [alm_asset] table.

Record

The system identifier (sys_id) of the record from the specified table.
The default sys_id is 00a96c0d3790200044e0bfc8bcbe5dc3.

Note: Note:
• If this field is empty, the widget displays information based on the sys_id
parameter provided in the portal web page URL.
https://<instance-url>/<portal-id>?id=<page-id>&sys
_id=<record-id>
• If the sys_id is provided in both the portal web page URL and the Record field,
the widget displays information based on theRecord field value.
• The sys_id of a record should be taken from the table specified in the Table
field.

Behavior fields on the Instance form
Instance
option

Card title

Description

Fields of the selected record from the specified table to be displayed as the card
title in the widget.

Note: You can select up to three fields from the defined table. They’ll
be combined to form a title for each record displayed on the widget. For
example, if you combine the Asset tag, Model category, and Display name
fields of a record from the specified table, the card title would be "P1000479
Computer Apple MacBook Pro 15."
Image
field

The name of the field of the selected record that contains an image to be displayed
as an image on the card.

Image
style

The display style for an image inside the widget. The available choices are:
• Thumbnail
• Avatar
The default display style is Thumbnail.

Summary Fields from the specified table whose name and value are displayed as field value
view fields pairs on the card in the desktop view.
(Desktop)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1872


<!-- page 1873 -->
Behavior fields on the Instance form (continued)
Instance
option

Description

Summary Fields from the specified table whose name and value are displayed as field value
view fields pairs on the card in the mobile view.
(Mobile)
Details
view

Field value pairs and sections from the specified table to be displayed when the
View all option is selected on the card.

Actions

The actions to appear on the card, which are chosen from a set of predefined
actions. The title field from the specified table is used as the display name of the
actions.

Note:
• If you select multiple actions, the button label displays Actions.
• If one action is selected, the actions button displays the name of that
action.
• If no action is selected, the actions button isn’t displayed on the card.
Enable
Option to display the service definitions associated with the record under Actions.
Service
For details, see Service definitions.
Definitions
Enable
Editing
Record

When enabled, users with edit permissions see Edit details button as one of the
Actions. On selecting it users are navigated to a form page with the default view to
edit the record details.

Portal Taxonomy Topic widget instance options form
Instance options enable you to configure the Portal Taxonomy Topic widget on a portal page.
Presentation fields on the Instance form
Instance
option

Title

Description

Required title of a Portal Taxonomy Topic widget. The default text is Browse
topics.

Description Required subtitle that appears below the title. The default text is Navigate
through topics to explore our services and resources.
Behavior fields on the Instance form
Instance option

Description

Max topic cards
to display

Number of topic cards to appear by default on the widget.

Display icon for
topics

Option to display an icon for the taxonomy topics.

The default value is 8.

By default, the card displays an icon for topic cards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1873


<!-- page 1874 -->
Behavior fields on the Instance form (continued)
Instance option

Description

Display topic
description

Option to display the description for the topic.

Button label

Name for the View all button.
The default text is View all.

Browse taxonomy The page ID of a portal page that opens when a topic card is accessed in
page
the Portal Browse Taxonomy widget.

JSON parameter in Configurable Portal Widgets
JSON parameter in Configurable Portal Widgets
Portal Banner widget JSON parameters
JSON parameters define aspects of the Portal Quick Links widget on the Portal Banner widget.

Note: This information assumes that you’re familiar with the JSON code format.
JSON parameters
Parameter

Description

widget_title

Required title of the widget. The default text is Quick Links.

card_display_style The style of a card tile for quick links inside the Portal Banner widget.
The available options are:
• Thumbnail
• Icon on top
• Icon on left
• Title & description only
• Title only
The default display style is Thumbnail.

Note: Currently, if you select None, the style is set to Thumbnail.
show_carousel

Option to switch between carousel view and grid view.

quick_links

Name of the field in the presentation section. The default text is Quick
Links.

Portal Data List widget JSON parameters
JSON parameters define aspects of the Portal Data list widget on the portal page.

Note: This information assumes that you’re familiar with the JSON code format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1874


<!-- page 1875 -->
JSON parameters
Parameter

Description

categories

Each category displays a set of records
from the Customer Case View Case
[sn_customerservice_case] table that meets the
filter criteria.
For each category, you can choose from
pre_defined_filters and run_time_filters predefined
filter tabs, set the columns for the list view, and
determine the fields to be shown in the card view.

ID

A unique identifier that enables the categories
condition script to determine whether to show or
hide categories on the widget.

label

Name of the category that appears on the
navigation pane.
If a label isn’t entered, the category doesn't appear.

table

The table from which the records are shown on the
widget when a category is selected.
By default, this field is set to the Case
[sn_customerservice_case] table.

list_view

The name of the view that defines the list of
columns or fields to appear on the widget.
For more information on these views, see Create
and delete views .
If no value is provided, all columns are shown.

card_view_primary_column

A field from the defined table to be displayed in the
first column of a card. For example, you can show
the case number in the first column.

card_view_secondary_column

A field from the defined table to be displayed in
the second column of a card. For example, you can
show short description of the case record.
This parameter is optional.

card_view_additional_columns":"column1| Field pairs from the defined table to be displayed
column2|column3|column4
as additional columns of a card.
You can add a maximum of four additional columns.
This parameter is optional.
query":"active=true"

Query to filter the records that display under the
category.
If no value is provided, all records are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1875


<!-- page 1876 -->
JSON parameters (continued)
Parameter

Description

glyph":"glyph_name"

The glyph to appear on the left of the category label
in the navigation pane.
The glyph name provided should be from the fontawesome library, which can be accessed at the
following URL:
https://fontawesome.com/v4/icons/
The currently supported version of the fontawesome library is v4.7. If you use a glyph name
from a different version, the image will not appear
correctly.

Note: If both a glyph and an image are
defined, the image is displayed.
This parameter is optional.
"image_name":"file_img"

An image to appear on the left of the category.
The image name should be selected from the
Images [db_image] table.

Note: If both a glyph and an image are
defined, the image is displayed.
This parameter is optional.
record_view_page

The Service Portal that displays the page with
details of any record accessed in the widget.
This parameter is optional.
By default, this field is set to the Case (csm_ticket)
page.

pre_defined_filters
"filter_name":"Value",

Display cases which are in New, Closed, Open, or
Awaiting Info state in any selected category. These
filters appear as tabs in the widget. Only Open and
Closed case are included by default in the JSON
code. The available values are:
• filter_name: Name of the filter tab
• Value: Name of the case state such as New,
Closed, Open, or Awaiting Info.
This parameter is optional.

run_time_filters

Displays column and its fields from the defined
table as runtime filters in a drop-down list. These
runtime filters filter the case records displayed
in the widget based on different fields from the
defined table. For example, you can display Priority

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1876


<!-- page 1877 -->
JSON parameters (continued)
Parameter

Description

as a column and State, Contact, or Updated as
fields.
If the runtime filters values are not provided in the
column and selection_type parameters, the filter
icon will not appear for the category.
This parameter is optional.
selection_type

Display the type of selection. The available options
are:
• Single select: Single selection for the filter
column
• Multi select: Multiple selection values for the filter
columns

values
"value":"4"

Values from the defined table for the column
parameter. The available values are:
• Label: Name of a value
• Value: Integer value of a field

"ranges":
"label":"Last Month", "query":"<Range
condition>",

Used to filter the records using a query defined in
label and query parameters. For example, you can
display case records that have been updated in the
last month, last 3 months, or last 6 months.
The range configuration is:
• Label: Name of the filter option
• Query: Query that defines a set of values
grouped under a label
This parameter is optional.

"role_based_views":
{
"field_service_agent_view":
"snc_field_technician",
"agent_case_view":["snc_cus
tomer_service_agent","snc_m
anager"]
}

Used to display data list according to the role of the
logged in user.
List the roles in an array to map multiple roles to the
same view. All roles in that array share the same
view.
For example, if you want both support agents
and service managers to see the same
case view, assign the same view (such as
"agent_case_view") to both roles within an
array.
When a user has multiple roles the system uses the
first matching view it finds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1877


<!-- page 1878 -->
JSON parameters (continued)
Parameter

Description

This parameter is optional.
"guest_view":"viewname

Used to display items for guest users or not logged
in users. Map the view you wish to display for the
guest users.
To make the items available to guest users, you
must set these to public:
• Portal Data List widget.
• Page containing widget (For example, Cases and
Tasks)
• Page content instance
For details, see Configure public access on the
Portal Data List widget.
This parameter is optional.

"sort_by":"<column name>"

Used for first‑load sorting of Data List.
This parameter is optional.

"sort_order":"<asc/desc>"

Order of sorting the data list. Default is ascending.
This parameter is optional.

Related topics
Add and configure the Portal Data List widget
Portal Footer widget JSON parameters
Use the JSON parameters to define aspects of the Portal Footer widget on the portal page.

Note: This information assumes that you’re familiar with the JSON code format.
JSON parameters
Parameter

Description

org_info

The company name and address to appear on the portal footer.

copyright

Copyright information to appear on the portal footer.
You can display copyright symbol, the year of copyright, and the
name of the copyright holder or organization in the footer.

logo_img_name

The image that can be displayed as a logo in the footer.
The image name should to be accessed from the Images
[db_image] table.

logo_alt_text

Alternate screen-readable text that describes the brand logo in
the footer for accessibility purposes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1878


<!-- page 1879 -->
JSON parameters (continued)
Parameter

Description

sitemap_links_menu_sys_id The system identifier (sys_id) of the menu record is used to
display sitemap links in the Portal Polaris Footer widget. You can
create a menu record and map it to the sitemap links by including
its sys_id in the JSON code. For more information on how to
create a menu record, see Menu Item form .
footer_links_menu_sys_id

The system identifier (sys_id) of the menu record is used to
display footer links in the Portal Polaris Footer widget. You can
create a menu record and map it to the footer links by including
its sys_id in the JSON code. For more information on how to
create a menu record, see Menu Item form .

social_links_menu_sys_id

The system identifier (sys_id) of the menu record is used to
display social links in the Portal Polaris Footer widget. You can
create a menu record and map it to the social links by including
its sys_id in the JSON code. For more information on how to
create a menu record, see Menu Item form .

Script parameters for the search option in the Portal Banner widget
Description of the JSON parameters for the search option in the Portal Banner widget.
JSON parameter and description
Parameter Description

Title

Text to appear in the search field before a user starts typing.

Size

Determines the font size and height of the widget. The permitted values are xs, sm,
md, and lg.

Color

Color of the search button provided in hex code. The default value is ‑FFFFFF
(white).

Default highlight color for different case states
Default values for the background and text color for all case states on the Portal Case Cards
widget.
Default background color for all case states
State name

Default value

Color

New

‑CBE9FC

Pale blue

Open

‑D1D2EE

Pale purple

Awaiting Info

‑FBF7BF

Pale yellow

Resolved

‑D2EABC

Celadon green

Closed

‑C2C4CA

Grey

Canceled

‑FFCCD2

Salmon pink

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1879


