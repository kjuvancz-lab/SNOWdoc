# Zurich IT Asset Management — SaaS License Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 830–888 of 2359 | Part 3 of 3

Sections: SaaS License Management (p530)

---

<!-- page 830 -->
Action Output
Label

Name

Type

Required

targetObject

targetObject

Object

No

19. Add child items for targetObject based on the user child elements returned in the
response message.
For example, an XML response might look like this.
<message>
<body>
<user>
<userID>12345</userID>
<email>email@email.com</email>
<firstName>Jane</firstName>
<lastName>Doe</lastName>
<lastLoginTime>08/13/2019 20:08:16</lastLoginTime>
<active>TRUE</active>
</user>
<user>
...
</user>
</body>
</message>
For this response, add the child items as shown.
Child items for targetObject
Label

Name

Type

Required

userID

userID

String

No

email

email

String

No

firstName

firstName

String

No

lastName

lastName

String

No

lastLoginTime

lastLoginTime

String

No

active

active

True/False

No

20. Select Script Parser step in the Action Outline.
21. Create a targetObject output object for each user element in the response and then map
each user child element to a targetObject child item.
The parser script is executed for each user element.

Note: These examples show the types of elements that are generally contained in a
response to a get users request. Don’t directly copy these scripts. Use element names
from the documentation for the API that you're working with.
Example script that parses an XML response.
(function parse(inputs, outputs) {
var xmlDoc = new XMLDocument(inputs.sourceItem, false);

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
outputs.targetObject.userID =
xmlDoc.getNodeText('/user/userID');
outputs.targetObject.email =
xmlDoc.getNodeText('/user/email');
outputs.targetObject.firstName =
xmlDoc.getNodeText('/user/firstName');
outputs.targetObject.lastName =
xmlDoc.getNodeText('/user/lastName');
outputs.targetObject.lastLoginTime =
xmlDoc.getNodeText('/user/lastLoginTime');
outputs.targetObject.active =
xmlDoc.getNodeText('/user/active');
})(inputs, outputs)
Example script that parses a JSON response.
(function parse(inputs, outputs) {
var record = JSON.parse(inputs.sourceItem);
outputs.targetObject.userID = record.userID;
outputs.targetObject.email = record.email;
outputs.targetObject.firstName = record.firstName;
outputs.targetObject.lastName = record.lastName;
outputs.targetObject.lastLoginTime = record.lastLoginTime;
outputs.targetObject.active = record.active;
})(inputs, outputs)
22. To test your data stream action, select Test.
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.
b. If your data stream action has errors, make sure that you're using the correct endpoints and
that the API requests and responses are structured as expected.
23. After verifying that the data stream action is working as expected, select Publish.

What to do next

Create a subflow to get users.
Create a subflow to get users
Create a subflow to add a list of users to the Software Subscription table.

Before you begin

This subflow requires a data stream action to get users. For more information, see Create a data
stream action to get users.
Role required: flow_designer or admin

About this task

Note: For examples of subflows to get users, see the Jira Download Subscriptions and
Webex Download Subscriptions subflows.

Procedure
1. Navigate to All > Flow Designer > Designer.
2. Select New and then select Subflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
3. On the form, fill in the fields.
Subflow Properties form
Field

Value

Name

Name of your choice.
For example, Application Download Subscriptions, where Application
is the name of the SaaS application that you're integrating with.

Application Software Asset Management - SaaS License Management
Accessible Select All application scopes.
From
Category

Leave this field empty.

Protection

Select None.

In-Flow
Leave this field empty.
Annotation
Description Description of your choice.
Run As

User who initiates session.

4. Select Submit.
5. Add an integration profile input.
Inputs
Label

Name

Type

Required

Integration profile

integration_profile

Reference.Integration Profile

Yes

6. In the Actions section, select the plus icon and then select Action to add a new action.
7. Select the spoke for the SaaS application that you want to integrate with from the list of
installed spokes.

Note: To add additional spokes to your list of installed spokes, request them on the
ServiceNow Store . For a complete list of available spokes, see IntegrationHub available
spokes . If there’s no existing spoke for the SaaS application that you want to integrate
with, you can create a new spoke.
8. Select a data stream action to get users.
9. Define the values to pass for any user authentication inputs for the data stream action.
The data stream action might return users that you don't want to include in your list of user
subscriptions. If you perform filtering to exclude some users, add an If flow logic as a child of
the get users data stream action.
The amount of filtering required, if any, depends on the application you're integrating with.
For example, if the user targetObject has an active property, you could add a condition to
check that the value is true to confirm that the subflow doesn't download deactivated users.
An example of filtering used by the Jira Download Subscriptions subflow is that the account
type can’t be app to help prevent the subflow from returning accounts that aren’t actual users.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Add conditions to the If flow logic for any required filtering.
◦ If you're using an If flow logic to filter users, add the Upsert user subscription
using subscription identifier action from the Software Asset Management
spoke as a child of the flow logic.
◦ If you're not filtering users, add the Upsert user subscription using
subscription identifier action as a child of the get users data stream action.
This action adds the SaaS application user subscription to the Software Subscription table
[samp_sw_subscription]. If the subscription is already in the table, the action updates the
subscription record.
10. Fill in the inputs that are applicable to your integration.
Use values from the data panel to fill in the action inputs. Your ask to the SaaS API might not
return data for all the inputs.
Upsert User Subscription action
Field

Value

External
user id

User id or account id from the user targetObject.

User
principal
name

Email address from the user targetObject.

This is generally a numeric, non human-readable value. This value must be
unique.

If an email address isn’t available, use another value such as user name plus
user id. This value should be human readable.

Integration Integration profile input that you created for the subflow.
profile
Last
Activity

Date of most recent activity from the user targetObject. For example, the last
login time.

External
created

Account creation date from the user targetObject.
This value helps create better reclamation candidates. A new user might not
have any activity yet. If the record shows that the user account was created, a
reclamation candidate isn't created for that user because it's a new account
rather than an unused account.

Identifier

A unique identifier to identify the integration.
Software models are automatically created for subscription with an
identifier that matches an identifier in the Subscription Product Definitions
[samp_sw_subscription_product_definition] table.
If an identifier doesn't exist, configure an identifier. For more information, see
Configure an identifier.

Additional This is used to update any other field on the Software Subscriptions
attributes [samp_sw_subscription] table that’s not mentioned earlier.
11. To test your subflow, select Test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.

Note: The data stream action to get users should retrieve multiple pages of users
successfully. Don't write to the Software Subscriptions [samp_sw_subscription] table until
you verify that the data stream action retrieves all users. To verify, you can make a subflow
that consumes the data stream and log the results.
12. After verifying that the subflow is working as expected, select Publish.

Tip: You can still edit the subflow after it's published.
Configure an identifier
Configure an identifier if it doesn't exist to identify an integration.

Before you begin

Role required: sam_admin

Procedure
1. Create a custom product when your product doesn't exist in the Software Product
[samp_sw_product] table.
a. Select New.
b. On the form, fill in the fields.

Field

Description

Publisher

Publisher of the custom product.

Product

Name of the custom product.

Product type

Product type of the custom software
product.

Product classification

Official UNSPSC classification.

Subscription software

Option indicating that your product is a
subscription-based product.

Ignore installs

Option indicating that the product type is
licensable.
This check box is displayed only if you
select Product type as Licensable and
Subscription software is set to true.

Exclude from content service

Option that indicates that the product will be
excluded from the content service.
You must not select this check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
Field

Description

Active

Option indicating that this product is used or
not.

c. Select Submit.
2. Create a custom discovery map by creating a custom entitlement definition from the Discovery
maps [samp_custom_sw_entitlement_definition] table.
a. Select New.
b. On the form, fill in the fields.

Field

Description

Product

Current software product name. Custom
product that you created in step 1.

Version condition

Condition qualifier for the Version field:
▪ starts with
▪ is
▪ is anything
Default is is anything.

Version

Version of the software product.
Required if version condition value is starts
with or is.

Edition condition

Condition qualifier for the Edition field:
▪ starts with
▪ is
▪ is anything
Default is is anything.

Edition

Platform of the software product to use
when searching for the normalized
discovery model.

Platform

Platform of the software product to use
when searching for the normalized
discovery model.

Language

Language of the software product to
use when searching for the normalized
discovery model, which is populated once it
has been normalized or added manually.

c. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
3. Create a custom subscription product definition by creating a custom
entitlement definition from the Custom Subscription Product Definitions
[samp_sw_custom_subscription_product_definition] table.
a. Select New.
b. On the form, fill in the fields.

Field

Description

Identifier

Subscription identifier that is related with
the custom product.

Subscription integration

List of SaaS and SSO providers that
is mapped to subscription products
in the Subscription Product Definition
[samp_sw_subscription_product_definition]
table.
For this scenario, select Custom
Integration.

Entitlement definition

Custom discovery map that you created in
step 2.

Active

Check box indicating the identifier is used or
not.

c. Select Submit.
Create a data stream action to get user activity
Create a data stream action to get user activity from a SaaS application.

Before you begin

®

If you're using an existing ServiceNow Integration Hub spoke, find out if it has a data stream
action to get user activity that you can use instead of creating one.
For more information about data stream actions, see Data Stream actions

.

Role required: flow_designer or admin

About this task

Monitor user activity to find software subscriptions that your company is paying for but are not
being used. You can reclaim these unused subscriptions to reduce your company's software
expenses.
Before creating the data stream action, decide how you want to define meaningful user activity.
Meaningful activity can be a combination of user actions. Create a separate data stream action
for each user activity metric. For example, the base system Webex Meetings integration defines
meaningful activity as hosting a meeting. It uses one data stream action to get the dates of the
most recently hosted meetings for all users. If you also wanted the Webex Meetings integration
to include logging in as meaningful activity, you would create a second data stream action to get
the most recent login times for all users.
Your data stream action to get users may return a user activity metric such as last login time.
In this case, you don't need to create a data stream action to get user activity or a subflow to
get user activity unless you want to define additional user activity metrics. Make sure that your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


<!-- page 837 -->
subflow to get users sets this user activity metric as the Last activity input in the Upsert User
Subscription action.

Procedure
1. Navigate to All > Flow Designer > Designer.
2. Click New and then select Data Stream.
3. On the form, fill in the fields.
Action Properties form
Field

Value

Name

Name of your choice. For example, Get User Activity.

Accessible Select All application scopes.
From
Category

Leave this field empty.

Protection

Select None.

Application Spoke app to integrate with the SaaS application. This spoke app can be an
existing Integration Hub spoke or a new spoke that you created.
In-Flow
Leave this field empty.
Annotation
Description Description of your choice.
4. Click Submit.
5. In the Inputs section of the Action Outline, click Create Input.
6. Add a look back time input.
Inputs
Label

Name

Type

Mandatory

Look back time

look_back_time

Date/Time

Yes

7. If the API that you're working with requires user authentication for requests, add inputs for
authentication.
Examples of common user authentication inputs are admin user id and site name. See the
documentation for your chosen API to learn about the requirements for user authentication in
your specific case. If the API requires an access token, a Credential Value variable is
automatically created later. You don't need to add an access token as an input.
When you use your completed data stream action in a subflow, you define what values to pass
as these inputs.
8. Click Request in the Action Outline.
9. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


<!-- page 838 -->
Request form
Field

Value

How will you get
data

Choose either REST Step or SOAP step. Your choice depends on the
API for the SaaS application that you're integrating with.

Enable pagination Selected.
Run a script
before each
request

Not selected.

10. Click Pagination Setup step in the Action Outline.
11. Define pagination variables based on the query parameters used by the SaaS API.
If you're using offset-based pagination, use the Limit/Offset pagination template to preload the
pagination configuration.

Note: The value of the reserved getNextPage variable determines whether to

request another page of results. As long as the getNextPage variable is true, the
action continues to send requests for the next page.
12. Write a Pagination Variables script to update the pagination variables.
The script runs on each request. If you're using a pagination template, adjust the preloaded
script as needed.
The following image shows a completed example of the pagination setup step. This example is
from the Get Users data stream action used in the Webex Download Subscriptions subflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
Note: Pagination variables only support the string data type. To perform math
operations, convert the value to an integer, perform any required operations, then convert
it back to a string.
13. Click SOAP step or REST step in the Action Outline depending on the option that you selected
for how you will get data.
14. If you selected SOAP, fill in the details.
SOAP step form
Field

Value

Connection Details
Connection Use Connection Alias.
Connection Connection alias that you created when you created the integration profile.
Alias
If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Endpoint

This value is automatically populated when you select the connection alias. It's
set to the Connection URL from the HTTP(s) Connection record linked to the
alias.

Request Details
Build
Envelope

Manually.

SOAP
Action

API request to get a list of meaningful user activity. For example, the base
system Webex Meetings integration defines meaningful user activity as hosting
a meeting so that it uses the LstsummaryMeeting request to get a list of all
meetings. See the documentation for your chosen API to select the appropriate
request.

SOAP
Envelope

XML request message to get a list of all users. See the documentation for your
chosen API to learn how to write an XML request message. In general, the
header should have your input variables for user authentication as well as the
Credential Value variable as the access token. The body should include
the request to get a list of meaningful user activities, a start date set as the Look
back time input, and your variables from the pagination setup step.

Note: For an example of a SOAP envelope, see the Get User Activity
data stream action used in the Webex Update User Activity subflow.

15. If you selected REST, fill in the details.
REST step form
Field

Value

Connection Details
Connection Use Connection Alias.
Connection Connection alias that you created when you created the integration profile.
Alias

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
Field

Value

If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Base URL

This value is automatically populated when you select the connection alias. It's
set to the Connection URL from the HTTP(s) Connection record linked to the
alias.

Request Details
Build
Request

Manually.

Resource
Path

Path to the resource. This value gets appended to the Base URL. See the
documentation for the API that you're working with to learn how to construct the
resource path.

HTTP
Method

GET.

Query
Add parameters for pagination. Set the values as the variables that you created
Parameters in the Pagination Setup step.
Add another parameter for the start date so that the request returns results from
the start date to the current date. Set the value as the Look back time input.

Note: Make sure the Look back time input date/time variable is correctly
formatted for the API that you're working with. If you need to reformat or
convert to another data type such as a string, you can do this in the action
preprocessing script step.
The following image shows a completed example of the REST step. This example is from the
Get Audit Log data stream action used in the Jira Update User Activity subflow.

16. Click Parsing in the Action Outline.
17. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
Parsing form
Field

Value

How will you identify each record

JSON/XML Splitter

How will you parse each item into an object

Script Parser

18. Click Splitter step in the Action Outline.
19. On the form, fill in the fields.
Splitter step form
Field

Value

Source Select XML or JSON depending on the format returned by the API response.
Format
Item
Path

Absolute path to a meaningful activity element in the response message. See the
documentation for the API that you're working with for information about the format
of the response message.
◦ Example XML item path: /message/body/meeting
◦ Example JSON item path: $.data.meeting

20. Click Outputs in the Action Outline.
21. Click Create Output and edit the variable as shown.
Action Output
Label

Name

Type

Mandatory

targetObject

targetObject

Object

No

22. Add child items for targetObject to store the user email and the date of meaningful
activity.
For example, an XML response might look like this.
<message>
<body>
<meeting>
<meetingID>12345</meetingID>
<startDate>08/13/2019 20:08:16</startDate>
<hostEmail>email@email.com</hostEmail>
</meeting>
<meeting>
...
</meeting>
</body>
</message>
For this response, add the child items as shown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
Child items for targetObject
Label

Name

Type

Mandatory

email

email

String

No

last_activity

last_activity

String

No

23. In the Action Outline, click Script Parser step.
24. Create a targetObject output object for each meaningful activity element in the response
and then map each the activity date and user email to the targetObject child items.
The parser script is executed for each user element.

Note: These examples show the types of elements that could be contained in a
response. Don't directly copy these scripts. Use element names from the documentation
for the API that you're working with.
Example script that parses an XML response.
(function parse(inputs, outputs) {
var xmlDoc = new XMLDocument(inputs.sourceItem, false);
outputs.targetObject.email =
xmlDoc.getNodeText('/meeting/hostEmail');
outputs.targetObject.last_activity =
xmlDoc.getNodeText('/meeting/startDate');
})(inputs, outputs)
Example script that parses a JSON response.
(function parse(inputs, outputs) {
var record = JSON.parse(inputs.sourceItem);
outputs.targetObject.email = record.hostEmail;
outputs.targetObject.last_activity = record.startDate;
})(inputs, outputs)
25. To test your data stream action, click Test.
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.
b. If your data stream action has errors, make sure that you're using the correct endpoints and
that the API requests and responses are structured as expected.
26. After verifying that the data stream action is working as expected, click Publish.
Create a subflow to get user activity
Create a subflow to update the Software Subscription table with each user's most recent activity
in the SaaS application.

Before you begin

This subflow requires a data stream action to get user activity. For more information, see Create a
data stream action to get user activity.
Role required: flow_designer or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
About this task

Note: For examples of subflows to get user activity, see the Jira Update User Activity and
Webex Update User Activity subflows.

Procedure
1. Navigate to All > Flow Designer > Designer.
2. Click New and then select Subflow.
3. On the form, fill in the fields.
Subflow Properties form
Field

Value

Name

Name of your choice. For example, Application Update User Activity, where
Application is the name of the SaaS application you’re integrating with.

Application Software Asset Management - SaaS License Management

Note: If you save the subflow in the Software Asset Management SaaS License Management application, it’s included with your Software
Asset Management subscription. If you save the subflow in any other
®
application, you may be charged for ServiceNow Integration Hub
transactions. If you’re publishing your custom spoke application on the
ServiceNow Store, select your custom app instead.
Accessible All application scopes.
From
Category

Leave this field empty.

Protection

None.

In-Flow
Leave this field empty.
Annotation
Description Description of your choice.
Run As

User who initiates session.

4. Click Submit.
5. Add an integration profile input and a look back time input.
Inputs
Label

Name

Type

Mandatory

Integration profile

integration_profile

Reference.Integration Profile

Yes

Look back time

look_back_time

Date/Time

Yes

6. In the Actions section, click the plus icon and then click Action to add a new action.
7. Select the spoke for the SaaS application that you want to integrate with from the list of
installed spokes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
Note: To add additional spokes to your list of installed spokes, request them on the
ServiceNow Store . For a complete list of available spokes, see IntegrationHub available
spokes . If there’s no existing spoke for the SaaS application that you want to integrate
with, you can create a new spoke.
8. Select a data stream action to get user activity.
9. Add the Look back time subflow input as the value to pass to the Look back time input for the
data stream action.
10. Define the values to pass for any user authentication inputs for the data stream action.
11. Add the Update User Activity If Later Using User action from the Software
Asset Management spoke as a child of the get user activity data stream action.
12. Use values from the Data panel to complete the action.
Update User Activity If Later action
Field

Value

Last
activity

Date of most recent activity from the targetObject.

Integration Integration profile input that you created for the subflow.
profile
External
user id

User id or account id from the user targetObject. This id is generally a numeric
and non human-readable value. This value must be unique.

User
principal
name

Email address from the user targetObject. If an email address isn’t available,
use another value such as user name plus user id. This value should be human
readable.

13. If you want to use more than one data stream action to get multiple types of user activity,
repeat steps 6 through 12 to add each data stream action to the subflow.
14. Click Test to test your subflow.
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.
15. After verifying that the subflow is working as expected, click Publish.

Tip: You can still edit the subflow after it's published.
Create an action to remove a user
Create an action to deactivate or delete a user account in the SaaS application.

Before you begin

®

If you're using an existing ServiceNow Integration Hub spoke, find out if it has an action to
remove a user that you can use instead of creating one.
Role required: flow_designer or admin

About this task

This action is used to reclaim unused subscriptions to reduce your company's software
expenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
Procedure
1. Navigate to All > Flow Designer > Designer.
2. Click New and then select Action.
3. On the form, fill in the fields.
Action Properties form
Field

Value

Name

Name of your choice. For example, Remove User.

Accessible All application scopes.
From
Category

Leave this field empty.

Protection

None.

Application Spoke app to integrate with the SaaS application. This can be an existing
Integration Hub spoke or a new spoke that you created.
In-Flow
Leave this field empty.
Annotation
Description Description of your choice.
4. Click Submit.
5. In the Inputs section of the Action Outline, click Create Input.
6. Add a user ID input.
This is how the action gets the user ID of the user to delete.
Inputs
Label

Name

Type

Mandatory

User ID

userID

String

Yes

7. If the API that you're working with requires user authentication for requests, add inputs for
authentication.
Examples of common user authentication inputs are admin user id and site name. See the
documentation for your chosen API to learn about the requirements for user authentication in
your specific case. If the API requires an access token, a Credential Value variable is
automatically created later so you don't need to add it as an input.
When you use your completed action in a subflow, you define what values to pass as these
inputs.
8. Add a SOAP step or REST step to the action outline.
Your choice will depend on the API for the SaaS application that you're integrating with.
9. If you selected SOAP, fill in the form as shown.
SOAP step form
Field

Value

Connection Details
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Field

Value

Connection Use Connection Alias.
Connection Connection alias that you created when you created the integration profile.
Alias
If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Endpoint

This value is automatically populated when you select the connection alias. It's
set to the Connection URL from the HTTP(s) Connection record linked to the
alias.

Request Details
Build
Envelope

Manually.

SOAP
Action

API request to delete or deactivate a user. See the documentation for your
chosen API to select the appropriate request.

SOAP
Envelope

XML request message to delete a user. See the documentation for your
chosen API to learn how to write an XML request message. In general, the
header should have your input variables for user authentication as well as the
Credential Value variable as the access token. The body should include
the request to delete a user and the user ID input.

Note: For an example of a SOAP envelope, see the Remove User action
used in the Webex Reclaim Subscription subflow.

10. If you selected REST, fill in the form as shown.
REST step form
Field

Value

Connection Details
Connection Use Connection Alias.
Connection Connection alias that you created when you created the integration profile.
Alias
If you have not yet created an integration profile, follow the steps to create a
custom integration profile with a connection alias.
Base URL

This value is automatically populated when you select the connection alias. It's
set to the Connection URL from the HTTP(s) Connection record linked to the
alias.

Request Details
Build
Request

Manually.

Resource
Path

Path to the resource. This value gets appended to the Base URL. See the
documentation for the API that you're working with to learn how to construct the
resource path.

HTTP
Method

DELETE.

Query
Add a parameter for user ID. Set the value as the user ID input.
Parameters
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
11. Add a Script step to the Action Outline for error handling.
a. For Required Runtime, select Instance.
b. Create input variables.
Input Variables
Name

Value

response

Response Body output from the SOAP or REST step

status_code

Status Code output from the SOAP or REST step

c. Create output variables.
Output Variables
Label

Name

Type

Mandatory

status

status

Choice

Yes

error_message

error_message

String

Yes

d. In the Script field, write a script to assign values to the status and error message outputs.
▪ Use the status_code input to check if there is an error. Set the status output equal to Error
if there is an error and Success if there is no error.
▪ In cases where there is an error, use the response input to get information about the
kind of error. Set the error message output to a description of the error so that a user can
understand what went wrong.
12. In the Action Outline, click Outputs.
13. Create output variables.
Output Variables
Label

Name

Type

Mandatory

Status

status

Choice

No

Error message

error_message

String

No

14. Assign values to the output variables.
Output Variables
Label

Value

Status

status output variable from the script step

Error message

error_message output variable from the script step

15. To test your action, click Test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.
b. If your action has errors, make sure that you're using the correct endpoints and that the API
request is structured as expected.

Note: When testing, remember that this action deactivates a user. Test this action in
a sub-production environment. If only a production environment is available, you can
create fake users for testing.
16. After verifying that the action is working as expected, click Publish.
Create a subflow to reclaim a user
Create a subflow to reclaim a user subscription.

Before you begin

This subflow requires an action to remove a user. For more information, see Create an action to
remove a user.
Role required: flow_designer or admin

About this task

Note: For examples of subflows to reclaim a user, see the Jira Reclaim Subscription and
Webex Reclaim Subscription subflows.

Procedure
1. Navigate to All > Flow Designer > Designer.
2. Click New and then select Subflow.
3. On the form, fill in the fields.
Subflow Properties form
Field

Value

Name

Name of your choice. For example, Application Reclaim Subscription,
where Application is the name of the SaaS application you are integrating
with.

Application Software Asset Management - SaaS License Management Integrations.

Note: If you save the subflow in the Software Asset Management - SaaS
License Management Integrations application, it's included with your
Software Asset Management subscription. If you save the subflow in any
®
other application, you may be charged for ServiceNow Integration Hub
transactions. If you're publishing your custom spoke application on the
ServiceNow Store, select your custom app instead.
Accessible All application scopes.
From
Category

Leave this field empty.

Protection

None.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
Field

Value

In-Flow
Leave this field empty.
Annotation
Description Description of your choice.
Run As

User who initiates session.

4. Add an integration profile input and a user subscription input.
Inputs
Label

Name

Type

Mandatory

Integration profile

integration_profile

Reference.Integration Profile

Yes

User subscription

user_subscription

Reference.Software Subscription

Yes

5. Add an error message output and a status output.
Outputs
Label

Name

Type

Error message

error_message

String

Status

status

String

6. In the Actions section, click the plus icon and then click Action to add a new action.
7. In the list of installed spokes, select the spoke for the SaaS application that you're integrating
with.

Note: To add additional spokes to your list of installed spokes, request them on the
ServiceNow Store . For a complete list of available spokes, see IntegrationHub available
spokes . If there's no existing spoke for the SaaS application that you want to integrate
with, you can create a new spoke.
8. To remove a user, select an action.
a. Define the value to pass as the User ID input.
The value that you use depends on the API that you're working with, but it will generally be
the External user ID or User principal name field from the User subscription input for this
subflow.
b. Define the values to pass for any user authentication inputs for the action.
9. To check if the Remove User action returns an error, add an If flow logic.
10. Add a child flow logic to assign subflow outputs.
Assign Subflow Outputs
Name

Data

Error message

Error message output from the Remove User action

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
Name

Data

Status

failure

11. Add an Else flow logic at the same level as the If logic for cases when the Remove User action
doesn't return an error.
12. Add a child flow logic to assign subflow outputs.
Assign Subflow Outputs
Name

Data

Status

success

The following image shows a completed example of a subflow to reclaim a user subscription.
The example shown is the Webex Reclaim Subscription subflow.

13. To test your subflow, click Test.
a. View the test results and system logs for details about any errors.
To view system logs, navigate to System Logs > System Log > All.

Note: When testing, remember that this subflow deactivates a user. Test this subflow
in a sub-production environment. If only a production environment is available, you can
create fake users for testing.
14. After verifying that the subflow is working as expected, click Publish.

Tip: You can still edit the subflow after it's published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
Create a subflow to get license consumption
Create a subflow to add license consumption data to the Subscription Consumption Summaries
[sam_saas_consumption_summary] table.

Before you begin

This subflow is applicable to any integration that uses the SaaS license connection framework,
including custom integrations.
Role required: flow_designer or admin

Procedure
1. Navigate to All > Process Automation > Flow Designer.
The Flow Designer launches in a new tab.
2. On the Flow Designer home page, click New and then select Subflow.
The Subflow Properties dialog box opens.
3. On the dialog box, fill in the following fields.
Subflow Properties dialog box
Field

Value

Subflow
Name

Name of the subflow. For example, Download License Consumption.

Description Description of the subflow.
Application Application scope to which you want the subflow to apply. Set this field to
Software Asset Management - SaaS License Management Integrations.

Note: If you save the subflow in the Software Asset Management - SaaS
License Management Integrations application scope, it's included with
your Software Asset Management subscription. If you save the subflow
®
in any other application scope, you may be charged for ServiceNow
Integration Hub transactions. If you're publishing your custom spoke
application on the ServiceNow Store, select your custom application
scope instead.
Accessible Application scope from which the subflow is accessible. Set this field to All
From
application scopes.
Category

Subflow category. Leave this field empty.

Protection

Read-only protections for your subflow. Set this field to None.

Sublow
Message that appears under the subflow title in the subflow picker. Leave this
Annotation field empty.
Run As

Option to specify whether the flow runs as a system user or user who initiates
the session. Set this field to User who initiates session.

Run with
role(s)

Roles with which this subflow runs.

4. Click Submit.
The Flow Designer creates the draft subflow and then redirects you to the subflow
configuration page.
5. From the subflow configuration page, add an integration profile input.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
a. Under INPUTS & OUTPUTS, click the plus icon (+) to add an input for your subflow.
b. In the Inputs section, click the plus icon (+).
c. When prompted, enter the following information for your integration profile input.
Inputs
Label

Name

Type

Mandatory

Integration profile

integration_profile

Reference.Integration Profile

Yes

d. Click Done.
6. Add a data stream action for getting license consumption data.
a. Under ACTIONS, click the plus icon (+) and then select Action to add a new action.
b. When prompted, select the Global spoke from the list of INSTALLED SPOKES.
c. From the list of Default actions, select Get <saas-application> Consumption.
d. Click Done.
7. Add an Upsert Consumption action as a child of the Get <saas-application> Consumption
action.
The Upsert Consumption action uploads license consumption data to the Consumption
Summary table on your ServiceNow instance.
a. Under the Get <saas-application> Consumption action, click the plus icon (+) and then
select Action.
b. When prompted, select Software Asset Management from the list of INSTALLED SPOKES.
c. From the list of Default actions, select Upsert Consumption.
The Upsert Consumption action inputs appear.
d. From the Product [Software Product] list, search for and select the software product that you
are connecting to with your integration.
This value must be a reference to the Software Product (samp_sw_product) table. If the
product does not exist in the table, add a custom software product.
e. Use values from the Data panel to fill in the remaining action inputs.
Your request to the SaaS API may not return data for all inputs. Fill in the inputs that are
applicable to your integration.
Upsert Consumption action inputs
Field

Value

Version

Version of the SaaS application.

Edition

Edition of the SaaS application, such as Standard or Enterprise.

Unit of
Unit of measure for the software units that can be consumed.
consumption

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
Field

Value

Total units

Total number of software units that you have purchased across all active
entitlements for the software product.

Units
consumed

Total number of software units that your users have consumed.

Contract
start

Start date of your contract.

Contract end End date of your contract.
f. Click Done.
8. Verify that your subflow is working properly by clicking Test.
View the test results and system logs for details about any errors in your subflow. You can view
system logs by navigating to System Logs > System Log > All in your ServiceNow instance.
9. After verifying that the subflow is working as expected, click Publish.

Tip: You can still edit the subflow after it's published.
What to do next

View analytics such as subscription usage, cost, and compliance of your SaaS applications on
SaaS overview dashboard in workspace.
Publish a custom integration profile
Publish a custom integration profile to complete the custom integration.

Before you begin

®

Make sure that all actions and subflows are published in ServiceNow Workflow Studio before
adding them to the integration profile.
Role required: sam_integrator or admin

Procedure
1. Navigate to All > SaaS License > Administration > All Integration Profiles and select the
custom integration profile that you created.
2. In the Download Subscription Subflow form section, select the Download Subscriptions
subflow for the SaaS application.
3. Click Publish.
A software model is automatically created for the SaaS application. A scheduled job is created
to immediately run the Download Subscription Subflow, which adds user subscriptions for the
SaaS application to the Software Subscription table [samp_sw_subscription].
4. In the Calculate Activity Subflow form section, select the Update User Activity subflow for the
SaaS application.

Note: The scheduled job to get user subscriptions must finish before you can add the
Update User Activity subflow.
5. Choose a value for the Analyze user activity from field.
You can choose to start analyzing data from the current date or from up to 60 days in the past.
Choosing a date in the past enables you to detect stale subscriptions without waiting in real
time because you can see subscriptions that haven't been used recently. Because choosing
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
a date in the past increases the amount of data that is analyzed, it could take several hours for
you to be able to view the results.
This value is passed as the Look back time input for the subflow to get user activity.
6. In the Reclaim Subscription Subflow form section, select the Reclaim Subscription subflow for
the SaaS application.
7. Click Save.

What to do next

Reclamation rules and stale user reclamation candidates are created automatically after the
integration is connected. User subscriptions and reclamation candidates are refreshed daily.
It's important that you review all automatically generated reclamation rules to ensure that they
meet your specifications for reclaiming user subscriptions. For more information, see Review a
software reclamation rule.
Create software entitlements for the automatically generated software models to track software
used against software owned. For more information, see Create entitlements in Software Asset
Management classic.
Create a store app for a custom integration
Publish your custom integration application on the ServiceNow Store to make it available for
others to use.

Before you begin

Role required: admin

About this task

You must complete these steps so that your custom integration works correctly when other users
download it from the ServiceNow Store.

Procedure
1. Create a fix script in your custom integration application.
When a new integration profile is created using your application, the subflows and connection
alias you created are automatically linked to the profile through this fix script.
a. Navigate to System Applications > Studio.
b. Select your custom integration application.
c. On the Welcome to Studio page, click + Create New.
The Create Application File dialog box opens.
d. On the dialog box, search for and select Fix Script.
e. Click Create.
f. On the Fix Script form, fill in the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
Fix Script form
Field

Value

Name

Name of the fix script. For example, Custom Integration Fix
Script.

Unloadable Option to create Customer Update [sys_update_xml] records when the fix
script runs. Do not select this option.
Application Your custom integration application. This field is populated automatically.
Before

Option that enables you to run the fix script before installing or upgrading the
application. Do not select this option.

Description Description of the fix script.
g. Enter the following script in the Script field.
For the subflows and connection alias, replace the example ids with the real ids. You can find
the id in the URL for each item.
new
global.CustomIntegrationProfileUtils().createCustomIntegrati
on({
name: 'Name', // choose a name for the integration
downloadSubscriptionSubflow:
'3a23e189a1400010fa9bed1383c83d38', //replace example id
updateActivitySubflow:
'77a66d23e5500010fa9bc9581d0c0f47', //replace example id
reclamationSubflow:
'e62b672e39400010fa9b4845e477fe02', //replace example id
connectionAlias:
'629ad2bfdb1893005963ff041d961971' //replace example id
});

Note: The update activity and reclamation subflows are not required. If you do not
include a subflow to update activity, the integration does not get user activity unless
your download subscription subflow includes user activity. If you do not include a
reclamation subflow, the integration cannot deactivate SaaS user subscriptions.
h. Click Submit.
2. Create a cross scope privilege record.
This record allows the fix script you created to access the CustomIntegrationProfileUtils() script
include.
a. Navigate to System Applications > Application Cross-Scope Access.
b. Click New.
c. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
Cross scope privilege
Field

Value

Source
Scope

Your custom integration application. This field is populated automatically.
To select a different application, click the Settings ( ) icon on the banner
frame of your ServiceNow instance. On the System Settings dialog box, select
the Developer tab and then choose an application from the Application dropdown list.

Target
Scope

Application from which resources are being requested. Click the search ( )
icon to locate and select the Global application.

Target
Name

Name of the script include. Set this field to
CustomIntegrationProfileUtils.

Target
Type

Type of request. Select Script Include.

Application Your custom integration application. This field is populated automatically.
Operation

Operation that the script performs on the target scope. Select Execute API.

Status

Authorization for this cross scope privilege record. Select Allowed.

d. Click Submit.

What to do next

Before you publish your custom integration application on the ServiceNow Store, make sure that
your actions and subflows are active, published, and saved in your application.

Viewing your SaaS and SSO subscriptions
View a list of all subscriptions for your SaaS and Single Sign-On (SSO) applications.

Important: You can view your SaaS and SSO subscriptions in both the Software Asset
Management Core UI and the Software Asset Workspace. This topic provides details on
viewing your subscriptions in the Software Asset Management Core UI application. For
more information on viewing your subscriptions in the Software Asset Workspace, see SaaS
overview dashboard in workspace.
To view subscriptions for all SaaS and SSO applications, navigate to All > SaaS License > All
User Subscriptions.
Software Subscriptions list
Column

Description

Display name

The software publisher and product for the
subscription.

User principle name

The user's email address for the subscription.

Software Model

The software model for the subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Software Subscriptions list (continued)
Column

Description

Subscription profile

The direct integration profile for the
subscription. This field is empty if the
subscription is from an SSO integration.

Subscription type

Classifies the subscription as a software
subscription or an SSO subscription.

Note: You can add the Subscription assigned column to view the date a user was given
access to an app. For SSO subscriptions, this field is empty if the user has access to the
app through a group membership.
You can also view all subscriptions for an application in the Software Subscriptions related list on
the software model.

Viewing SSO subscription information
You can view information about the Single Sign-On (SSO) applications, SSO users, and SSO
groups that are associated with your SSO integrations.

Important: You can view information about your SSO applications, users, and groups
in both the Software Asset Management Core UI and Software Asset Workspace. The
following sections provide details on viewing this information in the Software Asset
Management classic application. For details on viewing this information in the Software
Asset Workspace, see License operations view.

Viewing SSO integration information
To view the applications, users, and groups for an SSO integration, navigate to All > SaaS
License > Administration > SSO Integration Profiles and then select a profile. The related lists
provide information about the integration.
SSO Integration Profile related lists
List

Description

SSO Applications

All SSO applications.

Directory Users

All SSO users.

Directory Groups

All SSO groups.

Scheduled Jobs

SAM - SSO <sso-provider>
download applications scheduled job
that downloads all SSO apps. The job runs
when the SSO integration profile is published,
and then runs daily.
The SAM - SSO <sso-provider>

update connected applications
scheduled job downloads users, groups, and
subscriptions for SSO apps. The job runs daily
and whenever an app is connected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
SSO Integration Profile related lists (continued)
List

Description

Scheduled Job Results

Status of the scheduled jobs.

Directory Jobs

The <sso-provider> - Download
Group Membership directory job that
downloads group memberships for all users.
The job runs when the SSO integration profile
is published, and then runs daily.
The <sso-provider> - Download
Users directory job downloads all users. The
job runs when the SSO integration profile is
published, and then runs daily.
The <sso-provider> - Download
Groups directory job downloads all groups
for all users. The job runs when the SSO
integration profile is published, and then runs
daily.

Note: On upgrading to Microsoft Entra
ID spoke 4.3 version, the Microsoft

Azure AD - Download Group
Membership directory job won’t be
executed for existing Microsoft Entra
ID SSO or Directory integrations. This
directory job also won’t be created for
new Microsoft Entra ID SSO or Directory
integrations. Instead, the Microsoft

Azure AD - Download Groups
directory job downloads all groups and
group memberships configured on
Microsoft Entra ID.
Directory Job Results

Status of the directory jobs.

Viewing SSO application information
To view the users, groups, and reclamation candidates for an application, navigate to All > SaaS
License > SSO Applications and select an application. The related lists show information for the
application. For viewing the SSO application information in Software Asset Workspace, see View
SSO applications in workspace.
SSO Applications related list
List

Description

SSO Application Users

All users that have direct access to the
application, but not through membership in a
group.

SSO Application Groups

All groups that have access to the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
SSO Applications related list (continued)
List

Description

SSO Subscriptions

Total number of subscriptions for the
application. A user may have both direct
access to an app and have access through a
group. But the user's access counts as only
one subscription so as only one record in the
SSO Subscriptions list.

Note:
• Add the SSO application role column
to see how the user is granted access
to the application. If the value is a
group, then the user has access
through membership in that group.
If the value is the user's name, then
the user has direct access to the
application. User subscriptions
can't be reclaimed in Software
Asset Management if the user has
access to the application through a
group membership. To reclaim the
subscription, remove the user from
the group in the Azure AD portal and
set the reclamation candidate state to
Closed Complete.
• When SSO subscriptions are created
through SSO application groups,
the Subscription assigned value is
empty. When the subscriptions are
created through SSO Application
Users, the Subscription assigned
value shows the date of when the
subscription is assigned to the user.
After you upgrade to the Software
Asset Management - SaaS License
Management 13.1.0 version or later, the
existing Subscription assigned values
for the subscriptions that were created
through SSO application groups turns
empty.
Reclamation Candidates

Subscriptions that don't meet the usage
requirements that are defined by the
reclamation rule for the application.

SSO Group Software Model Mappings

SSO groups that are mapped to specific
software models for managing licenses at the
group level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
Data synchronization with SSO providers
If you delete a user, group, or app in the Azure AD portal or in the Okta Developer Console,
then the corresponding records in Software Asset Management are deleted when the daily
scheduled jobs run. If you revoke a user's access to an application in the Azure AD portal or in
the Okta Developer Console, either directly or indirectly by removing them from a group, then the
corresponding user subscription record is deleted when the daily scheduled jobs run.
Create an SSO group software model mapping
Create a mapping for an SSO group with a software model to manage your licenses on group
level rather than on application level.

Before you begin

Role required: sam_integrator or admin

About this task

You must map an SSO group with a specific software model before connecting the SSO
application to view all users and groups with access to the application. This mapping enables
you to manage applications that have different license models that are associated at group level.

Procedure
1. Select the SSO application for which you want to create the mapping.
2. On the Details tab, select the Enable group based software model check box.
After selecting this option, the SSO Group Software Model Mappings tab starts appearing as
a related list for the SSO application.
3. Select the SSO Group Software Model Mappings tab.
4. On the Create New SSO Group Software Model Mapping page, select the SSO application
group.
5. Select the software model with which you want to map the SSO group.
6. Select Save.
Related topics
Connect SSO apps
Viewing SSO subscription information

Review a software reclamation rule
Use reclamation rules to cancel user subscriptions that have limited to no activity.

Before you begin

Role required: sam_admin

About this task

When you create a direct integration profile or connect an SSO application, a reclamation rule
is automatically created for the software. It's important that you review the reclamation rule to
verify that it meets your specifications. For more information about the reclamation rules for each
application, see Reclamation rules and Reclamation rules for Microsoft 365 integration.
For SSO subscriptions, the reclamation rule checks for user logins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
Procedure
1. Navigate to All > Software Asset > Administration > Reclamation Rules and select the
reclamation rule that corresponds to your integration profile.
2. On the form, review the fields.
Reclamation Rules form
Field

Description

Name

Name for the reclamation rule.

Applies to

Item type that the reclamation rule applies to.

Include
usage from
additional
discovery
sources

This field appears only when you are reviewing the Microsoft 365 and Office
365 reclamation rules. For more information, see Reclamation rules for
Microsoft 365 integration.

Notify user

Option for notifying users via email that their accounts will be reclaimed
unless they respond with a request to keep the accounts. If a user wants to
keep a license, it becomes the responsibility of the manager to approve or
reject the removal of the license.

Days before
autoreclamation

If no response is received from the user within the specified number of days,
the account is reclaimed.

When selected, the usage for Microsoft Access and Publisher is considered
from additional discovery solutions such as Microsoft SCCM or ACC-V for E3
to E1 optimization.

Note: This field appears when Notify user is selected.

Subscription Usage Condition
Last activity
threshold

Time limit for no meaningful activity before a user account is added to the list
of reclamation candidates. The default value is 60 days for direct integrations
and 30 days for SSO applications.

3. Select Update.

What to do next

View the reclamation candidates that are identified by your reclamation rule and start reclaiming
user subscriptions.
Related topics
Integrate with SaaS applications
Reclamation rules
Reclamation rules for Microsoft 365 integration

Reclaiming user subscriptions
You can reclaim unused SaaS and SSO subscriptions to reduce your total software costs.
The process of reclaiming a user subscription is similar to reclaiming a software license in
®
ServiceNow Software Asset Management. You can reclaim user subscriptions in both the
Software Asset Management Core UI and the Software Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
When you’re reclaiming a user subscription, you can determine the status of the associated
removal candidate using the following removal candidate states.
Removal candidate states
State

Description

Attention Required

The removal candidate requires attention.
The state is set to Attention Required when
the User field is empty on an automatic
removal candidate that has the Notify
User option enabled. After the User field is
populated, the state automatically changes to
Ready.
The state can also be set to Attention
Required when a reclamation fails. After
you resolve the error, the state automatically
changes to Ready.

Ready

The removal candidate is ready for
reclamation. Select Reclaim to advance the
reclamation workflow.

Awaiting User

The user has been sent an email notification
to approve or deny the removal request. This
state is applicable only if the Notify User
option is enabled on the removal candidate.

Awaiting Approval

The user must approve or deny the removal
request. If the user wants to keep the
subscription, the manager then becomes
responsible for approving or declining the
removal. This state is applicable only if the
Notify User option is enabled on the removal
candidate.

Awaiting Revocation

The removal candidate is awaiting
reclamation.
You can manually reclaim the user
subscription in the removal candidate by
selecting Close Complete. Alternatively, you
can reclaim the user subscription through
the SAM — Updating Existing Reclamation
Candidates weekly scheduled job. When
the scheduled job runs, removal candidates
that are in the Awaiting Revocation state
and have an empty User subscription field
are automatically updated to the Closed
Complete state.
If the User subscription field is empty for a
removal candidate that is in any other state,
the reclamation workflow is canceled and
the state automatically changes to Closed
Skipped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
Removal candidate states (continued)
State

Description

The state of a removal candidate with
restricted software is automatically set to
Awaiting Revocation. The justification is set to
Restricted Software.
Closed Complete

The user subscription has been reclaimed.

Closed Skipped

The user subscription hasn’t been reclaimed
by the removal candidate.

Closed Canceled

The user subscription hasn’t been reclaimed
by the removal candidate because user
activity is detected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
Warning: Make sure that users don't lose access to their files when their account is

reclaimed. Users can't stop their account from being reclaimed unless the Notify user
check box is selected on the reclamation rule.
• Reclaiming an Adobe Cloud subscription removes the user's access to the application
and the files that they have created.
• Reclaiming an Adobe Workfront account removes the user's access to your Workfront
application. The user is no longer allowed to sign in.
• Reclaiming an Aha! account deactivates the account so that you can't log in to the Aha!
portal.
• Reclaiming an Asana account deletes the user account. The user can no longer access
the Asana projects or workspaces. Content that was created by the user remains
accessible to other users and the Admin can reassign the tasks from the Asana
dashboard.
• Reclaiming a Box account deletes the account. All the files are moved into a folder in the
Box admin account that authenticated the integration.
• Reclaiming a Calendly account removes the account from your organization.
• Reclaiming a Cisco Webex subscription removes the user's access to the specific
product. The user can still access all other Cisco Webex products and the free licenses
assigned.
• Reclaiming a Confluence Cloud account removes the user from all associated
Confluence groups. Although the user can no longer access the Confluence site, all
content that was created by the user remains accessible to other users.
• Reclaiming a Dropbox account deletes the account. All the files are moved into a folder in
the Dropbox admin account that authenticated the integration. The name of the created
folder is the deleted user's email address.
• Reclaiming a Docusign account deletes the account. The Docusign admin can access the
user's files through the Docusign admin portal.
• Reclaiming a Google Workspace account deletes the account. All the files are moved
from the Google Drive into a folder in the Google Workspace admin account that
authenticated the integration. The name of the created folder is the deleted user's email
address. All email messages are deleted when the account is reclaimed. To transfer email
messages, use the Google data migration service before reclaiming the account.
• Reclaiming a GitHub Enterprise Server account suspends the account. All issues,
comments, repositories, gists, and other data that the user created is preserved.
Reclaiming a GitHub Enterprise Cloud account removes the account from all enterprise
organizations. If you restore a user membership within three months of reclamation, the
user's access to the private forks of your organization repositories is restored.
• Reclaiming a product license from a GoTo user account removes the user's access to that
product. Without a license, users can’t sign in to the product. If you reclaim all product
licenses from a user account, the account is automatically suspended. Suspended users
remain on the account but can't sign in to any products.
• Reclaiming a Jira account removes the user from all the associated Jira groups. Although
the user can no longer access the Jira site, all content that was created by the user
remains accessible to other users.
• Reclaiming a Looker account removes the user's access to Looker. Without an active
account, the user can’t sign in to the Looker portal. The user’s usage history and personal
content is retained.
• Reclaiming a Microsoft 365 subscription removes the user's access to the application,
associated plans, and services. If a user has access to an application through a group
membership, reclaiming the subscription removes the user from the group and revokes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Reclaim user subscriptions in Software Asset Management classic
Reclaim unused SaaS and SSO subscriptions in the Software Asset Management classic
application.

Before you begin

Role required: sam_user

Important: The SaaS License Management SurveyMonkey integration does not
support reclamation through the ServiceNow AI Platform. To reclaim a SurveyMonkey user
subscription, you must reassign or delete the user from your SurveyMonkey team directly
using the SurveyMonkey admin portal. After the user is removed from your team, you must
update the state of the corresponding removal candidate to Closed Skipped so that the
user subscription is removed from the Software Subscriptions [samp_sw_subscription]
table. See Reclaim SurveyMonkey user subscriptions in Software Asset Management
classic for detailed instructions.

Important: The SaaS License Management monday.com integration does not
support reclamation through the ServiceNow AI Platform. To reclaim a monday.com user
subscription, you must deactivate the user on your monday.com account. After the user
is deactivated, you must update the state of the corresponding removal candidate to
Closed Skipped so that the user subscription is removed from the Software Subscriptions
[samp_sw_subscription] table. See Reclaim monday.com user subscriptions in Software
Asset Management classic for detailed instructions.

Important: The SaaS License Management Roadmunk integration does not support
reclamation through the ServiceNow AI Platform. To reclaim a Roadmunk user subscription,
you must deactivate the user on your Roadmunk account. After the user is deactivated, you
must update the state of the corresponding removal candidate to Closed Skipped so that
the user subscription is removed from the Software Subscriptions [samp_sw_subscription]
table. See Reclaim Roadmunk user subscriptions in Software Asset Management classic for
detailed instructions.

Procedure
1. Navigate to All > Software Asset > Removal Candidates > Reclamation Candidates.
2. To reclaim a user subscription that was not automatically identified by a software reclamation
rule, create a software removal candidate.
See Add a software removal candidate in Software Asset Management classic for detailed
instructions on how to create a software removal candidate in the Software Asset Management
classic application.
3. Reclaim user subscriptions.
◦ To reclaim all user subscriptions, click Reclaim All.

Note: Use caution when reclaiming all user subscriptions. Some users may still need
their subscriptions even if they have no activity.
◦ To reclaim a set of user subscriptions, specify your Search filter criteria and then click
Reclaim All. For example, you can reclaim all user subscriptions for Adobe InDesign by
selecting Product from the Search list and then entering *InDesign.
◦ To reclaim an individual user subscription, select a removal candidate and then click
Reclaim on the Removal Candidate form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
Result

After you reclaim a user subscription, the subscription record is deleted from the Software
Subscriptions [samp_sw_subscription] table. The reclamation candidate state is set to Closed
Complete. If the reclamation fails, the state is set to Attention Required. An error message is
displayed at the top of the screen with additional details on how to resolve the error.
Reclaim SurveyMonkey user subscriptions in Software Asset Management classic
Reclaim unused SurveyMonkey subscriptions to reduce your total software costs.

Before you begin

SurveyMonkey Role required: admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management SurveyMonkey integration does not support reclamation through
the ServiceNow AI Platform. When Software Asset Management creates a removal candidate
for your SurveyMonkey integration, you can reclaim the user subscription by removing the
associated user directly from your SurveyMonkey team. After you remove the user from your
team, you must update the state of the removal candidate to Closed Skipped so that the user
subscription is removed from the Software Subscriptions [samp_sw_subscription] table.

Procedure
1. Identify removal candidates for your SurveyMonkey integration.
a. From your ServiceNow instance, navigate to Software Asset > SaaS License > Direct
Integration Profiles.
b. Select your SurveyMonkey integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab to view the list
of available removal candidates.
e. Take note of the user principal name for each removal candidate that you want to reclaim the
user subscription for.
Save this information for later use.
2. Remove the associated users from your SurveyMonkey team.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by reassigning or deleting the associated users from your SurveyMonkey team.
a. From a web browser, open SurveyMonkey

.

b. Log in using your admin credentials.
c. On the left navigation menu, select Manage Users.
The Manage Users page opens, where you can view the complete list of users in your
SurveyMonkey team.
d. Click the ellipsis icon (…) for the user that you want to remove from your team.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
You can identify which user you want to remove based on the associated username. The
username corresponds directly to the user principal name of each removal candidate that
you identified in step 1.
e. When prompted, select either Reassign Account or Delete Account.
Select Reassign Account to move the user to another SurveyMonkey team. Select Delete
Account to deactivate the user completely.
f. Repeat steps d and e for each user that you want to remove.
3. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.
a. From your ServiceNow instance, navigate to SaaS License > Administration > Direct
Integration Profiles.
b. Select your SurveyMonkey integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab.
e. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you removed from your SurveyMonkey team in step 2.
f. On the Removal Candidate form, update the state of the removal candidate by clicking
Closed Skipped.
Software Asset Management removes the user subscription from the Software Subscriptions
[samp_sw_subscription] table and automatically returns you to the Software Model form.
g. Repeat steps d through f for each user that you removed from your SurveyMonkey team.
Reclaim monday.com user subscriptions in Software Asset Management classic
Reclaim unused monday.com subscriptions to reduce your total software costs.

Before you begin

monday.com Role required: admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management monday.com integration doesn’t support reclamation through
the ServiceNow AI Platform. When Software Asset Management creates a removal candidate
for your monday.com integration, you can reclaim the user subscription by deactivating the
associated user on your monday.com account. After you deactivate the user, you must update
the state of the removal candidate to Closed Skipped so that the user subscription is removed
from the Software Subscriptions [samp_sw_subscription] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Procedure
1. Identify removal candidates for your monday.com integration.
a. From your ServiceNow instance, navigate to All > Software Asset > SaaS License > Direct
Integration Profiles.
b. Select your monday.com integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab to view the list
of available removal candidates.
e. Take note of the user principal name for each removal candidate that you want to reclaim the
user subscription for.
Save this information for later use.
2. Deactivate the associated users on your monday.com account.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by deactivating the associated users on your monday.com account.
a. From a web browser, go to monday.com

.

b. Log in using your admin credentials.
c. At the bottom of the left navigation menu, select your profile icon and then select Admin.
The Admin section opens.
d. In the Admin section, select Users.
The Users tab of the Users subsection opens. This tab displays the complete list of users on
your monday.com account.
e. From the list of users, select the ellipsis icon (…) for the user that you want to deactivate.
You can identify which user you want to deactivate based on the associated user name or
email address. The user name or email address corresponds directly to the user principal
name of each removal candidate that you identified in step 1.
f. When prompted, select Deactivate user.
g. Repeat steps e and f for each user that you want to deactivate.
3. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.
a. From your ServiceNow instance, navigate to SaaS License > Administration > Direct
Integration Profiles.
b. Select your monday.com integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
e. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you deactivated in step 2.
f. On the Removal Candidate form, update the state of the removal candidate by selecting
Closed Skipped.
g. Close the Removal Candidate tab.
4. Verify the user deletion from the monday.com portal.
a. Run the Refresh Monday.com subscriptions scheduled job.
b. Verify the user deletion in the Software Subscriptions [samp_sw_subscription] table.
Reclaim Roadmunk user subscriptions in Software Asset Management classic
Reclaim unused Roadmunk subscriptions to reduce your total software costs.

Before you begin

Roadmunk Role required: Account Admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management Roadmunk integration does not support reclamation through
the ServiceNow AI Platform. When Software Asset Management creates a removal candidate for
your Roadmunk integration, you can reclaim the user subscription by deactivating the associated
user on your Roadmunk account. After you deactivate the user, you must update the state of the
removal candidate to Closed Skipped so that the user subscription is removed from the Software
Subscriptions [samp_sw_subscription] table.

Procedure
1. Identify removal candidates for your Roadmunk integration.
a. From your ServiceNow instance, navigate to All > Software Asset > SaaS License > Direct
Integration Profiles.
b. Select your Roadmunk integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab to view the list
of available removal candidates.
e. Take note of the user principal name for each removal candidate that you want to reclaim the
user subscription for.
Save this information for later use.
2. Deactivate the associated users on your Roadmunk account.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by deactivating the associated users on your Roadmunk account.
a. From a web browser, open Roadmunk

.

b. Log in using your Account Admin credentials.
The Roadmunk dashboard opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
c. On the left navigation menu of the Roadmunk dashboard, click your profile icon and then
select Account Settings.
Your account settings open.
d. On the page header of your account settings, select the Users tab.
This tab displays the complete lists of users on your Roadmunk account, including
collaborators, reviewers, and inactive users.
e. Click the Active toggle button for every user that you want to deactivate.
You can determine which users you want to deactivate based on the email address that is
associated with each user. The email address corresponds directly to the user principal
name of each removal candidate that you identified in step 1.
f. Click Save.
The users are deactivated and added to the list of inactive users.

Note: By default, the Roadmunk Download Subscriptions subflow within the
ServiceNow SaaS License Management Roadmunk integration downloads all users in
your Roadmunk account, including both active and inactive users. To download only the
active users in your account, you must download your Roadmunk User Report and then
attach it to the Roadmunk integration profile on your ServiceNow instance. See step 7 of
Create a Roadmunk integration profile for detailed instructions.
3. Optional: Delete deactivated users from your Roadmunk account.
If a deactivated user is no longer part of your organization or team, you can delete the user
from your Roadmunk account.

Warning: Users are deleted permanently. Proceed with caution, as users cannot be
restored once deleted.
a. On the same Users tab of your Roadmunk account settings, select INACTIVE USERS.
The list of inactive users opens.
b. Click the Remove icon ( ) for the user that you want to delete.
The removal confirmation dialog box opens.
c. On the dialog box, click Delete.
The user is deleted from your account and all roadmaps are unassigned from the user.

Note: The user is not notified about being deleted from your account. Any comments
that either mention or are made by the user are updated to indicate that the user has
been deleted. All roadmaps that are owned by the user are retained in your account
and can be managed by any Account Admin. You can view these roadmaps at any
time in the All Roadmaps list on the Roadmaps homepage. If the user is invited back
to Roadmunk under the same email address, you must manually reassign these
roadmaps to the user.
d. Repeat steps b and c for each user that you want to delete.
4. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
a. From your ServiceNow instance, navigate to SaaS License > Administration > Direct
Integration Profiles.
b. Select your Roadmunk integration profile from the Integration Profiles list.
c. On the Software Models tab of the Integration Profile form, select the software model that is
associated with the integration profile.
d. On the Software Model form, select the Reclamation Candidates related tab.
e. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you deactivated in step 2.
f. On the Removal Candidate form, update the state of the removal candidate by clicking
Closed Skipped.
Software Asset Management removes the user subscription from the Software Subscriptions
[samp_sw_subscription] table and automatically returns you to the Software Model form.
g. Repeat steps d through f for each user that you deactivated on your Roadmunk account.
Reclaim user subscriptions in the Software Asset Workspace
Reclaim unused SaaS and SSO subscriptions in the Software Asset Workspace.

Before you begin

To reclaim user subscriptions in the Software Asset Workspace, you must request and activate
the Software Asset Workspace (sn_sam_workspace) store application. See Request Software
Asset Management for more details on requesting and activating the Software Asset Workspace
(sn_sam_workspace) store application.
Role required: sam_user

Important: The SaaS License Management SurveyMonkey integration does not
support reclamation through the ServiceNow AI Platform. To reclaim a SurveyMonkey user
subscription, you must reassign or delete the user from your SurveyMonkey team directly
using the SurveyMonkey admin portal. After the user is removed from your team, you must
update the state of the corresponding removal candidate to Closed Skipped so that the
user subscription is removed from the Software Subscriptions [samp_sw_subscription]
table. See Reclaim SurveyMonkey user subscriptions in the Software Asset Workspace for
detailed instructions.

Important: The SaaS License Management monday.com integration does not
support reclamation through the ServiceNow AI Platform. To reclaim a monday.com user
subscription, you must deactivate the user on your monday.com account. After the user
is deactivated, you must update the state of the corresponding removal candidate to
Closed Skipped so that the user subscription is removed from the Software Subscriptions
[samp_sw_subscription] table. See Reclaim monday.com user subscriptions in the Software
Asset Workspace for detailed instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Important: The SaaS License Management Roadmunk integration does not support
reclamation through the ServiceNow AI Platform. To reclaim a Roadmunk user subscription,
you must deactivate the user on your Roadmunk account. After the user is deactivated, you
must update the state of the corresponding removal candidate to Closed Skipped so that
the user subscription is removed from the Software Subscriptions [samp_sw_subscription]
table. See Reclaim Roadmunk user subscriptions in the Software Asset Workspace for
detailed instructions.

Procedure
1. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. To reclaim a user subscription that was not automatically identified by a software reclamation
rule, create a software removal candidate.
See Create a software removal candidate in workspace for detailed instructions on how to
create a software removal candidate in the Software Asset Workspace.
3. From the left navigation menu of the Software Asset Workspace, select License usage.
The License usage view opens.
4. In the License usage view, select the Removal candidates tab.
5. Reclaim user subscriptions.
◦ To reclaim all user subscriptions, click Reclaim All.

Note: Use caution when reclaiming all user subscriptions. Some users may still need
their subscriptions even if they have no activity.
◦ To reclaim an individual user subscription, select a removal candidate and then click
Reclaim on the Removal Candidate form.

Result

After you reclaim a user subscription, the subscription record is deleted from the Software
Subscriptions [samp_sw_subscription] table. The reclamation candidate state is set to Closed
Complete. If the reclamation fails, the state is set to Attention Required. An error message is
displayed at the top of the screen with additional details on how to resolve the error.
Reclaim SurveyMonkey user subscriptions in the Software Asset Workspace
Reclaim unused SurveyMonkey subscriptions to reduce your total software costs.

Before you begin

To reclaim user subscriptions in the Software Asset Workspace, you must request and activate
the Software Asset Workspace (sn_sam_workspace) store application. See Request Software
Asset Management for more details on requesting and activating the Software Asset Workspace
(sn_sam_workspace) store application.
SurveyMonkey Role required: admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management SurveyMonkey integration doesn’t support reclamation through
the ServiceNow AI Platform. When Software Asset Management creates a removal candidate
for your SurveyMonkey integration, you can reclaim the user subscription by removing the
associated user directly from your SurveyMonkey team. After you remove the user from your
team, you must update the state of the removal candidate to Closed Skipped so that the user
subscription is removed from the Software Subscriptions [samp_sw_subscription] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Procedure
1. Identify removal candidates for your SurveyMonkey integration.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace >
License usage.
b. On the Publishers tab of the License usage view, select SurveyMonkey from the list of
available publishers.
The SurveyMonkey publisher overview opens.
c. Select the Removal Candidates related list to view the list of available removal candidates.
d. Take note of the removal candidates for which you want to reclaim the user subscription.
Save this information for later use.
2. Remove the associated users from your SurveyMonkey team.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by reassigning or deleting the associated users from your SurveyMonkey team.
a. From a web browser, open SurveyMonkey

.

b. Log in using your admin credentials.
c. On the side navigation menu, select Manage Users.
The Manage Users page opens, where you can view the complete list of users in your
SurveyMonkey team.
d. Select the ellipsis icon (…) for the user that you want to remove from your team.
e. When prompted, select either Reassign Account or Delete Account.
Select Reassign Account to move the user to another SurveyMonkey team. Select Delete
Account to deactivate the user completely.
f. Repeat steps d and e for each user that you want to remove.
3. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace >
License usage.
b. On the Publishers tab of the License usage view, select SurveyMonkey from the list of
available publishers.
The SurveyMonkey publisher overview opens.
c. Select the Removal Candidates related list.
d. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you removed from your SurveyMonkey team in step 2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
e. On the Removal Candidate form, update the state of the removal candidate by selecting
Closed Skipped.
Software Asset Management removes the user subscription from the Software Subscriptions
[samp_sw_subscription] table.
f. Close the Removal Candidate form.
g. Repeat steps e through g for each user that you removed from your SurveyMonkey team.
Reclaim monday.com user subscriptions in the Software Asset Workspace
Reclaim unused monday.com subscriptions to reduce your total software costs.

Before you begin

To reclaim user subscriptions in the Software Asset Workspace, you must request and activate
the Software Asset Workspace (sn_sam_workspace) store application. See Request Software
Asset Management for more details on requesting and activating the Software Asset Workspace
(sn_sam_workspace) store application.
monday.com Role required: admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management monday.com integration doesn’t support reclamation through
the ServiceNow AI Platform. When Software Asset Management creates a removal candidate
for your monday.com integration, you can reclaim the user subscription by deactivating the
associated user on your monday.com account. After you deactivate the user, you must update
the state of the removal candidate to Closed Skipped so that the user subscription is removed
from the Software Subscriptions [samp_sw_subscription] table.

Procedure
1. Identify removal candidates for your monday.com integration.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
b. From the side navigation menu of the Software Asset Workspace, select License usage.
The License usage view opens.
c. On the Publishers tab of the License usage view, select monday.com Ltd. from the list of
available publishers.
The monday.com Ltd. publisher overview opens.
d. Select the Removal Candidates related list to view the list of available removal candidates.
e. Take note of the removal candidates that you want to reclaim the user subscription for.
Save this information for later use.
2. Deactivate the associated users on your monday.com account.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by deactivating the associated users on your monday.com account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
a. From a web browser, go to monday.com

.

b. Log in using your admin credentials.
c. At the bottom of the side navigation menu, select your profile icon and then select Admin.
The Admin section opens.
d. In the Admin section, select Users.
The Users tab of the Users subsection opens. This tab displays the complete list of users on
your monday.com account.
e. From the list of users, select the ellipsis icon (…) for the user that you want to deactivate.
f. When prompted, select Deactivate user.
g. Repeat steps e and f for each user that you want to deactivate.
3. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
b. From the side navigation menu of the Software Asset Workspace, select License usage.
The License usage view opens.
c. On the Publishers tab of the License usage view, select monday.com Ltd. from the list of
available publishers.
The monday.com Ltd. publisher overview opens.
d. Select the Removal Candidates related list.
e. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you deactivated in step 2.
f. On the Removal Candidate form, update the state of the removal candidate by selecting
Closed Skipped.
g. Close the Removal Candidate tab.
4. Verify the user deletion from the monday.com portal.
a. Run the Refresh Monday.com subscriptions scheduled job.
b. Verify the user deletion in the Software Subscriptions [samp_sw_subscription] table.
Reclaim Roadmunk user subscriptions in the Software Asset Workspace
Reclaim unused Roadmunk subscriptions to reduce your total software costs.

Before you begin

To reclaim user subscriptions in the Software Asset Workspace, you must request and activate
the Software Asset Workspace (sn_sam_workspace) store application. See Request Software
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
Asset Management for more details on requesting and activating the Software Asset Workspace
(sn_sam_workspace) store application.
Roadmunk Role required: Account Admin
ServiceNow Role required: sam_user

About this task

The SaaS License Management Roadmunk integration doesn’t support reclamation through the
ServiceNow AI Platform. When Software Asset Management creates a removal candidate for
your Roadmunk integration, you can reclaim the user subscription by deactivating the associated
user on your Roadmunk account. After you deactivate the user, you must update the state of the
removal candidate to Closed Skipped so that the user subscription is removed from the Software
Subscriptions [samp_sw_subscription] table.

Procedure
1. Identify removal candidates for your Roadmunk integration.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
b. From the side navigation menu of the Software Asset Workspace, select License usage.
The License usage view opens.
c. On the Publishers tab of the License usage view, select Roadmunk from the list of available
publishers.
The Roadmunk publisher overview opens.
d. Select the Removal Candidates related list to view the list of available removal candidates.
e. Take note of the removal candidates that you want to reclaim the user subscription for.
Save this information for later use.
2. Deactivate the associated users on your Roadmunk account.
Based on the list of removal candidates that you identified in step 1, you can reclaim user
subscriptions by deactivating the associated users on your Roadmunk account.
a. From a web browser, open Roadmunk

.

b. Log in using your Account Admin credentials.
The Roadmunk dashboard opens.
c. On the side navigation menu of the Roadmunk dashboard, select your profile icon and then
select Account Settings.
Your account settings appear.
d. On the page header of your account settings, select the Users tab.
This tab displays the complete lists of users on your Roadmunk account, including
collaborators, reviewers, and inactive users.
e. Select the Active toggle button for every user that you want to deactivate.
f. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
The users are deactivated and added to the list of inactive users.

Note: By default, the Roadmunk Download Subscriptions subflow within the
ServiceNow SaaS License Management Roadmunk integration downloads all users in
your Roadmunk account, including both active and inactive users. To download only the
active users in your account, you must download your Roadmunk User Report and then
attach it to the Roadmunk integration profile on your ServiceNow instance. See step 7 of
Create a Roadmunk integration profile for detailed instructions.
3. Optional: Delete deactivated users from your Roadmunk account.
If a deactivated user is no longer part of your organization or team, you can delete the user
from your Roadmunk account.

Warning: Users are deleted permanently. Proceed with caution, as users can’t be
restored once deleted.
a. On the same Users tab of your Roadmunk account settings, select INACTIVE USERS.
The list of inactive users opens.
b. Select the Remove icon ( ) for the user that you want to delete.
The removal confirmation dialog box appears.
c. In the dialog box, select Delete.
The user is deleted from your account and all roadmaps are unassigned from the user.

Note: The user isn’t notified about being deleted from your account. Any comments
that either mention or are made by the user are updated to indicate that the user has
been deleted. All roadmaps that are owned by the user are retained in your account
and can be managed by any Account Admin. You can view these roadmaps at any
time in the All Roadmaps list on the Roadmaps home page. If the user is invited back
to Roadmunk under the same email address, you must manually reassign these
roadmaps to the user.
d. Repeat steps b and c for each user that you want to delete.
4. Return to your ServiceNow instance to update the state of each removal candidate to Closed
Skipped.
a. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
b. From the side navigation menu of the Software Asset Workspace, select License usage.
The License usage view opens.
c. On the Publishers tab of the License usage view, select Roadmunk from the list of available
publishers.
The Roadmunk publisher overview opens.
d. Select the Removal Candidates related list.
e. From the list of available removal candidates, select the removal candidate number
(RCCxxxxxxx) for a user that you deactivated in step 2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
f. On the Removal Candidate form, update the state of the removal candidate by selecting
Closed Skipped.
Software Asset Management removes the user subscription from the Software Subscriptions
[samp_sw_subscription] table.
g. Close the tab for the Removal Candidate form.
h. Repeat steps e through g for each Roadmunk user that you deactivated.

Create a child alias to set up multiple integration profiles
Create a child alias to set up multiple integration profiles with unique connections and manage
different configurations for each integration profile.

Before you begin

Role required: admin or sam_integrator

Procedure
1. Create an integration profile.
For more information about creating an integration profile, see Integrate with SaaS
applications.
2. Open the connection & credential record set on the integration profile.
If the Parent Alias field on an alias is empty, then the alias is a parent. If the field is filled, then
the alias is a child of the alias specified in the Parent Alias field.
◦ If the record is a parent alias, select the Child Aliases tab.
◦ If the record is a child alias, select the Parent Alias record and then select the Child Aliases
tab.
3. Select New.

Tip: If the New button isn't visible, change the scope to the respective application of the
alias from the application scope.
4. Reload the Connection & Credential Aliases page.
5. On the new child alias form that opens up, provide a name of your choice for the alias.
6. Select Submit.
7. Open the child alias record that you created, select Create New Connection & Credential.
8. Configure the connection and credential in the same way that you have done for the parent
integration.
9. After the connection is configured, return to the integration profile and then select the newly
created child alias on the Connection & Credential field.
10. Select Save and publish the integration profile.

Create a child alias to set up multiple Cisco Webex integration profiles
Create a child alias to set up multiple Cisco Webex integration profiles.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
Procedure
1. Create a Cisco Webex integration profile.
For more information about creating an integration profile, see Integrating with Cisco Webex.
2. Open the connection & credential record set on the integration profile.
3. Open the parent alias record (sn_cisco_teams_spk.CiscoWebexTeams).
4. Set the configuration template to the appropriate template based on the selected process in
the profile.

Process selected on the profile

Configuration template

Both Download activity and Reclaim
subscriptions check boxes are selected

Webex Subscription Activity and Reclaim

Only Download activity check box is
selected

Webex Subscription and Activity

Only Reclaim subscriptions check box is
selected

Webex Subscription and Reclaim

Both Download activity and Reclaim
subscriptions check boxes aren’t selected

Webex Subscription

5. Save the parent alias record.
6. Select the Child Aliases tab.
7. Select New.

Tip: If the New button isn't visible, change the scope to the respective application of the
alias from the application scope.
8. Reload the Connection & Credential Aliases page.
9. On the new child alias form that opens up, provide a name of your choice for the alias.
10. Select Submit.
11. Open the child alias record that you created, select Create New Connection & Credential.
12. Configure the connection and credential in the same way that you have done for the parent
integration.
13. After the connection is configured, return to the integration profile and then select the newly
created child alias on the Connection & Credential field.
14. Select Save and publish the integration profile.

Create a child alias to set up multiple Confluence Cloud integration profiles
Create a child alias to set up multiple Confluence Cloud integration profiles.

Before you begin

Role required: admin or sam_integrator

Procedure
1. Create a Confluence Cloud integration profile.
For more information about creating an integration profile, see Integrating with Confluence
Cloud.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
2. Open the connection & credential record set on the integration profile.
3. Open the parent alias record (sn_conflunce_spoke.Confluence_Cloud).
4. Set the configuration template to the appropriate template based on the selected process in
the profile.

Process selected on the profile

Configuration template

Both Download activity and Reclaim
subscriptions check boxes are selected

Confluence Subscription Activity and
Reclaim

Only Download activity check box is
selected

Confluence Subscription and Activity

Only Reclaim subscriptions check box is
selected

Confluence Subscription and Reclaim

Both Download activity and Reclaim
subscriptions check boxes aren’t selected

Confluence Subscription

5. Save the parent alias record.
6. Select the Child Aliases tab.
7. Select New.

Tip: If the New button isn't visible, change the scope to the respective application of the
alias from the application scope.
8. Reload the Connection & Credential Aliases page.
9. On the new child alias form that opens up, provide a name of your choice for the alias.
10. Select Submit.
11. Open the child alias record that you created, select Create New Connection & Credential.
12. Configure the connection and credential in the same way that you have done for the parent
integration.
13. After the connection is configured, return to the integration profile and then select the newly
created child alias on the Connection & Credential field.
14. Select Save and publish the integration profile.

Create a child alias to set up multiple Jira integration profiles
Create a child alias to set up multiple Jira integration profiles with unique connections and
manage different configurations for each integration profile.

Before you begin

Role required: admin or sam_integrator

Procedure
1. Create a Jira integration profile.
For more information about creating an integration profile, see Integrating with Jira Software
Cloud.
2. Open the connection & credential record set on the integration profile.
3. Open the parent alias record (sn_jira_spoke.Jira).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
4. Set the configuration template to the appropriate template based on the selected process in
the profile.

Process selected on the profile

Configuration template

Both Download activity and Reclaim
subscriptions check boxes are selected

Jira Subscription Activity and Reclaim

Only Download activity check box is
selected

Jira Subscription and Activity

Only Reclaim subscriptions check box is
selected

Jira Subscription and Reclaim

Both Download activity and Reclaim
subscriptions check boxes aren’t selected

Jira Subscription

5. Save the parent alias record.
6. Select the Child Aliases tab.
7. Select New.

Tip: If the New button isn't visible, change the scope to the respective application of the
alias from the application scope.
8. Reload the Connection & Credential Aliases page.
9. On the new child alias form that opens up, provide a name of your choice for the alias.
10. Select Submit.
11. Open the child alias record that you created, select Create New Connection & Credential.
12. Configure the connection and credential in the same way that you have done for the parent
integration.
13. After the connection is configured, return to the integration profile and then select the newly
created child alias on the Connection & Credential field.
14. Select Save and publish the integration profile.

Associate a user with subscription records
If the User field in the Software Subscription [samp_sw_subscription] table is empty, map the
field with an associated user in the User [sys_user] table within ServiceNow AI Platform.

Before you begin

ServiceNow Role required: sam_admin or sam_integrator

Important: sam_user can view the user resolution rules but not create them.
Review the list of unresolved subscriptions on the Subscriptions without user page in the
License operations view. Note the User principal name value for the subscription and then verify
if this value matches any entry in the User [sys_user] table. If no match is found, configure the
rule accordingly.

About this task

SaaS integrations create subscription records in the Software Subscription
[samp_sw_subscription] table with fields populated by automated jobs and integrations. By
default, the User field is resolved by matching the User principal name column value with the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


<!-- page 882 -->
Email and User ID fields in the User [sys_user] table. To accurately map user data when user data
isn't resolved, create a user resolution rule.

Procedure
1. Navigate to Workspaces > Software Asset Workspace > License operations > User
subscription > User resolution rules.
2. Select New.
3. On the form, fill in the fields.
For a description of the field values, see User resolution rule fields.
4. Select Save.

Result

If the user resolution rule is correctly configured and the Download subscription job SAM
- Refresh <profile name> Subscriptions runs successfully, the unresolved
subscription you targeted is cleared from the Subscriptions without user page in License
operations view.
Trouble?
If you find multiple records with the same email address but different
User IDs and associated user classes, enable the system property
sn_itam_samp.user_resolution_exclude_table. Provide a list of comma-separated
table names that extend the User [sys_user] table to exclude them from user resolution. After
making these changes, rerun the Download Subscription job SAM - Refresh <profile
name> Subscriptions to associate users with their subscription records.

Disconnect SSO apps
Disconnect an SSO application to stop viewing subscription information for the app, or before
creating a direct integration for the app.

Before you begin

Role required: sam_integrator

About this task

SaaS License Management offers direct integrations with select applications. Direct integrations
provide the most robust usage data. For a list of available direct integrations, see Integrate
with SaaS applications. If you have a connected SSO app and want to replace it with a direct
integration, disconnect the app before creating the direct integration to avoid creating duplicate
subscription records for the app.
When an app is disconnected, all SSO subscriptions for the app are deleted and any open
reclamation candidates are set to Closed Skipped.

Procedure
1. Navigate to All > SaaS License > SSO Applications.
2. Click the application you want to disconnect.
3. Click Disconnect.

Tip: You can also disconnect multiple apps at once from the SSO Applications list.
Select the apps using the check box on the left side of the list. At the bottom of the list,
click the Actions on selected rows drop down menu and then click Disconnect.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


<!-- page 883 -->
Delete an integration profile
If your company stops using a SaaS application or SSO provider, you can delete the integration
profile.
To delete an integration profile, navigate to the integration profile record and click Delete. The
sam_integrator role is required to delete integration profiles.

Direct integrations
When you delete a direct integration profile, all subscriptions, scheduled jobs, and consumption
summaries for the integration are also deleted. Open reclamation candidates are updated to
Closed Skipped. Reclamation rules are not deleted.

SSO integrations
When you delete an SSO integration profile, all SSO applications, subscriptions, and scheduled
jobs for the integration are also deleted. Open reclamation candidates are updated to Closed
Skipped. Reclamation rules are not deleted.
An SSO integration is created using a directory integration. When you delete an SSO integration
profile, the directory integration (including directory jobs, directory users, and directory
groups) is not deleted. Before deleting a directory integration, make sure it is not being used by
additional connections, such as Microsoft Azure AD integration for new hire onboarding . The
sn_remote_dir_sync.admin role is required to delete directory integrations.

Subscription identifiers for SaaS and SSO applications
Use the SaaS License Management application to view, manage, and resolve subscription
identifiers for your SaaS and SSO applications.
Subscription identifiers uniquely identify your SaaS and SSO applications. Each subscription
identifier is associated with a discovery map and software model that help to normalize the
software that is installed in your environment. You can use this information to track your software
subscriptions and understand your license positions.
Manage updated subscription identifiers
Keep your SaaS and SSO license positions accurate and up to date by managing the updated
subscription identifiers that are detected by the ServiceNow AI Platform.

Before you begin

Role required: sam_integrator or admin

About this task

When a SaaS or SSO provider updates an existing subscription identifier, the ServiceNow AI
Platform automatically detects and pushes the changes to your ServiceNow instance through
twice a week content updates. Changes include the product name, edition, version, platform,
and language. Your instance uses this information to update subscription identifiers on existing
software models, which can help prevent the creation of multiple software models for the same
subscription software.
Subscription identifiers update either automatically or manually depending on the associated
software model type. If a subscription identifier is associated with an auto-generated software
model, it updates automatically. If a subscription identifier is associated with a customized
software model, you must update it manually using software model suggestions. Software
model suggestions identify changes to your existing subscription identifiers. You can use this
information to determine whether you need to update your customized software models based
on the latest subscription identifiers. For example, if a SaaS provider updates the product name
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


<!-- page 884 -->
for an application, the software model suggestions identify both the current and updated values
of the product name. If the changes are correct, you can accept the software model suggestions
to update your software model with the latest product name.

Procedure
1. Navigate to All > SaaS License > Software Models.
2. Select a software model that is marked with a dot.
A dot indicates that there are discrepancies between the associated
subscription identifier and data that is provided in the latest content

updates.
3. On the Software Model form, open the software model suggestions by clicking the warning
icon ( ) next to the Display name field.
The Software Model Suggestions dialog box opens.
4. In the dialog box, view the Suggested discovery map field to verify that your software model is
using the discovery map for the updated subscription identifier.
This field is read-only. However, you can click the preview icon ( ) to view additional
information about the discovery map.
5. Verify the changes to the subscription identifier.
The Software Model Suggestions dialog box displays both the current and updated values
of all subscription identifier fields. Although these fields are read-only, you can compare the
values to understand how the subscription identifier has changed. Use this information to
determine whether the changes are correct and should be applied to your software model.
Subscription identifier fields
Field

Description

Suggested Updated software publisher.
publisher
Publisher

Current software publisher.

Suggested Updated software product name.
product
Product

Current software product name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
Field

Description

Suggested Updated qualifier that you can use to compare the value of the software model
Version
Version field against the value of the discovery model Version field. Your
condition instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.
Version
condition

Current qualifier that you can use to compare the value of the software model
Version field against the value of the discovery model Version field. Your
instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.

Suggested Updated software version.
version
Version

Current software version.

Suggested Updated qualifier that you can use to compare the value of the software model
Edition
Edition field against the value of the discovery model Edition field. Your instance
condition uses qualifiers such as is or is anything to determine whether your discovered
software applies to the software model.
Edition
condition

Current qualifier that you can use to compare the value of the software model
Edition field against the value of the discovery model Edition field. Your instance
uses qualifiers such as is or is anything to determine whether your discovered
software applies to the software model.

Suggested Updated software edition.
edition
Edition

Current software edition.

Suggested Updated qualifier that you can use to compare the value of the software model
Platform
Platform field against the value of the discovery model Platform field. Your
condition instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.
Platform
condition

Current qualifier that you can use to compare the value of the software model
Platform field against the value of the discovery model Platform field. Your
instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.

Suggested Updated platform on which you can install or run the software.
platform
Platform

Current platform on which you can install or run the software.

Suggested Updated qualifier that you can use to compare the value of the software model
Language Language field against the value of the discovery model Language field. Your
condition instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.
Language
condition

Current qualifier that you can use to compare the value of the software model
Language field against the value of the discovery model Language field. Your
instance uses qualifiers such as is or is anything to determine whether your
discovered software applies to the software model.

Suggested Updated language in which you want to run the software.
language
Language

Current language in which you are running the software.

6. Accept or reject the changes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
◦ If the changes are correct, click Accept to update the software model with the suggested
field values.
◦ If the changes are not correct, click Reject to ignore the suggested field values. The software
model continues to use the existing subscription identifier.
You automatically return to the Software Model form.
7. Click Update to save your changes and clear the software model suggestions.
Resolve unrecognized subscription identifiers
Maintain accurate license positions for your subscription software by resolving unrecognized
subscription identifiers that are detected by the ServiceNow AI Platform.

Before you begin

Role required: admin

About this task

The ServiceNow AI Platform marks a subscription identifier as unrecognized when it is not
associated with a software model. By associating the unrecognized subscription identifier with a
software model, you can track subscription usage for the associated subscription software.

Procedure
1. Optional: Send unrecognized subscription identifiers back to the ServiceNow content team by
opting in to the Software Asset Management content service.
When you opt in to the Software Asset Management content service, verify that the
Unrecognized Subscription Identifier KPI is enabled. See Enable sharing information with
Software Asset Management content service for detailed instructions.
2. Navigate to SaaS License > Unrecognized Subscription Identifiers.
3. Select an unrecognized subscription identifier.
4. On the form, fill in the fields.
Unrecognized Subscription Identifier form
Field

Value

Subscription
identifier

Name of the unrecognized subscription identifier. This field populates
automatically.

Software
model

Software model that you want to associate with the subscription identifier.

Subscription
profiles

Direct integration profiles that are associated with the subscription identifier.
This field populates automatically.

Number of
Number of subscriptions that are associated with the subscription identifier.
subscriptions This field populates automatically.
Exclude
from content
service

Option that prevents your ServiceNow instance from sending the
unrecognized subscription identifier back to the ServiceNow content
team. This option is applicable only if you opted in to the Software Asset
Management content service.

5. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
Result

After the subscription identifier associates with the specified software model, all related software
subscriptions automatically update with that software model.
If you opted to share your unrecognized subscription identifier data with ServiceNow, your
ServiceNow instance sends the unrecognized subscription identifier back to the ServiceNow
content team. The content team can use this information to further research and improve the
normalization process.

Subscription exclusions for SaaS and SSO applications
Define subscription exclusions for your SaaS and SSO applications to optimize your licensing
costs by keeping the excluded subscriptions out of license cost calculations.
You can keep certain low-value and high-volume user subscriptions from being charged during
the Software Asset Management application's licensing calculations. You can define two types of
subscription exclusions: Identifier-based exclusions and User-based exclusions.

Important: Identifier-based exclusions are specific to individual subscription profile
types, whereas User-based exclusions apply across all SaaS integration profiles.
Define identifier-based exclusions for SaaS and SSO applications
Define exclusions for your subscription identifiers to keep them excluded from the Software
Asset Management application's license calculations. Subscription identifiers uniquely identify
your SaaS and SSO applications.

Before you begin

Role required: sam_admin

About this task

Subscription identifiers help you track your software subscriptions and understand your license
calculations. You can optimize your licensing costs by defining subscription identifier-based
exclusions so that these identifiers aren't included while calculating your licensing costs.

Note: If you’re using the Software Asset Workspace, the option to navigate to the
integration profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

Core UI

Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Software Asset Workspace

Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

2. Select an integration profile for which you're defining an identifier-based exclusion.
3. Select the Subscription Identifier Exclusion Rule related list.
4. Select New.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
Subscription Identifier Exclusion Rule form
Field

Description

Subscription identifier

The subscription identifier for which you're
creating the exclusion rule.

Profile type

Type of integration profile.

Domain

Domain to which the data belongs.

Active

The option when the exclusion rule is active.

6. Select Save.

Result

The identifier-based exclusion rule is created for the subscription identifier. The specified
subscription identifier remains excluded when the scheduled job is executed for license
calculations.
Define user-based exclusions for SaaS and SSO applications
Define exclusions for certain user subscriptions to keep them excluded from the Software Asset
Management application's license calculations.

Before you begin

Role required: sam_admin

About this task

You can create subscription user exclusion rules so that these user subscriptions aren’t included
while calculating your licensing costs. The exclusion rules for these user subscriptions help you
optimize your licensing costs.

Procedure
1. Navigate to the integration profile.
Interface

Action

Core UI

Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Software Asset Workspace

Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

2. Select an integration profile for which you're defining a user-based exclusion.
3. Select the Subscription User Exclusion Rule related list.
4. Select New.
5. On the form, fill in the fields.
Subscription User Exclusion Rule form
Field

Description

User principal name

User name or email address of the user.

Profile type

Type of integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


