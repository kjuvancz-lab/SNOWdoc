# Zurich Customer Service Management — Communities

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2335–2435 of 2452

Sections: Communities (p2335); Exploring Communities (p2336); Configuring communities (p2337); Using communities (p2386)

---

<!-- page 2335 -->
If you do not add triggers, the workflow executes only in response to users' requests for help.
6. Select channels and status.
Select the channels where you want this agentic workflow to be available for users.
◦ Engage via the Now Assist panel: When users send a message to Now Assist, they can
discover and use this workflow.
◦ Engage via UI actions on specific records: When users select a UI action displayed on
certain records, this workflow is activated.
7. Select Save and test.

Communities
®

With the ServiceNow Communities application, connect, engage, and collaborate with your
employees, customers, partners, and prospects. Your users get quick responses to their issues
by posting questions, reviewing blogs or videos, and searching for previous discussions. It is
an essential component of your self-service strategy along with Knowledge Base and Service
Catalog.

Explore

Set up

Administer

• Activate Communities
plugins

• Create a forum

• Community content types
• Configure community
forums

• Properties installed with
Communities

• Forum and user permissions
management

• Community setup guide for
admins

• Communities roles

• Community subscriptions
• Gamification

• Create a forum user
• Create a forum permission
• Invite users to become
members of a forum
• Configure the community
profile
• Enable users to self-register
to a community

• Domain separation and
Communities

• Enable knowledge
harvesting
• View the Communities
performance dashboard
• Configure announcement
for community members
• Moderate a community
• Administer gamification

Use

Develop

Troubleshoot and get help

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2335


<!-- page 2336 -->
(continued)
• Community homepage
features for logged in users
• Request membership to a
forum

• Developer training
• Developer documentation

• Search the community
• Subscribe to content
• Ask a question in the
community

• Search the Known Error
Portal for known error
articles
• Contact Customer Service
and Support
• Ask or answer questions
in the ServiceNow
Community .

• Post a blog in the
community
• Post a video in the
community
• Post a document in the
community
• Post a community event
• Bookmark community
content
• Provide feedback on
community content
• Report inappropriate
community content
• Manage your community
profile
• Follow a community user
• Harvest knowledge from a
community
• View a list of questions and
create a case
• Moderate gamification

Exploring Communities
Explore various aspects of communities.

Domain separation and Communities
Domain separation is unsupported in Communities. Domain separation enables you to separate
data, processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2336


<!-- page 2337 -->
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Configuring communities
Configure various aspects of Communities based on the specific requirements of your
organization.

Community content types
There are seven supported content types: Answer, Blog, Comment, Document, Event, Question,
and Video.
Community administrators and forum administrators can configure content types at the
community and forum levels.
User access to content is based on the permissions that users have. Community users can add
content to the different content types and provide feedback on the content.
Content types
Content type

Description

Question

Post a question about an issue or a challenge
and get answers from other users. You can
submit your question on the Community
homepage and choose a forum or a topic to
post it in. A question can be tagged to more
than one topic.

Answer

Reply to a user question or another answer
with a possible solution or statement.

Blog

Post a blog on a topic of interest to share
with other users. You can include images and
videos.

Comment

Enter a comment to express an opinion or to
react to a video or a blog.

Video

Upload a video on a topic of interest for other
users. Videos appear as web URLs that link
to the most popular video sites. Communities
supports playback from:
• YouTube – youtube.com
• Vimeo – vimeo.com
• DailyMotion – dailymotion.com
• Facebook – facebook.com

Note: Videos can be included in other
types of content, including questions,
answers, blogs, and comments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2337


<!-- page 2338 -->
Content types (continued)
Content type

Description

Document

Post a document to share with other
community members. You can post your
document from within a forum, choose a topic
to post it in, and tag it to more than one topic.

Event

Create an event that other community users
can register for and attend.

Configure blog publish schedule
Configure the publishing interval to ensure blogs are published closer to the scheduled time.

Before you begin

Role required: sn_communities.admin

About this task

The default interval for publishing blogs is 30 minutes. You can configure a shorter time so that
the blog is published approximately around the scheduled time.

Procedure
1. Navigate to All > System definition > Scheduled Jobs.
2. Search and select Publish scheduled content in the name column.
3. Set the required time in the Repeat interval field.
Keep the time short (for example, 5 minutes) to reduce the delay in publishing blogs from the
scheduled time.
4. Click Update.

Community feedback types
There are two supported feedback types: Upvote and Helpful.
Community users can provide feedback on the content they have access to in the community.
Feedback types
Feedback type

Description

Helpful

Helpful feedback is associated to the following
content types when a community users marks
content as helpful: Blog, Video, Documents,
Answer, Comment.

Upvote

Upvote feedback is associated to the Question
content type when a community user marks a
question as helpful.

Community access types
Access types are used to control access to a forum or a content type.
You can define the access types for a forum and a content type in a permission. There are four
access types available by default.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2338


<!-- page 2339 -->
Access types
Access type

Description

Forum Admin

Applies to forums.

Forum Moderator

Applies to forums.

Content Read

Applies to all content types.

Content Write

Applies to all content types. Content Read
access is automatically included in Content
Write.

Note: It is not recommended that you create your own access types. Advanced
knowledge of Communities architecture and scripting code to support and interpret the
new access type is required.
Contact Customer Service and Support for further information.
To see all available access types, navigate to Community > Administration > Access Types.

Platform Analytics Solutions for Communities
This Platform Analytics Solution contains preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.
Use the Performance Analytics widgets on the dashboard to visualize data over time, analyze
your business processes, and identify areas of improvement. With solutions, you can get value
from Performance Analytics for your application with minimal setup.

Note: Solutions include some dashboards that are inactive by default. You can activate
these dashboards to make them visible to end users according to your business needs.
For unlimited access to all features of this Platform Analytics Solution, purchase a
Performance Analytics subscription. For more information, see Activating your Performance
Analytics subscription .
To enable the solution for Communities, an admin navigates to System Definitions > Plugins and
activates the Performance Analytics - Content Pack - Communities plugin.
Related topics
Activate your Performance Analytics subscription
View the Communities performance dashboard
The Communities dashboard displays up-to-date status on community usage, membership,
content type and activity, and trends by forum and by topic.

Before you begin

Role required: pa_admin

Procedure
1. Navigate to All > Performance Analytics > Dashboards.
2. In the list, select Community > Communities Dashboard.
On dashboard tabs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2339


<!-- page 2340 -->
◦ Content types are question, answer, comment, blog, video, or document.
◦ "Social activity" is any response (answer, comment, blog, video, or document) to a topic that
is added by a user other than the originator.
◦ Content score data is for content created during the last 30 days.
◦ Click a scorecard to view detailed data or a trend chart.
Tabs shown in the Performance dashboard
Overview tab

Scorecards
In each scorecard, the percentage change in the current period
appears under the total over the lifetime of the community.
◦ Number of current members and total number of questions.
◦ Percentage of questions that have been marked as Solved by
the user who asked the question.
◦ Percentage of questions that have not been answered.
◦ Total number of attachments (blogs, videos, and documents).
Charts
◦ Community Activity: new community members and total
sessions for the month.
◦ New content of any type.
◦ Top 3 Forums and Topics by Social Activity: Topics and
forums that have received responses from other members.
Hold the cursor over an area to view the count of activity.

Content Analytics tab

For any chart, you can focus on the most popular content types,
forums, or topics by selecting a Breakdown.
◦ New content and count of active members who contributed
content for the most recent months for the selected
breakdown.
◦ The top 10 items with the highest number of views for the
selected breakdown.

Forum Analytics tab

◦ Heat maps display data for Content (total current content
volume), Views (total unique user views), and Social Activity.
Forums are listed on the vertical axis and content types
appear on the horizontal axis.
◦ Additional KPIs: key performance indicator data for forums.

Topic Analytics tab

◦ Heat maps display data for Content (total current content
volume), Views (total unique user views), and Social Activity.
Topics are listed on the vertical axis and content types
appear on the horizontal axis.
◦ Additional KPIs: key performance indicator data for topics.

Admin Analytics tab

Heat maps display data for Number of Posts Moved and
Featured Content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2340


<!-- page 2341 -->
Related topics
Performance Analytics scorecards
Performance Analytics widgets
Communities dashboard
The Communities dashboard displays up-to-date status on community usage, membership,
content type and activity, and trends by forum, topic, and admin.
Access the dashboard by navigating to All > Platform Analytics > Dashboards. On the
dashboard page, search Communities Dashboard.
Overview tab

Content tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2341


<!-- page 2342 -->
Forum tab

Topic tab

Admin tab

End user and roles
End user

Required role

Community moderator

sn_communities.community_moderator

Moderation administrator

sn_communities.moderation_admin

Community administrator

sn_communities.admin

Forum administrator

sn_communities.forum_admin

Forum moderator

sn_communities.forum_moderator

Content creator

pa_viewer, pa_admin

Indicators
The Communities dashboard presents the following key performance indicators:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2342


<!-- page 2343 -->
# of members
Total number of members.
# of Questions
Number of questions created in the last 30 days.
% Marked as Solved
Number of questions created in the last 30 days, which are marked as solved.
% Not Answered
Number of questions created in the last 30 days, which were not answered.
# of Blogs, Documents, and Video
Number of blogs, documents, and videos created in the last 30 days.
Non-question content
Number of blogs, videos, and documents posted.
% With activity
Percentage of primary or secondary community content with at least one response
or feedback.
Avg. # of social activities per content
Average number of activities (mark as helpful, upvote, comments, and replies) on
any active primary or secondary community content.
# of contributors
Number of contributors.
New content this month
Number of new content posts in the last 30 days.
Avg. # of views per content
Average number of views of the content.
Avg. # of comments per content
Average number of comments of the content.
# of featured content
Number of content posts that have been featured.
# of Content moved from activities
Number of content posts moved from activities.
# of Content moved to activities
Number of content posts moved to activities.

Breakdowns
The following breakdowns apply to the indicators on the dashboard:
• Communities Content Type
• Communities Forum
• Communities Topic

Data visualizations
The dashboards include the following visualizations:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2343


<!-- page 2344 -->
Title

Type

Description

Community Activity

Column

View the number of new
community members and total
of sessions on the community
per month.

New Content by Month

Column

View the number of new
content posts per month.

Top 3 Forums by Social
Activity

Pie

View forums that have
received responses from
other members. Social activity
is any response (answer,
comment, blog, video, or
document) to a topic added by
a user other than the user that
originally posted the content.

Top 3 Topics by Social Activity

Pie

View topics that have received
responses from other
members.

New Content by Month

Single Score

View the amount of new
content, forums, or topics
created per month.
For any chart, you can focus
on the most popular content
types, forums, or topics by
selecting a Breakdown.

Total Content Views

Column

View the number of views for
each content type per month.

Forum KPIs

Single Score

View different indicators for
the forums.

Topic KPIs

Single Score

View different indicators for
the topics.

Number of Contents Moved

Single Score

View the number of content
posts that have been moved
by community administrators
and community moderators
per month.

Featured Content

Single Score

View the number of posts
featured by different users per
month.

Migrate Social Q&A data to Communities
If you want to migrate existing Social Q&A content to Communities, you can use a script to
migrate the data.

Before you begin

Role required: sn_communities.admin
The Customer Communities plugin (com.sn_customer_communities) must be activated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2344


<!-- page 2345 -->
Procedure
1. Navigate to All > System Definition > Fix Scripts.
2. Search for the script Migrate Social QA to Community and open it.
3. To enable the script, select the Active check box and click Update.
The script is deactivated by default.
4. Click Run Fix Script.
The Run Fix Script popup appears.
5. Click Proceed in Background.
Always use this option for long-running scripts, or if you do not know the expected execution
time.
6. Check the status of the fix script and review the results from the Show Progress Workers
related list.

What to do next

Verify the following information.
• A new forum is created for every knowledge base that has Social Q&A content.
• All questions, answers, comments, helpful votes, and upvotes are migrated.
• All view counts, answer counts, and comment counts are migrated.
• The accepted solution to a question in Social Q&A is Marked as Correct Answer in
Communities.
• Social Q&A is deactivated for every knowledge base that contained Social Q&A data. Social
Q&A content is no longer visible for these knowledge bases.

View community logs
Community logs display information about who has viewed or searched for content in a
community. The list view displays all log entries, unless filtered.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > Administration > Search Logs or View Logs.
2. View the logs.
Community logs
Log

Description

Search Log

View who has searched for what and where in the community.

View Log

View who has viewed what and where in the community.

View community feedback and bookmarks tables
View feedback and bookmarks tables to view which community content was given feedback or
was bookmarked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2345


<!-- page 2346 -->
Before you begin

Role required: sn_communities.admin, sn_communities.community_moderator,
sn_communities.moderation_admin, sn_communities.forum_admin, or
sn_communities.forum_moderator

Procedure
1. Navigate to All > Community > Feedback.
2. Choose one of the following options.
◦ Click Feedback to view the content feedback was given for, the type of the feedback, and
who provided it.
◦ Click Bookmarks to view the content that was bookmarked and who added it.

Create a case from a discussion
In order to engage your internal experts to reply to discussion threads, you can create cases
directly from community questions.
Creating cases from community questions requires activation of the Customer Service
Management (com.sn_customerservice) plugin.
This feature is available for questions that have been posted by community users who are also
contacts or consumers in the Customer Service Management application. Questions can be
either answered or unanswered.

Note: Cases can be created only from questions.
Two sets of users can create cases from questions:
• Customer service agents, consumer service agents, and customer service managers.
• Users with the sn_customerservice.proxy_case_creator role. Community administrators and
community moderators inherit this role.
Administer create case from discussion
Configure parameters for the case generated from the community discussion so that it can be
routed accordingly.
Creating a case from a discussion requires a configuration that maps information from the
question in the community to fields on the Case form. The Create Case configuration is included
with the feature. This configuration defines the source and destination tables and maps
source fields to destination fields. This configuration is stored in the CSM Table Map table
[csm_table_map]. The system administrator can modify this configuration as needed.
The Create Case configuration uses the Social Q&A Question table [kb_social_qa_question]
as the source table and the Case table [sn_customerservice_case] as the destination table. It
includes the following mapping information.
Mapping information configuration form
Question information

Case information

Question

Short description

Question author

Contact or consumer

Question author's account

Account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2346


<!-- page 2347 -->
Mapping information configuration form (continued)
Question information

Case information

Opened by

Logged in community user

Priority

Low (priority = 4)

Channel

Community

To create additional mapping between these tables, add the additional fields to the Create Case
configuration in the CSM Table Map table. Include these fields as needed on the Create case
from question record producer.

Enable knowledge harvesting
Configure knowledge harvesting from a community to convert unstructured conversations to
structured knowledge articles and make the information more accessible.
Community administrators perform the following tasks to configure knowledge harvesting.
• Enable the Knowledge Management Service Portal plugin (com.snc.knowledge_serviceportal).
• Add a knowledge base to a forum to store the knowledge article in a specific knowledge base.

Note: You can only add one knowledge base to a forum. The same knowledge base can
be used for multiple forums.
• Add a knowledge category to a forum topic to categorize the harvested content.

Activate Communities plugins
Activate the Customer Communities plugin to use the Communities application.

Before you begin

Role required: sn_communities.admin

About this task

Communities is available for customers who are:
• Licensed for the Customer Service Management application.
• Licensed for HR Service Delivery.
To activate Communities, activate the Customer Communities plugin
(com.sn_customer_communities). This plugin is not active by default.
When you activate the Customer Communities plugin, the following plugins automatically
activate:
• External User Registration plugin (com.sn_external_user_register)
• Communities plugin (com.sn_communities)
• Gamification plugin (com.snc.gamification)
• Subscriptions and Activity Feed Framework plugin (com.snc.activity_subscriptions)
To activate Communities demo data, activate the Communities Demo Data plugin
(com.sn_communities_demo).
To activate the Communities dashboard, activate the Performance Analytics — Content Pack —
Communities plugin (com.snc.pa.communities).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2347


<!-- page 2348 -->
Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.sn_communities.
3. Click Install.
4. Click Activate on the Activate Plugin pop-up window.

Community setup guide for admins
Define your requirements with community and forum stakeholders and set up your forums for
community users to start creating content.

Requirements
The roles required to define requirements and set up forums include sn_communities.admin or
sn_communities.forum_admin.

Before you begin
Meet with the stakeholders
Stakeholder and responsibility
Stakeholder

Responsibilities

Forum administrators

Define and oversee the forum
processes for day-to-day operations
related to topic creation, user
management, and moderation.

Community administrators

Configure advanced settings for
Communities features.

Community users

Contribute content in the form of
questions, answers, blogs, and
comments.

With stakeholders, determine your community requirements
• Who are the consumers of the community content?
• Which content types can users contribute?
• Who can contribute content and who should have read-only access?
• What should the names of the initial forums be?
• Within these forums, what should the names of the initial topics be?
• Which keywords should be banned?
• How should the system moderate content and users?
• What should the default notifications that users receive for various community
activities be?

What to do
Use the following steps as guidance to setting up your community.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2348


<!-- page 2349 -->
1. Create a forum user: Create a forum user to use to define memberships to a forum.
2. Create a permission: Create a permission to use to define a user's access to a forum and its
content types.
3. Add access and content types to your permission: Add access types to a permission to
determine the access that users have to certain forums and content.
4. Create a forum: Create a forum to provide a place for users to share content and configure the
forum to allow registered users to request access to join.
5. Configure content types for a forum: Configure content types for a forum to define which
types of content to use in a particular forum.
6. Create a forum permission: Create a forum permission by adding a forum user and a
permission to a forum.
If required, perform the following actions:
Invite users to join the forum
Invite users to become members of a forum to encourage greater community
involvement.
Create permission exceptions
Create a permission exception for users who require specific permissions for a
forum.
Copy permissions
• Copy permissions from a forum to copy all permissions and content types from
one forum to another.
• Copy permissions from a parent forum.
Debug user permissions
Debug user permissions to investigate and diagnose problems with user access to
forums.

Next steps
Create a topic for users to create and share content.
Add a topic to a forum so that users can associate content to that topic.
Moderate a community to set up how the system moderates content and users.

Using guided setup to implement Communities
Communities guided setup provides a sequence of tasks that help you configure Communities
on your ServiceNow instance. To open Communities guided setup, navigate to Community >
Administration > Guided Setup.
For more information about using the guided setup interface, see Using guided setup

.

Configure community content types
Configure content types, such as videos and blogs, for the community.

Before you begin

Role required: sn_communities.admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2349


<!-- page 2350 -->
About this task

You can configure content types at both the community and forum level. At the community level,
content types are active by default. Based on your requirements, you can deactivate content
types.

Procedure
1. To configure content types at the community level, navigate to Community > Administration >
Content Types.
2. Click a content type.
3. To deactivate a content type, clear the Active check box.
4. Click Update.
The content type is no longer visible to the community.
5. To configure content types at the forum level, navigate to Community > Administration >
Forums.
6. Click a forum.
7. Click the Content Types related list.
8. In the Active column, double-click a row.
9. To activate a content type, select True.
10. To deactivate a content type, select False.
Related topics
Community content types

Configure video sources for a community
Configure additional sources that can be used for uploading a video to the community.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > Administration > Video Configuration.
2. Click New.
3. On the form, fill in the fields.
For field description, see Video Configurations form fields.
4. Click Submit.

Configure community forums
A forum is a place for users to share content, exchange notes, ask and answer questions, and so
on. Before community users can contribute content, configure a forum with content types and
permissions, and create and add topics to one or more forums.

Before you begin

Role required: sn_communities.admin or sn_communities.forum
_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2350


<!-- page 2351 -->
About this task

A forum is the container for user-created content. A forum must be configured with content types
and permissions before becoming available for users to contribute content. Forums can be
organized hierarchically using the Parent field. Once forums are set up, they are visible on the
Community homepage based on user permissions.
A topic is an area of interest that users can discuss. Topics are visible from the Community
homepage and also appear within forums. They can be organized hierarchically using the Parent
field.
• The community admin creates topics and can associate a topic with one or many forums.
• Forum admins can associate topics with their own forums.
• If a user has access to a particular forum, they also have access to all its topics.

Procedure
Configure one or more of the following for community forums and topics.
Create a forum
Create a forum to provide a place for users to share content. You can configure forums for
membership that registered community users request access to join. You can also configure
forums to convert unstructured conversations to structured knowledge articles.

Before you begin

Role required: sn_communities.admin

About this task

A forum can be configured in the following ways.
Options included in the forum configuration
Public

Visible to all users, including non-logged in users. All users have content_read
access to questions and answers in public forums. Configure public forms by
adding a forum user of the type public.

Private

Visible only to users who have been assigned the required permissions in the
forum. Configure private forums by adding a forum user of the type custom and
adding specific users or user groups to that forum user.

Membership The forum title is visible to registered community users. Community users must
request membership to get full access to the content in the forum. Configure
membership forums by selecting the Enable Membership for this Forum check
box.

Procedure
1. Navigate to All > Community > Administration > Forums.
2. In the Forums list, click New.
3. Fill in the fields on the Forum New record form.
For field description, see Forum form fields.
4. To allow registered forum users to view and request to join a forum, select the Enable
Membership for this Forum check box and complete the following steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2351


<!-- page 2352 -->
a. Right-click the form header and click Save.
Two default permissions are added to the forum in the Forum Permissions related list.
▪ Default Permission for Memberships: Read and write access to questions and answers
for users who are forum members.
▪ Forum Visible: Read access to the name and description of the forum for registered users.
To access content, users must request forum membership.
b. If required, you can add a new forum permission and set it as the default using the
sn_communities.default_permission_for_forum_memberships property.
Example
If you want public users to view content in the forum to attract them to become members,
create a forum permission as follows:
▪ Forum User: Public.
▪ Permission: Question & Answer Read.
c. In the Approval Flow for Membership field, perform one of the following options.
Option

Description

Leave the Approval Flow for Membership
field blank.

Membership requests to the forum are auto­
matically approved.

Select the preconfigured approval flow Fo­
rum Membership Approval.

A task is created and sent to the community
or forum administrator for approval.

Select a flow that you have created.

A task is created and sent to the users de­
fined in your flow for approval.

5. Click Update.
Related topics
Add a topic to a forum
Configure community content types
Create a forum permission
Configure content types for a forum
Define which types of content to use in a particular forum and associate a workflow so that
content is reviewed before becoming visible to other community users.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click a forum.
3. In the Content Types related list, click New.
4. In the Content Types list, select a Content Type.
5. Select an Approval Flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2352


<!-- page 2353 -->
If you signed up before the Zurich release you will see two fields, Approval Flow and Approval
Workflow. You are recommended to set only one of them. The Approval Flow field setting
takes precedence if both are set.
6. Click Submit.

Result

The selected content type is added to the Content Types related list in the forum. The following
secondary content types are automatically added when creating a primary content type.
Content types included in a forum
Primary content type

Secondary content type

Question

Answer

Blog, Document, Event, Video

Comment

Invite users to become members of a forum
Invite users to become members of a particular forum to encourage greater community
involvement.

Before you begin

Role required: sn_communities.admin or sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Forums.
2. Choose a forum from the list that has been configured for membership.
3. Select the Invite Users to Join this Forum related link.
4. Complete the following steps to invite internal and external users.
a. If the users to send the email invitation to are internal, click Edit Users.
b. If external user registration is enabled, the Enter email address field is shown.
Enter the email addresses of the external users to send the email invitation to.
You can enter both internal and external users to your email invitation.
5. Enter Comments to personalize the text in the email invitation.
6. Click Submit.
An email is generated and sent to the users in the list. The approval workflow set in the forum
determines the approval of membership from an email invitation. You can view all email
invitations in the forum on the Forum Email Invites related list.
Approve forum memberships
Manage forum membership approvals when registered community users request membership to
a forum.

Before you begin

Role required: sn_communities.admin or sn_communities.forum_admin

About this task

There are two ways of approving forum memberships.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2353


<!-- page 2354 -->
Procedure
1. Perform one of the following actions.
◦ Navigate to Community > Forums.
a. Choose a forum from the list that has been configured for membership.
b. Click the Membership Approvals related list.
◦ Navigate to Self-Service > My Approvals.
2. Accept or reject the membership requests.
Only one approval is required for each task.
Once the task has been approved or rejected, an email notification is sent to the user.
Create a topic
Create a topic for users to create and share content.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > Administration > Topics.
2. Click New.
3. On the form, fill in the fields.
For field description, see Topic form fields.
4. Click Submit.
The topic is created and added to the list of topics.

What to do next

Add a topic to a forum. For details, see Add a topic to a forum.
Add a topic to a forum
Add a topic to a forum so that users can associate content to that topic.

Before you begin

Role required: sn_communities.forum_admin

About this task

A topic can belong to more than one forum.

Procedure
1. Navigate to All > Community > Administration > Forums.
2. In the list, click the forum name.
3. Click the Forum Topics related list.
4. Click New.
5. From the Topic list, select a topic.
6. Click Submit.
The selected topic is added to the Forum Topics list in the forum. The topic is available to users
in this forum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2354


<!-- page 2355 -->
Disable topics in a community
Disable the topics feature so that no topic information is visible in your community.

Before you begin

Role required: sn_communities.admin

About this task

The administrator can change the sn_communities.enable_topics property so that all
topic information is hidden in the community. The data is not deleted.

Procedure
1. Enter sys_properties.list in the filter navigator and search for the
sn_communities.enable_topics property.
2. In the Value field, enterfalse.
3. Click Update.
◦ No topic information is displayed in the Activity Feed or Notifications and Subscriptions.
◦ No topic information is displayed on the Forums or Topics landing pages.
◦ No topic information is displayed on Gamification pages and widgets.
◦ Topic fields do not appear when creating, editing, or viewing content.
◦ Topics do not appear in the search results page.
Create a sub forum
Create a sub forum and map it to a parent forum to establish a forum hierarchy.

Before you begin

Role required: sn_communities.forum_admin

About this task

There are two ways of creating a sub forum in Communities.

Procedure
1. Navigate to All > Community > Administration > Forums.
◦ On the Forums list page, click New.
◦ Locate the forum to create a sub forum in, click its name, and then click the Sub Forums
related list.
2. Fill in the fields on the Forum New record form.
For field description, see Forum form fields.

Result

The forum hierarchy of forums and sub forums is displayed on the community home page, forum
landing page, when creating questions, blogs, or events, and in the search filters.
Move forum content
Move community content posts from one forum to another.

Before you begin

Role required: sn_communities.admin, sn_communities.community_moderator,
sn_communities.forum_admin, sn_communities.forum_moderator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2355


<!-- page 2356 -->
About this task

Access to content is based on permissions to a specific forum. If content is moved, the author
of the content and other community users might lose access to it, depending on their forum
permissions.
Note: Draft content cannot be moved. If the content type is not supported in the new
forum, it cannot be moved.

Procedure
1. Navigate to the community homepage.
2. Click the content you want to move.
3. Click ... and Edit.
4. Select the forum you want to move the content to.
5. Click Save.
An email notification is sent to the author of the content, subscribers to the content, and
subscribers to the forum.

Forum and user permissions management
Community and forum administrators can give users and groups of users different levels of
access to forums and forum content.
There are three components that make up the security settings for forums: forum users,
permissions, and forums.

Forum users
A forum user is a logical group of users, user groups, or both. This group is used to
define memberships to a forum.
Permissions
A permission is a combination of:
• access types for a forum
• access types for a given content type
Forums
A forum is the container for user-created content. A forum must be configured with
content types and permissions before becoming available for users to contribute
content.
You can create your own permission or use one of the default permissions that the Communities
application delivers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2356


<!-- page 2357 -->
Default permissions
Permission

Description

Blog Read

Read access to blogs.

Blog Read and Comment Write

Read access to blogs and write access to
comments.

Blog Write

Write access to blogs.

Blog Write and Comment Write

Write access to blogs and comments.

Default Permission for Memberships

Default permissions for forums that are
marked as Enable Membership for this
Forum.

Default permissions for public user

Public access to forums.

Default permissions for registered user

Permissions for registered and logged in
users.

Document Read and Comment Write

Read access to documents and write access
to comments.

Document Write and Comment Write

Write access to documents and comments.

Event Read and Comment Write

Read access to events and write access to
comments.

Event Write and Comment Write

Write access to events and comments.

Forum Admin

Full access to a forum.

Forum Moderator

Moderation access to a forum.

Forum Name and Description Read

Read access to the name and description of
a forum. To access content or topics, other
permissions are required.

Full Access

Write and read access to all content types.

Question and Answer Read

Read access to questions and answers.

Question and Answer Write

Write access to questions and answers.

Question Write

Write access to questions.

Video Read and Comment Write

Read access to videos and write access to
comments.

Video Write and Comment Write

Write access to videos and comments.

To assign permissions to users and user groups, create associations between forum users and
permissions for a specific forum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2357


<!-- page 2358 -->
Note: Forum permissions are not inherited in the forum hierarchy. Each subforum must be
configured with its own set of permissions and content types.
• You can use forum users and permissions in multiple forums.
• You can add multiple forum users and permissions to one forum.
• You can copy permissions from a parent forum to a child forum or from another forum
altogether.
• You can also define user-specific permission exceptions and debug user permissions.
Create a forum user
You can create forum users, which you then use to define memberships to a forum.

Before you begin

Role required: sn_communities.forum_admin

About this task

A forum user is a set of users and user groups. Forum users are reusable. Multiple forum users
can be used in any given forum.
Note: Before creating a forum user, check whether an existing forum user matches your
requirements.
Types of forum user
Public

Public users can view the community without logging in.
By default, public users have content_read access to
questions and answers in public forums.

Registered

Users who have signed up to the community and accepted
the Terms & Conditions. Once logged in, their access to
forum content depends on the permissions set up for each
specific forum.

Custom

Specific users and user groups that are added as members
to the current forum user.

Membership

A group of members who have joined a specific forum.
Once logged in, their access to forums depends on the
permissions set up for each specific forum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2358


<!-- page 2359 -->
Procedure
1. Navigate to All > Community > Administration > Forum Users.
2. Click New.
3. On the form, fill in the fields.
Forum User form
Field

Description

Name

Name of the user.

Description

Description of the user.

User type

Type of user.

4. Click Submit.
The forum user is created and added to the Forum Users list.
Add members to a forum user
Add members to a forum user. Members can be individual users or user groups.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Forum Users.
2. Click the forum user to add members to.
3. In the Members related list, click New.
4. On the form, fill in the fields.
Members form
Field

Description

Forum User

Forum user name. The name is automatically
filled.

Membership Type

Membership type. Choose either User or
Group.

Member

User or user group to add to the forum user.
If you selected Membership Type > User,
the Table name is automatically filled with
sys_user.
If you selected Membership Type > Group,
the Table name is automatically filled with
sys_user_group.
Enter your user or user group in
theDocument field.

5. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2359


<!-- page 2360 -->
Create a permission
Create a permission to use to define a user's access to a forum and the content in the forum.

Before you begin

Role required: sn_communities.admin

About this task

Permissions are reusable. Before creating a permission, check if any existing permissions match
your requirements.

Procedure
1. Navigate to All > Community > Administration > Permissions.
2. Click New.
3. On the form, fill in the fields.
Permission form
Field

Description

Name

Name for the permission.

Description

Description of the permission.

4. Click Submit.
Add access types to a permission
Access types for a permission determine the access that users have to certain forums.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Permissions.
2. In the Permissions list, click the permission you created.
3. Click the Forum Access related list.
4. Click New.
5. Select an access type.
6. Click Submit.

What to do next

Create a forum permission.
Related topics
Community content types
Community access types
Add content types to a permission
Content types for a permission determine the access that users have to certain content in a
forum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2360


<!-- page 2361 -->
Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Permissions.
2. In the Permissions list, click the permission you created.
3. Click the Content Type Access related list.
4. Click New.
5. Select a content type and an access type.
6. Click Submit.
Create a permission exception
Create a permission exception for users who require specific permissions for a forum.

Before you begin

Role required: sn_communities.forum_admin

About this task

Permission exception records are created for users who require specific permissions for a
particular forum, for example, a forum manager. Any other permissions that the user has are no
longer valid once an exception is created.

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click a forum.
3. Click the Permission Exceptions related list.
The list of users who have extra permissions for this forum is displayed.
4. Click New.
5. In the User field, enter the name of the user to create a permission exception for.
6. In the Permission field, enter a permission.
7. Click Submit.
A permission exception is created and added to the list of Permission Exceptions on the
forum.
Clone a permission
Clone a permission if an existing permission record cannot be modified and you require a
permission record with similar settings.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Permissions.
2. Click the permission you want to clone.
3. Click the Clone related link.
A new permission with the same access types as the source permission is created. The
permission record name starts with Clone of.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2361


<!-- page 2362 -->
Create a forum permission
Add a forum user and a permission to a forum to create a forum permission.

Before you begin

Role required: sn_communities.forum_admin

About this task

Forum permissions are a combination of a forum, forum users, and permissions. Associate forum
users and permissions within a specific forum. You can add multiple combinations of forum users
and permissions to a forum.

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click a forum.
3. In the Forum Permissions related list, click New.
4. On the form, fill in the fields.
Forum Permissions
Field

Description

Forum

Name of the forum.

Forum Users

User or group of users to give access to the
forum.

Permission

Permission to give to the forum users in the
forum.

5. Click Submit.
Copy permissions from a parent forum
You can copy permissions from a parent forum to a child forum.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click a forum.
3. Click the Copy Permissions from Parent Forum related link.
All permissions and content types are copied from the parent to the child forum. A summary of
the results is displayed at the top of the form.

What to do next

Configure the forum users and permissions as required.
Copy permissions from a forum
You can copy all permissions and content types from one forum to another.

Before you begin

Role required: sn_communities.forum_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2362


<!-- page 2363 -->
About this task

You can copy permissions from one source forum to multiple target forums.

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click the name of the forum that you want to copy permissions from.
3. Click the Copy Permissions to Forum(s) related link.
4. On the form, fill in the fields.
Copy Permissions
Field

Description

Copy Permissions Name of the forum you want to copy permissions from. The name is
From
automatically filled.
Copy Permissions Name of the forum you want to copy the permissions to. You can enter
To
more than one forum.
5. Click Save.
Debug user permissions
Investigate and diagnose problems with user access to forums.

Before you begin

Role required: sn_communities.forum_admin

Procedure
1. Navigate to All > Community > Administration > Forums.
2. Click the name of the forum to investigate.
3. Click the Debug Forum Permissions related link.
4. Enter the name of the user you want to check the permissions for.
The forum user permissions information indicates which content and access types the user
has for a particular forum.

Configure the community profile
Set up the community profile by configuring profile fields and deciding which fields to display in
the personal information section of the community profile.

Before you begin

Role required: sn_communities.admin

Procedure
Configure one or more of the following for the community profile.
Create a persona for the community profile
Create a persona and associate it to a role to manage which data users can modify.

Before you begin

Role required: sn_communities.admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2363


<!-- page 2364 -->
About this task

A persona is associated to a user role and can be mapped to specific fields for display on the
community profile. The base system contains a default persona, which is not associated to a role
and is used for all community users. You can create a new persona or add a role to the default
persona.

Procedure
1. Navigate to All > Community > User Profile > Persona.
2. Click New and then complete the Persona form.
Persona configuration form
Field

Description

Name

A name for the persona.

Order

The order, in numerical value, in which the
system should evaluate the roles for the
persona.

Associated Role

The role to associate the persona to.

3. Click Submit.
Create a community profile field
Create a field to display on the community profile.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > User Profile > Profile Fields.
2. Click Newand then complete the Profile Fields form.
Profile field configuration form
Field Label

A label for the field.

Field Name

A name for the field.

3. Click Submit.
Configure persona field mapping for the community profile
Configure which fields appear in the community profile and manage the settings associated with
those fields.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > User Profile > Persona Field Mapping.
2. Click Newand then complete the Persona Field Mapping form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2364


<!-- page 2365 -->
Persona Field Mapping form
Field

Description

Persona

Name of the persona.

Source Value Table

Source table of the field to be added to the
persona. Any table that is used as the Source
Value Table should have a reference to the
sys_user table.

Source User Field

Field from the source value table.

Privacy Read Only

Select the check box to allow the community
user to change the display settings for this
field in their community profile.

Profile Field

Display name of the community profile field.

Source Value Field

Name of the field from the source table.

Read Only

Select the check box to not allow the
community user to edit the value of this field.

Privacy Default

Privacy default setting for the field. It shows
the field for the selected group of users.
The available options are:
◦ Everyone
◦ Everyone after logging in
◦ Only me
◦ Followers

3. Click Submit.

Create community Terms and Conditions
Community members must follow the community rules of conduct. Create community Terms and
Conditions and them share to build a successful community. Every community user must review
and accept the Terms and Conditions before contributing to a community.

Before you begin

Role required: sn_communities.admin

About this task

The Communities application includes preconfigured Terms and Conditions that you can modify
according to your needs.
You can disable Terms and Conditions using the

sn_communities.disable_terms_conditions_role property. The community profile
isn't created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2365


<!-- page 2366 -->
Procedure
1. Navigate to All > Community > Administration > Communities Terms and Conditions, click
New, and then fill in the fields.
Terms and Conditions form
Field

Description

Number

An automatically generated number for your Terms and Conditions. If required,
you can change the number.

Short
Description

A short description for your Terms and Conditions.

Content

The content of your Terms and Conditions.

2. Complete one of the following actions to save the Terms and Conditions.
To

Do this

Submit

Click Submit to save your Terms and Condi­
tions.
a. Click Activate. Your Terms and Conditions
are activated and any existing Terms and
Conditions are deactivated.

Activate

b. Select the check box on the warning mes­
sage if you want all community users who
log on to accept to the new Terms and Con­
ditions. The check box is selected by de­
fault.
c. Deselect the check box if you want users to
accept the new Terms and Conditions at a
later point in time. You can then select your
Terms and Conditions and click Prompt
users to review and accept.
d. Click OK.

You can view which community users have accepted the Terms and Conditions and when.
Navigate to Community > User Profile > Community Profiles. View or add, if necessary, the
Accepted TC, Accepted TC Date, and Accepted TC Number fields.

Enable users to self-register to a community
Once users have accessed public forums and decided they want to join the community, they can
self-register to the community. External user registration provides a way of validating users and
requires them to accept the community Terms and Conditions.
Community administrators perform the following tasks to configure external user registration.
• Configure the external user registration properties.
• Configure moderation filters to enter banned words for the user name.
• Configure the required strength for passwords

.

• Create an email template
and content. The email template that you can change is
communities.ext.regn.confirm.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2366


<!-- page 2367 -->
• If not already configured, create community terms and conditions that each community user
must review and accept. Communities delivers preconfigured Terms and Conditions that you
can modify according to your needs.
• To enable external users to update their time zone when registering, add ACLs to external
users in the User table [sys_user].

Moderate a community
Community moderators can manage content quality by reducing the inappropriate content that
is posted on the community.

Before you begin

Role required: sn_communities.community_moderator, sn_communities.forum_moderator, or
sn_communities.moderation_admin

Procedure
1. Define your requirements for Community moderation.
◦ Should first-time posters receive automatic moderation?
◦ Which words should be banned from user content?
◦ Should the system prevent content containing banned words from being posted?
◦ Should users be able to report inappropriate content?
◦ How many offenses can a user commit before the system bans them automatically?
2. Navigate to Community and choose the Moderation or Moderation Tasks menu and the
module you require.
3. Configure one or more of the following aspects for your community.
Configure general moderation settings
Configure when to moderate content for users and user groups.

Before you begin

Role required: sn_communities.admin, or sn_communities.moderation_admin

Procedure
1. Navigate to All > Community > Moderation > Moderation Settings.
2. On the form, fill in the fields.
Moderation Settings form
Field

Description

Users Never Moderated

Content is never moderated for these users.

Users Always Moderated

Content is always moderated for these users.

User Groups Never Moderated

Content is never moderated for these user
groups.

User Groups Always Moderated

Content is always moderated for these user
groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2367


<!-- page 2368 -->
Field

Description

Hide content if user violates settings

Check box to hide content written by a user
until a moderator approves it.

3. Click Update.
Configure moderation settings for a new user
Configure the system to prevent inappropriate user contributions.

Before you begin

Role required: sn_communities.admin or sn_communities.moderation_admin

Procedure
1. Navigate to All > Community > Moderation > Moderation Settings.
2. Click the New User related list.
3. On the form, fill in the fields.
Moderation Settings form
Field

Description

New User Content Threshold

Number of user posts to be moderated.

User Exception List

New users that are not included in the new
user content threshold for moderation.

User Group Exception List

User groups that are not included in the new
user content threshold for moderation.

4. Click Update.
Assign a moderation task to your assignment group
Change the assignment group to assign a moderation task to your assignment group.

Before you begin

Role required: assignment_rule_admin

About this task

A moderation task is generated when a community user reports inappropriate content or
community profiles. By default, the system assigns the task to the community moderator group.
You can also configure your system to always require content moderation for a particular user or
group.

Procedure
1. Navigate to All > Routing and Assignment > Assignment Rules.
2. On the Assignment Rules page, search and select sn_communities_moderation_task
in the Table column.
3. On the Moderation Task Assignment Group page, enter the User and Group details in the
Assign To tab.
4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2368


<!-- page 2369 -->
Configure abuse reporting
Configure whether users can report content and profile abuse, set an abuse reporting threshold,
and define reasons for abuse reporting.

Before you begin

Role required: sn_communities.admin or sn_communities.moderation_admin

Procedure
1. Navigate to All > Community > Moderation > Moderation Settings.
2. Click the Abuse related list.
3. On the form, fill in the fields.
Moderation Settings form
Field

Description

Enable Content Abuse Reporting

Check box to enable users to report
inappropriate content.

Enable Profile Abuse Reporting

Check box to enable users to report
inappropriate profiles.

Abuse Reporting Threshold

Number of abuse reports on a specific
content (question, blog, video, answer,
comment) that lead to the content being
hidden from other users.

Content Abuse Reporting Reasons List

Phrases that are possible reasons for
the user to report inappropriate content
contributions. Separate each phrase using
the pipe symbol|. For example, This content is
abusive|This content used an offensive word|
Spam|Inappropriate media.

Profile Abuse Reporting Reasons List

Phrases that are possible reasons for
the user to report an inappropriate user
profile. Separate each phrase using the pipe
symbol|.

4. Click Update.
Configure user banning
Set the number of offenses a user can make before they are banned from creating or editing
content.

Before you begin

Role required: sn_communities.admin or sn_communities.moderation_admin

Procedure
1. Navigate to All > Community > Moderation > Moderation Settings.
2. Click the User Banning related list.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2369


<!-- page 2370 -->
Moderation Settings form
Field

Description

Enable Banning Users

Check box to enable the banning of users.

Offense Threshold

Number of offenses a user can make before
being automatically banned.

4. Click Update.
Configure moderation filters
Create moderation filters to manage how content is moderated.

Before you begin

Role required: sn_communities.admin or sn_communities.moderation_admin

Procedure
1. Navigate to All > Community > Moderation > Moderation Filters.
2. Click New.
3. Click Banned Keyword Filter.
4. On the form, fill in the fields.
Moderation Banned Keyword Filter form
Field

Description

Filter Name

Name of the filter.

Active

Check box to make the filter active.

Synchronous

Check box to automatically moderate content
when it is submitted. Any content that
includes the banned words defined in the
filter is not posted.
If the check box is cleared, the system
creates a moderation task when banned
words are used. The content is visible until it
is moderated.

5. Click Submit.
6. From the Moderation Filters list, click the name of your filter.
7. Add a banned keyword word to the list:
a. In the Keywordslist, click New.
b. In the Keyword field, enter your keyword.
c. Click Submit.
d. If required, repeat to add more keywords to the list.
8. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2370


<!-- page 2371 -->
Ban a user
You can ban a user from creating or editing content, for example, a user can be banned for
posting inappropriate content.

Before you begin

Role required: sn_communities.admin, sn_communities.moderation_admin, or
sn_communities.community_moderator

Procedure
1. Navigate to All > Community > User Profile > Community Profiles.
2. On the Community Profile, search the user in the Live Profile column.
3. Hover on the user and select the Preview icon (

).

4. On the Community Profile window, select Open Record.
5. On the Community Profile page, select Ban User.
The user is banned. In the Community Profiles list, the value in the Banned column is set to
true.
Revoke a user ban
Revoke a user ban to allow a user to create and edit content again.

Before you begin

Role required: sn_communities.admin, sn_communities.moderation_admin, or
sn_communities.community_moderator

Procedure
1. Perform either of the following actions.
◦ Navigate to Community > User Profile > Community Profiles.
◦ Navigate to Community > Moderation > Users Banned by Moderation.
2. Click the Preview icon next to the user and then select Revoke User Ban.
The user ban is revoked. In the Community Profiles list, the value in the Banned column is set
to false.
Approve or reject content
Approve or reject content that a user reported as inappropriate or that is associated with a
particular community profile.

Before you begin

Role required: sn_communities.community_moderator, sn_communities.moderation_admin

About this task

A moderation task is generated when a community user reports inappropriate content or
community profiles. By default, the system assigns the task to the community moderator group.
You can also configure your system to always require content moderation for a particular user or
group.
Each task requires the moderator to approve or reject the reported item. If the moderator rejects
content, it is counted as an offense against the community user who contributed the content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2371


<!-- page 2372 -->
Procedure
1. Navigate to All > Community > Moderation Tasks > Assigned to me.
2. Click a moderation task.
3. On the form, fill in the fields.
Moderation Task form
Field

Description

Assigned to

Person assigned to the task.

Moderation Notes

Notes entered by the user when reporting the
content.

Resolution Notes

Your comment as you moderate the content.

Work Notes

Work notes entered by users working on the
task.

Approve Content

Approve content that conforms to community
rules. The content state changes to Closed
Complete.

Reject Content

Reject content or a profile. The content state
changes to Closed Complete and the content
is hidden in the community.

Note: You can review the outcome of existing and past moderation tasks by navigating

to Community > Moderation > Moderation Outcomes. Click a task to view the details of
the moderation task.
Disable comments
Disable comments on a blog, document, video, event, or question to avoid users from posting
comments.

Before you begin

Role required: sn_communities.forum_moderator, sn_communities.community_moderator,
sn_communities.moderation_admin, or sn_communities.forum_admin

About this task

There are two ways of disabling comments on the community content. You can disable
comments while posting new content or restrict users from posting comments on existing
content.

Note: You can disable replies on an existing question to restrict users from posting further
comments. You can’t post a new question when replies are disabled.

Procedure
Navigate to the community home page.
• To disable comments on new community content:
a. Choose the content type that you want to post.
b. Fill the details.

Note: Disable Comments check box is visible only after filling details on the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2372


<!-- page 2373 -->
c. Select the Disable Comments check box.
d. Select Publish.
• To disable comments on existing community content:
a. Choose the content that you want to disable the comments for.
b. Select the more options icon (

) and then selectEdit.

c. Select the Disable Comments check box.
d. Select Save.
A confirmation message appears stating that you have disabled comments. The comments on
the existing content are displayed. You can’t edit an existing comment or post a new comment.
All community and forum administrators and the content author receive an email notification
when you disable or enable comments.
Related topics
Post and respond to content in the community
Remove content
Remove content that does not meet community standards.

Before you begin

Role required: sn_communities.admin

Procedure
1. Navigate to All > Community > Content > Contents.
2. Click the content to remove.
3. Click Actions on selected rows > Delete and confirm that you want to delete the item.
Harvest knowledge from a community
Harvest knowledge from a community and create structured knowledge articles from
unstructured discussions around a question.

Before you begin

Role required: sn_communities.knowledge_harvester, sn_communities.admin, or
sn_communities.moderation_admin
Knowledge harvesting must be enabled.

About this task

You can only harvest solved questions with accepted solutions into a knowledge article.

Procedure
1. From the Communities homepage, perform one of the following actions.
◦ Go to the Content List.
◦ Click a forum.
◦ Search for a discussion thread (Question and Answer).
2. Click Question State > Solved to filter for all discussions that can be converted into knowledge
articles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2373


<!-- page 2374 -->
3. Click a question.
4. Click the ... icon and then Harvest Knowledge.
5. Fill in the fields on the Harvest Knowledge form.
Harvest Knowledge form
Field

Description

Short
description

The original question is automatically entered in the Short description field.
You can edit the short description, as required.

Attachments All attachments associated with the question and accepted solution are
automatically added to the knowledge article. You can add and remove
attachments.
Text

The body of the original question and accepted solution is automatically
entered in the Text field. You can edit the text, as required.

Knowledge
base

The knowledge base to which the knowledge article has been added. It is
added by default based on the knowledge base associated to the forum from
which article was harvested. If required, you can change the knowledge base.

Category

The category of the knowledge article. It is entered by default based on the
category associated to the topic from which the article was harvested. If
required, you can change the category.

Number

A KB (Knowledge Base) number is automatically assigned to the article. You
cannot edit the Number field.

6. Perform one of the following actions.
To

Do this

Click Publish to initiate the workflow associat­
ed with the knowledge base.
A link to the knowledge article is displayed on
the community question from which it was har­
vested.
Publish

A link to the community question and to the
community profile of the person who an­
swered the question is displayed in the knowl­
edge article.

Note: You can only see the links if you
are a logged-in community user and
have been assigned the correct permis­
sions in the forum.

Save

Click Save to save the knowledge article as
a draft. To publish the knowledge article at a
later point in time, navigate to the platform
UI and then Knowledge > Articles > Unpub­
lished.

Delete

Click Delete to delete the knowledge article
and all records associated with the KB num­
ber.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2374


<!-- page 2375 -->
Administer gamification
Users with the gamification administrator role can create the rules and other entities that award
points to users based on their participation within the community.
Configure gamification properties
Configure gamification properties to meet your company's needs.

Before you begin

Role required: sn_gamification.admin

Procedure
1. Navigate to All > Community > Gamification Administration > Gamification Properties.
2. Enter the number of days to store the gamification activity history.
The default is 180 days. A scheduled job purges the points history that is older than 180 days.
This purge does not delete the aggregated data.
3. Enter the maximum number of levels that can be defined.
4. Click Save.
Additional properties can be configured for the gamification feature. For more information, see
Gamification properties.
Create a gamification rule
Create gamification rules so that users can earn points for community activities.

Before you begin

Role required: sn_gamification.admin

Procedure
1. Navigate to All > Community > Gamification Administration > Rules.
2. Click New.
3. Fill in the fields on the Gamification Rule form as necessary.
Gamification rule configuration form
Field

Description

Rule Name

A descriptive name for the gamification rule.

Gamification The application to which this rule applies. Click the lookup icon to select a
Module
module from the Gamification Modules list. The default is Community.
Activity Type The user activity for which this rule applies. Click the lookup icon to select one
of the available types from the Activity Types list.
Profile
Receiving
Points

The type of user profile that earns points for performing the activity defined in
this rule. Click the lookup icon to select a profile corresponding to the activity.

Exclude
Self-Award

Check box to ensure that the activity performer is not the same as the profile
receiving points.

Active

Enable this check box to activate the rule. The default is set to active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2375


<!-- page 2376 -->
Field

Description

Gamification The gamification track to which this rule belongs. Click the lookup icon to
Track
select one of the available tracks from the Gamification Tracks list. By default,
two tracks are available:
◦ Community Expertise
◦ Community Participation
Points
Points for
Areas of
Expertise

The number of points earned by performing the activity defined in this rule.
The points accrued can be used towards a forum or topic level expertise. Click
the lock icon to expand the field and configure if the points should accrue
towards a forum and/or topic.

4. Click Submit.
The newly created rule appears on the Gamification Rules list. This rule appears on the How to
Earn Points page.
Create a gamification track
Create tracks to provide a logical way to separate points assigned in the communities into
different areas.

Before you begin

Role required: sn_gamification.admin

Procedure
1. Navigate to All > Community > Gamification Administration > Tracks.
2. Click New.
3. Fill in the fields on the Gamification Track form as necessary.
Gamification track configuration form
Field

Description

Track Name

A descriptive name for the gamification track.

Gamification The module to which this track applies. Click the lookup icon to select a
Module
module from the Gamification Modules list. By default the module is set to
Community.
Active

Enable this check box to activate the track. By default this field is set to active.

Application

The application to which this track applies. By default the module is set to
Community.

Track
Display
Order

The order in which the track appears.

4. Click Submit.
The newly created track appears on the Gamification Tracks list.

Note: While tracks can be configured, it is not currently displayed anywhere on the
Community portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2376


<!-- page 2377 -->
Create a gamification badge
Create gamification badges that users can earn for achievements within the community.

Before you begin

Role required: sn_gamification.admin

About this task

The gamification feature includes several predefined badges.

Procedure
1. Navigate to All > Community > Gamification Administration > Badges.
2. Click New.
3. Fill in the fields on the Gamification Badge form as necessary.
Gamification badge configuration form
Field

Description

Gamification The application to which the badge applies. The default module is
Module
Community.
Badge
Name

The name of the badge as it appears on the Community portal.

Badge
Display
Order

The order of the badge indicates the rank. If a community user has multiple
badges assigned to them, this field determines the sequence in which the
badges are displayed.

Active

Enable this check box to activate the badge.

Description

A brief description of the badge as it appears on the Community portal.

Badge Icon

The image file for the badge. Click to add the icon, choose the desired image
file, and then click OK.

Note: The recommended image size for ideal performance is 50 pixels
by 50 pixels and less than 500KB.

4. Click Submit.
The newly created badge appears on the Gamification Badges list.
Manage gamification levels
Manage the predefined levels for global, forum, and topic expertise.

Before you begin

Role required: sn_gamification.admin

About this task

Gamification includes predefined global, forum, and topic levels.

Procedure
1. Navigate to All > Gamification > Configuration > Levels.
2. View the existing definitions for global, forum, and topic levels.
3. Change the Level Name if required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2377


<!-- page 2378 -->
4. Click Submit.
Adding new level definitions is not recommended unless there is a strong use case. If you
need to add or modify level ranges in existing level definitions, see Manage gamification level
ranges.
Manage gamification level ranges
Manage level ranges for a gamification level definition, to recognize the expertise level of your
community users.

Before you begin

Role required: sn_gamification.admin

About this task

Gamification includes predefined global, forum, and topic levels. Each level definition can have
several level ranges and the system is predefined with 10 ranges for global level and five ranges
each for the forum and topic levels. Each range should not overlap and must have a unique start
value.

Procedure
1. Navigate to All > Gamification > Levels.
2. Select the desired level (global, forum, or topic).
3. Modify the Level Range Name.
4. Modify the Points Start field.
Each range should not overlap and must have a unique start value.
5. Click Submit.
Level ranges are updated on the Community portal.

Community Service Portal
The Community Service Portal is a web interface that is based on the ServiceNow Service Portal
application.
The Community Service Portal is designed to allow you to have control over the behavior of your
portal and help create an attractive and engaging user experience.
Customize Community Service Portal
Customize community service portal according to your needs.

Before you begin

Role required: admin

Procedure
1. Navigate to Service Portal > Portals.
2. Select Community.
Configure Community Service Portal header menus
Configure Community Service Portal header menus to create a consistent user experience
across all your end-user facing service portals using a modern interface and a unified navigation
menu structure.

Before you begin

Role required: The admin role for your service portal, for example, sn_communities.admin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2378


<!-- page 2379 -->
About this task

Add a theme and header menu to your service portal to define its look and behavior.

Procedure
1. Navigate to All > Service Portals > Portals and click the module for the portal you want to
modify.
2. In the information message on the Page form indicating that you have to change the current
application to edit the record, select here.
You have to be in the Communities application to edit.
3. In the Theme field, enter CSM Default.
4. In the Main Menu field, enter CSM Unified Portal Header Menu.
5. Click the information icon next to the Main menu field and click Open Record.
6. Click the Settings icon and System Settings > Developer.
7. Change the Application to Customer Service Management Unified Theme and click the
Refresh icon.
You only have to change this setting once.
The New button is displayed next to Menu Item.
8. To display the names of the menu items, personalize the Menu Items related list and add
Display name.
9. Click New from the Menu Items related list.
10. Fill in the fields on the form.
Menu Item form
Field

Description

Label

Name that appears for the item in the menu.

Parent
Menu

This field should already contain the name of the menu you are adding items to.
You can change the value as required to other menus.

Parent
Menu
Item

Use this field to nest menu items within other menu items.

Order

Value that determines where the item appears in the menu in relation to other
menu items.

Type

The kind of page the item links to. For example, you can link to another page
in the portal, or an external URL. Form fields vary depending on the option you
select from this list.

Page

Name of the portal page the item links to.

Condition Determines what conditions are required for menu items to show in the header.
Glyph

Icon that appears beside the menu item

11. Select Submit.
Configure announcement for community members
Global announcements appear in the banner and broadcast messages to all community
members. Forum announcements appear in the Announcements section on the forum page. You
can also send the announcement by email.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2379


<!-- page 2380 -->
Before you begin
Role required:

• sn_communities.admin can manage Global announcements and Forum announcements
• sn_communities.forum_admin can manage Forum announcements for own forums only. The
announcement appears only in the forum that the admin owns.

About this task

This example shows how a community user experiences announcements and how you can
configure the appearance and operation of announcements.
Community User Experience Announcements

Procedure
Navigate to All > Community > Administration > Global Announcements or Forum
Announcements, click New, and then fill in the form.
Announcement configuration form
Announcement type

Active

Read-only. Set to Global Announcement or
Forum Announcement, depending on what
you are working on.
Select the check box to publish the
announcement to members.
Clear the check box to cancel the
announcement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2380


<!-- page 2381 -->
Title

Display title of the announcement.
• The text appears above the Summary text.
• In email, the text is the subject of the
message.

Summary

Content of the announcement.
• The text appears below the Title text.
• In email, the text is the body of the message.

From / To

• From: Date and time that the announcement
should appear.
• To: Date and time that the announcement
should no longer appear.

Send email notification

Select the check box to send the
announcement to members as an email
message in addition to broadcasting the
announcement.

Display first

Select the check box to display the
announcement as the first announcement in
the list.

Public

Select the check box to enable forum
members that are not logged in to view the
announcement.

Portals

Portals that display the announcement.
Default: Community.

Note: If no value is specified, the
announcement does not appear in any
portal.
Click target

The Click target setting creates a link for the
announcement.
• None: No link.
• Page: Opens a Service Portal page in the
current browser tab.
• URL in current browser tab: Opens the
specified URL in the current browser tab.
• URL in new browser tab: Opens the
specified URL in a new browser tab.

Details URL

Details link text

If you select a URL option for Click target, then
enter the URL in the Details URL field.
Appears only if Click target is not None.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2381


<!-- page 2382 -->
• To display a link under the Summary text,
enter the text of the link in the Details link
text field.
• To use the Title text of the announcement as
the link, leave Details link text blank.
Forums

This setting appears for Forum
announcements only. Slushbucket of forums
that you are admin for.
Move a forum into the Selected list to display
the announcement on the forum.

Dismiss options

This setting appears for Global
announcements only. Determines how the
user can dismiss the announcement.

What to do next
• To update an announcement, update any setting as needed and then click Update. If you
specified Send email notification, then you are prompted to send the updated email message.
• To cancel an announcement, clear the Active check box.
Community pages that support SEO data
To improve search results for community members using external search engines, the
Communities application generates SEO meta tags and injects the tags into questions, topics,
forums, and other page types.

Note: If the auto-generated SEO tags in a page does not meet your needs, you can
change the SEO tags. See Modify SEO in community pages.

Pages that include auto-generated SEO data
The Communities application auto-generates SEO meta tags for the following pages in the
Community service portal. The table provides details on the data that is generated.
• community_question
• community_blog
• community_document
• community_video
• community_event
• community_forum
• community_topic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2382


<!-- page 2383 -->
Auto-generated SEO tags
Searchable page type

Question, Blog, Document, Video, and Event

Auto-generated tags in the page

• The title meta tag is populated with
the text “<forum name> - <content short
description>"
• The description meta tag is populated
with the text “<forum name> - <topic names>
- <first 100 characters of the body of the
content>"

Forum

• The title meta tag is populated with the
text “<forum name>"
• The description meta tag is populated
with the text “<forum description>"

Topic

• The title meta tag is populated with the
text “<topic name>“
• The description meta tag is populated
with the text “<topic description>"

Leaderboard page

The Title meta tag is populated with the text
“<community name>”

Modify SEO in community pages
If an auto-generated SEO meta tag does not meet your needs, you can modify or replace the tag.

Before you begin

Role required: sn_communities.admin

About this task

The source code for this example question page (ID community_question) shows the
description meta tag (highlighted in yellow) that the Communities application injected into
the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2383


<!-- page 2384 -->
<!DOCTYPE html><html lang="en" ng-app="sn.$sp"
ng-init="portal_id =
'5b49418bdb4aa200b1f6f78eaf96195f'" style="height: 100%"
class="page{{page.sys_id}} v{{page.sys_id}}"
data-page-id="{{page.sys_id}}"><head spmetatags=""><title>Routing and Switching - Router overheating
after firmware
upgrade - Community</title><meta http-equiv="X-UA-Compatible"
content="IE=edge;
IE=10"></meta><meta name="viewport" content="width=device-width,
initialscale=1.0, maximum-scale=1.0, user-scalable=no"></meta><meta
name="applemobile-web-app-capable" content="yes"></meta><meta
http-equiv="cache-control"
content="public"></meta><meta http-equiv="cache-control"
content="no-cache">
</meta><meta http-equiv="cache-control"
content="max-age=0"></meta><meta httpequiv="pragma" content="no-cache"</meta><meta name="description"
content=Routing and Switching - Tomahawk (5000 Series) - My 5000
series router
has been overheating since I upgraded the firmware couple of
days ago. Anybody"
custom-tag=""></meta><link href="favicon.ico?v=4" rel="shortcut
icon"></link>
<link href="images/mobile/apple_touch_snc.png?v=09-26-2017_1830"
rel="appletouch-icon"></link><link type="text/css" rel="stylesheet"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2384


<!-- page 2385 -->
href="/styles/css_includes_$sp.cssx?v=09-26-2017_1830"></link><l
ink
href="styles/scss/sp-bootstrap.scss?
portal_id=5b49418bdb4aa200b1f6f78eaf96195f&amp;v=21989c86db6dc30
0b14a75921f9619
d9" rel="stylesheet" type="text/css"></link><link
rel="stylesheet"
type="text/css"
href="styles/sp-patch.css?v=21989c86db6dc300b14a75921f9619d9">
</link><link href="/styles/scss/csm-styles.scss?
portal_id=5b49418bdb4aa200b1f6f78eaf96195f&amp;v=7d88d886db6dc30
0b14a75921f9619
71" type="text/css" rel="stylesheet"></link><link
type="text/css"
rel="stylesheet"
href="/scripts/icon-fonts/font-awesome/css/font-awesome.cssx?
v=09-26-2017_1830"></link><script data-description=NOW session,
user_name,
etc">window.NOW = window.NOW || {};
//record watch / presence
window.NOW.session_id =
'302E95AADBA14700B14A75921F9619A0' ;
window.NOW.user_name = xxxxxxx
window.NOW.user_id = '6816f79cc0a8016401c5a33be04be441' ;
The description meta tag text is made up of three data fields that are taken from the
communitiy_question record. In the tag, the values are separated by a hyphen character.
• The first portion of the description meta tag is the value of the forum name field in the
question record. In the example, the forum name is Routing and Switching.
• The second portion of the tag is the value of the topic field in the record — Tomahawk
(5000 Series) in the example.
• The third portion of the tag is generated from the first 100 characters of the body field in
the record — My 5000 series router has been overheating since I
upgraded the firware couple of days ago. Anybody.
In addition to the description meta tag for a question page, the Communities application
injects a title tag (highlighted in blue). The title is generated dynamically using two values
from the communitiy_question record:
• Forum name (Routing and Switching in the example)
• Short description (Router overheating after firmware upgrade in the example)

Procedure
1. Navigate to All > Service Portal > Pages.
2. In the list of portal pages, click the ID of the page to update (in the example,
community_question).
See the list of pages in Communities that support SEO data.
3. On the Page form:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2385


<!-- page 2386 -->
◦ Modify or add meta tags in the Meta tags related list.
◦ Modify the Dynamic page title by modifying the structure of the title text or by modifying
or replacing the variables that generate the text. The variable definitions appear in the
Dynamic page variables related list.

Using communities
Participate in your community by sharing content, asking and answering questions, creating
events, giving feedback, and so on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2386


<!-- page 2387 -->
Community homepage features for logged in users
Your community activity usually begins on the community homepage. If you are a logged in user,
you see different information than non-logged in users. Your organization can customize the
homepage.

Note: The Community Service Portal header menu is not enabled by default. For more
information, see Configure Community Service Portal header menus.
From the community homepage, you can access and use the following features:
Community homepage for logged in users
UI component

Description

Announcements

View announcements targeted to the entire community.

Community menu

Navigate to all forums and all topics and other quick links.

Tours

View a tour for additional guidance on how the Communities application
works. Tours appear when your administrator creates them on certain
pages.

Profile photo

Click your profile photo to either view your community profile or logout.

Search

Enter a search term. You can enter a keyword to use the type-ahead search
or enter one or more words to view all search results.

Browse Forums

Click the + icon to view up to eight available forums.
Click View all Forums to go to the Forums list page and search for the
forum you require. If sub forums exist, they are listed on the parent forum
tile along with a count of how many there are. Click the link to access a list
of the sub forums.

Have a question?
Click here to start
typing and Post
Content

Contribute to the community by posting a question. Click Question, Blog,
Video, Document, or Event to add your content and assign it to a forum.

Featured Content

View featured community content.

Question filters

Filter by question to view solved, unsolved, and unreplied questions.

Note: The content options are displayed according to the
permissions you are assigned in the forum.
Content List and
Activity Feed

Toggle between the Content List and Activity Feed. You can filter according
to content type, forum, most recent or popular, and when the content was
created.
• Content List: Lists all content added to the community. Displays when
updates were made to replies, comments, and answers marked as
correct and which user made the updates.

Note:
◦ Updates are not displayed for new or existing comments or
replies due for moderation.
◦ Updates are displayed for approved changes made to comments
or replies as a result of moderation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2387


<!-- page 2388 -->
Community homepage for logged in users (continued)
UI component

Description

• Activity Feed: Lists all activity in the community based on your posts and
subscriptions.

Note:
◦ All activities per content item are grouped. Only the most recent
activity is listed per content item. For example, an upvote to a
question.
◦ To view all activity associated with a content item, click the
content item. All activities, regardless of your subscriptions, are
displayed.

Navigating the activity feed
The activity feed provides a central place for community users to view information and interact. It
lists the most recent activity in the community based on your network, posts, and subscriptions.
You can reply, comment, and give feedback directly from the activity feed.
Activity feed
UI
Description
component

Levels

View the most recent levels you have earned in the community as a result of points
accumulated. You can also view the most recent badge you have earned for your
achievements or areas of expertise within the community.

Content
added by
another
user

View the most recent contributions by another user that you are following or
content that you have subscribed to.

Content
added by
you

View the most recent content that you created in the community.

Feedback

Provide feedback on content that you find useful. There are four supported types
of content feedback: comment, upvote, helpful, and mark as correct answer.

Reply

Reply to a question or another reply.

Navigating the forum homepage
While in a forum, you can navigate the forum homepage and perform tasks, such as posting
content.
Forum homepage
UI component

Description

Forum name and
description

Displays the name and description of the forum. Click Show more to read
more of the description.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2388


<!-- page 2389 -->
Forum homepage (continued)
UI component

Description

Subscribe

Subscribe to content in the community.

Sub Forums

If sub forums exist, they are listed. Click a link to access a sub forum.
If more than three sub forums exist, click View all to view the list of all sub
forums and click the one you want to access.

Search Forum

Type a keyword and click the Search icon to view the matching content
within a forum.

Have a question?
Click here to start
typing

Contribute to the community by posting a question.

Question filter

Filter by question to view solved, unsolved, and unreplied questions.

Content List

Lists all content added to the community. Displays when updates were
made to replies, comments, and answers marked as correct and which
user made the updates.
Filter according to content type or sort by most recent or popular, and
when the content was created.

Note:
• Updates are not displayed for new or existing comments or replies
due for moderation.
• Updates are displayed for approved changes made to comments or
replies as a result of moderation.
Post Content

Click Question, Blog, Video, Document, or Event to add your content and
assign it to a forum.

Note: The content options are displayed according to the
permissions you are assigned in the forum.
Announcements

View forum-specific announcements.

Topics

Click a topic to navigate to a particular topic.

Leaderboard

View the leaderboard to find community experts for the forum.

Most viewed
content

Displays the top three posts according to number of views.

Community homepage features for non-logged in users
Your community activity usually begins on the Community homepage. If you are a non-logged
in user, you see different information than logged in users. Your organization can customize the
homepage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2389


<!-- page 2390 -->
Community homepage for non-logged in users
UI component

Description

Community
View announcements targeted to the entire community.
announcement
Community
menu

Navigate to all forums, all topics, and other quick links.

Sign up/Login

Sign up or log in to the community.

Search

Enter a search term. You can enter a keyword to use the type-ahead search or
enter one or more words to view all search results.

Browse
community
forums

Click the + icon to view up to eight available forums.
Click View all Forums to go to the Forums list page and search for the forum
you require.
If sub forums exist, they are listed. Click a link to access a sub forum.
If more than three sub forums exist, click View all to view the list of all sub
forums and click the one you want to access.

Question filter

Filter by question to view solved, unsolved, and unreplied questions.

Content List

View content posted in public forums in the community. Filter according to
content type or sort by most recent or popular, and when the content was
created.

Why Join?

View some of the advantages of joining the community.

View
Leaderboard

View the leaderboard to find community experts on specific forums or topics.

Ask a Question Click Ask a Question and a message appears indicating that you must be a
logged-in user to perform this action. You can Login/Sign Up directly from
here.
Topics

Click a topic to navigate to a particular topic.

Show More

View an expanded list of content available in the community.

Self-register to a community
Once you have accessed a public forum and decided to join the community, you can self-register
by signing up and accepting the community Terms and Conditions.

Before you begin

Role required: none

About this task

Every community user has to have a community account. Existing users who access a community
for the first time have to accept the Terms and Conditions. An account is created once the Terms
and Conditions have been accepted. New users sign up to the community and accept the Terms
and Conditions.
If the community Terms and Conditions are updated, all community users are prompted to review
and accept them when they log in the next time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2390


<!-- page 2391 -->
Procedure
1. If you are a new user, navigate to the community homepage.
a. Click Sign up/Login.
The Sign Up screen opens.
b. Fill out the fields on the Sign Up form.
Sign Up form
Field

Description

Email address

The email address to send the email validation to.

Username

A user name for your account.

First Name

Your first name.

Last Name

Your last name.

Phone Number

Your phone number.

Password

A password for your account.

Confirm Password

A confirmation of your password.

I agree to the Community Terms and
Conditions

A check box to agree to the community Terms and
Conditions.

c. Click Sign Up.
An email is sent to the email address you entered.
d. Open the email and click the validation link.
e. Click the Click here to login message.
f. Log in with your user name and password.
The Welcome pop-up opens.
g. Confirm your time zone.
h. Click User Profile or Notification Preferences to edit your community profile or your
notification and subscription settings.
2. If you are an existing user, but visiting the community for the first time, click any community
page.
a. If required, change your Display Name on the Setting up your account pop-up.
b. Select the check box to agree to the community Terms and Conditions.
The Welcome pop-up opens.
c. Confirm your time zone.
d. Click User Profile or Notification Preferences to edit your community profile or your
notification and subscription settings.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2391


<!-- page 2392 -->
Search the community
Enter a keyword to use the type-ahead search on the Community homepage or enter one or
more words to view all search results.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Navigate to the community homepage.
2. Press the space bar to use the type-ahead search and enter a keyword in the Search
Community field.
3. Choose from the following options:
a. Click a content item, topic, forum, or profile that matches your search.
b. To enter your question, blog, or video if no matching content is displayed, click Ask the
Community.
c. To display all search results, click View all Results.
4. Alternatively, enter one or more keywords in the Search Community field and press the Enter
key.
A list of matching search results appears.
Refine your search results
Refine your search results to narrow down the content displayed.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Navigate to the community homepage.
2. Enter a keyword in the Search field.
3. From the Refine Results panel, choose from the following options.
◦ To filter and customize your search results, click any option under Types. For example,
click Profile to view the profiles that matches with the search keyword. The details of the
profile such as display name, gamification information-points and badges, bio, user title
and company appear. To reverse this action, click the x icon of the corresponding item. To
remove all filters, click Clear All.
◦ Select any item from the Forums, Topics, or Authors fields to filter by forum, sub forum,
topic, or author. You can add multiple forums, sub forums, topics, and authors and click
anywhere on the screen to display the results.
◦ To filter by the time period that the content was posted, click any Last Updated item.
◦ Click the – icon of any category to collapse the category and save space. Click the + icon to
restore a collapsed category.
The search results page displays content based on the filter criteria.
Sort your search results
Sort your community search results to narrow down the content displayed.

Before you begin

Role required: sn_communities.community_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2392


<!-- page 2393 -->
About this task

The search results are sorted according to Relevance by default.

Procedure
1. Navigate to the community homepage.
2. Enter a keyword in the Search field.
3. To display the most recent results, click Sort By: Newest.
The results are displayed in descending order.
4. To display the results in ascending order, click Newest.

Use a community profile
The community profile displays an overview of a user's personal information as well as their
contributions, network, achievements, expertise, and events they are attending. You can view
and edit your own profile. You can also view another user's profile and perform actions, such as
following them or reporting inappropriate content.

Before you begin

Role required: sn_communities.community_user

Procedure
Perform one or more of the following tasks from the community profile.
Manage your community profile
View and edit your own community profile, which displays your contributions, network,
achievements, expertise, and events you are attending.

Before you begin

Role required: sn_communities.community_user

About this task

There are two ways of accessing your community profile.

Procedure
1. From the Community homepage, perform one of the following actions.
◦ Click the Community menu and then Community Profile.
◦ Click your name or profile photo and then Profile.
2. View the sections on your community profile.
Community profile
Section

Description

Profile header

An overview of your personal information.
◦ Click Edit Profile to change your profile
photo and edit your personal information.
◦ Click Edit Profile to change your user
preferences. Update your time zone to view
when events are occurring in your selected
time zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2393


<!-- page 2394 -->
Section

Description

◦ Click the ... icon and then Display Settings
to set your display settings and determine
who can view which sections of your
profile.
If the gamification feature is enabled,
the profile header includes your current
gamification achievements, including:
◦ The top three badges that you have been
awarded
◦ The total number of points that you have
earned
◦ The current level that you have achieved
based on your point total (for example,
Enthusiast or Champion)
Content tab

An overview of the published and draft
content you have created and the content
you have bookmarked.
◦ Authored: Content you contributed. You
can select the content type and the forum,
and sort by state.
◦ Drafts: Content you contributed that is in
draft state. You can select the content type
and the forum. Open a draft to publish it.

Note: You can only save content in
draft for blogs and events.
◦ Bookmarks: Content that you have
bookmarked. You can select the content
type, the forum, and sort by recent or
oldest. You can also remove bookmarks.
Activity tab

The most recent actions performed by you in
the community, for example, commenting on
a post or providing feedback.

Network tab

A record of your network in the community.
◦ Followers: The users that are following you.
◦ Following: The users that you are following.
◦ Click Follow to start following a user, who is
following you.
◦ Point to Following and click Unfollow to
stop following a user.

Achievements tab

An overview of your gamification
achievements.
◦ Levels: A list of the available levels that you
can achieve, including the starting point
value, with your current level highlighted in
blue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2394


<!-- page 2395 -->
Section

Description

◦ Badges: A list of the badges that you have
been awarded as well as available badges.
Awarded badges appear at the top of the
list and available badges appear below.
You can filter this list to view awarded
badges or all badges.
◦ Points: A history of the points that you have
earned and the activities performed that
earned the points. This information also
includes the forum in which the activity
was performed. This list includes your last
50 activities. Click Show more to display
additional pages.
Events tab

A list of events that you created, are
attending, or past events you have attended.
Click an event to view the event details.

Contributions

The number of your content and feedback
contributions to the community.

Forum Expertise

A display of your expertise at forum level.
You can view your level within the forum
and the number of points you have gained
through contributing to that forum. Click the
information icon to view the point ranges
required to reach each forum level.

Topic Expertise

A display of your expertise at topic level.
You can view your level within the topic
and the number of points you have gained
through contributing to that topic. Click the
information icon to view the point ranges
required to reach each topic level.

View another user's community profile
View another user's community profile to see their contributions, network, expertise, and so on.
You can also manage your network by following and unfollowing other community users.

Before you begin

Role required: sn_communities.community_user or sn_communities.admin

Procedure
1. Click the user's name or profile photo for the community profile that you want to view.
2. View the sections of the user's community profile.
Community profile
Section

Description

Profile header

The sections of the community profile that
the user has made visible.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2395


<!-- page 2396 -->
Section

Description

◦ To start following the user, click Follow.
◦ To report any inappropriate content on the
user's community profile, click the ... icon
and then Report Profile.
◦ To assign a user points for a specific
contribution to the community as a
community administrator, click the ... icon
and then click Assign Points.
◦ To hide content from the community until it
is corrected as a community administrator,
click Display Settings You can also click
Ban User to ban a user from creating or
editing content.
Content

◦ Authored: Content that the user
contributed.
◦ Featured: Content the user posted that has
been featured.
◦ Drafts: Content the user contributed that is
in draft state.

Note: Only community
administrators can view draft content
of another user.
◦ Bookmarks: Content that the user has
bookmarked.
Activity

The most recent actions performed by
the user in the community, for example,
commenting on a post or providing feedback.

Network

◦ Followers: The users that are following the
user's community profile.
◦ Following: The users that the community
profile user is following.
◦ You can manage your own network from
another user's profile. To start following a
user, click Follow. To stop following a user,
point to Following and click Unfollow.

Achievements

An overview of the user's gamification
achievements.
◦ Levels: A list of the available levels that the
user can achieve, including the starting
point value, with the user's current level
highlighted in blue.
◦ Badges: A list of the badges that have
been awarded to this user.
◦ Points: A history of the points that this user
has earned and the activities performed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2396


<!-- page 2397 -->
Section

Description

that earned the points. If the user has
earned points in a forum that you do not
have access to, the name of the forum is
replaced with Private forum.
Events

A list of events that the user has created, is
attending, or past events that the user has
attended. Click an event to view the event
details and respond.

Forum Expertise

A display of the user's expertise at the forum
level. You can view their level within the forum
and the number of points they have gained
through contributing to that forum. To view
the point ranges required to reach each
forum level, click the information icon.

Topic Expertise

A display of the user's expertise at the topic
level. You can view their level within the topic
and the number of points they have gained
through contributing to that topic. To view the
point ranges required to reach each forum
level, click the information icon.

Contributions

The contributions the user has made to the
community.

Follow a community user
Manage your network by following other community users and tracking their activity in the
community.

Before you begin

Role required: sn_communities.community_user

About this task

There are several ways of following users in the community.

Procedure
1. From the Communities homepage, perform one of the following actions.
◦ Click your profile name or photo.
◦ Click your profile name or photo and then the Network tab.
◦ Click another user's profile name or photo and then the Network tab.
2. Click Follow for every user you want to follow.
The state changes to Following. Your Activity Feed is updated with the activity those users
have taken in the community.
3. Optional: Point to Following and click Unfollow to stop following a user.
Edit your community profile photo and personal information
Change your community profile photo and edit your personal information.

Before you begin

Role required: sn_communities.community_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2397


<!-- page 2398 -->
You can only edit your community profile if you are logged in to the community.

Procedure
1. From the Community homepage, select your name or profile photo and then select Profile.
2. To change your profile picture, click Upload Picture.
A file system upload is initiated. Choose an image in .png or .jpg format and click Open.
3. To change any field value, select the value to display a pop-up window.
4. In the field value pop-up window, select the desired value and click Save.
The following table includes a description of the fields on the User Profile page.
User Profile fields
Field

Description

Company

Name of your employer.

Title

Your job title.

Department

Your job department.

Location

Your address, city, and state.

Bio

A short description about yourself.

Email

Your email address.

Note: Use the email address used
in your instance profile or the reset
password features cannot be used.
Business phone

The work telephone number where people
can reach you.

Mobile phone

Your mobile telephone number.

Language

Your preferred language.

Time zone

The time zone in which you work or reside.

Accessibility enabled

Use this toggle button to enable accessibility
features.

Edit your community profile display settings
Edit your display settings to determine who can view each profile section.

Before you begin

Role required: sn_communities.community_user, sn_communities.admin or
sn_communities.moderation_admin

About this task

You can edit your own display settings for your community profile. If a community administrator
finds inappropriate content on your profile, they can edit your display settings to hide the content
from the community until it is corrected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2398


<!-- page 2399 -->
Procedure
1. On the community homepage, click the Community menu and then click Community Profile.
2. Click the ... icon and then click Display Settings.
3. Open the choice lists and select display settings for any section.
4. Choose the privacy level to apply.
Privacy levels
Privacy level

Description

Everyone

Visible to all users, including non-logged in
users.

Only me

Visible to yourself and administrators.
If an administrator finds inappropriate
content on your profile, the administrator can
change the display settings to Only me until
the content is modified.
You receive an email notification detailing the
display settings that were modified for which
sections.
Update the content and adjust the display
settings accordingly.

Everyone after logging in

Visible to all users who access the
community after logging in.

Followers

Visible to users who are following your profile.

5. Click Save Settings.
Report a community profile
Report a community profile to alert community moderators that there is offensive or inaccurate
information in the profile.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Click the name or photo of the user to report.
2. Click the ... icon and select Report Profile.
3. From the list, select the reason you are reporting the user and add Additional Comments.
4. Click Submit.
◦ A confirmation message indicating that the abuse report has been received and will be
reviewed is displayed.
◦ A moderation task is created and assigned to a moderator for resolution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2399


<!-- page 2400 -->
Community subscriptions
Using subscriptions, you can choose specific areas of interest. Your activity feed and
notifications are personalized according to your subscriptions.
Subscription types
Subscription type

Subscription

Description/Features

• Subscribe or unsubscribe to forums,
topics, and community content (questions,
answers, blogs, and video).
• Auto-subscribe: Whenever you post
content, you are automatically subscribed to
the content itself. You are also automatically
subscribed when you post a reply or a
comment.

Activity feed

Notification settings

Displays activities based on your
subscriptions with the most recent at the top.
• Manage your subscriptions using
Notification Settings.
• For each of your subscriptions, set email
notifications using Notification Preferences.

Subscribe to content
Subscribe to forums, topics, questions, blogs, and videos. You are automatically subscribed to
content that you create.

Before you begin

Role required: sn_communities.community_user

Procedure
1. To find the content of interest, use the search field or navigation to find the content of interest,
such as a forum, topic blog, or video.
2. On the content page, click Subscribe.
◦ A confirmation message indicating that you have successfully subscribed to the content is
displayed at the top of the screen.
◦ You receive a notification whenever there is an update to this content, for example, an
answer to a question or a comment on a blog entry.
◦ You can view updates in your activity feed.
3. Optional: To remove a subscription, return to the content and click Subscribed.
When you point to this option, it becomes Unsubscribed.
You can also view your notifications and subscriptions and enable or disable them. For details,
see Set notification preferences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2400


<!-- page 2401 -->
Related topics
Set notification preferences
Community subscriptions
Set notification preferences
Set notification preferences to receive updates via email on the content that you are following.

Before you begin

Role required: sn_communities.community_user

About this task

The Communities application separates the notion of subscriptions from notifications. It is
possible to subscribe to an item and disable notifications. You can also turn off all notifications.

Procedure
1. Select Community > Notification Settings from the header.
2. Click Notifications and Subscriptions.
3. Choose your category, such as Forums, Topics, Blogs, or Videos, to manage your notifications
in those areas.
4. In the Email column, toggle any item that should or should not send updates.
5. Optional: To turn all notifications on or off, toggle All Notifications.

Note:
Activity subscription modules will not be displayed in the Navigations and Subscriptions
page, when you enable the disable_notifications flag.
The isNotificationDisabled API checks the value of the disable_notifications flag. This API
can also be used for blocking notification of other activity subscription modules.

Request membership to a forum
You must be a registered member of the community to request membership to a forum that is
marked for membership only.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Perform either one of the following actions:
◦ Navigate to Community > Homepage. Open Browse Community Forums and then select
the forum.
◦ Navigate to Community > All Forums and then select the forum in the list. If you requested
membership earlier, the status of your request appears.
2. Click Request Access.
If approval is required, Status changes to Requested. You receive an approval or rejection
email. If approved, you are immediately subscribed to the forum and Status changes to
Private Member.
If no approval is required, the request is auto-approved and Status changes to Private
Member.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2401


<!-- page 2402 -->
3. Optional: To cancel a request, point to the Requested status and click Cancel.
4. Optional: To leave a forum, click ... within the forum and then select Leave Forum.
Status changes to Request Access.
Related topics
Community access types
Communities roles

Accept an invitation to join a forum
An invitation to join a forum is sent as an email message. The method that you use to accept an
invitation depends on whether you are a registered community user.

Before you begin

Role required: none

Procedure
1. Open the email invitation and click Join Forum.
◦ If you are a registered and logged-in community user, the forum opens.
◦ If you are a registered community user but have not accepted the community Terms &
Conditions, a message appears to accept the Terms & Conditions. The forum opens after
you accept the Term & Conditions.
2. If the login page appears, take one of the following actions.
Option

Description

If you are a registered user and not logged
in.

Enter your login credentials to access the fo­
rum.
a. Click Sign Up on the login page.
b. Enter your email address, a user name, and
a password to create a community account.

If you are not a registered user.

c. The system sends a verification email. Click
the verification link in the email to confirm
your credentials.
d. Reopen the email invitation and click Join
Forum.

Forum membership is auto-approved and you are subscribed to the forum. Status changes to
Leave Forum.

Post and respond to content in the community
Post and respond to content in the community to get answers or share information.

Before you begin

Role required: sn_communities.community_user

Procedure
Perform one or more of the following tasks from the community homepage.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2402


<!-- page 2403 -->
Ask a question in the community
Ask a question in a forum to get an answer from other community users.

Before you begin

Role required: sn_communities.community_user
You can only ask a question in a forum if you have been assigned the correct permissions.

About this task

If you ask a question, you can edit or delete it. If you created the question and reply with an
answer, your answer is labeled Author.
There are three ways of asking questions in Communities.

Procedure
1. From the Communities homepage, perform one of the following actions.
◦ Locate the forum to ask a question in, click its name, and then click Have a question? Click
here to start typing. Type-ahead search shows related posts. Click to open a related post in
another page.
◦ Locate the forum to ask a question in and click Post > Question.
◦ If you do not see a forum, click Have a question? Click here to start typing.
2. Click Question.
3. On the form, fill in the fields.
Ask a question form
Field

Description

Question

Your question.

Forum

Forum to add the question to.

Note: If you created the question by clicking a forum from the
Communities homepage, this forum is automatically entered in this field.
Topic (s)
(optional)

Topic to add the question to.

Note: You can repeat this previous step for as many topics as you want.
If you change your mind about a particular topic, click its corresponding
xicon.

Description

Content of the question.
To insert an image, click the Insert Image button (
.jpg file, and then click Open.
To insert a video, click the Insert Video button (
then click Upload.

), navigate to the .png or

), enter the video URL, and

Add
To attach a file, click Add attachments and then drag the file into the Attach
attachments Document box or click the box and then navigate to the file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2403


<!-- page 2404 -->
Field

Description

◦ You can add up to three attachments.
◦ File types supported are PPT, PPTX, XLS, XLSX, DOC, DOCX, TXT, PDF, PNG,
BMP, JPG, JPEG, GIF, ZIP.
◦ Maximum file size is 2 MB.
◦ Supported file types are listed.
◦ Click the X icon to delete an attached file.

Note: Your system administrator may have set a limit on the total
number of attachments allowed across the community.
When you click Add, your attachments are added and displayed in the
question. If a user attaches a file to your question, you receive an email
notification.

Note: If antivirus protection is enabled, all attachments are
automatically scanned for viruses once the question is posted.

4. Click Post.
◦ The question is added and is available to users in this forum. You are automatically
subscribed to this question. When there is a reply, you receive a notification.
◦ Community users who are subscribed to the forum receive a notification that content has
been posted. Activity and content feeds are updated accordingly.
◦ If you have added attachments to your question and your community administrator has
enabled antivirus protection, a scan automatically runs in the background.

Note:
▪ If the scan is successful, the attachments are available to download.
▪ If the scan is in process or unsuccessful, the file is unavailable for download.
▪ Question authors and community administrators receive a notification that an
attachment is infected.
◦ Click Edit to remove the infected file and upload the attachment again. You cannot add any
more attachments until the infected file is removed.
◦ If you are a user whose content is due to be moderated, the content is not posted until
approved by a community moderator.
Related topics
Disable comments
Reply to a question in the community
Reply to a question or another reply.

Before you begin

You can only reply to a question or another reply in a forum or sub forum if you have been
assigned the correct permissions.
Role required: sn_communities.community_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2404


<!-- page 2405 -->
Procedure
1. To find the question or a reply to respond to, use search or navigation from the community
homepage.
You can also reply to a question or a reply from the activity feed on the homepage.
2. Click Reply.
3. Enter your reply.
4. Optional: If required, you can add an image to your reply.
a. Click the Insert image-editing control.
b. Choose your .png or .jpg format image file.
c. Click Open.
5. Optional: If required, you can add a video to your reply.
a. Click the Insert Video button (

)

b. Enter the video URL.
c. Click Upload.
6. Optional: You can add attachments to your post.
a. Click Add Attachments.
b. Drag your file into the Add Attachments box or click Click to Upload.
c. Click Add.
Your attachment is added and displayed in your post. If a user attaches a file to your content,
you receive an email notification.

Note:
▪ You can add up to three attachments per post.
▪ The maximum file size per attachment is 2 MB.
▪ Your system administrator may have set a limit on the total number of attachments
allowed across the community.
▪ File types supported are PPT, PPTX, XLS, XLSX, DOC, DOCX, TXT, PDF, PNG, BMP,
JPG, JPEG, GIF, ZIP
▪ If antivirus protection is enabled, all attachments are automatically scanned for
viruses once the reply is posted.
7. Click Reply.
The reply is added below the question and any other replies. The reply is available to users in
this forum.
Community users who are subscribed to the forum receive a notification that content has been
posted. Activity and content feeds are updated accordingly.

Note: If you are a user whose content is due to be moderated, the content is not posted
until approved by a community moderator.
If you have added attachments to your reply and your community administrator has enabled
antivirus protection, a scan automatically runs in the background.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2405


<!-- page 2406 -->
◦ If the scan is successful, the attachments are available to download.
◦ If the scan is in process or unsuccessful, the file is unavailable for download.
◦ Reply authors and community administrators receive a notification that an attachment is
infected.
◦ Click Edit to remove the infected file and upload the attachment again. You cannot add any
more attachments until the infected file is removed.
8. Click Mark as Correct Answer after reviewing the reply posted.

Note: Author of the question, forum or community admin, and forum or community
moderator review the post.
If an accepted solution has infected attachments, an email notification is sent to the author,
admins, and or moderators who must unmark the answer as the accepted solution. Author of
the answer gets a notification to update the post.
Post a blog in the community
Create a blog post and publish it immediately, schedule to publish at a specified date, or save it
as a draft.

Before you begin

You can only post a blog in a forum or sub forum if you have been assigned the correct
permissions in the parent forum.
Role required: sn_communities.community_user

About this task

You can post, edit, and delete a blog. If you comment on the blog that you create, your answer is
labeled as Author.

Procedure
1. Locate the forum to create a blog in and click its name.
2. Click Post and then click Blog.
3. On the form, fill in the fields.
Post a blog form
Field

Description

Blog Title

Title for your blog.

Forum

The forum or sub forum to add the blog to.

Note: When you create the blog by clicking a forum or sub forum from
the Community homepage, the forum or sub forum name is automatically
displayed in the field.
Topic (s)
(optional)

Topic to add the blog to.

Note: You can repeat this step to add as many topics as you want. To
delete a particular topic, click its corresponding xicon.

Description

Content of the blog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2406


<!-- page 2407 -->
Field

Description

To insert an image, click the Insert Image button (
or .jpg file, and then click Open.

), navigate to the .png

To insert a video, click the Insert Video button (
then click Upload.

), enter the video URL, and

Add
Click Add attachments and then drag the file into the Attach Document box.
attachments Alternatively, click the box and then navigate to the file.
◦ You can add up to three attachments with supported file types.
◦ File types supported are PPT, PPTX, XLS, XLSX, DOC, DOCX, TXT, PDF, PNG,
BMP, JPG, JPEG, GIF, ZIP.
◦ Maximum file size is 2 MB.
◦ Click the X icon to delete an attached file.

Note: Your administrator may have set a limit on the total number of
attachments allowed across the community.
Click Add. If a user attaches a file to your blog, you receive an email
notification.

Note: If antivirus protection is enabled, all attachments are
automatically scanned for viruses when the blog is posted.
Schedule
Publish

Click the check box to publish the blog on a specified date. Select the date,
time, and time zone of the blog. The scheduled blog is only visible for author
and administrator until it is published.

Note: For a blog that has approval workflow, the blog state changes
to "Ready to publish" when it is approved before the scheduled time.
If a blog is approved after the scheduled time, the state changes to
"Published".

4. Complete one of the following actions to save your blog.
To

Do this

Review and publish your blog later. The blog
appears as a draft on your profile page under
Content > Drafts.

Note: Community and forum admin­
Save as Draft

istrators can edit, delete, and publish
drafts. If a community or forum adminis­
trator edits, deletes, or publishes your
draft, you receive an email notification.
From your profile page, you have the following
options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2407


<!-- page 2408 -->
To

Do this

a. To review your blog before publishing, click
Edit.
b.▪ Click the corresponding ellipsis
icon and then Publish.
▪ Click the corresponding ellipsis
icon and then Delete.
Click Schedule to post a blog on the speci­
fied date. You can edit or disable the sched­
ule until the blog is published.
Schedule

Note: This option appears for a blog

for which Schedule Publish option is se­
lected.
Publish your blog directly.
The forum subscribers receive an email noti­
fication. Activity and content feeds are updat­
ed accordingly.

Note: If you are a user whose content
is due to be moderated, the content is
not posted until approved by a communi­
ty moderator.

Post

If you have added attachments to your blog
and your community administrator has en­
abled antivirus protection, a scan automatical­
ly runs in the background.
◦ You can download the attachments only
when the scan is successful.
◦ Blog authors and community administrators
receive a notification for an infected attach­
ment.
◦ Click Edit to remove the infected file and
upload the attachment again. You cannot
add any more attachments until you re­
move the infected attachment.

Related topics
Disable comments
Post a video in the community
Post a video in a forum or sub forum.

Before you begin

Role required: sn_communities.community_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2408


<!-- page 2409 -->
You can only post a video in a forum or sub forum if you have been assigned the correct
permissions in the parent forum.

About this task

You can post videos on their own or add them to a question or a blog. If you are the creator of
the video or a community administrator, forum administrator, forum moderator, or community
moderator, you can edit the videos once posted.

Procedure
1. While in a forum, click Post > Video.
2. On the form, fill in the fields.
Post a video form
Field

Description

Click here
to Insert a
Video

◦ URL of your video.
◦ Click Upload. The video is added to your post.
◦ To edit and replace the current video with another one, click Select a
different Video.

Video Title

Title for the video.

Forum

Read-only. The forum or sub forum is automatically entered in this field.

Topic (s)
(optional)

Topic to add the video to.

Note: You can repeat this step for as many topics as you want. If you

change your mind about a particular topic, click its corresponding xicon.
Description
(optional)

Description for your video.

3. Click Post.
4. Optional: If you have permission to edit or delete the video, click a video, click the
corresponding
icon, and then click Edit or Delete.
Once a video is uploaded, other community users can comment on it, give feedback,
subscribe to the video, bookmark it, and report any inappropriate content in the video.
Related topics
Disable comments
Comment on a blog or a video in the community
Comment on a blog or a video or comment on another comment.

Before you begin

You can only comment in a forum or sub forum if you have been assigned the correct
permissions in the parent forum.
Role required: sn_communities.community_user

About this task

If you create a comment, you can edit or delete it. If you created the blog or video and add a
comment, your comments are labeled Author
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2409


<!-- page 2410 -->
.

Procedure
1. To find the blog or video entry to comment on, use the search field or navigation.
2. Click Comment, and enter your answer.
3. You can add attachments to your post.
a. Click Add Attachments.
b. Drag your file into the Add Attachments box or Click to Upload.
c. Click Add.
Your attachment is added and displayed in your post. If a user attaches a file to your
comment, you receive an email notification.

Note:
▪ You can add up to three attachments per post.
▪ The maximum file size per attachment is 2 MB.
▪ Your system administrator may have set a limit on the total number of attachments
allowed across the community.
▪ File types supported are PPT, PPTX, XLS, XLSX, DOC, DOCX, TXT, PDF, PNG, BMP,
JPG, JPEG, GIF, ZIP.
▪ If the attachment size is large or you have a slow connection, a progress indicator is
displayed.
▪ If antivirus protection is enabled, all attachments are automatically scanned for
viruses once the reply is posted.
4. Click Comment.
The comment is added below the blog or video entry and any other comments. The answer is
available to users in this forum.
Community users who are subscribed to the forum receive a notification that content has been
posted. Activity and content feeds are updated accordingly.

Note: If you are a user whose content is due to be moderated, the content is not posted
until approved by a community moderator.
If you have added attachments to your comment and your community administrator has
enabled antivirus protection, a scan automatically runs in the background.
◦ If the scan is successful, the attachments are available to download.
◦ If the scan is in process or unsuccessful, the file is unavailable for download.
◦ Comment authors and community administrators receive a notification that an attachment is
infected.
◦ Click Edit to remove the infected file and upload the attachment again. You cannot add any
more attachments until the infected file is removed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2410


<!-- page 2411 -->
Post a document in the community
If you have the proper permissions in a forum, you can share a document with colleagues,
experts, or other community users. You can associate the document with as many topics as
needed.

Before you begin

Role required: sn_communities.community_user

Procedure
1. While in a forum, click Post > Document and then fill in the form:
Document configuration form
Document title

Enter a descriptive title for the document.

Forum

Read-only. The current forum or sub forum is
selected.

Topics

Select a topic from the list. Repeat for as
many topics as needed.

Attach document

To attach a file, drag the file into the Attach
Document box or click the box and then
navigate to the file.
◦ You can attach only one document.
◦ Maximum file size is 5 MB.
◦ File types supported are PPT, PPTX, XLS,
XLSX, DOC, DOCX, TXT, PDF, PNG, BMP,
JPG, JPEG, GIF, ZIP.
◦ Click the X to delete an attached file.

Note: Your administrator may have
set a limit on the total number of
attachments allowed across the
community.
If antivirus protection is enabled, all
attachments are automatically scanned for
viruses when you click Post.
Description

Enter a useful description for the document.

2. Click Post.
◦ The document appears in the forum. The author of a document can edit or delete the post.
◦ Community users who are subscribed to the forum receive a notification that content has
been posted. Activity and content feeds are updated accordingly.

Note: If you are a user whose content is due to be moderated, the content is not posted
until approved by a community moderator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2411


<!-- page 2412 -->
If your community administrator has enabled antivirus protection, a scan automatically runs in
the background.

Note:
◦ You can download the attachments only when the scan is successful.
◦ The user who posted the document and community administrators receive a
notification that an attachment is infected.
Related topics
Disable comments
Mention a user in the community
Draw attention to your content in the community by mentioning other community users in the
post.

Before you begin

Role required: sn_communities.community_user

About this task

You can mention users in questions, blogs, events, comments, and answers.
Note: The user mentions feature is not enabled for document or video content types.
You can mention users in Communities in the following ways.

Procedure
1. From the community, perform one of the following actions.
◦ Post content to the community and place your cursor in the script editor.
◦ Click the content you want to comment on or reply to.
2. Enter the @ symbol followed by the user's name.

Note: You can mention multiple community users in the post.
An email notification is sent to the community users you selected and their followers. any
community users that follow the user. The activity feed is also updated.

Note: Followers can set their notification preferences to enable or disable notifications
of user mentions.
Community events
Create, manage, and participate in events to encourage engagement across the community.

Before you begin

Role required: sn_communities.admin or sn_communities.community_user

Procedure
Perform one or more of the following tasks.
Post a community event
You can create a community event that other community users, colleagues, or experts can
register for and attend.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2412


<!-- page 2413 -->
Before you begin

You must have permission to create events (Event Write and Comment Write) and be a member
of the forum to create the event in. The Event content type must be active in the forum for the
event.
Role required: sn_communities.community_user

Procedure
1. While in a forum, click Post > Event and then fill in the form.
Create an event
Field

Description

Event title

A title for your event.

Forum

Read-only. The forum is automatically entered in this field.

Topic(s)
optional

A topic to add the event to.

Note: You can add as many topics as needed. To remove a topic, click
the x.

Set guest
limit / Total
allowed

Select the check box to specify the maximum number of guests that can
attend in the Total allowed field. When the number of guests reaches to the
limit, additional users are added to the wait list.

Display guest Select the check box to enable forum members to view the guest list for the
list to the
event.
public
This is an
online event
Name of
location

For an online event, click the check box.

For an online event, the text specified in the Name of Location appears as a
label with a hyperlink to the specified Web URL. For example, enter the text
as 'Click Here to Join the meeting' to facilitate your subscribers to join the
meeting.
For an offline event, enter the Name of location, Address, City,State, Zip/
Postal Code, and Country to mention the venue.

Web URL

Enter the Web URL of an online event for your subscribers to click and join.

Date and
time

The date and time of the event. Date must be in the future.

Note: If you change the Duration, the End Time is auto-updated.
Click Change time zone to set the time zone for the event. Default: Your local
time zone. The time zone changes according to the time zone of the user
viewing the event.

Duration

The duration of the event.

Note: If you change the End Time, the Duration is auto-updated.
By default, the duration is 30 minutes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2413


<!-- page 2414 -->
Field

Description

Send
reminder to
guests one
day before
the event

Select the check box to send an email reminder one day before the event to
all users that responded Attend.

Description

The description of the event.

Add
attachments

To insert an image, click the Insert Image button (
or .jpg file, and then click Open.

), navigate to the .png

To insert a video, click the Insert Video button (
then click Upload.

), enter the video URL, and

Click Add attachments and drag the file into the Attach Document box or
click the box and then navigate to the file.
◦ You can add up to three attachments.
◦ File types supported are PPT, PPTX, XLS, XLSX, DOC, DOCX, TXT, PDF,
PNG, BMP, JPG, JPEG, GIF, ZIP.
◦ Maximum file size is 2 MB.
◦ Click the X icon to delete an attached file.

Note: Your system administrator may have set a limit on the total
number of attachments allowed across the community.
When you click Add, your attachments are added and displayed in the event.
If a user attaches a file to your event, you receive an email notification.
Schedule
Publish

Click the check box to publish an event on a specified date. Select the date
and time of the event. By default, the schedule time zone is same as event
time zone. The scheduled event is only visible for author and administrator
until it is published.

Note: For an event that has approval workflow, the event state changes
to "Ready to publish" when it is approved before the scheduled time.
If an event is approved after the scheduled time, the state changes to
"Published". You cannot schedule a published event.

2. Perform one of the following actions.
To

Do this

Click Save as Draft to save the event as a
draft on your profile page under Content >
Drafts.
Save as Draft

Note: Community and forum admins
can edit and publish drafts. If a commu­
nity or forum admin edits, deletes, or
publishes the draft, you receive an email
notification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2414


<!-- page 2415 -->
To

Do this

From your profile page, you have the following
options.
a. Click Edit to review the event before pub­
lishing.
b.▪ Click the corresponding ellipsis
icon and then click Publish.
▪ Click the corresponding ellipsis
icon and then click Delete.
Click Schedule to publish an event on the
specified date.

Note: This option appears for an event

Schedule

for which Schedule Publish option is se­
lected.

Click Publish to publish the event directly. As
an author, you can edit or delete the event.
Community users who are subscribed to the
forum receive a notification that content has
been posted. Activity and content feeds are
updated accordingly.

Publish

Note: If you are a user whose content
is due to be moderated, the content is
not posted until approved by a communi­
ty moderator.
Related topics
Edit an event
Disable comments
Edit an event
Edit the details of past and upcoming events. By editing a past event, you can attach a document
or share the meeting recording link with your event subscribers.

Before you begin

Role required: sn_communities.community_user, sn_communities.moderation_admin,
sn_communities.community_moderator, sn_communities.forum_moderator, or
sn_communities.forum_admin

Procedure
1. Search for an event that you want to modify.
2. Click the More Options icon (

) and then click Edit.

3. On the form, edit the fields as required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2415


<!-- page 2416 -->
Update Event form
Subscriber receives an email
notification

Field

Description

Event title

Title for past and upcoming
events.

Yes

Forum

Forum name in which the
event is posted. You cannot
modify the forum.

NA

Topic(s)

Topics that are associated
with the event. Add or modify
topics as needed. To remove
a topic, click x.

No

Set guest limit

Option to increase the
Yes - for a confirmed
guest limit to confirm the
participant
participants on the waiting list
for an upcoming event. You
cannot modify the guest limit
for a past event.

Display guest list to users

Option to enable or disable
the display of the guest list of
an upcoming event for forum
members.

No

This is an online event

Option to change the event
type to online or offline for an
upcoming event. You cannot
change a past event.

Yes

Name of location

Name of the location for past
and upcoming events.

Yes

◦ For an online event, the
text specified in the Name
of Location field appears
as a label with a hyperlink
to the specified Web URL.
For example, to share the
meeting recording link of
a past event, change the
text to Download the
meeting recording.
◦ For an offline event, change
the Name of location,
Address, City,State, Zip/
Postal Code, and Country
fields to mention the venue.
Web URL

Web URL for past and
upcoming events.

Yes

◦ For a past event, enter the
Web URL of the meeting
recording to share the link
with your subscribers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2416


<!-- page 2417 -->
Field

Description

Subscriber receives an email
notification

◦ For an upcoming event,
change the Web URL if
there is a change in the
system details.
Date and time

Date and time for an event.
Yes
You can change the date
and time to a future date for
past and upcoming events.
When you change the date of
a past event to a future date,
the past event becomes an
upcoming event. You can edit
all other details as applicable
for an upcoming event.
Click Change time zone to
set the time zone for the
event. The default is your
local time zone. The time
zone changes according to
the time zone of the user
viewing the event.

Note: If you change

the Duration field, the
End Time field is autoupdated.
Duration

Duration of the event.

Yes

Note: If you change
the End Time, the
Duration is autoupdated.

By default, the duration is 30
minutes.
Send reminder to guests one
day before the event

Option to send an email
reminder one day before
the event to all users that
responded Attend. This
check box only appears for
upcoming events and not for
past events.

No

Description

Description for past and
upcoming events. You can
insert an image or a video as
required.

Yes

Add attachments

Attachments for past and
upcoming events. Edit an
attachment if required.

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2417


<!-- page 2418 -->
Subscriber receives an email
notification

Field

Description

Schedule Publish

Option to publish an event.
No
This check box appears only
for a scheduled event and not
for a published event.
◦ To reschedule, change the
scheduled date and time
as required. By default, the
schedule time zone is the
same as the event time
zone. Selecting this check
box publishes an event
directly at the scheduled
date and time.
◦ To delete the schedule,
clear the check box.

4. Perform one of the following actions.
To

Do this

Save

To save the details, click Save.
To publish an event on the specified date,
click Schedule.

Schedule

Note: This option appears for a draft

event that theSchedule Publish check
box is selected for.
To publish an event draft, click Publish. As an
author, you can edit or delete the event.

Note: If you're a user whose content
Publish

is due to be moderated, the content is
not posted until it's approved by a com­
munity moderator. For an event that has
approval workflow, the event state is Re­
view. Other users cannot view the event
until it's approved.

Related topics
Post a community event
Disable comments
View and participate in a community event
You can view details for published events and perform tasks such as responding to the event or
adding it to your calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2418


<!-- page 2419 -->
Before you begin

You must be a registered member of the community and have permission to read events (Event
Read and Comment Write) to be able to respond to events.
Role required: sn_communities.community_user

Procedure
1. From the community homepage, perform one of the following actions.
◦ Navigate to the Content List.
◦ Navigate to the Activity Feed.
◦ Navigate to a forum or topic.
◦ Navigate to the community profile of another user and click the Events tab.
◦ Click Community > Events.
2. Click an event.
The Event details page displays the following information.
Community event details
Event
header

◦ View the name of the event, who created it, and when.
◦ If the event organizer chose to display the guest list to the public, you can view
how many community users have responded Attending or Maybe and click
the numbers to see the names.
◦ If the guest list is private, you can view how many community users have
responded Attending or Maybe, but you cannot see the names.
◦ View the number of spots still available in the event or your position on the
waitlist.
◦ If the event is taking place in the same time zone as you set in your user
preferences, the Event time zone is displayed.
◦ If the event is taking place in a different time zone to the one that you set in
your user preferences, both Event time zone and Your time zone are displayed.

Event
◦ When and where the event is taking place.
overview
◦ Description of the event.
◦ Topics associated with the event.
◦ Comments on the event.
◦ Number of times the event has been viewed.
Upcoming Next five upcoming events.
Events
Popular
Past
Events

Top five most popular past events and the number of community users that were
interested in the event. Interested community users include users who either
attended or were waitlisted for the event.

3. Optional: Click Attending, Maybe, or Declined to view or search the guest list and their
responses.
4. Optional: Click Subscribe to subscribe to the event and receive notifications when the event
is updated.
If your response is Attending or Maybe, you are auto-subscribed to the event.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2419


<!-- page 2420 -->
5. Optional: Click Respond to indicate whether you are attending or maybe attending the event,
to decline, or to add yourself to the waitlist.
◦ You can also respond to an event directly from the Activity Feed.
◦ If the event is full, a message stating that you can join the waitlist is displayed. The Attend
option replaces Waitlist. If you are waitlisted, your position on the waitlist is displayed. Once
a position becomes available in the event, you move up in the list.
Depending on your selection, the status changes to either Attending, Maybe, Declined, or
Waitlisted. You can update your response as needed.
◦ If an event creator or community admin deletes an event and you responded Yes, Waitlist,
or Maybe, you receive an email notification based on your notification preferences.
◦ If an event is updated, and you responded Yes, Waitlist, or Maybe, you receive an email
notification based on your notification preferences.
6. Optional: Click ... to perform one of the following actions.
Option

Description

Add to calendar

Downloads an .ics file that you can add to
your calendar. The file includes the title and
description of the event, the event location,
start and end dates, the event time, and any
attachments. If guests have chosen not to
share details, the information is not displayed
in the file.

Bookmark

The event appears in your bookmarks list on
your profile page. Click Remove Bookmark to
delete a bookmark.

Report content

Click Report content to report inappropriate
content in the event.

View the community events landing page
The Events landing page provides an overview of all events that you have access to in the
community. You can filter events, view your status for the event, see how many other community
users are attending an event, and so on.

Before you begin

Role required: sn_communities.community_user
Community users must have permission to view events (Event Read).

Procedure
1. Navigate to All > Community > Events.
The Events landing page displays a list of all events that you have access to and a list of the
five most popular past events.
2. Filter the list for events that you created or according to attendance status, by forum, and by
date.
The list displays the following information.
◦ The event creator, last update, and location.
◦ Your status, if you have already responded to the event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2420


<!-- page 2421 -->
◦ The number of community users who are interested in the event. Interested community
users include users who are attending or have been waitlisted for the event.
◦ The number of community users who have viewed the event.
3. Click an event to perform tasks related to the event.
Manage a community event
View additional response information on the event, edit or delete events, and download a guest
list.

Before you begin

You must be a registered member of the community and have permission to read events (Event
Read and Comment Write) to be able to respond to events.
Role required: sn_communities.community_user who created the event or
sn_communities.admin.

About this task

You can access published events from several places within the community.

Procedure
1. From the community homepage, perform one of the following actions.
◦ Navigate to the Content List.
◦ Navigate to the Activity Feed.
◦ Navigate to a forum or a topic.
◦ Navigate to another user's community profile and click the Events tab.
◦ Click Community > Events.
2. Click an event.
The Event details page displays the following information.
Community event details
Event
header

◦ View the name of the event, who created it, and when.
◦ View how many community users are attending or maybe attending.
◦ View how many community users declined the event.
◦ View the number of spots still available in the event or your position on the
waitlist.

Event
◦ When and where the event is taking place.
overview
◦ The description of the event.
◦ The topics associated with the event.
◦ Comments on the event.
◦ The number of times the event has been viewed.
Upcoming Shows the next five upcoming events.
Events
Popular
Past
Events

Shows the top five most popular past events and the number of community users
that were interested in the event. Interested community users include users who
either attended or were waitlisted for the event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2421


<!-- page 2422 -->
3. Optional: Click the ... icon.
4. You have the following options.
Option

Description

Edit

Click Edit. The Update Event page opens.
An email notification is sent to all community
users who responded Yes, Maybe, or Wait­
list.

Delete

Click Delete. A warning message appears ask­
ing if you are sure that to delete the event.
An email notification is sent to all community
users who responded Yes, Maybe, or Wait­
list.

Add to calendar

An .ics file is downloaded that you can add
to your calendar. The file includes the title
and description of the event, the event loca­
tion, start and end dates, the event time, and
any attachments. If guests have chosen not to
share their details, the information is not dis­
played in the file download.

Bookmark

The event appears in your bookmarks list on
your profile page. If you have already book­
marked the event, you can click Remove
Bookmark.

Report content

As a community admin, click Report content
to report inappropriate content in the event.

Download Guest List

Download a .csv file of the guest list. View
the file to see the list of community users at­
tending the event, their RSVP status, and
email address.

Bookmark community content
You can bookmark your favorite questions, blogs, videos, documents, and events. You cannot
bookmark content in draft state or replies or comments.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Click the content to bookmark.
2. Click the ... icon and then select Bookmark.
The bookmarked content is added to the Bookmarks tab on your community profile.
3. To view your bookmarks, perform one of the following actions.
◦ Navigate to your community profile and then click Content > Bookmarks.
◦ Click your name or profile photo and then click My Bookmarks.
4. You can search for bookmarks and, if required, select a bookmark and then click Remove
Bookmark.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2422


<!-- page 2423 -->
Provide feedback on community content
Provide feedback on content that you find useful.

Before you begin

Role required: sn_communities.community_user

About this task

There are four supported types of content feedback: comment, upvote, helpful, and mark
as correct answer. You can enter feedback directly in the Activity Feed on the Community
homepage or navigate to the content you want to provide feedback on.
Content Feedback
Content feedback

Description

Comment

Comment on blogs and videos. You can
also comment on a comment. The count of
comments is displayed.

Upvote

Upvote questions. The count of upvotes is
displayed.

Helpful

Mark answers, blogs, comments, and videos
as Helpful. The count of helpful marks is
displayed.

Mark as Correct Answer

If you are a community or forum administrator,
community or forum moderator, or the author
of the question, you can mark one answer as
Mark as Correct Answer. There is only one
correct answer for each question. If you later
mark a different answer as correct, the current
answer loses this status.

Procedure
1. From the Community homepage, perform one of the following actions.
◦ Click a forum and then click the content, for example, a blog or a question.
◦ Use search and then click the content.
◦ Navigate to the content on the homepage Activity Feed and provide your feedback directly
from here.
2. Enter your feedback.
The following feedback is displayed.
Feedback types included in the community content
Community homepage >
Activity Feed

Feedback on any content that users are subscribed to.

Community homepage >
Content List

Feedback entered by other users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2423


<!-- page 2424 -->
Your Community Profile >
Activity tab.

Feedback entered by you.

Note: The homepage activity feed is not automatically refreshed. If updates occur while
viewing the activity feed, a New Updates Available message appears. You can click and
view all new updates. If you are in the middle of making a comment and you click New
Updates Available, a warning message appears asking if you want to continue.

Report inappropriate community content
Report content to alert community moderators that the content is inappropriate or spam.

Before you begin

Role required: sn_communities.community_user

Procedure
1. Use the search field or navigation to find the content to report.
2. Click the ... icon and then clickReport Content.
3. From the list, select the reason you are reporting the content from the list and add Additional
Comments.
4. Click Submit.
A moderation task is created and assigned to a moderator for resolution. Depending on the
moderation settings created for your community, the content may be hidden until a moderator
has reviewed it.

Add featured content in a community
Add or edit featured content in a community to appear in the Featured Content section on the
community homepage, forum homepage, or both.

Before you begin

Set the following properties as required.
Featured content properties
Property name

Description

sn_communities.default_featured_days

Default number of days for content to be
featured. End date is calculated from the date
the content is featured on.

sn_communities.max_featured_limit

Maximum amount of featured content at forum
or at global level.

sn_communities.featured_global_notify_user

Send notifications to community users
when content is featured on the community
homepage. This property is inactive by default.

Note: Notifications are always sent
to community administrators and
moderators.
To send out email notifications when featured content expires, set the Featured Content Expire
scheduled job to Active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2424


<!-- page 2425 -->
Role required: sn_communities.admin, sn_communities.community_moderator,
sn_communities.forum_admin, or sn_communities.forum_moderator

Procedure
1. Navigate to the community homepage.
2. Click the content you want to feature.

Note: Question and Answer content types are not enabled for featuring by default.

To enable Question or Answer content types for featuring, navigate to Community >
Administration > Content Types. Click the content type you want to enable and select
the Allow Featuring check box. In the same way, you can also disable content types for
featuring.
3. Click ... and Mark as featured.
4. On the Feature Content pop-up window, select whether to feature the content on the
community homepage or in a specific forum.
A notification that content has been featured is sent out to the author of the content,
community users who commented on the post, and community users who are subscribed
to the post. If featured content has expired or is removed from the featured content list by
another user, community and forum administrators are notified.

Email a community user
Send a private message to a community user directly from the community.

Before you begin

Role required: sn_communities.admin, sn_communities.community_moderator,
sn_communities.forum_admin, or sn_communities.forum_moderator
An email client must be configured.

About this task

Uses for private messaging can include warning a user about use of a banned word, welcoming
a new user, or informing users about incorrectly placed content in a forum. You can privately
message a user from any community content, a comment, the Leaderboard, or the Community
Profile page.

Procedure
1. Navigate to the community homepage.
2. Point to the community user name.
3. Click Email User.

Note: The email opens in your local email client.
View a list of questions and create a case
View questions that can potentially be converted to cases, the community portal provides a page
with a list of questions created by contacts or consumers.

Before you begin

Role required: sn_customerservice_manager, sn_customerservice_agent,
sn_customerservice.consumer_agent, sn_communities.admin, or proxy_case_creator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2425


<!-- page 2426 -->
About this task

This page displays questions from the forums to which the user has access.

Procedure
1. From the community portal, select Community > Questions to Case to open the list of
questions.
This list includes questions that have been posted by a contact or a consumer and for which a
case has not yet been created.
2. Use the filters on this page to filter the question list:
◦ View questions for all forums or for the selected forum
◦ View questions posted within the selected time frame: 7, 15, or 30 days
◦ Sort by the most recent questions or older questions
◦ Sort by the question status: all, solved, unsolved, or unreplied
3. To create a case from one of the questions in the list, select a question to open the question
page.
4. Select the overflow icon (...) and then select Create Case to open a Create Case form.
The Create Case action is available if a case has not yet been created from a question. Once a
case has been created, this action is no longer available.

Note: The Create Case option is available for the question posted by an external user.
Information from the question is mapped to the fields on the case.
5. Enter any additional information in the fields on the Create Case form.
For example, add Description for the case.
6. If necessary, attach a file to the case.
7. Select Submit.
You are returned to the question content page. The case number appears in the question
header after the case is created. The question author, the customer service agent or consumer
service agent, or any user with the proxy_case_creator role can see the case number.
The contact or consumer who posted the question can also view the case by navigating to My
Cases on the Customer Service Portal or Consumer Service Portal.

Gamification
Encourage users to participate and contribute content in the community by providing incentives
in the form of points, achievement levels, and badges.
Use the gamification framework to:
• Configure point values associated with specific user activities.
• Define achievement levels based on earned points.
• Create and assign badges to recognize users.
Community administrators can:
• Create rules and configure points that users receive for activities on the community.
• Create tracks to logically separate points assigned in the communities into different areas.
• Create levels in the community where users can achieve expertise or a reputation and then
configure level ranges within each level definition.
• Create badges to award to users for different achievements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2426


<!-- page 2427 -->
Community users can:
• Perform activities and accrue points.
• Achieve levels based on point totals.
• View leaderboards to find community experts on specific forums or topics.
• See their own standing within the community.
• See gamification achievements on their user profiles.
Gamification components
The gamification feature includes several components, such as rules, levels, and tracks, that
enable users to earn points and badges for community activities.
Rules
Gamification rules allow you to configure points that users receive for activities on the
community.
Gamification includes several pre-defined rules. The gamification administrator can use these
rules, modify them as needed, or create new rules. These pre-defined rules include:
• Comment marked as helpful: 5 points
• Document marked as helpful: 5 points
• Video marked as helpful: 5 points
• Blog marked as helpful: 5 points
• Answer marked as helpful: 20 points
• Document bookmarked: 20 points
• Blog bookmarked: 20 points
• Video bookmarked: 20 points
• Answer marked correct for a question: 40 points
When a user performs an activity that has a gamification rule, the user profile identified in the
rule receives points. Points received through a gamification rule can be configured to accumulate
toward:
• Overall points across the entire community
• Points in forums associated with the activity
• Points in topics associated with the activity
• Points in a track
• Points assigned for a combination of forums, topics, and tracks
If users revert previous activities, the points associated with these activities are removed. As
an example, if a rule has been defined and a user creates a blog, they are awarded points. The
points are deducted when the blog is deleted. If a rule has not been defined and a user creates
a blog, no points are awarded. If the user removes it once a rule has been defined, points are
deducted even though none were awarded in the first place.
Related topics
Create a gamification rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2427


<!-- page 2428 -->
Tracks
Tracks provide a way to logically separate points assigned in the communities into different
areas.
Gamification includes two pre-configured tracks:
• Community Expertise
• Community Participation
While the application is configured to accumulate points by tracks, gamification does not
currently display tracks in the community portal.
Related topics
Create a gamification track
Levels and level ranges
Points accumulated by community users can help them achieve different reputation levels.
The system is pre-configured with levels where community users can earn points and achieve
expertise or a reputation:
• Global: overall points accumulated across the entire community
• Forum: points accumulated in forums associated with the activity
• Topic: points accumulated in topics associated with the activity
Gamification administrators can configure level ranges within each level. These level ranges
progress from a starting point value to a higher value (point ranges do not overlap) and have
unique, configurable names. For example, in the Global level, a user that has earned 100–499
points is a Newbie while a user that has earned 500–999 points is an Enthusiast.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2428


<!-- page 2429 -->
Gamification Level Definition form

In the community portal, users can see level range names and point totals in the gamification
user interface components.
• On the leaderboard page and leaderboard widgets
• At the top of a user's profile below the user name and title
• On the user profile page in the Achievements tab
• On content pages
Related topics
Manage gamification levels
Manage gamification level ranges
Badges
Users can earn badges for achievements or areas of expertise within the community.
Gamification moderators manually assign badges to users.
Gamification includes several predefined badges. Each badge includes:
• A name
• An icon
• A brief description
Gamification administrators and moderators can award badges to community users and also
remove badges. A badge can be awarded to a user one time. If a badge is removed from a user, it
can be awarded to that user again.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2429


<!-- page 2430 -->
Earned badges are visible in the community portal in the gamification user interface
components. Community users can see earned badges and available badges on their own user
profile page in the Achievements tab.
Related topics
Create a gamification badge
Points
Users earn gamification points by performing activities in the community.
Users can earn points within a community, a forum, or a topic. As users accrue points, they
achieve level ranges. Point totals appear on leaderboards and on user profiles, in the profile
header, and in the Achievement tab. After points are awarded to a user, an entry appears at the
top of the Points list and the user's point total is updated.
The Points list has a widget instance option to Show points for private forum.
• When set to true, the point record displayed in the user profile does not show the forum name
if the user performing the action does not have forum access. It displays "Private Forum" in
place of the forum name.
• When set to false, the point record does not display in the user profile.
The Points list also has a widget instance options for the Page size, which determines the
number of results displayed in the list. If there are more results than the number specified in this
option, a button to show additional results appears at the bottom of the points page.
Gamification user interface components
Gamification information appears on leaderboards, the user profile page, and content pages.
Leaderboard page
The leaderboard page displays the top contributors in the community, in a forum, or in a topic.
Users appear on the leaderboard based on the number of earned points and are ranked in
descending order. You can filter the leaderboard to display information for the current month or
all-time and by a specific forum or topic.
To display the leaderboard, navigate to Community > Leaderboard. You can also click
Show Leaderboard on the leaderboard widget. When navigating to the leaderboard from a
leaderboard widget on a forum/topic landing page, the leaderboard shows the top point earners
for that forum/topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2430


<!-- page 2431 -->
Community leaderboard

For each user, the leaderboard displays:
• Rank: shows the rank depending upon the selected filters (time, forum or topic)
• Name
• Profile photo (if available) or initials
• Current level: shows global, forum, or topic level depending upon the selected filter
By default, the leaderboard displays 10 users per page. Users can use the pagination controls to
view additional pages. Pointing to a user name in the leaderboard displays a pop-up window with
more information about the user.
Leaderboard widgets
Leaderboard widgets appear on the Community homepage and on forum and topic landing
pages. These widgets display the users with the highest point totals within the community, forum,
or topic.
The leaderboard widget shows the top five users. If there are more than five users that have
earned points within the community, forum, or topic, Show Leaderboard appears at the bottom.
Click this button to display all of the users on the leaderboard page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2431


<!-- page 2432 -->
Community forum leaderboard widget

For forums and topics, the leaderboard widget header displays the forum or topic name. When
navigating to the leaderboard page from a forum/topic, the leaderboard shows the top point
earners for that forum/topic.
System administrators can configure settings for the leaderboard widget:
• The number of users displayed in the widget (default is 5, maximum is 10)
• The time period (overall or current month)
• The leaderboard type (community, forum, or topic)
• Anchor to a specific forum or topic (not recommended)
User profile page
The user profile page displays gamification information that showcases the user's expertise.
The gamification information is shown in three sections of the user profile page:
• In the header area
• In the Achievements tab
• In the forum and topic expertise widgets

User profile header area
When the gamification feature is enabled, the user profile header area includes the user's
current gamification achievements. This information appears just below the user name and title:
• The top three badges that have been awarded to the user. Pointing to a badge displays the
badge name.
• The total number of points earned by the user.
• The current global level achieved.

Achievements tab
Users can view details about gamification levels, badges, and points on the user profile page in
the Achievements tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2432


<!-- page 2433 -->
Achievement tab field and description
Levels

A list of the levels available to the user, with
the current level highlighted.
This tab includes a link to the Community page
How to Earn Points.

Badges

A list of the earned badges and available
badges for the user. Earned badges appear at
the top of the list. Earned badges are sorted
by the most recently earned. Available badges
appear below earned badges. Users can filter
this list to view all badges or earned badges.
When viewing another user's profile, only the
earned badges are displayed and are sorted
by the most recently earned.

Points

A history of the points earned and the
activities performed by the user. This list
includes the last 10 activities. Click Show
more to display additional pages.
Gamification moderators can award and
remove points for community users.
This tab includes a link to the Community page
How to Earn Points.

Forum and topic expertise widgets
The forum and topic expertise widgets on the user profile page provide a visual representation of
the user's top areas of expertise.
The number within the circle and the blue highlight around the circle represent the number of
levels completed. For example, 2 of 5. The number below the circle indicates the total number
of points that the user has earned within the forum or topic. The widget displays up to five items
and the system administrator can configure the widget to show up to a maximum number of 10
items.
Clicking the info icon displays the forum or topic levels and the point ranges.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2433


<!-- page 2434 -->
Forum and topic expertise widgets

Community content pages
The user's gamification level and badges are displayed on the content pages, so that other
community users can view the reputation of the content contributor.
Pointing to a user name on content pages such as questions, blogs, and videos displays a popup window with gamification information including badges earned, point total, and level name.
This information is available for the author or a user who has replied or commented on that
content.
The community administrator can change the displayed level to show either
the global level or the forum level. This display can be controlled by the
sn_communities.content.show_gamification_level property.
Depending upon the information available, there can be three different versions for the pop-up:
• Profile photo and name
• Profile photo and name with global points
• Profile photo and name with global points and badges

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2434


<!-- page 2435 -->
User profile pop-up window with gamification information

Gamification notifications
Community users receive notifications about badge assignments and levels achieved through
the activity feed.
This includes global, forum, and topic levels achieved. A user, or any of their followers, are
notified through an activity feed update in the following scenarios:
• When a user advances a level (global, forum, or topic)
• When a user earns a badge
How to earn points
In order to be transparent to your users about gamification rules, you can share the points
received for community activities.
Navigate to Community > How to Earn Points for a description of the activities that users can
perform to earn points. This page has links to the user's profile page. If gamification rules are
modified, then this page shows the updated information.
Moderate gamification
Monitor points earned by users and award points and badges to users based on their
participation within the community.
Award or remove points for a community user
Award points to a user to recognize their contributions to the community. Remove points for a
user if you observe that they are cheating the gamification system.

Before you begin

Role required: sn_gamification.moderator

Procedure
1. Navigate to the Community homepage.
2. Go to Community > Leaderboard.
3. Click the name of the user on the leaderboard to open the user profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2435


