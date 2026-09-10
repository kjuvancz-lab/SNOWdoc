# Zurich Customer Service Management — Organize agent workspaces

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 599–748 of 2452 | Part 3 of 4

Sections: Organize agent workspaces (p299)

---

<!-- page 599 -->
Component

Description

This component also includes a menu with additional form
actions, such as personalizing the form, exporting data, and
copying the URL.
Case summarization

The case summarization component appears above the
activity stream. When an agent opens a case record, the
component is collapsed and in the default state.
Agents can use this component to do the following:
• Summarize case details.
• Post the summary to the activity stream.
• Refresh the summary.
The case summarization component requires the Now Assist
for Customer Service Management (CSM) application to be
activated and configured. For more information, see the Case
summarization component section below.

Activity stream

The activity stream component displays a list of activities
occurring on a case record. This list can be collapsed to
provide a quick view of case activities or expanded to provide
more detail about individual activities.
For more information, see the Activity stream component
section below.

Note: The Front-line case page uses modeless dialogs
for composing comments, work notes, and emails.
Contextual side panel

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Front-line case page includes
the following tabs.
• Record information
• Recommended Actions search
• Attachments
• Form Templates
• Response Templates
• Email Templates
• Related Lists
For more information, see the following sections:
• Contextual side panel component
• Related lists component

Action bar component
The Front-line case page supports actions from the following Customer Service Management
and CSM Configurable workspace plugins:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
• Customer Service (com.sn_customerservice)
• CSM/FSM Configurable WS Foundation (com.snc.uib.cwf_workspace)
• CSM Configurable Workspace (com.snc.uib.csm_agent_workspace)
• CSM Workspace (com.snc.agent_workspace.csm)
• Major Issue Management (com.sn_majorissue_mgt)
• Customer Service with Service Management (com.sn_cs_sm)
• Customer Service with Request Management plugin (com.sn_cs_sm_request)
• Time Recording for Customer Service (com.snc.csm_time_recording)
• Omni-Experience Standard Feature Set
If you are using any additional plugins, you must add the actions from those plugins to the Frontline case page action bar. For more information, see Configure the Front-line case page action
bar.
The Front-line case page action bar includes the Follow action in the More Actions menu.
Selecting this action enables you to receive notifications when comments or work notes are
added to the record.
You receive notifications in the Notifications menu at the top of the page according to your
notification preferences. You can select the notification to open the record that was updated. For
more information, see the following topics:
• Configure Next Experience notification preferences
• Follow records in Next Experience
When the Follow action is selected, the button toggles to Unfollow. To stop receiving
notifications, select Unfollow.

Contact and consumer lookup components
The contact and consumer lookup components enable users to do the following:
• Look up a contact or consumer by name, phone number, or email address. As you type
characters in the search box, matching information appears in record cards below the search
box.
• Select a contact or consumer after searching by selecting the desired record card. The
selected record card replaces the lookup component.
User roles determine which lookup component appears on the Front-line case page.
• Front-line case agents can see the Contact lookup component.
• Consumer agents with the Front-line case agent role can see the Consumer lookup
component.
• Some users, such as managers, can have both B2B (account and contact) and B2C
(consumer) roles. When a user has both roles, they can see both the Contact and Consumer
lookup components.
When using the Contact lookup component to look up and select a contact, the system hides
the Consumer lookup component. When using the Consumer lookup component to look up and
select a consumer, the system hides the Contact lookup component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
When using the Contact component, the system displays the contacts for the selected account.
If the agent selects a different contact, the system updates the account.
After selecting a contact or consumer, users can perform the following actions from the contact
or consumer record card:
• Remove a linked contact or consumer from a case record by selecting the more actions icon
and then selecting Unlink.
• Edit and save a linked contact or consumer record by selecting the pencil icon, editing the
information for the contact, and selecting Save.
• Select a reference field on a lookup card to open the referenced record in a subtab.
• Select an email address on a lookup card to open to open the email composer in a subtab.
• Select a phone number on a lookup card to make a phone call.
• Collapse the card to display more record content. When collapsed, users can see a link to the
contact or consumer name.
The Contact and Consumer lookup components include advanced search capabilities that
enable agents to perform a type-ahead search across multiple tables and fields. This includes
the following types of matching:
• Exact match: phone number and record number
• Starts with match: name and email address

Case summarization component
The case summarization component provides agents with a summary of a customer service
case, including the issue and the actions taken. Agents can generate summaries to understand
case context and post summaries to the case work notes.
The case summarization component appears above the activity stream on the Front-line case
page variant. Upon first opening a case, the component is collapsed and in the default state.
Using this component, agents can:
• Select Summarize to create a summary of the case details.
• Select Share to work notes to copy the summary text to the activity stream.
◦ Review the summary text in the Share to work notes pop-up window and modify the text as
needed.
◦ Select Save to work notes on the pop-up window to add the text to the activity stream.
• Select the refresh icon in the component footer to refresh the text and get the latest summary.

Note: If the case does not contain enough text to summarize, the system displays the
following message: "This case doesn't have the minimum number of words required for
summarization yet."
To use the case summarization component with the Front-line case page, activate the Now Assist
for Customer Service Management (CSM) application and configure the case summarization skill
in the Now Assist Admin console. For more information, see:
• Activate Now Assist for Customer Service Management (CSM)
• Configure the case summarization skill in the Now Assist Admin console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

601


<!-- page 602 -->
Activity stream component
The activity stream component displays a list of the activities occurring on a case record. The
activities in the list can be collapsed or expanded. When collapsed, the agent can quickly
scan the list to get an overview of case activities. When expanded, the agent can see detailed
information on individual activities.
Front-line case page activity stream component

The activities in the activity stream are represented by tiles that use icons and colors to indicate
the activity type.
• Comment
• Work note
• Attachment
• Field change
• Email sent or email received
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
• Chat discussion
• Custom icon
When collapsed, each activity in the list includes:
• A tile that represents the activity type.
• The name of the user responsible for the activity.
• A brief one-line summary of the activity.
• A badge that indicates if an activity is internal or external.
• A relative timestamp.
• An expand button that the agent can use to see a detailed summary of the activity.
When expanded, each activity also includes:
• A full date and time stamp.
• An action label that describes the type of activity.
• For comments and work notes, the full text of the comment or work note.
• For field updates, the field name and the updated field value.
• For emails, detailed message information.
• For attachments, a small preview of the attached file.
• For chats, a sidebar chat card.
The activity stream uses Modeless dialogs for composing comments, work notes, and emails.

Contextual side panel component
The Front-line case page includes the contextual side panel component, which provides agents
with the following functionality.
Front-line case page tabs in the contextual side panel
Tab

Recommended Actions

Description

The Recommended Actions tab is now available as the first tab
in the contextual side panel and is enabled for Pro customers.
It includes a set of base system recommendations, such as
similar incidents and similar open incidents.
The Recommended Actions tab includes AI search
functionality. Agents can use AI search to find relevant
resources or resolutions for customer issues.
The search feature displays an initial set of search results
based on the text in the case short description. This initial set
of results includes knowledge articles. Agents can also enter
different search keywords and repeat the search.
From the list of search results, agents can do the following:
• Select a source to see search results of that type.
• Filter the list of search results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
Front-line case page tabs in the contextual side panel (continued)
Tab

Description

• Sort the list of search results.
• Open the search results in full view in a record sub-tab.
• Take the following actions:
◦ Attach and share article
◦ Perform other actions such as reading articles in full
view, flagging articles, or marking articles as helpful or
unhelpful.
• View successful actions by selecting the Actions history
icon.
Suggested Actions tab: This tab displays relevant actions to
agents based on the context of a record or recommends a
value for a field. For more information on how to configure
contexts to display relevant actions for the agent, see
Recommended Actions. The Suggested Actions tab is
available in the base system for Pro customers and doesn’t
require additional configuration. The Suggested Actions tab
is displayed if either the Task Intelligence for CSM or the Now
Assist for CSM plugin is installed. Non-Pro customers can
enable the tab manually.
• Without the plugin, only the Search tab is visible on the
Front-line case page.
• With the plugin installed, both Search and Suggested
Actions tabs appear, and recommendations are shown
under Suggested Actions.
• If the plugin is uninstalled, the Suggested Actions tab is no
longer available.
For more information, see Use AI search in Recommended
Actions to resolve cases.

Note: Using Recommended Actions in the contextual
side panel requires the Recommended Actions
application (sn_cs_nb_action) which is included with the
CSM Configurable Workspace application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
Front-line case page tabs in the contextual side panel (continued)
Tab

Description

Note: To ensure Recommended Actions loads
automatically and performs optimally, enable the
Enable prefetch check box and verify that the Get
recommendations data broker exists under Data
Resources. This enhancement applies only to the Frontline Case page and CSM default record page and
requires Recommended Actions to be enabled on the
page. If you have any custom variants created before this
enhancement, you must manually enable these settings.
Record Information

The Record Information tab includes the following cards:
• Overview: Displays relevant information about the case
including the account and contact, the case priority, and the
state.
• Active SLA: Displays active SLAs for the case, including time
remaining, the SLA state, and any breaches.
The cards that appear in the Record Information tab can
be configured in the Front-line Case Page Ribbon Config
ribbon configuration. For more information, see Set up a ribbon
configuration in CSM Configurable Workspace.

Attachments

The Attachments tab provides access to case-related
attachments. From this tab, agents can view and download
attachments.

Templates

The Templates tab provides access to available form templates
which enable agents to automatically populate fields on new
records. Agents can manually apply a template when creating
a new record such as an incident or change.

Response Templates

The Response Templates tab provides access to available
response templates. These templates contain reusable
messages that agents can copy to provide quick and
consistent messages to customers.

Email Templates

The Email Templates tab provides access to available email
templates. These templates contain default values for fields
that agents can add to email messages. These default values
can include the recipients (email addresses in the To, Cc, and
Bcc fields), the sender, the subject of the email, and text to
include in the message body.

Related Lists

The Related Lists tab provides access the case-related lists.
The Front-line case page incorporates related list functionality
into the contextual side panel. These lists appear in an
accordion format that agents can expand and collapse as
needed.
An indicator displays the number of records available in a
related list. When expanded, the records in a related list are
displayed in card format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
Front-line case page tabs in the contextual side panel (continued)
Tab

Description

For more information, see the Related lists component section
below.

Related lists component
The related lists component provides access to the case related lists. This component uses an
expandable accordion format. Agents can expand the desired lists to see the related items. This
component also displays an icon with the number of items in a list.
Front-line case page related lists component

Related lists include the following actions:
• Create: Opens a blank record in a sub tab that the agent can use to create a new item.
• View all: Opens a list of records in a sub tab.
• Show more: is displayed for lists that have more than five items.
The items in an expanded list are displayed as cards. An expanded list shows one card for each
item in the list.
• Agents can open an item in a sub-tab.
• If a list has more than five items, it includes a Show more option.

Customer History component
The Customer History component displays customer, consumer, or account history information,
depending on the field selections on the interaction record. This component displays the
information previously displayed in the Customer Activity tab. For more information, see
Customer History component in the Customer Central documentation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
Record presence feature
The Front-line case page includes the record presence feature. This feature allows agents to see
other users who are viewing the same record and enables easy collaboration.
The user presence component displays an icon in the form header that shows the user who is
currently viewing the record. For three or more users, the component displays two icons plus a
number that represents additional users.
• Hover over an icon to see more information about a user.
• Select the number icon to see more information about the additional users.
For more information about this feature, see User presence

.

Requesting information from customers
The Front-line case page includes a Request Info UI action that agents can use to request
information from customers. This action provides agents with the option to send a comment to
the customer when requesting information.

Note: The Request Info UI action is available to users with the
sn_cwf_wrkspc.frontline_agent role and for cases in the Open state.
The Request Info UI action on the Front-line case page behaves differently than the same action
on the CSM default record page. On the Front-line case page, this action moves a case to the
Awaiting Info state but does not require the agent to add a comment.
To request information:
1. Select Manage Case in the action bar.
2. Select Request Info.
The system sets the case State field to Awaiting Info and displays the following message to the
agent: Send a comment to request info if you haven’t already. The

case is awaiting info.
• If the agent has not sent a comment, they can compose and post a comment in the activity
stream.
• If the agent has already composed a comment and then selects Request Info, the system
saves the record and automatically posts the comment to the activity stream.

Attaching and sharing knowledge articles
Agents can share articles with customers by using the Attach and share article knowledge
guidance. This guidance recommends relevant knowledge articles to customer service agents
and enables them to share the selected articles with customers in comments, work notes, or
emails.
From the Recommendations tab in the contextual side panel, agents can use modeless dialogs
to do the following:
• Attach and add a link to a comment.
• Attach and add a link to an email.
• Add a link to a work note.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
Selecting these actions displays the comment, work note, or email modeless dialog. Once the
guidance is executed, it is marked as Complete. After an action is completed, an entry is posted
in the case record activity stream.
To display the knowledge article links that are added to the modeless dialogs with the Attach
and share article guidance, the system administrator needs to manually enable the rich text
editor:
1. Navigate to All > System Properties > All Properties.
2. Search for the glide.ui.journal.use_html system property.
3. Set the Value to true.
When the glide.ui.journal.use_html is set to true, the Rich Text Editor is enabled by
default for comments and work notes in the Activity Stream. A Rich Text Editor toggle appears in
the upper-right corner of the message box, allowing users to switch between rich text and plain
text as needed.
The editor provides options such as bold, italics, lists, hyperlinks, and text alignment to help
create structured, readable content. This setting does not affect email composition, which is
managed separately via sys_email_client_confguration. The rich text editor and
formatting options are available by default in email messages, but the toggle does not appear.
For more information about the knowledge guidance, see Attach and share article guidance.
Modeless dialogs
Modeless dialogs are windows that overlay the main window content in CSM Configurable
Workspace. Customer service agents can use modeless dialogs to create and post comments
and work notes to the activity stream and to compose and send emails.
A modeless dialog is a window that appears in a workspace as an overlay on top of the main
window content. This overlay enables agents to interact with the window content and the overlay
content at the same time. Agents can use modeless dialogs to do the following:
• Create comments and work notes to post to the activity stream.
• Create and send emails and reply to or forward emails.
After opening a modeless dialog, agents can move it around the screen and put it where they
need it. This feature enables agents to reference information from the main window while drafting
text in the overlay window.

Thin compose modeless dialogs
The thin compose modeless dialog feature incorporates modeless dialogs into the activity
stream. It enables agents to initiate a comment, work note, or email in the activity stream and
then open the text in a modeless dialog. Thin compose modeless dialogs:
• Auto-expand to accommodate the text.
• Can be manually resized.
• Can be minimized after they're opened.
• Have the rich text editor enabled even when the glide.ui.journal.use_html system
property is set to false.
Thin compose modeless dialogs are available on the following record pages:
• Front-line case page
• CSM default record page
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
• CSM Interaction record page
• CSM centered chat interaction record page
• CSM voice interaction record page
• Email interaction record page

Note: The thin compose modeless dialog feature has the Rich Text Editor enabled, which
can add HTML tags along with the text to the Additional comments and Work notes fields
on the case record. To remove these tags, see Updating the glide.ui.journal.use_html
property.

Creating comments and work notes
Use modeless dialogs to create comments and work notes and post them to the activity stream.
Using modeless dialogs to create comments and work notes
Task

Description

Create a comment or work note

To create a comment or a work note:
1. Select one of the following tabs at the top of
the activity stream:
◦ Comments
◦ Work notes
2. Add the text to the Compose window.

Post a comment or work note to the activity
stream

To post a comment or work note, select one
of the following actions from the Compose
window:
• Post Comments
• Post Work notes
The system posts the comment or work note
to the activity stream. Saving the case record
also posts the comment or work note to the
activity stream.

Open a comment or work note in a modeless
dialog

Select the pop out ( ) icon to open a
comment or work note in a modeless dialog.
You can open a modeless dialog before or
after you start entering text in the Compose
window.

Note: You can have one modeless
dialog of each type (comments, work
notes, and email) open at a time.
Return a comment or work note to the
Compose window

After opening a comment or work note in a
modeless dialog, you can return the text to the
Compose window in the activity stream in the
following ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
Using modeless dialogs to create comments and work notes (continued)
Task

Description

• Select the Continue editing in compose
(
) button at the top of the modeless
dialog.
• Select the Pop in link in the Compose
window in the activity stream.
Minimize a modeless dialog

To minimize a modeless dialog, select the
Minimize dialog (
header.

) button in the window

Minimized modeless dialogs are added to the
Minimize modeless dialogs ( ) menu in the
action bar and appear in a list in this menu.
Open a minimized modeless dialog

Select the Minimize modeless dialogs (
)
menu in the action bar and then select an item
from the list.
Items in the Minimize modeless dialogs menu
appear in a list with the action type (email,
comment, or work note) and an abbreviated
title.

Discard a comment or work note

To discard a comment or work note:
1. Select the Close dialog (
modeless dialog header.

) button in the

2. Confirm the Close Dialog action by selecting
Continue in the confirmation pop-up
window.

The following guidelines apply to Compose windows for comments and work notes:
• Draft comments and work notes are local to the browser. If the browser page is reloaded, the
draft text is cleared.
• Comments and work notes stay synchronized on the form and in the modeless dialogs.
• The Compose window can be resized.

Creating emails
Use modeless dialogs to create and save email drafts and to send emails.
Emails that are sent from a modeless dialog are posted to the activity stream. Agents can reply to
and forward emails from the activity stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
Using modeless dialogs to create and send emails
Task

Description

Create and send an email

To create and send an email:
1. Select the Email tab at the top of the activity
stream.
2. Fill out the fields on the email form:
a. To, Cc, Bcc
b. Subject
c. Email body
3. Select Send email.
When creating emails and sending emails:
• The Compose window automatically closes
after the email is sent.
• The email is posted to the activity stream.

Open an email in a modeless dialog

Select the pop out ( ) icon to open an email
in a modeless dialog.
You can open a modeless dialog either before
or after you start entering text in the Compose
window.

Note: You can have one modeless
dialog of each type (comments, work
notes, and email) open at a time.
Return an email to the Compose window

After opening an email in a modeless dialog,
you can return the email to the Compose
window in the activity stream in the following
ways:
• Select the Continue editing in compose
(
) button at the top of the modeless
dialog.
• Select the Pop in link in the Compose
window in the activity stream.

Minimize a modeless dialog

To minimize a modeless dialog, select the
Minimize dialog (
header.

) button in the window

Minimized modeless dialogs are added to the
Minimize modeless dialogs ( ) menu in the
action bar and appear in a list in this menu.
Open a minimized modeless dialog

Select the Minimize modeless dialogs (
)
menu in the action bar and then select an item
from the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
Using modeless dialogs to create and send emails (continued)
Task

Description

Items in the Minimize modeless dialogs menu
appear in a list with the action type (email,
comment, or work note) and an abbreviated
title.
Reply to or forward an email

To reply to or forward an email:
1. Expand an email in the activity stream.
2. Select one of the following buttons to open
the Compose Email window:
◦ Reply
◦ Reply all
◦ Forward
3. Add the desired text.
4. Select Send email.
The Compose window automatically closes
after the email is posted to the activity stream.

Add a link to a knowledge article

To add a link to a knowledge article:
1. Select the Recommended Actions tab in the
contextual side panel.
2. View the list of knowledge articles or search
for an article.
3. Select the More Actions menu on the
knowledge article card.
4. Select Attach and add link in email.
The system adds a link to the knowledge
article in the body of the email.

Apply a template to an email

To apply a template to an email:
1. Select the Apply templates icon ( ) in the
Compose email modeless dialog footer to
display a list of available templates.
The Template preview modal displays the
available email templates. It doesn't display
quick messages or response templates.
2. Select a template from the list. You can also
search for a specific template.
The system adds the contents of the template
to the body of the email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
Using modeless dialogs to create and send emails (continued)
Task

Description

Note: If no templates are available, the
icon doesn't appear in the footer.
Open a draft email in a subtab

Select the Pop out icon ( ) in the Compose
Email window header to open the draft email in
a subtab.
The Compose Email window closes when the
email opens in the subtab.

View a list of draft emails

Select the View drafts icon (
) in the
Compose Email window footer. Selecting this
icon displays a list that includes the most
recent email drafts. The list also includes the
following actions:
• Manage drafts: Displays the Manage drafts
pop-up window. From this window, you can
view a list of all draft emails. You can also
delete email drafts from this window.
• Create new email: Creates a new email in
the Compose email window.

Select an email draft

Select the View drafts icon (
) in the
Compose Email window footer. Selecting this
icon displays a list that includes the most
recent email drafts. You can select a recent
draft from this list.
To view a list of all email drafts:
1. Select the View drafts icon and then select
Manage drafts.
2. Select a draft from the list in the Manage
drafts pop-up window.
The system saves the current draft email
and opens the selected draft email in the
Compose Email window.

Select an email draft from the Draft Emails
related list

1. Select the Related Lists tab in the contextual
side panel.
2. Expand the Draft Emails related list.
3. Select the Open draft icon on the desired
draft email card.
The system opens the selected draft email in a
subtab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
Using modeless dialogs to create and send emails (continued)
Task

Description

Discard the current draft email

1. Select the Discard draft icon ( ) in the
Compose Email window footer.
2. Confirm the Discard action by selecting
Discard in the confirmation pop-up window.
The system displays a message that the draft
email has been discarded.

Delete an email draft from the Manage drafts
pop-up window

1. Select the View drafts icon (
) in the
Compose Email window footer.
2. Select Manage drafts to display the
Manage drafts pop-up window.
3. Select an email to delete by enabling the
check box.
4. Select Delete in the pop-up window.
5. Confirm the action by selecting Delete
again.

The following guidelines apply to Compose windows for emails:
• An agent can create multiple email drafts.
• An agent can have one Compose window open at a time.
• The Compose Email window can be resized.

Collapsing and expanding the email header
The email header includes the following fields:
• To
• Cc
• Bcc
• Subject
You can expand and collapse the email header as needed by selecting the expand header (
and collapse header (

)

) icons.

When the email header is expanded, you can edit the information in these fields. When the email
header is collapsed:
• The names in the To, Cc, and Bcc fields are combined into one line. If there's a long list of
recipients, some of the names are replaced with "and more."
• The subject is displayed in a second line.
• The fields aren't editable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
When you create an email or forward an email, the header is expanded by default and displays
the To and Subject fields. If you expand the Cc and Bcc fields, the collapse header icon is
displayed.
When you reply to an email, the header is collapsed by default. Expanding the header shows all
the fields that contain information.

Compose Email modeless dialog footer icons
Several icons appear in the Compose Email modeless dialog footer that you can use when
creating email drafts.
Footer icons
Icon

Description

Discard draft (

Select this icon to delete the current draft. Then confirm the
delete action in the resulting confirmation message.

)

Apply template (

)

Select this icon to display a list of available templates. You can
select a template from the list or search for a specific template.
The list can display up to 10 templates. Selecting a template
applies that template to the draft email.

Note: If no templates are available, the icon doesn’t
appear in the footer.
View drafts (

)

Select this icon to display a list with recent draft emails as well
as email-related actions.
You can select an email draft from the list to display that draft
in the Compose Email window.
Email-related actions include:
• Manage drafts: Displays the Draft Management pop-up
window which includes a list of email drafts. Select a draft to
display the contents in the Compose Email window. You can
also delete email drafts from this pop-up window.
• Create new email: Creates a new email draft in the
Compose Email window.

Attach file (

)

Select this icon to attach files to an email draft From computer
or From record. After attaching one or more files, you can hide
or show the attachments.

Using form templates to create comments and work notes
You can create and use form templates that add content to the Additional comments and Work
notes fields on a case record and then post that content to the activity stream.

Content to add

Description

Comment

If a template includes content to add to the Additional
comments field on the case record, the system does the
following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
Content to add

Description

• Displays a modeless dialog for composing a comment.
• Adds the content to the Comments field in the modeless
dialog.
Selecting Post Comments adds the content to the Additional
comments field on the case record and to the activity stream.
Work note

If a template includes content to add to the Work notes field
on the case record, the system does the following:
• Displays a modeless dialog for composing a work note.
• Adds the content to the Work notes field in the modeless
dialog.
Selecting Post Work Notes adds the content to the Work
notes field on the case record and to the activity stream.

Comment and work note

If a template includes content to add to both the Additional
comments and Work notes fields on the case record, the
system does the following:
• Displays two modeless dialogs, one for composing a
comment and one for composing a work note.
• Adds the content for the comment to the Comments field in
the comment modeless dialog.
• Adds the content for the work note to the Work notes field in
the work note modeless dialog.
Selecting Post Comments adds the content to the Additional
comments field on the case record and to the activity stream.
Selecting Post Work Notes adds the content to the Work
notes field on the case record and to the activity stream.

If text already exists in the Additional comments or Work notes fields, applying a template
opens a modeless dialog and adds the template content. Selecting Undo removes the template
content from the modeless dialog and replaces it with the existing text from the fields on the
Case record.

Updating the glide.ui.journal.use_html property
The Rich Text Editor (RTE) is enabled for modeless dialogs and the thin compose modeless
dialog feature. It isn't enabled for the instance unless the glide.ui.journal.use_html
system property is set to true.
When you enter text in a comment or work note modeless dialog, the system adds that same text
to the Additional comments and Work notes fields on the case record. HTML tags can appear
along with the text in these fields.
To remove the HTML tags, enable the glide.ui.journal.use_html system property:
1. In the navigation filter, enter sys_properties.list to display a list of the properties stored in the
System Properties [sys_properties] table.
2. Search for the glide.ui.journal.use_html property in the Name column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
3. Set the Value field to true and select Update.
4. Return to CSM Configurable Workspace and refresh the page.
Setting this property to true enables the Rich Text Editor for the Additional comments and Work
notes fields on the case record and removes the HTML tags.
Lookup component
Use the lookup component on interaction record pages in CSM Configurable Workspace to look
up, link, and verify a contact or consumer on an interaction record.
Lookup and verify contact card

The lookup component is available on the following interaction record pages:
• CSM centered chat interaction record page
• CSM voice interaction record page
• Email interaction record page

Note: For some of these interaction record pages, the Lookup component replaces the
Lookup & Verify component that was formerly available in the contextual side panel.
For more information about the component usage and configuration, see Lookup
Experience Components documentation .

in the Next

Using the lookup component
Customer service agents can use the lookup component to search for and select a customer,
either a contact or consumer, and link that customer to the interaction record.
Linking a customer displays the customer information in a contact or consumer card on the
interaction record. After linking a customer to the record, agents can verify the customer.
Using the lookup component
Task

Description

Search for a contact or
consumer

Enter information in the Search field on the lookup card such
as a name, email address, phone number, or record number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
Using the lookup component (continued)
Task

Description

The lookup card displays a list of search results based on the
search term.
Lookup and verify search

Link a contact or consumer to
the interaction record

Verify a contact or consumer

Select the Link icon ( ) on a customer card from the list
of search results to link the selected customer with the
interaction record.
Verify the customer by selecting Verify on the lookup card. The
system displays the Verified tag in the card header.
If the customer is already verified, the system hides the Verify
button.

Note: If an agent creates a customer record from the
lookup component, the system creates and verifies the
customer at the same time.
Create a contact or consumer

Create a customer record by selecting the Create new (
icon in the lookup card header.

)

The system displays a new contact or consumer record. Enter
information in the relevant fields and select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
Using the lookup component (continued)
Task

Description

Note: If an agent creates a customer record from the
lookup component, the system creates and verifies the
customer at the same time.
Edit a contact or consumer

Make changes to the linked customer information by selecting
the More actions ( ) menu on the lookup card and then
selecting Edit.
The system displays the contact or consumer record fields.
Make changes to the desired fields and then select Save.
The system saves the changes to the contact or consumer
information and updates the same fields on the interaction
record.

Unlink a contact or consumer

Collapse or expand the
lookup card

Select the More actions ( ) menu on the lookup card and
then select Unlink to remove a contact or consumer from an
interaction record.
Select the up and down arrows on the lookup card to expand
and collapse the card. When expanded, agents can see the
customer details. When collapsed, agents can see more
content below the card.

Contact lookup card
The contact lookup card includes the following information:
• Name
• Mobile phone
• Business phone
• Email
• Street
• City
• State/Province
• Account

Consumer lookup card
The consumer lookup card includes the following information:
• Name
• Business phone
• Mobile phone
• Home phone
• Email
• Street
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
• City
• State/Province
Task SLA cards component
The Task SLA cards component displays the status of one or more Service Level Agreements
(SLAs) for the current record in card format.
The Task SLA cards component can display multiple SLAs. The cards are displayed in a carousel
with horizontal navigation. If more than one SLA card is present, agents can use arrows to scroll
through the cards. Within the Task SLA cards component, the case SLA card appears first
followed by case task SLA cards.

Note: When there are no active SLAs, the Task SLA cards component isn't shown.
Task SLA cards component

The Task SLA cards component is available on the Front-line case page. Previously, the SLA
information appeared in the Record Information tab in the contextual side panel. Agents can find
SLA information in the left column above the contact and consumer lookup components.
The SLA cards display a visual presentation of SLA information that agents can use to check
quickly where they are in the life cycle of the SLA.
• The SLA card header appears at the top of the card and includes a counter with the number of
active SLAs for the case.
• The SLA name is displayed below the SLA card header.
• The remaining time is displayed below the SLA name.
• Agents can expand and collapse the Task SLA cards component by selecting the chevron icon
in the SLA card header.
• Tags on the SLA card indicate the SLA status and either the time remaining or the time elapsed
since reaching the Breached state:
◦ Ongoing: Is displayed when an SLA starts (green background).
◦ At risk: Is displayed when 25% of the SLA time is remaining (yellow background).
◦ Breached: Is displayed when an SLA is violated (red background). This tag is displayed in
both the SLA card expanded and collapsed states.
Task activity timeline preset and controller
Use the Task activity timeline preset and controller to add the Timeline component as a
standalone component on task record pages such as case or incident.
The timeline uses icons to display record events and colors to show ranges of time, such as
when a case is with the agent or the customer. Agents can use the timeline in the following ways:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
• Zoom in and out.
• Select the Show details toggle to display more information.
• Hover over the icons to show tool tips.
For more information about the timeline features, see CSM Configurable Workspace form ribbon
and components.
Timeline component with Task activity timeline preset and controller

The Timeline component
is available in the UIB toolbox. This component displays activities for
task-based records such as cases or incidents in a timeline view. It uses the resolution shaper
configuration to automatically fetch and organize your data.
To add the Timeline component to a record page as a standalone component, the admin
can select the Task activity timeline preset and controller and complete the component
configuration. For more information, see the following topics:
• Add the Timeline component as a standalone component
• Enable the Timeline component to refresh
Record List component bundle
The Record List component bundle is a list component bundle that uses a dedicated controller
to configure list actions such as sorting, filtering, and grouping.
The Record List component bundle includes a record list header with declarative actions as well
as pagination control for navigating list pages.
Starting with the Zurich release, CSM Configurable Workspace record pages use the Record List
component bundle. This list component bundle is the default experience for both new (zboot)
and upgrade customers.
For more information, see the following topics:
• Record List Overview
• Record List

in the ServiceNow Developer documentation

on the Horizon design system website

Upgrade information
The default declarative actions included with CSM Configurable Workspace record pages work
with the Record List component bundle.
Customer declarative actions that open a modal on the list page require some configuration to
work with the Record List component. See the example below for details.
To continue using the previous list bundle component in place of the Record List component
bundle:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
1. Navigate to All > System Definition > Tables.
2. Select the UX Screen [sys_ux_screen] table.
3. Search for and select List bundle default in the Screen Name column.
4. Set the Active field to false and select Update.

Example
This example uses the Customer Service Case Types application, which includes multiple page
variants under a single route. This example details the steps needed to configure a customer
declarative action for Create Case that opens a modal on the list page:
• Create the mapping for a declarative action to open a modal.
• Make the modal available on the list bundle component.
Step 1: Create the mapping for a declarative action to open a modal.
1. Navigate to the UX Add-on Event Mapping [sys_ux_addon_event_mapping] list.
2. Search for the Create Case event mapping name by filtering the Target Event column:
LIST‑OPEN_MODAL.
3. Select Create Case for the event that creates a case on list view.
4. Right-click the form header and select Insert and Stay to create a new event mapping record.
This creates a new record to the existing source declarative action.
5. Fill in the following fields on the event mapping form:
◦ Name = <Enter a unique name>
◦ Source Component = Record List Header
◦ Controller = List Controller
◦ Target Event = Open modal
For more information, see Create a UX add-on event mapping

.

6. Select Submit.
Step 2: Make the modal available on the list bundle component.
To make the modal available, add it to the List Page Modals page collection.
1. Navigate to All > Now Experience Framework > UI Builder.
2. Open the CSM/FSM Configurable Workspace experience.
3. Select List (List bundle default) in the experience header.
4. In the content tree on the left side, select List Viewport Modal.
5. In the Configure tab on the right side, select the icon in the Page collections field to display
the List page modals page collection.
6. Create a page under the page collection. For example, create a page called create_case.
a. Select the + icon next to Pages and variants and then select Create a new page.
b. Add a name in the Name field and select Continue. For example, add create_case as the
name.
c. Select Build responsive and then select Create. The create_case page is added to the list of
pages and variants for the page collection
For more information, see Page collections .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
7. Go to the app route record and change the screen collection to point to the existing screen
collection. For example, the Create Case screen collection.
a. Select Settings for the create_case page to open the general page settings.
b. In the Actions field, select Open records and then select Page collection. This displays the
List page modals extension point form.
c. In the create_case app route record, add the required Fields parameters: table,sysId.
d. Set the Screen Collection field on the create_case app route record to Create Case and
then select Update.
Front-line case page keyboard shortcuts
Use keyboard shortcuts to create comments, work notes, and emails quickly, when using the
Front-line case page in CSM Configurable Workspace.
When composing an email, using the shortcut key enables you to compose an email in a subtab.
When composing a comment or work note:
• If you have a work note in progress, using the keyboard shortcut displays the existing work
note.
• If you have a comment in progress, using the keyboard shortcut displays the existing
comment.
Keyboard shortcuts
Action

Windows keyboard shortcut

Mac keyboard shortcut

Compose an email

Control+Alt+e

Command+Option+e

Compose a comment

Shift+Alt+c

Shift+Option+c

Compose a work note

Shift+Alt+w

Shift+Option+w

For more information, see Next Experience keyboard shortcuts

.

CSM default record page
The CSM default record page provides case management features and functionality and enables
agents to create, monitor, and resolve cases.
The CSM default record page includes the basic structure for a record page, including record
information, a communication interface, and suggestions for issue resolution. This page is also
known as the standard record page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
CSM default record page

The CSM default record page is included with the CSM/FSM Configurable Workspace
experience.

Activity stream component
The activity stream component on the CSM default record page displays a list of activities
occurring on a case record. This list can be collapsed to provide a quick view of case activities
or expanded to provide more detail about individual activities. For more information about this
component, see Activity stream component.

Thin compose modeless dialogs
The CSM default record page uses the thin compose modeless dialog feature, which
incorporates modeless dialogs into the activity stream. This feature enables agents to initiate a
comment, work note, or email in the activity stream and then open the text in a modeless dialog.
For more information, see Thin compose modeless dialogs.

Record presence feature
The CSM default record page and the CSM Interaction record page include the record presence
feature. This feature allows agents to see other users who are viewing the same record and
enables easy collaboration.
The user presence component displays an icon in the form header that shows the user who is
currently viewing the record. For three or more users, the component displays two icons plus a
number that represents additional users.
• Hover over an icon to see more information about a user.
• Click the number icon to see more information about the additional users.
For more information about this feature, see User presence

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
Email templates feature
The CSM default record page includes the Email Templates feature. CSM Configurable
Workspace pages that use the CSM default record page include the Email Templates tab in the
contextual side panel.
These templates contain default values for fields that agents can easily add to email messages
in the Compose panel on case records. These default values can include the recipients (email
addresses in the To, Cc, and Bcc fields), the sender, the subject of the email, and text to include
in the message body.
Users with the system administrator role can configure email templates by navigating to All >
Email Client > Email Client Templates and selecting New. For more information, see Create an
email client template .
Agents can use this feature to do the following:
• View available email templates.
• Select an email template to display the template details.
• Apply the selected template to an email in the Compose panel.
For more information, see Compose an email from an email template.

Creating emails and applying email templates
Customer service agents can create emails from case records in the following ways:
• By selecting Email at the top of the activity stream to open the Compose Email component.
• By selecting the More actions (
) menu in the case activity bar and then selecting Compose
email to open a draft email in a new tab.
When creating emails, agents can apply templates to add content to the draft emails, such as the
subject line and message body. To apply a template:
1. Select the Apply email templates icon (

) in the Compose email footer.

The system displays a list of available templates. It does not display quick messages or
response templates.
2. Select a template from the list. You can also search for a specific template.
The system adds the contents of the template to the body of the email.

Note: If no templates are available, the icon does not appear in the footer.
Recommended Actions feature
The Recommended Actions tab is now available as the first tab in the contextual side panel and
is enabled for Pro customers. It includes a set of base system recommendations, such as similar
incidents and similar open incidents.
The Recommended Actions tab includes AI search functionality and Suggested Actions.
• AI search tab: Agents can use AI search to find relevant resources or resolutions for customer
issues. The search feature displays an initial set of search results based on the text in the case
short description. This initial set of results includes knowledge articles. Agents can also enter
different search keywords and repeat the search. From the list of search results, agents can
select a source to see search results of that type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
The following table shows the actions that an agent can perform on search results:
Source type and guidance actions on the CSM default record page
Source type

Guidance actions

Knowledge base articles

◦ Attach and add a link in email.
◦ Attach and add a link in comment.
◦ Add a link in work note.
◦ Copy a link.
◦ Read an article.
◦ Mark an article as helpful.

Cases

◦ Show or copy a resolution for resolved
cases.
◦ Link or open a case.

Incidents

◦ Link an incident.
◦ Open an incident.

Problems

◦ Link a problem.
◦ Open a problem.

Requests

◦ Link a change request.
◦ Open a change request.

For all the other source types, default guidance is supported. The Default guidance for
search results is a guidance that can be used for any search sources that don't have mapped
guidances. For more information on default guidance, see Default guidance for search results.
For more information on how to avail the AI search feature in Recommended Actions, see
Enable AI search in Recommended Actions.
For more information, see Use AI search in Recommended Actions to resolve cases.

Note: Using Recommended Actions in the contextual side panel requires the
Recommended Actions application (sn_cs_nb_action) which is included with the CSM
Configurable Workspace application.

Note: To ensure Recommended Actions loads automatically and performs optimally,

enable the Enable prefetch check box and verify that the Get recommendations data
broker exists under Data Resources. This enhancement applies only to the Front-line
Case page and CSM default record page and requires Recommended Actions to be
enabled on the page. If you have any custom variants created before this enhancement,
you must manually enable these settings.
• Suggested Actions tab: This tab displays relevant actions to agents based on a context of a
record or recommend a value for a field. For more information on how to configure contexts to
display relevant actions for the agent, see Recommended Actions.
The Suggested Actions tab is available in the base system for Pro customers and doesn’t
require additional configuration. The Suggested Actions tab is displayed if either the Task
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
Intelligence for CSM or the Now Assist for CSM plugin is installed. Non-Pro customers can
enable the tab manually.
◦ Without the plugin, only the Search tab is visible on the Front-line case page.
◦ With the plugin installed, both Search and Suggested Actions tabs appear, and
recommendations are shown under Suggested Actions.
◦ If the plugin is uninstalled, the Suggested Actions tab is no longer available.

Follow records to receive notifications
The CSM default record page action bar includes the Follow action in the More Actions menu.
Selecting this action enables you to receive notifications when comments or work notes are
added to the record.
You receive notifications in the Notifications menu at the top of the page according to your
notification preferences. You can select the notification to open the record that was updated. For
more information, see the following topics:
• Configure Next Experience notification preferences
• Follow records in Next Experience
When the Follow action is selected, the button toggles to Unfollow. To stop receiving
notifications, select Unfollow.
CSM Interaction record page
The CSM Interaction record page provides CSM interaction management features and
functionality and enables agents to accept and respond to live chats, calls, email and SMS
messages.
The CSM Interaction record page provides the basic structure for an interaction record, including
interaction information and related search results.
CSM Interaction record page

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
The CSM Interaction record page is included with the CSM/FSM Configurable Workspace
experience.

Record presence feature
The CSM default record page and the CSM Interaction record page include the record presence
feature. This feature allows agents to see other users who are viewing the same record and
enables easy collaboration.
The user presence component displays an icon in the form header that shows the user who is
currently viewing the record. For three or more users, the component displays two icons plus a
number that represents additional users.
• Hover over an icon to see more information about a user.
• Click the number icon to see more information about the additional users.
For more information about this feature, see User presence

.

Thin compose modeless dialogs
Thin compose modeless dialogs enable agents to initiate a work note or email from the activity
stream in a modeless dialog.

Note: For the CSM Interaction record page, the thin compose modeless dialogs feature is
hidden by default and can be enabled by the admin.

Recommended Actions feature
The Recommended Actions tab is now available as the first tab in the contextual side panel and
is enabled for Pro customers. It includes a set of base system recommendations, such as similar
incidents and similar open incidents.
The Recommended Actions tab includes AI search functionality and Suggested Actions for the
chat, video, email, and walk-up channels on the CSM Interaction record page.
• AI search tab: Agents can use AI search to find relevant resources or resolutions for customer
issues. The search feature displays an initial set of search results based on the text in the
interaction short description. This initial set of results includes knowledge articles. Agents can
also enter different search keywords and repeat the search. From the list of search results,
agents can select a source to see search results of that type.
For the Knowledge source type, agents can do the following:
◦ Share an article link in chat and email.
◦ Copy a link to an article.
◦ Read an article.
◦ Flag an article.
◦ Mark an article as helpful.
For all the other source types, default guidance is supported. The default guidance for
search results is a guidance that can be used for any search sources that don't have mapped
guidances. For more information on default guidance, see Default guidance for search results.
For more information on how to avail the AI search feature in Recommended Actions, see
Enable AI search in Recommended Actions.
For more information, see Use AI search in Recommended Actions to resolve cases.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
Note: Using Recommended Actions in the contextual side panel requires the
Recommended Actions application (sn_cs_nb_action) which is included with the CSM
Configurable Workspace application.
• Suggested Actions tab: This tab displays relevant actions to agents based on a context of a
record or recommend a value for a field. For more information on how to configure contexts so
that relevant actions are displayed for the agents, see Recommended Actions.
Related topics
CSM voice interaction record page
Email Interaction record page
The Email interaction record page enables customer service agents to work on incoming emails
as interactions, similar to the chat and voice interaction record pages.
Email interactions help client support teams triage and obtain proper approvals before
proceeding with any work on an account. Email interactions act as a staging record before agents
create cases for additional work.
Email Interaction record page

Email Interaction record page variant
The Email Interaction record page variant is included with the CSM Configurable Workspace
application (com.snc.uib.csm_agent_workspace). This page variant includes the following
settings.
Email interaction record page variant settings
Setting

Description

Active

Enabling the Active check box makes the page variant
available to the selected audience. The Email Interaction
record page variant is inactive by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
Email interaction record page variant settings (continued)
Setting

Description

The active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.
Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the Email interaction record page variant
is -1001.

Conditions

Conditions determine when a page variant is displayed.
The Email interaction record page variant has the following
conditions:
• table = interaction: Limits the use of the Email interaction
page variant to records from the Interaction [interaction]
table.
• csm.isEmailInteractionVisible = true: Checks the UX screen
condition for the variable setting. If this variable is set to true,
this page variant should be displayed.
If all of these conditions are met, the system displays the Email
Interaction record page variant.

Audience

The audience determines who can see the page variant.
The Email Interaction record page does not have a defined
audience.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select Email Interaction page.
4. Select Settings at the top of the page.

Email Interaction record page components
The Email Interaction record page includes the following components.

Component

Description

Form heading

The form heading displays the interaction short description
and also includes the action bar and record tags.

Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
Component

Description

Action bar

The action bar contains the actions available to users while
working on phone interaction records.
• Create: Create records related to the interaction such as
cases, incidents, requests, and consumers.
• Save: Save changes to the interaction record.
• Close: Close the interaction record.
• More Actions: Perform additional actions such as
associating a record.

Note: The specific actions available are determined by
factors such as the user role and other attributes.
Interaction details

The interaction details include information about the
interaction including the account and contact, short
description, and record state.

Activity stream

The activity stream component displays a list of activities
occurring on a case record. This list can be collapsed to
provide a quick view of case activities or expanded to provide
more detail about individual activities.
Agents can use the activity stream to compose work notes or
emails.
For more information, see Activity stream component.

Contextual side panel
component

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Email Interaction record page
includes the following tabs.
• Record Information
• Recommendations
• Agent Assist
• Collaborate
• Attachments
• Response Templates
• Templates

CSM voice interaction record page
The CSM voice interaction record page provides a component that customers can use for
integration with Contact Center as a Service (CCaaS) providers and an interface that agents can
use to handle customer phone calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
CSM voice interaction record page

The CSM voice interaction record page enables CCaaS providers to display native voice
integrations in CSM Configurable Workspace. Using CCaaS call controls integrated in the page,
agents can do the following:
• Accept calls directly from the agent inbox.
• Manage call transfers and conferences.
• Place calls on hold and on mute.
For more information about the integration with CCaaS providers, see Interaction Controls
Component and OpenFrame configuration.

Page structure
The CSM voice interaction record page is made up of two different pages:
• CSM voice interaction record page
• Interaction control page
The pages appear together and are visible to agents for phone interactions when the
OpenFrame configuration is enabled.
The Interaction control page appears in the left panel and includes the following components:
• Interaction Controls Component (ICC): Enables CCaaS providers to display native voice
integrations.
• Customer History component: Displays customer, consumer, or account history information,
depending on the customer information provided on the interaction record.
• Live call transcript: Displays the text of the call transcript when a conversation record is
present for the interaction.

Note: A live call transcript requires additional configuration.
The CSM voice interaction record page includes the following components:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
• Interaction form
• Action bar
• Contextual side panel component

Plugin
The CSM voice interaction record page template and page variant are included with the CSM
Configurable Workspace application (com.snc.uib.csm_agent_workspace).
The CSM voice interaction record page template and page variant are available to users when
the Interaction Controls Component plugin (com.app_interaction_control) is installed.
The Interaction Controls Component plugin has the following dependencies:
• com.app_openframe_store
• com.sn_component_workspace_openframe

CSM voice interaction record template
The CSM voice interaction record template enables customers to create voice interaction record
page variants and customize them as needed. This template includes customizable views for
different CCaaS providers as well as real-time updates and notifications.
Record pages and page variants created with this template enable agents to manage phone
calls with customers and external users and to display information that helps agents to resolve
issues. Use this template to customize and extend CSM functionality around phone interaction
management. Additionally, you can configure a CCaaS provider to integrate features such as call
transcript.

CSM voice interaction record page variant
The CSM voice interaction record page variant is included with the CSM Configurable
Workspace plugin and has a dependency on the Interaction Controls Component plugin. This
page variant is available for users with the interaction controls enabled. For more information,
see OpenFrame configuration.
This page variant includes the following settings.
CSM voice interaction record page variant settings
Setting

Description

Active

Enabling the Active check box makes the page variant
available to the selected audience. The CSM voice interaction
record page variant is inactive by default.
The active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order that indicates the page priority.
The lower the number, the higher the priority.
The default order for the CSM voice interaction record page
variant is -2000.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
CSM voice interaction record page variant settings (continued)
Setting

Description

Conditions

Conditions determine when a page variant is displayed. The
CSM voice interaction record page variant has the following
conditions:
• table = interaction: Limits the use of the CSM voice
interaction page variant to records from the Interaction
[interaction] table.
• csm.interactionRecordValid = true: Checks if the interaction
record is available in the database.
• csm.interactionType = phone: Checks if the Type field on
the interaction record is set to phone.
• csm.interactiveControlsEnabled = true: Queries the
OpenFrame configuration record and checks the following:
◦ The Enable interaction controls field is enabled.
◦ The user belongs to the group selected in the User Group
field.
If all of these conditions are met, the system displays the CSM
voice interaction record page variant.

Audience

The audience determines who can see the page variant. The
CSM voice interaction record page doesn’t have a defined
audience.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select CSM voice interaction record page.
4. Select Settings at the top of the page.

CSM voice interaction record page components
The CSM voice interaction record page includes the following components.

Component

Description

Form heading

The form heading displays the interaction short description
and also includes the action bar and record tags.

Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

Action bar

The action bar contains the actions available to users while
working on phone interaction records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


<!-- page 635 -->
Component

Description

• Create: Create records related to the interaction such as
cases, incidents, requests, and consumers.
• Save: Save changes to the interaction record.
• More Actions: Perform additional actions such as starting a
discussion and associating a record.

Note: The specific actions available are determined by
factors such as the user role and other attributes.
Interaction Controls
Component (ICC)

The Interaction Controls Component enables CCaaS providers
to display native voice integrations. Agents can then use the
component to manage customer calls directly from their inbox.
For more information, see OpenFrame configuration.

Contact or consumer lookup
component

The Customer tab includes the contact or consumer lookup
component, which agents can use to do the following:
• Search for a contact or consumer.
• Select a contact or consumer from the list of search results
and link that contact or consumer to the interaction record.
• Verify the contact or consumer.
• Edit the information for a contact or consumer.

Customer History component

The Customer History component displays customer,
consumer, or account history information, depending on the
field selections on the interaction record.
This component can also display live call transcript.

Note: Live call transcript requires additional
configuration.
Interaction details

The interaction details include information about the
interaction including the account and contact, short
description, and record state.

Contextual side panel
component

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the CSM voice interaction record
page includes the following tabs.
• Recommended Actions search
• Related Lists
• Attachments
• Form Templates

Thin compose modeless
dialogs

Enable agents to initiate a work note or email in the activity
stream and then open the text in a modeless dialog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
Component

Description

Note: For the CSM voice interaction record page, the
thin compose modeless dialogs feature is hidden by
default and can be enabled by the administrator.

Interaction Controls Component (ICC)
The Interaction Controls Component appears at the top of the left panel of the CSM voice
interaction record page. This component enables CCaaS providers to display native voice
integrations. Agents can then use the component to manage customer calls directly from their
inbox.
The CSM voice interaction record page with the ICC component is displayed when the following
conditions are met:
• The interaction is of type phone.
• The Enable interaction controls field on the OpenFrame Configuration record is enabled.
• The agent belongs to the User Group selected on the OpenFrame Configuration record.
◦ If a user group is selected on the configuration record, only agents belonging to that group
can see the CSM voice interaction record page.
◦ If no group is selected, all agents can see the CSM voice interaction record page.
This feature uses the Interaction table, which includes a reference to the Callback
[sys_cs_callback] table. The Callback table, in turn, references the Callback Context table.
For more information about the integration with CCaaS providers, see the following topics:
• Interaction Controls Component
• OpenFrame configuration

Callback actions component
The Callback actions component appears at the top of the left panel on the CSM voice
interaction record page when it’s associated with a callback task. Agents can use this
component to manage customer callback requests directly from the CSM/FSM Configurable
Workspace.
The callback actions component contains:
• Callback number drop-down: Contains a list of all the contact numbers of the customer.
• Timer: Displays the time remaining before auto-dialing the number selected in the drop-down
or automatically closing the task.
• Call number button: Enables you to call the number in the drop-down.
• Retry call: Enables you to redial the customer number when the customer doesn’t answer the
call.
• Close the callback button: Enables you to wrap up callback interactions.
• Enables you to transfer an ASAP or Scheduled callback to another queue or agent before the
call to the customer begins. For more information, see Manage a CCaaS callback request in
the Configurable Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
Callback actions component

Transfer callback subcomponent

Cancel callback transfer subcomponent

Callback context card
The CSM voice interaction record page includes the Callback context card in the left panel. This
card appears under the Customer tab and above the Contact lookup card.
The callback context card is displayed when an interaction record has a linked callback task.
Callback context card

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
The callback context card includes the following information:
• Name
• Reason for the call
• Callback type: Scheduled or ASAP
• Scheduled start time
• Callback source channel
• Queue
• IVR Path
• Customer timezone
• Callback Task

Note: The Callback Task field is turned off by default.
In UI Builder, the callback context card is configured to use the Lookup component , which can
be used to look up a record on any table in card format. It also uses a data resource that returns
the callback task for the specific interaction.
For more information about the callback feature, see the following topics:
• Configuring Omnichannel Callback for Customer Service Management
• Using Omnichannel Callback for Customer Service Management
• Address a callback request from a customer

Customer History component
The Customer History component appears below the Interaction Controls Component in the left
panel. This component is included with the Customer Central plugin, which is activated as part of
the CSM Configurable Workspace application.
The Customer History component includes the Customer tab. This tab displays customer,
consumer, or account history information, depending on the customer information provided on
the interaction record. This tab also includes a search field, filter, and date range selector that
agents can use to find specific information in the history.
Customer tab information
Interaction record information

Customer tab information

Customer information is provided

When a customer is selected on the
interaction record and customer history is
available, the customer history is displayed in
the Customer History tab.
If customer history isn’t available, the
Customer History tab displays a message that
there’s no activity yet.

Customer information isn’t provided

When a customer isn’t selected on the
interaction record, the Customer History tab
displays a message suggesting to link to a
customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


<!-- page 639 -->
Customer tab information (continued)
Interaction record information

Customer tab information

Account information is provided

When an account is selected on the
interaction record, the account history is
displayed in the Customer History tab.

Refreshing the customer history information:
• When an agent selects a different customer on the interaction record and then saves the
record, the agent must select Refresh on the Customer History component to update the
information. The agent can also refresh the record page.
• If there’s new activity while the page is open, the agent must refresh the Customer History
component or the record page to display the new activity in the Customer HIstory tab. For
example, if the agent selects Create Case on the interaction record.

Live call transcript
The Customer History component can be configured to display a Call Transcript tab, which
shows the live call transcript.
• This tab displays the text of the call transcript when a conversation record is present for the
interaction.
• This tab displays the following text when a conversation record isn’t present for the interaction
record: Call transcript not available yet.
The Call transcript tab is visible to users if configured in the provider application associated with
the interaction.

Action bar component
The action bar component contains the actions available to users while working on phone
interaction records.

Note: The specific actions available are determined by factors such as the user role and
other attributes.
• Create: Create records related to the interaction.
◦ Create Case: Creates a Case record in a subtab and adds the record to the Related Tasks
and Open Cases related lists.
◦ Create Incident: Creates an Incident record in a subtab and adds the record to the Related
Tasks related list.
◦ Create Request: Creates a Request record in a subtab and adds the record to the Related
Tasks related list.
◦ Create Problem: Creates a Problem record in a subtab and adds the record to the Related
Tasks related list.
◦ Create Consumer: Creates a Consumer record in a subtab and adds the record to the
Consumers list.
• Save: Saves changes to the interaction record.
• More Actions: Perform additional actions such as starting a discussion and associating a
record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

639


<!-- page 640 -->
◦ Discuss: Opens a pop-up window to start a Sidebar discussion.
◦ Associate Record: Opens a new record in a subtab that the agent can use to link a record to
the current interaction. This new record is displayed in the Related Tasks related list.
The CSM voice interaction record page supports actions from the following Customer Service
Management and CSM Configurable Workspace plugins:
• Customer Service (com.sn_customerservice)
• CSM/FSM Configurable WS Foundation (com.snc.uib.cwf_workspace)
• CSM Configurable Workspace (com.snc.uib.csm_agent_workspace)
• CSM Workspace (com.snc.agent_workspace.csm)
• Major Issue Management (com.sn_majorissue_mgt)
• Customer Service with Service Management (com.sn_cs_sm)
• Customer Service with Request Management (com.sn_cs_sm_request)
• Time Recording for Customer Service (com.snc.csm_time_recording)
• Omni-Experience Standard Feature Set
If you’re using any additional plugins, you must add the actions from those plugins to the CSM
voice interaction record page action bar. For more information, see the configuration steps in this
topic: Configure the Front-line case page action bar.

Contextual side panel component
The CSM voice interaction record page includes the contextual side panel component, which
provides agents with the following functionality.
CSM voice interaction record page tabs in the contextual side panel
Tab

Recommended Actions

Description

The Recommended Actions tab is now available as the first tab
in the contextual side panel and is enabled for Pro customers.
It includes a set of base system recommendations, such as
similar incidents and similar open incidents.
The Recommended Actions tab includes AI search
functionality and suggested actions. Agents can use AI search
to find relevant resources or resolutions for customer issues.
The search feature displays an initial set of search results
based on the text in the interaction short description. This
initial set of results includes knowledge articles. Agents can
also enter different search keywords and repeat the search.
From the list of search results, agents can select a source to
see search results of that type.
Depending on the source type, agents can do the following:
• Open an article in full view in a subtab.
• Flag an article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

640


<!-- page 641 -->
CSM voice interaction record page tabs in the contextual side panel (continued)
Tab

Description

• Mark an article as helpful.
• Order a catalog item.
For more information, see Use AI search in Recommended
Actions to resolve cases.

Note: Using Recommended Actions in the contextual
side panel requires the Recommended Actions
application (sn_cs_nb_action) which is included with the
CSM Configurable Workspace application.
Related Lists

The Related Lists tab provides access the interaction related
lists.
The CSM voice interaction record page incorporates related
list functionality into the contextual side panel. These lists
appear in an accordion format that agents can expand and
collapse as needed.
An indicator displays the number of records available in a
related list. When expanded, the records in a related list are
displayed in card format.
The CSM voice interaction record page includes the following
related lists:
• Related Tasks
• Recent Interactions
• Open Cases

Attachments

The Attachments tab provides access to case-related
attachments. From this tab, agents can view and download
attachments.

Templates

The Templates tab provides access to available form
templates, which enable agents to automatically populate
fields on new records. Agents can manually apply a template
when creating a record such as an incident or change.

OpenFrame configuration
The CSM voice interaction record page variant is included with the CSM Configurable
Workspace application (com.snc.uib.csm_agent_workspace). This page variant is available to
users when:
• The Interaction Controls Component plugin (com.app_interaction_control) is installed.
• Interaction controls in the OpenFrame configuration are enabled.
Complete the following steps to enable interaction controls:
1. Navigate to All > OpenFrame > Configurations.
2. Select a configuration record. For example, select CTI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
3. Select the Enable interaction controls check box to enable interaction controls for
OpenFrame.
4. Select a group from the available User Group column and move it to the Selected column. This
is the group of users to whom the OpenFrame configuration applies.
5. Unlock the URL field, and add a third-party URL.
You can get this URL from your contact center provider administrator.
6. Select Update.
When the following conditions are met, the agent sees the CSM voice interaction record page
with the Interaction Controls Component and the Customer History tab component.
• The interaction is of type phone.
• The Enable interaction controls field on the OpenFrame Configuration record is enabled.
• The agent belongs to the User Group selected on the OpenFrame Configuration record.
The agent can switch between phone interactions and chat interactions. If an interaction is of
type chat, the agent sees the CSM default record page.
Related topics
Manage a CCaaS callback request using Global Voice Control
CSM centered chat interaction record page
The CSM centered chat interaction record page provides a chat component in the center of the
workspace that agents can use to handle customer chat conversations.
CSM centered chat interaction record page

To use the CSM centered chat interaction record page in CSM Configurable Workspace, enable
the page and set the Order value. For more information, see Set record page order.

Note: The CSM Interaction record page is the default experience for chat interaction. This
page includes the chat component in the left panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

642


<!-- page 643 -->
Page structure
The CSM centered chat interaction record page contains three panels.
CSM centered chat interaction record page structure
Panel

Description

Left panel

The left panel includes two tabs: Customer and Interaction.
The Customer tab includes the contact or consumer lookup
component as well as customer history.
• Contact or consumer lookup component:
◦ Includes the contact or consumer lookup card which
agents can use to search for, select, and verify a customer.
◦ When a customer has been selected and linked to an
interaction, a card with customer information is displayed
at the top of the Customer tab.
• Customer history: Includes the Customer History
component, which displays customer, consumer, or account
history information, depending on the customer information
provided on the interaction record.
The Interaction tab includes the Interaction record form fields.

Center panel

The center panel includes the chat component. This panel is
hidden when there is no chat conversation.

Right panel

The right panel contains the contextual side panel component,
which includes the following tabs:
• Recommended Actions search
• Related Items
• Attachments
• Templates

Plugin
The CSM centered chat interaction page template and page variant are included with the CSM
Configurable Workspace application (com.snc.uib.csm_agent_workspace).

CSM centered chat interaction record template
The CSM centered chat interaction record template brings the chat component to the center of
the workspace and give agents greater visibility and access to customer chat conversations. This
page view enables agents to manage chats and displays information, such as customer history
and interaction details, that help agents to resolve issues.
Use the CSM centered chat interaction record template to create chat interaction record page
variants and customize them as needed. For more information, see Creating pages and page
variants.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
CSM centered chat interaction page variant
The CSM centered chat interaction page variant includes the following settings.
CSM centered chat interaction page variant settings
Setting

Description

Active

Enabling the Active check box makes the page variant
available to the selected audience. The CSM centered chat
interaction record page variant is active by default.
The active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the CSM centered chat interaction record
page variant is -2000.

Conditions

Conditions determine when a page variant is displayed. The
CSM centered chat interaction record page variant has the
following conditions:
• table = interaction: Limits the use of the CSM centered
chat interaction page variant to records from the Interaction
[interaction] table.
• csm.isChatCenteredInteractionVisible = true: Stores the
result of the system's evaluation of the UX Page property that
determines user roles.
If these conditions are met, the system displays the CSM
centered chat interaction record page variant.

Audience

The audience determines who can see the page variant. The
CSM centered chat interaction record page has the following
audience: CSM - Front-line Agent.
This audience includes the sn_cwf_wrkspc.frontline_agent
role.
By default, agents who belong to the CSM - Front-line Agent
audience will see the CSM centered chat interaction record
page in the CSM Configurable Workspace. This is the default
for both new (zboot) and upgrade customers.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
3. In the Record section of the Pages and variants list, select CSM centered chat interaction
page.
4. Select Settings at the top of the page.

CSM centered chat interaction record page components
The CSM centered chat interaction page includes the following components.

Component

Description

Form heading

The form heading displays the interaction short description
and also includes the action bar and record tags.

Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

Action bar

The action bar contains the actions available to users while
working on chat interaction records.
• Discuss: Opens a pop-up window to start a Sidebar
discussion.
• End Chat: Ends the chat conversation.
• Create Incident: Creates an incident record related to the
interaction.
• Create Case: Creates a case record related to the
interaction.
• Save: Saves changes to the interaction record.
• More Actions: Perform additional actions such as creating a
request or associating a record.

Note: The specific actions available are determined by
factors such as the user role and other attributes.
Contact or consumer lookup
component

The Customer tab includes the contact or consumer lookup
component, which agents can use to do the following:
• Search for a contact or consumer.
• Select a contact or consumer from the list of search results
and link that contact or consumer to the interaction record.
• Verify the contact or consumer.
• Edit the information for a contact or consumer.

Customer History component

The Customer History component displays customer,
consumer, or account history information, depending on the
field selections on the interaction record.
This component can also display live call transcript.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
Component

Description

Note: Live call transcript requires additional
configuration.
Interaction details

The interaction details include information about the
interaction including the account and contact, short
description, and record state.

Contextual side panel
component

The contextual side panel component includes different
tools that agents can use to research and resolve customer
issues. The contextual side panel in the CSM centered chat
interaction record page includes the following tabs.
• Recommended Actions search
• Related Items
• Attachments
• Templates

Thin compose modeless
dialogs

Thin compose modeless dialogs enable agents to initiate a
work note or email in the activity stream and then open the text
in a modeless dialog.

Note: For the CSM centered chat interaction record
page, the thin compose modeless dialogs feature is
hidden by default and can be enabled by the admin.

Customer History component
The Customer History component appears below the Interaction Controls Component in the left
panel. This component is included with the Customer Central plugin, which is activated as part of
the CSM Configurable Workspace application.
The Customer History component includes the Customer tab. This tab displays customer,
consumer, or account history information, depending on the customer information provided on
the interaction record. This tab also includes a search field, filter, and date range selector that
agents can use to find specific information in the history.
Customer tab information
Interaction record information

Customer tab information

Customer information is provided

When a customer is selected on the
interaction record and customer history is
available, the customer history is displayed in
the Customer History tab.
If customer history is not available, the
Customer History tab displays a message that
there is no activity yet.

Customer information is not provided

When a customer is not selected on the
interaction record, the Customer History tab
displays a message suggesting to link to a
customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
Customer tab information (continued)
Interaction record information

Customer tab information

Account information is provided

When an account is selected on the
interaction record, the account history is
displayed in the Customer History tab.

Refreshing the customer history information:
• When an agent selects a different customer on the interaction record and then saves the
record, the agent needs to select Refresh on the Customer History component to update the
information. The agent can also refresh the record page.
• If there is new activity while the page is open, the agent needs to refresh the Customer History
component or the record page to display the new activity in the Customer HIstory tab. For
example, if the agent selects Create Case on the interaction record.

Action bar component
The action bar component contains the actions available to users while working on chat
interaction records.
• Discuss: Opens a pop-up window to start a Sidebar discussion.
• Create Case: Creates a new case record.
• End Chat: Ends the chat conversation.
• Save: Saves changes to the interaction record.
• More Actions: Perform additional actions such as creating a request or associating a record.
◦ Create Consumer: Creates a new Consumer record in a subtab.
◦ Create Request: Creates a new Request record in a subtab and adds the record to the
Related Tasks related list.
◦ Associate Record: Opens a new record in a subtab that the agent can use to link a record to
the current interaction. This new record is displayed in the Related Tasks related list.

Note: The specific actions available are determined by factors such as the user role and
other attributes.
The CSM centered chat interaction record page supports actions from the following Customer
Service Management and CSM Configurable Workspace plugins:
• Customer Service (com.sn_customerservice)
• CSM/FSM Configurable WS Foundation (com.snc.uib.cwf_workspace)
• CSM Configurable Workspace (com.snc.uib.csm_agent_workspace)
• CSM Workspace (com.snc.agent_workspace.csm)
• Major Issue Management (com.sn_majorissue_mgt)
• Customer Service with Service Management (com.sn_cs_sm)
• Customer Service with Request Management (com.sn_cs_sm_request)
• Time Recording for Customer Service (com.snc.csm_time_recording)
• Omni-Experience Standard Feature Set

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
If you are using any additional plugins, you must add the actions from those plugins to the CSM
centered chat interaction record page action bar. For more information, see the configuration
steps in this topic: Configure the Front-line case page action bar.

Contextual side panel component
The CSM centered chat interaction record page includes the contextual side panel component,
which provides agents with the following functionality.
CSM centered chat interaction record page tabs in the contextual side panel
Tab

Recommended
Actions

Description

The Recommended Actions tab is now available as the first tab in the
contextual side panel and is enabled for Pro customers. It includes a
set of base system recommendations, such as similar incidents and
similar open incidents.
The Recommended Actions tab includes AI search functionality and
Suggested Actions.
• AI search tab: Agents can use AI search to find relevant resources
or resolutions for customer issues. The search feature displays an
initial set of search results based on the text in the interaction short
description. This initial set of results includes knowledge articles.
Agents can also enter different search keywords and repeat the
search. From the list of search results, agents can select a source
to see search results of that type. For more information, see Search
sources and guidance actions on the CSM Interaction page for chat
channel .
For all the other source types, the default guidance is supported.
The default guidance for search results is a guidance that can be
used for any search sources that don't have mapped guidances.
For more information on default guidance, see Default guidance for
search results.
For more information, see the following topics:
◦ Enable AI search in Recommended Actions
◦ Use AI search in Recommended Actions to resolve cases

Note: Using Recommended Actions in the contextual
side panel requires the Recommended Actions application
(sn_cs_nb_action) which is included with the CSM
Configurable Workspace application.
• Suggested Actions tab: This tab displays relevant actions to agents
based on a context of a record or recommend a value for a field.
For more information on how to configure contexts so that relevant
recommendations are displayed for the agents, see Recommended
Actions.
Related Lists

The Related Lists tab provides access the interaction related lists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
CSM centered chat interaction record page tabs in the contextual side panel (continued)
Tab

Description

The CSM centered chat interaction record page incorporates related
list functionality into the contextual side panel. These lists appear in an
accordion format that agents can expand and collapse as needed.
An indicator displays the number of records available in a related list.
When expanded, the records in a related list are displayed in card
format.
The CSM centered chat interaction record page includes the following
related lists:
• Related Tasks
• Recent Interactions
• Open Cases
Attachments

The Attachments tab provides access to case-related attachments.
From this tab, agents can view and download attachments.

Templates

The Templates tab provides access to available form templates which
enable agents to automatically populate fields on new records. Agents
can manually apply a template when creating a new record such as an
incident or change.

The following table shows the actions that an agent can perform on the search results of various
source types:
Search sources and guidance actions on the CSM Interaction page for chat channel
Search sources

Knowledge base article

Guidance actions

• Send an article link in chat.
• Copy an article link to the article.
• Read an article.
• Flag
• Mark an article as helpful.

Cases

• Show or copy a resolution for resolved
cases.
• Link or open a case.

Incidents

• Link an incident.
• Open an incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
Search sources and guidance actions on the CSM Interaction page for chat channel
(continued)
Search sources

Guidance actions

Problems

• Link a problem.
• Open a problem.

Requests

• Link a change request.
• Open a change request.

Creating pages and page variants
You can create new pages or customize existing pages in UI Builder to display table and record
information in CSM Configurable Workspace.
When you create a page in UI Builder, you have the option to create a page from scratch, create a
page from a template, or you can duplicate and modify a page variant.

UI Builder terminology
The following table describes the UI Builder terminology around workspace experiences, pages
and page variants, and page templates. For more information about UI Builder terminology, see
the UI Builder glossary .
UI Builder terminology
Term

Description

Workspace experience

A workspace experience in UI Builder is a collection of web
pages. Users use these pages to interact with an application.
A workspace experience includes experience settings, routes,
page variants, and the audience and conditions required for
each variant.
A workspace experience resides at a specific URL. When
an admin creates a workspace experience, they define the
web address for the experience and the homepage that the
experience uses.

Page collection

A page collection is a group of pages that can be used across
multiple workspace experiences within tabs or modals.

Page

A page is a collection of layouts, columns, and components
that display information in a workspace.
• A page has a unique name.
• A page has a unique URL. The page contains content that
resides at this URL.
• A page includes components that display data from tables
and records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
UI Builder terminology (continued)
Term

Description

Page variant

A page variant is a version of a page that has unique settings,
including audience, conditions, and order.
• Admins can create variants of pages to target experiences
for different audiences at the same URL.
• When a user opens a page URL, the variant that they see is
based on these settings.
You can create a page variant if you want to use the same
page and make minor changes for a different audience. For
example, you can create a landing page for customer service
agents and a variant of that landing page for customer service
managers.

Page template

A page template provides a base structure for a page that you
can customize to meet your needs.
Using a page template can help you create pages faster and
keep pages consistent within an experience.
Page templates can include components, data resources, and
a layout.

Methods for creating pages and page variants
There are different ways to create pages and page variants in UI Builder.
Methods for creating pages and page variants
Method

Description

Create a page from scratch

When you create a page from scratch, you start with a blank
page and select layouts and components that guide a user
through an experience.
Components are like building blocks that you can add to the
page and then customize to build the page functionality.

Create a page from a
template

When you create a page from a template, you start with a
base structure, including layouts and components. From this
starting point, you can customize the page to meet your needs.
When you create a page from a template:
• The page is automatically active.
• The page includes basic settings.
• The first variant of the page is also created. You can add
settings such as conditions and audience to the variant.
For example, when you create a page from the Front-line case
page template, the page includes only basic settings. It does

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
Methods for creating pages and page variants (continued)
Method

Description

not include the same settings as the Front-line case page
variant that is provided out of box.
Create a page variant

When you create a page variant, you create a variation of a
page that exists at the same path.
When you create a page by duplicating a variant, the new page
inherits the variant settings.
By creating a page variant, you can target an experience for a
specific audience and add conditions that determine when the
variant is shown.
• The audience determines who uses the page variant. For
example, you can limit the audience to a specific user role.
• The conditions determine when a page is shown. For
example, you can add a condition for records from a specific
table, such as the Case table.

For more information about customizing record pages, see Manage UI Builder pages and page
variants .

Note: If a page is modified after page variants have been created, the changes to the
page do not sync with the variants. These changes must be made manually.

Determining which page to use
Each record page has an order number. CSM Configurable Workspace uses the active record
page with the lowest order number as the default page. When the system displays a record in
CSM Configurable Workspace, it uses this default page to display the record information.
Additionally, the system looks at the page settings in this order:
1. Conditions (i.e., table)
2. Audience (the user roles that have access to the page)
If a page variant has no assigned user roles, then every role can access it.
For more information, see Set record page order.
Set record page order
Set the order value of a record page to determine the default page for displaying records in CSM
Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

Record pages can be active or inactive. Each record page also has an order value. The active
record page with the lowest order number is the default page. When the system displays
a record in CSM Configurable Workspace, it uses this default page to display the record
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
Record page order values
Record page

Order

CSM default record page

-1000

CSM Interaction record page

-1000

Email interaction record page

-1001

Front-line case page

1000

CSM voice interaction record page

2000

CSM centered chat interaction record page

-2001

Record default

0

Interaction record Page

100

To use a different page as the default page, you need to manually switch from the existing page
to the new page by changing the page order value.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. Select the desired page in the Variants list, for example, CSM default record page.
4. Set the page order value.
a. Select the additional actions menu for the page and then select Edit conditions.
b. Enter a value in the Order field.
c. Select Save.
5. Activate the page.
a. Navigate to All > Now Experience Framework > Experiences.
b. Select the CSM/FSM Configurable Workspace experience.
c. In the Admin panel field, open the UX App Configuration: CSM/FSM Configurable
Workspace App Config record.
d. Locate the page in the UX Screens related list.
e. Set the Active field to true.
Related topics
CSM Configurable Workspace record pages
Customize a record page
To customize a record page, you first create a variant, or copy, of the page and then make
changes to the variant.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. Select the desired page in the Page list.
For example, select Record page.
4. Select the desired default record page from the Variants list.
For example, select CSM default record page.
5. Select the additional actions menu for this page and then select Duplicate to create a copy of
the page variant.
6. Rename the copy of the page variant.
a. Select the copy of the page variant in the Variants list.
b. Select the additional actions menu for this page and then select Edit page variant settings.
c. Enter a new name in the Variant name field.
d. Select Save
7. Now you can customize the page variant.
For more information, see the following UI Builder topics:
◦ Work with pages
◦ Work with components
◦ Layouts in UI Builder
8. To delete a page variant:
a. Locate the page variant to be deleted in the Pages and variants list.
b. Select the additional actions menu for this page variant and then select Delete variant.
c. On the confirmation dialog, select Delete.
The system removes the page variant from the Pages and variants list.
Configure the Front-line case page action bar
Configure the action bar on the Front-line case page to include actions from other plugins.

Before you begin

Role required: admin

About this task

The Front-line case page supports actions from the following Customer Service Management
and CSM Configurable workspace plugins:
• Customer Service (com.sn_customerservice)
• CSM/FSM Configurable WS Foundation (com.snc.uib.cwf_workspace)
• CSM Configurable Workspace (com.snc.uib.csm_agent_workspace)
• CSM Workspace (com.snc.agent_workspace.csm
• Major Issue Management (com.sn_majorissue_mgt)
• Customer Service with Service Management (com.sn_cs_sm)
• Customer Service with Request Management plugin (com.sn_cs_sm_request)
• Time Recording for Customer Service (com.snc.csm_time_recording)
• Omni-Experience Standard Feature Set
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
If you are using any additional plugins, use the steps in this task to add the actions from those
plugins to the Front-line case page action bar. You can add actions in the following ways:
• Add actions to an existing layout group (step 2).
• Create a new layout group and add actions to that group (steps 3 and 4).
• Add actions directly to the action bar (step 5).

Procedure
1. Verify that the UI action or declarative action has a corresponding record in the UX Form
Actions table (sys_ux_form_action).
a. Enter sys_ux_form_action.list in the application navigator and press Enter.
b. Search for the desired form action in the UX Form Actions list.
c. Create a form action record if it does not exist.
2. Optional: Add the action to an existing layout group.
You can create a new layout group and add the action to that group (see step 3). By default, the
Front-line case page supports three groups: Compose, Create, and Manage.
a. Navigate to All > Declarative Actions > Form Action Layout Groups and select a group.
b. Select the lock icon next to the Actions field, add the desired action from the Available UX
Form Actions list, and select Save.
3. Optional: Create a new layout group.
a. Navigate to All > Declarative Actions > Form Action Layout Groups and select New.
b. Enter a name for the layout group in the Name field.
c. Select the lock icon next to the Actions field, add the desired action from the Available UX
Form Actions list, and select Save.
Because this is a new group, you need to add it to the Front-line case page layout (see step 4).
4. If you created a new layout group in step 3, add the group to the Front-line case page layout.
a. Navigate to All > Declarative Actions > Form Action Layouts.
b. Select the Front-line Case Actions layout.
c. Select New in the UX Form Action Layout Items related list.
d. On the new record page, set Item Type to Group and set Group to the group created in step
3.
e. Fill in the rest of the fields on the form and select Save.
5. Optional: To add an action directly on the action bar:
a. Navigate to All > Declarative Actions > Form Action Layouts.
b. Select the Front-line Case Actions layout.
c. Select New in the UX Form Action Layout Items related list.
d. On the new record page, set Item Type to Action and set Action to the desired UX Form
Action.
e. Fill in the rest of the fields on the form and select Save.
Add the Timeline component as a standalone component
Add the Timeline component as a standalone component to a record page by using the Task
activity timeline preset and controller.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Before you begin

Role required: admin

About this task

The Timeline component displays activities for task-based records such as cases or incidents
in a timeline view. It uses the resolution shaper configuration to automatically fetch and organize
your data.
To add the Timeline component to a record page as a standalone component, the admin
can select the Task activity timeline preset and controller and complete the component
configuration.

Procedure
1. Open a page variant in UI Builder.
2. On the page variant, select the + icon to add a component.
For example, add a component above the lookup card in the left column.
3. Select the Timeline component from the Add content pop-up window and then select Add.
4. Select the Task activity timeline preset from the Select a preset pop-up window and then
select Apply.
This also adds the Task activity timeline controller 1 to the page.
5. Select Use preset.
6. Select Task activity timeline controller preset and then select Apply.
This auto-populates the necessary properties such as the table and sys ID.
7. In the Configure tab, select a role in the Fulfiller Role field.
8. Close the controller dialog box and select Save to save the changes to the page variant.
Enable the Timeline component to refresh
Enable the Timeline component to refresh when a record has new activities.

Before you begin

Role required: admin

Procedure
1. Open a page variant in UI Builder.
2. In the Data and scripts section in the left column, select Record Watcher 1.
This opens the Record Watcher 1 pop-up window.
3. Select the Events tab.
4. In the Message received section, select Add handler.
5. In the Choose a handler field, select Refresh Task Activity Timeline.
6. Select Continue and then select Add.
7. Close the Record Watcher 1 pop-up window.
Restore Recommended Actions on record page variants after upgrade
After upgrading to a newer release, Recommended Actions (RA) may no longer appear on
certain record page variants (CSM default record page or CSM Interaction record page), even
if it was visible before. This can occur if the RA page is inactive or if the record page uses a
customized variant created before RA was introduced as a static tab. Use the following procedure
if the RA page exists but is not active for the record page variant.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the Experiences tab, select CSM/FSM Configurable Workspace.
3. On the CSM/FSM Configurable Workspace page, scroll to the Records section and select one
of the supported record pages:
◦ CSM default record page
◦ CSM Interaction record page
4. In the content tree on the left, select Tab Sidebar.
5. In the right panel, locate the Page Collection for the CSM default record mid-tabs and select
the Sub-pages & pages icon

beside it.

6. In the Page collection controller dialog, select the Lookup window icon
Recommended Actions default option.

beside the

7. On the Page Collection window, select Settings at the top.
8. On the Variant: Recommended Actions for CSM Default Record Page, under Availability,
enable the Active check box.

Note: If RA still does not appear after completing this procedure, the record page
variant may have been created before RA was introduced as a static tab. Static tab added
in newer releases are not automatically included in existing customized variants during
an upgrade. In this case, manually add RA as a static tab to the affected variant.
Configure record pages to hide Customer Central components
Configure the CSM default record page and CSM Interaction record page to hide the Customer
Activity and Customer Information tab components.

Before you begin

Role required: admin

About this task

Starting with the Yokohama release, CSM Configurable Workspace has a dependency on the
Customer Central plugin. The Customer Central application is installed automatically with CSM
Configurable Workspace.
The Customer Central installation can result in the Customer Activity and Customer Information
tab components appearing on the following CSM Configurable Workspace record pages:
• CSM default record page
• CSM Interaction record page

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the Page collections tab.
3. Select a page collection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
◦ CSM default record post-Details
◦ CSM Interaction record post-Details
4. Select Settings for one of the following page variants to open the settings panel.
◦ Customer Activity default
◦ Customer Information default
5. In the Availability section, disable the Active check box.
6. Select Save.
CSM Configurable Workspace page templates
A page template is a blueprint of a record page that you can use to create a new page or page
variant in UI Builder.
A page template can include components, data resources, extension points, and a layout. When
you create a page or a page variant from a page template, you start from a base structure that you
can customize to meet your needs.
Select one of the CSM Configurable Workspace templates when creating a new page or a new
page variant in UI Builder.
CSM Configurable Workspace templates
Template

Description

CSM default record template

The CSM default record template includes CSM case
management features and functionality and enables agents
to create, monitor, and resolve cases. Use this template if you
want to customize and extend CSM functionality around case
management.

CSM Interaction record
template

The CSM Interaction record template includes the CSM
interaction management features and functionality. This view
enables agents to accept and respond to live chats, calls, and
SMS messages. Use this template if you want to customize and
extend CSM functionality around interaction management.

Front-line case page template

The front-line case page template provides a simplified case
view that enables agents to quickly gather context, categorize
cases, and provide prompt responses to customers.
This template focuses on the essential functionality that
agents need, including:
• Looking up and verifying customer information
• Scanning the activity stream
• Viewing related information
• Searching for knowledge articles

CSM voice interaction record
template

The CSM voice interaction record template enables customers
to create voice interaction record page variants and customize
them as needed. This template includes customizable views
for different CCaaS providers as well as real-time updates and
notifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
CSM Configurable Workspace templates (continued)
Template

Description

Record pages and page variants created with this template
enable agents to manage phone calls with customers and
external users and to display information that helps agents
to resolve issues. Use this template to customize and extend
CSM functionality around phone interaction management.
Additionally, you can configure a CCaaS provider to integrate
features such as call transcript.
CSM centered chat interaction The CSM centered chat interaction record template brings
record template
the chat component to the center of the workspace and
give agents greater visibility and access to customer chat
conversations. This page view enables agents to manage
chats and displays information, such as customer history and
interaction details, that help agents to resolve issues.
For more information, see Create a page from a template

in the UI Builder documentation.

Record presence feature
Pages that you create from the CSM record page template and the CSM Interaction record page
templates have the record presence feature available. This feature lets you see the users who
are currently viewing a record. For more information, see User presence component.
Using AI Search with CSM Configurable Workspace
®

Use the ServiceNow AI Search application with CSM Configurable Workspace.
Starting with the Utah release, the AI Search
application replaces the Zing search application
for CSM Configurable Workspace. To support this feature, the Zing search configurations have
been migrated to AI Search.
Use the Unified Navigation search field in CSM Configurable Workspace to search for
information. You can switch between global search results and results from the CSM/FSM
Configurable Workspace workspace application. The different search configurations are based
on different tables.
For more information about using AI Search with CSM Configurable Workspace, see AI Search
for Next Experience .

Search application configurations
A search application configuration specifies the search engine and the settings to use for search
in a ServiceNow AI Platform application. The [CSM AIS] Configurable Workspace Search
Config search application configuration is provided with the CSM Configurable Workspace store
app.
To access this configuration, navigate to AI Search > Search Experience > Search Applications.

AI Search indexed sources
Indexed sources reflect what content users are able to search on. The CSM Configurable
Workspace store app adds AI Search indexed sources for the following tables:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
• Account [customer_account]
• Case [sn_customerservice_case]
• Consumer [csm_consumer]
• Contact [customer_contact]
• Order Line Item [csm_order_line_item]
• Order [csm_order]
• Catalog item [sc_cat_item]

Navigation tabs
Navigation tabs appear at the top of the search results page and are static filter options that you
can use to filter the results by indexed source. The [CSM AIS] Configurable Workspace Search
Config search application configuration includes the following navigation tabs:
• All
• Cases
• Accounts
• Contacts
• Consumers
• Orders
• Order Line Items
• Locations
For information about creating navigation tabs, see Configure navigation tabs in an AI Search
application configuration .

Facets
Facets are dynamic filter options that you can use to refine the search results by field value. The
[CSM AIS] Configurable Workspace Search Config search application configuration includes
the following facets:
• State
• Priority
• Assignment Group
• Product
• Account
• Contact
• Consumer
• Needs Attention
• Action Status
• Channel
• Active Escalation
For information about creating facets, see Create a facet in an AI Search application
configuration .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
Guided setup
Guided setup provides a sequence of tasks that helps you configure search application settings.
To access guided setup, navigate to All > AI Search > AI Search for Next Experience > Guided
Setup for Zing to AI Search Migration.
This guided setup tool assists with the migration of Next Experience applications from Zing to
AI Search. For more information about using guided setup, see Configuring AI Search for Next
Experience .
Depending on your release, you may need to perform only some of the tasks within the guided
setup to use AI Search with CSM Configurable Workspace. For Utah zBoot instances, AI Search
is the default search application for global search and the CSM Configurable Workspace
application.

Migrating Zing search configurations
If you have added, modified, or deleted any search configurations provided out of box, you may
need to migrate existing Zing search configurations to AI Search configurations.
• If you have added or modified any search sources in Agent Workspace Search Config, you
need to migrate these sources to AI Search.
• If you have deleted any search sources from Agent Workspace Search Config, you need to
manually delete them from [Migrated] Agent Workspace Search Config

Enable fuzzy matching in AI search
Fuzzy matching enables agents to search for records using partial record IDs or incomplete
record details and retrieve relevant results. Fuzzy matching identifies similar but not identical
elements in data table sets.
AI search in CSM Configurable Workspace supports fuzzy matching with a script. Activating
the Customer Service plugin (com.sn_customerservice) automatically runs the script and
enables fuzzy match search in both the CSM Configurable Workspace global search and the
Recommended Actions AI search component.
When fuzzy matching is enabled:
• AI search returns results based on approximate matching, including partial text or slightly
mistyped record IDs.
• The system ranks the search results in order of relevance, prioritizing exact matches but
including close matches.
After fuzzy matching is enabled, the system adminisrator needs to re-index the tables used in AI
search:
1. Make sure that fuzzy matching is enabled by running this command as a background script:

gs.info(new sn_ais.AisUtil().isFuzzyNumberMatchEnabled());
The result should be 'true'.
2. Make sure that AI search is enabled.
3. Navigate to All > AI Search > AI Search Index > Indexed Sources.
4. Select the table to re-index.
5. Select Index All Tables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
6. Go to the homepage and enter a search query in the global search field.
You should see fuzzy matching results for the tables that were re-indexed.

Note: If a table is not present in the AI Search Index Sources list, you can add the table by
selecting New on this list.
Related topics
Exploring AI Search
Configuring AI Search
Open the CSM/FSM Configurable Workspace experience in UI Builder
Access the CSM/FSM Configurable Workspace experience in UI Builder for editing.

Before you begin

Role required: ui_builder_admin, admin

About this task
Procedure
1. In the navigation filter, navigate to All > Now Experience Framework > UI Builder.
2. Select the Experiences tab.
3. Select the CSM/FSM Configurable Workspace experience.

Result

The CSM/FSM configurable experience opens in UI Builder.
Create a CSM Configurable Workspace landing page
Create landing pages for different agents and teams by creating a page variant and adding or
modifying containers and components.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

A landing page is the page that an agent sees when they open their workspace. One
landing page for CSM Configurable Workspace is included with the Customer Service plugin
(com.sn_customerservice). This page, the CSM Landing Page, gives agents an overview of their
new, assigned and high priority cases, plus the cases assigned to their groups.
You can create a variant of this page in UI Builder
modify it as needed.

, a WYSIWYG web user interface builder, and

Note: It is important to create a variant of the CSM Landing Page to prevent issues with
upgrades.
For example, you can use UI Builder to perform these tasks:
UI Builder tasks
Task

Description

Change the page layout

The layout governs the slots that are available on a
page, how the slots are positioned, and what CSS rules

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
UI Builder tasks (continued)
Task

Description

apply to them. For more information about layouts and
layout systems, see Work with layouts .
Add components to the page

Components are the base elements of your page.
Components range from core elements like buttons
and labels to more complex experience components
like lists and forms. For more information, see Work with
components .

Note: You can also find information about
UI Builder components on the ServiceNow
developer site. For more information,
see the component documentation on

www.devportaldocs.service-now.com/.
Connect data resources to the
components

Connect data resources to dynamically expose data
from tables, records, or other elements on your page.
For more information, see Work with data resources .

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the My experiences section, click CSM/FSM Configurable Workspace.
3. In the Page drop-down menu, select Landing Page.
4. In the Variants list, select CSM Landing Page.
5. Create a landing page variant.
a. Click the additional actions menu next to the CSM Landing Page variant and select
Duplicate.
b. In the Create a variant pop-up window, add a Variant name.
c. Click Create.
d. If desired, specify the audience and display conditions for the page variant.
The audience determines who can see the page. An audience is a collection of user roles.
For more information, see Understanding your audiences .
The Order field determines which page is displayed. The page with the lowest order number
is displayed first.
e. Click Save.
6. Add or modify containers and components for the landing page variant.
See the UI Builder documentation for details about adding or modifying containers and
components.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
◦ Add components to a page : Beginning with step 4, use this task to add a component to
a container and to configure the component properties and event handlers. This task also
contains information about adding additional containers.
◦ Add styling to a component : Beginning with step 3, set CSS styles for a component to
change its default appearance.
◦ Add a modal to a component : Beginning with step 5, add a window that appears when a
user clicks a component. For example, if you add a button component that deletes a record,
you can add a modal that asks the user to confirm the record deletion.
7. Click Save to save the page variant.
Set up a ribbon configuration in CSM Configurable Workspace
Create a ribbon setting and add that setting to a ribbon configuration for CSM Configurable
Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

Use the steps in this task to set up a ribbon configuration for CSM Configurable Workspace.
• Create a ribbon setting, such as creating another version of the Customer 360 ribbon
component.
• Add the ribbon setting to a ribbon configuration.
• Set the width and the order of the ribbon setting within the ribbon configuration.

Note: You can also use ribbon settings from CSM Agent Workspace in CSM Configurable
Workspace if you add the setting to the ribbon configuration.
One ribbon configuration CSM/FSM Configurable Workspace Ribbon Config, is included
with CSM Configurable Workspace. This configuration includes the Customer 360, Timeline,
and Active SLA ribbon components. You can use this configuration in the base system without
completing any additional configuration steps.

Procedure
1. Create a ribbon setting.
a. Navigate to Now Experience Framework > Configuration Settings > UX Ribbon Setting.
b. Select New.
c. Fill in the fields on the Ribbon Setting form.
Ribbon Setting form
Field

Description

Name

A label that describes this ribbon setting. It often includes
the table associated with this ribbon.

Ribbon component

The component to add to the ribbon setting, including
Customer360, Timeline, Active SLA, or a custom ribbon
component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
Field

Description

Note: You can only add one component at a time.
To make a second component appear in the ribbon,
repeat this procedure to create another ribbon setting
and add a different component.
Table

The table associated with this ribbon setting. Anytime an
agent selects a record from this table, the ribbon setting
appears with this component.

Width

The number of columns that the component occupies in the
ribbon. The width of the page is 12 columns. When using
multiple components, the total combined width of all the
components must equal 12 or less.

Note: For CSM Configurable Workspace, set
the width of the ribbon component on the Ribbon
Configuration Setting form (see step 3).
Application

The scope of this ribbon. Global means the ribbon works
with all applications.

Order

The location of this component in the ribbon. Ordering
the components goes from left to right. For example,
if you associate three components with a table, the
component with the lowest order appears on the left and
the component with the highest order appears on the right.

Note: For CSM Configurable Workspace, set
the order of the ribbon component on the Ribbon
Configuration Setting form (see step 3).
Active

Toggle to turn this component on or off in the ribbon for this
table.

Inherit

If set to true, the ribbon configuration can be inherited by
child tables. For this to be effective, a child table shouldn’t
have any configured ribbon settings. The Inherit field is
false by default.

Experience restricted

If set to true, the ribbon component is restricted to
Configurable Workspaces.
If set to false, the ribbon component is global and appears
in CSM Agent Workspace (legacy).
This field is set to true by default.

d. Select Submit.
2. Create a ribbon configuration as a container for your ribbon setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
a. Navigate to Now Experience Framework > Configuration Settings > UX Ribbon
Configurations.
b. Select New.
c. Fill in the fields on the UX Ribbon Configuration form.
UX Ribbon Configurations form
Field

Description

Name

Unique name for this ribbon configuration.

Application

The scope of this ribbon configuration.
Global means the ribbon works with all
applications.

Active

Toggle to turn this component on/off in the
ribbon for this table.

Description

Short description of this ribbon
configuration that displays in the UX Ribbon
Configurations list.

d. Select Submit.
3. Add the ribbon setting to the ribbon configuration.
a. Navigate to Now Experience Framework > Configuration Settings > Ribbon Configuration
Settings.
b. Select the configuration from the UX Ribbon Configurations list.
c. Fill in the fields on the Ribbon Configuration Setting form.
Ribbon Configurations Settings form
Field

Description

Table

The table associated with this ribbon setting. Anytime an
agent selects a record from this table, the ribbon setting
appears with this component.

Ribbon

The ribbon setting to add to the ribbon configuration.

Configuration

The desired ribbon configuration.

Application

The scope of this ribbon. Global means the ribbon works
with all applications.

Order

The location of this component in the ribbon. Ordering
the components goes from left to right. For example,
if you associate three components with a table, the
component with the lowest order appears on the left and
the component with the highest order appears on the right.

Width

The number of columns the component occupies in the
ribbon. The width of the page is 12 columns. When using

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
Field

Description

multiple components, the total combined width of all the
components must equal 12 or less.

Note: The width is ignored if the ribbon is configured
to display in the contextual side panel.
Active

Toggle to turn this component on/off in the ribbon for this
table.

d. Select Submit.

What to do next

You can display the form ribbon at the top of the form or in the Contextual side panel. For more
information, see the following topics:
• CSM Configurable Workspace form ribbon and components
• Display the form ribbon and form header secondary values in the Contextual side panel
Set up a form header in CSM Configurable Workspace
You can create a form header for use in CSM Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

After creating a form header, you must link it to a form header configuration if you want it to
appear in CSM Configurable Workspace.

Note: You can also use form headers from CSM Agent Workspace in CSM Configurable
Workspace if you link the setting to the form header configuration.
One form header configuration CSM/FSM Configurable Workspace Header Config, is included
with CSM Configurable Workspace. You can use this configuration out of the box without
completing any additional configuration steps.

Procedure
1. Create a form header.
a. Navigate to Now Experience Framework > Configuration Settings > UX Form Header.
b. Select New on the Form Headers list.
c. Fill in the fields on the form header form.
Workspace Form Header New Record form
Field

Description

Table

Table that is associated with this form header. Whenever an agent
selects a record from this table, this form header appears.

Primary field

Field that appears on the top of the form header and acts like the title
of the record. Normally, the field is unique and descriptive, such as

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
Field

Description

short_description. This field helps the agent understand what the
record is about.
Subheading

Value displayed on the form header that is dependent on the Table
selection.

Header Image

Image to display on the workspace form header from an image field.
Header images give context to records. They can be set to show
agent avatars, differentiate between domains, etc.

Note: Header images are can only be selected from user
image files.
Hide Tags

Toggle to hide tags.

Ignore Highlight

Toggle to turn off (selected) highlighting in the form header for fields
configured to be highlighted.

Application

Scope of this setting's applicability. Global means that all workspaces
can use this setting.

Workspace

Workspace that is associated with this form header.

d. Select Submit.
2. Add the form header to the form header configuration.
a. Navigate to Now Experience Framework > Configuration Settings > UX Header
Configurations.
b. Select the header configuration.
c. In the Workspace Form Headers related list, select Edit.

Note: You might have to configure the form to display the related list.
d. Move the desired form header from the left column to the right column to add it to the header
configuration.
e. Select Save.
Related topics
Set up a form header in Configurable Workspace
Set up a highlighted value in a form header in CSM Configurable Workspace
You can configure fields that appear as highlighted values in a form header in CSM Configurable
Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

After creating a highlighted value, you must link it to a highlighted value configuration if you want
it to appear in CSM Configurable Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
Note: You can also use highlighted values from CSM Agent Workspace in CSM
Configurable Workspace if you link the value to the highlighted value configuration.
One highlighted value configuration, CSM/FSM Configurable Workspace Highlighted Value
Config, is included with CSM Configurable Workspace. You can use this configuration out of the
box without completing any additional configuration steps.

Procedure
1. Create a highlighted value.
a. Navigate to Now Experience Framework > Configuration Settings > UX Highlighted Values.
b. Select New.
c. Fill in the fields on the Highlighted Value form and select Submit.
Highlighted Value form
Field

Description

Table

Table that contains the field that you want to highlight in the form
header.

Field

Field that you want to highlight.

d. In the Highlighted Values list, select the record you created.
e. In the Highlighted Value Conditions related list, select New.
f. Fill in the fields on the Highlighted Value Condition form.
Highlighted Value Condition form
Field

Description

Conditions

Condition builder where you can set the conditions for your highlighted
value to display.

Status

Background color. Each status has its own color, for example, Critical
displays a red background, Moderate displays a purple background,
and Info displays a blue background.

Show icon

Toggle that makes a small circle display in addition to the background
coloring.

Value Override

Text that renders instead of the Status value. For example, instead of
"Critical," you can display, "Address this immediately." You can reference
a text value using {{value}}.

Application

Application scope that contains the record.

Order

Order that the highlighted values are evaluated.

g. Select Submit.
2. Add the highlighted value to the highlighted value configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
a. Navigate to Now Experience Framework > Configuration Settings > UX Highlighted Values
Configurations.
b. Select the configuration.
c. In the Highlighted Values related list, select Edit.
d. Move the desired value from the left column to the right column to add it to the selected
configuration.
e. Select Save.
Related topics
Configure fields as highlighted values in a form
Set up a form action in CSM Configurable Workspace
Create a form action that links to a UI action so that you can use the UI action in CSM
Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

In order to use UI actions in CSM Configurable Workspace, each UI action must have a
corresponding form action.

Procedure
1. Navigate to All > Now Experience Framework > Actions and Events > UX Form Actions.
2. Click New.
3. Enter a name for the form action in the Name field.
It is recommended that you give the form action the same name as the UI action.
4. In the Action Type field, select UI Action.
5. Select the UI action in the UI Action field.
6. Click Submit.
Display the form ribbon and form header secondary values in the Contextual side panel
Configure the form ribbon and the secondary values that appear in a form header to display in
the Contextual side panel in CSM Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

Note: This task applies to CSM Configurable Workspace.
The form ribbon includes components that provide agents with an overview of case details, such
as a customer summary and a case timeline.
The form header for the Case form can display two levels of field values from the Case table.
The primary value is the case short description. The secondary values include the account and
contact or consumer, the case priority, and the case state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
You can use properties to determine where the form ribbon and secondary values are displayed:
at the top of the record or in the Contextual side panel. Two properties are available for the
standard record page and two are available for the interaction record.
These properties can operate independently. For example, you can display the form ribbon in the
Contextual side panel and the secondary values in the form header.

Note: The form ribbon properties apply to pages that have active ribbon configurations. If
a page does not have a ribbon configuration, or has an inactive ribbon configuration, there
is no information for the system to display in either location.

Procedure
1. Navigate to All > Now Experience Framework > Experiences > CSM/FSM Configurable
Workspace.
2. In the UX Page Properties list, click the desired property.
Property

Description

ribbonLocation

Controls where to display the form ribbon on
a standard record page: header or sidebar.
For example, the Case record page. Default is
sidebar.

record_secondary_values_location

Controls where to display the form header
secondary field values on a standard record
page: header or sidebar. For example, the
Case record page. Default is sidebar.

ribbonLocation_interaction

Controls where to display the form ribbon on
an interaction record: header or sidebar. De­
fault is sidebar.

interaction_secondary_values_location

Controls where to display the form header
secondary field values on an interaction
record: header or sidebar. Default is sidebar.

3. In the Value field for the selected property, enter one of the following values.
Value

Description

Displays the selected component in the fol­
lowing location:
header

◦ Ribbon: at the top of the record.
◦ Secondary values: at the top of the record,
in the form header below the primary value.

sidebar

Displays the selected component in the Con­
textual side panel.

4. Click Update.
Display field values as interaction record tab titles
Display field values, such as contact or consumer names, as titles on interaction record tabs in
CSM Configurable Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

Note: This task applies to CSM Configurable Workspace.
Configure the sessionTabTitle property to identify the fields that can be used in interaction
record tab titles. Enter fields in this property as a comma separated string.
The system evaluates these fields in the order that they appear in the string. The first field that
has a value is used as the interaction record tab title. If none of the fields in the string have
values, the system displays the record number as the tab title.

Note: Configured fields must appear on the interaction record.
Procedure
1. Navigate to All > Now Experience Framework > Experiences > CSM/FSM Configurable
Workspace.
2. In the UX Page Properties list, click the sessionTabTitle property.
3. In the Value field, enter the fields to use in interaction record tab titles.
Enter the fields as a comma separated string. The default string is
contact,consumer,number.

Note: Configured fields must appear on the interaction record.
4. Click Update.
Enable the Create Case UI action for case type selection
Enable the Create Case UI action for case type selection for one or more selected tables.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

This procedure adds the Create Case UI action to records in the configured table. Selecting this
UI action displays the Select a case type pop-up window .

Note: For the CSM Configurable Workspace, the Create Case UI action for case type
selection is disabled out of box.

Procedure
1. Navigate to the Action Assignments list by entering
sys_declarative_action_assignment_list.do in the application navigator.
2. Filter the actions for the table on which you want the Create Case UI action to be enabled.
For example, to enable the UI action for the Interaction table, use the Table column to filter for
the Interaction [interaction] table.
3. Select the Create Case action with this description:
This Creates Case UI action enables the agent to create a case on Agent Workspace by
selecting the type of case from a list of available case types.
4. On the Create Case Action Assignment record, enable the Active check box and save the
record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

672


<!-- page 673 -->
5. Navigate to the UI Actions list by entering sys_ui_action_list.do in the application navigator.
6. Filter the actions for the same table as selected in step 2.
7. Select the Create Case action with no comments.
8. On the Create Case UI Action record, disable the Active check box and save the record.
9. Repeat steps 1 through 8 for each table on which you want to enable the Create Case UI action
for case type selection.
Configure tabs in the contextual side panel
Use the inlineTabExclusion UX page property to prevent tabs from appearing in the configurable
side panel in CSM Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

You can configure the inlineTabExclusion UX page property for specific tables. The following
example shows the default value for this property.
[{
"template": [
"incident","sn_customerservice_case"
],
"attachment": [
"sn_customerservice_case"
]
}]
In the mapping for this property, the key represents the tab to be hidden and the value includes
the list of tables for which the tab is hidden. In the above example:
• The Response template tab is hidden for the Incident [incident] and Case
[sn_customerservice_case] tables.
• The Attachment tab is hidden for the Case [sn_customerservice_case] table.

Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the UX Page Properties related list, select inlineTabExclusion.
4. Make the necessary changes to the Value field.
5. Select Update.
Configure the Agent Assist and Response Template tabs
Add a table configuration for the Agent Assist tab or Response Template tab for custom tables or
custom case types in the contextual side panel in CSM Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

The Agent Assist tab and the Response Template tab that appear in the contextual side panel
use a UX page property that contains table configurations. To display these tabs for custom
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
tables or case types, create a new UX page property called contextualTableConfigMapping and
add the table configurations to that property.
The mapping for this property includes the tab name, the table name, and the sys_id of the table
configuration. For example:
[{“tab_name”:[{“table=custom_table_name”:”the sys id of the
table config”}]},
{“tab_name”:[{“table=custom_table_name”:”the sys id of table
config”}]}]
[{“agent_assist”:[{“table=incident":"e15061a4b30303002bf182c136a
8dc34"}]},["response_template":[{“table=template”:”0a73bc83c3041
300e2fd5cb981d3ae29”}]}]
You can map multiple tables in this property. For example:
[{"agent_assist":[{"table=custom_table_name":"the sys id of
table config"}, {"table=custom_table_name_2":"the sys id of
table config"}]}]
You can also use operators to match multiple tables in the property configuration. The operators
in the following example include:
• STARTSWITH
• ENDSWITH
• LIKE: This operator is used to match table names with a pattern. In the following example, the
LIKE operator would match with all tables that include the word "case".
• IN: This operator enables you to set a list of values that must match values in your tables.
[
{
"agent_assist": [
{
"tableSTARTSWITHkb_template":
"5cb4030e73e2330021741c86fbf6a7e1"
},
{
"tableENDSWITHu_kb_template":
"5cb4030e73e2330021741c86fbf6a7e1"
}
],
"response_template": [
{
"tableLIKEcase": "5f0a5f7e77840010ec75945caa1061a5"
},
{
"tableINagent_file, sn_customerservice_case":
"82d52b55a300021033d6441d041e61bd"
}
]
}
]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the UX Page Properties related list, select New.
4. Fill in the following fields on the UX Page Property form.

Field

Description

Page

CSM/FSM Configurable Workspace

Name

Use this name for the property:
contextualTableConfigMapping

Type

json

Value

Include an entry for Agent Assist or for Response Template or
both.
Agent Assist example:
[{"agent_assist":[{"table=custom_table_n
ame":"the sys id of table config"}]}]
Response Template example:
[{"response_template":[{"table=custom_ta
ble_name":"the sys id of table
config"}]}]
Agent Assist and Response Template example:
[{"agent_assist":[{"table=custom_table_n
ame":"the sys id of table
config"}]},{"response_template":[{"tabl
e=custom_table_name":"the sys id of
table config"}]}]

5. Select Save.
After adding the property, you can open the record page that uses the configured table and
test the results in the contextual side panel.
Filter activities in the activity stream
Use tags to filter the items that appear in the activity stream.
Tags enable you to filter your activities in the activity stream by dynamic and static states not
offered in filter lists. For example, these states can include Workaround or Status checked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
Tags are enabled and created by your system administrator. To enable and add tags for agents as
a system administrator, see Create tags for the activity stream .
To use tags to filter activities in the activity stream, see Filter activities with tags

.

Auto-dismiss alerts in CSM Configurable Workspace
In CSM Configurable Workspace, you can configure certain alerts to automatically disappear
after a set time. This helps reduce alert fatigue and helps agents stay focused by reducing the
need to manually dismiss lower-priority alerts.
Admins can configure auto-dismiss alert behavior at the experience level either using UI Builder
or UX Page Properties. This configuration provides control over timer duration and display
options. Agents view alerts based on the configuration created by the admin.
Role required: admin
You can either configure this feature using UI Builder or UX Page Properties, depending on your
preference.
Configuring using UI Builder:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the top-right corner, select View experience settings.
4. Scroll to the Configurable alerts section.
5. For each desired alert level, enable the check box under Auto-dismiss.
6. In the Timeout (seconds) column, enter the duration for which the alert should remain visible.
The default is 5 seconds.
7. Configure the following display options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
◦ Show time label: Shows a countdown timer on the alert. This option is enabled by default.
◦ Expand alert content by default: Automatically expands the alert content when it appears.
8. Select Save.
Configuring using UX Page Properties:
1. Navigate to the UX Page Properties list by entering sys_ux_page_property.list in the
application navigator.
2. In the Name column, search for the alert_auto_dismiss_config property.
3. Select the property name to open the UX page property form.
4. In the Value field, define the alert levels you want to configure. For example, add the following
information to configure an info alert.
Configure an info alert
Option

Description

info

Identifies the alert level as an informational
alert. Other levels include:
◦ critical
◦ high
◦ moderate
◦ warning
◦ low

enabled

Turns on auto-dismiss for the alert level. Set
to true.

timeout

The duration for which the alert remains
visible. The default value is 5 seconds.

showTimer

Shows a visible countdown before the alert
disappears. Set to true.

5. Select Save.
Set up additional CSM workspace features
You can set up additional features for use in CSM workspaces. These features typically require
plugin activation and some configuration.
You can set up the following features for use in CSM workspaces.
CSM workspace features
Feature

Description

Customer Central

Customer Central provides customer service agents
with all the information about the customer in one
central place.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
CSM workspace features (continued)
Feature

Description

• The Customer Information view displays key
information about the customer.
• The Customer History view displays recent customer
touch points in an activity feed.
Use Customer Service guided setup to Configure
Customer Central.
Customer Service Case Types

Configure case types to handle different types of
customer issues. A case type identifies the processes
and the data needed to resolve a specific type of issue,
such as a lost or missing credit card.
Use Customer Service guided setup to Configure
customer service case types.

Proactive Customer Service
Operations

Use this feature to track the digital services used by your
customers and to proactively create cases for service
disruptions.
Use Customer Service guided setup to Configure
Proactive Customer Service Operations.

Playbooks for Customer Service
Management

Playbooks provide step-by-step guidance for
completing the tasks needed to resolve specific types of
customer service cases.
The following playbooks are available for Customer
Service Management from the ServiceNow Store:
• Case Playbook for Onboarding
• Case Playbook for Complaints
• Case Playbook for Product Support

Guided decisions

Resolve complex cases faster and more efficiently by
guiding customer service agents through a structured
troubleshooting process.
For details, see Configuring Guided Decisions.

Lookup and verify

This feature enables customer service agents to quickly
look up contacts or consumers using information such
as the name, phone number, or record number.

Estimated time to resolve a case

Use machine learning to predict the estimated time to
resolve a case (ETTR) based on case attributes such as
the short description, category, priority, and assignment
group.
For details, see Configure estimated time to resolve a
case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
Migrating to Configurable Workspace
If you are currently using CSM Agent Workspace, you can implement CSM Configurable
Workspace and continue using some of your existing CSM Agent Workspace configurations.
Some configurations can be used by both CSM workspaces while others need to be configured
specifically for CSM Configurable Workspace. Of these configurations that are specific to CSM
Configurable Workspace, some are accomplished in the platform interface using lists and forms,
while others are accomplished using the UI Builder.
Use the topics in the following table to explore CSM Configurable Workspace features. Then
follow the steps to implement CSM Configurable Workspace and migrate your existing CSM
Agent Workspace configurations.

Explore
• Explore CSM Configurable Workspace
• Workspaces in Customer Service
Management

Migrate
1. Set up CSM Configurable Workspace
2. Migrate to CSM Configurable Workspace

Explore CSM Configurable Workspace
CSM Configurable Workspace is a workspace that can easily be configured and extended using
UI Builder.
UI Builder is a drag-and-drop web user interface builder that you can use to build and configure
CSM Configurable Workspace pages and components.

UI Builder
Working in UI Builder enables you to preview the final interface of the workspace you're building
and to see the effects of different configurations. For CSM Configurable Workspace, some
configurations are also performed in lists and forms.
UI Builder

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


<!-- page 680 -->
Working in UI Builder
A page in a workspace is made up of components that enable your users to accomplish one
or more tasks. For example, you can create a page to solve employee software issues at your
company.
You build out the functionality within the page by adding the components that you need for
your user experience. Components are elements like buttons and data visualizations. UI Builder
comes with a library of components you can add to the page.
After the components are on your page, you can change the layout any way you want. For
example, you can use themes to make a page match your company's styles and standards. For
more information, see Manage the visual style of UI Builder experiences .
Add an event mapping to a component. Event mapping is an important process within UI Builder.
When you build pages with components, you need those pages to actually perform actions for
users. For example, you can map a button to an event handler to perform a button action when
a user selects that button. Another example may be adding a data resource such as a form. You
could set up an event handler to notify a user when the page succeeds in loading the form.
UI Builder is as powerful as you need it. You can build simple web experiences, or you can create
complex data-driven experiences.

Setting up CSM Configurable Workspace
For more information about configuring different features in CSM Configurable Workspace,
such as ribbon configurations, form headers, and UI actions, see Set up CSM Configurable
Workspace.
Related topics
UI Builder
Migrate to CSM Configurable Workspace
Follow the instructions in this topic to migrate from CSM Agent Workspace to CSM Configurable
Workspace.
If you are currently using CSM Agent Workspace and want to migrate to CSM Configurable
Workspace, you can continue using most of your existing configurations. Some features,
however, need to be configured specifically for CSM Configurable Workspace. You can migrate
some of the configurations using lists and forms and others using the UI Builder
tool.
Workspace configuration examples
Workspace configurations

Examples

Configurations that work in both CSM Agent Workspace
and CSM Configurable Workspace without modification.

• Ribbons

Configurations that are different for CSM Configurable
Workspace.

• Lists

• Forms

• List categories

Also, be aware that some configuration changes made for one workspace can also affect the
other. For example, changes to the CSM Agent Workspace configuration may impact CSM
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
Configurable Workspace. The same applies to changes to the CSM Configurable Workspace
configuration, which may impact CSM Agent Workspace.

Note: For customers who are not currently using CSM Agent Workspace and want to
implement CSM Configurable Workspace, use the CSM Configurable Workspace guided
setup by navigating to Customer Service > Administration > Guided Setup > CSM
Configurable Workspace. Clicking Configure in this category takes you to the Configurable
Workspace guided setup. The information and instructions in the different guided setup
categories can help you set up a new implementation of CSM Configurable Workspace.

Workspace features
This section provides information, parameters, and steps to complete the migration of CSM
Agent Workspace configurations to CSM Configurable Workspace. Select the feature that you
want to migrate from the following list.
Workspace features and descriptions
Feature

Description

Activity stream

Activity Stream enables agents to
communicate with requesters and make
internal notes about the work done on a
record.

Agent assist

Agent assist provides agents with automatic
search results that show possible solutions for
records they open.

Agent Chat for Customer Service
Management Configurable Workspace

Agent Chat enables agents to interact with
customers, create incident or case records, or
transfer chats to another agent or queue.

Branding and theming

Branding and theming enables you to
customize your Configurable Workspace to
your company branding and theming.

Email Composer and Email Viewer

The Email Composer enables requestors and
fulfillers to use email to communicate.

Customer Central

Customer Central displays all the touch points
that a customer has had with a contact center
in the form of information cards.

Declarative actions

Declarative actions add custom functionality
to your Workspace forms, fields, lists, and
related lists without writing custom scripts or
learning APIs.

Forms

The form is the user interface where agents do
most of their work.

Form headers

Form headers provide an overview of the
record.

Global Search in configurable workspaces

Global Search provides users with the ability
to search for information within the defined
search sources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


<!-- page 682 -->
Workspace features and descriptions (continued)
Feature

Description

Highlights

Highlights provide background color that
visually expresses the status of a highlighted
value.

Lists

The list view displays filtered lists of records,
such as All tasks, Open tasks, and My tasks.

Ribbons

Ribbons help agents quickly scan relevant
information about a record, such as a timeline,
a user, or a customer summary.

UI Action Bar

UI actions include custom buttons, menu
items, and limiting access to forms based on
user role.

Activity stream
Learn about how the Workspace Activity stream functions in Configurable Workspace.
Activity stream enables agents to communicate with requesters and make internal notes
about the work done on a record. Configure the Activity stream and Activity stream Compose
components in UI Builder to set up Activity stream in Configurable Workspace.
For more information about the Activity Stream component, see the Next Experience
Components documentation
and select Activity Stream from the list of Next Experience
Components.

Activity Stream corresponding parameters
Workspace Activity stream matched with Configurable Workspace parameters.

Note: Not every Configurable Workspace component parameter has a corresponding
Workspace (legacy) parameter.
Activity stream and corresponding parameters
Component

Activity Stream

Legacy component
name

Legacy component
parameter name

UIB component
parameter name

now-activity-streamconnected

table

table

sysID

sysID

isNewRecord

isNewRecord
title
view
showConversationFilter
showTileAvatars
showTileIcons
events
supplemental
ambChannels

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

682


<!-- page 683 -->
Activity stream and corresponding parameters (continued)
Component

Legacy component
name

Legacy component
parameter name

UIB component
parameter name

filterOptions
timestamp
Activity Stream
compose

now-activity-streamcompose-connected

table

table

sysID

sysID

isNewRecord

isNewRecord

fields

Fields
title
useTabs

Agent assist
Learn about how the Workspace Agent assist functions with Configurable Workspace.
Agent assist provides agents with automatic search results that show possible solutions for
records they open. Configure Agent assist in Configurable Workspace by configuring a record
page with a Glide form data source and a Contextual Sidebar. For more information, see Agent
assist Overview
on the ServiceNow Developer Site.

Note: You may need to log in to the Developer Site to see the content.
For more information about using contextual search for Agent Assist, see Contextual search

.

Agent Chat for Customer Service Management Configurable Workspace
Learn how the CSM Agent Workspace Agent Chat functions with CSM Configurable Workspace.
Agent Chat enables agents to interact with customers, create incident or case records, or
transfer chats to another agent or queue. CSM Agent Workspace Agent Chat configurations work
with CSM Configurable Workspace.
For more information about the Agent Chat component, see Next Experience Components
documentation
and select Agent Chat from the list of Next Experience Components.

Agent Chat corresponding parameters
Parameters that are hidden in UI Builder (UIB) aren’t configurable in UIB. These parameters are
used for specific customer workflow use cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

683


<!-- page 684 -->
Component parameters for Agent Chat
Component

Legacy component
name

Legacy component
parameter name

Agent Chat

sn-chat

Interaction - Active

UIB component
parameter name

• Interaction Sys ID
- Active (Hidden in
UIB)
• User isUxf (Hidden
in UIB)

Branding and theming
Learn about branding and theming for your Configurable Workspace.
Branding and theming enables you to customize your Configurable Workspace to your company
branding and theming. Configure your Configurable Workspace branding and theming in UI
Builder to brand and theme your Configurable Workspace.
For more information about branding and theming, see the following topics:
• View the brand and theme setting in your workspace experience
• Configuring Next Experience with Theme Builder
• Configuring Next Experience themes and preferences
Email Composer and Email Viewer
Learn about how the Email Composer and Email Viewer function with Configurable Workspace.

Email Composer
The Email Composer component enables requestors and fulfillers to use email to communicate.
The component is associated with a record to include conversations as part of the record.
For example, an agent can compose an email to a customer to gather information about the
customer's case.
Email Composer corresponding tables
Legacy table name

UIB table name

No corresponding table

sys_ux_screen

Configure the Email Composer in UI Builder

.

For more information about the Email Composer component, see Next Experience Components
documentation .

Email Viewer
The Email Viewer component enables customer service agents to preview emails in CSM
Configurable Workspace before sending them to customers. The component is associated with a
record to include emails as part of the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

684


<!-- page 685 -->
Email Viewer corresponding tables
Legacy table name

UIB table name

No corresponding table

sys_ux_screen

Configure the Email Viewer in UI Builder

.

For more information about the Email Viewer component, see Next Experience Components
documentation .
Customer Central
Learn about how CSM Agent Workspace Customer Central functions with CSM Configurable
Workspace.
Customer Central displays all the touch points that a customer has had with a contact
center in the form of information cards. CSM Agent Workspace Customer Central
configurations function in CSM Configurable Workspace. Configuration changes at the
sn_customercentral_cust_info_config and sys_declarative_action_assignment and their related
lists, however, can be configured in CSM Configurable Workspace.
• Set up the Customer Information view in CSM Configurable Workspace using Guided Setup.
• Set up the Customer Information view in CSM Agent Workspace using Guided Setup.
Customer Central corresponding tables
Legacy table name

UIB table name

sys_declarative_action_assignment

sys_ux_screen

Declarative actions
Learn how the Workspace declarative actions function with configurable workspace.
Declarative actions add custom functionality to your Workspace forms, fields, lists, and related
lists without writing custom scripts or learning APIs. Declarative actions include: form and list
actions, related list actions, and field decorators.
Declarative actions corresponding tables
Legacy table name

Action Assignment
[sys_declarative_action_assignment]

UIB table name

Action Assignment
[sys_declarative_action_assignment]
UX Add-on Event Mapping
[sys_ux_addon_event_mapping]

To migrate a declarative action, convert your custom declarative actions to new UXF Client Action
type, and then define the corresponding add-on event mapping. For more information, see the
following topics:
• Customizing your workspace with declarative actions
• Create a UXF client action for forms
• Declarative actions glossary
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

685


<!-- page 686 -->
Related topics
Manage actions in UI Builder pages
Bind an event to a declarative action
Forms
Learn how the Workspace form functions with Configurable Workspace.
The form is the user interface where agents do most of their work. Workspace form
configurations work without modification in Configurable Workspace, but the configurations may
affect the functioning of your Configurable Workspace.

Form parameters
Form mapping doesn't directly correspond between Workspace form components and
Configurable Workspace form components. Workspace components are hard-coded with the
form and incorporate everything on the form including the form header, UI action bar, Activity
stream, the sidebar, etc. In Configurable Workspace, these features are separate components.
Form headers
Learn how Workspace form headers function with Configurable Workspace.
Form headers provide an overview of the record.
Form header corresponding tables
Legacy table name

UIB table name

sys_aw_form_header

sys_aw_form_header sys_ux_header_config
sys_ux_m2m_workspace_header_ux_header_config

To migrate your Workspace form header to Configurable Workspace, add an additional step in
custom form headers to the Configurable Workspace form header setup.
• An additional form header configuration is provided out of box, CSM/FSM Configurable
Workspace Header Config.
• Legacy form headers function without modification, but may affect the functionality of
Configurable Workspace.
• Add the Form header component to your Configurable Workspace for additional functionality.
For additional information, see Set up a form header in Configurable Workspace.
Global Search in configurable workspaces
Learn about how the CSM Agent Workspace Global Search functions with CSM Configurable
Workspace.
Global Search provides users with the ability to search for information within the defined search
sources.
Global Search corresponding tables
Legacy table name

UIB table name

sys_aw_global_search_config

sys_ux_page_property

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

686


<!-- page 687 -->
For more information, see Using AI Search with CSM Configurable Workspace.
Highlights
Learn how Workspace highlights function with Configurable Workspace.
Highlights provide background color that visually expresses the status of a highlighted value. The
status you choose determines the color highlight.
Highlight corresponding tables
Legacy table name

UIB table name

sys_highlighted_value

sys_highlighted_value
sys_ux_highlighted_value_config
sys_ux_m2m_highlighted_value_config

To migrate your highlights, add an extra step in the custom highlighted values to Configurable
Workspace.
An additional highlighted value configuration is provided out of box, CSM/FSM Configurable
Workspace Highlighted Value Config.
• Legacy highlighted values in form headers work without modification, but may affect the
functionality of Configurable Workspace.
• Highlighted values must be added to a highlighted value configuration to appear in
Configurable Workspace.
For more information, see Set up a highlighted value.
Lists
Learn about how Workspace lists function with Configurable Workspace.
The list view displays filtered lists of records, such as All tasks, Open tasks, and My tasks. By
setting up list categories and filtered lists, you help your agents quickly find the records they
need to work on. Configure your Workspace lists setups in Configurable Workspace.

List Menu Configuration
The Menu Configuration is a container that houses the default configurations of the list menu
which consists of categories and filters.
List Menu corresponding tables
Legacy table name

UIB table name

No corresponding table

sys_ux_list_menu_config

The List Menu setup is added by default to Configurable Workspace. Associate your list and list
categories with this configuration.

List categories
List categories enable you to group records so that agents can find the records they need to work
on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

687


<!-- page 688 -->
List category corresponding tables
Legacy table name

UIB table name

sys_aw_list_category

sys_ux_list_category

Filtered lists
Filtered lists enable you to group records that help agents do their work more efficiently.
Filtered list corresponding tables
Legacy table name

UIB table name

sys_aw_list

sys_ux_list

Note: Roles and groups are defined in the UIB table and are not applicable.
Role and Access
Roles and access enable you to define the audience of each of the lists defined in the list filters.
Role and Access corresponding tables
Legacy table name

UIB table name

sys_aw_list

sys_ux_applicability_m2m_list

To migrate roles and access, select a filtered list and choose the audience.
Ribbons
Learn how CSM Agent Workspace ribbons function with CSM Configurable Workspace.
Ribbons help agents quickly scan relevant information about a record, such as a timeline, a user,
or a customer summary.
Ribbon corresponding tables
Legacy table name

UIB table name

sys_aw_ribbon_setting

sys_aw_ribbon_setting sys_ux_ribbon_config
sys_ux_ribbon_config_setting

Legacy ribbon widgets work in CSM Configurable Workspace, but not the legacy ribbon
configurations. Add ribbon settings to a ribbon configuration to appear in CSM Configurable
Workspace.
For more information, see Set up a ribbon configuration in Configurable Workspace.
UI Action Bar
Learn how the Workspace UI Actions component functions with Configurable Workspace.
UI actions include custom buttons, menu items, and limiting access to forms based on user role.
The UI Action Bar component replaces the UI Actions component in Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

688


<!-- page 689 -->
UI Action Bar corresponding tables
Legacy table name

UIB table name

sys_ui_action

sys_ux_form_action

To migrate UI actions, each UI action must have a corresponding form action to use UI actions in
Configurable Workspace.
For more information, see Set up a form action in Configurable Workspace.

Case routing and assignment
Set up Advanced Work Assignment (AWA) to automatically route cases to the appropriate
customer service agents in CSM Configurable Workspace.
Setting up Advanced Work Assignment for CSM Configurable Workspace
Topic

Description

Exploring Advanced Work Assignment

Learn more about the AWA tool, including
concepts such as work assignment and
assignment rules, service channels, work
items and work item queues, and agent
capacity.

AWA for CSM

Use AWA to automatically assign work to your
agents based on availability, capacity, and
skills. AWA pushes work to qualified agents
using work item queues, routing conditions,
and assignment criteria that you define.
Agents see their assignments in their CSM
Configurable Workspace inbox.

Set up an Advanced Work Assignment service Set up an Advanced Work Assignment (AWA)
channel for assigning case tasks
service channel that you can use to assign
case tasks to available users.
Configure AWA queues for the proxy contact
role

Modify the Advanced Work Assignment
queues and add routing conditions that
support the proxy contact role. This role
enables employees to create cases for
customer accounts and contacts. Employees
can also be proxy case contacts on behalf of
customers.

AWA for CSM
®

Use the ServiceNow Advanced Work Assignment (AWA) for Customer Service Management
feature to automatically assign work items to agents based on their availability, capacity, and
skills. AWA for CSM pushes work to qualified agents using work item queues, routing conditions,
and assignment criteria that you define. Agents see their assignments in their Agent Workspace
inbox.

Plugins
The Advanced Work Assignment for CSM feature is available with the Customer Service plugin
(com.sn_customerservice).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

689


<!-- page 690 -->
To use the shift-based assignment feature for customer service cases, you must enable
the Workforce Optimization for Customer Service plugin (com.snc.wfo.csm) in addition to
the Advanced Work Assignment plugin (com.glide.awa). For more information, see Activate
Workforce Optimization for Customer Service.
To use the chat feature with Advanced Work Assignment for CSM, you must also activate the
Agent Chat plugin (com.glide.interaction.awa).
For more information, see Activate related plugins for Advanced Work Assignment

.

Inbox layouts
Three chat inbox layouts are included with the Chat service channel.
Chat Layouts and fields on the Chat Service channel
Chat Layout

Included Fields

Default Chat Layout

Short description

Contact Chat Layout

Short description, Contact, Account

Consumer Chat Layout

Short description, Consumer

Two case inbox layouts are included with the Case service channel.
Case Layouts and fields on the Case service channel
Case Layout

Included Fields

Default Case Layout

Short description, Contact, Account, Priority,
Category

Consumer Case Layout

Short description, Consumer, Priority,
Category

Variable work item sizing
Organizations may like to size cases based on the complexity of the case, time and effort
required to complete work. This helps in estimating agent utilization accurately. Advance work
assignment currently treats every case as one unit of work. However, sometimes, certain cases
may require more work than others. These cases may account for a greater share of an agent’s
capacity. Work item sizing allows to size the case differently based on the case attributes. For
more information, see Service channel capacity and utilization .

Agent affinity
Agent Affinity is an Advanced Work Assignment enhancement that enables you to streamline
the routing of work items. Advanced Work Assignment automatically assigns work items based
on historical, task-based, or account team affinity. For more information about agent affinity, see
Using Agent Affinity .
Related topics
Advanced Work Assignment
Set up an Advanced Work Assignment service channel for assigning case tasks
Set up an Advanced Work Assignment (AWA) service channel that you can use to assign case
tasks to available users.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

690


<!-- page 691 -->
Before you begin

Role required: admin
You can use the Advanced Work Assignment
(AWA) feature to automatically assign work items
to users based on their availability and capacity.
AWA assigns work items using assignment groups so it's important that your users and groups
are set up correctly.
• Determine the assignment group to use in the AWA service channel configuration and add
users to this group.
• Add the Assignment Group field to the Case Task form view and make the field mandatory.
• Ensure that the users in the assignment group have access to case tasks.

Note: By default, CSM uses assignment groups to control visibility to case tasks.
Therefore the logic to assign a case task to the correct assignment group is triggered
when a case task is created.

About this task

Setting up a service channel involves multiple steps, which are detailed in the following
procedure. Once the service channel setup is complete, you can use AWA to assign newly
created case tasks that:
• Are unassigned.
• Satisfy the conditions specified in the service channel.
• Have the configured AWA assignment group selected in the Assignment Group field on the
Case Task form.

Procedure
1. Create the case task service channel.
a. Navigate to Advanced Work Assignment > Service Channels and click New.
b. Fill in the fields on the Service Channel form.
New service channel field description
Field

Description

Name

Name of the service channel that you are configuring. For
example, Case Task.

Inbox order

Order in which channel items appear in the user inbox. The
Inbox Order field is an integer field type . This field can
store whole numbers.

Application

Name of the application. For the Case Task channel, select
Customer Service.

Active

Option for activating the service channel. When you select
this option, the associated queues for the service channel
can start accepting work items.

Short description

Brief description of the service channel.

Table

Table that stores the service channel records. To route case
tasks, select the Task (sn_customerservice_task) table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

691


<!-- page 692 -->
Field

Description

Assign to field

Field that references the user that the item is assigned to.
For the Task table, this field is the Assigned to (assigned_to)
field.

Assignment group field

Field that references the assignment group that the item is
assigned to. For the Task table, this field is the Assignment
group field.

Advanced condition

If enabled, the advanced conditions that apply to the
channel. For case tasks, the parent case is active: [Active]
[is] [true].

Default work item size

Amount of a user's capacity that is used if this work item is
assigned. The default is 1.

Default capacity

Number of items automatically assigned to agents (pending
overrides). The default for this field depends on the type of
work item.

Utilization condition

Condition that determines what constitutes an active item
that counts toward user workload/capacity. For case tasks:
[State] [is not] [Closed].

c. Click Submit.
The system adds the Case Task channel to the Service Channels list.
For more information about creating an AWA service channel, see Create a service channel

.

2. Configure the layout for the case task inbox card.
a. Click Case Task in the Service Channel list to open the record.
b. In the Inbox Layout related list, click Default Case Task layout.
c. Add the following fields to the card layout.
▪ Field 1: Number
▪ Field 2: Subject
▪ Field 3: Parent Number
d. Click Update.
For more information about configuring the card layout, see Create or modify an inbox layout

.

3. Create a queue for the case task service channel.
a. In the Queue related list, click New.
b. Fill in the following fields on the Queue form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

692


<!-- page 693 -->
Queue related list field description
Field

Description

Name

Name of the queue. For example, Case Task
Assignment.

Short description

Brief explanation of the queue. For example,
Assign case tasks to middle office users.

c. Click Submit.
For more information about configuring a queue, see Create a work item queue

.

4. Create an assignment rule for the Case Task Assignment queue.
a. Navigate to Advanced Work Assignment > Assignment Rules and click New.
b. Fill in the fields on the Assignment Rule form.
New assignment rules field description
Field

Description

Name

Name of the assignment rule.

Short description

Brief description of the assignment rule. For
example, Assign the case tasks based off
this configuration.

Assign by

Type of assignment. Select Most Capacity,
which routes a work item to the user who
has the greatest availability for handling the
work.

Allow agents to reject

In the Rejection handling form section,
enable this check box to enable users to
reject work items in their inbox.

c. Click Submit.
For more information about creating an assignment rule, see Configure agent assignment
rules .
5. Create a group for the Case Task Assignment queue.
a. Navigate to Advanced Work Assignment > Management > Groups and click New.
b. Fill in the fields on the Group form and click Submit.
c. Click the group to display the Group form.
d. In the Group Members related list, add users to the group.
The users that you add to the group for the Case Task Assignment queue require the
following roles:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

693


<!-- page 694 -->
▪ Case task agent (sn_customerservice.case_task_agent)
▪ AWA agent (awa_agent)
For more information about creating a group, see Create or modify groups for Advanced Work
Assignment queues
6. Associate the assignment rule with the Case Task Assignment queue.
a. Navigate to Advanced Work Assignment > Settings > Queues and click the Case Task
Assignment queue.
b. In the Assignment Eligibility related list on the Queue form, click New.
c. Select the case task assignment rule in the Agent assignment rule field.
d. Select the case task assignment group in the Groups field.
e. Click Submit.
7. Activate the service channel.
a. Navigate to Advanced Work Assignment > Settings > Presence States.
b. Click the Available presence state and add the case task service channel to the Selected
column.
c. Click Update.
Once the service channel is activated, you can use it to assign work items. For more
information, see Service channels .
Configure AWA queues for the proxy contact role
Modify the Advanced Work Assignment queues and add routing conditions that support the
proxy contact role and the Internal contact field on the Case form.

Before you begin

Role required: admin

About this task

Modify the following AWA queues:
• For the Case service channel: Customer Service Cases
• For the Chat service channel: Customer Service

Procedure
1. Navigate to All > Advanced Work Assignment > Queues.
2. Select the Customer Service Cases queue.
3. In the Work item routing condition field, add the following OR condition: Internal Contact is
not empty.
4. Click Update.
5. Select the Customer Service queue.
6. In the Work item routing condition field, add the following OR condition: Roles is
sn_customerservice.proxy_contact.
7. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

694


<!-- page 695 -->
Agent tools
Enable agents to resolve cases quickly and efficiently by providing them with tools, such as
Guided Decisions, playbooks, dynamic related records, and Customer Central.
Setting up agent tools
Tool

Description

Guided Decisions

Set up structured troubleshooting processes
to help agents resolve complex issues in a
consistent way.

Playbooks

Set up playbooks to provide agents with
step-by-step guidance for resolving specific
types of customer service cases, including
onboarding, complaint, and product support
cases.

Dynamic related records

Configure the dynamic related records feature
to display related records in the contextual
side panel in CSM Configurable Workspace.
These records dynamically change based on
the context of the current record or playbook
activity.

Customer Central

Configure the Customer Information and
Customer History views in Customer Central to
provide agents with all the information about a
customer in one central place.

Customer Service mobile application

Configure and customize the Customer
Service mobile application for agents who
use the application instance on their mobile
devices.

Configuring Guided Decisions
®

Create structured troubleshooting processes for your agents through the ServiceNow Guided
Decisions Experience application. Help your agents solve complex issues in a consistent way.
The Guided Decisions Experience application is a tool for authoring and running decision tree
flows. A decision tree walks an agent through a troubleshooting process based on a record
context. The process asks a series of questions and the agent provides the answers. Based
on those answers, the agent receives guidance on the next steps to take in the resolution
process. Agents can resolve complex issues faster and more efficiently. For more information,
see Decision trees in Guided decision.

Scenarios for using decision trees
Decision trees can help agents resolve the following types of customer issues:
• Troubleshoot a faulty device, such as a laptop that doesn't work. Use a decision tree to find the
cause and provide a fix for the customer.
• Review a refund request. Use a decision tree to determine whether the customer is eligible for
a refund, which can include checking for exceptions and creating tasks.
• Reset a customer's password. Use a decision tree to walk the agent through the process,
such as verifying the customer's identity, trying other options, and, if needed, resetting the
password.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

695


<!-- page 696 -->
For an example of end-to-end configuration of a decision tree for a specific scenario, see
Example configuration of a decision tree.

Guided Decisions features
• Reuse values in a decision tree by linking inputs in question and guidance nodes. You can also
link inputs of a child tree to a parent tree.
• Link an activated decision tree to your current decision tree to reuse other decision trees and
reduce effort in creating new ones. The linked decision tree acts as a child tree to the current
decision tree.
• Enable users to edit their responses in the previous question nodes or a guidance node.
In a nested decision tree, users can navigate back to the previous node of a parent tree from a
child tree.

Guided Decisions experiences
The Guided Decisions Experience application provides two different experiences for creating
and editing decision trees: through the Decision Tree Builder or the Core UI.
• Create a graphical diagrammatic representation of nodes and their paths in a troubleshooting
process through the Decision Tree Builder. For more information, see Decision trees in
Decision Tree Builder.
• Use forms and lists and edit existing decision trees through the Core UI. For more information,
see Decision trees in Core UI.

Setting up the Guided Decisions Experience application
As an admin, set up the Guided Decisions Experience application to enable users to create and
run decision trees by completing the following setup tasks:
• Install the Guided Decisions Experience application.
• Assign roles to Guided Decisions users - Use roles to control access to Guided Decisions
features and information.
• Install the Recommended Actions application - Enables decision trees to be run as
recommended actions.

Creating and using decision trees

Users with the decision tree author role (decision_tree_author) create decision trees. After
creating a decision tree, the decision tree is implemented by adding it to a recommended action,
playbook, or Service Portal. For more information, see the following topics:
• Create a decision tree in Decision Tree Builder
• Edit a decision tree in Core UI
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

696


<!-- page 697 -->
• Add Guided Decisions to playbooks
• Add Guided Decisions to Recommended Actions
• Add Guided Decisions to Service Portal
Agents interact with decision trees as part of a recommended action or as part of a playbook
within a record, such as a case.
Customers and end-users interact with decision trees on Service Portal.
For guided decisions that are added to playbooks, agents can work through the decision trees
and complete actions suggested in the guidance as part of a playbook stage or activity. How
the agent interacts with the decision tree depends on the playbook configuration. For more
information, see the following topics:
• Use Guided Decisions in playbooks to resolve cases
• Use Guided Decisions in recommended actions to resolve cases

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Decision trees in Guided decision
Decision trees and guidances enable agents to work through a structured troubleshooting
process to resolve customer issues faster and provide standardized resolution.
Decision trees
A decision tree is a multi-step process that includes a series of questions, answers,
and a guidance for an agent to follow. This process is made up of different decision
tree elements, including nodes, inputs, and paths. For more information, see
Decision tree elements.
Decision trees contain different types of nodes. Decision nodes represent one
or more questions. Guidance nodes provide recommendations to agents. Each
decision tree has a root node called the start node. Each node includes a path to
the next node. Based on the answers to the questions, each decision node leads
to an outcome, which can be a guidance, a follow-up question, or another decision
tree.
Guidances
A guidance is an action that an agent can take or information that an agent can
share. For example, a guidance can recommend that the agent can share a
knowledge article or create a work order. Agents can perform the action by clicking
a button on the card.

Decision tree example
The following example uses a flowchart to show the structure of a decision tree that determines
customer eligibility for a promotion. This promotion is available to customers who opened their
accounts within the last 30 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

697


<!-- page 698 -->
Decision tree for evaluating customer eligibility

The agent can select one of two paths to answer the question "Is this a new customer?"
• The No path indicates that the customer isn’t eligible for the promotion.
• The Yes path asks an additional question to determine if the account has been open for more
than 30 days.
◦ If Yes, the customer isn’t eligible for the promotion.
◦ If No, the customer is eligible to receive the promotion.
Decision tree configuration details

For more information about creating a decision tree, see the following topics:
• Configuring decision trees in Decision Tree Builder
• Create a decision tree in Core UI
Decision tree elements
Decision trees are made up of several types of elements including nodes, inputs, and paths.
Decision trees are built using different elements, which are described in the following table. The
terminology for these elements differs slightly between Decision Tree Builder and Core UI but the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

698


<!-- page 699 -->
definitions remain the same. For more information decision tree nodes and paths, see Decision
tree nodes and Decision tree paths.
Core UI terms, decision tree builder terms, and definitions
Core UI term

Decision Tree Builder
term

Decision tree

Decision tree

Node

Node

Definition

A multi-step process that includes a series
of questions and answers. Based on the
answers, each question in a decision tree
leads to another question, a guidance for the
agent to follow, or another decision tree.
A node is a point in a decision tree. You can
create different types of nodes depending
on what is happening at that point in the tree.
Node types include the following:
• Start node
• Question node
• Guidance node
• Linking node

Start node

Start node

Decision node

Question node
(When adding a node
and selecting Ask
users at least one
question in the popup window)

Guidance node

Guidance node
(When adding a
node and selecting
Propose a guidance
as an outcome in the
pop-up window)

Linking node

Linking node
(When adding a node
and selecting Link
decision tree in the
pop-up window)

Guidance

Guidance

The first node in a decision tree. When
you create a decision tree, the system
automatically creates the start node. The start
node can be a question or a task.
This type of node represents one or more
questions. The answers to the questions
lead to an outcome, which can be another
question, a guidance, or another decision tree.

This type of node has a reference to a
guidance, which provides a recommendation
to an agent.

A linking node includes a reference to
another decision tree. This linking connects
the execution of the primary decision tree
to another decision tree when a specific
condition is met.
An action that an agent can take or information
that an agent can share. You can select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

699


<!-- page 700 -->
Core UI terms, decision tree builder terms, and definitions (continued)
Core UI term

Decision Tree Builder
term

Definition

guidances included with the Guided Decisions
Experience plugin or you can Create a
guidance in the Core UI.
Decision input

Question or
instruction

A question or instruction with a configured
answer type. When working through a decision
tree, an agent can provide an answer to the
question in the format of answer type that you
configure.

Input type

Type of answer

The type of data that the question in a
question node can accept as an answer, such
as string, integer, or choice.
For a list of supported input types, see Answer
types for questions.

Decision input
mapping

Link input

Linking inputs from one decision tree node to
another to reuse input values in prior decision
tree nodes.

Label (for a node)

Node name

The name for a question, guidance, or linking
node.
In Decision Tree Builder, this name appears on
the node in the canvas.

Type (for a node)

Node purpose

The type of a node in the Decision Tree Node
record in Core UI.
The purpose of a node in the right panel in
Decision Tree Builder.
• Question node: Ask users at least one
question
• Guidance node: Propose a guidance as an
outcome

Not applicable

Path

A path connects two nodes in a decision
tree or question node to the start node of
the next decision tree. A path is created and
associated with a node and represents the
potential outcome of that node.

Decision path

Not applicable

A path that provides possible outcomes
of a decision node. A decision path links
a decision node to the next node of type
decision.

Guidance path

Not applicable

A path that links a decision node to the next
node of type guidance.

Linking path

Not applicable

A path that links a decision node to the start
node of the next decision tree.

Order

Path priority

The priority in which the path is executed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

700


<!-- page 701 -->
Decision tree nodes
Decision trees include several types of nodes, including start nodes, question nodes, guidance
nodes, and linking nodes.
A decision tree begins with a start node, which presents the first set of questions to an agent.
The start node is typically followed by a question node, which asks another set of questions.
A question node can be followed by another question node, a guidance node, which provides
a recommendation to an agent, or by a linking node, which includes a reference to another
decision tree.
You can enable agents to modify their responses in previous nodes:
• Agents can go back to the previous node by selecting the Back button.
• Agents can jump to any previous node by selecting the Edit icon
tab.

) in the View my responses

For more information, see Create a decision tree in Core UI and Add questions or instructions to
a decision tree.

Start nodes
A start node is the first node in a decision tree. When you create a decision tree, you provide
internal and external names, a title and short description, and a name for the action label. After
saving the record, the system creates the decision tree and the start node. You can use this start
node to build the rest of the decision tree.
A start node includes a minimum of one question. A start node always has a task input of
reference type so you can reuse the task input in other decision or guidance nodes via linking
inputs. The task input includes a reference to the table that stores the record type that the agent
is working on.

Decision or question nodes
A question node asks one or more questions. The answer to the question leads to an outcome,
which can be another question, a guidance for the user to follow, or another decision tree.
A question node presents the agent with a question or instructions to follow to evaluate
the customer's situation and provide the right solution. You can add HTML formatting, such
as images, links, or text formatting to the question node. Examples of typical questions or
instructions include:
• For resetting a password: "What is the customer's account ID?"
• For troubleshooting a faulty device: "What is the device type or model number?"
The answers to the questions are used to create path conditions.
For more information about the available answer types, see Answer types for questions.

Note: Using unsupported input types can cause errors in the runtime experience.
Guidance nodes
A guidance node proposes a solution to a customer’s issue through a reference to a guidance,
which provides a recommendation to an agent. Examples of a guidance include recommending a
knowledge article, creating a work order, or escalating a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

701


<!-- page 702 -->
A guidance node can be followed only by a question node. The execution of the decision
tree continues after the agent performs the guidance, and the guidance history is marked as
complete. You can use a question node to connect two guidance nodes.
A guidance can have outputs, which drive further decision making. With a guidance, you can do
the following:
• Define output variables.
• Define values for the output variables, which are mapped in the Automation Plan flow for the
guidance by the Assign Guidance Outputs flow action.
• Connect the guidance to the guidance node's next node.
• Map the outputs of the guidance to inputs for the guidance node's next node.
For descriptions of the available guidances, see Guidances included with Guided Decisions
Experience application.
Users with the Decision tree author role can also create guidances to reuse in decision trees or
recommended actions. For more information, see Create a guidance in the Core UI.

Linking nodes
A linking node includes a reference to another decision tree. This type of node connects the
execution of the primary decision tree to another decision tree when a defined condition is met.
Linking to another decision tree is useful for complex troubleshooting or for troubleshooting that
requires multiple stages.
A linking node includes the following elements:
• A linked decision tree, where the execution of the primary decision tree continues after this
node is reached.
• Input mapping, which maps the inputs from the nodes preceding the linking node to the start
node of the linked decision tree.
• A path, which connects the previous question node to the start node of the child tree.
For more information, see the following topics:
• For Decision Tree Builder: Link an activated decision tree to this decision tree.
• For Core UI: Link another decision tree to this decision tree
Linking inputs in decision tree nodes
Linking of inputs enables decision tree authors to reuse input values (answers) from prior nodes.

Linking inputs in question and linking nodes
Most questions are presented to an agent to provide answers. When you link an input to another
input, the question is not displayed to the agent. Because the input reuses values from the input
it is linked to, the agent does not need to provide any answer.
Similar to other inputs, you can use linked inputs to create path conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

702


<!-- page 703 -->
Example of linking inputs in a question node

For example, if you have already asked the credit card number in the start node, you can reuse
that input in the following question node. This question is not presented to the agent again and
the value is automatically filled out during run time.

Linking inputs in guidance nodes
With linking inputs, you can reuse the answers that customer provided to supply input values to
the guidance inputs. You can link the task input in the start node to the guidance inputs to pass
the information about the record that the agent is working on.
Example of linking inputs in a guidance node

For example, you can connect the start node’s task input to the following guidance. The task
input holds a reference of the record the agent is working on in a workspace. You need a case
number, which is provided by the task input, for reassigning the case to someone else.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

703


<!-- page 704 -->
Special cases for linking inputs
In most cases, you can only link inputs to other prior node’s inputs of the same type. For
example, you can link a string input field type to another string input field type.
The Guided Decisions Experience application supports the following special cases.
Cases supported in the Guided Decisions
Input type

Description

String input field type

Accepts any type of field to be linked. For
example, string accepts integer, decimal,
choice, and others. String is a text field which
accepts any characters.

Reference input field type

Accepts only reference type of field.
You can link reference input types only if the
current question node’s input table matches
the prior node’s input table at the same level
or at the child level. For example, the Task
table can be linked to the Task table or the
Task table can be linked to the Case table,
which is a child of the Task table.

Choice input field type

Accepts choice type and string type because
a choice in a choice list is a string.

Date and Date/Time input field types

Accepts the following types:
• glide_date_time
• glide_date
• date
• datetime
• due_date
• calendar

Note: The Guided Decisions Experience application does not support glide_var type
fields to map to any inputs.
Decision tree paths
A path is created and associated with a node and represents the potential outcome of that node.
When you create a path, you provide a name, a priority, and the path conditions.

Field

Description

Path name

The path name appears in the decision tree.

Path priority

The priority determines which path and its conditions get
checked first when there are multiple paths. A node can have
more than one path but only one path from a node can be
executed at a time. For example, a path with a priority of 100

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

704


<!-- page 705 -->
Field

Description

has a lower priority value than a path with a priority of 200, so
only path with priority 100 is executed.
Path conditions

Path conditions represent the potential answers or outcomes
from a node. You create path conditions using a condition
builder, which has access to its direct parent node’s inputs. It
uses these inputs to create informative path conditions that
represent potential answers or outcomes for the node. Path
conditions must be met in order to go to the path's destination
node.

• Decision Tree Builder: Determine the next node displayed in a decision tree
• Core UI: Determine the next node in a decision tree
Example configuration of a decision tree
This example demonstrates an end-to-end configuration of a decision tree to help you get
started with Guided Decisions. After you configure the decision tree, you can either embed it in a
playbook or use it as a recommendation in Recommended Actions.
For more information about decision trees, see Decision trees in Guided decision and
Configuring guidances and decision trees.

Troubleshooting a failed credit card transaction
Paul, who holds an account with the StellarVest bank is trying to purchase a smart watch using
their credit card. But the transaction failed at the time of payment. Paul created a case in the
StellarVest bank portal seeking assistance. Agents from the StellarVest bank work on the cases
created by customers to resolve their issues.
In this scenario, the agent assigned to the Paul’s case uses a decision tree to troubleshoot
the failed credit card transaction. The decision tree collects user, credit card, and transaction
details. If money was debited, transaction tracking is initiated. However, if no money was debited,
the agent provides a failure code which determines what guidance is provided. Examples of
potential guidances include: reassigning the case, creating a work order, or assigning the case to
an IT technician.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

705


<!-- page 706 -->
Creating the decision tree to troubleshoot the failed transaction
Learn how process analysts or business owners create a decision tree, and configure various
decision tree nodes in the next pages.
Preparation for creating a decision tree
Before configuring a decision tree, process analysts should document the flow of the decision
tree using a flow chart including the questions, answers, associated paths, and guidance.
Anita, who is a process analyst at the StellarVest bank wants to create a decision tree that
enables agents to troubleshoot a failed credit card transaction.
Anita first creates a flowchart to document the flow of a decision tree to determine the questions,
answers, and possible guidance to configure.

Flow chart for decision tree
No.

Element

Name

Description

1

Start node

Card holder and transaction
details

Start node that collects customer,
credit card, and transaction details.

2

Path

Amount is debited

Path with condition: Amount is
debited.

3

Guidance
node

Initiate transaction tracking

Guidance to initiate transaction
tracking when amount is debited.

4

Question
node

Further assistance needed

Ask whether the customer needs
further assistance.

5

Guidance
node

Provide more options

Guidance to provide more options
such as talk to an agent or request a
new card.

6

Path

Amount is not debited

Path with condition: amount isn’t
debited.

7

Question
node

Failure codes

Collect transaction failure codes when
amount isn’t debited.

8

Path

Error 200

Error code received is 200.

9

Guidance
node

Reassign case

Guidance to reassign the case to
someone else.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

706


<!-- page 707 -->
Flow chart for decision tree (continued)
No.

Element

Name

Description

10

Path

Error 300

Error code received is 300.

11

Guidance
node

Create work order

Guidance to create a work order for
dispatching a new credit card.

12

Path

Error 500

Error code received is 500.

13

Guidance
node

Assign IT technician

Guidance to assign an IT technician to
resolve the issue.

Create a decision tree for troubleshooting a failed transaction
Help Anita create a decision tree that agents can use to troubleshoot a failed credit card
transaction. After this step, the decision tree can be configured in Decision Tree Builder.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.

2. Select New on the Decision Trees list.
3. On the form, fill in the fields.
Decision tree form for troubleshooting a failed transaction
Field

Description

Name

Type Troubleshoot credit card
transaction failure.

Action Label

Type Troubleshoot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

707


<!-- page 708 -->
Field

Description

Description

Type Decision tree to help
agents troubleshoot a credit
card transaction failure.

Title

Type Troubleshoot credit card
transaction failure.

Question font size

Enter the desired font size for the questions
in the guided decision tree. Example: 14

Show a dismiss button

Select this check box if you want the Dismiss
button to appear on recommendation for the
agent.

4. Select Submit.
The Open in Builder button is shown.

What to do next

Configure the start node to ask for the user, card, and transaction details and determine if any
amount was debited.
Create the Initiate transaction tracking guidance
Create the Initiate transaction tracking guidance by configuring inputs, outputs, preview
experience and detail experience.

Before you begin

Role required: sn_gd_guidance.guidance_manager

Procedure
1. Navigate to All > Guided Decisions > Guidances.
2. Create a guidance.
a. Select New in the Guidances list.
b. In the Name field, enter Initiate transaction tracking.
c. In the Description field, enter Guidance for tracking the failed credit
card transaction.
3. Create the following inputs for the guidance.
Inputs are the variables or information that the system needs to perform the guidance. You
can use inputs in multiple places such as the guidance preview experience and the guidance
actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

708


<!-- page 709 -->
a. In the Guidance Input tab, select New for each input.
b. Create the following inputs and select Submit.
Guidance inputs
Label

Type

Reference

Order

Is form field

Cardholder
name

String

-

100

true

Task

Reference

Case

200

false

Credit card
number

Integer

-

300

true

Transaction ID

Integer

-

400

true

-

500

true

Date and time of Date/time
transaction

4. Optional: Create an output for the guidance.
Outputs are the desired result of the guidance action. For example, if a guidance action
creates a case task, the output of that action can return a reference to the case task that was
created.
a. In the Guidance Output tab, select New.
b. In the Label field, enter Case number for transaction tracking.
c. In the Type field, select Reference.
d. In the Reference field, select the Case table.
e. Select Submit.
5. Configure the preview and detail experiences.
For more information, see Configure guidance detail experience.
6. Select Submit.

What to do next

Configure a guidance action that an agent can take while initiating transaction tracking.
Create a guidance action for the Initiate transaction tracking guidance
Configure the actions that agents can take to initiate a transaction tracking.

Before you begin

Role required: sn_gd_guidance.guidance_manager

Procedure
1. Navigate to All > Guided Decisions > Guidances.
2. Select the Initiate transaction tracking guidance from the Guidances list.
3. In the Guidance Actions form section, select New.
4. On the Guidance Action form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

709


<!-- page 710 -->
Field

Description

Value

Guidance

The guidance that this action is
associated with. This field is read
only.

Initiate transaction tracking

Action label

A name for this guidance action.

Initiate

Call to Action
Label

The label for the action button that
appears on the recommendation
card in the contextual side panel.
For example, Review and attach
article or Propose Solution.

Initiate

Action Behavior

The selected behavior for the
guidance action:

Single click

◦ Single click: The action is
initiated and completed with one
click and the card moves to the
History tab in the side panel.
Useful for simple actions such as
escalating a case.
◦ Open in Contextual Side Panel:
The action opens in a detailed
view within the side panel. The
agent can review the details in
the side panel, such as reviewing
the content of a knowledge base
article.
◦ Open in Sub Tab: The action
opens in a separate tab.
You can configure the preview
experience for all the action
behaviour types and configure
the detail view for the actions that
open in the sub tab or contextual
side panel. For more information,
see Configure guidance detail
experience.

Note: Actions that open in
the contextual side panel or in
the subtab don’t move to the
in-progress state. The action
moves to the in-progress or
completed state only when the
agent clicks the action button
in the detail view.
Primary

Denotes the guidance action as a
primary action. This field is enabled
by default.

Select the field

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

710


<!-- page 711 -->
Field

Description

Value

A primary action highlights the
action that the agent should take
and makes that action available as
a button on the recommendation
card.

Note: A guidance can have
only one primary guidance
action.
If this field is not selected, the
guidance action is a secondary
action available through the
more actions menu on the
recommendation card.
Application

The application that this guidance
action is associated with. This field
is read only.

Global

Guidance Action The flow associated with this
Automation
guidance action.

Initiate transaction tracking subflow

Order

The order of the action.

100

Completion
Message

The message that appears at
the top of the recommendation
card when the guidance action is
complete.

The transaction tracking is initiated.

5. Right-click the form header and select Save.
Depending on the selected flow in the Guidance Action Automation field, the flow inputs and
outputs are shown.
6. Configure the flow inputs and guidance outputs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

711


<!-- page 712 -->
◦ In the Automation Flow Inputs tab, select the Pill-picker
icon (

) next to the field and select the flow input from the

list.
◦ In the Guidance Outputs tab, select the Pill-picker icon
(

) next to the field and select the flow output from the

list.
7. Select Submit.
Configure the start node for cardholder and transaction details
Add questions to ask for credit cardholder details and transaction details and configure answer
types in a start node in Decision Tree Builder.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

In the question node, you can add the questions that you want to ask customers or details that
you want to collect. For example, you can ask for the type of credit card or whether any amount is
debited. Based on the answers provided, the path to a next question or guidance node is taken.

Procedure
1. Select Open in Builder.
The new decision tree opens in Decision Tree Builder in a new tab.

2. Select New node, which is a start node of your decision tree.
3. In the Node name field, enter Ask card holder and transaction details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

712


<!-- page 713 -->
4. In the Input section, in the Reference table field, select the Case table.

The reference table doesn’t necessarily have to be a task table. For example, you can select a
case, incident, or interaction table for the record context to recommend this decision tree in a
workspace.

Note: You must select the same table as the reference table for the context record in
Recommended Actions.
5. Configure question 1.
a. In the Question or instruction field, type Enter your name.
b. Make this question a required question by selecting the Required question field.
c. In the Type of answer field, select String.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

713


<!-- page 714 -->
6. Configure question 2.
a. Select the Add question button.
b. In the Question or instruction field, type Enter your credit card number.
c. Make this question a required question by selecting the Required question field.
d. In the Type of answer field, select Integer.

7. Configure question 3.
a. Select the Add question button.
b. In the Question or instruction field, type Enter the transaction ID.
c. Make this question a required question by selecting the Required question field.
d. In the Type of answer field, select Integer.

8. Configure question 4.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

714


<!-- page 715 -->
a. Select the Add question button.
b. In the Question or instruction field, type Select the card type.
c. Make this question a required question by selecting the Required question field.
d. In the Type of answer field, select Choice.
e. In the Label field, enter Visa for the first option in the list.
f. Select Add choice.
g. In the Label field, enter MasterCard for the second option in the list.
h. Select Add choice.
i. In the Label field, enter Meestro for the third option in the list.

9. Configure question 5.
a. Select the Add question button.
b. In the Question or instruction field, type Select date and time of the failed
transaction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

715


<!-- page 716 -->
c. Make this question a required question by selecting the Required question field.
d. In the Type of answer field, select Date/time.

10. Configure question 6.
a. Select the Add question button.
b. In the Question or instruction field, type Has any amount been debited?.
c. Make this question a required question by selecting the Required question field.
d. In the Type of answer field, select True/False.

11. Select Save and close.

What to do next

Add paths and configure conditions for transactions when the next question or guidance node is
displayed in a decision tree.
Configuring paths with conditions whether the amount is debited or not
Configure paths with conditions to determine the next question or guidance node that is
displayed in a decision tree.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

716


<!-- page 717 -->
• If any amount is debited during a failed transaction, the path that leads to the Initiate
transaction tracking guidance is taken.
• If no amount is debited during a failed transaction, the path that leads to the next question
node is taken.
Configure the path for the amount-debited condition
Configure a path for the amount-debited condition for the next guidance node.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When a customer answers that the amount is debited from the credit card, the path that leads to
the Initiate transaction tracking guidance is taken.

Procedure
1. In Decision Tree Builder, select the Add path icon ( ) on the start node.
A new path and a new node are added to the canvas.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

717


<!-- page 718 -->
2. Select the new path.
3. In the Path name field, enter Amount is debited.
4. In the Path priority field, enter 100.
5. Select the appropriate fields to set the condition "Has any amount been debited? | is | true".
6. Select Save and close.

What to do next

Configure a guidance node that allows agents to initiate the transaction tracking for a failed
transaction.
Configure the path for the amount-not-debited condition
Configure a path for the amount-not-debited condition for the next question node.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When a customer answers that the amount isn’t debited from the credit card, the path that
leads to the next question node is taken. The question node asks for failure codes that the user
received.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

718


<!-- page 719 -->
Procedure
1. In Decision Tree Builder, select the Add path icon ( ) on the start node.
A new path and a new node are added to the canvas.

2. Select the new path.
3. In the Path name field, enter Amount is not debited.
4. In the Path priority field, enter 200.
5. Select the appropriate fields to set the condition "Has any amount been debited? | is | false".
6. Select Save and close.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

719


<!-- page 720 -->
What to do next

Configure a question node to ask for the failure codes that customer received after the failed
transaction.
Configure a guidance node to initiate the transaction tracking
Configure a guidance node in Decision Tree Builder so that agents can initiate the transaction
tracking.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When the customer answers that money is debited after a failed transaction, agents can create a
case to initiate the transaction tracking.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

720


<!-- page 721 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

721


<!-- page 722 -->
Procedure
1. Select Add node on the Amount-is-debited path.

2. In the pop-up window, select Propose a guidance as an outcome to configure a guidance
node.
A guidance is an outcome of a decision tree.
3. In the Node name field, enter Initiate transaction tracking.
4. In the Guidance field, select Initiate transaction tracking guidance.
5. In the Set field inputs to pass data into this guidance section, link the task input from the
previous question node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

722


<!-- page 723 -->
6. In the Set more field inputs to show to users section, link guidance inputs to the inputs from
the previous question node.
a. Select the Link input icon (

) next to the field.

b. Select the previous question node and the question from the list.
The provided answer to the question is mapped to the guidance input during runtime.
7. Select Save and close.

What to do next

Do the following steps to add the next question node:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

723


<!-- page 724 -->
1. Add a new path by selecting the Add path icon (
guidance node.

) on the Initiate transaction tracking

You can add a question node only after a guidance node. The execution of the decision tree
continues after the guidance is performed. The path configuration isn’t required because there
can only be one question node after a guidance node.
2. Configure a question node for further assistance.
Configure a question node for further assistance
Add a question node to ask users whether they need further assistance.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

724


<!-- page 725 -->
Procedure
1. Select New node on the path that comes from the Initiate transaction tracking guidance.
2. In the Node name field, enter Further assistance needed.
3. In the Question or instruction field, type Do you need further assistance?.
4. Make this question a required question by selecting the Required question field.
5. In the Type of answer field, select Choice.
6. In the Label field, enter Yes for the first option in the list.
7. Select Add choice.
8. In the Label field, enter No for the second option in the list.
9. Select Save and close.

What to do next

Do the following steps to add the next guidance node:
1. Configure a path with the condition "Do you need further assistance? | is | Yes". For more
information and example, see Determine the next node displayed in a decision tree and
Configuring paths with conditions whether the amount is debited or not.
2. Add a guidance node and associate the More options guidance to the Yes path. For more
information and example, see Provide actions to agents in a decision tree and Configure a
guidance node to initiate the transaction tracking.
Configure a question node to ask failure codes
Add a question to ask for the failure code that the customer received after a failed credit card
transaction.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

725


<!-- page 726 -->
About this task

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

726


<!-- page 727 -->
Procedure
1. Select Add node on the Amount-not-debited path.

2. In the pop-up window, select Ask users at least one question to configure a question node.
3. In the Node name field, enter Ask for failure codes.
4. In the Question or instruction field, type Enter the failure code.
5. Make this question a required question by selecting the Required question field.
6. In the Type of answer field, select Choice.
7. In the Label field, enter Failure code 200 for the first option in the list.
8. Select Add choice.
9. In the Label field, enter Failure code 300 for the second option in the list.
10. Select Add choice.
11. In the Label field, enter Failure code 500 for the third option in the list.
12. Select Save and close.

What to do next

Configure a path for each failure code the customer can receive after a failed credit card
transaction.
Configure paths for different failure code conditions
Configure a path for each failure code condition to provide appropriate guidance to agents.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When the failure code received by the customer is 200, the path that leads to the Reassign case
guidance is taken.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

727


<!-- page 728 -->
For more information about how to configure a path, see Determine the next node displayed in a
decision tree.

Procedure
1. In Decision Tree Builder, select the Add path icon ( ) on the Ask for failure codes question
node.
A new path and a new node are added to the canvas.
2. Select the new path.
3. In the Path name field, enter 200.
4. In the Path priority field, enter 100.
5. Select the appropriate fields to set the condition "Enter the failure code | is | true".
6. Select Save and close.

What to do next

Configure paths for other failure codes:
• 300 failure code - This path leads to the Create work order guidance.
• 500 failure code - This path leads to the Assign IT technician guidance.
Associate guidances for different failure codes
Associate guidances to paths with different failure code conditions.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

728


<!-- page 729 -->
About this task

Procedure
1. Associate a guidance to the 200 path.
a. Select Add node in the 200 path.
b. In the pop-up window, select Propose a guidance as an outcome to configure a guidance
node.
A guidance is an outcome of a decision tree.
c. In the Node name field, enter Reassign this case.
d. In the Guidance field, select the Reassign case guidance.
e. In the Set more field inputs to show to users section, map inputs by selecting the Link input
icon ( ) next to the field and selecting a guidance input from the list.
f. Select Save and close.
2. Associate a guidance to the 300 path.
a. Select Add node in the 300 path.
b. In the pop-up window, select Propose a guidance as an outcome to configure a guidance
node.
A guidance is an outcome of a decision tree.
c. In the Node name field, enter Create a work order.
d. In the Guidance field, select the Create work order guidance.
e. In the Set more field inputs to show to users section, map inputs by selecting the Link input
icon ( ) next to the field and selecting a guidance input from the list.
f. Select Save and close.
3. Associate a guidance to the 500 path.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

729


<!-- page 730 -->
a. Select Add node in the 500 path.
b. In the pop-up window, select Propose a guidance as an outcome to configure a guidance
node.
A guidance is an outcome of a decision tree.
c. In the Node name field, enter Assign an IT technician.
d. In the Guidance field, select the Assign IT technician guidance.
e. In the Set more field inputs to show to users section, map inputs by selecting the Link input
icon ( ) next to the field and selecting a guidance input from the list.
f. Select Save and close.

Result

Activate the Troubleshoot credit card transaction failure decision tree
Validate and activate the completed decision tree so you can use it in playbooks in case records
or as recommendations in Recommended Actions.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When you activate the completed decision tree, Decision Tree Builder checks for errors such
as missing information, invalid input mappings due to changes in prior node inputs, or missing
guidance inputs. After all the errors are resolved, you can validate and activate the decision tree.
If you change an activated decision tree, remember to activate the decision tree again to display
the updated decision tree in a workspace.

Procedure
1. In Decision Tree Builder, select Activate.
◦ If there are errors in your decision tree, error icons and alert messages are displayed. You
must resolve the errors before you can activate the decision tree. For more information, see
Validation error notifications in Decision Tree Builder.
◦ If there are no errors, a confirmation dialog box displays.
2. In the confirmation dialog box, select Activate now.
A success message with instructions on the next action to take is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

730


<!-- page 731 -->
Result
• The status of the decision tree is changed from Not Active to Active.
• The Activate button is disabled.

What to do next
• Configure recommended actions to use the activated decision tree as a recommendation.
The recommendations appear as cards in the contextual side panel of a workspace. For more
information, see Add Guided Decisions to Recommended Actions.
• Configure Playbooks to use the activated decision tree as part of a playbook in a record tab.
For more information, see Add Guided Decisions to playbooks.
Install the Guided Decisions Experience application
You can install the Guided Decisions Experience application (sn_ga_exp) if you have the admin
®
role. The application includes demo data and installs related ServiceNow Store applications
and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Guided Decisions Experience
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Guided Decisions Experience:
• Plugins
• Tables
• Roles
• Guidances
For more information, see Components installed with Guided Decisions Experience.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Guided Decisions Experience application (sn_ga_exp) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

731


<!-- page 732 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Components installed with Guided Decisions Experience
Several types of components are installed with the Guided Decisions Experience application,
including tables, roles, and guidances.

Tables
The following tables are added to your instance with the activation of Guided Decisions
Experience.
Tables added with Guided Decisions Experience activation
Table

Description

Decision Tree

Stores details of all decision trees.

[ga_decision_tree]
Decision Tree Node
[ga_decision_tree_node]
Decision Input Mapping
[ga_decision_input_mapping]
Decision Tree Version

Stores details of all decision tree nodes in each
decision tree.
Stores input-mapping details such as source node,
source input, destination node, and destination input.
Stores decision tree versions with states.

[ga_decision_tree_version]

Roles
The following roles are added to your instance with the activation of the Guided Decisions,
Guided Decisions Experience, and Recommended Actions plugins.
Roles added with Guided Decisions and Recommended Actions
Role

Description

Contains roles

Decision tree author

Creates, views, updates, and
deletes decision trees.

• decision_table_admin

[decision_tree_author]

Note: This role is
automatically given
to customer service
managers.

• sn_gd_guidance.guidance_manager
• decision_tree_user

Note: Included with the
Guided Decisions plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

732


<!-- page 733 -->
Roles added with Guided Decisions and Recommended Actions (continued)
Role

Description

Decision tree user

Views decision trees.

Note: This role is

[decision_tree_user]

automatically given to
customer service agents.

Contains roles

• decision_table_reader
• sn_gd_guidance.guidance_user

Note: Included with the
Guided Decisions plugin.

Guidance manager

Creates, views, updates, and
deletes guidances, which are
[sn_gd_guidance.guidance_manager]
outcome of a decision tree.

Note: This role is

sn_gd_guidance.guidance_user

Note: Included with
the Guided Decisions Guidance plugin.

automatically given
to customer service
managers.
Guidance user

Views guidances.

[sn_gd_guidance.guidance_user]

Playbook author
[pd_content_author]

uxframework_user

Note: This role is

Note: Included with

automatically given to
customer service agents.

the Guided Decisions Guidance plugin.

Adds decision trees and
guidances to a new or existing
playbook for service agents to
access on their workspace.

Resource Generator author

Configures resource
generators.
[sn_nb_action.resource_generator_author]

• sn_gd_core.decision_tree_user
• pd_shared.user
• pd_trigger_author

• flow_operator
• decision_table_reader
• platform_ml_read
• sn_nb_action.trend_definition_author

Note: Included with the
Recommended Actions
plugin.
Trend Definition author

Configures trend definitions.

[sn_nb_action.trend_definition_author]

Note: Included with the
Recommended Actions
plugin.

Guidances
The Guided Decisions Experience application includes the guidances described in the following
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

733


<!-- page 734 -->
Guidance involved in Guided Decisions
Guidance

Apply resolution from a solved case

Communicate Workaround

Description

Enables agents apply a resolution from
recommended solved cases by clicking the
Resolve case button on a card. The action
copies the resolution notes and a resolution
code from the solved case into the Closure
Information section of the current case. The
state of the current case changes to resolved.
Enables agents to communicate a workaround
from a recommended problem record by
clicking a Communicate workaround button
on a card. The action opens the guidance in
the side panel.
The guidance shows the workaround from
the problem record and provides a note field
for the agent to add additional notes. The
workaround and notes are added in the work
notes and the problem record is linked to the
current case.

Create case task

Create Work Order

Link to existing defect

Link to existing open case

Offer Recommendation

Enables agents to create a case task for the
current case by clicking a Create button on
a card, which opens the guidance in the side
panel where the agent can enter a subject for
a new case task and submit it.
Enables agents to create a work order for a
case by clicking a Create button on a card.
Creates a work order task and opens the task
in a subtab.
Enables agents to link an existing defect to
the current case by clicking a Link to defect
button on a card, which links the defect to the
case and updates the work notes.
Enables agents to link the current case to an
existing open case by clicking the Link to this
case button on a card. The action sets the
open case as the parent of the current case.
Enables agents to recommend upgrade of a
product to provided product model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
Guidance involved in Guided Decisions (continued)
Guidance

Propose Resolution

Read message to customer

Reassign case

Review and attach article

Description

Enables agents to enter resolution notes and
a resolution code for a case by clicking a
Propose Solution button on a card.
Enables an agent to indicate that a message
was read to the customer during a call by
clicking the Mark as read button on a card,
and adding the message to the work notes.
Enables agents to reassign the current case to
a recommended assignment group by clicking
a Reassign button on a card, which opens the
guidance in a side panel where the agent can
enter notes. The current case is reassigned
to a different assignment group and the work
notes are updated.
Enables agents to review a recommended
knowledge article in the contextual side panel.
They can do this by clicking the Review and
attach article button on a card, which opens
the article in the side panel.
In the side panel, agents can do the following:
• Review the article.
• Attach the article to the case.
• Mark the article as helpful.
• Open the article in a subtab.

Configuring guidances and decision trees
Configure guidances and decision trees to resolve customer issues faster and provide
standardized resolution.
A decision tree is a structured troubleshooting process for service agents to work through. For
more information, see Setting up Guided Decisions.
The configuration process consists of the tasks listed in the following table.
Guidance and decision tree configuration tasks
Step

Description

Create a guidance in the Core UI

Configure guidances to provide actions to your
agents.

Configuring decision trees in Decision Tree
Builder

Configure decision trees that agents can use
to troubleshoot solutions for customer issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
Guidance and decision tree configuration tasks (continued)
Step

Description

You can create decision trees in Decision Tree
Builder only.
Editing decision trees in Core UI

Edit the decision trees that you created
using Core UI to improve or extend the
troubleshooting process.
Only editing of existing decision trees is
supported in Core UI. You can create decision
trees in Decision Tree Builder only.

Add Guided Decisions to Recommended
Actions

Add decision trees to recommended actions,
so that agents can take relevant actions in a
troubleshooting process based on a record
context.

Add Guided Decisions to playbooks

Add decision trees to playbooks, so
that agents can provide resolution in a
troubleshooting process for their cases.

Add Guided Decisions to Service Portal

Add decision trees to Service Portal, so that
internal users can leverage self-service or
troubleshoot their issues.

Create a guidance in the Core UI
Create a guidance in the Core UI so that you can link the guidance to the guidance node of a
decision tree. For example, your agent may attach a knowledge article or propose a solution to a
customer to help resolve an issue.

Before you begin

Role required: sn_gd_guidance.guidance_manager

About this task

The preview information appears on the Recommended Actions card in the contextual side
panel. The preview experience is applicable only for Recommended Actions, where agents can
see previews of recommendations before launching them.
Playbooks don’t have a preview experience because decision trees are embedded and
considered launched already in playbooks.

Procedure
1. Navigate to All > Guided Decisions > Guidances.
2. Create a guidance.
a. Select New in the Guidances list.
b. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
Guidance form
Field

Description

Name

Name for the guidance.

Description

Brief description of the guidance.

Action available to multiple users

Makes the guidance available to multiple
agents working on the case.
When this option isn’t selected, only one
agent can work on any guidance. When the
first agent works on the guidance and the
state is In-progress, Completed, or Error, the
other agents can't see this guidance.

Allow users to re-run the guidance

Enables agents to go back to the previous
node, edit the previous nodes, or re-execute
the guidance in the runtime experience of a
decision tree.

Hide completed guidance

Hides the guidance recommended for a
case resolution.
In other words, the completed guidance in
the View my response section of a Decision
Tree is not displayed for the agent.

Note: This field is visible only when
the Guided Decision Experience plugin
is installed. You may need to configure
the form to add this field.
c. Select Submit.
3. Open the guidance that you want to update.
4. Create one or more inputs for the guidance.
Inputs are the variables or information that the system needs to perform the guidance. You
can use inputs in multiple places such as the guidance preview experience and the guidance
actions.
a. In the Guidance Input tab, select New.
b. On the form, fill in the fields.
Guidance Input form
Field

Description

Type

Field type of the input.
Depending on the field type that you
select, you might need to configure
additional settings. For example, if you

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


<!-- page 738 -->
Field

Description

select Reference as the field type, you need
to select a reference table.
Label

Name for the guidance input.

Column name
Is form field

If the guidance input requires an action by
the agent, such as adding information to a
field, select the Is form field check box.

Order

Sequence in which the guidance input is
displayed when more than one guidance
input is defined.

Choice List Specification

Choices are:
▪ Dropdown without --None-- (must specify
a default value)
▪ None
▪ Dropdown with --None-None is the default value.
▪ Suggestion
This tab appears when you select a value in
the Type field.

Default value

Specifies the default value of the field for
any new record. Ensure that this value
uses the correct field type. For example, an
integer field uses a default value of 2 but
cannot use a default value of two.

c. Select Submit.
5. Optional: Create one or more outputs for the guidance.
Outputs are the desired result of the guidance action. For example, if a guidance action
creates a case task, the output of that action can return a reference to the case task that was
created.
a. In the Guidance Output tab, select New.
b. On the form, fill in the fields.
Guidance Output form
Field

Description

Type

Field type of the output.
(Optional) Depending on the field type that
you select, you might need to configure
additional settings. For example, if you

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
Field

Description

select Reference as the field type, you need
to select a reference table.
Label

Defines a unique label for the guidance
output. The label appears on list headers
and form fields for the output.

Column name

Defines the field name of the column.
When you create a new field, this name is
populated automatically based on the label.

Order

Sequence in which the guidance output is
displayed when more than one guidance
outputs is defined.

Default value

Specifies the default value of the field for
any new record. Ensure that this value
uses the correct field type. For example, an
integer field uses a default value of 2 but
cannot use a default value of two.

c. Select Submit.
6. Configure the preview experience.
a. Select the Preview Experience tab.
b. In the Preview Title field, add a title for the guidance preview as either static text, dynamic
content (field values from guidance inputs), or a combination of static text and dynamic
content.
▪ To enter static text, type the text into the field.
▪ To enter dynamic content, select the Pill-picker icon (
guidance input from the list.

) next to the field and select a

You can drill down to find the specific input you

want.
This field can contain static text, dynamic content, or a combination of static text and
dynamic content. To select dynamic content as a field value:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
i. Select the Pill-picker icon (

) next to the Preview Title field.

ii. Select a guidance input from the list. You can drill down to another level to find the input
you want.

c. In the Fields To Display field, select fields to display in the guidance preview.
d. In the Message field, create a message for the guidance preview.
You can use the tools available in the rich text editor to create and format the message. This
field can include text and HTML content like images, videos, and links.
7. Select Submit.

What to do next

Configure guidance detail experience for Recommended Actions cards.
Configure guidance detail experience
Configure guidance title and description that are displayed to users in recommended actions or
playbooks.

Before you begin

Role required: sn_gd_guidance.guidance_manager

About this task

The detail information appears in playbooks, or in a contextual side panel or in a subtab for
Recommended Actions for Customer Service.

Procedure
1. Navigate to All > Guided Decisions > Guidances.
2. Select a guidance from the Guidances list.
3. Configure the detail experience for the guidance in the Detail Experience tab.
The detail experience is a message that is displayed for guidances that opens in the
contextual side panel or in a subtab.
a. In the Title field, add a title for the guidance in the detailed view.
b. In the Guidance Message field, provide a message for the detail view.
4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
What to do next
• Customize a guidance preview experience in the UI Builder
• Customize a guidance detail experience in the UI Builder
The process for configuring a guidance is the same in the Guided Decisions Experience
application and the Recommended Actions for Customer Service application.
Create a guidance action for a guidance
Configure the actions that agents can take to resolve cases or issues.

Before you begin

Role required: sn_gd_guidance.guidance_manager

Procedure
1. Navigate to All > Guided Decisions > Guidances.
2. Select a guidance from the Guidances list.
3. In the Guidance Actions form section, click New.
4. On the Guidance Action form, fill in the fields.

Field

Description

Guidance

The guidance that this action is associated with. This field is
read only.

Action label

A name for this guidance action.

Call to Action Label

The label for the action button that appears on the
recommendation card in the contextual side panel. For
example, Review and attach article or Propose Solution.

Action Behavior

The selected behavior for the guidance action:
◦ Single click: The action is initiated and completed with
one click and the card moves to the History tab in the side
panel. Useful for simple actions such as escalating a case.
◦ Open in Contextual Side Panel: The action opens in a
detailed view within the side panel. The agent can review
the details in the side panel, such as reviewing the content
of a knowledge base article.
◦ Open in Sub Tab: The action opens in a separate tab.
You can configure the preview experience for all the action
behaviour types and configure the detail view for the actions
that open in the sub tab or contextual side panel. For more
information, see Configure guidance detail experience.

Note: Actions that open in the contextual side panel
or in the subtab don’t move to the in-progress state. The
action moves to the in-progress or completed state only
when the agent clicks the action button in the detail
view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
Field

Description

Primary

Denotes the guidance action as a primary action. This field is
enabled by default.
A primary action highlights the action that the agent should
take and makes that action available as a button on the
recommendation card.

Note: A guidance can have only one primary guidance
action.
If this field is not selected, the guidance action is a
secondary action available through the more actions menu
on the recommendation card.
Application

The application that this guidance action is associated with.
This field is read only.

Guidance Action Automation

The flow associated with this guidance action.

Order

The order of the action.

Completion Message

The message that appears at the top of the recommendation
card when the guidance action is complete. For example, KB
article was shared.

5. Depending on the selected flow in the Guidance Action Automation field, you can configure
flow inputs and guidance outputs.
◦ Configure flow inputs in the Automation Flow Inputs tab.
◦ Configure outputs in the Guidance Outputs tab.
These fields can contain static text, dynamic content (field values from guidance inputs), or
a combination of static text and dynamic content. To use dynamic content, select the Pillpicker icon (

) next to the field and select a guidance input from the list.

6. Select Submit.

What to do next

Configure a guidance node and link the created guidance to this node to provide actions to
agents.
Create a decision tree in Core UI
Create a decision tree that agents can use to troubleshoot solutions to customer issues.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

Decision trees are first created in Core UI. You then use Decision Tree Builder to configure the
start node and add nodes and paths to build a decision tree.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. On the Decision Trees page, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
3. On the form, fill in the fields.
Decision Tree form
Field

Description

Name

The internal name of the decision tree.

Action Label

The label of the call-to-action button on the
Recommended Actions card.

Description

The description of the decision tree to show
on the Recommended Actions card.

Title

The external name of the decision tree that
end-users or agents see in a workspace.
If the Title field is empty, the internal name
is shown as the external name on the
Recommended Actions card.

Question font size

The font size of the questions in the guided
decision tree. It reflects in the workspace and
service portal.
The font size defined in the parent decision
tree is inherited by the child decision tree
even though the Question font size for the
child decision tree has its own Question font
size defined.
You may need to configure the form to add
this field.

Show a dismiss button

Shows or hides the Dismiss button that
cancels the flow of a decision tree. This field
is turned on by default.

4. Select Submit.

Result

A decision tree record and a start node are created.

What to do next

Configure a start node to add initial set of questions or instructions to a decision tree in Decision
Tree Builder.
Configuring decision trees in Decision Tree Builder
Configure decision trees using the no-code visual Decision Tree Builder, which provides a
canvas for a diagrammatic representation of nodes and their paths in a troubleshooting process.
As a process owner or business analyst, you can configure decision tree by adding nodes,
defining paths, and attaching guidances through Decision Tree Builder. For more information,
see Decision tree nodes.
You can validate and activate a decision tree with a single action. For more information, see
Activate a decision tree.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
Decision Tree Builder canvas

Accessing Decision Tree Builder
You can access the Decision Tree Builder by selecting the Open in Builder button on the
decision tree record.

Configuring question and guidance nodes
You can configure a new node as a question node or a guidance node. When there are multiple
questions in a start node or a question node, you can delete a question or change the order of
the questions. For more information, see Add questions or instructions to a decision tree.
Guidance nodes provide actions to agents to resolve or escalate a customer issue. You can
either select a guidance from the list of available guidances or create a guidance in Core UI. You
can then configure guidance inputs by entering static values or reuse inputs from prior nodes.
For more information, see Provide actions to agents in a decision tree.

Linking node
You can configure a new node as a linking node to link a child decision tree to the current
decision tree. This linking connects the execution of the primary decision tree to another
decision tree when a specific condition is met. For more information, see Link an activated
decision tree to this decision tree.

Creating paths for the next nodes
A path in a decision tree connects one node to another. You can configure a condition to define
when the path must be taken. Selecting certain answers can be a condition for the path. The
priority order for a path sets the precedence of one path over another.
For more information, see Determine the next node displayed in a decision tree.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
Editing a node or a path
When you edit the inputs of nodes and their paths, make sure to update the following nodes as
well because they might be reusing data from these inputs.

Deleting a node or a path
Note the following information about deleting a node or path:
• You can delete a leaf node if it isn’t connected to any path or a node.
• Deleting a leaf node removes the node from the decision tree but the configuration of the path
before the deleted node remains intact.
• You can't delete an intermediate node or path.
• When you delete the question node after a guidance node, both the question node and the
path are deleted.

Linking inputs
You can link inputs from one node to another to reuse input values from prior nodes. You can
use linked inputs to create path conditions. For more information about input mapping in the
question node or guidance node, see Linking inputs in decision tree nodes.
For more information, see Reuse answers at decision points.
Related topics
Validation error notifications in Decision Tree Builder
Activate a decision tree
Revert to the previous activated decision tree version
Add questions or instructions to a decision tree
Add questions you want to ask your customers or instructions you want to provide to them and
configure answer types in a start node in Decision Tree Builder.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

The start node is the first node in a decision tree. It contains a task input and a minimum of
one question or instruction. You can configure one or more questions to ask customers or
instructions to provide to them.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, select New node.
5. In the Node name field, enter a name for the start node.
6. Optional: In the Reference table field, select a table for the record type.
(Optional) The table that you select for the task input does not necessarily have to be a task
table. For example, you can select a case, incident, or interaction table for the record context to
recommend this decision tree in a workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
Note: You must select the same table as the reference table for the context record in
Recommended Actions.
7. In the Question 1 section, enter a question or instruction for customers.
You can add text formatting, images, or links using the controls at the top of the Question 1
section.
8. Optional: Make this question a required question by selecting the Required question field.
9. Select the type of answer for your question.
For a description of the answer types, see Answer types for questions.
The answer the customer provides to a question can be passed to other nodes and paths via
input mapping.
10. Optional: Link inputs to reuse answers from prior nodes.
For more information, see Reuse answers at decision points.
11. Optional: Add more questions or instructions.
12. Select Save and close.

What to do next

Determine the next node displayed in a decision tree
Answer types for questions
Several answer types are available for agents to provide answers to questions in a decision tree.
Type of answer
Choice

Description

Choice

A list of choices. The list types are:
• New list: New choice list
• Pre-defined list from a table: Existing choice list from a selected table
Use "None" as the first choice in the list: Option to add None as the default value
in the list.

Date

Date in the format of YYYY-MM-DD

Date/time Date and time in the format of YYYY-MM-DD HH:MM:SS
Decimal

A number including decimal points.

Integer

A number that does not include decimal points.

Reference Reference to a field from another table. When this answer type is selected, the
following fields appear:
• Reference table: Table for selecting a field from.
• Apply a filter: Condition to filter the search results.
For example, the Caller field on the Incident table is a reference to the User
[sys_user] table.
String

A line of text. When this answer type is selected, the following field appears:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
Type of answer (continued)
Choice

Description

Maximum number of characters: Length limit of the text string.
True/
False

Check box that enables the user to indicate whether the condition is true or false. If
selected, it returns a value of true.

Determine the next node displayed in a decision tree
Configure a path in Decision Tree Builder to set the conditions for when the next question or a
guidance is displayed in a decision tree.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

You can create two or more paths from any question node.
Because you can add a question node only after a guidance node, the path configuration isn’t
required.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, select the Add path icon ( ) on a node.
A new path and a new node are added to the canvas.
5. Select the new path.
6. Enter a name for the path.
7. In the Path priority field, enter a priority order for this path.
The path with the lowest priority order is executed first.
8. Configure one or more conditions by selecting a question from the previous node, an operator,
and an input's value.
For example, if the answer type is an integer, you can set a condition that when a value that a
customer provides is more than the value you specify in the condition, this path must be taken.
You can access the direct parent node’s inputs only while configuring a condition for the path.
9. Optional: If there are multiple questions in a question node, select New condition set to
define a complex condition for a combination of answers.
10. Select Save and close.

What to do next

Continue building your decision tree.
• Add a next set of questions. For more information, see Add a follow-up set of questions or
instructions in a decision tree.
• Provide guidance to agents. For more information, see Provide actions to agents in a decision
tree

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


<!-- page 748 -->
Add a follow-up set of questions or instructions in a decision tree
Configure a question node in Decision Tree Builder to add follow-up questions or instructions.
Answer to these questions either lead to a guidance or a further set of questions.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, add a new node by selecting the Add path icon (

) on a node.

5. Select Add node.
6. In the pop-up window, select Ask users at least one question to configure a question node.
7. Enter a name for the node.
8. In the Question 1 section, enter a question or instruction for customers.
9. Optional: Make this question a required question by enabling the Required question field.
10. Optional: Enter more details related to your question or instruction in the Additional details
field.
11. Select the type of answer.
For a description of the answer types, see Answer types for questions.
The answer the customer provides is passed to other nodes and paths via input mapping.
12. Optional: Link inputs to reuse answers from prior nodes.
For more information, see Reuse answers at decision points.
13. Optional: Add more questions or instructions.
14. Select Save and close.

What to do next

Continue building your decision tree.
• Add a next set of questions. For more information, see Add a follow-up set of questions or
instructions in a decision tree
• Provide guidance to agents. For more information, see Provide actions to agents in a decision
tree
Provide actions to agents in a decision tree
Configure a guidance node in Decision Tree Builder so agents can view a recommendation on
what to do next.

Before you begin

Verify that the guidances you want to use exist or create them. For more information, see Create
a guidance in the Core UI.
Role required: admin, sn_gd_core.decision_tree_author

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


