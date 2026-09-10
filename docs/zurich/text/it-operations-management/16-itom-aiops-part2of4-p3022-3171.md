# Zurich IT Operations Management — ITOM AIOps / ITOM AIOps use case / Event Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3022–3171 of 4823 | Part 2 of 4

Sections: ITOM AIOps (p2872); ITOM AIOps use case (p2873); Event Management (p2874)

---

<!-- page 3022 -->
token, the Source field must be populated with the Application (client) ID of the registered
application.
If the Source field is not displayed, change the form layout to display this field. Click the
context menu icon (
) and select Configure > Form Layout. Move Source to the Selected
list.

Note: If your ServiceNow AI Platform instance version is earlier than Paris Patch 2

or Orlando Patch 9, the Source field value must be enclosed in square brackets. For
example, [api://azuretest].
4. In your ServiceNow AI Platform instance, navigate to Event Management > Integrations >
Azure OAuth Config.
5. Click Azure OAuth OIDC Entry and enter the Client ID.
If the registered application is using an Azure V2 token, the Client ID should be the same
as the Application (client) ID of the app registrations defined in your Azure Monitor
portal.
If the registered application is using an Azure V1 token, the Client ID should be the same
as the Application ID URI of the app registrations defined in your Azure Monitor portal
(the exposed API).
6. In the OAuth OIDC Provider Configuration field, click the info icon (

).

7. In the OIDC Provider Configuration window, click Open Record.

8. Enter the OIDC Metadata URL according to the Azure token used by the registered
application, as shown in the following table.
Azure token

OIDC Metadata URL

In the OIDC Provider Configuration form, add
the following URL to the OIDC Metadata URL
field:
V2

https://login.microsoftonline­
.com/<tenant-id>/v2.0/.wellknown/openid-configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3022


<!-- page 3023 -->
Azure token

OIDC Metadata URL

Ensure that <tenant-id> is replaced with
the correct Azure Tenant ID.

Note: If attempting to integrate Azure
Gov Cloud with the ServiceNow Azure
Monitor Connector, remember to
change the claim value to f1f34126d4ef-40e1-ad4b-bf5d47b4860d.
In the OIDC Provider Configuration form:
◦ In the Claim Name column, change azp to
appid.

Note: If attempting to integrate

V1

Azure Gov Cloud with the Service­
Now Azure Monitor Connector, re­
member to change the claim value to
f1f34126-d4ef-40e1-ad4bbf5d47b4860d.
◦ In the OIDC Metadata URL field, add
the following URL: https://lo­
gin.microsoftonline.com/<ten­
ant-id>/.well-known/openidconfiguration
Ensure that <tenant-id> is replaced
with the correct Azure Tenant ID.

Result

When an alert is created in Azure Monitor as part of the alert rule, the notification is sent to the
ServiceNow AI Platform using the secure webhook endpoint. In your ServiceNow AI Platform
instance, navigate to All Events to see the events. If you want to send alert state changes on
the ServiceNow instance from the ServiceNow alerts to the Azure Portal, you need to enable the
Azure Monitor Bi-directional connector. For more information, see Configure Azure Monitor Bidirectional connector .
Configure Azure Monitor Bi-directional connector
The Azure Monitor Pull connector sends information from ServiceNow Event Management to the
Azure Portal. The pull connector sends the alert state changes from the ServiceNow environment
to the Azure Portal.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3023


<!-- page 3024 -->
When an alert is triggered in the Azure Portal a Secure Webhook is created to send the alert
notifications into ServiceNow. The Azure Monitor Connector will receive the alert notification as
an event in the ServiceNow instance.
The Azure Monitor Bi-directional connector is supported in the following ServiceNow AI Platform
versions:
• Quebec Patch 9 or later.
• Rome Patch 3 or later.
• San Diego.
Role required: evt_mgmt_admin

About this task

When you configure the Azure Monitor Bi-directional Connector, the bi-directional
exchange of values to and from the external event source is enabled. When an alert is
Acknowledged/Closed/Reopened on the ServiceNow instance, the state changes in the Azure
Portal alert using the bi-directional connector.
These scenarios describe the default bi-directional functionality for the Azure Monitor connector:
• When an alert is closed in the Azure Portal, it is automatically closed in ServiceNow. However,
it is updated irrespective of the bi-directional feature because closing the event received from
the Azure Portal will close the alert.
• When an alert is manually closed in ServiceNow, all the associated Azure alerts will be closed
in the Azure Portal.
• If the alert state is changed to Reopen in ServiceNow, all the associated Azure alerts will be
opened in the Azure Portal.
• When an alert is Acknowledged in ServiceNow, all the associated Azure alerts will be
acknowledged in the Azure Portal.

Note: For changing the alert state on the Azure Portal, Mid Server gets access token
connecting to https://login.microsoftonline.com/
and to change the alert state on the
Azure portal Mid Server calls changestate API on URL https://management.azure.com/
as
described in https://learn.microsoft.com/en-us/rest/api/monitor/alertsmanagement/alerts/
change-state?view=rest-monitor-alertsmanagement-2023-07-12-preview&tabs=HTTP .

Procedure
1. For a single tenant, perform the following steps:
◦ Navigate to All > Event Management > Integrations > Connector Instances.
◦ Select Azure Monitor.
◦ Select the Active check box.
For this configuration, the Host IP field has no functional impact and is not used, so a
dummy IP address (1.1.1.1) is provided.
◦ In the Credential field, add the Azure Service Principal credentials that has authorization to
perform actions.
To change the alert state, the service principal must have the Microsoft.AlertsManagement
permissions and the Monitoring Contributor
role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3024


<!-- page 3025 -->
◦ Select or add the MID Server to be used for this connector.
If alerts on the MS Azure portal are not updating as expected, check the MID Server logs for
errors.
2. For multiple tenants, perform the following steps:
◦ Navigate to All > Event Management > Integrations > Connector Instances.
◦ Select New.
◦ In the Name field, enter the name of <new_connector_instance_name> that you have
mentioned in the URL for secure webhook at Integrate Azure Monitor with OAuth
authentication.
◦ In the Host IP, enter any dummy IP address such as 1.1.1.1.
◦ In the Credential field, add the Azure Service Principal credentials of that tenant that has
authorization to perform actions.
◦ Select the Bi-directional check box.
◦ Select or add the MID Server to be used for this connector.
◦ Select Submit.
◦ Select the Active check box.
◦ Select Update.

What to do next

Multiple alerts from the Azure Portal may be mapped to a single ServiceNow alert by de
duplication. The mapping between the ServiceNow alert and Azure alerts will be maintained in
the sn_em_connector_event_data table. The retention of records will depend on the alert's state:
• If the Azure Bi-directional Connector is not active, the records will be deleted in 2 days.
• When the Azure Bi-directional Connector is active:
◦ If the alert is in a closed state, then it will retain the data for 7 days. This duration can be
customized by the sn_em_connector.eventdata_closedevent_interval system property.
▪ If the closed alert is re-opened in 7 days then it will reopen the corresponding closed
alerts from the Azure Portal.
▪ If the closed alert is re-opened after 7 days then it will not reopen the corresponding
closed alerts from the Azure Portal.
◦ If the alert is in an open state, then it will retain the data for 30 days. . This duration can be
customized by the sn_em_connector.eventdata_openevent_interval.
▪ If you want to close or acknowledge an open ServiceNow alert in 30 days, you will be able
to close or acknowledge all corresponding Azure alerts on the Azure Portal.
▪ If you want to close or acknowledge an open ServiceNow alert after 30 days, you will not
be able to close or acknowledge all corresponding Azure alerts on the Azure Portal.
Event collection from Microsoft Azure Monitor
The MID WebServer Event Collector enables you to collect JSON formatted event messages sent
from the Microsoft Azure portal.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure that you:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3025


<!-- page 3026 -->
• Deploy and start the MID Server. See MID Server configuration

.

• Configure and start the MID Web Server. See Configure the MID Web Server extension.
• Configure and start the MID WebService Event Collector. See Configure the MID WebService
Event Collector Context.
Role required: evt_mgmt_admin

About this task

On the Azure portal, alert correlation rules are defined through the Correlate alerts
setting within Alert Processing Rules. When Correlate alerts is assigned on the Azure
®
portal, the Azure Monitor alerts received on the ServiceNow instance within 60 minutes are
grouped using tag based alert clustering.
JSON formatted event messages are sent from Microsoft Azure. The MID Server transforms
the collected event messages by parsing them using the TransformEvents_MidAzureMonitor
script include, located here: Event Management > Integrations > PushConnectors. In the Push
Connectors page, click Azure Monitor Mid Push Connector.

The default format of the URL to push event messages from Microsoft Azure to the MID Server is
http://
<MID_Web_Server_User>:<MID_Web_Server_Password>@<MID_Server_IP>:<MID_Web_Serv
api/mid/em/inbound_event?
Transform=TransformEvents_MidAzureMonitor.
Variables in the default URL
Variable

Description

MID_Server_IP

IP address of the MID Web Server Extension.

MID_Web_Server_Port

Listening port of the MID Web Server
Extension.

MID_Web_Server_User

Username for the MID Web Server Extension.

MID_Web_Server_Password

Password of the user of the MID Web Server.

The following procedure describes the collection of JSON formatted event messages using basic
authentication.

Procedure
1. In the Azure Monitor Portal, make sure the MID Server IP is accessible from the Azure portal
and the MID rest point is accessible from Microsoft Azure or install the MID Server on a Azure
VM and provide the Azure VM public address in the URL and allow the mid_web_Server_port in
Azure VM > Networking Settings > Inbound port rules.

2. Create an action group with a webhook and provide the rest endpoint as http://
<MID_Web_Server_User>:<MID_Web_Server_Password>@<MID_Server_IP>:<MID_Web_Ser
api/mid/em/inbound_event?
Transform=TransformEvents_MidAzureMonitor

Note: For more information about adding a webhook to an action group, see Create and
manage action groups in the Azure portal

on the Microsoft documentation site.

3. In the Webhook section, make sure Yes is selected for the Enable the common alert schema
option.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3026


<!-- page 3027 -->
4. Navigate to Alerts > Manage Alert Rules.
5. Add the action group with the webhook to an alert rule.

What to do next

If you want to send alert state changes on the ServiceNow instance from the ServiceNow alerts
to the Azure Portal, you need to enable the Azure Monitor Bi-directional connector. For more
information, see Configure Azure Monitor Bi-directional connector.
Event collection from BMC TrueSight and BMC TrueSight_v2
The MID WebService Event Collector enables you to collect JSON formatted event messages
sent from BMC TrueSight Operations Management (TrueSight), previously known as BMC
ProactiveNet Performance Management (BPPM), utilizing event stream notification capabilities.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure that you:
• Deploy and start the MID Server. See MID Server configuration

.

• Configure and start the MID Web Server. See Configure the MID Web Server extension.
• Configure and start the MID WebService Event Collector. See Configure the MID WebService
Event Collector Context.
Role required: evt_mgmt_admin

About this task

JSON formatted event messages are sent from BMC TrueSight. The MID Server transforms the
collected event messages by parsing them using the TransformEvents_bmcTrueSight script
include, located here: Event Management > Integrations > Listener Transform Scripts. In the
Listener Transform Scripts page, click TransformEvents_bmcTrueSight.
The default format of the URL to push event messages from BMC TrueSight to the MID
Server is http://<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/
em/inbound_event?Transform=TransformEvents_bmcTrueSight.
The default format of the URL to push event messages from BMC TrueSight_v2 to the MID
Server is http://<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/
em/inbound_event?Transform=TransformEvents_bmcTrueSight_v2.
Variables in the default URL
Variable

Description

MID_Server_IP

IP address of the MID Web Server Extension.

MID_Web_Server_Port

Listening port of the MID Web Server
Extension.

MID_Web_Server_User

Username for the MID Web Server Extension.

MID_Web_Server_Password

Password of the user of the MID Web Server
Extension. However, encode the password
in BASE64. For example, if the MID Web
Server Extension password is admin, in this
case use YWRtaW4= as the password for
MID_Web_Server_Password.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3027


<!-- page 3028 -->
Variables in the default URL (continued)
Variable

Description

To determine the BASE64 value, you can
use the utility at this website: https://
www.base64encode.org/
The following procedure describes the collection of JSON formatted event messages using basic
authentication. For more information about supported authentication methods, see Configure
the MID Web Server extension.

Procedure
1. In BMC TrueSight, set the MID WebService Event Collector as the target for BMC TrueSight
notification, using these parameters:
Variables in the generic BMC URL
Variable

Description

serverHost

Name of the BMC TrueSight server.

port

Number of the BMC TrueSight port.

2. In the message body and generic BMC URL, replace the parameters with the values in the
preceding table and connect to BMC TrueSight.
Use the BMC Publish-Subscribe REST approach to create a stream event subscription
and send event messages in JSON format. The generic format of the BMC URL to
create a stream event subscription is: http|https://<serverHost>:<port>/
bppmws/api/stream/subscribe?dataType=event. For example: http://
TrueSight1server:40/bppmws/api/stream/subscribe?dataType=event.

Result
Example of mapping event messages to event fields in the Event (em_event) table
Event field

Event message

node

mc_host

type

mc_object_class

metric_name

mc_parameter

resource

mc_object

severity

severity

time_of_event

date_reception

description

msg

Example:

Example, showing the message body.
{
"action": "create",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3028


<!-- page 3029 -->
"data": {
"mc_abstracted": [],
"itsm_operational_category3": "",
"mc_object_class": "CPU",
"source": "MySource",
"adapter_host": "",
"itsm_operational_category2": "",
"itsm_location": "",
"itsm_operational_category1": "",
"mc_abstraction": [],
"mc_tool_id": "",
"mc_original_priority": "PRIORITY_1",
"event_handle": "3172",
"mc_modhist": [],
"mc_tool_class": "",
"mc_origin": "",
"mc_tool_uri": "",
"mc_service": "",
"mc_smc_type": "",
"mc_object_owner": "",
"mc_object": "CPU_0",
"mc_notes": [],
"itsm_model_version": "",
"mc_origin_key": "",
"mc_tool_address": "",
"mc_ueid": "mc.pncell_bmcswetsom96.1829b8ed.0",
"mc_bad_slot_names": [],
"date": "20161114081525.000000-300",
"itsm_item": "",
"mc_timeout": "0",
"mc_priority": "PRIORITY_1",
"itsm_type": "",
"itsm_manufacturer": "",
"mc_tool_key": "",
"itsm_product_name": "",
"mc_smc_impact": "NOT_ELECTED",
"mc_parameter": "MEMFreeMem",
"mc_bad_slot_values": [],
"itsm_incident_id": "",
"mc_incident_report_time": "0",
"mc_event_model_version": "1.1.00",
"mc_relationships": "0/0",
"CLASS": "EVENT",
"mc_using_organization": "",
"mc_tool_sev": "",
"mc_parameter_threshold": "",
"mc_smc_effects": [],
"mc_smc_priority": "0",
"itsm_company": "",
"date_reception": "1479129325",
"mc_smc_alias": "bmcswetsom96_2",
"pn_detail_diag_count": "0",
"mc_effects": [],
"mc_object_uri": "",
"mc_date_modification": "1479129325",
"mc_incident_time": "0",
"status": "OPEN",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3029


<!-- page 3030 -->
"msg": "Free Memory Low",
"pn_detail_diag": "0",
"mc_host": "bmcswetsom97",
"repeat_count": "69",
"mc_host_address": "",
"mc_tool_suggestion": "",
"mc_using_organization_id": "",
"mc_collectors": ["1.1", "3.1.1", "4.1", "5.1"],
"mc_account": "",
"mc_long_msg": "",
"mc_owner": "",
"mc_history": ["pncell_bmcswetsom96:3172"],
"itsm_category": "",
"mc_host_class": "",
"mc_tool_rule": "",
"mc_local_reception_time": "1479129325",
"mc_associations": [],
"mc_relation_source": "",
"mc_propagations": [],
"mc_client_address": "172.16.173.131",
"itsm_incident_status": "",
"mc_tool_time": "0",
"mc_origin_class": "",
"mc_tool": "",
"mc_action_count": "0",
"mc_cause": "0",
"mc_origin_sev": "",
"mc_host_id": "0",
"mc_event_relations": [],
"mc_operations": [],
"mc_event_category": "CONFIGURATION_MANAGEMENT",
"pn_device_name": "",
"mc_arrival_time": "1479129325",
"severity": "OK",
"mc_notification_history": [],
"mc_smc_causes": [],
"mc_acl": [],
"mc_original_severity": "CRITICAL",
"duration": "0",
"mc_location": "Unknown",
"mc_smc_id": "",
"mc_parameter_value": "20",
"administrator": "",
"mc_event_subcategory": "OTHER",
"mc_parameter_unit": ""
},
"subscriptionId": "af18f6ba-a2d3-4574-81c8-7f366ca70ebd",
"type": "EVENT"
}
Integrate Dynatrace platform events
Integrate Dynatrace with Event Management by adding the Dynatrace Monitor as an
authenticated data source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3030


<!-- page 3031 -->
What authentication is used
There are two methods of authentication:
• OAuth authentication: Provides enterprise-grade authentication to keep your enterprise
environment safe. Authentication is performed using Dynatrace Monitor V1 or V2 access
tokens. For more information, see Integrate Dynatrace with OAuth authentication.
• Basic webhook authentication: Provides a basic standard of authentication, without the need
for Dynatrace Active Directory. This authentication can be especially useful for distributed
small teams, such as SRE or DevOps teams. For more information, see Integrate Dynatrace
with basic authentication.

Note: When a problem is reopened in Dynatrace, the original start time is retained and not
updated to the time of reopening. This behavior is intentional and reflects how Dynatrace
manages the problem lifecycle. Problems reopened within the defined reopening period
(typically 30 minutes) are treated as a continuation of the original issue. The start time
continues to reflect the timestamp of the earliest triggering event, even after reopening.
Do not use the evidence details timestamp as a substitute for the problem start time. The
evidence timestamp refers to individual contributing events within the problem. It is part of the
Root Cause Analysis (RCA) and does not indicate the start or duration of the overall problem.
Starting from the Xanadu release, the base system rules provided with the connector, which
you have not previously used (i.e., neither activated, deactivated, nor modified), will now have
the Apply additional matching rules check box set to true. Previously, this check box was
disabled. This change allows you to execute more event rules or automation using the same filter
conditions for the connector.

Note: This feature applies only to active event rules.
Integrate Dynatrace with basic authentication
Integrate Dynatrace with Event Management by adding a standard webhook in the Dynatrace
console.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure that configuration items for the hosts managed by Dynatrace exist in the ServiceNow AI
Platform instance. These CIs can be physical or virtual and can be either manually created or
discovered via IP discovery or Cloud Discovery.
Roles required: evt_mgmt_integration and web_service_admin

About this task

Configure the Event Management environment for the collection of events from Dynatrace by
authenticating Dynatrace as a data source. In your Dynatrace console, set your ServiceNow AI
Platform instance as the rest endpoint using a standard webhook.

Procedure
1. In your Dynatrace console, define Host Naming rules:
a. Navigate to Settings > Monitoring > Host Naming.
b. Define the Host Naming rules for each cloud provider (Azure/AWS/GCP) to uniquely identify
a CI from ServiceNow.
This ensures the ServiceNow CIs can be uniquely identified from the payload received from
Dynatrace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3031


<!-- page 3032 -->
Note: You do not need to create a Host Naming rule for VMware machines because
Dynatrace manages them as physical servers.
2. Define anomaly detection rules:
a. Navigate to Settings > Anomaly Detection > Infrastructure.
b. In the Hosts tab, define rules on when to create alerts on the managed hosts.
3. Define the integration settings:
a. Navigate to Settings > Integration > Problem notifications > Add notifications.
b. In the Set up custom integration form, add the Webhook URL: https://<instancename>.service-now.com/api/sn_em_connector/em/inbound_event?
source=dynatrace
For basic authentication, select Create basic authorization header. You can see the
username and password fields for the user.
c. Enter the user name and password of the relevant user.

Note: Ensure the evt_mgmt_integration role is assigned to the selected
user. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
d. In the Custom payload section, add in the following payload structure for the events that will
be generated.
{
"connectionId": <connections_alias_sys_id>,
"ImpactedEntities": {ImpactedEntities},
"ImpactedEntity": "{ImpactedEntity}",
"PID": "{PID}",
"ProblemDetailsHTML": "{ProblemDetailsHTML}",
"ProblemDetailsJSONv2": {ProblemDetailsJSONv2},
"ProblemDetailsMarkdown": "{ProblemDetailsMarkdown}",
"ProblemDetailsText": "{ProblemDetailsText}",
"ProblemID": "{ProblemID}",
"ProblemImpact": "{ProblemImpact}",
"ProblemSeverity": "{ProblemSeverity}",
"ProblemTitle": "{ProblemTitle}",
"ProblemURL": "{ProblemURL}",
"State": "{State}",

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3032


<!-- page 3033 -->
"Tags": "{Tags}"
}

Note: For the <connections_alias_sys_id>:
i. Navigate to All > IntegrationHub > Connection & Credentials > Connection &
Credential Aliases.
ii. Select to open the connector for which you want to get the
<connections_alias_sys_id>.

iii. Right-click the context menu (

) and then select Copy sys_id.

Result

Alerts start flowing from the Dynatrace console into the Event Management plugin. The plugin
extracts information from the original Dynatrace alert message to populate the required event
fields and inserts the event into the database. In your ServiceNow AI Platform instance, navigate
to All Events to see the events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3033


<!-- page 3034 -->
Note: By default, host binding is enabled for Dynatrace events for all providers
(Azure/AWS/Google). If all hosts in the environment are discovered using Cloud Discovery
by providing credentials and discovered resources are in the cmdb_ci_vm_object list, then
the VM binding may not occur. To resolve this, you must enable the Dynatrace - General
event rule. For further information about Event rules, see Event rules.
Integrate Dynatrace with OAuth authentication
Integrate Dynatrace with Event Management by authenticating Dynatrace V1 or V2 tokens in the
Dynatrace Monitor.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
The Event Management plugin must be installed on the ServiceNow AI Platform instance.
Verify Configuration Items for the hosts managed by Dynatrace exist in ServiceNow. These CIs
can be physical or virtual, and can be either manually created or discovered using IP discovery
or Cloud discovery.
Role required: evt_mgmt_integration

About this task

Dynatrace integration with OAuth authentication is available starting from the Washington DC
platform release or later.

Procedure
1. Configuration on the ServiceNow instance.
a. Create glide.oauth.inbound.client.credential.grant_type.enabled
system property to use Client Credentials grant type for OAuth inbound integrations.
▪ Type: true|false
▪ Value: true
b. Create an OAuth Entity endpoint for clients to access the instance.
i. Navigate to All > System OAuth > Application Registry and then select New.
ii. On the interceptor page, select Create an OAuth API endpoint for external clients and
then fill in the form.
iii. To create an OAuth client record, select Submit.
c. Add the OAuth Application User and the Default Grant Type to the created OAuth client
record.
i. On the OAuth Entity form, add the OAuth Application User and the Default Grant Type
fields to use the Client Credentials grant type for OAuth inbound integrations.
ii. Open the created OAuth client record.
iii. From the page header, select the More options icon.
iv. Select Configure > Form Layout
v. On the Form Layout page, add OAuth Application User and Default Grant Type from the
list of fields.
vi. Save or Update the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3034


<!-- page 3035 -->
vii. For the OAuth Application User field, select the user.
The user must have the evt_mgmt_integration role that will be used to create the events
sent by Dynatrace.

Note: To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
viii. Set Default Grant Type field value to Client Credentials.
2. In the Dynatrace console, define the integration settings.
a. Navigate to Settings > Integration > Problem notifications > Set up notifications.
b. In the Set up custom integration form, webhook URL.
https://<instance-name>.service-now.com/api/sn_em_connector/
em/inbound_event?source=dynatrace
c. Enable Use OAuth 2.0 for authentication.
d. In the OAuth 2.0 credentials section, perform the following steps.
i. Provide Access token URL as https://<instance_name>.service-now.com/
oauth_token.do.
ii. Provide the value for Client ID with the client id of the OAuth Entity Client created in
ServiceNow instance.
iii. Provide “Client secret” with the client secret of the OAuth Entity Client created in
ServiceNow instance.
iv. Select Save.
e. In the Custom payload section, add in the following payload structure for the events that will
be generated. Ensure that ImpactedEntities and ProblemDetailsJSONv2 are
passed as JSON objects, not strings.
{
"ImpactedEntities": {ImpactedEntities},
"ImpactedEntity": "{ImpactedEntity}",
"PID": "{PID}",
"ProblemDetailsHTML": "{ProblemDetailsHTML}",
"ProblemDetailsJSONv2": {ProblemDetailsJSONv2},
"ProblemDetailsMarkdown": "{ProblemDetailsMarkdown}",
"ProblemDetailsText": "{ProblemDetailsText}",
"ProblemID": "{ProblemID}",
"ProblemImpact": "{ProblemImpact}",
"ProblemSeverity": "{ProblemSeverity}",
"ProblemTitle": "{ProblemTitle}",
"ProblemURL": "{ProblemURL}",
"State": "{State}",
"Tags": "{Tags}"
}

Result

Alerts start flowing from Dynatrace agents into the Event Management plugin. The plugin extracts
information from the original Dynatrace alert message to populate the required event fields and
inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3035


<!-- page 3036 -->
Note: By default, host binding is enabled for Dynatrace events for (AWS/Azure/GCP)
providers. If all hosts in the environment are discovered using Cloud Discovery by providing
credentials and discovered resources are in the cmdb_ci_vm_object list, then the VM
binding may not occur. To resolve this, you must enable the Dynatrace - General event rule.
For further information about Event rules, see Event rules.
Integrate New Relic platform events
Integrate New Relic with Event Management by adding a standard webhook in the New Relic old
and new consoles.

Before you begin

Verify that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from New Relic by
authenticating New Relic as a data source. Set your ServiceNow AI Platform instance as the rest
endpoint using a standard webhook. Use procedure step 1 for the new console. Use procedure
step 2 for the old console.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. For the new console:
a. Create a destination.
i. Navigate toAlerts & AI > Destinations.
ii. In theAdd destinationssection, select theWebhookchannel type.
iii. In theWebhook name field, enter the webhook name.
iv. In theEndpoint URL field enter:https://<InstanceName>.service-now.com/
api/sn_em_connector/em/inbound_event?source=newrelic
v. In theBasic Authsection, enter your user name and password.

Note: Verify the evt_mgmt_integration role is assigned to the selected
user. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
vi. SelectSave destination.
b. Create a policy.
i. Navigate toAlerts & AI > Alert Conditions & Policies.
ii. SelectNew Alert policyand define a policy.
iii. SelectSet up Notifications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3036


<!-- page 3037 -->
iv. In theAdd Channelsection selectWebhook, and then select the destination that you
created in the previous substep.
v. In thePayload templatesection, paste the following JSON payload.
{ "account_id": {{nrAccountId}}, "account_name": {{json
accumulations.tag.account.[0]}}, "closed_violations_count":
{{closedIncidentsCount}}, "open_violations_count":
{{openIncidentsCount}}, "condition_description":
"{{escape accumulations.conditionDescription.[0]}}",
"condition_family_id":
{{accumulations.conditionFamilyId.[0]}}, "condition_name":
"{{escape accumulations.conditionName.[0]}}",
"current_state": {{json state}}, "details":
{{json issueTitle}}, "duration": {{#if
issueDurationMs}}{{issueDurationMs}}{{else}}0{{/if}},
"event_type": "INCIDENT", "incident_acknowledge_url":
{{json issueAckUrl}}, "incident_id": {{json issueId}},
"incident_url": {{json issuePageUrl}}, "metadata":
{ {{#if locationStatusesObject}}"location_statuses":
{{json locationStatusesObject}},{{/if}} {{#if
accumulations.metadata_entity_type}}"entity.type":
{{json accumulations.metadata_entity_type.[0]}},{{/if}}
{{#if accumulations.metadata_entity_name}}"entity.name":
{{json accumulations.metadata_entity_name.[0]}},{{/if}}
"section": "metadata" }, "owner": {{json owner}},
"policy_name": {{json accumulations.policyName.[0]}},
"policy_url": {{json policyUrl}}, "runbook_url": {{json
accumulations.runbookUrl.[0]}}, "severity": {{json
priority}}, "targets": [ { "id": "{{labels.targetId.[0]}}",
"name": "{{#if accumulations.targetName}}{{escape
accumulations.targetName.[0]}}{{else
if entitiesData.entities}}{{escape
entitiesData.entities.[0].name}}{{else}}N/A{{/if}}",
"link": "{{issuePageUrl}}", "product":
"{{accumulations.conditionProduct.[0]}}", "type": "{{#if
entitiesData.types.[0]}}{{entitiesData.types.[0]}}{{else}
}N/A{{/if}}", "labels": { {{#each
accumulations.rawTag}}"{{escape @key}}": {{#if
this.[0]}}{{json this.[0]}}{{else}}"empty"{{/if}}{{#unless
@last}},{{/unless}}{{/each}} } } ], "timestamp":
{{updatedAt}}, "violation_callback_url": {{json
issuePageUrl}}, "violation_chart_url": {{json
violationChartUrl}} }
vi. SelectSend test notificationto get the test event in your ServiceNow instance.
vii. SelectSave message.
viii. SelectActivate workflowto activate the workflow.
c. Create alert conditions to apply to the policy:
i. Navigate toAlerts & AI > Alert Conditions & Policies.
ii. SelectCreate alert condition, define the required alert details, and add it to the policy you
created in the previous step.
iii. SelectSave Condition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3037


<!-- page 3038 -->
2. For the old console.
a. Create a notification channel.
i. Navigate toAlerts & AI > Notification channels.
ii. In theChannel detailstab, select theWebhookchannel type.
iii. In theBase Urltext box, enter:https://<InstanceName>.service-now.com/
api/sn_em_connector/em/inbound_event?source=newrelic
iv. In the Basic Auth section, enter the user name and password of the relevant user.

Note: Verify the evt_mgmt_integration role is assigned to the selected
user. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
v. In theCustom Payloadsection, selectAdd Custom Payload, and select theJSONpayload
type.
vi. Paste the following JSON payload into theCustom Payload.
{ "account_id": "$ACCOUNT_ID", "account_name":
"$ACCOUNT_NAME", "closed_violations_count_critical":
"$CLOSED_VIOLATIONS_COUNT_CRITICAL",
"closed_violations_count_warning":
"$CLOSED_VIOLATIONS_COUNT_WARNING",
"condition_description": "$DESCRIPTION",
"condition_family_id": "$CONDITION_FAMILY_ID",
"condition_name": "$CONDITION_NAME", "current_state":
"$EVENT_STATE", "details": "$EVENT_DETAILS",
"duration": "$DURATION", "event_type":
"$EVENT_TYPE", "incident_acknowledge_url":
"$INCIDENT_ACKNOWLEDGE_URL", "incident_id": "$INCIDENT_ID",
"incident_url": "$INCIDENT_URL", "metadata":
"$METADATA", "open_violations_count_critical":
"$OPEN_VIOLATIONS_COUNT_CRITICAL",
"open_violations_count_warning":
"$OPEN_VIOLATIONS_COUNT_WARNING", "owner": "$EVENT_OWNER",
"policy_name": "$POLICY_NAME", "policy_url": "$POLICY_URL",
"runbook_url": "$RUNBOOK_URL", "severity": "$SEVERITY",
"targets": "$TARGETS", "timestamp": "$TIMESTAMP",
"violation_callback_url": "$VIOLATION_CALLBACK_URL",
"violation_chart_url": "$VIOLATION_CHART_URL" }
b. Create a policy.
i. Navigate toAlerts & AI > Policies.
ii. SelectNew Alert policyand define a policy.
iii. In theNotification Channelssection, selectAdd, selectWebhook, and then select the
channel you created in the previous step.
c. Create alert conditions to apply to the policy:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3038


<!-- page 3039 -->
i. Navigate toInfrastructure > Settings > Alerts.
ii. SelectCreate alert condition, define the required alert details, add it to the policy you
created in the previous step.
iii. SelectCreate.

Result

Alerts start flowing from the New Relic console into the Event Management plugin. The plugin
extracts information from the original New Relic alert message to populate the required event
fields and inserts the event into the database. In your ServiceNow AI Platform instance, navigate
toAll Eventsto see the events.

Note: By default, host binding is enabled for New Relic events for all providers
(Azure/AWS/GCP). If all hosts in the environment are discovered using Cloud Discovery by
providing credentials and discovered resources are in the cmdb_ci_vm_object list, then the
VM binding may not occur. To resolve this, you must enable theNew Relic - Generalevent
rule. For further information about Event rules, see Event rules.
Integrate New Relic with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.

Before you begin

Role required: evt_mgmt_integration

Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3039


<!-- page 3040 -->
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated by the
ServiceNow AI Platform. Copy the key to use
as part of the REST API call within the Header
or Query parameter.

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

4. Unlock Auth Scope and add: UserAccount.
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

Integrate Catchpoint events
Integrate Catchpoint with Event Management by adding an alert webhook in the Catchpoint
platform.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3040


<!-- page 3041 -->
About this task

Configure the Event Management environment for the collection of events from Catchpoint by
authenticating Catchpoint as a data source. In the Catchpoint platform, set your ServiceNow AI
Platform as the rest endpoint using a webhook.

Procedure
1. In the Catchpoint platform, create an alert webhook destination.
a. Login to the Catchpoint platform.
b. Navigate to Catchpoint > Setting > API > Alert Data Webhook to set the webhook endpoint.
c. In the API Alert Webhook, provide the following details.
API Alert Webhook form
Field

Value

Name

Any name based on your requirement.

URL

The default format of the URL to push
events from Catch Point to the ServiceNow
AI Platform instance, https://
<username>:<password>@<instancename>.service-now.com/
api/sn_em_connector/
em/inbound_event?
source=catchpoint.

On Failure Alert

The email address for the API Alert
webhook.

Notification Trigger

Select based on your requirement. The
default value is 3.

Add the following headers

▪ Authorization: Basic {Base 64 |
username:password}
▪ Content-Type: application/json

Format

Select Template and add the following
template:
{
"Source": "CatchPoint",
"severity":
"${notificationLevelId}",
"alertType": "${AlertType}",
"time_of_event":
"${alertCreateDateUtc(YY
YY-MM-DD HH:MI:SS)}",
"monitorType":
"${Switch(${MonitorTypeId},'
0', 'IE','2',
'Object','3','Emulated','8',
'Ping','9', 'Tracert','10',
'DNS-Traversal','11',
'Ping-TCP','12', 'DNS-Exp',

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3041


<!-- page 3042 -->
Field

Value

'13','DNS-Direct',
'14','Tracert-UDP', '15',
'Port-TCP','16', 'FTP','17',
'Data-Push-API','18',
'Chrome','19', 'Playback',
'20', 'Playback-Mobile',
'21', 'SMTP', '22',
'Port-UDP', '23',
'Ping-UDP', '24',
'Streaming', '25', 'API',
'26', 'Mobile',
'27', 'SFTP', '28', 'SSH',
'29', 'Tracert-TCP')}",
"testName": "${TestName}",
"testId": "${TestId}",
"testUrl": "${TestUrl}",
"testPath": "${testPath}",
"testLink": "${testLink}",
"productName":
"${ProductName}",
"clientId": "${ClientId}",
"productId": "${productId}",
"nodeName":"${nodeDetails("${
nodeName}")}",
"nodeClientServerAddress":"${
nodeDetails(\"${NodeClientAdd
ress},\"),}",
"nodeServerAddress":
"${nodeDetails(\"${nodeServe
rAddress},\"),}",
"Labels" : "${testLabels}",
"addtionalInformation":
"Test initial URL:
${testUrl}\n\nAlert type:
${AlertType}\n\nScatter
Chart:
${scatterplotChartURL}\n\nWa
terfall Chart:
${waterfallChartURL}\n\nTest
properties:
${testLink}\n\nTest time
of run / Test time of
alert (Central Time):
${reportDateLocal(YYYY-MM-DD
HH:MI:SS)} /
${alertCreateDateLocal(YY
YY-MM-DD HH:MI:SS)}"}

2. For the HTTP Endpoint monitoring tests, in the ServiceNow instance, create a CI.

Note: The Catchpoint connector supports multiple types of monitoring tests such as
Endpoint, Networking, and others. The following steps apply only to the HTTP Endpoint
monitoring tests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3042


<!-- page 3043 -->
a. Navigate to Configuration > CI Class Manager.
b. Click Hierarchy and search for HTTP(S) Endpoint.
c. In the CI Type field, select cmdb_ci_endpoint_http.
If the services are not modeled, then you should manually add the CIs under the
[cmdb_ci_endpoint_http] table. Also, the manual endpoint should be removed before the
automatic discovery of services. For other type tests CI bindings, you can create Event rules
based on their requirements.

Result

Alerts start flowing from the Catchpoint connector into the Event Management plugin. The
following table shows how the Catchpoint severity mapping translates into the ServiceNow
mapping.
Severity levels between Catchpoint and ServiceNow
Catchpoint severity

ServiceNow severity

0

Warning

1

Critical

2/3

Clear

Integrate Datadog platform events
Integrate Datadog with Event Management by adding a standard webhook in the Datadog
console.

What authentication is used
There are two methods of authentication:
• OAuth authentication: Provides enterprise-grade authentication to keep your enterprise
environment safe. Authentication is performed using Datadog Monitor V1 or V2 access tokens.
For more information, see Integrate Datadog with OAuth authentication.
• Basic webhook authentication: Provides a basic standard of authentication, without the need
for Datadog Active Directory. This authentication can be especially useful for distributed small
teams, such as SRE or DevOps teams. For more information, see Integrate Datadog with basic
authentication.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Integrate Datadog with basic authentication
Integrate Datadog with Event Management by adding a standard webhook in the Datadog
console.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3043


<!-- page 3044 -->
• Role required: evt_mgmt_integration
• The Event Management plugin must be installed on the ServiceNow AI Platform instance.
• Verify Configuration Items for the hosts managed by Datadog exist in ServiceNow. These CIs
can be physical or virtual, and can be either manually created or discovered using IP discovery
or Cloud discovery.

About this task

Configure the Event Management environment for the collection of events from Datadog. In
your Datadog console, set your ServiceNow AI Platform instance as the rest endpoint using a
standard webhook.

Procedure
1. In the Datadog console, add cloud provider tags:
a. Navigate to Menu > Infrastructure > Infrastructure List
b. Click Inspect for the VM on which the Datadog agent is installed.
c. Click Edit Tags and add the cloud_provider tag.
The tag should be suffixed with the value of aws, azure, or gcp to identify the AWS, Microsoft
Azure, or Google Cloud Platform (GCP) provider options. For example: cloud_provider:aws
d. Click Save Tags to save the new tag.

Note: Datadog adds the cloud_provider tag by default when the Azure and
Google integration is installed on the Datadog agent. Tags can also be added at the
cloud provider level. Datadog collects all the tags defined at the VM level on the cloud.
2. In the Datadog console, add a webhook:
a. Navigate to Menu > Integration > Integrations, and search for webhooks.
b. Create a webhook that includes the user ID and password of the ServiceNow user in the
endpoint.
For example, use https://<username>:<password>@<instancename>.service-now.com/api/sn_em_connector/em/inbound_event?
source=datadog.

Note: Ensure that the selected user is assigned the evt_mgmt_integration
role. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
c. Add in the following payload structure.
{
"body": "$EVENT_MSG",
"last_updated": "$LAST_UPDATED",
"event_type": "$EVENT_TYPE",
"title": "$EVENT_TITLE",
"date": "$DATE",
"org": {
"id": "$ORG_ID",
"name": "$ORG_NAME"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3044


<!-- page 3045 -->
},
"id": "$ID",
"alert_id": "$ALERT_ID",
"alert_metric": "$ALERT_METRIC",
"metric_namespace": "$METRIC_NAMESPACE",
"alert_priority": "$ALERT_PRIORITY",
"alert_transition": "$ALERT_TRANSITION",
"alert_status": "$ALERT_STATUS",
"alert_title": "$ALERT_TITLE",
"alert_type": "$ALERT_TYPE",
"host_name": "$HOSTNAME",
"priority": "$PRIORITY",
"tags": "$TAGS",
"alert_scope": "$ALERT_SCOPE"
}
3. In the Datadog console, define rules:
a. Navigate to Menu > Monitors > Manage Monitors, and configure rules on when to create a
problem from Datadog on the managed hosts.
b. In the Notify your team section, select the webhook on which the problem should be
notified.

Result

Alerts start flowing from Datadog agents into the Event Management plugin. The plugin extracts
information from the original Datadog alert message to populate the required event fields and
inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.

Note: By default, host binding is enabled for Datadog events for (AWS/Azure/GCP)
providers. If all hosts in the environment are discovered using Cloud Discovery by providing
credentials and discovered resources are in the cmdb_ci_vm_object list, then the VM
binding may not occur. To resolve this, you must enable the Datadog - General event rule.
For further information about Event rules, see Event rules.
Integrate Datadog with OAuth authentication
Integrate Datadog with Event Management by authenticating Datadog V1 or V2 tokens in the
Datadog Monitor.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
The Event Management plugin must be installed on the ServiceNow AI Platform instance.
Verify Configuration Items for the hosts managed by Datadog exist in ServiceNow. These CIs can
be physical or virtual, and can be either manually created or discovered using IP discovery or
Cloud discovery.
Role required: evt_mgmt_integration

About this task

Datadog integration with OAuth authentication is available starting from the Washington DC
platform release or later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3045


<!-- page 3046 -->
Procedure
1. Configuration on the ServiceNow instance.
a. Create glide.oauth.inbound.client.credential.grant_type.enabled
system property to use Client Credentials grant type for OAuth inbound integrations.
▪ Type: true|false
▪ Value: true
b. Create an OAuth Entity endpoint for clients to access the instance.
i. Navigate to All > System OAuth > Application Registry and then select New.
ii. On the interceptor page, select Create an OAuth API endpoint for external clients and
then fill in the form.
iii. To create an OAuth client record, select Submit.
c. Add the OAuth Application User and the Default Grant Type to the created OAuth client
record.
i. On the OAuth Entity form, add the OAuth Application User and the Default Grant Type
fields to use the Client Credentials grant type for OAuth inbound integrations.
ii. Open the created OAuth client record.
iii. From the page header, select the More options icon.
iv. Select Configure > Form Layout
v. On the Form Layout page, add OAuth Application User and Default Grant Type from the
list of fields.
vi. Save or Update the form.
vii. For the OAuth Application User field, select the user.
The user must have the evt_mgmt_integration role that will be used to create the events
sent by Datadog.

Note: To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
viii. Set Default Grant Type field value to Client Credentials.
2. In the Datadog console, add cloud provider tags.
a. Navigate to Menu > Infrastructure > Infrastructure List.
b. Select Inspect for the VM on which the Datadog agent is installed.
c. Select Edit Tags and add the cloud_provider tag.
The tag must be suffixed with the value of aws, azure, or gcp to identify the AWS, Microsoft
Azure, or Google Cloud Platform (GCP) provider options. For example: cloud_provider:aws.
d. Select Save Tags.

Note: Datadog adds the cloud_provider tag by default when the Azure and Google
integration is installed on the Datadog agent. Tags can also be added at the cloud
provider level. Datadog collects all the tags defined at the VM level on the cloud.
3. In the Datadog console, add a webhook.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3046


<!-- page 3047 -->
a. Navigate to Menu > Integration > Integrations and search for webhooks.
b. On the webhook tile, select Configure.
c. Select the Auth Methods tab and then select New Auth Method.
d. Enter the name and select the protocol as OAuth 2.0 Client Credentials.
e. Provide Access token URL as https://<instance_name>.service-now.com/
oauth_token.do.
f. Provide the value for Client ID with the client id of the OAuth Entity Client created in
ServiceNow instance.
g. Provide “Client secret” with the client secret of the OAuth Entity Client created in
ServiceNow instance.
h. Select Save.
i. Create webhook URL as
https://<instance-name>.service-now.com/api/sn_em_connector/
em/inbound_event?source=datadog
j. Select the OAuth Method created in the previous steps in AuthMethod dropdown.
k. Add in the following payload structure.
{
"body": "$EVENT_MSG",
"last_updated": "$LAST_UPDATED",
"event_type": "$EVENT_TYPE",
"title": "$EVENT_TITLE",
"date": "$DATE",
"org": {
"id": "$ORG_ID",
"name": "$ORG_NAME"
},
"id": "$ID",
"alert_id": "$ALERT_ID",
"alert_metric": "$ALERT_METRIC",
"metric_namespace": "$METRIC_NAMESPACE",
"alert_priority": "$ALERT_PRIORITY",
"alert_transition": "$ALERT_TRANSITION",
"alert_status": "$ALERT_STATUS",
"alert_title": "$ALERT_TITLE",
"alert_type": "$ALERT_TYPE",
"host_name": "$HOSTNAME",
"priority": "$PRIORITY",
"tags": "$TAGS",
"alert_scope": "$ALERT_SCOPE"
}

Result

Alerts start flowing from Datadog agents into the Event Management plugin. The plugin extracts
information from the original Datadog alert message to populate the required event fields and
inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3047


<!-- page 3048 -->
Note: By default, host binding is enabled for Datadog events for (AWS/Azure/GCP)
providers. If all hosts in the environment are discovered using Cloud Discovery by providing
credentials and discovered resources are in the cmdb_ci_vm_object list, then the VM
binding may not occur. To resolve this, you must enable the Datadog - General event rule.
For further information about Event rules, see Event rules.
Integrate Google Cloud Platform (GCP) events
Integrate Google Cloud Platform (GCP) with Event Management by adding a standard webhook
in the GCP console.

Before you begin
• Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
• The Event Management plugin must be installed on the ServiceNow AI Platform instance.
• Verify Configuration Items for the hosts managed by GCP exist in ServiceNow. These CIs can
be physical or virtual, and can be either manually created or discovered using IP discovery or
Cloud discovery.
• The Event Management Connector plugin supports GCP alert data in JSON 1.2 format only.
• Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from GCP. In your
GCP console, set your ServiceNow AI Platform instance as the rest endpoint using a standard
webhook.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. In the GCP console, add a webhook.
a. Navigate to Monitoring > Alerting, and click Edit Notification Channels.
b. In the Webhooks section, click Add New.
c. Select the Use HTTP Basic Auth check box, and enter the user name and password of the
relevant ServiceNow user.

Note: Ensure that the selected user is assigned the evt_mgmt_integration
role. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
d. Enter the endpoint URL.
For example, usehttps://<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event?source=googlemonitor.
2. In the GCP console, create an alerting policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3048


<!-- page 3049 -->
a. Navigate to Monitoring > Alerting, and select Create Policy.
b. Configure policy conditions that initiate alerts when the conditions are violated.
c. Select the webhook on which the problem should be notified.

Note: If you need to directly open an incident in the GCP console from the alert,
navigate to Quick Response (in Alert) > Show Incident in GCP Console.

Result

Alerts start flowing from GCP into the Event Management plugin. The plugin extracts information
from the original GCP alert message to populate the required event fields and inserts the event
into the database. In your ServiceNow AI Platform instance, navigate toAll Events to see the
events.
GCP does not send values such as the severity level in the payload. The default severity is
Minor, which can be changed in thePush Connector Configuration section of Push
Connectors > Google Monitor Push Connector. The valid values of severity are1- Critical,2Major,3- Minor,4- Warning, and5- Info.

Note:
To map the GCP hosts to thecmdb_ci_serverrecord instead ofcmdb_ci_vm_object, disable
theGoogle Monitor - Generalevent rule created for GCP. For further information about
event rules, see Event rules.
Event collection from Google Cloud Platform (GCP)
The MID WebService Event Collector enables you to collect JSON formatted event messages
sent from Google Cloud Platform (GCP).

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure that you:
• Deploy and start the MID Server. See MID Server configuration

.

• Configure and start the MID Web Server. See Configure the MID Web Server extension.
• Configure and start the MID WebService Event Collector. See Configure the MID WebService
Event Collector Context.
Role required: evt_mgmt_admin

About this task

JSON formatted event messages are sent from Google Cloud Platform. The
MID Server transforms the collected event messages by parsing them using the
TransformEvents_MidGoogleMonitor script include, located here: Event Management >
Integrations > PushConnectors. In the Push Connectors page, click Google Monitor Mid Push
Connector.
The default format of the URL to push event messages from the GCP to the MID Server
is http://<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/
em/inbound_event?Transform=TransformEvents_MidGoogleMonitor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3049


<!-- page 3050 -->
Variables in the default URL
Variable

Description

MID_Server_IP

IP address of the MID Web Server Extension.

MID_Web_Server_Port

Listening port of the MID Web Server
Extension.

MID_Web_Server_User

Username for the MID Web Server Extension.

MID_Web_Server_Password

Password of the user of the MID Web Server.

The following procedure describes the collection of JSON formatted event messages using basic
authentication.

Procedure
1. In the Google Cloud Platform (GCP) console, make sure the MID Server IP is accessible from
the GCP console and MID rest point is accessible from GCP or install the MID Server on a GCP
VM and provide the GCP VM external IP address in the URL.
In the GCP console, create a firewall rule.
a. Navigate to VPC Network > Firewall > Create Firewall.
b. Set the direction to ingress to allow the mid_web_server_port to connect.
c. Add the GCP VM that the MID Server is installed on to the Applicable to instances list.
2. In the GCP console, add a webhook.
a. Navigate to Monitoring > Alerting and click Edit Notification Channels.
b. In the Webhooks section, click Add New.
c. Select the Use HTTP Basic Auth check box, and enter the username and password of the
MID Webserver User.

Note: Ensure that the selected user is assigned the evt_mgmt_integration
role. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
d. Enter the endpoint URL.
For example, use http://<MID_Server_IP>:<MID_Web_Server_Port>/api/
mid/em/inbound_event?Transform=TransformEvents_MidGoogleMonitor
3. In the GCP console, create an alerting policy.
a. Navigate to Monitoring > Alerting and click Create Policy.
b. Configure the policy conditions that initiate alerts when the conditions are violated.
c. Select the webhook notification channel on which the problem should be notified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3050


<!-- page 3051 -->
d. Select the Notify on incident closure check box to send the closure events to the MID
Server and save the alert policy.

Note: If you need to directly open an incident in the GCP Console from the alert,

navigate to Quick Response (in Alert) > Show Incident in GCP Console. For more
information about creating an alert policy, see Managing alerting policies
on the
Google Cloud documentation site.

Result

GCP does not send values such as the severity level into the payload. The default severity is
Minor, which can be changed in the Push Connector Configuration section of Push
Connectors > Google Monitor MID Push Connector. The valid values of severity are 1- Critical,
2- Major, 3- Minor, 4- Warning, and 5- Info.
Integrate Grafana events
Integrate Grafana with Event Management by adding a standard webhook in the Grafana
console.

Before you begin
• Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
• The Event Management plugin must be installed on the ServiceNow AI Platform instance.
• The CI binding happens through the IP, instances should be discovered as servers to initiate
the binding. CIs discovered through cloud or CIs in cmdb_ci_vm_object don’t get bounded as
Grafana doesn't provide any information for object IDs.
• Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from Grafana. In your
Grafana console, set your ServiceNow AI Platform instance as the rest endpoint using a standard
webhook.

Note: Perform steps 1 and 2 for Grafana v7.4.3. For Grafana v9.3.2. skip to step 3.
Procedure

Grafana v7.4.3
1. In the Grafana console, create a notification channel.
a. Navigate to Alerting > Notification Channels.
b. Click New Channel and select the type as Webhook.
c. Enter a URL.
For example, use https://<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event?source=grafana.
d. Under the Optional WebHook settings, select the HTTP Method, POST, and enter the user
name and password of the relevant ServiceNow user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3051


<!-- page 3052 -->
Note: Ensure that the selected user is assigned the evt_mgmt_integration
role. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
e. Click Test to verify the connection.
2. In the Grafana console, create alerting rules.
a. Click Edit on the required panel and then Create Alert.
b. In the Alert tab, add the following tags:

Tags

Description

Severity

(This tag is optional and has to be lower
cased.) Severity with which the alert has to
be created.

Count

(This tag is required, otherwise the alerts
don’t close automatically in ServiceNow.)
The number of devices, hosts, or servers
monitored by this alert rule.

c. Add the notification channel under Notifications in the alert rule.
d. Click Save.
e. Navigate to Alerting > Alert Rules to access the created rule.
Grafana v9.3.2.
3. In the Grafana console, create a contact point.
a. Navigate to Alerting > Contact Points.
b. Click New Contact Point, enter a name, and select the type as Webhook.
c. Enter a URL.
For example, use https://<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event?source=grafana.
d. Under the Optional WebHook settings, select the HTTP Method, POST, and enter the user
name and password of the relevant ServiceNow user.

Note: Ensure that the selected user is assigned the evt_mgmt_integration
role. To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
e. Click Save and Test to verify the connection.
4. In the Grafana console, create a notification policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3052


<!-- page 3053 -->
a. Navigate to Alerting > Notification Policies.
b. Select New Policy, add matchers.
Matchers are labels that direct alert rules to the contact point.
c. Select your contact point.
d. Select Save Policy.
5. In the Grafana console, create alert rules.
a. Navigate to Alerting > Alert Rule.
b. Select New Rule.
c. Set the Query and Alert Condition.
d. Set the data source, metrics, and the necessary filters.
e. Set the alert evaluation behavior.
f. Enter the rule name.
g. In the summary and annotations section, add a summary or a description.
h. From the scroll down, select +Add New.
i. Enter the node, resource, and metric information.
This information is required for the node, resource, and metric_name fields for the event.

Note: Use the value string to pass these values. For example, a node can be
{{ $values.C0.Labels.instance }}.
j. Under custom labels, provide the required labels to direct your notifications to the
appropriate contact point.

Note: You can also pass the severity under custom labels. The same is used for
events. The available severity options are: critical, major, minor, warning.
k. Click Save.

Result

Alerts start flowing from Grafana into the Event Management plugin. The plugin extracts
information from the original Grafana alert message to populate the required event fields and
inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3053


<!-- page 3054 -->
Note:
• For Grafana v7.4.3, you may see extra clear events coming into ServiceNow which aren’t
bound to an alert. Ignore them as they’re created to overcome the issue of Grafana not
sending information in the clear notification.
• A severity parameter is added which is used only for Grafana 8 and above. The provided
value is used as a severity for an event if the severity isn’t passed in custom labels.
Integrate Grafana with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.

Before you begin

Role required: evt_mgmt_integration

Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3054


<!-- page 3055 -->
Field

Description

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated by the
ServiceNow AI Platform. Copy the key to use
as part of the REST API call within the Header
or Query parameter.

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

4. Unlock Auth Scope and add: UserAccount.
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

Integrate Honeycomb events
Integrate Honeycomb with Event Management by creating a webhook and configuring it as a
trigger in the Honeycomb platform.

Before you begin

Discovery for Honeycomb services and datasets is not supported. For event/CI binding to work,
manually create a CI in the ServiceNow instance.
Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

About this task

Configure the Event Management environment for the collection of events from Honeycomb by
authenticating Honeycomb as a data source. In the Honeycomb platform, set your ServiceNow AI
Platform as the rest endpoint using a webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3055


<!-- page 3056 -->
Procedure
1. In the Honeycomb platform, create an integration of type=webhook.
a. Navigate to Usage > Integrations.
b. Select the Add Integration button.
c. Enter values in the Name and Webhook URL fields.
When enting the Webhook URL, use the following format: https://
<USERNAME>:<PASSWORD>@<INSTANCE_NAME>.service-now.com/api/
sn_em_connector/em/inbound_event?source=honeycomb
d. In the Provider field, select Webhook.
e. Select Add to complete webhook creation.
2. Add the webhook to a trigger.
a. Navigate to Triggers > Create New Trigger.
b. Add a name and description for the trigger in the relevant fields.
c. In the Alerts section, configure the threshold and frequency in the relevant fields.
d. In the Recipients section, select Add Recipient and select the webhook created in step 1.
e. Select Save Trigger.

Note: To view the trigger in the Honeycomb platform, navigate to Quick Response (in
Alert) and select Show Trigger in Honeycomb.

Result

Alerts flow from the Honeycomb connector into the Event Management plugin. The plugin
extracts information from the original Honeycomb trigger message to populate the required event
fields, and inserts the event into the database. You can view the events in your ServiceNow AI
Platform instance by navigating All Events.
Honeycomb does not send severity information in the trigger message. The default severity
for the Honeycomb alert is 3 - Minor, which can be changed in the Push Connector
Configuration section of Push Connectors > Honeycomb Push Connector . The valid severities
are: 1- Critical, 2- Major, 3- Minor, 4- Warning, and 5- Info.
Integrate Instana events
Integrate Instana with Event Management by adding a standard webhook in the Instana console.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

Procedure
1. In the Instana console, navigate to Settings > Events & Alerts > Alert Channels.
2. Open the Add Alert Channel dropdown and select the Generic Webhook option.
3. In the Webhook URLs field, create an alert channel by entering the following URL:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3056


<!-- page 3057 -->
https://<instance>.service-now.com/api/sn_em_connector/
em/inbound_event?source=instana
4. To authenticate the ServiceNow URL, enter the following in the Custom HTTP Request
Headers:

Field

Value

Key

Authorization

Value

Basic <base64_encoded
username:password>

5. Configure Instana to create alerts for event types or events.
a. Navigate to Settings > Events & Alerts > Alerts.
b. Select New Alert.
c. In the Events section, select one of the following:
▪ Alert on Event Type(s)
▪ Alert on Event(s)
d. When creating alerts for event types:
i. Select the type of events for which you want alerts to be created, such as Critical Issues,
All Incidents, Warning issues, and so forth.
ii. In the Alerting section, select the servicenow alert channel.
e. When creating alerts for events:
i. Select the events for which you want alerts to be created.
ii. In the Alerting section, select the servicenow alert channel.
When Instana creates an alert, the alert is sent to the ServiceNow instance. Alerts created
for the host entity are bound to the Server (cmdb_ci_server) table, and alerts created for the
website entity are bound to the HTTP(S) (cmdb_ci_endpoint_http) table.
Add other entity types in the Instana - ci_type Event Field Mapping table to ensure that the
entity binds with the correct CI in the ServiceNow instance.
6. To view the event in the Instana source system, you can access it from a ServiceNow instance:
a. Navigate to All > Event Management > Service Operations Workspace.
b. Select All Alerts.
c. Select the relevant alert.
d. On the Details tab, locate the Actions section on the right side of the page and in the Show
Event on Instana UI cell, select Launch app.
Integrate ServiceNow Cloud Observability Events
Integrate ServiceNow Cloud Observability with Event Management by adding a standard
webhook in the ServiceNow Cloud Observability platform. Download the Event Management
Connector plugin from the ServiceNow Store so you can integrate with ServiceNow Cloud
Observability.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3057


<!-- page 3058 -->
Before you begin
• Role required: evt_mgmt_integration

About this task

Authenticate ServiceNow Cloud Observability as a data source to enable Event Management to
collect events from ServiceNow Cloud Observability. In your ServiceNow Cloud Observability
platform, use a standard webhook to set your ServiceNow AI Platform instance as the rest
endpoint.

Note: Ensure the evt_mgmt_integration role is assigned to the selected user. To ensure
proper authentication, use the least privileged user with the evt_mgmt_integration role,
rather than a high privileged user.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. Create a CI.

Note: Discovery for ServiceNow Cloud Observability services isn’t supported. Create a
CI manually in a Service Instance (cmdb_ci_service_auto) table to enable binding.
a. Navigate to All > Configuration > Application Service.
b. Select New.
c. In the form, enter the name.
The name must be the service name provided in the ServiceNow Cloud Observability
platform.
d. From the Operational Status list, set the operational status to Operational.
e. Select Next.
f. Select Done.
2. In your ServiceNow Cloud Observability platform, create a notification destination.
a. From the navigation bar, select Alerts.
b. Select the Notification destinations tab.
c. Select Create a destination.
d. Select ServiceNow or webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3058


<!-- page 3059 -->
Use the ServiceNow destination to connect only with the ServiceNow platform. If you have
any issues with the ServiceNow destination, then use the webhook destination option.

3. In your ServiceNow Cloud Observability platform, create a ServiceNow notification destination.
a. In the Name field, enter a name for the ServiceNow destination.
b. In the URL field, provide the ServiceNow instance URL.
This is the default format of the URL to push events from ServiceNow Cloud Observability
to the ServiceNow AI Platform instance. Use this format: https//<instancename>.servicenow.com/api/sn_em_connector/em/inbound_event?
source=lightstep
c. In the Username field, enter your ServiceNow user name.
d. In the Password field, enter your ServiceNow user password.
Create a ServiceNow destination

Note: In a ServiceNow instance, CI binding occurs only if the name of the service in
the ServiceNow Cloud Observability platform value matches the name fields of the CI
you created in the cmdb_ci_service_auto table.
e. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3059


<!-- page 3060 -->
4.

Note: If you have any issues with the ServiceNow destination in the previous step, then
use the webhook destination option.

In your ServiceNow Cloud Observability platform, create a webhook notification destination.
a. In the Name field, enter a name for the webhook destination.
b. In the URL field, provide the webhook URL.
This is the default format of the URL to push events from ServiceNow Cloud
Observability to the ServiceNow AI Platform instance. Use this format: https//
&lt;username>:&lt;password>@&lt;instance-name>.service-now.com/
api/sn_em_connector/em/inbound_event?source=lightstep
c. Select Payload Template.
d. Select the ServiceNow Event Management option.

Note: In a ServiceNow instance, CI binding occurs only if the name of the service in
the ServiceNow Cloud Observability platform value matches the name fields of the CI
you created in the cmdb_ci_service_auto table.
e. If you selected the Default Template option in the previous substep, then select New
Header and in the Headers field, enter the service-name and define its value.

Note: In a ServiceNow instance, CI binding occurs only if the service-name header
value matches the name fields of the CI you created in the cmdb_ci_service_auto
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3060


<!-- page 3061 -->
Create a Webhook

f. Select Create.
5. In the ServiceNow Cloud Observability platform, configure an alert.
a. From the navigation bar, select Alerts.
b. Select Create an Alert and enter an alert name.
c. In the Alert Configuration area, define the threshold.
d. According to the destination that you created, in the Notification Rules area, in the Send
Notifications to field, select your notification destination type and search for the destination
name.

e. Select Save.
The default severity for stream-based alerts is Critical. You can change the default in the
Push Connector Configuration area of an ServiceNow AI Platform instance. The valid severity
values are:
▪ 1- Critical
▪ 2- Major
▪ 3- Minor
▪ 4- Warning
▪ 5- Info
Integrate Logicmonitor events
Integrate Logicmonitor with Event Management to send events into ServiceNow by adding a
webhook using Basic Authentication, it will also be available with bi-directional functionality.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3061


<!-- page 3062 -->
Before you begin
• Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
• The Event Management plugin must be installed on the ServiceNow AI Platform instance.
• Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from Logicmonitor. In
your Logicmonitor console, set your ServiceNow AI Platform instance as the rest endpoint using
a standard webhook.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. In the Logicmonitor console, create a custom HTTP Delivery integration.
a. Navigate to Settings > Integrations and click Add > Custom HTTP Delivery Integration.
b. In the Manage Custom HTTP Delivery Integration form, fill in the Name and Description field
and select the Use the same URL and data to notify on various alert activity check box.
c. Specify when to send a notification on alert activities by selecting the Acknowledged,
Cleared, and Escalated/De-escalated check boxes as needed.

Note: If you are using the bi-directional Connector update, do not select the

Acknowledged check box. Doing so can trigger a loop back to the Alert and close the
Alert record unintentionally.
d. In the HTTP method menu, select HTTP POST.
e. Fill in the Username and Password field, and enter a URL with the format as, https://
{Instance-name}.service-now.com/api/sn_em_connector/
em/inbound_event?source=logicmonitor.
f. Under the Alert Data section, select Raw and select the format as JSON.
g. Add the custom payload provided in the description of the connector.
h. Click Test Alert Delivery to verify the connection or Save.
2. When you're finished creating the integration, create an escalation chain for the alert settings.
a. Navigate to Settings > Alert Settings > Escalation Chains and click Add.
b. In the Manage Testing chain form, fill in the Name and Description field and select the rate
at which the alerts should be notified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3062


<!-- page 3063 -->
c. Under the Stages section, select the Add icon

to add a stage and click Save.

d. When you create the new stage, select the Add icon
the integration as the Contact Method and click Save.

again to search for the user and add

3. After creating the escalation chain, configure alert rules for the chain you created.
a. Navigate to Settings > Alert Settings > Alert Rules, and click Add.
b. On the Add Alert window, configure the conditions that initiates the alerts when conditions
are violated.
c. Under the Escalation chain menu, select the escalation chain you created.
d. Click Save.

Note: To map the CI to the cmdb_ci_vm_object record instead of the cmdb_ci_server,
enable the event rule created for Logicmonitor. The Logicmonitor's collector name, which
comes in as a hostname in the payload, should be the same as the object_id of the
virtual machine discovered in the cmdb_ci_vm_object record.
Event collection from Logicmonitor
The MID WebService Event Collector enables you to collect JSON formatted event messages
from the Logicmonitor.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure that you:
• Deploy and start the MID Server. See MID Server configuration

.

• Configure and start the MID Web Server. See Configure the MID Web Server extension.
• Configure and start the MID WebService Event Collector. See Configure the MID WebService
Event Collector Context.
Role required: evt_mgmt_admin

About this task

JSON formatted event messages are sent from Logicmonitor. The MID Server transforms the
collected event messages by parsing them using the TransformEvents_MidLogicmonitor script
include, located here: Event Management > Integrations > PushConnectors. In the Push
Connectors page, click Logicmonitor Mid Push Connector.
The default format of the URL to push event messages from Logicmonitor to the MID
Server is http://<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/
em/inbound_event?Transform=TransformEvents_MidLogicmonitor.
Variables in the default URL
Variable

Description

MID_Server_IP

IP address of the MID Web Server Extension.

MID_Web_Server_Port

Listening port of the MID Web Server
Extension.

MID_Web_Server_User

Username for the MID Web Server Extension.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3063


<!-- page 3064 -->
Variables in the default URL (continued)
Variable

Description

MID_Web_Server_Password

Password of the user of the MID Web Server.

Procedure
1. In the Logicmonitor console, create a custom HTTP Delivery integration.
a. Navigate to Settings > Integrations and click Add > Custom HTTP Delivery Integration.
b. In the Manage Custom HTTP Delivery Integration form, fill in the Name and Description field
and select the Use the same URL and data to notify on various alert activity check box.
c. Specify when to send a notification on alert activities by selecting the Acknowledged,
Cleared, and Escalated/De-escalated check boxes as needed.
d. In the HTTP method menu, select HTTP POST.
e. Fill in the Username and Password field, and enter a URL with the format as, http://
<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/em/inbound_event?
Transform=TransformEvents_MidLogicmonitor.
f. Under the Alert Data section, select Raw and select the format as JSON.
g. Add the custom payload provided in the description of the connector.
h. Click Test Alert Delivery to verify the connection or Save.
2. When you're finished creating the integration, create an escalation chain for the alert settings.
a. Navigate to Settings > Alert Settings > Escalation Chains and click Add.
b. In the Manage Testing chain form, fill in the Name and Description field and select the rate
at which the alerts should be notified.
c. Under the Stages section, select the Add icon

to add a stage and click Save.

d. When you create the new stage, select the Add icon
the integration as the Contact Method and click Save.

again to search for the user and add

3. After creating the escalation chain, configure alert rules for the chain you created.
a. Navigate to Settings > Alert Settings > Alert Rules, and click Add.
b. On the Add Alert window, configure the conditions that initiates the alerts when conditions
are violated.
c. Under the Escalation chain menu, select the escalation chain you created.
d. Click Save.

Note: To map the CI to the cmdb_ci_vm_object record instead of the cmdb_ci_server,
enable the event rule created for Logicmonitor. The Logicmonitor's collector name, which
comes in as a hostname in the payload, should be the same as the object_id of the
virtual machine discovered in the cmdb_ci_vm_object record.
Integrate Oracle Cloud Infrastructure alarms
Integrate Oracle Cloud Infrastructure (OCI) alarms with Event Management to send events into
ServiceNow by adding a https subscription using Basic Authentication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3064


<!-- page 3065 -->
Before you begin
• Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
• Oracle Cloud Discovery must be performed to ensure that the created alerts are bound to the
configuration items in the ServiceNow AI Platform. For more information, see Oracle Cloud
Infrastructure Discovery.
• Role required: evt_mgmt_integration

About this task

The Oracle Cloud Notifications service enables you to set up communication channels for
publishing messages using topics and subscriptions. When a message is published to a topic,
the Notifications service sends the message to all of the topic's subscriptions.
When an Oracle Management Cloud alert is raised, worsens in severity, or clears, you may want
to be actively notified through an https custom URL to the ServiceNow instance. The Oracle
®
Cloud connector will be used to create events in ServiceNow .
You can configure the Event Management environment for the collection of alarms from Oracle
Cloud by setting your ServiceNow AI Platform instance as the https subscription.

Procedure
1. In the Oracle Cloud console, set up a https subscription.
a. On the Create Subscription form, under the Configure Subscription section in the Protocol
list, select HTTPS (Custom URL).

Note: When the subscription is created, the password will not be shown in clear text.
b. In the URL field, enter a URL with the format: https://
<username>:<password>@<instancename>.service-now.com/api/
sn_em_connector/em/inbound_event/oraclecloud.
For example, https://oracleevents:oracleevents@instance1.servicenow.com/api/sn_em_connector/em/inbound_event/oraclecloud.
When the subscription is created with the ServiceNow instance URL, the Oracle Cloud Push
connector will receive a payload that will confirm the subscription and is moved to an Active
state in the Oracle Cloud console.
2. In the Oracle Cloud console, you can create an alarm definition and set the notification
destination with the topic containing the https ServiceNow subscription.
a. Navigate to Observability & Management > Alarm Definitions.
b. Click Create Alarm or select an existing alarm that you want to set the topic containing the
https ServiceNow subscription.
c. In the Destinations section in the Topic list, select the topic with the https ServiceNow
subscription.
When an alarm is triggered in the Oracle Cloud console, the same alarm will be received in
the Oracle Cloud Push connector in the ServiceNow instance and an event will be created.

Result

Depending on the Oracle Cloud alarm resource, the alert will bind to the CI using the following
Event Field Mapping:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3065


<!-- page 3066 -->
You can create other event rules or modify the Event Field Mapping to map to other resource
types.
Once the https subscription is configured and an Oracle Cloud alarm triggers a message in
Event Management the message:
• Authenticates the Oracle Cloud alarm message with the relevant ServiceNow user given in the
https subscription.
• Extracts information from the original Oracle Cloud alarm message to populate the required
event fields and inserts the event into the ServiceNow AI Platform database.
• Captures specified content in the Additional Information field of the event form.
Integrate Prometheus events
Integrate Prometheus with Event Management by adding a standard webhook in Prometheus's
Alert Manager.

Before you begin
• Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
• Verify Configuration Items for the hosts managed by Prometheus exist in ServiceNow. These
CIs can be physical or virtual, and can be either manually created or discovered using IP
discovery or Cloud discovery.
• Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from Prometheus.
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3066


<!-- page 3067 -->
Procedure
1. In the Prometheus instance, add a webhook.
a. Navigate to Alertmanager.yml and add a webhook entry under the recievers.
b. Enter the endpoint uRL. For example, use https://<instance-name>/servicenow.com/api/sn_em_connector/em/inbound_event?source=prometheus.
c. Type basic_auth underneath http_config.
d. Add a username and password under basic_auth, then add the created webhook name
in the receiver under route.
2. In the Prometheus instance, create an alert rule.
a. Create a file for the alert rule and add its' path inside prometheus.yml under rules_files.
b. Create the alert rule as per the prometheus format using PromQL.
c. Restart AlertManager and Prometheus to reflect the changes.

Result

Alerts start flowing from Prometheus into the Event Management plugin. The plugin extracts
information from the original Prometheus alert message to populate the required event fields
and inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.
If severity isn't received in the payload, the default severity is Major, which can be changed in
the Push Connector Configuration section of Push Connectors > Prometheus Push
Connector. The valid values of severity are 1- Critical, 2- Major, 3- Minor, 4- Warning, and 5Info.

Note:
To map hosts to the cmdb_ci_vm_object record instead of cmdb_ci_hardware,
enable the Prometheus VM Binding event rule created for Prometheus. For further
information about event rules, see Event rules.
Integrate Sentry events
Integrate Sentry with Event Management by adding a standard webhook in the Sentry platform.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Discovery for Sentry services are not supported. You must create a CI manually in the
[cmdb_ci_service_auto] table to enable binding by completing the following steps:
1. From the navigation bar, go to Configuration/Application Service.
2. Provide the project name you are monitoring on the Sentry application.
3. Set the operational status to Operational.
4. Click Next then Done.
Role required: evt_mgmt_admin

About this task

Configure Event Management for the collection of events from Sentry by authenticating Sentry
as a data source. In your Sentry platform, use a standard webhook to set your ServiceNow AI
Platform as the rest endpoint.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3067


<!-- page 3068 -->
Procedure
1. In the Sentry console, create an internal integration.
a. Navigate to Settings > Developer Settings.
b. Click New Internal Integration.
c. In the Internal Integration Details section, on the Sentry Integration Details page, fill in the
fields.
Sentry Integration Details
Fields

Description

Name

Name of your integration.

Webhook URL

The default format of the URL to push
events from Sentry to the ServiceNow AI
Platform instance. For example, https://
<username>:<password>@<instancename>.service-now.com/
api/sn_em_connector/
em/inbound_event?source=sentry.

Alert Rule Action

Option to enable the integration.

Note: When enabled, the integration
becomes available in the Issue Alert
and Metric Alert rules in Sentry. The
alerts will be sent to the ServiceNow
instance.
Schema

Schema for your UI components. This field
should be left empty.

Overview

Description for the integration.

Authorized JavaScript Origins

Auth Tokens from the browser to enable the
origins of the pages making the requests.
This field should be left empty.

d. In the Permissions section, under Issue & Event, specify the level of access you want.
You can select Read, Read & Write, or Admin.
e. In the Webhooks section, select the Issue check box.
f. Click Save Changes.
2. In the Sentry console, create alert rules and configure them to receive alerts for issues from
Sentry to the ServiceNow instance.
a. Navigate to Alerts > Create Alert Rule.
b. Select the alert type and click Set Conditions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3068


<!-- page 3069 -->
Note: The Issues alert type creates issue alerts. The other alert options create metric
alerts.
c. On the Alert Rule page, create either an issue alert or a metric alert.
Alert Rule
Option

Issue alert

Description

i. Enter the environment, team, and alert
name for your alert.
ii. Under Set conditions, enter the When and
If conditions that will trigger the alert.
iii. For the Then condition, select Send a
notification via an integration and select
your internal integration from the list.
iv. Set the action interval for the alert.

Metric alert

i. Add a filter to your transactions.
ii. Select the function and time interval.
iii. Set the thresholds that will trigger the
alert.
iv. Add the actions to be performed when the
thresholds defined are met.
v. Add your internal integration from the list
to the list of actions to receive the alerts.
vi. Add a rule name and team for the alert.

d. Click Save Rule.
Integrate Scout APM events
Enable the collection of events from Scout APM by authenticating Scout APM as a data source to
integrate it with Event Management.

Before you begin

The Event Management plugin (com.glideapp.itom.snac) must be installed.
Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Discovery for Scout APM applications is not supported. To enable binding, you must manually
create a CI in a ServiceNow instance in the Service Instance [cmdb_ci_service_auto] table.
Role required: evt_mgmt_admin

Procedure
1. Enable Scout APM monitoring as an application service on your ServiceNow instance.
a. Navigate to Configuration > Application Service.
b. Provide the application name that you are monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3069


<!-- page 3070 -->
c. Set the operational status to Operational.
d. Select Next
e. Select Done.
2. Log in to the Scout APM console.
3. Create a notification channel.
a. Navigate to Organization > Alerts & Notifications.
b. Select New Webhook.
c. Provide the name of the webhook and the webhook URL.
Use the following URL format: https://
<USERNAME>:<PASSWORD>@<INSTANCE_NAME>.service-now.com/api/
sn_em_connector/em/inbound_event?source=scout
d. Validate whether the webhook is operational by selecting Send Test Alert.
A new event appears on your ServiceNow instance in the Events [em_event] table with the
data source as Scout APM.
4. In the Organization section, create a new notification group.
a. On the Alerts & Notifications page, navigate to Organization > Notification Groups.
b. Add a name for the group and select the webhook channel you created.
c. Select the Create Notification Group button.
5. In the application section, create alert conditions and configure them to receive alerts for
notifications from Scout APM to the ServiceNow instance.
a. Navigate to Applications > Alert Conditions.
b. Select the type of alert condition.
For more information, see the Scout APM documentation.
c. Select Create Alert condition.
d. In the Alert Conditions table, select the notification group you created.
The alert condition is displayed on the Scout console.
6. Configure error notifications to receive alerts for errors from the Scout APM to the ServiceNow
instance.
a. Navigate to Application > Error Notifications.
b. Add a name and description for the notification.
c. Select the notification group that you created.
The Scout APM notification channel is configured with the error notifications.
d. Select the Add Notification Group button.
For any new error notifications in the Scout APM application, a new event will be generated
in the Events [em_event] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3070


<!-- page 3071 -->
Result

You can view all notifications on your ServiceNow instance in the Events [em_event] table with
the data source as Scout APM.
Integrate Sumo Logic events
Use the Sumo Logic push connector to integrate Sumo Logic with Event Management by adding
a standard webhook in the Sumo Logic platform.

Before you begin

Ensure that the Event Management connector's plugin is installed on the ServiceNow AI Platform
instance.
Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from Sumo Logic
by authenticating Sumo Logic as a data source. In the Sumo logic site, set your ServiceNow AI
Platform instance as the rest endpoint using a webhook.

Procedure
1. In the Sumo Logic site, create a notification destination.
2. Go to Monitoring and select Custom Webhook.
3. Fill in the form with the Name, Description, and the URL.
Use this URL format to push events from Sumo logic to the ServiceNow Instance .https://
<username>:<password>@<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event?source=sumologic

Note: Use a credential having the evt_mgmt_integration role as the username and
password.
In the Payload section, use the following template:
{
"type": "{{MonitorType}}",
"node": "{{ResultsJSON._sourceHost}}",
"metric_name": "{{Name}}",
"description": "monitor Query: {{Query}}\n
Trigger Condition:{{TriggerCondition}}\n
Trigger Value:{{TriggerValue}}\n Trigger Time
Range:{{TriggerTimeRange}}\n View Trigger
Query:{{TriggerQueryURL}}\n View Monitor:{{QueryURL}} \n
Results:{{ResultsJSON}}",
"name": "{{Name}}",
"short_description": "{{Description}}",
"MonitorType": "{{MonitorType}}",
"Query": "{{Query}}",
"QueryURL": "{{QueryURL}}",
"ResultsJson": "{{ResultsJson}}",
"NumQueryResults": "{{NumQueryResults}}",
"Id": "{{Id}}",
"DetectionMethod": "{{DetectionMethod}}",
"TriggerType": "{{TriggerType}}",
"TriggerTimeRange": "{{TriggerTimeRange}}",
"time_of_event": "{{TriggerTime}}",
"TriggerCondition": "{{TriggerCondition}}",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3071


<!-- page 3072 -->
"TriggerValue": "{{TriggerValue}}",
"TriggerTimeStart": "{{TriggerTimeStart}}",
"TriggerTimeEnd": "{{TriggerTimeEnd}}",
"SourceURL": "{{SourceURL}}",
"alertResponseUrl": "{{alertResponseUrl}}"
}
Log Monitors Type events can be created without CI binding since you’re receiving the node
value as "node": "{{ResultsJSON._sourceHost}}" in the event payload from Sumo Logic. You
can create events but you can’t bind them since you don’t get them as host names for the log
monitor type. A push connector parameter was created - “create_log_monitorType_events”
with a value of False. If the param value is False, the payload is ignored, and “log” events aren’t
created. If you change the param to True, events are created, and then you must define event
rules for CI binding.
Refer to the following ServiceNow Severity Mapping with Sumo logic TriggerType table:
Severity Mapping
Sumo Logic Trigger Type

Severity

Critical

Critical

Warning

Minor

MissingData

Warning

ResolvedCritical/ResolvedWarning/
ResolvedMissingData

Clear

Integrate Sumo Logic with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.

Before you begin

Role required: evt_mgmt_integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3072


<!-- page 3073 -->
Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated by the
ServiceNow AI Platform. Copy the key to use
as part of the REST API call within the Header
or Query parameter.

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3073


<!-- page 3074 -->
4. Unlock Auth Scope and add: UserAccount.
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

Integrate ThousandEyes platform events
Integrate ThousandEyes with Event Management by adding a standard webhook in the
ThousandEyes console.

What authentication is used
There are two methods of authentication:
• OAuth authentication: Provides enterprise-grade authentication to keep your enterprise
environment safe. Authentication is performed using ThousandEyes Monitor V1 or V2 access
tokens. For more information, see Integrate ThousandEyes with OAuth authentication.
• Basic webhook authentication: Provides a basic standard of authentication, without the
need for ThousandEyes Active Directory. This authentication can be especially useful for
distributed small teams, such as SRE or DevOps teams. For more information, see Integrate
ThousandEyes with basic authentication.
Integrate ThousandEyes with basic authentication
Integrate ThousandEyes with Event Management by adding a webhook in the ThousandEyes
platform.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Discovery for ThousandEyes services is not supported, so you must create a CI manually in the
ServiceNow instance for event binding to work.
Role required: evt_mgmt_admin

About this task

Configure the Event Management environment for the collection of events from ThousandEyes
by authenticating ThousandEyes as a data source. In your ThousandEyes platform, set your
ServiceNow AI Platform instance as a rest endpoint using a webhook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3074


<!-- page 3075 -->
Procedure
1. In the ServiceNow instance, complete the following steps to create a CI.
a. From the navigation bar, navigate to All > Configuration > CI Class Manager.
b. Click Hierarchy and search for HTTP(S) Endpoint.
c. Select CI List and create a new CI.
2. In the ThousandEyes platform, create a notification destination.
a. From the navigation bar, navigate to Alerts > Alert Rules.
b. Click on any existing alert rule and select the Notification tab.
c. Select Edit Webhook and enter the following information.
Edit Webhooks
Field

Description

Name

Enter a name for the webhook.

URL

Provide the webhook URL.

Note: The default format of
the URL to push events from
ThousandEyes to the ServiceNow
instance is https://<instancename>.service-now.com/
api/sn_em_connector/
em/inbound_event?
source=thousandeyes.
Auth Type

Select Basic.

d. Click Add New Webhook.

Result

The default severity for the ThousandEyes alert is Major -2, which can be changed in the
Push Connector Configuration section of Push Connectors > ThousandEyes Push
Connector. The valid values of severity are 1- Critical, 2- Major, 3- Minor, 4- Warning, and 5Info.
The default timezone of the ThousandEyes alert is GMT, if you want to send the alert in a different
timezone, it can be changed in the Push Connector Configuration section of Push
Connectors > ThousandEyes Push Connector. The valid value format is GMT+01:00, GMT
+02:00, GMT-05:30, GMT-02:00, etc.
Integrate ThousandEyes with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.

Before you begin

Role required: evt_mgmt_integration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3075


<!-- page 3076 -->
Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated. Copy the key
to use as part of the REST API call within the
Header or Query parameter.

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

4. Unlock Auth Scope and add: UserAccount.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3076


<!-- page 3077 -->
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

Result

Now you are ready to start sending events. In your monitoring tool you can send events either
with the header or the query param: x-sn-apikey. For example:
https://[INSTANCENAME].service-now.com/api/sn_em_connector/em/in
bound_event?source=[SOURCENAME]&sys_id=[SYSID OF PUSH CONNECTOR
INSTANCE]&x-sn-apikey=[AUTH TOKEN]
Integrate ThousandEyes with OAuth authentication
Create credentials in the instance and configure the ThousandEyes webhook.

Before you begin

Role required: web_service_admin

Procedure
1. Navigate to All > System OAuth > Application Registry and then select New.
2. Select Create an OAuth API endpoint for external clients.
3. Copy the automatically generated field Client ID.
The Client ID is used when configuring the ThousandEyes SeviceNow integration.
4. Unlock the Redirect URL field and assign the value: https://app.thousandeyes.com/
webhooks-oauth-callback/
5. Configure the Access and Refresh token lifespans by providing a value in seconds.
6. Open the ThousandEyes webhook configuration and complete the following fields:
Name
Any name
URL
ServiceNow ThousandEyes Push connector end point
Select Auth Type
OAuth
Grant Type
Implicit
Auth URL
https://servicenow_insatnce>.service-now.com/oauth_auth.do
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3077


<!-- page 3078 -->
Client ID
Paste the Client ID automaticcally generated in Step 3.
7. Select Get Token.
8. Once the ThousandEyes connector navigates to a webpage requesting to connect to your
ServiceNow account, select Allow.
9. Provide account credentials which have the web_service_admin role.
Integrate Panopta as a data source
Integrate the Panopta cloud-based monitoring solution with Event Management. To add Panopta
as a data source, configuration is required in Panopta.

Configure Panopta
To prepare Panopta as a datasource, follow the procedure described in this link: How do I
integrate with ServiceNow .
When the Event Management integration is configured in Panopta, add the integration to any
of your Panopta Alert Timelines so that the ServiceNow instance receives incident events
accordingly.

Optional Event Management configuration
Configure an alert action rule for launch in context of Panopta. For more information, see Launch
web application from alert and Create or edit an alert action rule.
Related topics
Configure Event Management connectors
Integrate Event Integration (EIF) format event connector
Use the push connector that allows events to be forwarded from products, generally from IBM,
that support the Event Integration (EIF) format to a MID Server.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Ensure the MID Server is assigned with EventManagement or ALL applications.
Role required: evt_mgmt_integration

About this task

Configure the Event Management environment for the collection of events from products that
support the EIF format to a MID Server.

Procedure
1. Navigate to All > Event Management > Integrations > EIF listener context.
2. Click New.
3. Create a new EIF listener context by completing the EIF listener context form:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3078


<!-- page 3079 -->
a. On the form, fill in the fields.
EIF listener context form
Field

Description

Name

Unique name for the EIF listener context.

Short Description

Short description of the MID Server
extension execution context.

Port

Port for the EIF listener to receive EIF events.
The default value is 9998. However, if the
port is already in use, you can use any other
free port instead.

Status

The status of the EIF listener. This field
is blank until the listener is run. After the
listener has run, the value is automatically
populated to one of the following statuses:
▪ Started: The listener is running.
▪ Stopped: The listener is not running.
▪ Offline: The MID Server is down.
▪ Error: The listener failed with an error.

Execute on

The MID Server location for running the
listener.

MID Server

The name of the designated MID Server
when you select Specific MID Server in the
Execute on field.

Executing on

The name of the MID Server on which
the extension is running. This field is
automatically populated with the name of
the MID Server even if it's down. If you stop
the extension, this field is empty.

b. On the form, you can select the related links on the EIF listener context form.
Commands available on the EIF listener context form
Related Link

Description

Start

Select this option if the listener is not
running. The listener is started on the
configured MID Server and port number.

Stop

Select this option to stop the running
listener on the configured MID Server.

Restart

Select this option to stop then start the
listener on the configured MID Server and
port number.

Update Parameters

Select this option if you want to make
changes to the listener configuration of the
current running listener. If the parameters

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3079


<!-- page 3080 -->
Related Link

Description

are valid, the listener disconnects and
reconnects with new parameters.
Test Parameters

Select this option to test if the port is a valid
number.

4. When you're finished, right-click the form header and select Save.
5. Click Update.
6. If you want to check the incoming EIF traffic, complete the following steps:
a. Navigate to MID Server > Servers.
b. Select the MID Server the EIF extension is running.
c. Under the Configuration Parameters tab, add the mid.log.level properties.

What to do next

If the MID Server fails to start, you can review the MID Server log errors.
EIF events warning severity
If the EIF event payload has a warning severity, it will be mapped differently in the ServiceNow
instance.

EIF events severity

ServiceNow events severity mapping

UNKNOWN

Warning

Warning

Minor

Minor

Major

Critical

Critical

Fatal

Critical

Create a push connector configuration parameter
Some connectors have no parameters that are shipped out of the box. Therefore, it’s necessary
to create and add the parameter to the push connector configurations list in the form layout
before adding the new parameter.

Before you begin

Role required: evt_mgmt_admin, personalize_form

Procedure
1. Navigate to All > Event Management > Integrations > Push Connectors.
2. Open a push connector.
3. On the Push Connector form, right-click on the form header and select Configure > Form
Layout.
4. In the Available list, search for Push Connector Configurations > Push Connector, and move
it to the Selected list.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3080


<!-- page 3081 -->
6. In the Push Connector Configurations [sn_em_connector_push_config] table, double-click on
Insert a new row to add a new push connector configuration parameter.
7. Select Update.

Result

Push Connector Configurations list added to push connector form layout. You can now create
push connector parameters.
Configure a push connector instance
Configure a push connector instance to receive the events from an external system.

Before you begin

Ensure that you’ve defined a push connector definition.
Role required: evt_mgmt_admin

About this task

You can use a connector instance to receive the events coming from external sources. You can
create the following type of push connector instances:
• Instance type
• MID type

Procedure
1. Navigate to All > Event Management > Integrations > Push Connector Instances.
2. Select the connector instance that you want to configure, or select New to create a push
connector instance.
3. On the Push Connector Instance form, fill in the fields.
For more details, see Push connector instance form.
4. Select Submit or Update.

Result

The push connector instance form is saved and now you can receive the events from an external
system.
Configure event collection for SNMP traps
The SNMP listener runs on the MID Server, which acts as a collection endpoint for SNMP traps.
The MID Server sends the traps to the ServiceNow instance for further processing as an event by
Event Management.

Before you begin

Role required: agent_admin

Note:
• To view the MID SNMP Trap Listener in the UI: agent_admin
• To perform other operations, any one of the following roles is required: agent_admin,
evt_mgmt_integration, or evt_team_operator
Ensure that the MID Server is assigned with either EventManagement or ALL
applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3081


<!-- page 3082 -->
About this task

Use the MID SNMP Trap Listener to listen for SNMP traps. In this configuration, the specified
MID Server acts as a collection endpoint for SNMP traps.

Procedure
1. Navigate to All > Event Management > Integrations > MID SNMP Trap Listener.
2. Click New.
3. Complete the SNMP Trap Collector Context form.
Option

Description

Name

Unique name for the SNMP Trap Collector.

Short description

Short description of the MID Server extension
execution context.
Specify the SNMP version:

SNMP version

◦ v1 and v2c
◦ v3
The valid security level values are:
◦ None - No security level value set.
◦ noAuthnoPriv - Communication without au­
thentication and privacy

Minimum Security Level

◦ authNoPriv - Communication with authenti­
cation and without privacy.
◦ authPriv - Communication with authentica­
tion and privacy.

Note: This field appears only when v3
is selected in the SNMP version field.

UDP Port

UDP port for SNMP Trap Collector to receive
SNMP Traps. The default value is 1,162.
However, if the port is already in use, you can
use any other free port instead.
The status of the trap listener. This field is
blank until the listener is run. After the listener
has run, the value is automatically populated
to one of these statuses:

Status

◦ Started: The listener is running.
◦ Stopped: The listener is not running.
◦ Offline: The MID Server is down.
◦ Error: The listener failed with an error.

Execute on

The MID Server location for running this listen­
er. Select from specific MID Server. The rec­
ommended setting is Specific MID Server.
Network hardware typically has to be config­
ured to send to a specific IP address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3082


<!-- page 3083 -->
Option

Description

MID Server

Specify the name of the designated MID Serv­
er when you select Specific MID Server in
the Execute on field.
Displays only when SNMP version=v3.
◦ When sending an SNMP Inform message,
include the default value of this field in the
message.

EngineID

◦ When sending an SNMP Trap message, in­
clude a value other than the default value
of this field in the message.
The name of the MID Server on which the ex­
tension is running. This field shows the name
of the MID Server even if the MID Server is
down. If you stop the extension, this field is
empty.

Executing on

This field is automatically populated.
4. Right-click the form header and select Save.
5. In the Credentials for SNMPs section, specify the required SNMP v3 credentials that the
SNMP listener uses for authentication.

Note: The Credentials for SNMPs section appears only when v3 is selected in the
SNMP version field.

6. In the Related Links section, click Test parameters.
7. Click Update.
8. Optional: If the MID Server fails to start, review the MID Server log errors.
(Optional) When working with object identifiers (OIDs), the OID trap counter may cause
problems activating event rules. To remove the trap counter from the OID, navigate to MID
Server > Properties and set the mid.em.snmp_old_key_counter_cut.enabled property to true.

What to do next

In Related Links, these actions may be run against the SNMP traps listener:
Commands available in the SNMP trap listener form
Related Link

Description

Start

If it is currently not running, starts the listener. The listener is
started on the configured MID Server and port number.

Stop

Stops the running listener on the configured MID Server. If the
listener is not running, no action is taken.

Restart

Stops, then starts the listener on the configured MID Server and
port number.

Test parameters

Tests that the port is a valid number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3083


<!-- page 3084 -->
Commands available in the SNMP trap listener form (continued)
Related Link

Description

Update parameters

If you make changes to the listener configuration, use this option
to update the parameters of the currently running listener. First,
the parameters are tested for validity. If the parameters are
valid, the listener disconnects and reconnects with the new
parameters.

Note: Updates to the SNMP trap listener take effect only after clicking Restart or Update
parameters.
Related topics
SNMP probe MIB modules
Configure the SNMP traps listener to receive OEM traps
Configure the SNMP traps listener to receive OEM traps
Configure the SNMP trap listener to receive traps from Oracle Enterprise Manager (OEM).

Before you begin

Role required: evt_mgmt_admin

About this task

Event Management can process Oracle Enterprise Manager Cloud Control SNMP traps as
events. For the SNMP trap listener to receive traps from OEM, you must designate the MID Server
that runs the SNMP trap listener as a recipient of the trap. Upon receiving an OEM trap, the MID
Server sends the trap to the ServiceNow instance for further processing as an event by Event
Management.
The OEM 12c Trap event rule is provided with the default base instance, as well as these alert
action rules:
• Oracle EM Launch Target Status
• Oracle EM Launch View Event

Procedure
1. Navigate to All > Event Management > Integrations > MID SNMP Traps Listener.
2. Click New.
3. Fill in the fields, as described in Configure event collection for SNMP traps.
For the SNMP version field, select: v1 and v2c.
4. Click Submit.

Note:
Ensure all required SNMP MIB files are uploaded on the instance. For more information,
see Load a MIB module.
.

What to do next

In Oracle Enterprise Manager Cloud Control, configure the MID Server as a trap listener target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3084


<!-- page 3085 -->
Configure SNMP Trap collection for high availability
For SNMP traps, the MID Server requires failover configuration for the trap listener.
You can configure two MID Servers for failover. Because the SNMP Trap listener on the MID
Server receives inbound traffic on the IP address and port of the MID Server, you configure each
MID Server to receive the same SNMP traps. Only one MID Server is active at any point in time,
therefore Event Management does not receive duplicate traps.
Configure message keys to spread SNMP object identifiers
By default, most SNMP trap events are processed by a single Event Management processing
job. This can negatively effect event processing. Configure message keys on the MID Server to
ensure that more than one processing job is invoked, ensuring optimal SNMP trap performance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > MID Server > Servers.
The MID Servers page opens.
2. Select the relevant MID Server and on the MID Server page, select the Configuration
Parameters tab.
3. Click New.
4. In the Parameter name field, select mid.snmp.event.oid.keys.
5. In the Value field, enter a comma separated list of OIDs to be used for the message key.
6. Click Submit.

Note: The OID trap counter may cause problems activating event rules. To remove
the trap counter from the OID, navigate to MID Server > Properties and set the
mid.em.snmp_oid_key_counter_cut.enabled property to true.

7. To set conditions in a script that determine the message key to be used based on the SNMP
traps received:
a. Navigate to MID Server > Script Includes.
b. Locate and select SNMPTrapKeyFilter.
c. In the Script field, set conditions for which OIDs are to be used based on the SNMP trap
event received.
d. Select the Active check box to activate the script.
e. Click Update.
Configure event collection from email
Configure an inbound email action to send email notifications when events and alerts are
triggered.

Before you begin

Role required: evt_mgmt_admin

About this task

When you add an inbound email action to send email, Event Management uses inbound email
actions to process inbound email in the same manner as any external event. The email content is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3085


<!-- page 3086 -->
used to generate and update events, use rules to generate alerts, or change event severity. The
severity is updated after the impact calculation and stored in the em_impact_status table.

Procedure
1. Navigate to All > System Properties > Email Properties.
2. In the Inbound Email Configuration section, in the Email receiving enabled option, select Yes
to enable the collection of events from email.
3. To configure the email information to pass to Event Management for event and alert
processing, navigate to System Policy > Email > Inbound Actions and in the list of Inbound
Email Actions records search for and open the default create event form.
a. On the Inbound Email Actions form, specify these values.
Field

Value

Active

Select the check box to enable the email
notification.

Target table

Select Event [em_event].

Action type

Select Record Action.

b. Select the Description tab and enter a description for the email message.
c. Select the Actions tab and select these Field Actions.
▪ [Severity] [To] [<the event severity>]
▪ [Type] [From email] [<portion of the email>]
For example, you can select Subject as the portion of the email to use.
4. To customize the inbound parameters and map the text to event variables, add a Script.
Example
For example:
current.source = 'email';
current.event_class = 'email';
current.description = email.body_text;
current.time_of_event = new GlideDateTime();
current.insert();
5. From the instance, send an email that contains matching data, and then confirm that the event
or alert information appears in Event Management.
For more information sending email messages to create an instance, see Inbound email
actions .

Note: Ensure that the user who sends the email has the role evt_mgmt_integration.
6. Select Submit.

Result

The inbound email is sent to the em_event table and regular Event Management processes
continue, for example, event rules and alert management rules run.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3086


<!-- page 3087 -->
Event forwarding
Accelerate the event processing testing life cycle by forwarding a stream of events from your
ServiceNow production environment to your non-production environment.
Use event forwarding to forward events from one instance to another, for example, from a
production to a non-production instance. Event forwarding enables you to test and evaluate
event rules, event field mappings, alert management rules, alert correlation, and so on, without
having any impact on your production environment.
Not all monitoring sources can send events to multiple target instances. In such cases, you
can configure a scheduled job to periodically forward the event stream from your ServiceNow
instance that is connected to the monitored source to other instances.
Set up event forwarding
Create an event forwarding configuration record to enable events to flow from one ServiceNow
instance to another instance. Forwarding events to multiple target instances requires creating
separate configuration records for each target instance.

Before you begin

You must have a credential with the evt_mgmt_integration role, which enables you to create
events in the target instance. If you don't have this credential, see Create basic auth server
credentials for information on how to create it.
Role required: evt_mgmt_admin

About this task

The source instance, which forwards events to a target instance, must have a user with the
evt_mgmt_integration role, a password for the credential, and a new event forwarding record.
The target instance, which receives events from the source, must have a credential with the
same user name and password as the source instance.
The event forwarding record contains details about the target ServiceNow instance URL to which
events are to be forwarded along with the credentials to connect it.
You must create a separate configuration record for each target instance to forward events to
multiple target instances. Events are then sent to each target instance with an active event
forwarding configuration.

Procedure
1. On your source instance, navigate to All and enter
sn_em_connector_event_sync_configuration.list in the filter navigator.
2. On the Event Sync Configurations page, select New.
3. On the Event Sync Configuration page, in the Instance url field, enter the target ServiceNow
URL to receive events in the format https://<your_instance>.service-now.com.
4. In the Credentials field, provide the credentials for the target instance by either entering them
or searching for them.
◦ To enter your credentials, start typing and then select the credential from the drop-down list.
◦ To search for your credentials, select the Lookup using list icon (
from the credentials lookup table.

) to select your credential

5. Select Save.
6. Select Test Connection to validate the connection to the target ServiceNow instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3087


<!-- page 3088 -->
◦ If the connection succeeded, a confirmation message displays.
◦ If the connection didn't succeed, check your credentials and the instance URL.
7. When validated, select the Active check box to activate the event forwarding to the target
instance and select Submit.
The configuration is created and is listed on the Event Sync Configurations page.
8. For multiple targets, repeat the steps for a separate configuration record for each instance.
Related topics
Periodically run an event forwarding job
Periodically run an event forwarding job
Schedule an event forwarding job to periodically send events to all target instances with active
event forwarding configurations when the monitoring source can't send events to multiple target
instances.

Before you begin

Role required: evt_mgmt_admin

About this task

You can customize the event-forwarding job behavior through related system properties.
For more information, see Event forwarding properties.

Note: To minimize the performance impact, the scheduled job sends events not older
than the latest hour when it ran for the first time after setting up event forwarding.

Procedure
1. Navigate to All > Scheduled jobs > Event Management - Event Forwarding Job.
2. On the Scheduled Script Execution page, select the Active check box.
3. In the Repeat Interval field, set the appropriate time interval for the job to run periodically.
The default value is for the job to run every minute.
4. Select Update.

Result

The event forwarding job runs periodically based on the repeat interval that you set. Events are
sent to all target ServiceNow instances that have active event forwarding configuration records.
If the admin account is disabled, configure the user of the scheduled job. By default, it’s admin,
but in this case, it must be changed.

Note:
If the event forwarding to the instance failed due to any reason, the Last Event Forwarding
status field displays Failed with a corresponding error message displayed in the Last
Event Forwarding error field. The target instance generates a self-health monitoring event
during the next successful event forwarding indicating the failure of event forwarding for the
specified time range.
Create basic auth server credentials
Create credentials to access a ServiceNow instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3088


<!-- page 3089 -->
Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Select New.
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for this credential.

User name

Name to identify the user.

Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform tries this
credential while it attempts to log in to devices. The smaller
the number, the higher in the list this credential appears.
Establish credential order when using large numbers of
credentials or when security locks out users after three
failed login attempts. If all the credentials have the same
order number (or none), the instance tries the credentials
in a random order. Default value: 100

5. Select Submit.

Result

The Basic Auth credential for use with the server instance is created.
Processing Events
Event processing is the process of taking events or streams of events, analyzing them and taking
automatic action. The process includes viewing events, event binding, event rules and event
field mapping.
An event is a notification from one or more monitoring tools that indicate something of interest
has occurred, such as a log message, warning, or error. Events are processed and alerts are
generated based on the following factors:
Event collection configuration via a MID Server, script, SNMP trap collector, or email message.
An Event rule, alert binding, or event field mapping configuration for processing events from
various sources. When a package of events that contains events with a custom (non-supported)
state is processed, the events with the custom state are not processed.
For more information, see Exploring Event Management.
View events
Event Management tracks individual events to manage external systems. These events are
notifications from monitoring tools indicating occurrences of interest, like log messages,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3089


<!-- page 3090 -->
warnings, or errors. Event Management gathers events from external sources and stores them in
the Event [em_event] table, offering a list of raw incoming events.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, evt_mgmt_user, or evt_mgmt_integration
Note: Ensure that you do not change the Classification field value in event [em_event]
tables, either manually, by script, or by event rule.

About this task

The event monitoring tool generates the values of the source and resource fields. Event
Management implementers can define event types and register nodes to help uniquely identify
incoming events and create alerts for the specific needs of the enterprise. Event Management
uses this information to determine whether to create an alert or update an existing one.
An event source may generate duplicate events with the same identifying information. For events
with the same identifying information, Event Management uses the time interval between events
to determine whether the events represent an existing issue or new issue.
Additional fields should be included in the Additional information field of the event. Do not add
additional fields to an event by adding a custom field to the event [em_event] table. For more
information about how to include additional fields in events, see Custom alert fields.

Note: Avoid writing business rules for event [em_event] tables, as they can result in
performance degradation.

Procedure
1. Navigate to All > Event Management > All Events.
The All Events list displays the following columns.
All Events list
Column

Description

Populated by

Time of
event

The time that the event occurred, in the network node time
zone. The system supports time resolution in seconds.

External event
monitoring tool

Source

Event monitoring software that generated the event, such as
SolarWinds or SCOM. Maximum length: 100 characters.

External event
monitoring tool

Reason for event generation. Shows extra details about an
Description issue. For example, a server stack trace or details from a
monitoring tool. Maximum length: 4000 characters.

External event
monitoring tool

Node

Node name, fully qualified domain name (FQDN), IP address,
or MAC address that is associated with the event, such as
IBM-ASSET. Maximum length: 100 characters.

External event
monitoring tool

Type

The metric type to which the event is related, such as Disk
or CPU, which is used to identify an event record from which
alerts are created. Maximum length: 100 characters.

External event
monitoring tool

Resource

Node resource that is relevant to the event. For example, Disk
C, CPU-1, the name of a process, or service. Maximum length:
100 characters.

External event
monitoring tool

Metric
Name

Unique name that describes which metrics are collected and
for which this alert has been created.

External event
monitoring tool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3090


<!-- page 3091 -->
Column

Description

Populated by

Message
Key

Unique event identifier to identify multiple events that relate to
the same alert. If this value is empty, it is generated from the
External event
Source, Node, Type, Resource, and Metric Name field values. monitoring tool
Maximum length: 1024 characters.
The status of the event:
◦ Ready: Event has been received and is waiting to be
processed.

State

◦ Queued: Event is queued by the event processor job.
◦ Processed: Event was successfully processed.

Event

◦ Error: Failure occurred while processing the event. For
example, the event collection method or event Severity is
blank.
◦ Ignored: Value is not in use.
Mandatory. The options are typically interpreted as follows:
◦ Critical: Immediate action is required. The resource is either
not functional or critical problems are imminent.
◦ Major: Major functionality is severely impaired or
performance has degraded.
Severity

◦ Minor: Partial, non-critical loss of functionality or
performance degradation occurred.

Event

◦ Warning: Attention is required, even though the resource is
still functional.
◦ OK: An alert is created. The resource is still functional.
◦ Clear: No action is required. An alert is not created from this
event. Existing alerts are closed.

Alert

If an alert was created as a result of the event, this field
contains the unique ID that Event Management generates to
identify the alert.

A matching
event rule or
event field
mapping

2. To review a single event, click the required row in the Time of event column.
3. To review the event rules that processed the event, in the Related Links section click Check
process of event.
For further ways to see which event rules were applied to the event, you can display the
Event rule and Processing Notes fields in the Events list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3091


<!-- page 3092 -->
Optional event fields to display the applied event rule
Column

Description

Matching Event rule

The event rule that matches the current event rule definitions.
This information is primarily used to create event rule
recommendations for events that currently are not covered by
rules. If event rules have been modified, this information can
be retrieved from the Processing Notes field, described below.

Note: This field does not show the history of event
rules that were applied to the event.
Processing Notes

Information related to the binding to CI type and the event
rules that were applied to the event.

4. To create an event rule for an event that is not associated with an event rule:
a. Click the event.
The event opens in the Event form.

b. Click Create Event Rule.
The fields of the new Event rule are populated with data from the event. You can use the
event information, for example, when composing fields for alerts.
Team-based integrations in Event Management
Team-based integrations empower teams to optimize event processing within Event
Management to enhance efficiency and operational effectiveness.
Team-based integrations provides the following capabilities:
• Assign teams to particular connectors, providing a structured approach to integration efforts.
• Enable each team to define and apply custom rules, enabling a more targeted and
straightforward handling of event processing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3092


<!-- page 3093 -->
• Route alerts automatically to the appropriate team members responsible for the integrated
systems based on integration ownership and configuration item (CI) ownership.
• Enable seamless integration and automation through the automatic assignment of alerts
to appropriate team members based on integration ownership and configuration item (CI)
ownership.
Customize event rules, event mapping, and the precedence of team rules for team-based
integrations. For more information, see Team-based integration properties.
Related topics
Event rules
Event field mapping configuration
Alert assignment groups for teams
Event rules
Use event rules to generate alerts for tracking and remediation. Event rules are stored in the
Event Rule [em_match_rule] table. Configure and customize event rules to manage events and
alert generation.
Event rules do not change the event records in the Event table. Changes to event data are stored
in the ServiceNow instance memory.

Use the Event rule designer to create and configure event rules. You can use the default event
rules or event rules that you have created to:
• Apply an event rule filter to determine whether the rule applies to an event.
• Apply a transform with Event Match Fields and optional Event Compose Fields to format the
alert text.
• Apply a threshold to create custom alerts for rapidly recurring events.
• Automatically create or close alerts.
• Bind alerts to CI information from the CMDB.
• Run multiple sequential rules defined for the same event by selecting the Apply additional
matching rules check box. The event rules run in ascending order as defined in the Order
field. Event rules applied to assignment groups only run after the global rules have run.
Create or edit an event rule
You can create event rules to generate alerts for tracking and remediation. Use team-based
integrations in event rules to make sure that connector ownership and execution of rules give
precedence to general rules. Teams can maintain consistency and hierarchy while offering
flexibility and customization options.

Before you begin

Role required: evt_mgmt_admin

About this task

View the list of available event rules on the Event Rules page to determine whether you want to
create or edit an event rule.
You can create rules that:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3093


<!-- page 3094 -->
• Transform information in events to populate specified alert field values and compose alert
fields from various values.
• Configure threshold rules that create or close alerts only when the incoming matching events
exceed the specified threshold.
• Bind alerts to CIs using CI identifiers.
Options to create the rule are:
• Create an event rule and assign event fields for alert generation.
• Create a rule from an existing event or group of events that don’t have a rule. In this case, the
event fields are copied to the Event Match Fields section of the rule.
• Edit an existing event rule.
• For Team-based integrations, select an assignment group.
• Run multiple sequential rules defined for the same event by selecting the Apply additional
matching rules check box. The event rules run in ascending order as defined in the Order
field. Event rules applied to assignment groups only run after the global rules have run.
You can refresh an existing event rule with new event data. For more information see, Refresh
event rules.

Note:
• Event rules that aren’t configured to perform any action are skipped. Therefore, if the rule
isn’t configured as ignore, threshold, or binding, it’s important to specify either the match
or the composed fields.
• Make sure that you don’t change the Classification field value in event [em_event]
tables, either manually, by script, or by event rule.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules and take one of the following
actions.
Option

Description

a. Select the link for unassociated events or
grouped events that aren’t mapped to the
rules.

Create an event rule from an existing event

b. Select the event that you want to use for cre­
ating the rule.
The event fields are copied to the Event
Field Rules section of the rule.
Edit an existing event rule

In the event rule list, select the required event
rule to be modified. The event rule opens in

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3094


<!-- page 3095 -->
Option

Description

the event rule designer where you can modify
the values of the fields.

Select Save and Upgrade
to modify the rule when the following banner
message appears and you want to convert
the event rule.
Rule cannot be viewed in the
event rule
designer. To modify the rule
click 'Save and Upgrade'.
Create an event rule

Select New.

2. Ensure that Active
is selected.
When the rule is deactivated, Event Management finds and applies another event rule. An
alert is still created for the event unless Ignore is selected in another applicable rule or when
configuring the filter for this event rule.
3. Enter a unique and meaningful name and fill in the form.
Event Rule Info form
Field

Description

Source

Category to which this matching rule applies. The mapping rule only applies
to events with the same event class value. If this value is empty, apply the rule
to all events.

Order

Order in which an event rule is evaluated when multiple rules are defined for
the same type of event. Event rules are evaluated in ascending order.

Description

Type additional information that describes the event rule.

Apply
additional
matching
rules

Select to apply additional event matching rules according to the Order field.
The last rule with binding settings sets the CI binding. When selected, the
Thresholds tab is inactive.

Assignment
group

For team-based integrations, select an assignment group.
If no assignment group is defined in the event rule, then this event rule is
considered as a global rule.
When the rules are running – first the global rules run and then the rules that
belong to the assignment group that the event’s source instance belongs to.

4. Optional: Define the event rule using these Event Rule Designer features.
Option

Description

Event Filter

Define a filter to restrict to which events the
event rule must apply. See Filter the events
that an event rule applies to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3095


<!-- page 3096 -->
Option

Description

Transform and compose alert output

Configure the customization of alert content.
See Configure an event rule to customize
alert content.

Threshold

Create or close alerts according to the spec­
ified threshold. See Set a threshold to sup­
press alert generation.

Binding

Configure event rules to automatically bind
alerts to CI information from the CMDB. See
Binding alerts to CIs.

5. Select Save, Submit, or Update.
Related topics
Pattern matching
Use event input information
Configure an event rule to customize alert content
Refresh event rules
Simulate event processing
Filter the events that an event rule applies to
Use event input information
The Event Input pane that is included in the steps to create an event rule provides a reference to
the information that you can use when configuring an event rule.
In the Transform and compose alert output pane, you can also drag the information into the
required fields to customize alert content. The fields in the right-hand pane appear as a reference
to which fields, expressions, and their values are available when working in the Event Rule
designer. The fields that display in the Transform and compose alert output left-hand workarea
become the fields in the generated alert form. In addition, you can define alert tags that are
specific for customization.

General components and navigation
The Event Input pane consists of these sections:
• Event Additional Info
• Expressions
• Event Raw Info
The Event Input pane displays in all Event Rule designer sections, except for the Event Rule
Info section. The fields in the right-pane can be modified only in the Transform and compose
alert output section. In all the other sections, the Event Input pane is read-only and available for
reference purposes.

Note: If Accessibility enabled
Settings, standard edit mode is not available

is selected in System
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3096


<!-- page 3097 -->
Edit modes
Mode

Description

Standard edit mode

Text selected in the left-hand workarea cannot be edited. Undo is
not available. In this mode, you can only mark the text or values
and transform it by selecting a field name.

Regex edit mode

Edit text in the left-hand workarea by selecting it, as required.
After you have edited the text, you cannot go back to the
standard mode. Undo is not available. However, Reset is
available, returning the field to its original value. You can
compose text using regular expression (regex) format
conventions, for example, type (.*) to create a field name. You
cannot use field values like: type "$" to include the value of a field
and specify the name of the field in parentheses {}.
You can include special characters in a field by "escaping" them,
that is, by prefixing the character with a "\". For example, to
include a "\" in your text, enter "\\".

Event additional info
The Event additional info section displays default event form fields, plus fields that were created
to display in alerts and that are added to the Additional information section of the alert.
When configuring text in the fields in the left-hand workarea, you can drag field names and/or
their value from this section into the fields.

Expressions
The Expressions section is available only if an additional information field was created. You can
create expressions from event raw data or from additional information data.
1. Click in a field in the Event Input pane to perform transformation actions.
2. Create an expression by transforming information and associating it with a field name. Either
select a field name from the suggested list, or create a field name, as required.

3. Click in a field in the Event Input pane. In the left-hand workarea, select the required
information.
Create expressions by transforming information and associating it with a field name. Select a
field name from the suggested list, or you can create a field name, as required.

Event raw info
The Event raw info section is always available. Its contents are the fields from the Event form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3097


<!-- page 3098 -->
To transform text, click a field in the right-panel to open it in the work area on the left-panel, in
the Mark Expressions section. You can select text in the Mark Expressions section where the
selected text becomes the value of a newly created field. Name the new field. This new field is
added to the Expressions section.

Note: When creating regex expression for input, ensure that you create input with the
variables in sequential order. While variables can be skipped for inclusion, the selected
order must be maintained.
Controlling how fields appear:
• Use the exclusion list [em_event_rule_black_list] table to hide fields from the right-pane.
• Use the em_event_rule_order form to order the position of each field.
• Fields that are not in the exclusion list and also not part of the em_event_rule_order table, still
appear in the event rule designer, in the right-panel and in the Transform and Compose Alert
Output tab.
Related topics
Create or edit an event rule
Configure an event rule to customize alert content
Filter the events that an event rule applies to
Set a threshold to suppress alert generation
Filter the events that an event rule applies to
Define a filter to restrict to which events the event rule must apply. Configure the filter by
providing a set of conditions that each event must match to be either excluded or included from
applying to the event rule.

Before you begin

Ensure that a name is specified for the event rule.
Role required: evt_mgmt_admin

About this task

To construct the required condition statement, you can use event fields as well as additional
fields that are defined in the Additional Information field of the event. Use these fields to
configure conditions that can exclude events. Alternatively, you can filter incoming events to
ensure that only those events that meet the required conditions are included.

Note: Event rules filter is case-sensitive.
While working in the Event Filter tab:
• In the Event rule list, if you selected a recommended rule or an existing rule, the filter fields
are populated with values from these events. You can use these filter fields to compose filter
conditions.
• You can click another tab (for example, Threshold), work in that area and then return to work in
the Event Filter area without losing information.
• Use the right-panel as a source of reference for which fields are available to be used when
composing filter conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3098


<!-- page 3099 -->
Note: Event filters created on additional_info fields only perform a string comparison and
not a numeric comparison, even if the information entered into the value field appears as if
it is numeric, as depicted in the following graphic:

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Click New or open an event rule.
3. Click Event Filter.

4. To ignore events, select Ignore events that match this filter.
All events that match this event rule are ignored. You can add more conditions to the filter by
clicking either OR or AND.

Note: Even if an event is ignored by an event rule, the event is still recorded in the
Event [em_event] table. Select this option to inhibit an alert from being created and be
associated with the event.
5. To configure conditions to which the event rule must apply, click New Criteria.
You can add further conditions by clicking either OR or AND.

Note: The % character is not supported in filter conditions.
6. You can add field names to the Event Rule Simple Field Black Lists [em_event_rule_black_list]
table to either show or hide fields from the filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3099


<!-- page 3100 -->
◦ To remove fields from the filter and the right panel, add a new black list field with Show in
rule not selected.
◦ To remove fields only from the filter and still enable it to appear in the right panel, add an
exclusion list field with Show in rule selected.
7. Click either Save or Submit.

Example:

Example showing filter conditions that are specified to run a rule when the
metric name starts with the word "disk". For this example, any resource is
acceptable, as long as it is not "cpu" and the node name is "MyServer".

Example to filter events using time conditions. In the Select Field or add New field, select Time
of event.
Specify the required time conditions, for example, anytime after yesterday.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3100


<!-- page 3101 -->
Related topics
Create or edit an event rule
Use event input information
Configure an event rule to customize alert content
Set a threshold to suppress alert generation
Find events that are not matched to rules
Find events that are not matched to any rules, and determine if it is necessary to create event
rules to manage them.

Before you begin

Role required: evt_mgmt_admin

About this task

This task describes how to find events that are not matched to rules.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Near the top of the form, click the link for events or grouped events that are not mapped to
rules.
Example

What to do next

Create an event rule. For example, event rules are useful for managing events that occur
regularly.
View event rules
You can view all event rules on the Event Rules list.

Before you begin

Role required: evt_mgmt_admin

Procedure
Navigate to All > Event Management > Rules > Event Rules.
Event Rules list
Field

Description

Name

The event rule name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3101


<!-- page 3102 -->
Field

Description

Override
default
binding

Legacy binding criteria.

Order

Order in which an event rule is evaluated when multiple rules are defined for the
same type of event. Event rules are evaluated in ascending order.

Source

Event monitoring software that generated the event, such as SolarWinds or
SCOM. Maximum length: 100 characters.

Updated

Update date and time for the rule.

If, in the Bind section criteria have not been specified or if the specified bind
criteria are not matched, then the legacy binding criteria are considered.

Note: You can filter the Event Rule list to display the required subset of the information.
However, if you create a favorite link after filtering, when the link is clicked the Event Rule list
does not display the correct filter.
Related topics
View events
Configure an event rule to customize alert content
You can configure an event rule to customize alert content. You can customize the order of the
fields and select which fields display. The fields in the left-hand work area of the Transform and
Compose Alert Output section of an event rule are the fields that appear in the generated alert.

Before you begin

Role required: evt_mgmt_admin

About this task

You can customize alert content by adding the required event fields and modifying the text in the
fields.

Note: When creating regex expression for input, ensure that you create input with the
variables in sequential order. While variables can be skipped for inclusion, the selected
order must be maintained.
Format alert text by using one or both of these methods:
Format alert text
Format method

Description

Transform

Create a field to display in an alert. The field and its value appear
in the Additional Information section or in the Alert Tags section.
In the Event Input pane, the new field is listed in the Expressions
section.

Compose

Determine which text to display in the selected field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3102


<!-- page 3103 -->
Note:
• Configure which fields display in the Event Input pane by configuring the exclusion list
[em_event_rule_black_list].
A field entered into the exclusion list that already appears in an existing event rule is not
removed from the rule; instead, it is moved to the Manual Attributes section in the rule.
• Control the order of event form fields by configuring em_event_rule_order.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Click New or open an event rule.
3. Click Transform and compose alert output.
In this section, you can use the Transform mode and the Compose mode.
4. To transform information in fields—standard mode:

Note: In this step, the selection of text is made in standard edit mode. In this mode,
undo is available.
a. Click the required field in the Event Input pane. The value and contents of the selected field
appear in the workarea on the left.

b. Select standard edit mode

.

c. Using the pencil cursor, highlight the required text. You can double-click text in the field to
select a word
or select the required text and symbols.

Note: If Accessibility enabled
System Settings, standard edit mode is not available

is selected in
.

d. Select a field name from the list or enter the required expression name. Fields that appear in
the list are existing event fields, additional info fields or previously defined alert tags (fields
prefixed with "t_"). The field name appears in the Expressions pane and the selected text is
highlighted. Both the text and the expression name are highlighted in the same color. Each
additional expression that you create, plus its value, is highlighted in a different color.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3103


<!-- page 3104 -->
Note: Transform field names cannot contain a ‘ (single quote) character.
e. Click Done. The expression name appears in the Expressions section of the Event Input
pane.

f. If you click an expression or its value in the Event Input pane, the details display in the
workarea on the left.
5. To transform information in fields—regex mode:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3104


<!-- page 3105 -->
Note:
◦ In regex mode, undo is not available.
◦ When building a regex expression from variables that are highlighted in the event,
place the selected variables in the same order that they appear in the event field.
◦ When composing the event rule regex, specify the terms using an
exact match of the input from the event fields. For example, for the text
vhxy2stlgwc_8888_hec03v012979, the regex
^([^_]+)_
looks as if it should catch the text “vhxy2stlgwc” that appears before the
underscore. However, it does not work as this text is not an exact match. Use the full
regex, as follows:
^([^_]+)_.*
◦ The Java Matcher parser is used for the regex engine. Ensure that you use a Java
parser to test the regex.
◦ If the regex does not match the entire string when parsing data, the event rule will not
capture the event, and no parsing takes place.
◦ The Java regex engine “matches” method is used. With this implementation, the regex
engine attempts to match the entire input sequence against the specified pattern.
Other matching methods, for example, the find method, are not supported.
◦ No regex flags are set by default, except the Pattern.DOTALL flag. With this
implementation of Java regex, the DOT character ‘.’ matches any character, including a
line terminator.
◦ Aside from Pattern.DOTALL, other regex flags cannot be changed.
◦ Lookahead is supported. However, Lookbehind is not supported.
a. Click the required field in the Event Input pane. The value and contents of the selected field
appears in the workarea on the left.
b. Select regex edit mode

.

c. Select the required text and symbols
highlighted text with (.*) to create a regex expression.

. Replace the

d. In the Expressions pane, click the Select or Add Field field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3105


<!-- page 3106 -->
e. Select a field name from the list or enter the required expression name. Fields that appear in
the list are existing event fields, additional info fields or previously defined alert tags (fields
prefixed with "t_"). The field name appears in the Expressions pane.

Note: Transform field names cannot contain a ‘ (single quote) character.
f. Click Done.

Note:
◦ When building a regex expression from variables that are highlighted in the event,
place the selected variables in the same order that they appear in the event field.
◦ When composing the event rule regex, specify the terms using an exact match of the
input from the event fields. For example, for the text vhxy2stlgwc_8888_hec03v012979,
the regex ^([^_]+)_ looks as if it should catch the text “vhxy2stlgwc” that appears
before the underscore. However, it does not work as this text is not an exact match. Use
the full regex, as follows: ^([^_]+)_.*
6. To compose text, in the Transform and compose alert output section, click in the required field.

Compose text in the alert fields by performing any of these actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3106


<!-- page 3107 -->
◦ Drag a field from the Event Info pane into the required field.
◦ Use the Event Info pane as a reference of which fields are available. Write the field name
details, using the format ${<fieldname>}, where "$" means "use the value". Between the
brackets, the name of the event field replaces the <fieldname> variable.
◦ Freely enter text, spaces, or characters. For example, use spaces or underscore symbols (_)
to make the text in the alert field readable.
7. To specify fields that must display in the generated alert, select the Manual attributes check
box.

Note: These fields, and their values, display in the Additional Information section or in
the Alert Tags section for attributes prefixed with "t_".
a. In the left-hand column, enter a value.
b. In the right-hand column, either drag a value from the Add or Expression fields or type in a
value.
When entering a value with attributes prefixed with "t_", a drop-down list appears with all the
previously defined "t_" attributes.
8. Click Save or Update.

What to do next

You can filter event rules. See Filter the events that an event rule applies to.
Related topics
Create or edit an event rule
Use event input information
Alert tags
Filter the events that an event rule applies to
Set a threshold to suppress alert generation
The event threshold is the rate upon which Event Management generates an alert. Receiving
multiple events for a device over a short interval may warrant creating an alert, as the condition
may be serious. However, receiving events over a longer interval may indicate a less serious
situation which would not warrant creating an alert.

Before you begin

Role required: evt_mgmt_admin

About this task

You can configure the properties in an event rule to create alerts, suppress alert generation, or
close existing alerts according to a specified threshold. The threshold is based on the value of
event fields or number of occurrences over a specified period.

Note: Field Name can be the name of any numeric field in the Additional information
field of the event. Therefore, if CPU is an additional information field for a specific event,
then CPU can be used as a Field Name.
Assume that you want to generate an alert when CPU utilization reaches or exceeds 80% three
times with no more than 20 seconds between any two consecutive events. Create an event rule
with these settings (an explanation for each value is given in parentheses):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3107


<!-- page 3108 -->
• Create Alert Operator: >= (operator to determine whether utilization of Field Name reaches or
exceeds the specified value)
• Field Name: CPU (events regarding high CPU usage)
• Threshold Value: 80 (percent)
• Occurs: 3 (three events occur where the CPU usage is at or above ">=" 80%)
• Over(seconds): 20 (20 seconds or less between events)
To demonstrate how the preceding settings are evaluated, assume that the following events are
received:

Scenario

Outcome

Reported elapsed time and the CPU usage for
each event:

In this scenario, no alert is generated since
one event has a CPU utilization that is under
80%.

• First event elapse time 20, CPU=85
• Second event elapse time 40, CPU=80
• Third event elapse time 60, CPU=70
Reported elapsed time and the CPU usage for
each event:
• First event elapse time 20, CPU=85

In this scenario, an alert is not generated
since the elapsed time in one event is over the
specified 20 seconds.

• Second event elapse time 40, CPU=90
• Third event elapse time 70, CPU=95
Reported elapsed time and the CPU usage for
each event:
• First event elapse time 20, CPU=85

In this scenario, an alert is generated since
in all events the elapsed time is within the
specified time and the CPU usage is over 80%.

• Second event elapse time 40, CPU=95
• Third event elapse time 60, CPU=90

Note:
• When configuring an event rule to create or close alerts according to a threshold, events
that arrive at the same second, as determined by the time_of_event field, are
skipped. This occurs because these events are considered to be duplicates.
• When threshold conditions are configured, alerts close when the Close Alert Operator
condition is met, and not when an event is received with Severity = Clear or Resolution
state = Closing.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Create or open an event rule.
3. Click Threshold.
4. Select Active.
If Active is not selected, the fields on this page do not appear.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3108


<!-- page 3109 -->
5. In the Create Alert Operator field, select an operator.
◦ If you select Count, specify the corresponding Occurs and Over(seconds) fields.
◦ If you select any operator other than Count, the Field name and Threshold value fields
appear. Specify the required values in these fields.

Note: The value of the Threshold value property can be the name of any field in

the Additional information of the event. For example, if CPU is a field in Additional
information for a specific event, then CPU can be used as the Threshold value.
◦ In the Occurs field, specify the required value.
◦ In the Over(seconds) field, specify the required period.
6. To automatically close alerts, in the Close Alert Operator field, select an operator.
Extra fields appear according to your selection.
◦ If Count is specified as the operator for the Create Alert Operator field, then the selection in
the Close Alert Operator field is either None or Idle. Specify the required value.
◦ If you select Idle, configure the Over(seconds) field.
◦ In the Close Alert Operator field, if you select an operator other than Idle, then configure the
Threshold value, Occurs, and Over(seconds) fields.
7. Click Save or Submit.

Example:

To create an alert when a specific event occurs 5 times in 10 minutes, in Threshold:
1. In the Field name field, specify the name of any field that exists in the Additional information
field in the event. The value of the field is irrelevant.
2. In the Create Alert Operator field, select Count.
3. In the Occurs field, specify 5.
4. In the Over field, 600 (10 * 60 seconds).
5. Click Save or Submit.
To create an alert when a specific event occurs 5 times in 10 minutes with a metric value greater
than 55. Assume that “metric_value” is a field in the Additional information of the event. Specify:
1. Select the Active check box.
2. In the Create Alert Operator field, select >=.
3. In the Field name field, specify metric_value.
4. In the Threshold value field, specify 55.
5. In the Occurs field, specify 5.
6. In the Over field, specify 600 (10 * 60 seconds).
7. Click Save or Submit.
Related topics
Create or edit an event rule
Use event input information
Configure an event rule to customize alert content
Filter the events that an event rule applies to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3109


<!-- page 3110 -->
Binding alerts to CIs
CI binding or linking is the process of finding and connecting a Configuration Item (CI) from the
Configuration Management Database (CMDB) to an alert, using the logic defined in event rules.
This helps ensure alerts are tied to the right IT components for better visibility and faster issue
resolution.

Understanding CI binding
Binding alerts to CIs links incoming alerts to the correct Configuration Item (CI) representing a
specific host, such as a computer, server, router, or virtual machine in your IT infrastructure. This
ensures accurate alert tracking, simplifies troubleshooting by identifying the source of issues,
and maintains a historical record of alerts tied to specific systems.
In IT Operations Management, the relationship between alerts and CIs plays a critical role in
effectively managing services and infrastructure. A CI represents a component within your IT
environment, such as a server, application, or database. Linking alerts to CIs ensures that alerts
and incidents are directly associated with the affected component, enabling accurate impact
analysis and faster resolution.
In dynamic and large-scale environments, it’s often challenging to pinpoint which CI is
responsible for triggering an alert. Alerts are generated from raw event data captured across
multiple sources, but this data may not explicitly reference a CI. Without a reliable method to
bind alerts to CIs, IT teams face the risk of:
• Poor visibility into service impact.
• Longer mean time to resolution (MTTR).
• Inefficient alert management processes.
Event rules provide a structured way to analyze incoming event data, enrich it with additional
context, and map it to the correct CI. These rules act as a bridge, transforming raw event data into
actionable alerts linked to CIs. For example, event rules can:
• Parse incoming event data: The process involves breaking down raw event data to extract
important details, such as hostnames, IP addresses, or service tags. These details are then
used to analyze the event—identifying its source, type, and impact—and to enrich the alert
by adding relevant context, like affected services, priorities, or resolution steps, ensuring it’s
actionable for IT teams.
• Match patterns: Here, the extracted event details—such as hostnames, IP addresses, or
service tags—are compared against entries in the CMDB to identify the corresponding
Configuration Item (CI) based on predefined rules or logic. Once matched, the alert is linked
to the CI, providing context about the affected IT component for better visibility and faster
resolution.
• Bind the CI to the alert: At this point, the alert is automatically associated with the identified CI.
It ensures that the alert is connected to the right IT component in the system, making it easier
to track and manage, and helping teams quickly address the issue.

Types of CI binding
Binding type

Description

Implicit Node binding (Default
binding)

Binds alerts to host CIs by matching the Node field in the
event with attributes like Name, FQDN, IP, or MAC address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3110


<!-- page 3111 -->
Binding type

Description

CI field matching binding

Binds alerts using the CI Identifier field, a JSON structure
containing column names and values (e.g., Name, FQDN, IP,
or MAC Address).

CI identification binding

Binds alerts to specific applications on hosts using event
rules.

Process-level binding

Binds alerts to application CIs by matching process-related
attributes.

Device-level binding

Binds alerts to device CIs by matching event data with
attributes like hostname, IP address, or MAC address.

Key benefits
• Improved service visibility: Alerts linked to CIs provide a clear picture of which IT components
are affected.
• Enhanced automation: Automated CI binding reduces manual effort, ensuring consistency.
• Faster resolution: Teams can quickly diagnose and resolve issues by focusing on the impacted
CI.

Example use case
Scenario: A company’s email server named MailServer-01 goes down.
Process:
1. Alert generation: An alert is triggered when MailServer-01 becomes unresponsive.
2. CI binding: Event Management automatically looks for MailServer-01 in the CMDB
(Configuration Management Database).
◦ If found, the alert is linked to this specific server (CI).
◦ If not found, the alert remains unlinked until more information is provided.
Result: The alert now shows that MailServer-01 is the affected system.
• Impact: IT teams immediately know which server to investigate.
• Efficiency: They don't need to check other infrastructure components or systems, saving time
and effort.
This direct link helps streamline troubleshooting by pointing to the exact problem source.
Related topics
Simulate event processing
Binding process flow
Learn the process of binding Configuration Items (CIs) to alerts. This includes handling event
arrival, binding alerts using available fields when no node is present, and searching the CMDB
for matching hosts. It also explains linking alerts to CIs based on host and CI type detection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3111


<!-- page 3112 -->
CI binding to alerts: Flow diagram

Process of linking CIs to alerts
1. Event Arrival: When an event is received, Event Management checks for node or CI identifiers.
2. Is Node Value Present?
◦ Yes: If a node value is provided, Event Management searches the CMDB for a matching host.
◦ No: If no node is found, the system attempts to bind the alert using other available details,
such as:
▪ Alert Type
▪ Additional Information
▪ CI Identifier
3. Host and CI Type Detection:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3112


<!-- page 3113 -->
◦ Both Found: If both a host and CI type are identified, the alert is linked to the corresponding
device CI.
◦ Host Only Found: If only a host is identified, the system links the alert to an application CI.

Additional Considerations
• Event Processing Notes: The event can include the binding process flow in its Processing
Notes field, providing insights into the binding actions.
• Binding to Retired CIs: By default, events do not bind to CIs with a Retired status. To enable
binding to these CIs, set the evt_mgmt.ignore_retired_cis_in_binding property
to false.
• Specifying CI Statuses for Binding: You can configure the

evt_mgmt.install_status_list_to_ignore_in_binding property by
specifying CI status numbers to control which CIs are considered for binding. For example:
CI Statuses
Status Number

Status

1

Installed

2

OnOrder

3

InMaintenance

4

PendingInstall

5

PendingRepair

6

InStock

7

Retired

8

Stolen

100

Absent

Note: To specify multiple statuses, separate each status number with a comma.
Binding alerts to a specific host CI (default binding)
Binding alerts to Configuration Items (CIs) using the Node field or the CI Identifier field ensures
accurate event association. By comparing an event record’s Node or CI Identifier value,
alerts are linked to the right system. This improves response, root cause analysis, and impact
assessment by providing clear visibility into affected assets.

How default binding works
The system can perform default binding using the Node field or the CI Identifier field from the
event record.
When an event enters the system, a key field like Node is available in the event record. However,
there is no Node field in the CI. Instead, the node value from the event is compared with various
attributes in the host CI, such as Name, Fully Qualified Domain Name (FQDN), IP, or MAC
address. If a match is found, the alert is linked to the corresponding CI. This is the default method
for binding alerts to CIs.
The property sa.active_operation_status is used by the default binding mechanism,
specifically when binding via IP/MAC using the node field in the event. When an event attempts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3113


<!-- page 3114 -->
to bind to a host through the node field (using IP/MAC), the system ignores hosts whose
operational status is not included in this property and the operational status of the host must
also not be null. By default, the property value is "1", which corresponds to Operational. You
can extend the list to include additional statuses, and any status in the list is not ignored during
binding.
Example: If sa.active_operational_status = "1,2", then both Operational and Nonoperational hosts are considered valid for binding. The status attribute is defined by the following
values:
• 1 – Operational
• 2 – Non-operational
• 3 – Repair in Progress
• 4 – DR Standby
• 6 – Retired

Note: In this binding process, the CI must be a host. Host CIs include Computers,
Operating Systems (OS), Switches, Routers, or any CI type/class that extends the
[cmdb_ci_hardware] table, meaning the CI type or class must be a hardware component.
If no match is found using node, the system looks at the CI Identifier field on the event
record. The CI Identifier is a JSON structure containing column names and values
for comparison (e.g., Name, Fully qualified domain name, IP, or MAC Address). The
JSON is: {"column_name":"<column_value>"}. For example, if we want to bind to a CI
identified by serial_number whose value is Dell Latitude 7420 Laptop, the JSON is:
{"serial_number":"Dell Latitude 7420 Laptop"}. If a match is found, the alert
is linked to the corresponding CI.

Difference between binding with Node vs. CI Identifier
In default binding, the system considers all fields in the Additional Information field and
attempts to match their values with the CI table. The CI Identifier field allows specifying
particular fields for matching, even if they are not present in Additional Information. This
process uses a predefined JSON structure and applies only when the CI is a host.

Note: Even if the Node or the CI Identifier successfully binds the alert with the CI, event

rules further determine how the binding occurs using the Override default binding check
box available in Event rules. This ensures that alerts are bound correctly based on business
logic, not just direct matches. This ensures that alerts are bound correctly based on
business logic, not just direct matches.

Example: Resolving a CI Using Node and Event Rules
Imagine a server (Server-123) in your network generates an event. The event record contains a
Node field with the value "Server-123.example.com".
1. Matching with CI Attributes:
a. The system checks the Node value against the CMDB.
b. It compares "Server-123.example.com" with the FQDN, IP, MAC address, or Name of existing
host CIs.
c. If a match is found (e.g., FQDN in the CMDB is also "Server-123.example.com"), the alert is
linked to that CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3114


<!-- page 3115 -->
2. Applying Event Rules: Even if the Node resolves to Server-123, additional event rules might
determine if the alert should be linked differently. For example, an event rule may specify that
alerts from Server-123 should be linked to a parent CI (like a cluster) instead of the individual
server.
Overriding default binding
Overriding default binding allows flexibility in linking alerts to CIs beyond the default Node-based
matching. This helps customize alert binding based on business needs, ensuring accurate
associations and preventing mislinked alerts, improving incident management and root cause
analysis.
By default, alerts are bound to CIs by matching the node value in the alert with attributes like
Name, FQDN, IP, or MAC Address in the CI. However, if you want to change this behavior—either
by using additional criteria or ignoring the node altogether—you can use the Override Default
Binding check box.
This allows for two scenarios:
1. When Binding Type = CI Field Matching
◦ If the CI is a host, the Node is required for binding. For more information, see Bind host CIs
using CI field matching.
◦ If the CI is not a host, the Node must be empty. For more information, see Bind non-host CIs
using CI field matching.
2. When Binding Type = CI Identification. For more information, see Bind alerts to CIs using CI
identification.
This flexibility ensures alerts are linked correctly based on specific business needs.

Note: You can also use the Service Operations Workspace to define binding rules. For
more information, see Create Enrich automation.
Bind host CIs using CI field matching
When CI Field Matching is used and the CI is a host, the Node value from the alert is used for
binding. The system compares the Node with attributes like Name, FQDN, IP, or MAC Address in
the CMDB to find a match. This ensures that alerts are correctly linked to the corresponding host
CI.

Before you begin

Role required: evt_mgmt_admin

About this task

When an event enters the system, key field like Node is available on the event record. The Node
field generally represents the name of the server. In CI there is no field like Node. However, the
value of Node from the event is compared with different values in the host CI such as Name, Fully
qualified domain name (FQDN), IP, or MAC Address. If a match is found, the alert is linked to the
corresponding CI. This is the default binding of alerts to CIs. In this binding, the CI must be a
host. Host CIs include Computers, OS, Switches, Routers—essentially any CI type or class that
extends the [cmdb_ci_hardware] table.
There may be cases where no match is found because the column names in the event record
and the table differ for the same item. In such cases, you can manually create an additional keyvalue pair with a name matching the table column, ensuring the matching process continues
successfully. For information on how to create a manual field, see Bind CIs using CI field
matching and handling column name differences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3115


<!-- page 3116 -->
Note: Even if the node successfully binds the alert with the CI, event rules further
determine how the binding occurs.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New and complete the required fields of the event rule.
3. Select the Binding tab.
4. Select the Override default binding check box.
5. In the Binding type field, select CI field matching.

6. In the CI type field, select the appropriate type of hardware component (such as a server,
router, or storage device) that the CI type represents.
The CI type determines the specific CMDB table where the system searches for the
matching CI. For example, if the CI type is Network Adapter, the system searches in the
[cmdb_ci_network_adapter] table.
7. Select Submit.

Note: You can also use the Service Operations Workspace to define binding rules. For
more information, see Create Enrich automation.
Related topics
Bind non-host CIs using CI field matching
Bind alerts to a specific device
Bind each alert directly to the originating device to establish a clear source of impact. This
ensures accurate troubleshooting, reduces noise from unrelated alerts, and helps teams focus
on resolving the right issue faster.

Before you begin

Role required: evt_mgmt_admin

About this task

In IT environments, multiple devices like switches have many smaller components, such as
ports. When something goes wrong, it's not enough to just say the switch has an issue—the
system needs to pinpoint exactly which port is causing it. Binding alerts to the specific port that
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3116


<!-- page 3117 -->
triggered the issue allows teams to act faster and fix the real issue without wasting time checking
the entire switch or unrelated components.
The following example procedure shows the alert binding configuration for a switch named
IP-Switch-1, ensuring alerts target the correct port. The event rule setup starts by enabling
the Override default binding option and selecting CI field matching as the Binding type.
Choosing Switchport as the CI type instructs the system to bind alerts to individual ports.
The Binding Device Map defines how the system links the switch (cmdb_ci_ip_switch) to its
ports (dscy_switchport) using the cmdb_ci reference field. This map guides the binding logic.
Under Configuration > Network > Switches, selecting IP-Switch-1 reveals its switchports and
interface names. When an incoming event includes a matching interface name in the Additional
information field, the system binds the alert directly to the correct port—ensuring precise and
meaningful alert context.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New.

3. Select the Binding tab.
4. Select the Override default binding check box.
5. In the Binding type field, select CI field matching.
6. In the CI type field, select Switchport.
The CI type determines the specific CMDB table where the system searches for the matching
CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3117


<!-- page 3118 -->
7. Navigate to All and search em_binding_device_map.list.
The Binding Device Maps page opens. Here the column values From ci type is mapped to
To ci type using the Mapped column. For example, cmdb_ci_ip_switch is mapped to the
Switchport [dscy_switchport] table using the reference field cmdb_ci.

8. Navigate to All and search switches and select Configuration > Network > Switches.
The IP Switches page opens.

9. Select IP-Switch-1 to view the details page.
10. Select the Switchports tab.
11. Navigate to All > Event Management > All Events.
12. Select the event with Node value as IP-Switch-1.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3118


<!-- page 3119 -->
In the following image, you can see the processing notes indicating that the binding has
occurred between the alert and the matching device.

Bind alerts to a specific process
Bind specific server processes to their corresponding Configuration Items (CIs) in the CMDB
to ensure accurate mapping and visibility. This binding is crucial for identifying service
dependencies, reducing ambiguity from generic process names, and enabling effective
monitoring. It supports faster alert resolution, impact analysis, and better alignment between
infrastructure and application components in dynamic environments.

Before you begin

Role required: evt_mgmt_admin

About this task

Sometimes, when an alert (or event) comes into the system, it needs to be connected — or
"bound" — to a Configuration Item (CI) in the CMDB. By default, the system binds alerts to host
specified in the Node field of the event. Imagine a situation where you have a Windows server
running multiple processes, like MSFT SQL Instances and SQL Server Analysis Services. The
challenge is to bind an event to the specific process instance rather than just the host server,
as multiple processes could have the same generic name, such as MSSQLSERVER, leading to
ambiguity.
The following example procedure uses a Windows server as the host, MSFT SQL Instances as
the CI class of the process, and MSSQLSERVER as the process name. The following steps are
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3119


<!-- page 3120 -->
based on the assumption that the event Node field of the event provides the host name, and the
Additional Information field contains specific process details required for binding.
Alert-to-CI Binding via Process Mapping
Action

Steps

Set event rule: Add process name

Add the process name sa_process_name
in the event rule.

Set event rule: Define CI type

Select the target CI type in the event rule. For
example, MSFT SQL Instances.

Define process mapping

Navigate to the Process to CI Type Mapping
table [em_binding_process_map] and add
an entry mapping a CI type (e.g., MSFT
SQL Instances) to a process name (e.g.,
MSSQLSERVER).

Bind CI to alert

When an event is triggered, the system:
1. Applies default binding to identify the host.
2. Checks the CI type specified in the event
rule.
3. Looks up the Process to CI Type Mappings
table [em_binding_process_map] for a
matching process name and CI type.
4. Searches the CI Relationships table
[cmdb_rel_ci.list] for a Runs on::Runs
relationship between the process and the
host CI.
5. Binds to a process when values from the
CI Type column match the corresponding
entries in the Process column in the
Process to CI Type Mappings table
[em_binding_process_map].

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New.
3. Select the Transform and Compose Alert Output tab and perform the following steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3120


<!-- page 3121 -->
a. Select the Manual attributes check box.
b. Enter sa_process_name is ${process}.
sa_process_name is a special variable name used to specify the name of the process
to search for. ${sa_process_name} will appear in the Additional information field of the
event. Instead of ${process}, you can enter any other field name from which the variable
sa_process_name derives its value.
4. Select the Binding tab.
5. Select the Override default binding check box.
6. In the Binding type field, select CI field matching.
7. In the CI type field, select MSFT SQL Instances.
The CI type determines the specific CMDB table where the system searches for the matching
CI.

8. Navigate to All and search em_binding_process_map.list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3121


<!-- page 3122 -->
The Process to CI Type Mappings page opens. Here the values from the CI type column are
mapped to entries in the Process column. For example, cmdb_ci_db_mssql_instance is
mapped to the MSSQLSERVER process.

9. Optional: Navigate to All and search cmdb_rel_ci.list.
The CI Relationships page opens.
10. Optional: Verify that the node is in a Runs on::Runs relationship with the appropriate process.

11. Navigate to All > Event Management > All Events.
12. Create an event with Node value as the name of the host such as Windows Server (V-W2K3SQL2008).
The Additional information field in the event has a key called process whose value is
MSSQLSERVER.
In the following image, you can see the processing notes indicating that the binding has
occurred between the alert and the matching process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3122


<!-- page 3123 -->
Bind non-host CIs using CI field matching
If no match is found using the Node field, the system uses the CI identifier field to match alerts
with non-host CIs based on attributes like Name, FQDN, IP, or MAC. This ensures accurate
alert association, improving visibility, troubleshooting, and root cause analysis for diverse
infrastructure components.

Before you begin

Role required: evt_mgmt_admin

About this task

If no match is found using the Node field, the system looks at the Additional information field of
the alert. When you select a CI type, such as File System, the system automatically searches for
a matching record in the [cmdb_ci_file_system] table. It uses the details provided in event rule
record, specifically in the Additional information field, to refine the search. For example, if the
Additional information field contains values like {"mount_point": "/snap/amazonssm-agent/9565", "name": "/dev/loop0"}, the system looks for a record in the
[cmdb_ci_file_system] table that matches these values. If a match is found, the system binds
the CI to the alert, ensuring accurate identification and association. Similarly, if the CI type is
Network Adapter, the system searches in the [cmdb_ci_network_adapter] table.
There may be cases where no match is found because the column names in the event record
and the table differ for the same item. In such cases, you can manually create an additional keyvalue pair with a name matching the table column, ensuring the matching process continues
successfully. For information on how to create a manual field, see Bind CIs using CI field
matching and handling column name differences.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New and complete the required fields of the event rule.
3. Select the Binding tab.
4. Select the Override default binding check box.
5. In the Binding type field, select CI field matching.

6. Select the Transform and Compose Alert Output tab.
7. Clear the Node field value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3123


<!-- page 3124 -->
8. In the CI type field, select the non-host CI.
A non-host CI type is any CI type that does not extend the [cmdb_ci_hardware] table, such as a
Service or VM. The CI type determines the specific CMDB table where the system searches for
the matching CI.
9. Select Save.
Bind CIs using CI field matching and handling column name differences
Bind CIs by matching event Additional information fields with CI attributes. If column names
differ, manually create an additional key-value pair to align with the CI table, ensuring accurate CI
association.

Before you begin

Role required: evt_mgmt_admin

About this task

If no match is found using the Node field, the system looks at the Additional information field in
the event record. There may be cases where no match is found because the column names in
the event record and the table differ for the same item. In such cases, you can manually create
an additional key-value pair with a name matching the table column and add it to the Additional
information field, ensuring the matching process continues successfully.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New and complete the required fields, or open an existing event rule record to modify it.
3. Select the Transform and Compose Alert Output tab.
4. Select the Manual attributes check box.
5. In the Field Name and Field Value fields, enter the corresponding field name and specify the
source field from which the value should be populated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3124


<!-- page 3125 -->
Use the add icon (

) icon to add multiple fields as needed.

6. Select Save.
The fields are created in the event rules record. However, when any alert is generated from an
event using the event rule, the manually added fields appear in the Additional information
field of the alert.
Bind alerts to CIs using CI identification
Bind alerts to specific applications on hosts using event rules to ensure accurate tracking and to
improve issue resolution speed—leading to efficient remediation and better alignment of alerts
with the right resources.

Before you begin

Role required: evt_mgmt_admin

About this task

Before going through the procedure, let’s first understand how this binding works with an
example. Suppose an out-of-the-box event rule, SCOM Metrics – IIS WebServer, generates an
alert for a Microsoft IIS Web Server running on a host. Instead of binding the alert to just the host
machine, you want it to be associated with the specific application (IIS Web Server) where the
issue occurred. Here’s how the system ensures accurate binding.
Let's say in the Binding tab, the Class and Container Level 1 are defined along with their
respective attributes, as shown in the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3125


<!-- page 3126 -->
Binding tab

The binding procedure follows these steps:
1. Identifying the Host (Container Level 1)
Since the Microsoft IIS Web Server runs on a host (in this case Hardware), the system first
locates the host, which is defined as Container Level 1. The name field is used to identify
the host, and its value is taken from the Node field of the event. Using this name, the system
searches the CMDB to find a matching host CI.
2. Identifying the Microsoft IIS Web Server CI on the Host
Once the host is identified, the system looks for a Microsoft IIS Web Server CI under that host
with the following attributes:
◦ name = ci_name
◦ sys_class_name = cmdb_ci_microsoft_iis_web_server
Here, ci_name is derived from the key-value pair defined in the Transform and Compose Alert
Output tab of the event rule. Assume that in the Transform and Compose Alert Output tab of
the event rule, the Manual attributes check box is selected and the following key-value pair is
already added:
◦ Field Name: ci_name
◦ Field Value: Microsoft IIS Server@${node}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3126


<!-- page 3127 -->
This ensures that ci_name appears in the Additional information field of the alert and is
used when configuring the attribute field of the CI class.
Transform and Compose Alert Output tab

If a matching Microsoft IIS Web Server CI is found on the identified host, the alert is bound to the
correct application CI rather than just the host. This ensures more precise incident tracking and
resolution, linking the alert to the actual service affected instead of only the machine it runs on.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Select New and complete the required fields of the event rule.
3. Select the Binding tab.
4. Select the Override default binding check box.
5. In the Binding type field, select CI Identification.
6. In the Class field, select a CI class.
7. In the Select an identifier field, select an identifier for the class.
An identifier for a class is a set of rules that helps the system recognize and match CIs
correctly. Think of it like a fingerprint for each type of CI (such as a server, router, or
application). The identifier uses key attributes—like a serial number, hostname, or IP address
—to make sure that when new data comes in, it gets linked to the right CI instead of creating
duplicates. For more information on CI identification rule, see Create a CI identification rule .
8. In the Add value field, add the exact value or specify the source field from which the value for
the field must be populated.
Add or remove fields using the add (

) and the delete (

) icons.

Note: While filling in the CI Class attributes, if you do not find the attribute you need,

you can use the Transform and Compose Alert Output tab of the event rule to add the
necessary key-value pair. For more information, see Configure an event rule to customize
alert content.
The event rule transformation and composition is useful when relevant information exists in
a different field but needs to be extracted or reassigned for proper alert processing. This is
especially important when the required attribute is not directly available and must be manually
defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3127


<!-- page 3128 -->
For example, suppose the Additional information field of an alert contains the alert name
under the Node field. However, for correct processing, we need this value to appear under the
Name field instead. Since there is no existing name attribute in the event, we can manually
create one using the Transform and Compose Alert Output tab in the event rule. Here’s how:
a. Select the Transform and Compose Alert Output tab.
b. Select the Manual attributes check box.
c. Add the following key-value pair:
▪ Field: Name
▪ Field Value: Node
This configuration ensures that the system extracts the Node value and maps it to the name
field, making it available for CI binding and alert correlation.
9. In the Container level 1 area, specify the host.
10. In the Select an identifier field, select an identifier for the container.
11. In the Add value field, add the exact value or the field that is the source for the Select an
identifier field of the container.
Add or remove fields using the add (

) and the delete (

) icons.

12. Select Save.
Example: Binding alerts to non-host CIs
Bind alerts to an application service (a non-host CI) using event rules and event field mapping.
This example demonstrates how to achieve this by leveraging the IP address associated with the
service.

Before you begin

Role required: evt_mgmt_admin

About this task

When an event is generated, it may not always include the exact name of the Application Service
it affects. Instead, it might provide details such as an IP address. In this example, suppose
application services are identified by IP addresses. Since the goal is to bind the alert to an
Application Service, you need to determine which service name corresponds to the given IP
address.
To achieve this, follow these steps:
1. Match the correct Application Service: Override the default binding and select Binding Type
as CI field matching. The binding process needs to associate the alert with an Application
Service, not a host. In the event rule, set the CI Type to Application Service so that the system
searches for the service in the Application Service table (cmdb_ci_service_auto).
2. Extract the IP address from the event description: The event might contain a message like
Service is down. IP address is: 196.1.1.24. You need to extract the IP
address from this description for further processing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3128


<!-- page 3129 -->
3. Translate the IP address into a service name using Event Field Mapping: Use Event Field
Mapping to look up the extracted IP address in the CMDB and find the associated application
service. Once a matching service is found, its name is stored in the Name field of the event.
4. Bind the alert to the correct Application Service: If the service name is identified, the alert's CI
is populated with that service.

Procedure
1. Navigate to All > Event Management > All Events.
2. Open the specific event for which you want to create an event rule.
3. Select Create Event Rule.
The new event rule page opens. Some fields in the event rule are populated based on the
event record data, such as the Source field value.
4. In the Event Rule Info tab, in the Name field, enter application service binding.
5. Select the Binding tab.
In this tab, you select the CI type as a service (non-host) instead of a host because the goal is
to bind alerts to an Application Service, not to a physical or virtual machine.
6. Perform the following steps:
a. Select the Override default binding check box.
b. In the Binding type field, select CI field matching.
c. From the CI type list, select Application Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3129


<!-- page 3130 -->
7. Select the Transform and Compose Alert Output tab.
In this tab, you extract the IP address of the application service into a manually created field.
Extracting the IP allows the system to look up the corresponding service in the Application
Service table (cmdb_ci_service_auto). Without extracting the IP, the system wouldn’t be able to
determine which Application Service the event belongs to, making it difficult to bind the alert
correctly.
8. Perform the following steps:
a. Clear the Node field.
When an event is processed, it often comes with multiple fields of information. The Node
field typically contains the host or device name. However, since the goal is to bind the alert
to an Application Service rather than a host, clearing the Node field ensures that the system
focuses on identifying the correct service instead of mistakenly associating the alert with a
host CI.

b. Under Event Input > Event Raw Info, select Description.
The Edit Regex Expressions window opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3130


<!-- page 3131 -->
c. In the Mark Expressions section, select the IP address, manually enter a field name (e.g.,
service_ip_address), and press Enter to save it.

d. Select Done.
The IP address is extracted into the newly created service_ip_address field, which is
added to the Additional info field of the alert. This allows it to be used later to identify the
corresponding Application Service.
9. Select Submit in the event rule to save your changes.
10. Navigate to All > Event Management > Rules > Event Field Mapping.
In Event Field Mapping, configure the extracted IP address to map it to the corresponding
service name. The event provides only an IP address, but alerts need to be associated with a
service name (not just an IP). The system needs to map this IP to its corresponding Application
Service so that teams can easily identify the impacted service.
11. Select New.
The Event Field Mapping window opens.
12. Perform the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3131


<!-- page 3132 -->
Field

Action

Name

Enter the name of the mapping.
Example: mapping from ip_address to service
name.

Source

Enter AWS.

Note: The source is the same as the
one in the Events record.
Mapping type

Select Map field and transform value (Single
field)

Source field

Enter service_ip_address.

Target field

Enter name.
The target field value is the column
name in the Application Service table
(cmdb_ci_service_auto) where the source
field value is searched.

Transform value pairs
From value

196.1.1.24

To value

Corp E-mail

13. Select Submit.
The system extracts the IP address of the service from the event and stores it in the
service_ip_address field. Since the Application Service table (cmdb_ci_service_auto) does not
have a column for searching by IP address, the Transform value pairs feature is used to map
the IP address to a name—in this case, Corp E-mail and and saves it in the name field within
the Additional info field of the alert. The Target field specifies where to search for the Corp Email in the Application Service table. The system looks for Corp E-mail in the name column of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3132


<!-- page 3133 -->
the Application Service table (cmdb_ci_service_auto). If a match is found, the alert is bound to
the corresponding Application Service.

Example: Bind alerts to CIs using dynamic CI types
Use event field mapping to dynamically bind alerts to the appropriate CIs based on event
attributes, eliminating the need for separate event rules for each CI type (also known as CI class).
This approach simplifies configuration, improves accuracy, and enhances alert to CI binding.

Before you begin

Role required: evt_mgmt_admin

About this task

In general, for an event generated from a specific source mentioned in the Source field, the
system applies the corresponding event rule. The override default binding option in an event
rule specifies a specific CI class for binding. However, in a more dynamic use case, the CI
class is not predefined and can change based on event attributes. For example, suppose a
customer has multiple CIs with the same name, but each CI belongs to a different CI class. In the
traditional event rule method, as the CI class (or the CMDB table) is defined for a CI, the mapping
is incorrect because the system searches in the same CI class for all CIs with the same name
and attributes, instead of looking in the specific CMDB table defined for each CI class.
To resolve this—in other words, to determine the correct CI class to search—the system uses
the CI type field from the event to identify the CI class. By using an event field mapping that
maps from event attributes to CI type, it becomes possible to know which CMDB table to search,
ensuring that the CI is correctly mapped to the event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3133


<!-- page 3134 -->
Procedure
1. Navigate to All > Event Management > Rules > Event Field Mapping.

2. Select Oracle Cloud.
This is an existing event field map used as an example. The event field map details page
opens.

3. Review the event field mapping details page and understand the relevant fields and their
corresponding values.
Event Field Mapping fields
Field

Description

Name

Event field map name.

Source

Event monitoring software that generated the event. In this case, oraclecloud.

Order

Number to define the order in which this action should be processed. Actions with
lower numbers are processed first.

Mapping Select Map field and transform value (Single field).
type
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3134


<!-- page 3135 -->
Field

Source
field

Description

resourceType is a field that is defined in the Additional Information field of the
event defined by the Oracle Cloud system. The possible values of resourceType
are listed in the From value column, while the corresponding CMDB tables for
those values are specified in the To value column in the Transform value pairs
section.
If resourceType is instance, the system searches in the [cmdb_ci_vm_object]
table for CI binding.

Target
field

The CI type field (ci_type) in an event is a special field that provides the CI class
name, indicating which CMDB table to search. The CI type field values are listed in
the To value column in the Transform value pairs section.

Transform value pairs
From
value

Lists the possible values of the event field (e.g., resourceType) that are derived
from the event data.

To value

Specifies the corresponding CMDB table associated with each value listed in the
From value column.
Indicates the CI type to bind the alert to.

View patterns for event group creation
Event groups are sets of events that do not have a matching event rule. You can view the
patterns in a group of events to learn the impact of creating a rule based on the event source and
description patterns.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

Events are grouped according to their source and description.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules.
2. Wait for the group calculation to complete and then click the created link.
If there are not enough events, the calculation will not create groups.
3. In the list of events, select an event.
4. To change the pattern of an event, double-click the pattern, make your changes, and then click
Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3135


<!-- page 3136 -->
Refresh event rules
Manually update event rules to reflect current event information because once an event rule is
created, the Event Additional info and Event Raw info fields are not automatically updated.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > All Events.
2. Select the event.
3. Select Refresh Event Rule.
4. Select the event rules to refresh.
5. Select Refresh Selected.
If you selected multiple event rules, then the last selected item in the list opens in the Event
Rule Designer.

Note: If the current event rule regex expressions do not match the selected event after
the refresh, the update fails and an error message appears specifying the problematic
fields. This safeguard ensures that your previously defined event rule regex expressions
are not broken due to the refresh.
Find rules that will be applied to an event
View the rules that will be applied on an event to determine how this event will be processed.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

Procedure
1. Navigate to Event Management > All Events, and then click an event number.
2. Under Related Links, click Find matching rules.
3. Review the information that appears in the blue box at the top of the page, and review all
Processing Notes to find rules that apply to an event.
Related topics
View events
Simulate event processing
You can simulate event processing logic on events and display the resulting alert to better
understand which rules are executed on a given event and how the event fields change after the
rule is executed.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > All Events.
2. Open the event you want to simulate.
3. In the Related Links section, select Simulate event processing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3136


<!-- page 3137 -->
4. In the info message that appears at the top of the screen, select the link to the created
simulated alert.
5. Optional: View which event rules and event field mapping rules were applied and the event
field values by selecting the Activities tab.
Event field mapping configuration
Use Event field mappings rules to map values from specific fields to values in other fields.
Event Management stores event field mappings in the Event Field Mapping [em_mapping_rule]
table. The mappings apply after event rule processing and prior to alert generation. The mapping
values from the Event Mapping Pair [em_mapping_pair] table apply to the alert. The original
event severity remains unchanged.
For example, if events come with the field "org_severity" with the values "Low, Medium, High"
and you want the alert Severity to hold this value, create an event field mapping rule that maps
the field org_severity to Severity, with these values:
Example showing org_severity mapped to Severity
Original org_severity value

Map to alert Severity value

Low

Warning

Medium

Major

High

Critical

Default event field mappings
Event Management provides default event field mappings for commonly used system monitoring
tools. The Transform Value Pairs from event field mappings format the incoming event data for
Event Management.
You can view the default event field mappings and mapping pairs by navigating to Event
Management > Rules > Event Field Mappings and double-clicking Name.
Create event field mappings
Use event field mappings to map values from specific event fields to values in other fields to
provide more comprehensive information in an alert. Use team-based integrations in event
rules to make sure that connector ownership and execution of rules give precedence to global
rules. Teams can maintain consistency and hierarchy while offering flexibility and customization
options.

Before you begin

Role required: evt_mgmt_admin

About this task

Create the rule to match the event by its class and original values. Also, specify the new values to
replace the original values in the event.

Procedure
1. Navigate to All > Event Management > Rules > Event Field Mapping.
2. Select New or open an existing rule to edit and fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3137


<!-- page 3138 -->
Event field mapping

Event Field Mapping form
Field

Description

Name

Event field mapping name.

Source

Event monitoring software that generated the event, such as SolarWinds or
SCOM. Maximum length: 100 characters.

Order

Number to define the order in which this action should be processed. Actions
with lower numbers are processed first.

Assignment For Team-based integrations, select an assignment group.
group
If no assignment group is defined in the event field-mapping rule, then this rule
is considered global.
When the rules are running – first the global rules run and then the rules that
belong to the assignment group that the event’s source instance belongs to.
Mapping
type

Mapping mechanism that is used to change an event field value.
◦ Map field and transform value (Single field):
Maps the Source field value to the matching value in the Transform value
pairs [em_mapping_pair] table and populates the Target field. Source and
Target fields may be event fields, additional info fields, or alert tags.
◦ Create or update field and set constant value (Constant):
Sets a constant value to a Target field. The Target field may be an event field,
additional info field, or alert tag.
◦ Map field (Copy field):
Copies the exact value of a Source field to the specified Target field. The
Source and Target fields may be Event field, Additional info field, or alert tags.
◦ Map field and transform value using regex: Generically maps the value from
the Source field to the matching value in the Transform value pairs table and
populate the Target field. Source and Target fields may be event, additional
info, or alert tags fields.
◦ Map field using regex:
Copies the value from a generically defined Source field to the Target field.
The Source field must be a field from the event additional info field. The
Target field may be the field of event, additional info, or alert tag. With this
type, you can generically find the name of the Source field by using a regular
expression (regex).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3138


<!-- page 3139 -->
Field

Description

◦ Map field and copy value from regex group:
Copies part of the Source field value to the Target field. Source and Target
fields may be event fields, additional info fields, or alert tags. Define a regex
to specify what part of the Source field should be copied.
◦ Advanced mapping using script:
Implements your own logic for event values transformation by using a script.
When the 'Run after binding' check box is selected, the rule is executed after
the CI binding phase and uses the dedicated script that also has the sys_id
of the CI in the input parameters.
Warning: Complex scripts may affect event processing performance.
◦ Map field from reference table
Use this rule type to extract a Source field value from the selected Reference
table by matching the Field to matchvalue to the Matching alert field value
and then mapping the Source field value to the Target field. The Matching
alert field and the Target field may be event fields, additional info fields, or
alert tags.
Filter

A condition for event field mapping.
Select Add Filter Condition or Add "OR" Clause to configure multiple
conditions.

Note: The filter is case-sensitive.
Active
Run after
binding

Activates or deactivates the event field mapping. If possible, find and apply
another event field mapping rule.

◦ When selected, the rule is executed after the CI binding phase.
◦ Use the relevant prefix to retrieve values from the CI record:
▪ alert_cmdb_ci. to retrieve a field from the CI record. For example: Use
'alert_cmdb_ci.assignment_group’ to populate (and transform) an
alert 'assignment_group' field with the value of the CI’s assignment
group. Dot-walk to a related record is also possible. For example, use
alert_cmdb_ci.asset.model
▪ alert_cmdb_ci_key. to retrieve a value from the CMDB Tags table. For
example, alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding' feature may affect event processing
performance.

Note: This check box is displayed only for the following Mapping types:

Map field and transform value (Single field), Map field (Copy field), Map
field and transform value using regex, Map field and copy value from
regex group, and Map field from reference table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3139


<!-- page 3140 -->
◦ If you selected Map field and transform value (Single field), fill in the fields as appropriate.
Map field and transform value (Single field) fields
Field

Description

Source field

Event field to map - includes all event and
additional info fields. Note: For Additional
info fields use: "additional_info.<field
name>". When the 'Run after binding'
check box is selected, you can use the
alert_cmdb_ci and the alert_cmdb_ci_key
prefixes to receive CI related data.

Target field

Event field where the mapping rule inserts
or updates the value. When this field is
identical to the Source field, the mapping
rule updates the value in memory of the
event field. Alert tags can also be defined by
using the <t_> prefix.

Run after binding

▪ When checked, activates Event field
mapping after CI binding.
▪ Use the following prefix to retrieve values
from the CI record:
▪ alert_cmdb_ci. to retrieve a field
from the CI record. For example, use
'alert_cmdb_ci.assignment_group’
to populate (and transform) an
alert 'assignment_group' field with
the value of the CI’s assignment
group. Dot-walk to a related record
is also possible. For example, use
alert_cmdb_ci.asset.model
▪ alert_cmdb_ci_key. to retrieve a value
from the CMDB Tags table. For example,
alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding'
feature may affect event processing
performance.

Key fields (Transform Value Pairs section)
Field

Description

Key

Value that the mapping rule searches for.
Whenever the event field has this value, the
mapping rule adds the value listed in the
Source field field to the field listed in the
Target field. This field is displayed when the
Mapping type is Map field and transform
value (Single field).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3140


<!-- page 3141 -->
Field

Description

Select + to add more Key fields, as required.
Typical use case: To map the 'event_severity' field in the additional info field with possible
values [such as WARNING, MINOR, CRITICAL, CLEAR, MAJOR] to the severity field,
configure the following:
▪ Source field: 'event_severity'
▪ Target field: 'severity'
▪ Transform value pairs:
▪ From value: 'WARNING', to value: '4'
▪ From value: 'MINOR', to value: '3'
▪ and so forth...
◦ If you selected Create or update field and set constant value (Constant), fill in the fields as
appropriate.
Create or update field and set constant value (Constant) fields
Field

Target field

Description

The Target field may be an an event field,
additional info field, or alert tag.
Typical use case: Set alert severity to 1 for all
events that match the filter.

Value

Value you want to use for the To field. This
field is displayed when the Mapping type is
Constant.

Typical use case: Set alert severity to 1 for all events that match the filter.
◦ If you selected Map field (Copy field), fill in the fields as appropriate.
Map field (Copy field) fields
Field

Description

Source field

Source field value to be copied to the
Target field field.
The Source field may be an event field,
additional info field, or alert tag.

Target field

Event field where the mapping rule inserts or
updates the value.
The Target field may be an event field,
additional info field, or alert tag.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3141


<!-- page 3142 -->
Field

Description

Run after binding

▪ When checked, activates Event field
mapping after CI binding.
▪ Use the relevant prefix to retrieve values
from the CI record:
▪ alert_cmdb_ci. to retrieve a field
from the CI record. For example, use
'alert_cmdb_ci.assignment_group’
to populate (and transform) an
alert 'assignment_group' field with
the value of the CI’s assignment
group. Dot-walk to a related record
is also possible. For example, use
alert_cmdb_ci.asset.model
▪ alert_cmdb_ci_key. to retrieve a value
from the CMDB Tags table. For example,
alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding'
feature may affect event processing
performance.

Typical use case: To copy the IP field from the event additional info field to the alert field
node, use the following:
▪ 'Source field': ip
▪ 'Target field': node
◦ If you selected Map field and transform value using regex, fill in the fields as appropriate.
Map field and transform value using regex
Field

Description

Source field

Source field value to be copied to the Target
field field.
The Source field may be an event field,
additional info field, or alert tag.

Target field

Event field where the mapping rule inserts or
updates the value.
The Target field may be an event field,
additional info field, or alert tag.

Run after binding

▪ When checked, activates Event field
mapping after CI binding.
▪ Use the relevant prefix to retrieve values
from the CI record:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3142


<!-- page 3143 -->
Field

Description

▪ alert_cmdb_ci. to retrieve a field
from the CI record. For example, use
'alert_cmdb_ci.assignment_group’
to populate (and transform) an
alert 'assignment_group' field with
the value of the CI’s assignment
group. Dot-walk to a related record
is also possible. For example, use
alert_cmdb_ci.asset.model
▪ alert_cmdb_ci_key. to retrieve a value
from the CMDB Tags table. For example,
alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding'
feature may affect event processing
performance.
Typical use case: To map severity from the field color in the Additional info field to the
Severity field, use:
▪ Source field: 'color'
▪ Target field: 'severity'
▪ Transform value pairs:
▪ From value: '.*red', To value: '1'. This covers both 'dark red', 'light red', and other values
containing 'red' and maps them all to '1'.
▪ and so forth...
Key fields (Transform Value Pairs section)
Field

Description

Key

Value that the mapping rule searches for.
Whenever the event field has this value, the
mapping rule adds the value listed in the
Source field field to the field listed in the
Target field. This field is displayed when the
Mapping type is Map field and transform
value (Single field).
Select + to add more Key fields, as required.

◦ If you selected Map field using regex, fill in the fields as appropriate.
Map field using regex fields
Field

Description

Source field

Generically defined Source field value to be
copied to the Target field field.
The Source field must be a field from the
event additional info field. With this type,
you can generically find the name of the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3143


<!-- page 3144 -->
Field

Description

Source field by using a regular expression
(regex).
Target field

Event field where the mapping rule inserts or
updates the value.
The Target field may be an event field,
additional info field, or alert tag.

Typical use case: To map the 'region' field from the additional_info field that appears as
'tags.region' or 'tags|region' or 'cloud.region' to an alert tag t_region, use:
▪ 'Source field': *region
▪ 'Target field': t_region
◦ If you selected Map field and copy value from regex group, fill in the fields, as appropriate.
Map field and copy value from regex group fields
Field

Description

Source field

Generically defined Source field value to be
copied to the Target field field.
The Source field must be a field from the
event additional info field. With this type,
you can generically find the name of the
Source field by using a regular expression
(regex).

Target field

Event field where the mapping rule inserts or
updates the value.
The Target field may be an event field,
additional info field, or alert tag.

Run after binding

▪ When checked, activates Event field
mapping after CI binding.
▪ Use the relevant prefix to retrieve values
from the CI record:
▪ alert_cmdb_ci. to retrieve a field
from the CI record. For example, use
'alert_cmdb_ci.assignment_group’
to populate (and transform) an
alert 'assignment_group' field with
the value of the CI’s assignment
group. Dot-walk to a related record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3144


<!-- page 3145 -->
Field

Description

is also possible. For example, use
alert_cmdb_ci.asset.model
▪ alert_cmdb_ci_key. to retrieve a value
from the CMDB Tags table. For example,
alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding'
feature may affect event processing
performance.
Regex group expression

.*_.*_(.*)_.*

Typical use case: To extract the third octet from the IP and save it in the additional info
third_octet field, use:
▪ 'Source field': ip
▪ 'Target field': third_octet
▪ 'Regex group expression': .*_.*_(.*)_.*
◦ If you selected Advanced mapping using script, fill in the fields as appropriate.
Advanced mapping using script fields
Field

Description

Script

The code editor gives text editor support
for inline scripts. The code editor has
these features for the supported language
services and Inline scripts: Syntax coloring,
indentation, line numbers, and automatic
creation of closing braces and quotes, Autosuggestions, and auto-completions.
Editing tips:
▪ To insert a fixed space anywhere in your
code, press the Tab key.
▪ To indent a single line of code, select in
the leading white space of the line and
then press Tab.
▪ To indent one or more lines of code, select
the code and then press Tab.
▪ To decrease the indentation, press Shift
+Tab.
▪ To remove one tab from the start of a line
of code, select in the line and press Shift
+Tab.
▪ To declare variables, use the var keyword
so that they remain within the proper
JavaScript scope.

Run after binding

When the 'Run after binding' check box
is selected, the rule is executed after the
CI binding phase and uses the dedicated

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3145


<!-- page 3146 -->
Field

Description

script that also has the sys_id of the CI in
the input parameters.
Warning: Complex scripts may affect event
processing performance.
◦ If you selected Map field from reference table, fill in the fields as appropriate.
Map field from reference table fields
Field

Description

Reference table

The reference table. Select the table from
where the field is to be mapped to the Target
field in the event.

Field to match

The field from the Reference table to be
matched with the Matching alert field from
the event. It’s used to filter out the Reference
table records.

Source field

Source field value to be copied to the
Target field field.
The Source field is the field of the table that
was selected as the Reference table.

Matching alert field

Event field to find matching Reference
table records. The Matching alert field is
matched with the Field to match field.
The Matching alert field may be the Event
field, Additional info field, or the Alert tag.

Target field

Event field where the mapping rule inserts or
updates the value.
The Target field may be an event field,
additional info field, or alert tag.

Run after binding

▪ When checked, activates Event field
mapping after CI binding.
▪ Use the relevant prefix to retrieve values
from the CI record:
▪ alert_cmdb_ci. In the Matching
alert field, to retrieve a value of a
field from a CI record. For example:
'alert_cmdb_ci.ip_address’ retrieves
IP address information of bound CIs.
When the Matching alert field and
the Field to match fields are reference
fields, dot-walking to sys_id in the
Matching alert field is required. For
example, to use the 'assignment_group'

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3146


<!-- page 3147 -->
Field

Description

value of bound CIs to match with the
Field to match field, use the following
expression in the Matching alert field:
alert_cmdb_ci.assignment_group.sys_id
▪ alert_cmdb_ci_key. to retrieve a value
from the CMDB Tags table. For example,
alert_cmdb_ci_key.subscription notes.
Warning: Using the 'Run after binding'
feature may affect event processing
performance.
Typical use case: Extract 'short_description' from the 'pc_vendor_cat_item' records matching
its 'name' field with the 'cat_item_name' field in the Additional info field of the event and map
it to the 'description' field on the event in the following fields:
▪ 'Reference table': pc_vendor_cat_item
▪ 'Field to match': name
▪ 'Source field': short_description
▪ 'Matching alert field': cat_item_name
▪ 'Target field': description
3. Right-click the form header and select Save.
4. Select Submit.

Example:

The following values comprise a predefined rule that is applied to events in the Trap From
Enterprise 9 class. If the events contain the snmpTrapOID element with a value of
iso.org.dod.internet.private.enterprises.cisco.0.0, the mapping rule
changes the value to reload in the alerts. If the events contain the snmpTrapOID element, a
value of iso.org.dod.internet.private.enterprises.cisco.0.1, the mapping
rule changes the value to tcpConnectionClose in the alerts.

Field

Values

Name

cisco.snmpTrapOID

Source

Trap From Enterprise 9

Mapping type

Map field and transform value
(Single field).

Source field

snmpTrapOID

Target field

snmpTrapOID

Transform Value Pairs

• Pair 1

◦ Key:
iso.org.dod.internet.private.enterprises.cisco.0
◦ Value: reload
• Pair 2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3147


<!-- page 3148 -->
Field

Values

◦ Key:
iso.org.dod.internet.private.enterprises.cisco.0
◦ Value: tcpConnectionClose

What to do next

Test an event field mapping by sending an event that includes a field that is present in the event
field mapping.
Create event field mappings with advanced mapping script
Create event field mappings with advanced mapping scripts to transform raw event data into
structured, meaningful information. This method goes beyond basic configurations, aligns fields
with business context, and improves event correlation. By reducing alert noise and enhancing
visibility, it helps teams respond faster and manage incidents more effectively.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Rules > Event Field Mapping.
2. Select New to fill in the form fields or open an existing one to edit the required fields.
3. In the Mapping type field, select Advanced mapping using script.
If you selected Advanced mapping using script, fill in the fields as appropriate.
eventFieldMappingScript
Name

Type

Description

eventGr

glide record

GlideRecord representing the
event.

origEventSysId

string

Id of the event.

Note: The GlideRecord
event parameter is a
temporary object, and
therefore does not
contain the id of the
original event.
fieldMappingRuleName

string

The name of this field
mapping rule.

Returns
Type

Description

boolean

Value is true if the binding can proceed
successfully, or false if the binding
operation is aborted.

4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3148


<!-- page 3149 -->
Example:

The use case for this script is to automatically enrich incoming events with classification details
before they are processed further. For example, by adding u_alert_classification = "Network"
into the event’s metadata, the system can tag and group network-related alerts more effectively.
This helps streamline event correlation, reduce noise, and improve routing so incidents are
categorized and resolved faster.
This script checks the event’s additional_info field, ensures it contains valid JSON, and then
updates it by adding a new property called u_alert_classification with the value “Network.” If the
JSON is invalid, it logs an error and stops the binding. Otherwise, it saves the updated data back
to the event record and allows the binding to proceed.
try {
var addInfo = eventGr.getValue('additional_info');
if (!addInfo) {
addInfo = "{}";
}
var addInfoJson = {};
// Parse JSON
try {
addInfoJson = JSON.parse(addInfo);
} catch (parseError) {
gs.error("Error parsing additional_info: " +
parseError);
return false;
}
addInfoJson.u_alert_classification = "Network";
var updatedAddInfo = JSON.stringify(addInfoJson);
eventGr.setValue('additional_info', updatedAddInfo);
return true;
} catch (e) {
gs.error("The script type mapping rule '" +
fieldMappingRuleName + "' ran with the error: \n" + e);
}
Event identifiers
Event identifiers uniquely distinguish one event from another. Event Management uses these
identifiers to determine whether to create a new alert or update an existing one.
By default, an event is uniquely identified by the following fields:
• Message Key
• Domain
• Category
Changing the Category field (for example, through a Background Script or Business Rule) may
lead to unexpected system behavior.
If the Message Key is not provided, the system automatically generates one by concatenating
the following fields:
• Source
• Type
• Node

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3149


<!-- page 3150 -->
• Resource
• Metric Name
If the above fields are not defined in the incoming event, you can define them using event rules.
Alert tags
Alert tags allow consolidation for all normalized fields and improve the admin experience to
transform and normalize alert fields (key/value) enabling reuse of normalized fields across
different sources. This improves alert quality for correlation and provides more out-of-the-box
TBAC (Tag Based Automatic Correlation) definitions.

Example: Field normalization in alert management
In some cases, the same information may exist under different field names across data sources.
For instance, an incoming event from one source has the location stored under the field
region, but in other source, the same information is captured under impacted_region. To avoid
confusion and enable consistent grouping, filtering, or automation, we normalize these fields
by creating a unified field — for example,t_region. This field pulls the value from region or from
impacted_region depending what field is present in the event. This way, the normalized field
t_region always holds the location value in a consistent manner, regardless of the original source
field.
Alert tags field appears in the Alerts form. These tags are created by Event Rules and in Event
mapping and are saved in the alert tags' table [em_alert_tags]. The naming convention used to
create key/value pairs is t_<tag name>. This enables reusing tags in the event rules by allowing
users to select tags that were previously defined. When new alert tags are defined, TBAC (Tag
Based Alert Clustering) tags are automatically created. Using these TBAC tags, you can create
new TBAC alert clustering definitions from the new source of tags.
Event field format for event collection
Event Management requires all events to use a standard form, regardless of how they arrive at
the instance.
In the application navigation filter, enter em_event.list.
Event form
Name

Description

em_event.source

Event monitoring software that generated the event, such as
SolarWinds or SCOM. Maximum length: 100 characters.

[Source]
em_event.node
[Node]
em_event.type
[Type]
em_event.resource
[Resource]

Node name, fully qualified domain name (FQDN), IP address,
or MAC address that is associated with the event, such as IBMASSET. Maximum length: 100 characters.
Optional. The metric type to which the event is related, such as
Disk or CPU, which is used to identify an event record from which
alerts are created. Maximum length: 100 characters.
Node resource that is relevant to the event. For example, Disk C,
CPU-1, the name of a process, or service. Maximum length: 100
characters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3150


<!-- page 3151 -->
Event form (continued)
Name

Description

metric_name

The name of the metric that has been measured, such as DB
Disk Free Space (MB), Disk Writes/sec, or Disk
Write Bytes/sec.

[Metric Name]
em_event.event_class
[Source instance]

em_event.message_key
[Message key]
em_event.ci_type
[CI type]

If the em_event.node field is not specified, it is mandatory for alerts
to be created automatically. Values for the em_event.event_class
field originate from either the source generating the events or by
event rule. Name of the machine or software that generated the
event. For example, SolarWinds on 10.22.33.44. Corresponding
field display name is Source Instance.
Unique event identifier to identify multiple events that relate to the
same alert. If this value is empty, it is generated from the Source,
Node, Type, Resource, and Metric Name field values. Maximum
length: 1024 characters.
String containing information about CI type. Maximum length: 100
characters.

em_event.severity

Event severity options are:

[Severity]

• Critical: Immediate action is required. The resource is either not
functional or critical problems are imminent.
• Major: Major functionality is severely impaired or performance
has degraded.
• Minor: Partial, non-critical loss of functionality or performance
degradation occurred.
• Warning: Attention is required, even though the resource is still
functional.
• OK: An alert is created. The resource is still functional.
• Clear: No action is required. An alert is not created from this
event. Existing alerts are closed.

em_event.resolution_state Optional. If the field is empty, the resolution on corresponding
alerts is still pending. Event state from the event source is either
[Resolution state]
New or Closing.
• New, the resolution on corresponding alerts is open.
• Closing event state closes corresponding alerts.
em_event.time_of_event
[Time of event]

Time that the event occurred in the source system. This field is a
GlideDateTime field in UTC or GMT format. Maximum length: 40
characters.

em_event.state

Current processing state of the event:

[State]

• Ready: Event has been received and is waiting to be processed.
• Processed: Event was successfully processed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3151


<!-- page 3152 -->
Event form (continued)
Name

Description

• Ignored: Value is not in use.
• Error: Failure occurred while processing the event. For example,
the event collection method or event Severity is blank.
em_event.alert
[Alert]
em_event.description
[Description]
em_event.additional_info
[Additional information]

processing_notes

If an alert was created as a result of the event, this field contains
the unique ID that Event Management generates to identify the
alert.
Reason for event generation. Shows extra details about an issue.
For example, a server stack trace or details from a monitoring tool.
Maximum length: 4000 characters.
Optional. A JSON string that gives more information about
the event. The JSON data is supported for String values
only, other value types are not supported. You must convert
numbers to String values by enclosing them in double quotes.
For example, this value is not supported: {"CPU":100 } while
this value is supported: {"CPU":"100"}. Another example of a
valid JSON string is: {"evtComponent":"Microsoft-WindowsWindowsUpdateClient","evtMessage":"Installation Failure:
Windows failed. Error 0x80070490"}. This information can be
used for third-party integration or other post-alert processing.
Values in the Additional information field of an Event that are
not in JSON key/value format are normalized to JSON key/value
format when the event is processed. For example, assume that
the following plain text is in the Additional information field
“Connection instance is successful”. When the event is processed,
all this plain text becomes one JSON string and might not be useful
within an alert. In the resultant alert, this string is in the Additional
information field in JSON key/value format, containing the data:
{“additional_content”: “Connection instance is successful"}.
Display of the events processing log.

[Processing Notes]
Custom alert fields
You can populate custom alert fields with data contained in Additional information field of the
event.
Valuable data contained in Additional information fields of events can be useful, for example,
for reporting. Alert fields are automatically populated from fields that have the same name in
the event. This behavior holds true for Additional information event fields and for Additional
information fields that Event Rule adds. Therefore, to populate a custom alert field with the value
in Additional information fields, use the custom field name in the Additional information field.
You can also use Event Rules for this purpose. Values in the Additional information field of an
Event that are not in JSON key/value format are normalized to JSON format when the event is
processed. For more information, see Configure an event rule to customize alert content.
The short description field of an alert is automatically written using the type,
node, and description of the alert. To prevent the short description field
from being over-written, open the sys_properties table, locate the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3152


<!-- page 3153 -->
evt_mgmt.override_alert_short_description property, change the value to
false, and then click Update.
Depending on permissions, you may only be able to create fields with the user_ prefix. If so,
use Event Rules to create an Additional information field with the same name. To prevent some
fields to be copied to the alert field, use the evt_mgmt.alert_black_list_fields
property and add the field names that must be excluded. By default, the fields that are not copied
are:
• message_key
• category
• additional_info
• sys_updated_on
• sys_updated_by
• sys_created_by
• sys_created_on
• sys_mod_count
• sys_id
Testing and sending events
You can manually test and send events to confirm that Event Management properly manages
events and generates alerts.

Before you begin

Role required: evt_mgmt_admin

About this task

For example, you can manually send events to:
• Confirm that the MID Server is using an event connector definition and instance to send
events.
• Confirm that event rules, event field mapping, and other configurations do generate alerts.
• Track an operation or action that did not generate an event.

Procedure
1. Navigate to All > Event Management > All Events.
2. Click New and then fill in the fields.
Event form
Name

Description

Source

Event monitoring software that generated the event, such as SolarWinds or
SCOM. Maximum length: 100 characters.

Node

Node name, fully qualified domain name (FQDN), IP address, or MAC address
that is associated with the event, such as IBM-ASSET. Maximum length: 100
characters.

Type

The metric type to which the event is related, such as Disk or CPU, which is
used to identify an event record from which alerts are created. Maximum length:
100 characters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3153


<!-- page 3154 -->
Name

Description

Resource

Unique event identifier to identify multiple events that relate to the same alert. If
this value is empty, it is generated from the Source, Node, Type, Resource, and
Metric Name field values. Maximum length: 1024 characters.

Metric
Name

The name of the metric that has been measured, such as DB Disk Free
Space (MB), Disk Writes/sec, or Disk Write Bytes/sec.

Source
instance

Name of the machine or software that generated the event. For example,
SolarWinds on 10.22.33.44. Corresponding field display name is Source
Instance.

Message
key

Unique event identifier to identify multiple events that relate to the same alert. If
this value is empty, it is generated from the Source, Node, Type, Resource, and
Metric Name field values. Maximum length: 1024 characters.

Severity

The severity of the event. The options are typically interpreted as follows:
◦ Critical: Immediate action is required. The resource is either not functional or
critical problems are imminent.
◦ Major: Major functionality is severely impaired or performance has degraded.
◦ Minor: Partial, non-critical loss of functionality or performance degradation
occurred.
◦ Warning: Attention is required, even though the resource is still functional.
◦ Clear: No action is required. An alert is not created from this event. Existing
alerts are closed.
◦ OK: An alert is created. The resource is still functional.

Resolution
state

Optional. If the field is empty, the resolution on corresponding alerts is still
pending. Event state from the event source is either New or Closing.
◦ New, the resolution on corresponding alerts is open.
◦ Closing event state closes corresponding alerts.

Time of
event

Time that the event occurred in the source system. This field is a GlideDateTime
field in UTC or GMT format. Maximum length: 40 characters.

State

The current processing state of the event:
◦ Ready: Event has been received and is waiting to be processed.
◦ Processed: Event was successfully processed.
◦ Ignored: Value is not in use.
◦ Error: Failure occurred while processing the event. For example, the event
collection method or event Severity is blank.

Alert

If an alert was created as a result of the event, this field contains the unique ID
that Event Management generates to identify the alert.

Description Reason for event generation. Shows extra details about an issue. For example,
a server stack trace or details from a monitoring tool. Maximum length: 4000
characters.
Additional A JSON string that gives more information about the event. The JSON
information data is supported for String values only, other value types are not
supported. You must convert numbers to String values by enclosing
them in double quotes. For example, this value is not supported:
{"CPU":100 } while this value is supported: {"CPU":"100"}. Another
example of a valid JSON string is: {"evtComponent":"Microsoft-Windows© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3154


<!-- page 3155 -->
Name

Description

WindowsUpdateClient","evtMessage":"Installation Failure: Windows failed. Error
0x80070490"}. This information can be used for third-party integration or other
post-alert processing. Values in the Additional information field of an Event
that are not in JSON key/value format are normalized to JSON key/value format
when the event is processed. For example, assume that the following plain
text is in the Additional information field “Connection instance is successful”.
When the event is processed, all this plain text becomes one JSON string and
might not be useful within an alert. In the resultant alert, this string is in the
Additional information field in JSON key/value format, containing the data:
{“additional_content”: “Connection instance is successful"}.
3. Click Submit.
View event processing statistics
Extract statistics from your instance to ensure that performance is not affected and extract
metrics related to event processes to monitor event processing status.

Before you begin
Ensure that the Event Management - Collect xmlstats job is active. Configure this
scheduled job by navigating to System Definition > Scheduled Jobs.
You can control the processing of event statistics using the
evt_mgmt.event_processing_stats_period property. For information about
configuring this property, see Configure statistics processing period.
Role required: evt_mgmt_operator

About this task

You can view key metrics from the instance to ensure that performance is not affected and
monitor the status of the processing of events. For more information about viewing self-health
monitoring statistics, see View self-health monitoring statistics for Metric Intelligence.

Procedure
1. In a browser where the instance is running, run the XML Stats script by appending the
following text to the instance URL: xmlstats.do?include=XMLStatsEm
2. Press Enter.
3. Monitor the event processing metrics that are reported to ensure that events are processed
according to accepted benchmark values.

Result

Example: Sample output after running the XML Stats script
<xmlstats created="Tue Oct 23 04:01:25 PDT 2018"
includes="XMLStatsEm" version="2">
<itom_event_management>
<event_processing>
<processed count="47" max_process_time="10"
mean_process_time="5" record_time="2018-10-23 11:00:41"/>
<ready count="7" oldest_ready_event="37" record_time="2018-10-23
11:00:41"/>
<error count="5" record_time="2018-10-23 11:00:41"/>
<total_created count="5" record_time="2018-10-23 11:00:41"/>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3155


<!-- page 3156 -->
</event_processing>
</itom_event_management>
</xmlstats>
The event processing metrics in the report are described in the following table.

Note: The default processing cycle is events created in the last hour and updated in the
last minute.
Event processing statistics
Metric

Description

Event processing statistics
processed count=n

Number of events processed by the instance.

max_process_time=n

Longest time taken by the instance to process an event.

mean_process_time=n Average time taken by the instance to process the events in this cycle.
Event ready statistics
ready count=n

Number of events that are in Ready state and are available to be
processed.
Default processing cycle: events created in the last hour and updated
in the last minute.

oldest_ready_event=n Longest time taken by an event to remain in Ready state. If this metric
has a value that is bigger than your benchmark figure, investigate the
event further to determine what is impeding the processing.
Default processing cycle: events created in the last hour.
Other processing statistics
error count=n

Number of events for which errors were reported.
Default processing cycle: events created in the last hour and updated
in the last minute.

total_created count=n

Overall number of events that were processed during this event
processing cycle.
Default processing cycle: events created in the last hour.

Enable processing of event process statistics
Enable the system property that switches on statistics processing for events to let the platform
collect and analyze metrics such as event volume, processing flow, and handling time. This helps
you monitor system performance, identify bottlenecks, and optimize event handling for faster
and more efficient operations.

Before you begin

Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3156


<!-- page 3157 -->
Procedure
1. Navigate to All > System Properties > All Properties.
2. Select New and fill in the form.
System property fields
Field

Description

Name

Name of the property you are creating.

Description Narrative that describes the property and its function.
Choices

Comma-separated values for a choice list. If you need a different choice list
label and value, use an equal sign (=) to separate the label from the value. For
example, Blue=0000FF, Red=FF0000,Green=00FF00 displays Blue, Red, and
Green in the list, and saves the corresponding hex value in the property value
field.

Type

Data type, that is selected from a list (for example, integer, string, or true|false).

Value

Desired value for the property. When retrieving properties using the
gs.getProperty() method, treat the results as strings. For example, a true|
false property returns 'true' or 'false' (strings), not the Boolean equivalent.

Read roles

Roles that have read access to this property.

Write roles

Roles that have write access to this property.

3. Select Submit.
Related topics
Add a system property
Configure statistics processing period
Set the time period, in seconds, for collecting event processing statistics. For example, you can
set a time period twice as long as the default 60 seconds to collect more statistics.

Before you begin

Role required: evt_mgmt_admin

About this task
Use the evt_mgmt.event_processing_stats_period property to configure the
XMLStatsEm script time to collect event processing statistics. The default value of this property
is 60 and the unit is second. Set the property values to run the script over a longer or shorter
period. For example, set a shorter period of statistics collection so fewer CPU resources are
used.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for the evt_mgmt.event_processing_stats_period property.
Either configure the value of an existing
evt_mgmt.event_processing_stats_period property to run the XMLStatsEm script
over a shorter or longer time period or create a new property if it does not exist already.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3157


<!-- page 3158 -->
◦ If the property exists, set the property to the required time period to enable the XMLStatsEm
script time to collect event processing statistics and click Update.
◦ If the property does not exist, click New, fill in the form, and click Submit.
Related topics
Add a system property
Manage and monitor alerts
An alert is a notification for selected events that are considered to be important and require
attention. Event Management generates alerts based on event rules.
You can monitor and resolve alerts in ways that are based on alert impact calculations and alert
configuration and property settings.
Alert management rules for resolving alerts
You can configure Event Management to respond to alerts automatically. An alert management
rule determines the required alert response, such as to open an incident, knowledge base
article, open a task, launch remediation action.
Alert management rules provided with the base system as a store application (Alert Rules
Management [sn_em_arm]) to help you respond to alerts. You can create filters to specify
conditions for the rule so that the remedial action specified in the rule takes effect only when
the conditions are met. For example, launch the required subflow or open an incident based on
an alert. The alert's execution history is automatically updated to indicate the actions that were
invoked.
Users with the evt_mgmt_admin role can use the alert management rule designer to create and
customize alert management rules to act on specified alerts. Define rules with filters to determine
which alerts the rule applies to. You can create rules to launch applications, URLs, subflows,
remediation actions, or take other actions, such as to open an incident. For more information,
see Create an alert management rule.
Users with the evt_mgmt_operator role can manually run alert management rules.

Alert management rule flow
The flow to create and run an alert management rule is:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3158


<!-- page 3159 -->
Alert management rule components
Component

Description

Alert Info

Configure a name and general information for the rule.

Alert Filter

Specify a filter to determine to which alerts the rule applies. You can
specify the related list conditions.

Note: The fields that are not supported for alert filtering
are: Overall Event Count, Priority, Priority Group, Priority
Breakdown, Tags, and Impacted Services.
Actions

Specify the response to the alert, such as to run a subflow, perform
remediation action, launch an application, or launch a URL in a
browser.

How rules are applied to updated alerts
Alert management rules run on all updated open alerts. Rules don’t run on closed alerts, even
if they’ve been updated. The filters determine whether the rule's actions apply to the alert. For
example, if a rule's condition indicates that an email message is sent when the alert severity
changes to Major, the rule applies to an alert updated by a severity change from Warning to
Major.

Use of filters and other actions
Filters ensure that the rule is invoked only when the configured condition occurs, and not for
every update of the alert. For example, you can configure a rule so that updates that aren’t
relevant (such as a Work notes field update) don’t cause the rule to run. As another example, a
filter condition can specify that the alert management rule runs only when the alert severity is
critical.
You can perform the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3159


<!-- page 3160 -->
• Specify a filter that determines which alerts the rule applies to.
• In the Related List Conditions section of the form, configure additional conditions, for example,
with an Alert > Parent relationship, to filter for any alerts that were received today.
• Respond to alerts. For example, by using subflows and workflows, create incidents for primary
alerts with critical severity, or open a search engine in a browser to search for data according
to the description field of the alert.
• Apply remediation. Remediation is based on Orchestration workflows that can be scripted to
perform remediation tasks such as gathering system information or rebooting a server.

Note: For enhanced performance of Event Management - Evaluate Scoped
Alert Rules Management scheduled jobs, use subflows instead of workflows.

Scheduled jobs that check alert management rules
Alert management rules are checked every 11 seconds by the default Event Management Evaluate Scoped Alert Rules Management0 scheduled job. The job then executes
the required actions. For large-scale environments, you can add more than one job. Please
contact Customer Service and Support.

Note: Only new users from Vancouver and up get two scheduled jobs: Event

Management - Evaluate Scoped Alert Rules Management0 and Event
Management - Evaluate Scoped Alert Rules Management1. Users
upgrading from previous family releases remain with a single scheduled job Event
Management - Evaluate Scoped Alert Rules Management0.
Don’t modify the sn_em_arm.alert_management.num_of_jobs property.
By default, the alert grouping job (Service Analytics group alerts using RCA/Alert Aggregation)
and the alert management (Event Management - Evaluate Scoped Alert Rules Management0)
jobs run independently of each other. For more information about coordinating the alert
response and the automated alert grouping, see Synchronizing alert response with automated
alert grouping.

Migrate existing alert action rules
Existing alert action rules from an earlier release can be migrated to become alert management
rules. You can modify an alert action rule only after migrating it to an alert management rule. For
more information, see Migrate an alert action rule to an alert management rule.
Create an alert management rule
Create an alert management rule to track alerts and resolve them by determining the required
response, for example, to open an incident or launch remediation action.

Before you begin

To enable remediation with a subflow, you can use a subflow that is available with the base
system, or you can create your own subflow. For details, see Create a custom subflow for alerts.
Role required: evt_mgmt_admin, flow_designer

About this task

Use alert management rules to track and resolve alerts.
While working in the alert management rule designer, you can work in multiple sections without
losing information in any section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3160


<!-- page 3161 -->
Note:
• Alert management rules that are not configured to perform any action are skipped and
the rule is automatically set to inactive.
• If an alert is bound to a CI by a user action (such as an alert management rule) and the
CI is in the Maintenance state, you must manually bind the CI to the alert and mark it with
the In Maintenance status.
Create alert management rules that:
• Locate other alert management rules that have relevance to the selected alert.
• Determine when the execution of the rule takes place.
Alert management rules do not necessarily complete in the order in which they are invoked.
You can configure alert management rules to:
• Automatically generate and link incidents, tasks, or knowledge articles to alerts.
• Automatically apply a remediation workflow or enable users to manually run remediation.
• Automatically construct a URL according to the value of specified fields in the alert.
To assist you, several alert management rules are provided with the base system. You can use
them as presented or you can use them as examples to build custom alert management rules.
Alert management rules provided with the base system
Rule

Description

Active

Open sensor
The sensor dashboard in the Paessler PRTG
dashboard in PRTG Network Monitor (PRTG) application opens.

Yes

Oracle EM Launch
Target Status and
View Events

Launch Oracle Enterprise Manager to view:

Yes

Drilldown to OMI

Drill down to the HP Operations Manager i (OMi)
application.

Yes

Create Incident
on Primary Critical
Alert

Create an incident for primary critical alerts. The
incident can be created automatically or manually.

No

Search Google for
"description"

Open Google Search in a browser to search for data
according to the description that appears in the
alert.

Yes

Create Incident

Create an incident for all alerts that are not in
maintenance state. The rule runs automatically on
selective update.

No

Create Incident
Manually

Manually create an incident for alerts that are not in
maintenance state.

Yes

Create Major
Create a major incident candidate for all alerts that
Incident Candidate are not in maintenance state and are not secondary
alerts.

No

• Target Status
• Event for alerts from source Oracle EM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3161


<!-- page 3162 -->
Alert management rules provided with the base system (continued)
Rule

Description

Active

A major incident candidate can be promoted to
become a major incident.
Create Major
Incident

Create a major incident for all alerts that are not in
maintenance state and are not secondary alerts.

No

If your instance was upgraded from Kingston, the alert action rules that were provided with the
Kingston base system are available to you. However, if you modified any of the rules, the changes
made are not carried over.
Alert management rules run 5 seconds after an alert is updated, resetting the timer if updates
occur within that window. This delay ensures remediation actions, such as incident creation, are
triggered only when the issue is clear and stable, reducing duplicates and unnecessary noise.
To change the default 5-second delay, create the evt_mgmt.alert_rule_delay property
on the All > System Properties > All Properties and change the value. To know how to create a
property, see Add a system property .

Procedure
1. Navigate to Event Management > Rules > Alert Management Rules.
2. Click New and then fill in the fields.
Alert Management Rule form
Field

Description

Name

Unique name for the rule.

Active

Check box for enabling the rule.
If this check box is selected, you must specify:
◦ in the Alert Filter section, an alert filter
◦ in the Actions section, at least one of any of these actions:
▪ active subflow
▪ workflow
▪ quick response

Order

Order in which rules are evaluated when multiple rules are defined
for the same alert. Alert management rules are evaluated in
ascending order. The default value is 100.

Multiple alert rules

Instruction about whether to search for additional rules:
◦ Search for additional rules: Execute the current rule then
continue and execute other matching rules in the order of rule
priority, where the lower number has the higher priority.
◦ Stop search for additional rules: Execute only the current rule for
the alert that matches the filter.
When selecting this option, a rule configured second in a rule
hierarchy may run before the results of the first rule take effect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3162


<!-- page 3163 -->
Field

Description

Description

Descriptive text for the rule.

Assignment group

Assignment group that works on the alert.
If no assignment group is defined in the alert rule, then this alert
rule is considered as a global rule.
When the rules are running – first the global rules run and then the
rules that belong to the assignment group of the alert.

3. Click Alert Filter and specify conditions for alerts that this rule is applied to.
Alert Filter stage
Field

Description

Rule is activated when

Rule execution takes place when:
◦ Alert changes to filter–content changes to the alert cause the
alert to match the filter. If the filter is matched on following update
of the alert, the rule is not applied. If the alert was closed and
then reopens, at the next update of the alert and the filter is
matched, the rule is applied. Thereafter, when there is an update
of the alert, the rule is no longer applied.
◦ Alert matches filter–the content of the alert matches the filter.
On following update of the alert and if the filter is matched, the
rule runs and is applied to the alert. The rule remains applied for
every matching update.

Alert filter
Preview

Function to preview alerts that match the specified condition.
A hyperlink shows how many alerts match the filter.

If you click the hyperlink, the browser opens another tab that lists
alerts in the Alerts [em_alert_list] table. The list shows which alerts
match the rule, including closed alerts. Alerts that have already
been run by the rule are not marked in any way. You can click any
alert to view further details.
Conditions

Conditions that, if fulfilled, cause the filter to be applied. For more
information about building conditions, see Using the condition
builder .
To add another condition, click New Criteria.

Note: The Created on condition is not invoked when running
the Event Management - Evaluate Alert Management Rules
job. Instead, use the Updated on condition, as the job detects
alerts based on the time they were updated and not on the
time they were created.
Related List Conditions Conditions to include a relationship with another table in the filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3163


<!-- page 3164 -->
Field

Description

a. Click Table and select the required table.
b. Specify the conditions for this filter.
For more information about creating related lists, see Add related
list conditions .
4. Click Actions.
In this section, you can configure the following action types as a response to alerts or to
remediate alerts:
◦ Remediation Subflows: Execute a subflow provided with the base system.
◦ Launch Applications: Open applications and browsers that you configure.

Note: The Remediation Workflows option is deprecated. To enable flows to be triggered
by alerts, use the Flow Designer.
5. Optional: In the Remediation Subflows section, follow these instructions to add subflows:
a. Under Subflow, double-click the cell.
.
b. Click the search icon
The list of subflows provided with the base system appears. For more information, see Event
Management subflows in the base system.
c. From the subflow list, select a subflow.
d. Repeat, adding as many subflows as required.

(Optional)
e. To specify when the subflow must be executed, double-click the cell under Execution.
Subflow execution options
Name

Description

Automatic

The subflow is executed automatically when
the rule is matched.

Manual

Execute the subflow if required when the
rule is matched.

Both

When the rule is matched, the subflow
is executed automatically and you can
optionally execute the subflow again
manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3164


<!-- page 3165 -->
f. Under Automatic executions limit, double-click the cell and enter the integer number of
times to execute the subflow.
After the subflow has been executed the indicated number of times, it does not run anymore.
g. To enable the subflow to be executed, double-click the cell under Active and select true.
A link in the cell under Link to Flow Designer appears only after a subflow has been
selected and the rule has been saved.

6. To add instructions to launch applications or to open browser windows, in the Launch
Applications area:
a. Under Display Name, double-click the cell.
Specify a name for the link.
b. In the URL field, compose the URL using data from the alert in the format:http://
${source}.com:${port}/${cmdb_ci.name}
The Active field is automatically updated.
Any URL-based action can utilize the alert parameters and the URLs can refer to wikis,
messaging services, REST APIs, and so on.
7. Click Submit.

Result

The alert management rule is added to the list of available rules that can be used to resolve
alerts.
Related topics
Apply a quick response in an alert
Event Management subflows in the base system
The subflows provided with the base system appear in the Remediation Subflows area of alert
management rules.

Accessing the subflows
Navigate to Event Management > Rules > Alert Management Rules and click New. Click the
Actions tab. In the Remediation Subflows area, double-click the Insert a new row field.

Click the search icon
system appears.

to add subflows. The list of subflows that are provided with the base

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3165


<!-- page 3166 -->
Subflows in the base system
Name

Description

Acknowledge Alert

Subflow to mark the alert as being
Acknowledged. Acknowledge an alert to show
that further attention is required.

Attach Knowledge Article (legacy)

Subflow to attach a knowledge article to the
alert.
This subflow is provided for instances that are
migrated from legacy releases (prior to the
London release).

Note: Add the Knowledge article
column to the Alert Management Rules
[em_alert_management_rule] table,
and select an article to attach to an alert
when the rule executes.
Change Alert to Maintenance Mode

Subflow to mark the alert as being in
Maintenance.

Close Alert

Subflow to mark the alert as being Closed.

Create Incident

Subflow to create an incident. Fields from the
alert are used to populate the matching fields
in the incident that is created.

Note:
• If there is an existing incident that is
attached to the alert, this subflow is not
activated.
• If the alert is in Maintenance, an
incident is not created.
• The alert management job runs
even if the alert grouping job is not
complete, if a specified time frame
has passed. When this occurs,
you can enable the Avoid INTs
on secondary alerts rule
to prevent incidents from being
created for secondary alerts (when the

evt_mgmt.avoid_int_enabled
property is enabled), since an incident
already exists for the primary alert.
Create Major Incident Candidate

Subflow to create a major incident candidate.
Fields from the alert populate the matching
fields in the major incident candidate that is
created. A major incident candidate can be
upgraded to become a major incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3166


<!-- page 3167 -->
Subflows in the base system (continued)
Name

Description

Note:
• If there is an existing incident that is
attached to the alert, this subflow is not
activated.
• If the alert is in Maintenance, a major
incident candidate is not created.
• If the Role in group is Secondary,
the major incident candidate is not
created.
Create Major Incident from Alert

Subflow to create a major incident from alert.
Fields from the alert are used to populate the
matching fields in the major incident that is
created.

Note:
• If there is an existing incident that is
attached to the alert, this subflow is not
activated.
• If the alert is in Maintenance, an
incident is not created.
• If the Role in group is Secondary,
the major incident candidate is not
created.
Create Major Incident with Impact

Subflow to create a major incident from an
alert in which the Impact field is also taken
as input. Fields from the alert are used to
populate the matching fields in the major
incident that is created.

Note:
• If there is an existing incident that is
attached to the alert, this subflow is not
activated.
• If the alert is in Maintenance, an
incident is not created.
• If the Role in group is Secondary,
the major incident candidate is not
created.
Create Major Incident Candidate with Impact

Subflow to create a major incident candidate
in which the Impact field is also taken as input.
Fields from the alert populate the matching
fields in the major incident candidate that is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3167


<!-- page 3168 -->
Subflows in the base system (continued)
Name

Description

created. A major incident candidate can be
upgraded to become a major incident.

Note:
• If there is an existing incident that is
attached to the alert, this subflow is not
activated.
• If the alert is in Maintenance, a major
incident candidate is not created.
• If the Role in group is Secondary,
the major incident candidate is not
created.
Create Task (legacy)

This subflow uses a task
template, if provided, or the

EventMgmtCustomIncidentPopulator
script for instances migrated from legacy
releases (prior to the London release). If
configured, apply the task template.

Note: Add the Task template column
to the Alert Management Rules
[em_alert_management_rule] table, and
select a task template and task to apply
when the rule executes.
Overwrite Alert Template (legacy)

This subflow applies the alert template.
This subflow is provided for instances that are
migrated from legacy releases (prior to the
London release).

Note: Add the Task type column
to the Alert Management Rules
[em_alert_management_rule] table, and
select an alert template to apply when
the rule executes.

1. Select the subflow that you need.
2. To customize a subflow, see Create a custom subflow for alerts. This topic also describes the
input parameters in a subflow.
3. To specify when the workflow must be executed, double-click the cell under Execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3168


<!-- page 3169 -->
.
Create a custom subflow for alerts
You can create a subflow according to your requirements. For example, you can resolve alerts,
notify teams, or run remediation actions.

Before you begin

Role required: evt_mgmt_admin, flow_designer

About this task

Copy an existing subflow, and then customize it. Publish the custom subflow so that it is available
to be used to resolve any alert. For more information, see Create a subflow .

Note: If your ServiceNow instance uses domain separation, you must ensure that the new
custom subflow that you created operates only on the data of the designated domain.

Procedure
1. Navigate to All > Process Automation > Flow Designer.
2. In the Flow Designer window, click Subflows.
3. Click Create Incident.
The Create Incident subflow opens in Flow Designer in read-only format. The inputs in the
Create Incident subflow are described in the following table.
Create Incident input parameters
Value

Description

alertRuleName

The name of the alert management rule that specifies this subflow, for
example IDD.

alertRuleId

The sys_id of the alert management rule, for example,
1ae122e84f5f1300b28392918110c71e.

alertGR

The alert record that matches the filter that is defined in the alert
management rule, for example, Alert0027931

executionId

The ID of the execution to be retrieved, for example,
000182ebdb66630091187f1daf9619d4

userName

The current user's name, for example, admin.

userDisplayName The name that the current user specified to be displayed, for example,
System Administrator.
For example, in an alert management rule that has processed alerts, in the Alert Executions
area, click the Link to execution of the required alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3169


<!-- page 3170 -->
The Flow Designer opens. Click Subflow Inputs and Outputs. The input variable names of the
subflow are displayed with their respective values.

4. In the subflow header, click more actions

and select Copy subflow.

5. In the New Subflow Name field, enter the name of the new subflow.
6. To limit the application scope of the subflow, in the Application field, select the required
application, otherwise select Global.
7. Click Copy.
The new subflow is created and is opened as a tab in the subflow designer editor. The inputs
provided by the template appear.
Inputs are fixed and cannot be added to.
In the editor, you can delete subflow inputs or outputs, as required.
.
8. To delete an input, click
Inputs are fixed and cannot be added to.
9. Create subflow outputs by defining the names and data types.
a. Click

to add output.

b. Define the name and the data type.
10. To save the subflow in draft status, click Save.
11. To save and publish the subflow so that it can be used in the alert management rule designer,
click Publish.

Result

Include the modified subflow in an alert management rule to resolve alerts according to your
customized requirements.
Related topics
Subflows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3170


<!-- page 3171 -->
Alert executions information
Alert executions information provides a reference to the alert management rule actions that
are performed. This information appears in the Alert Management Rule record only if an alert
matches the filter in the rule and an action was performed. You can click any link in the Alert
Executions list to open the referenced item.

Alert Executions
In the Alert Management Rule record, the Alert Executions list shows key related records for the
rule.

Note: The Alert Executions list in the Alert Management Rules record shows alert
execution information and lists the alert management rules that the selected alert matched.
Alert Executions list

Information in the Alert Executions list
The columns in the Alert Executions list are populated with details of the alerts that matched the
alert management rule and the actions that ran. The listed alerts match the filter in the rule.
View alert execution information
You can click any link in the Alert Executions list to view the alert execution information of the
referenced item. This information appears in the Alert Management Rule record only after an
alert matched the filter in the rule and an action was performed.

Before you begin

Role required: evt_mgmt_admin

About this task

Among the information shown in the Alert Executions list is:
• The list of alerts that matched the filter of the rule.
• The tasks, including incidents, that were opened.
• Which remediation workflows ran and which subflows ran.

Procedure
1. Navigate to All > Event Management > Rules > Alert Management Rules.
2. In the Alert Management Rules list, click the rule.
If an alert matched the filter in the rule and an action was performed, the Alert Executions list
appears in the Alert Management Rules record. The list appears irrespective of the stage of the
selected alert management rule.
Alert Executions list
Column

Description

Alert

Alert number of the alerts that matched the alert management
rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3171


