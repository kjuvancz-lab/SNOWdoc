# Australia Sales Customer Relationship Management — Order Management diagnostics capability / ServiceNow CPQ with other apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1385–1397 of 1645 | Part 2 of 2

Sections: Order Management diagnostics capability (p1235); ServiceNow CPQ with other apps (p1240); Reference (p1398)

---

<!-- page 1385 -->
If the final approval process has only field updates, it should resemble the following:

11. Click Activate.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
12. To ensure that CORS includes the URL, in the Setup search bar, search for CORS, or go to
Setup, click Security, and then click CORS. Verify that these are included in the CORS:

ServiceNow Quote Experience setup integrations
Create two integrations for an event that will be used to submit the record for approval through
ServiceNow Quote Experience.

Note: If you want to test these calls in Postman, the endpoint is the my Salesforce URL:
<https://logik-1e-dev-ed.develop.my.salesforce.com/>.
1. Receive the Salesforce record ID: Fetch the right Salesforce record ID using the UUID. This
integration is used for filling in the custom field for the integration above.
◦ Connection: Salesforce
◦ GET
Additional path: /services/data/v62.0/query/?q=SELECT Id,
CreatedDate, LGK__TransactionUUID__c FROM LGK__Transaction__c
WHERE LGK__TransactionUUID__c = '{{http://txn.id/}}'ORDER BY
CreatedDate DESC
Response Transformation:
{
"fields": [
{
"variableName": "txn.custom.sfRecordID",
"value": {{#each records}}{{#if
@first}}"{{this.Id}}"{{/if}}{{/each}}
},
{
"variableName": "txn.custom.opportunityName",
"value": {{#each records}}{{#if
@first}}"{{this.LGK__OpportunityId__r.Name}}"{{/if}}{{/each}}
},
{
"variableName": "txn.custom.accountName",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
"value": {{#each records}}{{#if
@first}}"{{this.LGK__AccountId__r.Name}}"{{/if}}{{/each}}
}
]
}
UPDATED QUERY USE THIS:
/services/data/v62.0/query/?q=SELECT Id,
CreatedDate,LGK__OpportunityId__c,LGK__OpportunityId__r.Name,
LGK__AccountId__r.Name,
LGK__AccountId__c,LGK__TransactionUUID__c FROM
LGK__Transaction__c WHERE LGK__TransactionUUID__c
='{{txn.id}}'ORDER BY CreatedDate DESC

contextActorId refers to the system Admin Record ID in Salesforce. It can be obtained by
navigating to Setup and clicking Users, and then copying the ID from the URL of the user page.

2. Submit for approval.
◦ Connection: Salesforce
◦ POST

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
Additional path: /services/data/v62.0/process/approvals

Request Transformation:
{
"requests" : [{
"actionType": "Submit",
"contextId": "{{txn.custom.sfRecordID}}",
"nextApproverIds": [],
"comments":"The line item has a discount percentage of
{{txn.custom.overallDealDiscount}}%",
"contextActorId": "005bm000003SKtJ", -- SF Record ID of user
highlighted above
"processDefinitionNameOrId" : "TM_SF_Approval", --should be
the unique name fro process definition detail highlighted above
"skipEntryCriteria": "true"}]
}
Make sure that the transform template has these values correctly:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
ServiceNow Quote Experience setup creating events
Slack Approvals Integration is implemented through headless event API calls. In this approach,
we’ll use these headless API calls in a record-triggered flow and perform the callout through
Apex actions.

Note that the two integrations created in the previous step are designed to work in sequence.
The first integration receives the Salesforce record ID, and the second integration submits it
for approval. Alternatively, the process of receiving the Salesforce ID can occur on the Open
Transaction action by adding the necessary configuration at that stage.
Create two additional events that will move the stage either forward for approval or backward for
revision. Be sure to note their respective variable names for use in the API callout configuration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
Add the Submit for approval option to ServiceNow Quote Experience
The button events can be added to the default_draft layout using the following JSON format:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
{
"type": "button",
"event": "submitForApproval",
"label": "Revise",
"columnOrder": 2,
"variableName": "revise"
},
Make sure to add the custom field to the draft fields: [] section; it’s not necessary to
include it in the layout.
{
"type": "ReadOnlyText",
"label": "SF Record ID",
"variableName": "txn.custom.sfRecordID"
},

Record-triggered flow
To set up the VS code environment, install the VS Code extensions from this document: Sales
Engineering Team Member Setup
1. Following the Trailheads approval process , create a picklist record on the
LGK__Transaction__C object that has the current approval state of the transaction, and
ensure the process updates the record based on approval, rejection, and pending approval.
The following image shows a custom field that triggers the record-triggered field: the
Approval_Status__C field that you made when you created the approval process.

The following image shows what the flow will look like when it's complete.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
2. In the Start block, click Edit.
Trigger on the LGK__Transaction__C object based on the custom field, ensuring that
a UUID is not null. Also make sure to click Run Asynchronously and Only when a record is
updated to meet.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
3. Add a decision block, and create outcomes for when the custom field you created is approved
or rejected.

Apex Code
Although this Apex Class was deployed through VS code, it could also be deployed in
Salesforce. The first step is the create a new Project with manifest.

Next, create an Apex class (in the blue box) as well as a manifest.xml file (in the green box) to go
into the respective files in the project directory.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Apex code:
global with sharing class TransactionManagerFlow {
global class FlowInput {
@InvocableVariable(label='Triggering Record'
required=true)
global LGK__Transaction__c triggeringRecord;
}
// Handle logic for Rejected status
@InvocableMethod(label='Logik.io Transaction callout from
Salesforce' description='Makes callout to transition Logik.io
transaction stage.')
global static void handleApprovalStatus(FlowInput[]
requestInputs) {
System.debug('Handling Rejected status for Record: ' +
requestInputs[0].triggeringRecord.Id);
LGK__ConfigurationTenant__c customSettings =
LGK__ConfigurationTenant__c.getInstance();
String updatedRuntimeToken =
'_gdyi0w0oGu1bNk3PO5exhUGqDFcZQVLIw';
System.debug(updatedRuntimeToken);
String endpoint =
'https://se-txn-sandbox.test02.logik.io';
for (FlowInput eachTxn : requestInputs) {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
// Make the API request to transfer a transaction
from 'new' stage to 'rejected' stage
// (compare with snippet from
ApprovalProcessHandler.makeApiCall)
String uuid =
eachTxn.triggeringRecord.LGK__TransactionUUID__c;
Http http = new Http();
HttpRequest request = new HttpRequest();
request.setHeader('Origin', endpoint);
if (eachTxn.triggeringRecord.Approval_Status__c ==
'Rejected') {
request.setEndpoint(endpoint + '/api/t/' +
String.valueOf(uuid) + '/events/revise'); // Example endpoint
System.debug('Endpoint set for rejection' +
request.getEndpoint());
} else if
(eachTxn.triggeringRecord.Approval_Status__c == 'Approved') {
request.setEndpoint(endpoint + '/api/t/' +
String.valueOf(uuid) + '/events/proceedToApproved'); // Example
endpoint
System.debug('Endpoint set for approval' +
request.getEndpoint());
}
request.setMethod('POST');
request.setHeader('Authorization', 'Bearer ' +
updatedRuntimeToken);
request.setHeader('Content-Type',
'application/json');
request.setBody('{}'); // Convert to JSON if inputs
are needed
System.debug(request);
if (!Test.isRunningTest()) {
HttpResponse response = http.send(request);
if (response.getStatusCode() != 200) {
System.debug(LoggingLevel.ERROR, 'Error
transitioning transaction: ' + response.getStatusCode());
System.debug(LoggingLevel.ERROR,
response.getBody());
} else {
System.debug('Rejected API Call Failed: ' +
response.getStatusCode() + ' - ' + response.getBody());
}
} else {
eachTxn.triggeringRecord.LGK__TransactionUUID__c
= 'testUUID';
}
}
}
}
XML:
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
<types>
<members>TransactionManagerFlow</members>
<name>ApexClass</name>
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
</types>
<version>61.0</version>
</Package>
Next, if you’re not logged into the org you want to deploy to, do so with the sf org login
web command, which takes you to login.salesforce.com.
When you’ve authorized CLI, the result should resemble the following:

Note: If you’re logged into multiple orgs through CLI, use this command to switch:
sf config set target-org=<username>
When you’re logged in, execute this command:
sf project deploy start --manifest manifest/package.xml

Add the Apex actions after the decision blocks, and make sure your flow looks similar to the one
provided in the screenshot. (Look for a name that matches the label parameter in the invocable
method.)
Finally, activate the flow and test.

Testing
After the record-triggered flow and the ServiceNow Quote Experience blueprint are created, you
may find this SOQL query helpful for debugging your approvals process in Salesforce.
Receiving Salesforce Approval Status (getting the state of most recent process)
• Connection: Salesforce
• GET

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


