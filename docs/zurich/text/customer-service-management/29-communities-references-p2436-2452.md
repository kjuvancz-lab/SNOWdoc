# Zurich Customer Service Management — Communities references

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2436–2452 of 2452

Sections: Communities references (p2436)

---

<!-- page 2436 -->
4. Click the profile overflow icon (...) and select Assign Points.
5. In the Assign Points pop-up window, enter the number of Points, a Reason for awarding the
points, and select a Track.
a. To assign points, the points entered should be a positive value such as 100.
b. To remove points, the points entered should be a negative value such as 100.
The maximum number of points that can be awarded or removed at one time is 1000.
6. Click Assign Points.
An entry for the point assignment activity shows at the top of the Points list and the user's
point total is updated.
Award a badge to a user
Award gamification badges to community users to recognize their community activities.

Before you begin

Role required: sn_gamification.moderator, sn_gamification.admin

About this task

A badge can be awarded to a user only once. If a badge is removed from a user, it can then be
awarded to that user again.

Procedure
1. Navigate to All > Community > Gamification Data > Profile Badges.
2. Click New.
3. Select a Badge from the Gamification Badges list.
4. In the Live Profile field, add the name of the user.
5. Click Submit.
The badge is assigned to the user and it appears on the community portal.
Remove a badge from a user
Remove a gamification badge from a community user if it is no longer relevant for that user.

Before you begin

Role required: sn_gamification.moderator, sn_gamification.admin

Procedure
1. Navigate to All > Community > Gamification Data > Profile Badges.
2. Select the Active field for the desired user and badge.
3. Change the Active field to false.
4. Click Update.
The badge is removed for that user and is no longer visible on the community portal.

Communities references
Reference topics provide additional information about communities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2436


<!-- page 2437 -->
Quick start tests for Communities
Validate that Communities still work after you make any configuration change, such as apply an
upgrade or develop an application. Copy and customize these quick start tests to pass when
using your instance-specific data.
Communities quick start tests require activating the Customer Communities
plugin (com.sn_customer_communities) and the Communities Demo Data plugin
(com.sn_communities_demo).
Communities: Community test suite
Test

Description

Release version

Post question and validate
feed

Verify that a question is
posted in the community and
validate whether it appears in
the content feed.

Madrid

Post video

Verify that a video is posted in
the community.

Madrid

Forum membership approval

Verify that a membership
request to a forum is
approved.

Madrid

Forum membership reject

Verify that a membership
request to a forum is rejected.

Madrid

Approve a moderation task

Verify that a moderation task
is approved.

Madrid

Reject a moderation task

Verify that a moderation task
is rejected.

Madrid

Topic subscription and activity Verify that a topic is
New York
feed validation
subscribed to and the topic
activities appear in the activity
feed.
Approve content approval
workflow task on question

Verify the content approval
workflow of a question.

New York

Question auto-subscription
and activity feed validation

Verify that the author is
New York
automatically subscribed to
the question and the question
activities appear in the activity
feed.

Follow a user

Verify that a community user
is able to follow another
community user.

New York

Reject content approval
workflow task on question

Verify the content approval
workflow of a question when
content is rejected.

New York

Gamification on video posting

Verify the gamification points
gained when posting a video.

New York

Forum subscription and
activity feed validation

Verify that a forum is
subscribed to and the forum

New York

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2437


<!-- page 2438 -->
Communities: Community test suite (continued)
Test

Description

Release version

activities appear in the activity
feed.
Question subscription and
activity feed validation

Verify that a question is
subscribed to and the
question activities appear in
the activity feed.

New York

Post a video with 'Disable
comment' option

Verify a video is posted with
Orlando
Disable comments option
as selected.

Pin a video as Featured

Verify that a video is marked
Orlando
as featured by community
administrator in the forum and
community home page.

Related topics
Quick start tests

Properties installed with Communities
Community administrators can use properties to configure Communities behavior.
The following properties are available for further configuration. To list the properties, enter
sys_properties.list in the filter navigator and search for the property to configure.

Note: You can also view Community Properties and Forum Properties from the
application navigator. These modules contain a list of the most frequently used properties
that you can configure for your community.
Communities properties
Property

Description

sn_communities.adminNoReplyEmail

Email address for community-related notification
• Type: string

• Default value: communityadmin@servicenow.c
sn_communities.additional_search_sources

List of additional search sources to be included
• Type: string

• Default value: "community-forums, community
sn_communities.scheduling.allow_authors

Allow or restrict authors to schedule the content
• Type: boolean
• Default value: Yes

sn_communities.attachments.max_allowed_size

Maximum file size of an attachment in the comm
"sn_communities.attachments.max_file_size".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2438


<!-- page 2439 -->
Communities properties (continued)
Property

Description

• Type: string
• Default value: 5 MB
sn_communities.attachments.document.max_allowed_size

Maximum file size of a community document. It w
"sn_communities.attachments.document.max_s
• Type: string
• Default value: 25 MB

sn_communities.blog_count

Number of blogs that a user can post per day.
• Type: integer
• Default value: 20

sn_communities.content.meta_description

When generating SEO data for an entity, the num
to generate a portion of the SEO <description> ta

Typically, the SEO <description> tag for a Comm
actual record in the following format: “<forum> - <
• Type: integer
• Default value: 100
sn_communities.content.views.count.limit

Number of views for content pages that are allow
sn_communities.content.views.time.limit.
• Type: integer
• Default value: 50

sn_communities.content.views.time.limit

Duration, in seconds, during which a specific nu
sn_communities.content.views.count.limit param
• Type: integer
• Default value: 3600

sn_communities.disable_terms_conditions_role

Comma-separated list of roles that bypass the te

sn_communities.edit_content_explicit_role

Comma-separated list of roles with permission to
• Type: string

• Default value: n_communities.community_mod
sn_communities.enable_session_cache

Enables or disables session caching.

True: The permissions of any non-admin users o
access to the various forums and community con
community permissions do not take effect until t
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2439


<!-- page 2440 -->
Communities properties (continued)
Property

Description

False: The permissions of any non-admin users
• Type: boolean
• Default value: false

Note: Setting this system property to true i
session.
sn_communities.enable_topics

Enables or disables topics within a community.

If the property is set to false and gamification is e
• Type: true|false
• Default value: true
sn_communities.enable_user_mentions

Enables or disables the user-mentions functiona

sn_communities.glide.script.block.client.globals

Set the value to true to re-enable most of the ina
• Type: boolean
• Default value: false

sn_communities.implicit_access_mapping

Assign access implicitly to users based on the p

• If a user is given forum_admin access, they ca

• If a user is given forum moderation rights, they
• Type: string
• Default value:

{"forum_admin": ["forum_read", "forum_write", "
["forum_read", "forum_write", "forum_moderato
sn_communities.instance_base_url

Vanity URL for your instance to be used in email
the URL to be different to the instance name.
• Type: string
• Default value: none

sn_communities.is_content_write_allowed_for_guest_user

Determines whether Content_write access is allo

False: Content_write access is not given to a pub

True: Content_write access is given to a public o
• Type: boolean
• Default value: false
sn_communities.knowledge_base_id

All questions created in Communities are entere

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2440


<!-- page 2441 -->
Communities properties (continued)
Property

Description

• Type: string

• Default value: a4c9fb2e6703220071b89a6617
sn_communities.logging.destination

Location of the log messages.
• Type: string
• Default value: db

sn_communities.log.verbosity

Code Search log verbosity for the community. Se

• 0: Show information that may be useful while d
warning, and error messages.

• 1: Show progress messages as the Code Searc

• 2: Show warning which indicates possible une

• 3: Show only critical errors which may prevent
• Type: choice list
• Default value: 1
sn_communities.logging.verbosity

Category for writing log messages: Debug (0), In
• Type: choice list
• Default value: 1

sn_communities.max_topic_limit

Maximum number of topics that can be associat
five.
• Type: integer
• Default value: 5

sn_communities.minimum_activity

Minimum number of activities required to make t
• Type: integer
• Default value: 5

sn_communities.portal_default_config

Community portal default configuration. Used in
• Type: string

• Default value: [{"uiPageMapping":[{"contentTyp
question-circle","internalName":"question","con
{"contentTypeId":"57f785863b2b220085f76b4
camera","internalName":"video","contentArticle
{"contentTypeId":"cc3fcaa0dbd26600b1f6f78e
left","internalName":"blog","contentArticle":"a","
{"contentTypeId":"0764c981dbde6600b1f6f78
{"contentTypeId":"8f0a215c6707220071b89a6
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2441


<!-- page 2442 -->
Communities properties (continued)
Property

Description

circle","internalName":"answer","contentArticle
{"contentTypeId":"3f86a8db971232007a97a23
text","internalName":"document","contentArticl
{"contentTypeId":"4c3a995ac302320012e45c
calendar","internalName":"event","contentArtic
sn_communities.public_forum_user

sys_id of the public forum user. Used to calcul
• Type: string

• Default value: 88ef2155931322005b963511e5
sn_communities.registered_forum_user

sys_id of the registered forum user. This value
• Type: string

• Default value: 5dce996993232200dd773511e5
sn_communities.video_count

Number of videos a user can post per day.
• Type: integer
• Default value: 20

sn_communities.default_permission_for_forum_memberships Sets the default permission for forum membersh
• Type: string

• Default value: ff73ee9893223200a8223511e57
sn_communities.forumListBatchSize

Default number of forums to show on the topics
• Type: integer
• Default value: 12

sn_communities.topicListBatchSize

Default number of topics to show on the topics li
• Type: integer
• Default value: 12

sn_communities.disableForumInvitesForExternalEmails

Determines if forum invites from the forum page

Note: Do not change this value manually b
• Type: boolean
• Default value: true
sn_communities.attachments.document.max_size

Maximum attachment file size in MB. (1 MB = 102
• string
• Default value: 5

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2442


<!-- page 2443 -->
Communities properties (continued)
Property

Description

sn_communities.attachments.file_extensions

Supported file extensions for community attachm
• Type: string

• Default value: PPT,PPTX,XLS,XLSX,DOC,DOCX
sn_communities.attachments.max_attachment_count

Maximum number of attachments that can be at
• Type: string
• Default value: 3

sn_communities.attachments.max_file_size

Maximum attachment file size in MB. The maxim
• Type: string
• Default value: 2

sn_communities.attachments.max_invalid_attempts

Maximum number of invalid attempts a user can
• Type: string
• Default value: 3

sn_communities.attachments.max_total_size

Maximum total size (in GB) of attachments. (1 GB
• Type: string
• Default value: 500

sn_communities.attachments.total_size

Total size (in KB) of attachments in the communi
• Type: string
• Default value: 3680.04

sn_communities.attachments.user.day_limit

Maximum number of attachments that can be at
• Type: string
• Default value: 20

sn_communities.days_to_keep_search_logs

Sets the number of days to keep the search log o
• Type: integer
• Default value: 180

sn_communities.minimum_characters_to_search

Number of characters before a search engine sta
• Type: integer
• Default value: 3

sn_communities.search.blog.enable_acl

Sets how permissions are evaluated for blog typ

True: Permission is evaluated for that specific co
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2443


<!-- page 2444 -->
Communities properties (continued)
Property

Description

False: Permission is evaluated at the forum and c
• Type: boolean
• Default value: false
sn_communities.search.discussion.enable_acl

Sets how permissions are evaluated for question

True: Permission is evaluated for that specific co

False: Permission is evaluated at forum and cont
• Type: boolean
• Default value: false
sn_communities.search.document.enable_acl

Sets how permissions are evaluated for docume

True: Permission is evaluated for that specific co

False: Permission is evaluated at the forum and c
• Type: boolean
• Default value: false
sn_communities.search.event.enable_acl

Sets how permissions are evaluated for event ty

True: Permission is evaluated for that specific co

False: Permission is evaluated at the forum and c
• Type: boolean
• Default value: false
sn_communities.search.video.enable_acl

Sets how permissions are evaluated for video ty

True: Permission is evaluated for that specific co

False: Permission is evaluated at the forum and c
• Type: boolean
• Default value: false
sn_communities.user.document_count

Number of documents a user can post per day.
• Type: integer
• Default value: 20

sn_communities.video_count

Number of videos a user can post per day.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2444


<!-- page 2445 -->
Communities properties (continued)
Property

Description

• Type: integer
• Default value: 20
sn_communities.view_log_sources

JSON string that provides a mapping of view log
Log [sn_communities_view_log] table.
• Type: string
• Default value:

{"searchResult": "search_result", "contentFeed
sn_communities.knowledge.enable_harvesting

Enables knowledge harvesting from communitie
• Type: string
• Default value: true

Activity Subscription properties
Property

Description

com.snc.actsub.activities.api.fetch.limit

Number of activities in the activity feed.
• Type: integer
• Default value: 10

com.snc.actsub.activity.rate.count.limit

Number of activities that can be created within
a certain time frame.
• Type: integer
• Default value: 100

com.snc.actsub.activity.rate.time.limit

Duration, in seconds, during which activities
can be created. Activities are no longer
created after the limit.
• Type: integer
• Default value: 3600

com.snc.actsub.activity.stream.user.limit

Enter the limit on number of activities stored
for a user in the activity feed.
The oldest activities are deleted when the limit
is reached.
• Type: integer
• Default value: 2000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2445


<!-- page 2446 -->
Activity Subscription properties (continued)
Property

Description

com.snc.actsub.core.disable_plugin

Enable (true) or disable (false) the plugin
functionality.
• Type: boolean
• Default value: false

com.snc.actsub.activity.stream.inactive.disabledEnable pull model for activity feed so that the
activity fanouts are disabled and not pushed
to the inactive user streams.
• Type: boolean
• Default value: false

Note: When disabled, run the Manage
Activity fanouts scheduled job for the
changes to take immediate effect.
com.snc.actsub.activity.stream.inactive.duration The duration after which fanouts will be
disabled for inactive user streams.
• Type: integer
• Default value: 30
com.snc.actsub.activity.stream.inactive.streams Enter comma separated stream names
which can be considered inactive when not
accessed for a certain duration.
• Type: string
• Default value: default
com.snc.actsub.activity.enable_fanout_config

Enable the property to trigger Activity Fanouts
based on the configuration at Activity Type.
Confirm if they are properly configured and
then enable the flag.
• Type: boolean
• Default value: false

Note: For zboot, this property is
enabled by default. You must create this
property for upgrade scenarios.

External User Registration properties
Property

Description

sn_ext_usr_reg.allowed_email_domains

Comma-separated list of email domains that
can be used to register. By default, the value

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2446


<!-- page 2447 -->
External User Registration properties (continued)
Property

Description

is empty, indicating that all email domains are
allowed.
• Type: string
• Default value: none
sn_ext_usr_reg.captchaEnabled

Enables Google re-CAPTCHA on the selfregistration page.
• Type: boolean
• Default value: true

sn_ext_usr_reg.eur_user_role

Adds a role when a sys_user record is created
through self-registration.
• Type: string
• Default value:
sn_communities.community_user

sn_ext_usr_reg.Reg_link_expiration_days

Number of days that the registration link
remains active. Links which are older than the
specified number of days are deactivated and
cannot be used for completing the registration
process.
• Type: integer
• Default value: 3

sn_ext_usr_reg.request_count

Maximum number of times a registration link
can be requested.
• Type: integer
• Default value: 3

sn_ext_usr_reg.Temp_user_record_purge_days Number of days that a registration record is
maintained in the User Registration Request
[user_registration_request] table. Records
older than the specified number of days are
deleted.
• Type: integer
• Default value: 30

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2447


<!-- page 2448 -->
Gamification properties
Property

Description

sn_communities.enable_gamification

Enables or disables the gamification
feature for the community and controls the
appearance of gamification-related widgets on
the Community portal.
When set to false, no gamification
components are displayed. User point totals
and badge assignments are not affected.
• Type: boolean
• Default value: true

sn_communities.content.show_gamification_level
Controls the gamification level that is
displayed next to the Community user's name
on the Content pages.
• Type: choice list
• Choices:
◦ none: Do not display the user's level
◦ sn_gamification_modules: Show the
user's level in the Community
◦ sn_communities_forum: Show the user's
level for the forum to which the content
belongs
• Default value: sn_gamification_modules
sn_gamification.days_to_keep_activity_records Number of days to keep the gamification
activity records in the database. Records
created or updated prior to the specified
number of days are purged.
• Type: integer
• Default value: 180
sn_gamification.enable_debug_logs

Enables the debug logs for the gamification
feature.
• Type: boolean
• Default value: false

sn_gamification.levels_limit

Maximum number of levels that can be
defined for the gamification feature.
• Type: integer
• Default value: 10

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2448


<!-- page 2449 -->
Questions to case properties
Property

Description

sn.communities.enable_csm_case_creation_from_question
This property provides access to the “Create
Case” option on the Community Question
widget and the “Question to Case” option on
the Community header list menu.
• Type: true | false
• Default value: true

Social Q&A properties
sn_kb_social_qa.max_answers_per_user_daily Enter the maximum number of times a user
can post answers to the Social Q&A questions
per day.
• Type: Integer
• Default value: 500
• Location: System Properties
Maximum number of Social Q&A comments
that can be posted per user per day.

Enter the maximum number of times a user
can post comments to the Social Q&A
questions or answers per day.
sn_kb_social_qa.max_comments_per_user_daily
• Type: Integer
• Default value: 500
• Location: System Properties
Maximum number of Social Q&A questions
that can be posted per user per day.

Enter the maximum number of times a user
can post Social Q&A questions per day.

sn_kb_social_qa.max_questions_per_user_daily • Type: Integer
• Default value: 500
• Location: System Properties

Communities roles
Ensure that users can perform all necessary actions by assigning roles.
Roles
Role

Description

Access via

Community administrator

Administer and manage all
sections in the community.

Platform UI

Moderate content associated
with the community.

Platform UI

[sn_communities.admin]
Community moderator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2449


<!-- page 2450 -->
Roles (continued)
Role

Description

Access via

[sn_communities.community_moderator]
Forum administrator

Administer and manage forum Platform UI
permissions content types,
[sn_communities.forum_admin] and topics associated to the
forum.
Forum moderator

Moderate content within
specified forums.
[sn_communities.forum_moderator]

Platform UI

Moderation administrator

Platform UI

Gamification administrator

Administer gamification
Platform UI
settings and configure
gamification rules. Contains
the sn_gamification.moderator
role.

Administer moderation
settings and moderate
[sn_communities.moderation_admin]
content associated forums.

[sn_gamification.admin]

Gamification moderator
[sn_gamification.moderator]

Review and edit the
gamification points earned by
community users.

Platform UI

Community user

Any user who has signed up
and accepted the community
[sn_communities.community_user]
Terms & Conditions. Their
access to forums depends
on the permissions set up for
each specific forum.

Communities Portal

Knowledge harvester

A community user who
can harvest knowledge
[sn_communities.knowledge_harvester]
articles from a community.
Community administrators,
and community moderators
inherit this role by default.
The knowledge harvester
role must be granted to other
users.

Communities Portal

Proxy case creator

Communities Portal

A community user who can
create a customer service
[sn_customerservice.proxy_case_creator]
case from a community
discussion.

Forum form fields
Set fields on the form to create new forum or sub forum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2450


<!-- page 2451 -->
Forum form
Field

Description

Name

Name of the forum.

Description

A short description that defines the forum.

Image

An image that provides a visual reference to describe the forum.

Order

The order that forums are displayed in. By default, the display is alphabetical.
Enter a numerical value to set the order that forums are displayed in. You can
combine both options.

Parent

The parent forum, if required. This lists the forum as a sub forum of the parent
forum.

Enable
Membership
for this
Forum

Check box to make the forum membership only, and enable registered forum
users to request to join the forum. If you select this check box, the forum title is
visible to all registered community users. Community users must request access
to join the forum to see the content.

Note: The Approval Workflow for Membership field appears when you
select this check box.
Approval
The workflow for approving new members of a forum.
flow for
Note: The Approval flow for membership setting takes precedence over
Membership
Approval workflow for membership if both are set by legacy customers.
Approval
The workflow for approving new members of a forum.
Workflow for
Note: This field is only available for customers who signed up before the
Membership
Zurich release. If you're a new customer, you won't see this field.
Knowledge
Base
used for
harvesting

The knowledge base used for harvesting community discussions to knowledge
articles.

Related topics
Create a forum
Create a sub forum

Video Configurations form fields
Set fields on the form to configure video sources.
Video Configurations form fields
Field

Description

Host

A video source website, for example, youtube.com.

Domain

The domain is set to global by default.

Application

The application for the video source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2451


<!-- page 2452 -->
Video Configurations form fields (continued)
Field

Description

It is recommended that you enter Community.
Widget

A widget to render the videos from the source.
Enter Communities render video.

Related topics
Configure video sources for a community

Topic form fields
Set fields on the form to create a new topic.
Topic form fields
Field

Description

Name

Name of the topic.

Description

A short description to define what the topic is.

Parent

The parent topic, if required. If you enter a parent topic, the topic is
listed as a subtopic of the parent topic.

Image

An image that provides a visual reference that describes the topic.

Knowledge category
used for harvesting

The knowledge category used to categorize community discussions
harvested to knowledge articles.

Related topics
Create a topic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2452


